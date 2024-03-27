#pragma once

#include <cstdlib>
#include <cstdint>
#include <vector>
#include <string>
#include <sstream>
#include <filesystem>
#include <mutex>
#include <algorithm>
#include <memory>
#include <thread>
#include <fcntl.h>
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Logger.hpp>
#include <SoapySDR/Types.hpp>
#include <SoapySDR/ConverterRegistry.hpp>
#include <SoapySDR/Time.hpp>
#include "ioctl.hpp"
#include "MappedRegion.hpp"
#include "AXI.hpp"
#include "AXIGPIO.hpp"
#include "AXISPI.hpp"
#include "AXIIIC.hpp"
#include "AXIXADC.hpp"
#include "AXIIRQCtrl.hpp"
#include "AXII2S.hpp"
#include "AXIRFTStamp.hpp"
#include "AXIDNA.hpp"
#include "AXIDMAC.hpp"
#include "AXIPCIe.hpp"
#include "AXIAD9361.hpp"
#include "PMC.hpp"
#include "LT7182S.hpp"
#include "Si5351.hpp"
#include "IDT8V97003.hpp"
#include "AD9361.hpp"
#include "SPIFlash.hpp"
#include "ExpansionCard.hpp"

#define ICYRADIO_SAMPLE_SIZE_BYTES                      (2 * sizeof(int16_t)) // 16-bit samples (I and Q)
#define ICYRADIO_DEFAULT_NUM_BUFFERS                    16 // 16 buffers per stream
#define ICYRADIO_DEFAULT_DMA_NUM_BUFFERS                2 // 2 buffers per DMA channel
#define ICYRADIO_DEFAULT_TOTAL_DMA_POOL_SIZE_SAMPLES    (1 * 1024 * 1024) // 1 MSamples (Samples are 2 * 16-bit = 4 bytes)
#define ICYRADIO_DEFAULT_TOTAL_DMA_POOL_SIZE_BYTES      (ICYRADIO_DEFAULT_TOTAL_DMA_POOL_SIZE_SAMPLES * ICYRADIO_SAMPLE_SIZE_BYTES)
#define ICYRADIO_DEFAULT_DMA_BUFFER_SIZE_SAMPLES        (128 * 1024) // 128 kSamples (Samples are 2 * 16-bit = 4 bytes) -> This is the MTU
#define ICYRADIO_DEFAULT_DMA_BUFFER_SIZE_BYTES          (ICYRADIO_DEFAULT_DMA_BUFFER_SIZE_SAMPLES * ICYRADIO_SAMPLE_SIZE_BYTES)

class SoapyIcyRadio: public SoapySDR::Device
{
private:
    class Stream
    {
    public:
        class Channel
        {
        public:
            class DMABuffer
            {
            public:
                SoapyIcyRadio *device; // Pointer to the parent device
                SoapyIcyRadio::Stream::Channel *parent; // Pointer to the parent channel
                void *virt; // Virtual (userspace) address pointing to the memory region where the DMA is going to write/read data
                size_t size; // Size of the buffer in bytes
                AXIDMAC::Transfer xfer; // DMA transfer
            };

            class Buffer
            {
            public:
                ~Buffer()
                {
                    if(this->addr != nullptr)
                        std::free(this->addr);
                }

            public:
                void *addr; // Virtual (userspace) address
                size_t size; // Size of the allocated buffer in bytes (max size)
                size_t valid_size; // Size of the valid data in the buffer in bytes
                uint64_t time; // Timestamp of the buffer
                bool time_valid; // Is the timestamp valid?
                bool acquired; // Has the buffer been acquired by the user?
            };

        public:
            ~Channel()
            {
                for(auto &buf: this->dma_buffers)
                {
                    if(buf != nullptr)
                        delete buf;
                }

                for(auto &buf: this->buffers)
                {
                    if(buf != nullptr)
                        delete buf;
                }
            }

