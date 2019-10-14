#ifndef __EMU_H__
#define __EMU_H__

#include <em_device.h>
#include <math.h>
#include "utils.h"
#include "nvic.h"

extern uint8_t g_ubAVDDLow;
extern uint8_t g_ubAltAVDDLow;
extern uint8_t g_ubDVDDLow;
extern uint8_t g_ubIOVDDLow;

void emu_init(uint8_t ubImmediateSwitch);
void emu_dcdc_init(float fTargetVoltage, float fMaxLNCurrent, float fMaxLPCurrent, float fMaxReverseCurrent);

float emu_get_temperature();

void emu_vmon_avdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh, float fHighThresh, float *pfHighThresh);
void emu_vmon_altavdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh);
void emu_vmon_dvdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh);
void emu_vmon_iovdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh);

#endif  // __EMU_H__
