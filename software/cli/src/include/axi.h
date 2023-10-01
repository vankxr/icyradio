#ifndef __AXI_H__
#define __AXI_H__

// SPI Flash XIP Memory Mapped
#define AXI_QUAD_SPI0_XIP_BASE  0x00000000
#define AXI_QUAD_SPI0_XIP_SIZE  (8 * 1024 * 1024) // 8 MB

// DDR3 Memory Mapped
#define AXI_MIG_DDR3_BASE       0x20000000
#define AXI_MIG_DDR3_SIZE       (512 * 1024 * 1024) // 512 MB

// AXI Peripherals
#define AXI_PERIPH_BASE         0x40000000
#define AXI_PERIPH_SIZE         0x00110000

#define AXI_DMAC_RF_RX_BASE     0x40000000
#define AXI_DMAC_RF_TX_BASE     0x40002000
#define AXI_GPIO0_BASE          0x40004000
#define AXI_IIC0_BASE           0x40006000
#define AXI_QUAD_SPI0_BASE      0x40008000
#define AXI_PCIE0_BASE          0x4000A000
#define AXI_DMAC_I2S_RX_BASE    0x4000C000
#define AXI_DMAC_I2S_TX_BASE    0x4000E000
#define AXI_I2S_ADI_BASE        0x40010000
#define AXI_XADC_WIZ_BASE       0x40012000
#define AXI_QUAD_SPI1_BASE      0x40014000
#define AXI_IIC1_BASE           0x40016000
#define AXI_QUAD_SPI2_BASE      0x40018000
#define AXI_GPIO1_BASE          0x4001A000
// RSVD
#define AXI_AD9361_BASE         0x40100000
// RSVD
#define AXI_BRAM_BASE           0x41000000

// PCIe Access to Host
#define AXI_PCIE_MM_BASE        0x60000000
#define AXI_PCIE_MM_SIZE        (256 * 1024 * 1024) // 256 MB

#endif // __AXI_H__