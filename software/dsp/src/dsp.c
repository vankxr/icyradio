#include "dsp.h"

uint16_t dsp_abs_int16(int16_t sValue)
{
    uint16_t usSign = sValue >> 15;     // make a mask of the sign bit

    sValue ^= usSign;                   // toggle the bits if value is negative
    sValue += usSign & 1;               // add one if value was negative

    return sValue;
}
int16_t dsp_atan2_int16(int16_t sX, int16_t sY)
{
    uint16_t usAbsX = dsp_abs_int16(sX);
    uint16_t usAbsY = dsp_abs_int16(sY);

    if(usAbsX > INT16_MAX)
        usAbsX = INT16_MAX;

    if(usAbsY > INT16_MAX)
        usAbsY = INT16_MAX;

    int32_t lDenominator = usAbsY + usAbsX;

    if(lDenominator == 0)
        return 0; // avoid DBZ

    int32_t lNumerator = (int32_t)(INT16_PI / 4) * (int32_t)(usAbsY - usAbsX);
    int16_t sTheta = ((lNumerator * 8) / lDenominator) / 8;

    if(sY >= 0)
    {
        if(sX >= 0)
            return (INT16_PI * 1 / 4) + sTheta; // quadrant I    Theta counts 'towards the y axis',
        else
            return (INT16_PI * 3 / 4) - sTheta; // quadrant II   So, negate it in quadrants II and IV
    }
    else
    {
        if(sX < 0)
            return (INT16_PI * -3 / 4) + sTheta; // quadrant III. -3pi/ = 5/8
        else
            return (INT16_PI * -1 / 4) - sTheta; // quadrant IV.  -1/8 = 7/8
    }
}

