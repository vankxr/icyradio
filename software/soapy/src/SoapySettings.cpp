#include "SoapyIcyRadio.hpp"

SoapyIcyRadio::SoapyIcyRadio(const SoapySDR::Kwargs &args)
{
    this->fd = -1;

    // Memory maps
    this->mm_axi_flash = nullptr;
    this->mm_axi_bram = nullptr;
    this->mm_axi_ddr = nullptr;
    this->mm_axi_periph = nullptr;
    this->mm_dma_buffer = nullptr;

    // AXI Peripherals
    for(int i = 0; i < AXI_DMAC_NUM_INSTANCES; i++)
        this->axi_dmac[i] = nullptr;
    for(int i = 0; i < AXI_GPIO_NUM_INSTANCES; i++)
        this->axi_gpio[i] = nullptr;
    for(int i = 0; i < AXI_IIC_NUM_INSTANCES; i++)
        this->axi_iic[i] = nullptr;
    for(int i = 0; i < AXI_QUAD_SPI_NUM_INSTANCES; i++)
        this->axi_quad_spi[i] = nullptr;
    // this->axi_pcie = nullptr;
    this->axi_i2s = nullptr;
    this->axi_xadc = nullptr;
    this->axi_rf_tstamp = nullptr;
    this->axi_irq_ctrl = nullptr;
    this->axi_dna = nullptr;
    // this->axi_ad9361 = nullptr;

    if(args.count("label") != 0)
        SoapySDR_logf(SOAPY_SDR_INFO, "Opening %s", args.at("label").c_str());

    if(args.count("path") == 0 && args.count("serial") == 0 && args.count("device_id") == 0)
        throw std::runtime_error("No specific device specified! Please set either \"path\", \"serial\", or \"device_id\".");

    std::string path;

    if(args.count("path") != 0) // Path specified (takes priority over device ID)
    {
        path = args.at("path");
        uint32_t devID = 0;

        if(sscanf(path.c_str(), "/dev/icyradio%u", &devID) != 1)
            throw std::runtime_error("Invalid IcyRadio device path");

        if(path.compare("/dev/icyradio" + std::to_string(devID)) != 0)
            throw std::runtime_error("Invalid IcyRadio device path");

        if(args.count("device_id") != 0 || args.count("serial") != 0)
            SoapySDR_logf(SOAPY_SDR_NOTICE, "Ignoring \"device_id\" and \"serial\" since \"path\" is specified");

        SoapySDR_logf(SOAPY_SDR_DEBUG, "Using specified path %s", path.c_str());
    }
    else if(args.count("device_id") != 0) // Device ID specified (takes priority over serial)
    {
        path = "/dev/icyradio" + std::to_string(std::stoi(args.at("device_id")));

        if(args.count("serial") != 0)
            SoapySDR_logf(SOAPY_SDR_NOTICE, "Ignoring \"serial\" since \"device_id\" is specified");

        SoapySDR_logf(SOAPY_SDR_DEBUG, "Using path built from \"device_id\" %s", path.c_str());
    }
    else // Serial specified
    {
        SoapySDR_logf(SOAPY_SDR_DEBUG, "Trying to find device through \"serial\"");

        std::string dev_root = "/dev";

        for(const auto &entry : std::filesystem::directory_iterator(dev_root))
        {
            path = entry.path().string();
            uint32_t devID = 0;

            if(sscanf(path.c_str(), "/dev/icyradio%u", &devID) != 1)
                continue;

            if(path.compare("/dev/icyradio" + std::to_string(devID)) != 0)
                continue;

            this->fd = open(path.c_str(), O_RDWR);

            if(this->fd < 0)
                continue;

            this->setupMemoryMaps();
            this->resetSystem();

            while(!this->axi_dna->ready())
                usleep(1000);

            char dna[16];
            snprintf(dna, sizeof(dna), "%015lX", this->axi_dna->read());

            if(args.at("serial") == dna)
            {
                SoapySDR_logf(SOAPY_SDR_DEBUG, "Found device with serial %s at path %s", dna, path.c_str());

                break;
            }

            this->freeMemoryMaps();

            close(this->fd);

            this->fd = -1;
        }

        if(this->fd < 0)
            throw std::runtime_error("Failed to find device with serial " + args.at("serial"));
    }

    if(this->fd < 0) // If found through serial, it should already be open and initialized by now
    {
        this->fd = open(path.c_str(), O_RDWR);

        if(this->fd < 0)
            throw std::runtime_error("Failed to open device (" + std::string(std::strerror(errno)) + ")");

        this->setupMemoryMaps();
        this->resetSystem();
    }

    this->initPeripheralsPreClocks();
    this->initClocks();
    this->initPeripheralsPostClocks();
}

SoapyIcyRadio::~SoapyIcyRadio()
{
    this->deinitPeripheralsPostClocks();
    this->deinitClocks();
    this->deinitPeripheralsPreClocks();

    this->freeMemoryMaps();

    if(this->fd >= 0)
        close(this->fd);
}

