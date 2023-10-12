#ifndef __PM_H__
#define __PM_H__

#include <sam.h>
#include "sysctrl.h"
#include "gclk.h"
#include "utils.h"

extern uint32_t PM_MAIN_CLOCK_FREQ;
extern uint32_t PM_CPU_CLOCK_FREQ;
extern uint32_t PM_AHB_CLOCK_FREQ;
extern uint32_t PM_APBA_CLOCK_FREQ;
extern uint32_t PM_APBB_CLOCK_FREQ;
extern uint32_t PM_APBC_CLOCK_FREQ;

void pm_init();
void pm_update_clocks();

uint8_t pm_get_reset_reason();

void pm_cpu_ahb_clock_config(uint8_t ubPrescaler);
void pm_apba_clock_config(uint8_t ubPrescaler);
void pm_apbb_clock_config(uint8_t ubPrescaler);
void pm_apbc_clock_config(uint8_t ubPrescaler);

void pm_ahb_clock_gate(uint32_t ulMask, uint8_t ubEnable);
void pm_apba_clock_gate(uint32_t ulMask, uint8_t ubEnable);
void pm_apbb_clock_gate(uint32_t ulMask, uint8_t ubEnable);
void pm_apbc_clock_gate(uint32_t ulMask, uint8_t ubEnable);

#endif // __PM_H__