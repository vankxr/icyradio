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
#define AXI_I2S_REG_CTRL_I2S_PAUSE          BIT(2)
#define AXI_I2S_REG_CTRL_I2S_PAUSED         BIT(3)
#define AXI_I2S_REG_CTRL_I2S_LB_EN          BIT(4)
#define AXI_I2S_REG_CTRL_I2S_CHAN_EN(n)     BIT((n) + 8)
#define AXI_I2S_REG_CTRL_I2S_CHAN_MAX(n)    (((n) & 0x07) << 16)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ    BIT(20)

enum axi_i2s_chan_bit_sz
{
    AXI_I2S_CHAN_BIT_SZ_16 = 0,
    AXI_I2S_CHAN_BIT_SZ_24 = 1, // 24-bit samples are packed into 32-bit words, padded with 8 zeros
    AXI_I2S_CHAN_BIT_SZ_32 = 1,
};

extern void *pAXII2SBase;

uint8_t axi_i2s_init();

uint32_t axi_i2s_get_core_version();

uint8_t axi_i2s_clk_div_config(uint32_t ulMCLKDiv, uint32_t ulBCLKDiv, uint32_t ulLRCLKDiv);
uint8_t axi_i2s_clk_config(uint32_t ulInputFreq, uint32_t ulMCLKFreq, uint32_t ulBCLKFreq, uint32_t ulLRCLKFreq);
uint8_t axi_i2s_clk_auto_config(uint32_t ulInputFreq, uint32_t ulMCLKFreq, uint32_t ulSampRate, uint32_t *pulBCLKFreq);

uint8_t axi_i2s_clk_enable(uint8_t ubEnable);
uint8_t axi_i2s_clk_enabled();
uint8_t axi_i2s_enable(uint8_t ubEnable);
uint8_t axi_i2s_enabled();
uint8_t axi_i2s_pause(uint8_t ubPause);
uint8_t axi_i2s_paused();
uint8_t axi_i2s_loopback_enable(uint8_t ubEnable);
uint8_t axi_i2s_loopback_enabled();

uint8_t axi_i2s_set_num_chans(uint8_t ubNumChans);
uint8_t axi_i2s_get_num_chans();

uint8_t axi_i2s_chan_enable(uint8_t ubChan, uint8_t ubEnable);
uint8_t axi_i2s_chan_enabled(uint8_t ubChan);

uint8_t axi_i2s_set_sample_size(enum axi_i2s_chan_bit_sz eBitSz);
enum axi_i2s_chan_bit_sz axi_i2s_get_sample_size();

#endif // __AXI_I2S_H__