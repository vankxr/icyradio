#include "AXIDNA.hpp"

AXIDNA::AXIDNA(void *base_address): AXIPeripheral(base_address)
{
    // Nothing to do here
}

bool AXIDNA::ready()
{
    return !!(this->readReg(AXI_DNA_REG_DNA_HIGH) & BIT(31));
}
uint64_t AXIDNA::read()
{
    return this->readReg64(AXI_DNA_REG_DNA_LOW) & 0x01FFFFFFFFFFFFFF; // 57 bits
}