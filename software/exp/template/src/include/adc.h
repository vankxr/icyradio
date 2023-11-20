#ifndef __ADC_H__
#define __ADC_H__

#include <sam.h>
#include "pm.h"

void adc_init();

uint32_t adc_get_iovdd();
float adc_getf_iovdd();
uint32_t adc_get_corevdd();
float adc_getf_corevdd();

uint32_t adc_get_temperature();
float adc_getf_temperature();

#endif // __ADC_H__