        public:
            SoapyIcyRadio::Stream *parent; // Pointer to the parent stream
            size_t num; // Physical (hardware) channel number (TX0, TX1, etc...)
            AXIDMAC *dma; // DMA controller
            AXIRFTStamp::Channel ts_chan; // Timestamping channel
            std::vector<SoapyIcyRadio::Stream::Channel::DMABuffer *> dma_buffers; // Pool of DMA buffers
            std::vector<SoapyIcyRadio::Stream::Channel::Buffer *> buffers; // Pool of user buffers
            size_t next_user_buf; // Index of the next buffer that will be acquired by the user (queue tail)
            size_t next_dma_buf; // Index of the next buffer that will be filled by the DMA (queue head)
            uint64_t next_time; // Timestamp of the next buffer that will be filled by the DMA
            bool next_time_valid;
            std::mutex mutex;
        };

    public:
        ~Stream()
        {
            for(auto &ch: this->channels)
            {
                if(ch != nullptr)
                    delete ch;
            }
        }

    public:
        int direction;
        bool active;
        std::vector<SoapyIcyRadio::Stream::Channel *> channels;
        SoapySDR::ConverterRegistry::ConverterFunction fmt_convert;
        double fmt_scale;
        std::mutex mutex;

        // Used by readStream/writeStream calls to the direct buffer access API
        std::mutex cur_buf_mutex;
        size_t cur_buf_handle;
        std::vector<void *> cur_buf_ptrs;
        size_t cur_buf_rem;
        uint64_t cur_buf_time;
        bool cur_buf_time_valid;
    };

public:
    SoapyIcyRadio(const SoapySDR::Kwargs &args);
    ~SoapyIcyRadio();

    /*******************************************************************
     * Identification API
     ******************************************************************/
    std::string getDriverKey() const;
    std::string getHardwareKey() const;
    SoapySDR::Kwargs getHardwareInfo() const;

    /*******************************************************************
     * Channels API
     ******************************************************************/
    void setFrontendMapping(const int direction, const std::string &mapping);
    std::string getFrontendMapping(const int direction) const;
    size_t getNumChannels(const int direction) const;
    SoapySDR::Kwargs getChannelInfo(const int direction, const size_t channel) const;
    bool getFullDuplex(const int direction, const size_t channel) const;

