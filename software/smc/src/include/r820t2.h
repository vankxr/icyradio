#ifndef __R820T2_H__
#define __R820T2_H__

#include <em_device.h>
#include <stdlib.h>
#include "systick.h"
#include "utils.h"
#include "atomic.h"
#include "gpio.h"
#include "i2c.h"

#define R820T2_I2C_ADDR 0x1A

#define R820T2_REF_FREQ         (PERI_REG_BIT(&(GPIO->P[3].DOUT), 15) ? 16000000 : 28800000)
#define R820T2_VCO_POWER_REF    2
#define R820T2_VCO_MIN          1770000000ULL
#define R820T2_VCO_MAX          3900000000ULL

typedef struct r820t2_freq_range_t r820t2_freq_range_t;

struct r820t2_freq_range_t
{
    uint16_t usFrequency;
    uint8_t ubOpenDrain;
    uint8_t ubRFMuxFilter;
    uint8_t ubTrackingFilter;
};

extern uint32_t R820T2_FREQ;
extern uint32_t R820T2_IF_FREQ;

uint8_t r820t2_init();

uint8_t r820t2_calibrate();

uint8_t r820t2_set_tf_freq(uint32_t ulFrequency);
uint8_t r820t2_set_pll_freq(uint32_t ulFrequency);
void r820t2_set_if_freq(uint32_t ulFrequency);
uint8_t r820t2_set_freq(uint32_t ulFrequency);

void r820t2_set_if_bandwidth(uint8_t ubBPFCoarse, uint8_t ubBPFFine, uint8_t ubHPFFine);

void r820t2_set_lna_gain(float fGain, uint8_t ubAGCEnabled);
float r820t2_get_lna_gain();
void r820t2_set_mixer_gain(float fGain, uint8_t ubAGCEnabled);
float r820t2_get_mixer_gain();
void r820t2_set_vga_gain(float fGain);
float r820t2_get_vna_gain();

#endif // __R820T2_H__