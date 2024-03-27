#include "PMC.hpp"

PMC::PMC(AuxMCU::IICConfig iic) : AuxMCU(iic)
{
    // Nothing to do here
}

std::string PMC::getUniqueID()
{
    uint32_t uid[4];

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->readReg(PMC_REG_DEV_UID0, reinterpret_cast<uint8_t *>(uid), sizeof(uid));

    std::stringstream s;

    s << std::hex << std::setw(8) << std::setfill('0') << std::uppercase << uid[0];
    s << "-";
    s << std::hex << std::setw(8) << std::setfill('0') << std::uppercase << uid[1];
    s << "-";
    s << std::hex << std::setw(8) << std::setfill('0') << std::uppercase << uid[2];
    s << "-";
    s << std::hex << std::setw(8) << std::setfill('0') << std::uppercase << uid[3];

    return s.str();
}
uint16_t PMC::getFirmwareVersion()
{
    uint16_t version;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->readReg(PMC_REG_SW_VERSION, reinterpret_cast<uint8_t *>(&version), sizeof(version));

    return version;
}
uint64_t PMC::getUptime()
{
    uint64_t uptime;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->readReg(PMC_REG_UPTIME, reinterpret_cast<uint8_t *>(&uptime), sizeof(uptime));

    return uptime;
}

double PMC::getVoltage(uint8_t reg)
{
    uint32_t voltage;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->readReg(reg, reinterpret_cast<uint8_t *>(&voltage), sizeof(voltage));

    return (double)voltage / 1000.0;
}

double PMC::getTemperature()
{
    uint32_t temp;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->readReg(PMC_REG_TEMP, reinterpret_cast<uint8_t *>(&temp), sizeof(temp));

    return (double)temp / 1000.0;
}