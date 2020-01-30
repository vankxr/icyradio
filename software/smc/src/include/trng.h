#ifndef __TRNG_H__
#define __TRNG_H__

#include <em_device.h>
#include "cmu.h"

void trng_init();
uint32_t trng_pop_random();

#endif  // __TRNG_H__
