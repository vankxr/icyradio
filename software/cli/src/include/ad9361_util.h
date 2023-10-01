#ifndef __AD9361_UTIL_H__
#define __AD9361_UTIL_H__

#include <limits.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ad9361.h"
#include "utils.h"
#include "debug_macros.h"

#define CLK_IGNORE_UNUSED     BIT(3)
#define CLK_GET_RATE_NOCACHE  BIT(6)


struct axiadc_state
{
    struct ad9361_rf_phy* phy;
    uint32_t              pcore_version;
};

struct axiadc_chip_info
{
    char* name;
    int32_t     num_channels;
};

struct axiadc_converter
{
    struct axiadc_chip_info* chip_info;
    uint32_t                   scratch_reg[16];
};

uint32_t ad9361_clk_get_rate(struct ad9361_rf_phy* phy, struct refclk_scale* clk_priv);
int32_t ad9361_clk_set_rate(struct ad9361_rf_phy* phy, struct refclk_scale* clk_priv, uint32_t rate);

#endif // __AD9361_UTIL_H__
