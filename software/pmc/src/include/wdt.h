#ifndef __WDT_H__
#define __WDT_H__

#include <sam.h>
#include <stddef.h>
#include "pm.h"
#include "gclk.h"
#include "nvic.h"

typedef void (* wdt_warning_isr_t)();

void wdt_init(uint8_t ubTimeoutCycles, uint8_t ubWarningCycles);
void wdt_enable();
void wdt_disable();
void wdt_set_warning_isr(wdt_warning_isr_t pfISR);
float wdt_get_timeout_period();
float wdt_get_warning_period();
void wdt_feed();

#endif // __WDT_H__