#ifndef __SYSTICK_H__
#define __SYSTICK_H__

#include <em_device.h>
#include "atomic.h"
#include "cmu.h"

extern volatile uint64_t g_ullSystemTick;

void systick_init();
void delay_ms(uint64_t ullTicks);

#endif  // __SYSTICK_H__
