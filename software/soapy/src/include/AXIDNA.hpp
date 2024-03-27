#pragma once

#include <cstdint>
#include <string>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_DNA_REG_DESIGN_ID_LOW       0x00
#define AXI_DNA_REG_DESIGN_ID_HIGH      0x04
#define AXI_DNA_REG_DESIGN_VERSION      0x08
#define AXI_DNA_REG_DEVICE_INFO         0x0C
#define AXI_DNA_REG_USR_ACCESS          0x10
#define AXI_DNA_REG_EFUSE_USR           0x14
#define AXI_DNA_REG_DNA_LOW             0x18
#define AXI_DNA_REG_DNA_HIGH            0x1C

class AXIDNA: public AXIPeripheral
{
    uint32_t getUserAccess();
    uint32_t getEFuseUser();

public:
    AXIDNA(void *base_address);

    std::string getDesignID();
    uint32_t getDesignVersion();

    std::string getDeviceInfo();

    bool isSerialNumberReady();
    uint64_t getSerialNumber();
};