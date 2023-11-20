#include "SoapyIcyRadio.hpp"

void SoapyIcyRadio::setupMemoryMaps()
{
    if(this->fd < 0)
        throw std::runtime_error("Invalid file descriptor");

    // Map AXI address space
    this->mm_axi_flash = new MappedRegion(this->fd, AXI_QUAD_SPI0_XIP_BASE, AXI_QUAD_SPI0_XIP_SIZE);
    this->mm_axi_bram = new MappedRegion(this->fd, AXI_BRAM_BASE, AXI_BRAM_SIZE);
    this->mm_axi_ddr = new MappedRegion(this->fd, AXI_MIG_DDR3_BASE, AXI_MIG_DDR3_SIZE);
    this->mm_axi_periph = new MappedRegion(this->fd, AXI_PERIPH_BASE, AXI_PERIPH_SIZE);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "AXI Flash: Phys = %016llX, Virt = %016llX, Size = %016llX", this->mm_axi_flash->getPhys(), this->mm_axi_flash->getVirt(), this->mm_axi_flash->getSize());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "AXI BRAM: Phys = %016llX, Virt = %016llX, Size = %016llX", this->mm_axi_bram->getPhys(), this->mm_axi_bram->getVirt(), this->mm_axi_bram->getSize());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "AXI DDR: Phys = %016llX, Virt = %016llX, Size = %016llX", this->mm_axi_ddr->getPhys(), this->mm_axi_ddr->getVirt(), this->mm_axi_ddr->getSize());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "AXI Peripherals: Phys = %016llX, Virt = %016llX, Size = %016llX", this->mm_axi_periph->getPhys(), this->mm_axi_periph->getVirt(), this->mm_axi_periph->getSize());

    // Setup mapped peripherals
    this->axi_dmac[0] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_DMAC_RF_RX_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[1] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_DMAC_RF_TX_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[0] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_GPIO0_BASE - AXI_PERIPH_BASE)));
    this->axi_iic[0] = new AXIIIC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_IIC0_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[0] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_QUAD_SPI0_BASE - AXI_PERIPH_BASE)));
    this->axi_pcie = new AXIPCIe(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_PCIE0_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[2] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_DMAC_I2S_RX_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[3] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_DMAC_I2S_TX_BASE - AXI_PERIPH_BASE)));
    this->axi_i2s = new AXII2S(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_I2S_BASE - AXI_PERIPH_BASE)));
    this->axi_xadc = new AXIXADC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_XADC_WIZ_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[1] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_QUAD_SPI1_BASE - AXI_PERIPH_BASE)));
    this->axi_iic[1] = new AXIIIC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_IIC1_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[2] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_QUAD_SPI2_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[1] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_GPIO1_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[2] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_GPIO2_BASE - AXI_PERIPH_BASE)));
    this->axi_rf_tstamp = new AXIRFTStamp(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_RF_TSTAMP_BASE - AXI_PERIPH_BASE)));
    this->axi_irq_ctrl = new AXIIRQCtrl(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_IRQ_CTRL_BASE - AXI_PERIPH_BASE)));
    this->axi_dna = new AXIDNA(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_DNA_BASE - AXI_PERIPH_BASE)));
    this->axi_iic[2] = new AXIIIC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_IIC2_BASE - AXI_PERIPH_BASE)));

    //this->axi_ad9361 = new AXIAD9361(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->getVirt()) + (AXI_AD9361_BASE - AXI_PERIPH_BASE)));

    // Allocate DMA buffer memory
    uint32_t dma_sz = 16 * 1024 * 1024 * sizeof(uint16_t); // TODO: make this configurable
    uint64_t arg = dma_sz;

    ioctl(this->fd, ICYRADIO_IOCTL_DMA_FREE); // TODO: Implement getting an existing buffer

    if(ioctl(this->fd, ICYRADIO_IOCTL_DMA_ALLOC, &arg) < 0)
        throw std::runtime_error("Could not allocate DMA buffer memory (" + std::string(std::strerror(errno)) + ")");

    // Map DMA buffer memory
    this->mm_dma_buffer = new MappedRegion(this->fd, arg | BIT(48), dma_sz);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "DMA Buffer: Phys = %016llX, Virt = %016llX, Size = %016llX", this->mm_dma_buffer->getPhys() & (BIT(48) - 1), this->mm_dma_buffer->getVirt(), this->mm_dma_buffer->getSize());
}
void SoapyIcyRadio::freeMemoryMaps()
{
    // AXI Peripherals
    for(uint8_t i = 0; i < AXI_DMAC_NUM_INSTANCES; i++)
    {
        if(this->axi_dmac[i] != nullptr)
        {
            delete this->axi_dmac[i];

            this->axi_dmac[i] = nullptr;
        }
    }

    for(uint8_t i = 0; i < AXI_GPIO_NUM_INSTANCES; i++)
    {
        if(this->axi_gpio[i] != nullptr)
        {
            delete this->axi_gpio[i];

            this->axi_gpio[i] = nullptr;
        }
    }

    for(uint8_t i = 0; i < AXI_IIC_NUM_INSTANCES; i++)
    {
        if(this->axi_iic[i] != nullptr)
        {
            delete this->axi_iic[i];

            this->axi_iic[i] = nullptr;
        }
    }

    for(uint8_t i = 0; i < AXI_QUAD_SPI_NUM_INSTANCES; i++)
    {
        if(this->axi_quad_spi[i] != nullptr)
        {
            delete this->axi_quad_spi[i];

            this->axi_quad_spi[i] = nullptr;
        }
    }

    if(this->axi_pcie != nullptr)
    {
        delete this->axi_pcie;

        this->axi_pcie = nullptr;
    }

    if(this->axi_i2s != nullptr)
    {
        delete this->axi_i2s;

        this->axi_i2s = nullptr;
    }

    if(this->axi_xadc != nullptr)
    {
        delete this->axi_xadc;

        this->axi_xadc = nullptr;
    }

    if(this->axi_rf_tstamp != nullptr)
    {
        delete this->axi_rf_tstamp;

        this->axi_rf_tstamp = nullptr;
    }

    if(this->axi_irq_ctrl != nullptr)
    {
        delete this->axi_irq_ctrl;

        this->axi_irq_ctrl = nullptr;
    }

    if(this->axi_dna != nullptr)
    {
        delete this->axi_dna;

        this->axi_dna = nullptr;
    }

    // if(this->axi_ad9361 != nullptr)
    // {
    //     delete this->axi_ad9361;

    //     this->axi_ad9361 = nullptr;
    // }

    // Memory maps
    if(this->mm_axi_flash != nullptr)
    {
        delete this->mm_axi_flash;

        this->mm_axi_flash = nullptr;
    }

    if(this->mm_axi_bram != nullptr)
    {
        delete this->mm_axi_bram;

        this->mm_axi_bram = nullptr;
    }

    if(this->mm_axi_ddr != nullptr)
    {
        delete this->mm_axi_ddr;

        this->mm_axi_ddr = nullptr;
    }

    if(this->mm_axi_periph != nullptr)
    {
        delete this->mm_axi_periph;

        this->mm_axi_periph = nullptr;
    }

    if(this->mm_dma_buffer != nullptr)
    {
        delete this->mm_dma_buffer;

        this->mm_dma_buffer = nullptr;
    }

    ioctl(this->fd, ICYRADIO_IOCTL_DMA_FREE);
}

