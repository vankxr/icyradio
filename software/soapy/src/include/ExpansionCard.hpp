#pragma once

#include <cstdint>
#include <vector>
#include <string>
#include <unistd.h>
#include <mutex>
#include <SoapySDR/Types.hpp>
#include "AXIIIC.hpp"
#include "Utils.hpp"

class ExpansionCard
{
protected:
    ExpansionCard(AXIIIC *iic_controller);

public:
    virtual ~ExpansionCard();

    virtual SoapySDR::Kwargs getHardwareInfo();

    virtual size_t getNumChannels(const int direction);
    virtual SoapySDR::Kwargs getChannelInfo(const int direction, const size_t channel);
    virtual bool getFullDuplex(const int direction, const size_t channel);

    virtual std::vector<std::string> listAntennas(const int direction, const size_t channel);
    virtual void setAntenna(const int direction, const size_t channel, const std::string &name);
    virtual std::string getAntenna(const int direction, const size_t channel);

    virtual std::vector<std::string> listGains(const int direction, const size_t channel);
    virtual bool hasGainMode(const int direction, const size_t channel);
    virtual void setGainMode(const int direction, const size_t channel, const bool automatic);
    virtual bool getGainMode(const int direction, const size_t channel);
    virtual void setGain(const int direction, const size_t channel, const double value);
    virtual void setGain(const int direction, const size_t channel, const std::string &name, const double value);
    virtual double getGain(const int direction, const size_t channel);
    virtual double getGain(const int direction, const size_t channel, const std::string &name);
    virtual SoapySDR::Range getGainRange(const int direction, const size_t channel);
    virtual SoapySDR::Range getGainRange(const int direction, const size_t channel, const std::string &name);

    virtual void setFrequency(const int direction, const size_t channel, const double frequency);
    virtual void setFrequency(const int direction, const size_t channel, const std::string &name, const double frequency);
    virtual double getFrequency(const int direction, const size_t channel);
    virtual double getFrequency(const int direction, const size_t channel, const std::string &name);
    virtual std::vector<std::string> listFrequencies(const int direction, const size_t channel);
    virtual SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel);
    virtual SoapySDR::RangeList getFrequencyRange(const int direction, const size_t channel, const std::string &name);

protected:
    AXIIIC *iic_controller;
};