std::string SoapyIcyRadio::getDriverKey() const
{
	return "IcyRadio";
}
std::string SoapyIcyRadio::getHardwareKey() const
{
	return "IcyRadio v2";
}
SoapySDR::Kwargs SoapyIcyRadio::getHardwareInfo() const
{
    SoapySDR::Kwargs info;

    // FPGA DNA (aka serial)
    while(!this->axi_dna->ready())
        usleep(1000);

    char dna[16];
    snprintf(dna, sizeof(dna), "%015lX", this->axi_dna->read());
    info["serial"] = dna;

    return info;
}

std::vector<std::string> SoapyIcyRadio::listSensors() const
{
    std::vector<std::string> sensors;

    sensors.push_back("xadc_temp");
    sensors.push_back("xadc_temp_min");
    sensors.push_back("xadc_temp_max");
    sensors.push_back("xadc_vccint");
    sensors.push_back("xadc_vccint_min");
    sensors.push_back("xadc_vccint_max");
    sensors.push_back("xadc_vccaux");
    sensors.push_back("xadc_vccaux_min");
    sensors.push_back("xadc_vccaux_max");
    sensors.push_back("xadc_vccbram");
    sensors.push_back("xadc_vccbram_min");
    sensors.push_back("xadc_vccbram_max");

    return sensors;
}
SoapySDR::ArgInfo SoapyIcyRadio::getSensorInfo(const std::string &key) const
{
    SoapySDR::ArgInfo info;

    if(key == "xadc_temp")
    {
        info.key = "xadc_temp";
        info.value = "0.000";
        info.name = "FPGA Temperature";
        info.description = "FPGA temperature as measured by the Xilinx XADC";
        info.units = "°C";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(-40.0, 125.0);
    }
    else if(key == "xadc_temp_min")
    {
        info.key = "xadc_temp_min";
        info.value = "0.000";
        info.name = "FPGA Min. Temperature";
        info.description = "Minnimum FPGA temperature as measured by the Xilinx XADC";
        info.units = "°C";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(-40.0, 125.0);
    }
    else if(key == "xadc_temp_max")
    {
        info.key = "xadc_temp_max";
        info.value = "0.000";
        info.name = "FPGA Max. Temperature";
        info.description = "Maximum FPGA temperature as measured by the Xilinx XADC";
        info.units = "°C";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(-40.0, 125.0);
    }
    else if(key == "xadc_vccint")
    {
        info.key = "xadc_vccint";
        info.value = "0.000";
        info.name = "FPGA VCCINT Voltage";
        info.description = "FPGA VCCINT voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccint_min")
    {
        info.key = "xadc_vccint_min";
        info.value = "0.000";
        info.name = "FPGA Min. VCCINT Voltage";
        info.description = "Minimum FPGA VCCINT voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccint_max")
    {
        info.key = "xadc_vccint_max";
        info.value = "0.000";
        info.name = "FPGA Max. VCCINT Voltage";
        info.description = "Maximum FPGA VCCINT voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccaux")
    {
        info.key = "xadc_vccaux";
        info.value = "0.000";
        info.name = "FPGA VCCAUX Voltage";
        info.description = "FPGA VCCAUX voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccaux_min")
    {
        info.key = "xadc_vccaux_min";
        info.value = "0.000";
        info.name = "FPGA Min. VCCAUX Voltage";
        info.description = "Minimum FPGA VCCAUX voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccaux_max")
    {
        info.key = "xadc_vccaux_max";
        info.value = "0.000";
        info.name = "FPGA Max. VCCAUX Voltage";
        info.description = "Maximum FPGA VCCAUX voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccbram")
    {
        info.key = "xadc_vccbram";
        info.value = "0.000";
        info.name = "FPGA VCCBRAM Voltage";
        info.description = "FPGA VCCBRAM voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccbram_min")
    {
        info.key = "xadc_vccbram_min";
        info.value = "0.000";
        info.name = "FPGA Min. VCCBRAM Voltage";
        info.description = "Minimum FPGA VCCBRAM voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }
    else if(key == "xadc_vccbram_max")
    {
        info.key = "xadc_vccbram_max";
        info.value = "0.000";
        info.name = "FPGA Max. VCCBRAM Voltage";
        info.description = "Maximum FPGA VCCBRAM voltage as measured by the Xilinx XADC";
        info.units = "V";
        info.type = SoapySDR::ArgInfo::FLOAT;
        info.range = SoapySDR::Range(0.0, 5.0);
    }

    return info;
}
std::string SoapyIcyRadio::readSensor(const std::string &key) const
{
    char buf[16];

    memset(buf, 0, sizeof(buf));

    if(key == "xadc_temp")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readTemperature());
    else if(key == "xadc_temp_min")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMinTemperature());
    else if(key == "xadc_temp_max")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMaxTemperature());
    else if(key == "xadc_vccint")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readVCCINT());
    else if(key == "xadc_vccint_min")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMinVCCINT());
    else if(key == "xadc_vccint_max")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMaxVCCINT());
    else if(key == "xadc_vccaux")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readVCCAUX());
    else if(key == "xadc_vccaux_min")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMinVCCAUX());
    else if(key == "xadc_vccaux_max")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMaxVCCAUX());
    else if(key == "xadc_vccbram")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readVBRAM());
    else if(key == "xadc_vccbram_min")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMinVBRAM());
    else if(key == "xadc_vccbram_max")
        snprintf(buf, sizeof(buf), "%.3f", this->axi_xadc->readMaxVBRAM());

    return buf;
}