void SoapyIcyRadio::initPeripheralsPreClocks()
{
    // PCIe
    uint8_t num_bars = this->axi_pcie->getNumBARs();

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Detected %hhu AXI -> PCIe BARs", num_bars);

    if(num_bars < 3)
        throw std::runtime_error("AXI PCIe: Not enough BARs detected");

    this->axi_pcie->setBARAddress(0, this->mm_dma_buffer->getPhys() & (BIT(48) - 1));
    this->axi_pcie->setBARAddress(1, this->mm_dma_buffer->getPhys() & (BIT(48) - 1));
    this->axi_pcie->setBARAddress(2, this->mm_dma_buffer->getPhys() & (BIT(48) - 1));

    for(uint8_t i = 0; i < num_bars; i++)
        SoapySDR_logf(SOAPY_SDR_DEBUG, "  BAR #%hhu: %s, Addr: %016llX", i, this->axi_pcie->isBAR64Bit(i) ? "64-bit" : "32-bit", this->axi_pcie->getBARAddress(i));

    // IRQ Controller
    this->axi_irq_ctrl->init(this->fd);

    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_RX, AXIIRQCtrl::IRQMode::EDGE_RISING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_TX, AXIIRQCtrl::IRQMode::EDGE_RISING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_RX, AXIIRQCtrl::IRQMode::EDGE_RISING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_TX, AXIIRQCtrl::IRQMode::EDGE_RISING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    // this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::VIN_REG_ALERTn, AXIIRQCtrl::IRQMode::EDGE_FALLING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    // this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::CLK_MNGR_IRQn, AXIIRQCtrl::IRQMode::EDGE_FALLING, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);

    // DMA Controllers
    this->axi_dmac[AXI_DMAC_RF_RX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_RX,
        }
    );
    this->axi_dmac[AXI_DMAC_RF_TX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_TX,
        }
    );
    this->axi_dmac[AXI_DMAC_I2S_RX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_RX,
        }
    );
    this->axi_dmac[AXI_DMAC_I2S_TX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_TX,
        }
    );

    // Communication interfaces
    this->axi_iic[AXI_IIC_CODEC_INST]->init(125000000UL, AXIIIC::Speed::FAST);
    this->axi_iic[AXI_IIC_SYS_INST]->init(125000000UL, AXIIIC::Speed::FAST);
    this->axi_iic[AXI_IIC_EXP_INST]->init(125000000UL, AXIIIC::Speed::FAST);
    //this->axi_quad_spi[AXI_QUAD_SPI_FLASH_INST]->init(AXIQuadSPI::Mode::MODE_0, AXIQuadSPI::BitOrder::MSB_FIRST); // Quad SPI 0 is used for flash XIP
    this->axi_quad_spi[AXI_QUAD_SPI_TRX_INST]->init(AXIQuadSPI::Mode::MODE_1, AXIQuadSPI::BitOrder::MSB_FIRST);
    this->axi_quad_spi[AXI_QUAD_SPI_SYNTH_INST]->init(AXIQuadSPI::Mode::MODE_0, AXIQuadSPI::BitOrder::MSB_FIRST);

    // I2C Scan
    std::vector<uint8_t> addrs;
    std::stringstream s;

    auto addrs_to_str = [](std::vector<uint8_t> addrs) -> std::string
    {
        std::stringstream s;

        s << "  Found " << addrs.size() << " devices";

        if(addrs.size() > 0)
        {
            s << " (";

            for(size_t i = 0; i < addrs.size(); i++)
            {
                s << "0x" << std::hex << std::setw(2) << std::setfill('0') << std::uppercase << (size_t)addrs[i];

                if(i < addrs.size() - 1)
                    s << ", ";
            }

            s << ")";
        }

        return s.str();
    };

    //// CODEC I2C
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Scanning CODEC I2C bus...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_CODEC_RSTn_BIT, AXIGPIO::Value::HIGH);
    usleep(500);
    addrs = this->axi_iic[AXI_IIC_CODEC_INST]->scan();
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_CODEC_RSTn_BIT, AXIGPIO::Value::LOW);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "%s", addrs_to_str(addrs).c_str());

    //// SYS I2C
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Scanning SYS I2C bus...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_PM_I2C_EN_BIT, AXIGPIO::Value::HIGH);
    usleep(500);
    addrs = this->axi_iic[AXI_IIC_SYS_INST]->scan();
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_PM_I2C_EN_BIT, AXIGPIO::Value::LOW);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "%s", addrs_to_str(addrs).c_str());

    //// EXP I2C
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Scanning EXP I2C bus...");

    addrs = this->axi_iic[AXI_IIC_EXP_INST]->scan();

    SoapySDR_logf(SOAPY_SDR_DEBUG, "%s", addrs_to_str(addrs).c_str());

    // Peripherals
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_PM_I2C_EN_BIT, AXIGPIO::Value::HIGH);
    usleep(500);

    this->pmc = new PMC(
        {
            .controller = this->axi_iic[AXI_IIC_SYS_INST],
            .addr = PMC_I2C_ADDR,
        }
    );

    SoapySDR_logf(SOAPY_SDR_DEBUG, "PMC Unique ID: %s", this->pmc->getUniqueID().c_str());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "PMC Firmware Version: v%hu", this->pmc->getFirmwareVersion());

    this->vin_reg = new LT7182S(
        {
            .controller = this->axi_iic[AXI_IIC_SYS_INST],
            .addr = LT7182S_I2C_ADDR,
        }/*,
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::VIN_REG_ALERTn,
        }*/
    );

    this->vin_reg->init();

    SoapySDR_logf(SOAPY_SDR_DEBUG, "VIN Regulator P/N: %s %s", this->vin_reg->readManufacturerID().c_str(), this->vin_reg->readManufacturerModel().c_str());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "VIN Regulator Revision: %hhu", this->vin_reg->readManufacturerRevision());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "VIN Regulator Serial: %s", this->vin_reg->readManufacturerSerial().c_str());

    this->clk_mngr = new Si5351(
        {
            .controller = this->axi_iic[AXI_IIC_SYS_INST],
            .addr = SI5351_I2C_ADDR,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYS_INST],
            .gpio = AXI_GPIO_CLK_MNGR_OEn_BIT,
            .invert = false,
        }/*,
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::CLK_MNGR_IRQn,
        }*/
    );

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Si5351 Revision: %hhu", this->clk_mngr->getRevisionID());

    this->mmw_synth = new IDT8V97003(
        {
            .controller = this->axi_quad_spi[AXI_QUAD_SPI_SYNTH_INST],
            .ss_mask = AXI_QUAD_SPI_SYNTH_SS,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYNTH_INST],
            .gpio = AXI_GPIO_SYNTH_CE_BIT,
            .invert = false,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYNTH_INST],
            .gpio = AXI_GPIO_SYNTH_MUTE_BIT,
            .invert = false,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYNTH_INST],
            .gpio = AXI_GPIO_SYNTH_SYNC_BIT,
            .invert = false,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYNTH_INST],
            .gpio = AXI_GPIO_SYNTH_LD_BIT,
            .invert = false,
        },
        {
            .controller = this->axi_gpio[AXI_GPIO_SYNTH_INST],
            .gpio = AXI_GPIO_SYNTH_RESETn_BIT,
            .invert = false,
        }
    );

    this->mmw_synth->powerDown();

    SoapySDR_logf(SOAPY_SDR_DEBUG, "8V97003 Revision: %hhu", this->mmw_synth->getChipVersion());
    SoapySDR_logf(SOAPY_SDR_DEBUG, "8V97003 Option: %hhu", this->mmw_synth->getChipOption());
}
void SoapyIcyRadio::deinitPeripheralsPreClocks()
{
    if(this->mmw_synth != nullptr)
    {
        delete this->mmw_synth;

        this->mmw_synth = nullptr;
    }

    if(this->clk_mngr != nullptr)
    {
        delete this->clk_mngr;

        this->clk_mngr = nullptr;
    }

    if(this->vin_reg != nullptr)
    {
        delete this->vin_reg;

        this->vin_reg = nullptr;
    }

    if(this->pmc != nullptr)
    {
        delete this->pmc;

        this->pmc = nullptr;
    }

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_PM_I2C_EN_BIT, AXIGPIO::Value::LOW);
}