    /*******************************************************************
     * SoapySDR::Stream API
     ******************************************************************/
    std::vector<std::string> getStreamFormats(const int direction, const size_t channel) const;
    std::string getNativeStreamFormat(const int direction, const size_t channel, double &fullScale) const;
    SoapySDR::ArgInfoList getStreamArgsInfo(const int direction, const size_t channel) const;
    SoapySDR::Stream *setupStream(const int direction, const std::string &format, const std::vector<size_t> &channels = std::vector<size_t>(), const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    void closeStream(SoapySDR::Stream *stream);
    size_t getStreamMTU(SoapySDR::Stream *stream) const;
    int activateStream(SoapySDR::Stream *stream, const int flags = 0, const long long timeNs = 0, const size_t numElems = 0);
    int deactivateStream(SoapySDR::Stream *stream, const int flags = 0, const long long timeNs = 0);
    int readStream(SoapySDR::Stream *stream, void * const *buffs, const size_t numElems, int &flags, long long &timeNs, const long timeoutUs = 100000);
    int writeStream(SoapySDR::Stream *stream, const void * const *buffs, const size_t numElems, int &flags, const long long timeNs = 0, const long timeoutUs = 100000);
    int readStreamStatus(SoapySDR::Stream *stream, size_t &chanMask, int &flags, long long &timeNs, const long timeoutUs = 100000);

    /*******************************************************************
     * Direct buffer access API
     ******************************************************************/
    size_t getNumDirectAccessBuffers(SoapySDR::Stream *stream);
    int getDirectAccessBufferAddrs(SoapySDR::Stream *stream, const size_t handle, void **buffs);
    int acquireReadBuffer(SoapySDR::Stream *stream, size_t &handle, const void **buffs, int &flags, long long &timeNs, const long timeoutUs = 100000);
    void releaseReadBuffer(SoapySDR::Stream *stream, const size_t handle);
    int acquireWriteBuffer(SoapySDR::Stream *stream, size_t &handle, void **buffs, const long timeoutUs = 100000);
    void releaseWriteBuffer(SoapySDR::Stream *stream, const size_t handle, const size_t numElems, int &flags, const long long timeNs = 0);

    /*******************************************************************
     * Antenna API
     ******************************************************************/
    std::vector<std::string> listAntennas(const int direction, const size_t channel) const;
    void setAntenna(const int direction, const size_t channel, const std::string &name);
    std::string getAntenna(const int direction, const size_t channel) const;

    /*******************************************************************
     * Frontend corrections API
     ******************************************************************/
    //bool hasDCOffsetMode(const int direction, const size_t channel) const;
    //void setDCOffsetMode(const int direction, const size_t channel, const bool automatic);
    //bool getDCOffsetMode(const int direction, const size_t channel) const;
    //bool hasDCOffset(const int direction, const size_t channel) const;
    //void setDCOffset(const int direction, const size_t channel, const std::complex<double> &offset);
    //std::complex<double> getDCOffset(const int direction, const size_t channel) const;
    //bool hasIQBalance(const int direction, const size_t channel) const;
    //void setIQBalance(const int direction, const size_t channel, const std::complex<double> &balance);
    //std::complex<double> getIQBalance(const int direction, const size_t channel) const;
    //bool hasIQBalanceMode(const int direction, const size_t channel) const;
    //void setIQBalanceMode(const int direction, const size_t channel, const bool automatic);
    //bool getIQBalanceMode(const int direction, const size_t channel) const;
    //bool hasFrequencyCorrection(const int direction, const size_t channel) const;
    //void setFrequencyCorrection(const int direction, const size_t channel, const double value);
    //double getFrequencyCorrection(const int direction, const size_t channel) const;

    /*******************************************************************
     * Gain API
     ******************************************************************/
    //std::vector<std::string> listGains(const int direction, const size_t channel) const;
    //bool hasGainMode(const int direction, const size_t channel) const;
    //void setGainMode(const int direction, const size_t channel, const bool automatic);
    //bool getGainMode(const int direction, const size_t channel) const;
    //void setGain(const int direction, const size_t channel, const double value);
    //void setGain(const int direction, const size_t channel, const std::string &name, const double value);
    //double getGain(const int direction, const size_t channel) const;
    //double getGain(const int direction, const size_t channel, const std::string &name) const;
    //SoapySDR::Range getGainRange(const int direction, const size_t channel) const;
    //SoapySDR::Range getGainRange(const int direction, const size_t channel, const std::string &name) const;

    /*******************************************************************
     * Frequency API
     ******************************************************************/
    void setFrequency(const int direction, const size_t channel, const double frequency, const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    void setFrequency(const int direction, const size_t channel, const std::string &name, const double frequency, const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    double getFrequency(const int direction, const size_t channel) const;
    double getFrequency(const int direction, const size_t channel, const std::string &name) const;
    std::vector<std::string> listFrequencies(const int direction, const size_t channel) const;
    SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel) const;
    SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel, const std::string &name) const;
    SoapySDR::ArgInfoList getFrequencyArgsInfo(const int direction, const size_t channel) const;

    /*******************************************************************
     * Sample Rate API
     ******************************************************************/
    void setSampleRate(const int direction, const size_t channel, const double rate);
    double getSampleRate(const int direction, const size_t channel) const;
    std::vector<double> listSampleRates(const int direction, const size_t channel) const;
    SoapySDR::RangeList getSampleRateRange(const int direction, const size_t channel) const;

    /*******************************************************************
     * Bandwidth API
     ******************************************************************/
    void setBandwidth(const int direction, const size_t channel, const double bw);
    double getBandwidth(const int direction, const size_t channel) const;
    std::vector<double> listBandwidths(const int direction, const size_t channel) const;
    SoapySDR::RangeList getBandwidthRange(const int direction, const size_t channel) const;

    /*******************************************************************
     * Clocking API
     ******************************************************************/
    //void setMasterClockRate(const double rate);
    //double getMasterClockRate() const;
    //SoapySDR::RangeList getMasterClockRates() const;
    //void setReferenceClockRate(const double rate);
    //double getReferenceClockRate() const;
    //SoapySDR::RangeList getReferenceClockRates() const;
    //std::vector<std::string> listClockSources() const;
    //void setClockSource(const std::string &source);
    //std::string getClockSource() const;

    /*******************************************************************
     * Time API
     ******************************************************************/
    //std::vector<std::string> listTimeSources() const;
    //void setTimeSource(const std::string &source);
    //std::string getTimeSource() const;
    //bool hasHardwareTime(const std::string &what = "") const;
    //long long getHardwareTime(const std::string &what = "") const;
    //void setHardwareTime(const long long timeNs, const std::string &what = "");
    //void setCommandTime(const long long timeNs, const std::string &what = "");

    /*******************************************************************
     * Sensor API
     ******************************************************************/
    std::vector<std::string> listSensors() const;
    SoapySDR::ArgInfo getSensorInfo(const std::string &key) const;
    std::string readSensor(const std::string &key) const;
    //std::vector<std::string> listSensors(const int direction, const size_t channel) const;
    //SoapySDR::ArgInfo getSensorInfo(const int direction, const size_t channel, const std::string &key) const;
    //std::string readSensor(const int direction, const size_t channel, const std::string &key) const;

    /*******************************************************************
     * Register API
     ******************************************************************/
    //std::vector<std::string> listRegisterInterfaces() const;
    //void writeRegister(const std::string &name, const unsigned addr, const unsigned value);
    //unsigned readRegister(const std::string &name, const unsigned addr) const;
    //void writeRegister(const unsigned addr, const unsigned value);
    //unsigned readRegister(const unsigned addr) const;
    //void writeRegisters(const std::string &name, const unsigned addr, const std::vector<unsigned> &value);
    //std::vector<unsigned> readRegisters(const std::string &name, const unsigned addr, const size_t length) const;

    /*******************************************************************
     * Settings API
     ******************************************************************/
    //SoapySDR::ArgInfoList getSettingInfo() const;
    //void writeSetting(const std::string &key, const std::string &value);
    //std::string readSetting(const std::string &key) const;
    //SoapySDR::ArgInfoList getSettingInfo(const int direction, const size_t channel) const;
    //void writeSetting(const int direction, const size_t channel, const std::string &key, const std::string &value);
    //std::string readSetting(const int direction, const size_t channel, const std::string &key) const;

    /*******************************************************************
     * GPIO API
     ******************************************************************/
    //std::vector<std::string> listGPIOBanks() const;
    //void writeGPIO(const std::string &bank, const unsigned value);
    //void writeGPIO(const std::string &bank, const unsigned value, const unsigned mask);
    //unsigned readGPIO(const std::string &bank) const;
    //void writeGPIODir(const std::string &bank, const unsigned dir);
    //void writeGPIODir(const std::string &bank, const unsigned dir, const unsigned mask);
    //unsigned readGPIODir(const std::string &bank) const;

    /*******************************************************************
     * I2C API
     ******************************************************************/
    //void writeI2C(const int addr, const std::string &data);
    //std::string readI2C(const int addr, const size_t numBytes);

    /*******************************************************************
     * SPI API
     ******************************************************************/
    //unsigned transactSPI(const int addr, const unsigned data, const size_t numBits);

    /*******************************************************************
     * UART API
     ******************************************************************/
    //std::vector<std::string> listUARTs() const;
    //void writeUART(const std::string &which, const std::string &data);
    //std::string readUART(const std::string &which, const long timeoutUs = 100000) const;

    /*******************************************************************
     * Native Access API
     ******************************************************************/
    //void* getNativeDeviceHandle() const;

private:
    void setupMemoryMaps();
    void freeMemoryMaps();

    void initPeripheralsPreClocks();
    void deinitPeripheralsPreClocks();

    void initPeripheralsPostClocks();
    void deinitPeripheralsPostClocks();

    void initClocks();
    void deinitClocks();

    void resetSystem();

    // Stream helpers
    static void DMAHandler(void *arg); // DMA callback
    void handleDMAData(SoapyIcyRadio::Stream::Channel::DMABuffer *buf); // DMA callback

    bool requiresDataPathReconfiguration(const std::vector<size_t> &rx_channels, const std::vector<size_t> &tx_channels) const;
    bool requiresDataPathReconfiguration(const double new_rate) const;
    void reconfigureDataPath(bool rx2tx2, size_t rx_ch = 0, size_t tx_ch = 0);
    void validateSampleRateAndChannelCombination(const double rate, const size_t channel_count) const;

    size_t getDMAControllerIndex(const int direction, const size_t channel) const;
    AXIDMAC *getDMAController(const int direction, const size_t channel) const;
    void *getDMAPoolStartVirt(const size_t index) const;
    void *getDMAPoolStartVirt(const int direction, const size_t channel) const;
    size_t getDMAPoolSizeBytes(const size_t index) const;
    inline size_t getDMAPoolSizeSamples(const size_t index) const
    {
        return this->getDMAPoolSizeBytes(index) / ICYRADIO_SAMPLE_SIZE_BYTES;
    }
    size_t getDMAPoolSizeBytes(const int direction, const size_t channel) const;
    inline size_t getDMAPoolSizeSamples(const int direction, const size_t channel) const
    {
        return this->getDMAPoolSizeBytes(direction, channel) / ICYRADIO_SAMPLE_SIZE_BYTES;
    }

    AXIRFTStamp::Channel getTimestampingChannel(const int direction, const size_t channel) const;

    void initStreamChannels(SoapyIcyRadio::Stream *stream, const std::vector<size_t> &channels);
    void reinitStreamChannels(SoapyIcyRadio::Stream *stream);

    std::vector<SoapyIcyRadio::Stream *> getStreams(bool active_only = false) const;
    std::vector<SoapyIcyRadio::Stream *> getStreams(const int direction, bool active_only = false) const;
    SoapyIcyRadio::Stream *findStream(SoapyIcyRadio::Stream *stream) const;
    inline SoapyIcyRadio::Stream *findStream(SoapySDR::Stream *stream) const
    {
        return this->findStream(reinterpret_cast<SoapyIcyRadio::Stream *>(stream));
    }

    bool isChannelVectorValid(const int direction, const std::vector<size_t> &channels) const;
    inline bool isChannelValid(const int direction, const size_t channel) const
    {
        return this->isChannelVectorValid(direction, {channel});
    }
    bool isAnyChannelBusy(const int direction, const std::vector<size_t> &channels) const;
    inline bool isChannelBusy(const int direction, const size_t channel) const
    {
        return this->isAnyChannelBusy(direction, {channel});
    }
    std::vector<size_t> getBusyChannels(const int direction) const;

private:
    int fd; // File descriptor

    // Memory maps
    MappedRegion *mm_axi_flash;
    MappedRegion *mm_axi_bram;
    MappedRegion *mm_axi_dna;
    MappedRegion *mm_axi_ddr;
    MappedRegion *mm_axi_periph;
    MappedRegion *mm_dma_buffer;

    // AXI Peripherals
    AXIDNA *axi_dna;
    AXIDMAC *axi_dmac[AXI_DMAC_NUM_INSTANCES];
    AXIIIC *axi_iic[AXI_IIC_NUM_INSTANCES];
    AXISPI *axi_spi[AXI_SPI_NUM_INSTANCES];
    AXIGPIO *axi_gpio[AXI_GPIO_NUM_INSTANCES];
    AXIPCIe *axi_pcie;
    AXIRFTStamp *axi_rf_tstamp;
    AXIIRQCtrl *axi_irq_ctrl;
    AXII2S *axi_i2s;
    AXIXADC *axi_xadc;
    AXIAD9361 *axi_ad9361;

    // Peripherals
    PMC *pmc;
    LT7182S *vin_reg;
    SPIFlash *spi_flash;
    Si5351 *clk_mngr;
    IDT8V97003 *mmw_synth;
    AD9361 *rf_phy;
    ExpansionCard *exp_card;

    // Streaming metadata
    std::vector<SoapyIcyRadio::Stream *> streams;
    mutable std::recursive_mutex streams_mutex;
};