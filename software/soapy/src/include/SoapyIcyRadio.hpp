#pragma once

#include <cstdlib>
#include <cstdint>
#include <string>
#include <filesystem>
#include <fcntl.h>
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Logger.h>
#include <SoapySDR/Types.h>
#include "MappedRegion.hpp"
#include "AXI.hpp"
#include "AXIGPIO.hpp"
#include "AXIQuadSPI.hpp"
#include "AXIIIC.hpp"
#include "AXIXADC.hpp"
#include "AXIIRQCtrl.hpp"
#include "AXII2S.hpp"
#include "AXIRFTStamp.hpp"
#include "AXIDNA.hpp"
#include "AXIDMAC.hpp"

class SoapyIcyRadio: public SoapySDR::Device
{
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
    //void setFrontendMapping(const int direction, const std::string &mapping);
    //std::string getFrontendMapping(const int direction) const;
    //size_t getNumChannels(const int direction) const;
    //SoapySDR::Kwargs getChannelInfo(const int direction, const size_t channel) const;
    //bool getFullDuplex(const int direction, const size_t channel) const;

    /*******************************************************************
     * SoapySDR::Stream API
     ******************************************************************/
    //std::vector<std::string> getStreamFormats(const int direction, const size_t channel) const;
    //std::string getNativeStreamFormat(const int direction, const size_t channel, double &fullScale) const;
    //SoapySDR::ArgInfoList getStreamArgsInfo(const int direction, const size_t channel) const;
    //SoapySDR::Stream *setupStream(const int direction, const std::string &format, const std::vector<size_t> &channels = std::vector<size_t>(), const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    //void closeStream(SoapySDR::Stream *stream);
    //size_t getStreamMTU(SoapySDR::Stream *stream) const;
    //int activateStream(SoapySDR::Stream *stream, const int flags = 0, const long long timeNs = 0, const size_t numElems = 0);
    //int deactivateStream(SoapySDR::Stream *stream, const int flags = 0, const long long timeNs = 0);
    //int readStream(SoapySDR::Stream *stream, void * const *buffs, const size_t numElems, int &flags, long long &timeNs, const long timeoutUs = 100000);
    //int writeStream(SoapySDR::Stream *stream, const void * const *buffs, const size_t numElems, int &flags, const long long timeNs = 0, const long timeoutUs = 100000);
    //int readStreamStatus( SoapySDR::Stream *stream, size_t &chanMask, int &flags, long long &timeNs, const long timeoutUs = 100000);

    /*******************************************************************
     * Direct buffer access API
     ******************************************************************/
    //size_t getNumDirectAccessBuffers(SoapySDR::Stream *stream);
    //int getDirectAccessBufferAddrs(SoapySDR::Stream *stream, const size_t handle, void **buffs);
    //int acquireReadBuffer(SoapySDR::Stream *stream, size_t &handle, const void **buffs, int &flags, long long &timeNs, const long timeoutUs = 100000);
    //void releaseReadBuffer(SoapySDR::Stream *stream, const size_t handle);
    //int acquireWriteBuffer(SoapySDR::Stream *stream, size_t &handle, void **buffs, const long timeoutUs = 100000);
    //void releaseWriteBuffer(SoapySDR::Stream *stream, const size_t handle, const size_t numElems, int &flags, const long long timeNs = 0);

    /*******************************************************************
     * Antenna API
     ******************************************************************/
    //std::vector<std::string> listAntennas(const int direction, const size_t channel) const;
    //void setAntenna(const int direction, const size_t channel, const std::string &name);
    //std::string getAntenna(const int direction, const size_t channel) const;

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
    //void setFrequency(const int direction, const size_t channel, const double frequency, const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    //void setFrequency(const int direction, const size_t channel, const std::string &name, const double frequency, const SoapySDR::Kwargs &args = SoapySDR::Kwargs());
    //double getFrequency(const int direction, const size_t channel) const;
    //double getFrequency(const int direction, const size_t channel, const std::string &name) const;
    //std::vector<std::string> listFrequencies(const int direction, const size_t channel) const;
    //SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel) const;
    //SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel, const std::string &name) const;
    //SoapySDR::ArgInfoList getFrequencyArgsInfo(const int direction, const size_t channel) const;

    /*******************************************************************
     * Sample Rate API
     ******************************************************************/
    //void setSampleRate(const int direction, const size_t channel, const double rate);
    //double getSampleRate(const int direction, const size_t channel) const;
    //std::vector<double> listSampleRates(const int direction, const size_t channel) const;
    //SoapySDR::RangeList getSampleRateRange(const int direction, const size_t channel) const;

    /*******************************************************************
     * Bandwidth API
     ******************************************************************/
    //void setBandwidth(const int direction, const size_t channel, const double bw);
    //double getBandwidth(const int direction, const size_t channel) const;
    //std::vector<double> listBandwidths(const int direction, const size_t channel) const;
    //SoapySDR::RangeList getBandwidthRange(const int direction, const size_t channel) const;

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
    // Internal methods
    void setupMemoryMaps();
    void freeMemoryMaps();

    void initPeripheralsPreClocks();
    void deinitPeripheralsPreClocks();

    void initPeripheralsPostClocks();
    void deinitPeripheralsPostClocks();

    void initClocks();
    void deinitClocks();

    void resetSystem();

private:
    int fd; // File descriptor

    // Memory maps
    MappedRegion *mm_axi_flash;
    MappedRegion *mm_axi_bram;
    MappedRegion *mm_axi_ddr;
    MappedRegion *mm_axi_periph;
    MappedRegion *mm_dma_buffer;

    // AXI Peripherals
    AXIDMAC *axi_dmac[AXI_DMAC_NUM_INSTANCES];
    AXIGPIO *axi_gpio[AXI_GPIO_NUM_INSTANCES];
    AXIIIC *axi_iic[AXI_IIC_NUM_INSTANCES];
    AXIQuadSPI *axi_quad_spi[AXI_QUAD_SPI_NUM_INSTANCES];
    // AXIPCIe *axi_pcie;
    AXII2S *axi_i2s;
    AXIXADC *axi_xadc;
    AXIRFTStamp *axi_rf_tstamp;
    AXIIRQCtrl *axi_irq_ctrl;
    AXIDNA *axi_dna;
    // AXIAD9361 *axi_ad9361;
};