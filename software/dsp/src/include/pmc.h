#ifndef __PMC_H__
#define __PMC_H__

#include <sam.h>
#include "utils.h"
#include "eefc.h"

extern uint32_t MAINXO_OSC_FREQ;
extern uint32_t MAINRCO_OSC_FREQ;
extern uint32_t SLOWXO_OSC_FREQ;
extern uint32_t SLOWRCO_OSC_FREQ;

extern uint32_t MAINCK_CLOCK_FREQ;
extern uint32_t SLCK_CLOCK_FREQ;
extern uint32_t PLLACK_CLOCK_FREQ;
extern uint32_t UPLLCK_CLOCK_FREQ;
extern uint32_t MCK_CLOCK_FREQ;
extern uint32_t FCLK_CLOCK_FREQ;

#define PMC_PCK_PCK0    0
#define PMC_PCK_PCK1    1
#define PMC_PCK_PCK2    2
#define PMC_PCK_ETM     3
#define PMC_PCK_UART    4
#define PMC_PCK_MCAN    5
#define PMC_PCK_TC      6
#define PMC_PCK_TC0     7

void pmc_init();
void pmc_update_clocks();

void pmc_plla_config(uint8_t ubEnable, uint8_t ubMultiplier, uint8_t ubDivider);

void pmc_usb_clock_config(uint8_t ubUPLLEnable, uint8_t ubUPLLClockDivider, uint8_t ubFSClockEnable, uint32_t ulFSClockSource, uint16_t usFSClockPrescaler);

void pmc_pck_clock_config(uint8_t ubID, uint8_t ubEnable, uint32_t ulSource, uint16_t usPrescaler);
uint32_t pmc_pck_clock_get_freq(uint8_t ubID);

void pmc_generic_clock_config(uint8_t ubID, uint8_t ubEnable, uint32_t ulSource, uint16_t usPrescaler);
uint32_t pmc_generic_clock_get_freq(uint8_t ubID);

void pmc_peripheral_clock_gate(uint8_t ubID, uint8_t ubEnable);

#endif  // __PMC_H__