dsp_oscillator_t* dsp_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy, uint32_t ulLUTSize)
{
    dsp_oscillator_t *pOscillator = (dsp_oscillator_t *)malloc(sizeof(dsp_oscillator_t));

    if(!pOscillator)
        return NULL;

    memset(pOscillator, 0, sizeof(dsp_oscillator_t));

    int32_t lSteps = (int32_t)ulSampleRate / lFreqneucy;

    pOscillator->ulSteps = abs(lSteps);
    pOscillator->ulLUTSize = ulLUTSize >= pOscillator->ulSteps ? ulLUTSize : pOscillator->ulSteps;
    pOscillator->ulCurrentPhase = 0;

    pOscillator->psData = (int16_t *)malloc(sizeof(int16_t) * pOscillator->ulLUTSize);

    if(!pOscillator->psData)
    {
        free(pOscillator);

        return NULL;
    }

    for (uint32_t t = 0; t < pOscillator->ulLUTSize; t++)
        pOscillator->psData[t] = INT16_MAX * cos(2 * M_PI * (float)t / lSteps);

    return pOscillator;
}
void dsp_oscillator_delete(dsp_oscillator_t *pOscillator)
{
    if(!pOscillator)
        return;

    if(pOscillator->psData)
        free(pOscillator->psData);

    free(pOscillator);
}
int16_t dsp_oscillator_get_sample(dsp_oscillator_t *pOscillator, int32_t lPhaseOffset)
{
    int16_t sResult = 0;

    if(!pOscillator)
        return sResult;

    if(!pOscillator->psData)
        return sResult;

    sResult = pOscillator->psData[(pOscillator->ulCurrentPhase++ + lPhaseOffset) % pOscillator->ulSteps];

    pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

    return sResult;
}
void dsp_oscillator_mix(dsp_oscillator_t *pOscillator, int16_t *psInput, int16_t *psOutput)
{
    if(!pOscillator)
        return;

    int16_t *psDataOutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psDataOutput)
    {
        psDataOutput = (int16_t *)malloc(pOscillator->ulLUTSize * sizeof(int16_t));

        if(!psDataOutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_mult_q15(psInput, pOscillator->psData, psDataOutput, pOscillator->ulLUTSize);

    if(ubOutputAllocated)
    {
        memcpy(psInput, psDataOutput, pOscillator->ulLUTSize * sizeof(int16_t));

        free(psDataOutput);
    }
}

dsp_quad_oscillator_t* dsp_quad_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy, uint32_t ulLUTSize)
{
    dsp_quad_oscillator_t *pOscillator = (dsp_quad_oscillator_t *)malloc(sizeof(dsp_quad_oscillator_t));

    if(!pOscillator)
        return NULL;

    memset(pOscillator, 0, sizeof(dsp_quad_oscillator_t));

    int32_t lSteps = (int32_t)ulSampleRate / lFreqneucy;

    pOscillator->ulSteps = abs(lSteps);
    pOscillator->ulLUTSize = ulLUTSize >= pOscillator->ulSteps ? ulLUTSize : pOscillator->ulSteps;
    pOscillator->ulCurrentPhase = 0;

    pOscillator->pData = (iq16_t *)malloc(sizeof(iq16_t) * pOscillator->ulLUTSize);

    if(!pOscillator->pData)
    {
        free(pOscillator);

        return NULL;
    }

    for (uint32_t t = 0; t < pOscillator->ulLUTSize; t++)
    {
        pOscillator->pData[t].i = INT16_MAX * cos(2 * M_PI * (float)t / lSteps);
        pOscillator->pData[t].q = INT16_MAX * sin(2 * M_PI * (float)t / lSteps);
    }

    return pOscillator;
}
void dsp_quad_oscillator_delete(dsp_quad_oscillator_t *pOscillator)
{
    if(!pOscillator)
        return;

    if(pOscillator->pData)
        free(pOscillator->pData);

    free(pOscillator);
}
iq16_t dsp_quad_oscillator_get_sample(dsp_quad_oscillator_t *pOscillator, int32_t lPhaseOffset)
{
    iq16_t xResult = {0, 0};

    if(!pOscillator)
        return xResult;

    if(!pOscillator->pData)
        return xResult;

    xResult = pOscillator->pData[(pOscillator->ulCurrentPhase++ + lPhaseOffset) % pOscillator->ulSteps];

    pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

    return xResult;
}
void dsp_quad_oscillator_mix(dsp_quad_oscillator_t *pOscillator, iq16_t *pInput, iq16_t *pOutput)
{
    if(!pOscillator)
        return;

    iq16_t *pDataOutput = pOutput;
    uint8_t ubOutputAllocated = 0;

    if(!pDataOutput)
    {
        pDataOutput = (iq16_t *)malloc(pOscillator->ulLUTSize * sizeof(iq16_t));

        if(!pDataOutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_cmplx_mult_cmplx_q15((int16_t *)pInput, (int16_t *)pOscillator->pData, (int16_t *)pDataOutput, pOscillator->ulLUTSize);

    if(ubOutputAllocated)
    {
        memcpy(pInput, pDataOutput, pOscillator->ulLUTSize * sizeof(iq16_t));

        free(pDataOutput);
    }
}

dsp_fm_demod_ctx_t* dsp_fm_demod_init()
{
    dsp_fm_demod_ctx_t *pNewContext = (dsp_fm_demod_ctx_t *)malloc(sizeof(dsp_fm_demod_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(dsp_fm_demod_ctx_t));

    return pNewContext;
}
void dsp_fm_demod_delete(dsp_fm_demod_ctx_t *pContext)
{
    if(!pContext)
        return;

    free(pContext);
}
int16_t dsp_fm_demod(dsp_fm_demod_ctx_t *pContext, iq16_t xSample)
{
    if(!pContext)
        return 0;

    iq16_t xDiff = IQ16_PRODUCT(xSample, IQ16_CONJUGATE(pContext->xPrevSample));

    pContext->xPrevSample = xSample;

    return dsp_atan2_int16(xDiff.i, xDiff.q);
}