#pragma once

#include <cstdint>
#include <string>
#include <sstream>
#include <iomanip>
#include <unistd.h>
#include <mutex>
#include "AuxMCU.hpp"
#include "Utils.hpp"

#define PMC_I2C_ADDR 0x26

// Registers
#define PMC_REG_STATUS                  0x00
#define PMC_REG_CONFIG                  0x01
#define PMC_REG_VIN_VOLTAGE             0xB0
#define PMC_REG_VEXT_VOLTAGE            0xB4
#define PMC_REG_12V0_VOLTAGE            0xB8
#define PMC_REG_VBUS_VOLTAGE            0xBC
#define PMC_REG_IOVDD_VOLTAGE           0xC0
#define PMC_REG_CORE_VOLTAGE            0xC4
#define PMC_REG_TEMP                    0xD0
#define PMC_REG_UPTIME                  0xE0
#define PMC_REG_SW_VERSION              0xE8
#define PMC_REG_DEV_UID0                0xF0
#define PMC_REG_DEV_UID1                0xF4
#define PMC_REG_DEV_UID2                0xF8
#define PMC_REG_DEV_UID3                0xFC

class PMC : public AuxMCU
{
private:
    double getVoltage(uint8_t reg);

public:
    PMC(AuxMCU::IICConfig iic);

    std::string getUniqueID();
    uint16_t getFirmwareVersion();
    uint64_t getUptime();

    inline double getVINVoltage()
    {
        return this->getVoltage(PMC_REG_VIN_VOLTAGE);
    }
    inline double getVEXTVoltage()
    {
        return this->getVoltage(PMC_REG_VEXT_VOLTAGE);
    }
    inline double get12V0Voltage()
    {
        return this->getVoltage(PMC_REG_12V0_VOLTAGE);
    }
    inline double getVBUSVoltage()
    {
        return this->getVoltage(PMC_REG_VBUS_VOLTAGE);
    }
    inline double getIOVDDVoltage()
    {
        return this->getVoltage(PMC_REG_IOVDD_VOLTAGE);
    }
    inline double getCoreVoltage()
    {
        return this->getVoltage(PMC_REG_CORE_VOLTAGE);
    }

    double getTemperature();

private:
    std::mutex mutex;
};