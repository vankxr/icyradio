#ifndef __DBG_H__
#define __DBG_H__

#include <sam.h>
#include "pmc.h"
#include "utils.h"

#define DEBUG_ENABLED() !!(CoreDebug->DHCSR & CoreDebug_DHCSR_C_DEBUGEN_Msk)

void dbg_init();
void dbg_swo_config(uint32_t ulChannelMask, uint32_t ulFrequency);
void dbg_swo_putc(char c, uint8_t ubChannel);
void dbg_swo_send_uint8(uint8_t ubData, uint8_t ubChannel);
void dbg_swo_send_uint16(uint16_t usData, uint8_t ubChannel);
void dbg_swo_send_uint32(uint32_t ulData, uint8_t ubChannel);

#endif  // __DBG_H__
