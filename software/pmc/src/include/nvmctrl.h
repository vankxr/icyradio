#ifndef __NVMCTRL_H__
#define __NVMCTRL_H__

#include <sam.h>

void nvmctrl_init();

void nvmctrl_config_waitstates(uint32_t ulFrequency, float fVoltage);

uint32_t nvmctrl_get_flash_size();

void nvmctrl_get_unique_id(uint32_t *pulID);

#endif // __NVMCTRL_H__