void SoapyIcyRadio::initPeripheralsPostClocks()
{
    this->axi_i2s->init(
        [this](void) -> bool
        {
            // Prevent locking up the AXI bus if the core is in reset
            return this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT);
        }
    );

    // Init xcvr

    // this->axi_rf_tstamp->init(
    //     [this](void) -> bool
    //     {
    //         // Prevent locking up the AXI bus if the core is in reset
    //         return this->axi_gpio[AXI_GPIO_TRX_INST]->getValue(AXI_GPIO_RST_AD9361_61M44_PERI_ARESETn_BIT);
    //     }
    // );

    // Probe expansion cards
    // Enable mmWave Synth if present
    // this->mmw_synth->powerUp();
    // this->mmw_synth->init();
}
void SoapyIcyRadio::deinitPeripheralsPostClocks()
{
    this->mmw_synth->mute();
    this->mmw_synth->powerDown();

    if(this->exp_card != nullptr)
    {
        delete this->exp_card;

        this->exp_card = nullptr;
    }
}

void SoapyIcyRadio::initClocks()
{
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Setup clock manager...");

    this->clk_mngr->init();

    // Inputs
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- Inputs ----");

    this->clk_mngr->configXTAL(26000000UL, Si5351::XTALCapacitance::C_10pF);

    uint32_t timeout = 500;
    while(--timeout && !this->clk_mngr->isXTALDetected())
        usleep(1000);

    if(!this->clk_mngr->isXTALDetected())
        throw std::runtime_error("Could not detect XTAL, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "XTAL Clock: %.3f MHz", (float)this->clk_mngr->getXTALFrequency() / 1000000);

    if(false) // TODO: Support CLKIN configuration
    {
        this->clk_mngr->configCLKIN(10000000UL);

        timeout = 500;
        while(--timeout && !this->clk_mngr->isCLKINDetected())
            usleep(1000);

        if(!this->clk_mngr->isCLKINDetected())
            throw std::runtime_error("Could not detect CLKIN, aborting!");

        SoapySDR_logf(SOAPY_SDR_DEBUG, "CLKIN Clock: %.3f MHz", (float)this->clk_mngr->getCLKINFrequency() / 1000000);
        SoapySDR_logf(SOAPY_SDR_DEBUG, "CLKIN Divided Clock: %.3f MHz", (float)this->clk_mngr->getDividedCLKINFrequency() / 1000000);
    }

    // PLLs
    //// PLLA
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- PLL A ----");

    this->clk_mngr->configPLL(Si5351::PLL::PLLA, 650000000UL, Si5351::PLLSource::PLL_SRC_XTAL);

    timeout = 500;
    while(--timeout && !this->clk_mngr->isPLLLocked(Si5351::PLL::PLLA))
        usleep(1000);

    if(!this->clk_mngr->isPLLLocked(Si5351::PLL::PLLA))
        throw std::runtime_error("PLLA did not achieve lock, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "PLLA Source Clock: %.3f MHz", (float)this->clk_mngr->getPLLSourceFrequency(Si5351::PLL::PLLA) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "PLLA Clock: %.3f MHz", (float)this->clk_mngr->getPLLFrequency(Si5351::PLL::PLLA) / 1000000);

    //// PLLB
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- PLL B ----");

    this->clk_mngr->configPLL(Si5351::PLL::PLLB, 800000000UL, Si5351::PLLSource::PLL_SRC_XTAL);

    timeout = 500;
    while(--timeout && !this->clk_mngr->isPLLLocked(Si5351::PLL::PLLB))
        usleep(1000);

    if(!this->clk_mngr->isPLLLocked(Si5351::PLL::PLLB))
        throw std::runtime_error("PLLB did not achieve lock, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "PLLB Source Clock: %.3f MHz", (float)this->clk_mngr->getPLLSourceFrequency(Si5351::PLL::PLLB) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "PLLB Clock: %.3f MHz", (float)this->clk_mngr->getPLLFrequency(Si5351::PLL::PLLB) / 1000000);

    // Clocks
    //// FPGA Clock #0
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (FPGA_CLK0) ----", Si5351::ClockOutput::CLK_FPGA_CLK0);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_FPGA_CLK0, 50000000UL, 0.f, Si5351::PLL::PLLA);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_FPGA_CLK0, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_FPGA_CLK0, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_FPGA_CLK0, true); // Controlled by OE pin

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_FPGA_CLK0);
    this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_FPGA_CLK0);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK0, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_FPGA_CLK0) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK0, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_FPGA_CLK0) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_FPGA_CLK0, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_FPGA_CLK0) / 1000000);

    //// FPGA Clock #1
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (FPGA_CLK1) ----", Si5351::ClockOutput::CLK_FPGA_CLK1);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_FPGA_CLK1, 49152000UL, 0.f, Si5351::PLL::PLLA);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_FPGA_CLK1, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_FPGA_CLK1, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_FPGA_CLK1, true); // Controlled by OE pin

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_FPGA_CLK1);
    this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_FPGA_CLK1);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK1, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_FPGA_CLK1) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK1, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_FPGA_CLK1) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_FPGA_CLK1, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_FPGA_CLK1) / 1000000);

    //// FPGA Clock #2
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (FPGA_CLK2) ----", Si5351::ClockOutput::CLK_FPGA_CLK2);

    // this->clk_mngr->configClock(Si5351::ClockOutput::CLK_FPGA_CLK2, FREQ, 0.f, Si5351::PLL::PLLA);
    // this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_FPGA_CLK2, Si5351::ClockOutputDisableState::LOW);
    // this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_FPGA_CLK2, Si5351::ClockOutputDriveCurrent::I_8mA);
    // this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_FPGA_CLK2, true); // Controlled by OE pin

    // this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_FPGA_CLK2);
    // this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_FPGA_CLK2);

    // SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK2, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_FPGA_CLK2) / 1000000);
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK2, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_FPGA_CLK2) / 1000000);
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_FPGA_CLK2, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_FPGA_CLK2) / 1000000);

    //// FPGA Clock #3
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (FPGA_CLK3) ----", Si5351::ClockOutput::CLK_FPGA_CLK3);

    // this->clk_mngr->configClock(Si5351::ClockOutput::CLK_FPGA_CLK3, FREQ, 0.f, Si5351::PLL::PLLA);
    // this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_FPGA_CLK3, Si5351::ClockOutputDisableState::LOW);
    // this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_FPGA_CLK3, Si5351::ClockOutputDriveCurrent::I_8mA);
    // this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_FPGA_CLK3, true); // Controlled by OE pin

    // this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_FPGA_CLK3);
    // this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_FPGA_CLK3);

    // SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK3, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_FPGA_CLK3) / 1000000);
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_FPGA_CLK3, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_FPGA_CLK3) / 1000000);
    // SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_FPGA_CLK3, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_FPGA_CLK3) / 1000000);

    //// Transceiver Reference clock
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (TRX_REF_CLK) ----", Si5351::ClockOutput::CLK_TRX_REF_CLK);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_TRX_REF_CLK, 40000000UL, 0.f, Si5351::PLL::PLLB);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_TRX_REF_CLK, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_TRX_REF_CLK, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_TRX_REF_CLK, true); // Controlled by OE pin

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_TRX_REF_CLK);
    this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_TRX_REF_CLK);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_TRX_REF_CLK, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_TRX_REF_CLK) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_TRX_REF_CLK, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_TRX_REF_CLK) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_TRX_REF_CLK, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_TRX_REF_CLK) / 1000000);

    //// mmWave Synthesizer Reference clock
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (SYNTH_REF_CLK) ----", Si5351::ClockOutput::CLK_SYNTH_REF_CLK);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_SYNTH_REF_CLK, 25000000UL, 0.f, Si5351::PLL::PLLA);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_SYNTH_REF_CLK, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_SYNTH_REF_CLK, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_SYNTH_REF_CLK, true); // Controlled by OE pin

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_SYNTH_REF_CLK);
    this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_SYNTH_REF_CLK);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_SYNTH_REF_CLK, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_SYNTH_REF_CLK) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_SYNTH_REF_CLK, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_SYNTH_REF_CLK) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_SYNTH_REF_CLK, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_SYNTH_REF_CLK) / 1000000);

    //// External clock output (on frontend interface pin 2_3)
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (EXT_CLK_2_3) ----", Si5351::ClockOutput::CLK_EXT_CLK_2_3);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_EXT_CLK_2_3, 10000000UL, 0.f, Si5351::PLL::PLLB);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_EXT_CLK_2_3, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_EXT_CLK_2_3, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_EXT_CLK_2_3, true); // Controlled by OE pin

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_EXT_CLK_2_3);
    // this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_EXT_CLK_2_3);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_EXT_CLK_2_3, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_EXT_CLK_2_3) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_EXT_CLK_2_3, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_EXT_CLK_2_3) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_EXT_CLK_2_3, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_EXT_CLK_2_3) / 1000000);

    //// External clock output (on u.FL connector)
    SoapySDR_logf(SOAPY_SDR_DEBUG, "---- CLK #%hhu (EXT_CLK_OUT) ----", Si5351::ClockOutput::CLK_EXT_CLK_OUT);

    this->clk_mngr->configClock(Si5351::ClockOutput::CLK_EXT_CLK_OUT, 10000000UL, 0.f, Si5351::PLL::PLLB);
    this->clk_mngr->setClockDisableState(Si5351::ClockOutput::CLK_EXT_CLK_OUT, Si5351::ClockOutputDisableState::LOW);
    this->clk_mngr->setClockDriveCurrent(Si5351::ClockOutput::CLK_EXT_CLK_OUT, Si5351::ClockOutputDriveCurrent::I_8mA);
    this->clk_mngr->setClockOutputEnableMode(Si5351::ClockOutput::CLK_EXT_CLK_OUT, false); // Controlled via software enable only

    this->clk_mngr->powerUpClock(Si5351::ClockOutput::CLK_EXT_CLK_OUT);
    // this->clk_mngr->enableClock(Si5351::ClockOutput::CLK_EXT_CLK_OUT);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Source Clock: %.3f MHz", Si5351::MultiSynth::MS_EXT_CLK_OUT, (float)this->clk_mngr->getMultiSynthSourceFrequency(Si5351::MultiSynth::MS_EXT_CLK_OUT) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "MS%hhu Clock: %.3f MHz", Si5351::MultiSynth::MS_EXT_CLK_OUT, (float)this->clk_mngr->getMultiSynthFrequency(Si5351::MultiSynth::MS_EXT_CLK_OUT) / 1000000);
    SoapySDR_logf(SOAPY_SDR_DEBUG, "CLK%hhu Clock: %.3f MHz", Si5351::ClockOutput::CLK_EXT_CLK_OUT, (float)this->clk_mngr->getClockFrequency(Si5351::ClockOutput::CLK_EXT_CLK_OUT) / 1000000);

    // Wait and global enable
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Waiting for all clocks to stabilize...");
    usleep(50000);

    this->clk_mngr->globalOutputEnable();

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output enabled: %s", this->clk_mngr->isGlobalOutputEnabled() ? "yes" : "no");

    usleep(50000);

    // Check clk_wiz_0 lock
    timeout = 500;
    while(--timeout && !this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT))
        usleep(1000);

    if(!this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT))
        throw std::runtime_error("FPGA clk_wiz_0 MMCM did not achieve lock (possible issue with FPGA_CLK0), aborting!");
    else
        SoapySDR_logf(SOAPY_SDR_DEBUG, "FPGA clk_wiz_0 MMCM locked!");

    // De-assert DDR3 core reset
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT, AXIGPIO::Value::LOW);

    // Check DDR3 controller MMCM lock
    timeout = 500;
    while(--timeout && !this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT))
        usleep(1000);

    if(!this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT))
        throw std::runtime_error("FPGA DDR3 MMCM (mig_7series_0) did not achieve lock, aborting!");
    else
        SoapySDR_logf(SOAPY_SDR_DEBUG, "FPGA DDR3 MMCM locked!");

    // De-assert DDR3 AXI interface reset
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_MIG_166M_AUX_RESET_IN_BIT, AXIGPIO::Value::LOW);

    // Check DDR3 AXI interface reset release
    timeout = 500;
    while(--timeout && !this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT))
        usleep(1000);

    if(!this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT))
        throw std::runtime_error("FPGA DDR3 AXI interface did not come out of reset, aborting!");
    else
        SoapySDR_logf(SOAPY_SDR_DEBUG, "FPGA DDR3 AXI interface reset released!");

    // De-assert I2S Core reset
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_FPGA_CLK1_49M152_AUX_RESET_IN_BIT, AXIGPIO::Value::LOW); // De-assert I2S Core reset

    // Check I2S core reset release
    timeout = 500;
    while(--timeout && !this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        usleep(1000);

    if(!this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        throw std::runtime_error("FPGA I2S Core did not come out of reset, aborting!");
    else
        SoapySDR_logf(SOAPY_SDR_DEBUG, "FPGA I2S Core reset released!");

    // Check PCIe MMCM lock
    timeout = 500;
    while(--timeout && !this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_PCIE_MMCM_LOCKED_BIT))
        usleep(1000);

    if(!this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_PCIE_MMCM_LOCKED_BIT))
        throw std::runtime_error("FPGA PCIe MMCM (axi_pcie_0) did not achieve lock (how did we get here?), aborting!");
    else
        SoapySDR_logf(SOAPY_SDR_DEBUG, "FPGA PCIe MMCM locked!");
}
void SoapyIcyRadio::deinitClocks()
{
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting I2S core...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_FPGA_CLK1_49M152_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    uint32_t timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        throw std::runtime_error("Could not reset I2S core, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "I2S core reset!");

    // DDR3 reset procedure
    // First, reset the DDR3 AXI interface
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting DDR3 AXI interface...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_MIG_166M_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT))
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT))
        throw std::runtime_error("Could not reset DDR3 AXI interface, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 AXI interface reset!");

    // Then reset the DDR3 core
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting DDR3 core...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT))
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT))
        throw std::runtime_error("Could not reset DDR3 core, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 core reset, DDR3 MMCM is %s!", this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT) ? "locked (how?)" : "unlocked");

    // Disable clock manager output
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_CLK_MNGR_OEn_BIT, AXIGPIO::Value::HIGH);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output disabled, clk_wiz_0 MMCM is %s!", this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT) ? "locked (how?)" : "unlocked");
}

