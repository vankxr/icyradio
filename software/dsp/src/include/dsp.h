#ifndef __DSP_H__
#define __DSP_H__

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include "arm_math.h"
#include "iq16.h"

typedef struct dsp_agc_t dsp_agc_t;
typedef struct dsp_oscillator_t dsp_oscillator_t;
typedef struct dsp_quad_oscillator_t dsp_quad_oscillator_t;
typedef struct dsp_am_demod_ctx_t dsp_am_demod_ctx_t;
typedef struct dsp_fm_demod_ctx_t dsp_fm_demod_ctx_t;

struct dsp_agc_t
{
    float fGain;
    float fMinGain;
    float fMaxGain;
    float fAttack;
    float fRelease;
    int16_t sTargetPeak;
    int16_t sLimitPeak;
    uint32_t ulChunkSize;
};
struct dsp_oscillator_t
{
    uint32_t ulSteps;
    uint32_t ulCurrentPhase;
    int16_t *psData;
};
struct dsp_quad_oscillator_t
{
    uint32_t ulSteps;
    uint32_t ulCurrentPhase;
    iq16_t *pData;
};
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
uint8_t dsp_log2_int16(int16_t sValue);
int16_t dsp_atan2_int16(int16_t sX, int16_t sY);

dsp_agc_t* dsp_agc_init(float fStartGain, float fMinGain, float fMaxGain, float fAttack, float fRelease, float fTargetPeak, float fLimitPeak, uint32_t ulChunkSize);
void dsp_agc_process(dsp_agc_t *pAGC, int16_t *psInput, int16_t *psOutput, uint32_t ulSize);
void dsp_agc_delete(dsp_agc_t *pAGC);

dsp_oscillator_t* dsp_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy);
void dsp_oscillator_delete(dsp_oscillator_t *pOscillator);
int16_t dsp_oscillator_get_sample(dsp_oscillator_t *pOscillator, int32_t lPhaseOffset);
void dsp_oscillator_mix(dsp_oscillator_t *pOscillator, int16_t *psInput, int16_t *psOutput, uint32_t ulSize, int32_t lPhaseOffset);

dsp_quad_oscillator_t* dsp_quad_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy);
void dsp_quad_oscillator_delete(dsp_quad_oscillator_t *pOscillator);
iq16_t dsp_quad_oscillator_get(dsp_quad_oscillator_t *pOscillator, int32_t lPhaseOffset);
void dsp_quad_oscillator_mix(dsp_quad_oscillator_t *pOscillator, iq16_t *pInput, iq16_t *pOutput, uint32_t ulSize, int32_t lPhaseOffset);

dsp_am_demod_ctx_t* dsp_am_demod_init();
void dsp_am_demod_delete(dsp_am_demod_ctx_t *pContext);
int16_t dsp_am_demod(dsp_am_demod_ctx_t *pContext, iq16_t xSample);

dsp_fm_demod_ctx_t* dsp_fm_demod_init();
void dsp_fm_demod_delete(dsp_fm_demod_ctx_t *pContext);
int16_t dsp_fm_demod(dsp_fm_demod_ctx_t *pContext, iq16_t xSample);

#endif  // __DSP_H__