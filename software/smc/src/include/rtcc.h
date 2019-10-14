#ifndef __RTCC_H__
#define __RTCC_H__

#include <em_device.h>
#include "utils.h"
#include "cmu.h"

void rtcc_init();
uint32_t rtcc_get_time();
void rtcc_set_time(uint32_t ulTime);
void rtcc_set_alarm(uint32_t ulAlarm);

#endif  // __RTCC_H__
