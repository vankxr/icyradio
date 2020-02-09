#ifndef __WDT_H__
#define __WDT_H__

#include <sam.h>
#include "pmc.h"

void wdt_init(uint16_t usTimeout);
void wdt_feed();

#endif
