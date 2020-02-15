#ifndef __DSP_H__
#define __DSP_H__

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include "iq16.h"

typedef struct dsp_am_demod_ctx_t dsp_am_demod_ctx_t;
typedef struct dsp_fm_demod_ctx_t dsp_fm_demod_ctx_t;

struct dsp_am_demod_ctx_t
{

};
struct dsp_fm_demod_ctx_t
{
    iq16_t xPrevSample;
};

// Angles
#define INT16_PI     INT16_MAX

uint16_t dsp_abs_int16(int16_t sValue);
int16_t dsp_atan2_int16(int16_t sX, int16_t sY);

dsp_am_demod_ctx_t* dsp_am_demod_init();
void dsp_am_demod_delete(dsp_am_demod_ctx_t *pContext);
int16_t dsp_am_demod(dsp_am_demod_ctx_t *pContext, iq16_t xSample);

dsp_fm_demod_ctx_t* dsp_fm_demod_init();
void dsp_fm_demod_delete(dsp_fm_demod_ctx_t *pContext);
int16_t dsp_fm_demod(dsp_fm_demod_ctx_t *pContext, iq16_t xSample);

#endif  // __DSP_H__