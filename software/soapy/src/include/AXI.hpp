#pragma once

/*
 * AXI Address Map
 */

// SPI Flash XIP Memory Mapped
#define AXI_FLASH_XIP_BASE      0x00000000
#define AXI_FLASH_XIP_SIZE      (8 * 1024 * 1024) // 8 MB

// BRAM
#define AXI_BRAM_BASE           0x01000000
#define AXI_BRAM_SIZE           (128 * 1024) // 128 KB

// DNA (ROM)
#define AXI_DNA_BASE            0x01100000
#define AXI_DNA_SIZE            (8 * 1024) // 8 KB

// DDR3 Memory Mapped
#define AXI_MIG_DDR3_BASE       0x20000000
#define AXI_MIG_DDR3_SIZE       (512 * 1024 * 1024) // 512 MB

// AXI Peripherals
#define AXI_PERIPH_BASE         0x40000000
#define AXI_PERIPH_SIZE         0x00110000

#define AXI_DMAC_RF_TX0_BASE    0x40000000
#define AXI_DMAC_RF_TX1_BASE    0x40002000
#define AXI_DMAC_RF_RX0_BASE    0x40004000
#define AXI_DMAC_RF_RX1_BASE    0x40006000
#define AXI_DMAC_I2S_TX_BASE    0x40008000
#define AXI_DMAC_I2S_RX_BASE    0x4000A000
#define AXI_IIC0_BASE           0x4000C000
#define AXI_IIC1_BASE           0x4000E000
#define AXI_IIC2_BASE           0x40010000
#define AXI_QUAD_SPI_MM0_BASE   0x40012000
#define AXI_SPI0_BASE           0x40014000
#define AXI_SPI1_BASE           0x40016000
#define AXI_GPIO0_BASE          0x40018000
#define AXI_GPIO1_BASE          0x4001A000
#define AXI_GPIO2_BASE          0x4001C000
#define AXI_PCIE0_BASE          0x4001E000
#define AXI_RF_TSTAMP_BASE      0x40020000
#define AXI_IRQ_CTRL_BASE       0x40022000
#define AXI_I2S_BASE            0x40024000
#define AXI_XADC_WIZ_BASE       0x40026000
// RSVD
#define AXI_AD9361_BASE         0x40100000

// PCIe Access to Host
#define AXI_PCIE_BAR0_MM_BASE   0x50000000
#define AXI_PCIE_BAR0_MM_SIZE   (128 * 1024 * 1024) // 128 MB
#define AXI_PCIE_BAR1_MM_BASE   0x58000000
#define AXI_PCIE_BAR1_MM_SIZE   (128 * 1024 * 1024) // 128 MB
#define AXI_PCIE_BAR2_MM_BASE   0x60000000
#define AXI_PCIE_BAR2_MM_SIZE   (128 * 1024 * 1024) // 128 MB
#define AXI_PCIE_BAR3_MM_BASE   0x68000000
#define AXI_PCIE_BAR3_MM_SIZE   (128 * 1024 * 1024) // 128 MB
#define AXI_PCIE_BAR4_MM_BASE   0x70000000
#define AXI_PCIE_BAR4_MM_SIZE   (128 * 1024 * 1024) // 128 MB
#define AXI_PCIE_BAR5_MM_BASE   0x78000000
#define AXI_PCIE_BAR5_MM_SIZE   (128 * 1024 * 1024) // 128 MB

/*
 * AXI Clock Frequencies
 */

#define AXI_ACLK_FREQ           125000000UL // 125 MHz, derived from PCIe block