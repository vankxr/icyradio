#include "ExpansionCard.hpp"

ExpansionCard::ExpansionCard(AXIIIC *iic_controller)
{
    this->iic_controller = iic_controller;
}
ExpansionCard::~ExpansionCard()
{
    // Nothing to do here
}

SoapySDR::Kwargs ExpansionCard::getHardwareInfo()
{
    return SoapySDR::Kwargs();
}

size_t ExpansionCard::getNumChannels(const int direction)
{
    return 0;
}
SoapySDR::Kwargs ExpansionCard::getChannelInfo(const int direction, const size_t channel)
{
    return SoapySDR::Kwargs();
}
bool ExpansionCard::getFullDuplex(const int direction, const size_t channel)
{
    return false;
}

std::vector<std::string> ExpansionCard::listAntennas(const int direction, const size_t channel)
{
    return std::vector<std::string>();
}
void ExpansionCard::setAntenna(const int direction, const size_t channel, const std::string &name)
{
    // Do nothing
}
std::string ExpansionCard::getAntenna(const int direction, const size_t channel)
{
    return "";
}

std::vector<std::string> ExpansionCard::listGains(const int direction, const size_t channel)
{
    return std::vector<std::string>();
}
bool ExpansionCard::hasGainMode(const int direction, const size_t channel)
{
    return false;
}
void ExpansionCard::setGainMode(const int direction, const size_t channel, const bool automatic)
{
    // Do nothing
}
bool ExpansionCard::getGainMode(const int direction, const size_t channel)
{
    return false;
}
void ExpansionCard::setGain(const int direction, const size_t channel, const double value)
{
    // Do nothing
}
void ExpansionCard::setGain(const int direction, const size_t channel, const std::string &name, const double value)
{
    // Do nothing
}
double ExpansionCard::getGain(const int direction, const size_t channel)
{
    return 0.0;
}
double ExpansionCard::getGain(const int direction, const size_t channel, const std::string &name)
{
    return 0.0;
}
SoapySDR::Range ExpansionCard::getGainRange(const int direction, const size_t channel)
{
    return SoapySDR::Range();
}
SoapySDR::Range ExpansionCard::getGainRange(const int direction, const size_t channel, const std::string &name)
{
    return SoapySDR::Range();
}

void ExpansionCard::setFrequency(const int direction, const size_t channel, const double frequency)
{
    // Do nothing
}
void ExpansionCard::setFrequency(const int direction, const size_t channel, const std::string &name, const double frequency)
{
    // Do nothing
}
double ExpansionCard::getFrequency(const int direction, const size_t channel)
{
    return 0.0;
}
double ExpansionCard::getFrequency(const int direction, const size_t channel, const std::string &name)
{
    return 0.0;
}
std::vector<std::string> ExpansionCard::listFrequencies(const int direction, const size_t channel)
{
    return std::vector<std::string>();
}
SoapySDR::RangeList ExpansionCard::getFrequencyRange(const int direction, const size_t channel)
{
    return SoapySDR::RangeList();
}
SoapySDR::RangeList ExpansionCard::getFrequencyRange(const int direction, const size_t channel, const std::string &name)
{
    return SoapySDR::RangeList();
}
