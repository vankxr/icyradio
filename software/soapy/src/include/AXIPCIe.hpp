#pragma once

#include <cstdint>
#include <mutex>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_PCIE_REG_PCIE_CONF_HDR      0x000
#define AXI_PCIE_REG_VSEC_CAP           0x128
#define AXI_PCIE_REG_VSEC_HDR           0x12C
#define AXI_PCIE_REG_BR_INFO            0x130
#define AXI_PCIE_REG_BR_STAT_CTL        0x134
#define AXI_PCIE_REG_INT_DECODE         0x138
#define AXI_PCIE_REG_INT_MASK           0x13C
#define AXI_PCIE_REG_BUS_LOC            0x140
#define AXI_PCIE_REG_PHY_STAT_CTL       0x144
#define AXI_PCIE_REG_RP_STAT_CTL        0x148
#define AXI_PCIE_REG_RP_MSI_BASE1       0x14C
#define AXI_PCIE_REG_RP_MSI_BASE2       0x150
#define AXI_PCIE_REG_RP_ERR_FIFO        0x154
#define AXI_PCIE_REG_RP_INT_FIFO1       0x158
#define AXI_PCIE_REG_RP_INT_FIFO2       0x15C
#define AXI_PCIE_REG_VSEC_CAP2          0x200
#define AXI_PCIE_REG_VSEC_HDR2          0x204
#define AXI_PCIE_REG_BARn_XLATE_HI(n)   (0x208 + (n) * 8)
#define AXI_PCIE_REG_BARn_XLATE_LO(n)   (0x20C + (n) * 8)


class AXIPCIe : public AXIPeripheral
{
private:
    void validateBARConfiguration(uint8_t bar);

public:
    AXIPCIe(void* base_address);

    inline uint8_t getNumBARs()
    {
        return this->num_bars;
    }

    inline bool isBAR64Bit(uint8_t bar)
    {
        return this->bar_64bit[bar];
    }

    void setBARPCIeAddress(uint8_t bar, uint64_t addr);
    void setBARPCIeAddress(uint8_t bar, uint64_t addr, uint32_t size);
    uint64_t getBARPCIeAddress(uint8_t bar);
    uint64_t getBARPCIeAddress(uint8_t bar, const uint32_t axi_addr);
    void setBARPCIeSize(uint8_t bar, uint32_t size);
    uint32_t getBARPCIeSize(uint8_t bar);
    void setBARAXIAddress(uint8_t bar, uint32_t addr);
    void setBARAXIAddress(uint8_t bar, uint32_t addr, uint32_t size);
    uint32_t getBARAXIAddress(uint8_t bar);
    uint32_t getBARAXIAddress(uint8_t bar, const uint64_t pcie_addr);
    void setBARAXISize(uint8_t bar, uint32_t size);
    uint32_t getBARAXISize(uint8_t bar);

    uint32_t getBARSize(uint8_t bar);

private:
    std::recursive_mutex mutex;

    bool bar_64bit[6];
    uint32_t bar_axi_addr[6];
    uint32_t bar_axi_size[6];
    uint32_t bar_pcie_size[6];
    uint8_t num_bars;
};