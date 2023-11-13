#ifndef __GCLK_H__
#define __GCLK_H__

#include <sam.h>
#include "sysctrl.h"
#include "atomic.h"
#include "utils.h"

#define GCLK_NUM_GCLKS 0x25

extern uint32_t GCLK_IN_CLOCK_FREQ[8];
extern uint32_t GCLK_GEN_CLOCK_FREQ[8];
extern uint32_t GCLK_CLOCK_FREQ[GCLK_NUM_GCLKS];

void gclk_init();
void gclk_update_clocks();

void gclk_gen_config(uint8_t ubID, uint8_t ubEnable, uint32_t ulConfig, uint8_t ubSource, uint32_t ulDivider);
void gclk_clk_config(uint8_t ubID, uint8_t ubEnable, uint8_t ubSource);


#endif // __GCLK_H__