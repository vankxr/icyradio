#ifndef __SYSCTRL_H__
#define __SYSCTRL_H__

#include <sam.h>
#include "gclk.h"

extern uint32_t SYSCTRL_XOSC_CLOCK_FREQ;
extern uint32_t SYSCTRL_OSC8M_CLOCK_FREQ;
extern uint32_t SYSCTRL_DFLL48M_CLOCK_FREQ;

void sysctrl_init();
void sysctrl_update_clocks();

void sysctrl_osc8m_config(uint8_t ubEnable, uint8_t ubPresc);
void sysctrl_dfll48m_config(uint8_t ubEnable, uint8_t ubClosedLoop, uint16_t usMult, uint8_t ubCoarse, uint16_t usFine, uint8_t ubCoarseStep, uint16_t usFineStep);

#endif // __SYSCTRL_H__