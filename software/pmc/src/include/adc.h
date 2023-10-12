#ifndef __ADC_H__
#define __ADC_H__

#include <sam.h>
#include "pm.h"

#define ADC_VBUS_VSENSE_DIV     (5.1f / (100.f + 5.1f)) // Voltage divider ratio
#define ADC_VIN_VSENSE_DIV      (5.1f / (100.f + 5.1f)) // Voltage divider ratio
#define ADC_12V0_VSENSE_DIV     (5.1f / (100.f + 5.1f)) // Voltage divider ratio
#define ADC_VEXT_VSENSE_DIV     (5.1f / (100.f + 5.1f)) // Voltage divider ratio

#define ADC_VBUS_VSENSE_CHAN    0 // PA02
#define ADC_VIN_VSENSE_CHAN     1 // PA03
#define ADC_12V0_VSENSE_CHAN    4 // PA04
#define ADC_VEXT_VSENSE_CHAN    5 // PA05

void adc_init();

float adc_get_iovdd();
float adc_get_corevdd();
float adc_get_vbus();
float adc_get_vin();
float adc_get_12v0();
float adc_get_vext();

float adc_get_temperature();

#endif // __ADC_H__