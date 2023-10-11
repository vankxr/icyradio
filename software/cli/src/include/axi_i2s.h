#ifndef __AXI_I2S_H__
#define __AXI_I2S_H__

#include <stdint.h>
#include <unistd.h>
#include "axi.h"
#include "axi_gpio.h"
#include "utils.h"
#include "debug_macros.h"

#define AXI_I2S_REG_VERSION     0x00
#define AXI_I2S_REG_CTRL        0x04
#define AXI_I2S_REG_MCLK_DIV    0x08
#define AXI_I2S_REG_BCLK_DIV    0x0C
#define AXI_I2S_REG_LRCLK_DIV   0x10

#define AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN     BIT(0)
#define AXI_I2S_REG_CTRL_I2S_EN             BIT(1)
#define AXI_I2S_REG_CTRL_I2S_CHAN_EN(n)     BIT((n) + 8)
#define AXI_I2S_REG_CTRL_I2S_CHAN_MAX(n)    (((n) & 0x07) << 16)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ    BIT(20)

extern void *pAXII2SBase;

uint8_t axi_i2s_init();

uint32_t axi_i2s_get_core_version();

#endif // __AXI_I2S_H__