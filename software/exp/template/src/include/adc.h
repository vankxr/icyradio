#ifndef __ADC_H__
#define __ADC_H__

#include <sam.h>
#include "pm.h"

void adc_init();

float adc_get_iovdd();
float adc_get_corevdd();

float adc_get_temperature();

#endif // __ADC_H__