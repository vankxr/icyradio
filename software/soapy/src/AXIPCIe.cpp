#include "AXIPCIe.hpp"

AXIPCIe::AXIPCIe(void *base_address): AXIPeripheral(base_address)
{
    // Detect number of BARs
    this->num_bars = 0;

    for(uint8_t i = 0; i < 6; i++)
    {
        uint32_t bar = this->readReg(AXI_PCIE_REG_BARn_XLATE_LO(i));

        if(!bar) // If it 0, try to write something and read it back
        {
            this->writeReg(AXI_PCIE_REG_BARn_XLATE_LO(i), 0xFFFFFFFF);

            bar = this->readReg(AXI_PCIE_REG_BARn_XLATE_LO(i));

            this->writeReg(AXI_PCIE_REG_BARn_XLATE_LO(i), 0x00000000); // Restore

            // If it is still 0, then there is no BAR
            if(!bar)
                continue;
        }

        this->num_bars++;

        this->bar_locked[i] = false;

        // Check if it is 64-bit
        bar = this->readReg(AXI_PCIE_REG_BARn_XLATE_HI(i));

        if(!bar) // If it 0, try to write something and read it back
        {
            this->writeReg(AXI_PCIE_REG_BARn_XLATE_HI(i), 0xFFFFFFFF);

            bar = this->readReg(AXI_PCIE_REG_BARn_XLATE_HI(i));

            this->writeReg(AXI_PCIE_REG_BARn_XLATE_HI(i), 0x00000000); // Restore

            // If it is still 0, then it is 32-bit
            if(!bar)
                continue;
        }

        this->bar_64bit[i] = true;
    }

    if(this->num_bars == 0)
        throw std::runtime_error("AXI PCIe: No AXI to PCIe BARs detected");
}

bool AXIPCIe::isBARLocked(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    return this->bar_locked[bar];
}
void AXIPCIe::lockBAR(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->bar_locked[bar])
        throw std::runtime_error("AXI PCIe: BAR is already locked");

    this->bar_locked[bar] = true;
}
void AXIPCIe::lockBAR(uint8_t bar, uint64_t address)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->bar_locked[bar])
        throw std::runtime_error("AXI PCIe: BAR is already locked");

    this->bar_locked[bar] = true;

    this->_setBARAddress(bar, address);
}
void AXIPCIe::unlockBAR(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->bar_locked[bar] = false;
}

void AXIPCIe::_setBARAddress(uint8_t bar, uint64_t address)
{
    this->writeReg(AXI_PCIE_REG_BARn_XLATE_LO(bar), address & 0xFFFFFFFF);

    if(!this->bar_64bit[bar])
        return;

    this->writeReg(AXI_PCIE_REG_BARn_XLATE_HI(bar), (address >> 32) & 0xFFFFFFFF);
}
void AXIPCIe::setBARAddress(uint8_t bar, uint64_t address)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->bar_locked[bar])
        throw std::runtime_error("AXI PCIe: BAR is locked");

    this->_setBARAddress(bar, address);
}
uint64_t AXIPCIe::getBARAddress(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::runtime_error("AXI PCIe: Invalid BAR");

    std::lock_guard<std::mutex> lock(this->mutex);

    uint64_t address = this->readReg(AXI_PCIE_REG_BARn_XLATE_LO(bar));

    if(!this->bar_64bit[bar])
        return address;

    address |= (static_cast<uint64_t>(this->readReg(AXI_PCIE_REG_BARn_XLATE_HI(bar))) << 32);

    return address;
}