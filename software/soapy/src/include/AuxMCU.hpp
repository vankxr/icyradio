#pragma once

#include <cstdint>
#include <unistd.h>
#include <mutex>
#include "AXIIIC.hpp"
#include "Utils.hpp"

class AuxMCU
{
public:
    struct IICConfig
    {
        AXIIIC *controller;
        uint8_t addr;
    };

private:
    uint8_t calcChecksum(uint8_t *data, uint8_t count);
    inline bool checkChecksum(uint8_t *data, uint8_t count)
    {
        return this->calcChecksum(data, count) == 0;
    }

    void readMem(bool rom, uint8_t addr, uint8_t *dst, uint8_t count, bool check = true);
public:
    AuxMCU(AuxMCU::IICConfig iic);
    ~AuxMCU();

    inline void readROM(uint8_t addr, uint8_t *dst, uint8_t count, bool check = true)
    {
        this->readMem(true, addr, dst, count, check);
    }
    inline uint8_t readROM(uint8_t addr, bool check = true)
    {
        uint8_t val;

        this->readROM(addr, &val, 1, check);

        return val;
    }
    inline void readReg(uint8_t reg, uint8_t *dst, uint8_t count, bool check = true)
    {
        this->readMem(false, reg, dst, count, check);
    }
    inline uint8_t readReg(uint8_t reg, bool check = true)
    {
        uint8_t val;

        this->readReg(reg, &val, 1, check);

        return val;
    }
    void writeReg(uint8_t reg, uint8_t *src, uint8_t count);
    inline void writeReg(uint8_t reg, uint8_t val)
    {
        this->writeReg(reg, &val, 1);
    }
    inline void rmwReg(uint8_t reg, uint8_t mask, uint8_t val, bool check = true)
    {
        this->writeReg(reg, (this->readReg(reg, check) & mask) | val);
    }

private:
    AuxMCU::IICConfig iic;
    std::mutex mutex;
};
