#ifndef __ADC_H__
#define __ADC_H__

#include <em_device.h>
#include "cmu.h"

#define ADC_TXMIXER_TEMP_CHAN       ADC_SINGLECTRL_POSSEL_APORT0XCH6

void adc_init();

float adc_get_avdd();
float adc_get_dvdd();
float adc_get_iovdd();
float adc_get_corevdd();

float adc_get_tx_mixer_temperature();

float adc_get_temperature();

#endif  // __ADC_H__
