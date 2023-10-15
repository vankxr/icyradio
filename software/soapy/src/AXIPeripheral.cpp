#include "AXIPeripheral.hpp"

AXIPeripheral::AXIPeripheral(void *base_address)
{
    this->base_address = base_address;
}
AXIPeripheral::~AXIPeripheral()
{
    // Nothing to do here
}

uint32_t AXIPeripheral::readReg(uint32_t offset)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uintptr_t addr = reinterpret_cast<uintptr_t>(this->base_address);

    uint32_t value = *reinterpret_cast<volatile uint32_t *>(addr + offset);

    return value;
}
uint64_t AXIPeripheral::readReg64(uint32_t offset)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uintptr_t addr = reinterpret_cast<uintptr_t>(this->base_address);

    uint64_t value = *reinterpret_cast<volatile uint32_t *>(addr + offset);
    value |= static_cast<uint64_t>(*reinterpret_cast<volatile uint32_t *>(addr + offset + sizeof(uint32_t))) << 32;

    return value;
}
void AXIPeripheral::writeReg(uint32_t offset, uint32_t value)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uintptr_t addr = reinterpret_cast<uintptr_t>(this->base_address);

    *reinterpret_cast<volatile uint32_t *>(addr + offset) = value;
}
void AXIPeripheral::writeReg64(uint32_t offset, uint64_t value)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uintptr_t addr = reinterpret_cast<uintptr_t>(this->base_address);

    *reinterpret_cast<volatile uint32_t *>(addr + offset) = value & 0xFFFFFFFF;
    *reinterpret_cast<volatile uint32_t *>(addr + offset + sizeof(uint32_t)) = (value >> 32) & 0xFFFFFFFF;
}