void SoapyIcyRadio::resetSystem()
{
    bool clk_mngr_oen = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_MNGR_OEn_BIT);
    bool clk_wiz_0_locked = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT);
    bool ddr_resetn = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT);
    bool mig_mmcm_locked = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT);
    bool ddr_axi_resetn = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT);

    if(!clk_mngr_oen) // Clock manager OE enabled
    {
        SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output is enabled");

        if(clk_wiz_0_locked && ddr_resetn && mig_mmcm_locked && ddr_axi_resetn)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 is properly out of reset, looks like the system was left initialized");

            this->deinitClocks(); // Will throw if it fails
        }
        else if(!mig_mmcm_locked && ddr_axi_resetn) // AXI reset is de-asserted, but clocks are not locked, may cause lockups
        {
            throw std::runtime_error(std::string("DDR3 is not correctly out of reset, ") +
                                     std::string("looks like the system was left in an invalid state ") +
                                     std::string("(clk_mngr_oe: ") + std::string(!clk_mngr_oen ? "enabled" : "disabled") +
                                     std::string(", clk_wiz_0: ") + std::string(clk_wiz_0_locked ? "locked" : "unlocked") +
                                     std::string(", rst_clk_wiz_0_250M: ") + std::string(ddr_resetn ? "de-asserted" : "asserted") +
                                     std::string(", mig_mmcm: ") + std::string(mig_mmcm_locked ? "locked" : "unlocked") +
                                     std::string(", rst_mig_166M: ") + std::string(ddr_axi_resetn ? "de-asserted" : "asserted") +
                                     std::string("). Please perform a power cycle to properly reset the system"));
        }
    }
    else // Clock manager OE disabled
    {
        SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output is disabled");

        if(!clk_wiz_0_locked && !ddr_resetn && !mig_mmcm_locked && !ddr_axi_resetn)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 is properly reset, looks like the system was left uninitialized");
        }
        else if(!mig_mmcm_locked && ddr_axi_resetn) // AXI reset is de-asserted, but clocks are not locked, may cause lockups
        {
            throw std::runtime_error(std::string("DDR3 clocks are not locked and resets are not properly asserted, ") +
                                     std::string("looks like the system was left in an invalid state ") +
                                     std::string("(clk_mngr_oe: ") + std::string(!clk_mngr_oen ? "enabled" : "disabled") +
                                     std::string(", clk_wiz_0: ") + std::string(clk_wiz_0_locked ? "locked" : "unlocked") +
                                     std::string(", rst_clk_wiz_0_250M: ") + std::string(ddr_resetn ? "de-asserted" : "asserted") +
                                     std::string(", mig_mmcm: ") + std::string(mig_mmcm_locked ? "locked" : "unlocked") +
                                     std::string(", rst_mig_166M: ") + std::string(ddr_axi_resetn ? "de-asserted" : "asserted") +
                                     std::string("). Please perform a power cycle to properly reset the system"));
        }
    }

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Initiating system reset...");

    // This will clear the two DDR3 reset bits set previously!
    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_SYS_AUX_RESET_BIT, AXIGPIO::Value::HIGH);
    usleep(100000); // Do not access anything while it's resetting, otherwise the ENTIRE SYSTEM will hang! TODO: mutex

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_SYS_AUX_RESET_BIT))
        throw std::runtime_error("System reset bit did not de-assert (how?), system reset failed");
}