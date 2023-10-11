#ifndef __AXI_IRQ_CTRL_H__
#define __AXI_IRQ_CTRL_H__

#include <stdint.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/poll.h>
#include "axi.h"
#include "utils.h"
#include "debug_macros.h"

#define AXI_IRQ_CTRL_REG_VERSION        0x00
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE     0x04
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE_SET 0x08
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR 0x0C
#define AXI_IRQ_CTRL_REG_IRQ_PEND       0x10
#define AXI_IRQ_CTRL_REG_IRQ_PEND_SET   0x14
#define AXI_IRQ_CTRL_REG_IRQ_PEND_CLR   0x18
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG(n)  (0x80 + (n) * 4)

#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST(n)             (((n) & 0x3F) << 0)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(n)    AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST((n) + 0)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_CPU(n)         AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST((n) + 32)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_EN                  BIT(8)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DIS                 BIT(9)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_SET                 BIT(10)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_CLR                 BIT(11)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_EN_STAT             BIT(16)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_PEND                BIT(17)

enum axi_irq_ctrl_irq_num
{
    AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_RX = 0,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_TX = 1,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_AD9361_GPS_PPS = 2,

    AXI_IRQ_CTRL_IRQ_NUM_AXI_IIC0 = 4,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_QUAD_SPI0 = 5,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_PCIE0 = 6,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_RX = 7,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_TX = 8,

    AXI_IRQ_CTRL_IRQ_NUM_AXI_XADC_WIZ = 10,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_QUAD_SPI1 = 11,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_IIC1 = 12,
    AXI_IRQ_CTRL_IRQ_NUM_AXI_QUAD_SPI2 = 13,

    AXI_IRQ_CTRL_IRQ_NUM_MAX = 16,
};

typedef void (* axi_irq_ctrl_isr_t)(void *);
typedef struct axi_irq_ctrl_isr_info_t axi_irq_ctrl_isr_info_t;

struct axi_irq_ctrl_isr_info_t
{
    axi_irq_ctrl_isr_t pISR;
    void *pArg;
};

extern void *pAXIIRQCtrlBase;

uint8_t axi_irq_ctrl_init(int iDeviceFile);

uint32_t axi_irq_ctrl_get_core_version();

uint8_t axi_irq_ctrl_irq_config(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubDest, uint8_t ubEnable);
uint8_t axi_irq_ctrl_irq_set_isr(enum axi_irq_ctrl_irq_num eIRQNum, axi_irq_ctrl_isr_t pISR, void *pArg);
uint8_t axi_irq_ctrl_irq_get_pend(enum axi_irq_ctrl_irq_num eIRQNum);
uint8_t axi_irq_ctrl_irq_set_pend(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubPend);
uint8_t axi_irq_ctrl_irq_get_enable(enum axi_irq_ctrl_irq_num eIRQNum);
uint8_t axi_irq_ctrl_irq_set_enable(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubPend);

#endif // __AXI_IRQ_CTRL_H__