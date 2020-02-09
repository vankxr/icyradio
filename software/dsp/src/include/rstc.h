#ifndef __RSTC_H__
#define __RSTC_H__

#include <sam.h>

void rstc_init(uint8_t ubUserResetEnable, uint8_t ubUserResetIntEnable, uint8_t ubUserResetLength);

uint8_t rstc_get_reset_reason();

void rstc_reset_system(uint8_t ubExternal) __attribute__((noreturn));

#endif // __RSTC_H__
