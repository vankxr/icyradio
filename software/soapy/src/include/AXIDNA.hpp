#pragma once

#include <cstdint>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_DNA_REG_DNA_LOW      0x00
#define AXI_DNA_REG_DNA_HIGH     0x04

class AXIDNA: public AXIPeripheral
{
public:
    AXIDNA(void *base_address);

    bool ready();
    uint64_t read();
};