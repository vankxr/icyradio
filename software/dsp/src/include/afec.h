#ifndef __AFEC_H__
#define __AFEC_H__

#include <sam.h>
#include "pmc.h"
#include "nvic.h"
#include "utils.h"

#define AFEC_TEMP_SENSOR_CHANNEL    11

#define AFEC_REF_VOLTAGE    3300 // mV

#define AFEC_TEMP_SENSOR_OFFSET             0    // mV
#define AFEC_TEMP_SENSOR_SLOPE              2.33 // mV
#define AFEC_TEMP_SENSOR_INTERCEPT_VOLTAGE  720  // mV
#define AFEC_TEMP_SENSOR_INTERCEPT_TEMP     27   // C

extern volatile float g_fInternalTemperature;

void afec_init();
void afec_trigger_timer_init(uint32_t ulPeriod);

#endif  // __AFEC_H__
