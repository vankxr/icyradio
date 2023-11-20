#ifndef __ADC_H__
#define __ADC_H__

#include <sam.h>
#include "pm.h"

#define ADC_VBUS_VSENSE_DIV_RT  (100000UL) // Top resistor value
#define ADC_VBUS_VSENSE_DIV_RB  (5100UL) // Bottom resistor value
#define ADC_VBUS_VSENSE_DIV     ((float)ADC_VBUS_VSENSE_DIV_RB / (float)(ADC_VBUS_VSENSE_DIV_RT + ADC_VBUS_VSENSE_DIV_RB))
#define ADC_VIN_VSENSE_DIV_RT   (100000UL) // Top resistor value
#define ADC_VIN_VSENSE_DIV_RB   (5100UL) // Bottom resistor value
#define ADC_VIN_VSENSE_DIV      ((float)ADC_VIN_VSENSE_DIV_RB / (float)(ADC_VIN_VSENSE_DIV_RT + ADC_VIN_VSENSE_DIV_RB))
#define ADC_12V0_VSENSE_DIV_RT  (100000UL) // Top resistor value
#define ADC_12V0_VSENSE_DIV_RB  (5100UL) // Bottom resistor value
#define ADC_12V0_VSENSE_DIV     ((float)ADC_12V0_VSENSE_DIV_RB / (float)(ADC_12V0_VSENSE_DIV_RT + ADC_12V0_VSENSE_DIV_RB))
#define ADC_VEXT_VSENSE_DIV_RT  (100000UL) // Top resistor value
#define ADC_VEXT_VSENSE_DIV_RB  (5100UL) // Bottom resistor value
#define ADC_VEXT_VSENSE_DIV     ((float)ADC_VEXT_VSENSE_DIV_RB / (float)(ADC_VEXT_VSENSE_DIV_RT + ADC_VEXT_VSENSE_DIV_RB))

#define ADC_VBUS_VSENSE_CHAN    0 // PA02
#define ADC_VIN_VSENSE_CHAN     1 // PA03
#define ADC_12V0_VSENSE_CHAN    4 // PA04
#define ADC_VEXT_VSENSE_CHAN    5 // PA05

void adc_init();

uint32_t adc_get_iovdd();
float adc_getf_iovdd();
uint32_t adc_get_corevdd();
float adc_getf_corevdd();
uint32_t adc_get_vbus();
float adc_getf_vbus();
uint32_t adc_get_vin();
float adc_getf_vin();
uint32_t adc_get_12v0();
float adc_getf_12v0();
uint32_t adc_get_vext();
float adc_getf_vext();

uint32_t adc_get_temperature();
float adc_getf_temperature();

#endif // __ADC_H__