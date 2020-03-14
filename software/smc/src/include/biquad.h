#ifndef __BIQUAD_H__
#define __BIQUAD_H__

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#define BIQUAD_TYPE_LOWPASS     0
#define BIQUAD_TYPE_HIGHPASS    1
#define BIQUAD_TYPE_BANDPASS    2
#define BIQUAD_TYPE_PEAK        3
#define BIQUAD_TYPE_NOTCH       4
#define BIQUAD_TYPE_LOWSHELF    5
#define BIQUAD_TYPE_HIGHSHELF   6

typedef struct biquad_t biquad_t;

struct biquad_t
{
    uint8_t ubType;
    uint32_t ulSampleFreq;
    uint32_t ulCutoffFreq;
    float fB0;
    float fB1;
    float fB2;
    float fA1;
    float fA2;
};

biquad_t* biquad_init(uint8_t ubType, uint32_t ulSampleFreq, uint32_t ulCutoffFreq);
void biquad_delete(biquad_t *pFilter);
void biquad_calc_coefs(biquad_t *pFilter, float fQFactor, float fGain);
float biquad_get_gain(biquad_t *pFilter, uint32_t ulFrequency);

#endif  // __BIQUAD_H__
