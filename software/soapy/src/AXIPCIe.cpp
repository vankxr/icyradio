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

        this->bar_axi_addr[i] = 0x00000000;
        this->bar_axi_size[i] = 0x00000000;

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

void AXIPCIe::validateBARConfiguration(uint8_t bar)
{
    if(!this->bar_axi_size[bar])
        throw std::runtime_error("AXI PCIe: BAR AXI size is not set");

    if(!this->bar_pcie_size[bar])
        throw std::runtime_error("AXI PCIe: BAR PCIe size is not set");

    if(this->bar_axi_addr[bar] & (this->bar_axi_size[bar] - 1))
        throw std::runtime_error("AXI PCIe: BAR AXI address is not aligned to BAR size");
}

void AXIPCIe::setBARPCIeAddress(uint8_t bar, uint64_t addr)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeReg(AXI_PCIE_REG_BARn_XLATE_LO(bar), addr & 0xFFFFFFFF);

    if(!this->bar_64bit[bar])
        return;

    this->writeReg(AXI_PCIE_REG_BARn_XLATE_HI(bar), (addr >> 32) & 0xFFFFFFFF);
}
void AXIPCIe::setBARPCIeAddress(uint8_t bar, uint64_t addr, uint32_t size)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->setBARPCIeAddress(bar, addr);
    this->setBARPCIeSize(bar, size);
}
uint64_t AXIPCIe::getBARPCIeAddress(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint64_t addr = this->readReg(AXI_PCIE_REG_BARn_XLATE_LO(bar));

    if(!this->bar_64bit[bar])
        return addr;

    addr |= (uint64_t)this->readReg(AXI_PCIE_REG_BARn_XLATE_HI(bar)) << 32;

    return addr;
}
uint64_t AXIPCIe::getBARPCIeAddress(uint8_t bar, const uint32_t axi_addr)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->validateBARConfiguration(bar);

    if(axi_addr < this->bar_axi_addr[bar])
        throw std::runtime_error("AXI PCIe: AXI address is out of range");

    if(axi_addr >= this->bar_axi_addr[bar] + this->bar_axi_size[bar])
        throw std::runtime_error("AXI PCIe: AXI address is out of range");

    uint64_t start = this->getBARPCIeAddress(bar);
    uint64_t base = start & ~((uint64_t)this->bar_axi_size[bar] - 1);
    uint64_t offset = axi_addr & (this->bar_axi_size[bar] - 1);
    uint64_t pcie_addr = base | offset;

    if(pcie_addr < start)
        throw std::runtime_error("AXI PCIe: PCIe address is out of range");

    if(pcie_addr >= start + this->bar_pcie_size[bar])
        throw std::runtime_error("AXI PCIe: PCIe address is out of range");

    return pcie_addr;
}
void AXIPCIe::setBARPCIeSize(uint8_t bar, uint32_t size)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->bar_pcie_size[bar] = size;
}
uint32_t AXIPCIe::getBARPCIeSize(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->bar_pcie_size[bar];
}

void AXIPCIe::setBARAXIAddress(uint8_t bar, uint32_t addr)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->bar_axi_addr[bar] = addr;
}
void AXIPCIe::setBARAXIAddress(uint8_t bar, uint32_t addr, uint32_t size)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->setBARAXIAddress(bar, addr);
    this->setBARAXISize(bar, size);
}
uint32_t AXIPCIe::getBARAXIAddress(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->bar_axi_addr[bar];
}
uint32_t AXIPCIe::getBARAXIAddress(uint8_t bar, const uint64_t pcie_addr)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->validateBARConfiguration(bar);

    uint64_t start = this->getBARPCIeAddress(bar);

    if(pcie_addr < start)
        throw std::runtime_error("AXI PCIe: PCIe address is out of range");

    if(pcie_addr >= start + this->bar_pcie_size[bar])
        throw std::runtime_error("AXI PCIe: PCIe address is out of range");

    uint64_t base = start & ~((uint64_t)this->bar_axi_size[bar] - 1);
    uint64_t _base = pcie_addr & ~((uint64_t)this->bar_axi_size[bar] - 1);

    if(base != _base)
        throw std::runtime_error("AXI PCIe: AXI address is out of range");

    uint64_t offset = pcie_addr & ((uint64_t)this->bar_axi_size[bar] - 1);
    uint32_t axi_addr = this->bar_axi_addr[bar] | offset;

    return axi_addr;
}
void AXIPCIe::setBARAXISize(uint8_t bar, uint32_t size)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->bar_axi_size[bar] = size;
}
uint32_t AXIPCIe::getBARAXISize(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->bar_axi_size[bar];
}

uint32_t AXIPCIe::getBARSize(uint8_t bar)
{
    if(bar >= this->num_bars)
        throw std::invalid_argument("AXI PCIe: Invalid BAR");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return MIN(this->bar_axi_size[bar], this->bar_pcie_size[bar]);
}