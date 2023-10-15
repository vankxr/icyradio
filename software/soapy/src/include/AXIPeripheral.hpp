#pragma once

#include <cstdint>
#include <mutex>

class AXIPeripheral
{
protected:
    AXIPeripheral(void *base_address);
    ~AXIPeripheral();

    uint32_t readReg(uint32_t offset);
    uint64_t readReg64(uint32_t offset);
    void writeReg(uint32_t offset, uint32_t value);
    void writeReg64(uint32_t offset, uint64_t value);

private:
    void *base_address;
    std::mutex mutex;
};