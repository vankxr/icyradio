#include "dsp.h"

uint16_t dsp_abs_int16(int16_t sValue)
{
    uint16_t usSign = sValue >> 15;     // make a mask of the sign bit

    sValue ^= usSign;                   // toggle the bits if value is negative
    sValue += usSign & 1;               // add one if value was negative

    return sValue;
}
uint8_t dsp_log2_int16(int16_t sValue)
{
    if(sValue <= 1)
        return 0;
    else if(sValue <= 2)
        return 1;
    else if(sValue <= 4)
        return 2;
    else if(sValue <= 8)
        return 3;
    else if(sValue <= 16)
        return 4;
    else if(sValue <= 32)
        return 5;
    else if(sValue <= 64)
        return 6;
    else if(sValue <= 128)
        return 7;
    else if(sValue <= 256)
        return 8;
    else if(sValue <= 512)
        return 9;
    else if(sValue <= 1024)
        return 10;
    else if(sValue <= 2048)
        return 11;
    else if(sValue <= 4096)
        return 12;
    else if(sValue <= 8192)
        return 13;
    else if(sValue <= 16284)
        return 14;
    else if(sValue <= 32768)
        return 15;

    return 0;
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

dsp_agc_t* dsp_agc_init(float fStartGain, float fMinGain, float fMaxGain, float fAttack, float fRelease, float fTargetPeak, float fLimitPeak, uint32_t ulChunkSize)
{
    if(!fMaxGain)
        return NULL;

    if(fMinGain >= fMaxGain)
        return NULL;

    if(fStartGain > fMaxGain)
        return NULL;

    if(fStartGain < fMinGain)
        return NULL;

    if(!fAttack || !fRelease)
        return NULL;

    if(!fTargetPeak || !fLimitPeak)
        return NULL;

    if(!ulChunkSize)
        return NULL;

    dsp_agc_t *pAGC = (dsp_agc_t *)malloc(sizeof(dsp_agc_t));

    if(!pAGC)
        return NULL;

    pAGC->fGain = fStartGain;
    pAGC->fMinGain = fMinGain;
    pAGC->fMaxGain = fMaxGain;
    pAGC->fAttack = fAttack;
    pAGC->fRelease = fRelease;
    pAGC->sTargetPeak = fTargetPeak * INT16_MAX;
    pAGC->sLimitPeak = fLimitPeak * INT16_MAX;
    pAGC->ulChunkSize = ulChunkSize;

    return pAGC;
}
void dsp_agc_process(dsp_agc_t *pAGC, int16_t *psInput, int16_t *psOutput, uint32_t ulSize)
{
    if(!pAGC)
        return;

    if(!psInput)
        return;

    if(!ulSize)
        return;

    if(ulSize % pAGC->ulChunkSize)
        return;

    int16_t *psDataOutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psDataOutput)
    {
        psDataOutput = (int16_t *)malloc(ulSize * sizeof(int16_t));

        if(!psDataOutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_abs_q15(psInput, psDataOutput, ulSize);

    for(uint32_t i = 0; i < ulSize; i += pAGC->ulChunkSize)
    {
        int16_t sPeak;
        uint32_t ulPeakPosition;

        arm_max_q15(&psDataOutput[i], pAGC->ulChunkSize, &sPeak, &ulPeakPosition);

        float fCurrentGain = pAGC->fGain;
        float fLimitGain = (float)pAGC->sLimitPeak / (float)sPeak;

        if(fCurrentGain > fLimitGain)
            fCurrentGain = fLimitGain;

        int8_t bCurrentGainShift = dsp_log2_int16(fCurrentGain) + 1;
        int16_t sCurrentGainFract = (int32_t)(fCurrentGain * INT16_MAX) >> bCurrentGainShift;

        arm_scale_q15(&psInput[i], sCurrentGainFract, bCurrentGainShift, &psDataOutput[i], pAGC->ulChunkSize);

        sPeak *= fCurrentGain;

        if(sPeak < pAGC->sTargetPeak)
            pAGC->fGain += pAGC->fAttack;
        if(sPeak > pAGC->sTargetPeak)
            pAGC->fGain -= pAGC->fRelease;

        if(pAGC->fGain > pAGC->fMaxGain)
            pAGC->fGain = pAGC->fMaxGain;
        if(pAGC->fGain < pAGC->fMinGain)
            pAGC->fGain = pAGC->fMinGain;
    }

    if(ubOutputAllocated)
    {
        arm_copy_q15(psDataOutput, psInput, ulSize);

        free(psDataOutput);
    }
}
void dsp_agc_delete(dsp_agc_t *pAGC)
{
    if(!pAGC)
        return;

    free(pAGC);
}

dsp_oscillator_t* dsp_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy)
{
    dsp_oscillator_t *pOscillator = (dsp_oscillator_t *)malloc(sizeof(dsp_oscillator_t));

    if(!pOscillator)
        return NULL;

    memset(pOscillator, 0, sizeof(dsp_oscillator_t));

    int32_t lSteps = (int32_t)ulSampleRate / lFreqneucy;

    pOscillator->ulSteps = abs(lSteps);
    pOscillator->ulCurrentPhase = 0;

    pOscillator->psData = (int16_t *)malloc(sizeof(int16_t) * pOscillator->ulSteps);

    if(!pOscillator->psData)
    {
        free(pOscillator);

        return NULL;
    }

    for (uint32_t t = 0; t < pOscillator->ulSteps; t++)
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
void dsp_oscillator_mix(dsp_oscillator_t *pOscillator, int16_t *psInput, int16_t *psOutput, uint32_t ulSize, int32_t lPhaseOffset)
{
    if(!pOscillator)
        return;

    if(!psInput)
        return;

    if(!ulSize)
        return;

    int16_t *psDataOutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psDataOutput)
    {
        psDataOutput = (int16_t *)malloc(ulSize * sizeof(int16_t));

        if(!psDataOutput)
            return;

        ubOutputAllocated = 1;
    }

    pOscillator->ulCurrentPhase += lPhaseOffset;
    pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

    uint32_t ulSampleIndex = 0;

    while(ulSampleIndex < ulSize)
    {
        uint32_t ulBlockSize = pOscillator->ulSteps - pOscillator->ulCurrentPhase;

        if(ulBlockSize > ulSize)
            ulBlockSize = ulSize;

        arm_mult_q15(&psInput[ulSampleIndex], &pOscillator->psData[pOscillator->ulCurrentPhase], &psDataOutput[ulSampleIndex], ulBlockSize);

        pOscillator->ulCurrentPhase += ulBlockSize;
        pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

        ulSampleIndex += ulBlockSize;
    }

    if(ubOutputAllocated)
    {
        arm_copy_q15(psDataOutput, psInput, ulSize);

        free(psDataOutput);
    }
}

dsp_quad_oscillator_t* dsp_quad_oscillator_init(uint32_t ulSampleRate, int32_t lFreqneucy)
{
    dsp_quad_oscillator_t *pOscillator = (dsp_quad_oscillator_t *)malloc(sizeof(dsp_quad_oscillator_t));

    if(!pOscillator)
        return NULL;

    memset(pOscillator, 0, sizeof(dsp_quad_oscillator_t));

    int32_t lSteps = (int32_t)ulSampleRate / lFreqneucy;

    pOscillator->ulSteps = abs(lSteps);
    pOscillator->ulCurrentPhase = 0;

    pOscillator->pData = (iq16_t *)malloc(sizeof(iq16_t) * pOscillator->ulSteps);

    if(!pOscillator->pData)
    {
        free(pOscillator);

        return NULL;
    }

    for (uint32_t t = 0; t < pOscillator->ulSteps; t++)
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
void dsp_quad_oscillator_mix(dsp_quad_oscillator_t *pOscillator, iq16_t *pInput, iq16_t *pOutput, uint32_t ulSize, int32_t lPhaseOffset)
{
    if(!pOscillator)
        return;

    if(!pInput)
        return;

    if(!ulSize)
        return;

    iq16_t *pDataOutput = pOutput;
    uint8_t ubOutputAllocated = 0;

    if(!pDataOutput)
    {
        pDataOutput = (iq16_t *)malloc(ulSize * sizeof(iq16_t));

        if(!pDataOutput)
            return;

        ubOutputAllocated = 1;
    }

    pOscillator->ulCurrentPhase += lPhaseOffset;
    pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

    uint32_t ulSampleIndex = 0;

    while(ulSampleIndex < ulSize)
    {
        uint32_t ulBlockSize = pOscillator->ulSteps - pOscillator->ulCurrentPhase;

        if(ulBlockSize > ulSize)
            ulBlockSize = ulSize;

        arm_cmplx_mult_cmplx_q15((int16_t *)&pInput[ulSampleIndex], (int16_t *)&pOscillator->pData[pOscillator->ulCurrentPhase], (int16_t *)&pDataOutput[ulSampleIndex], ulBlockSize);

        pOscillator->ulCurrentPhase += ulBlockSize;
        pOscillator->ulCurrentPhase %= pOscillator->ulSteps;

        ulSampleIndex += ulBlockSize;
    }

    if(ubOutputAllocated)
    {
        arm_copy_q15((int16_t *)pDataOutput, (int16_t *)pInput, ulSize * sizeof(iq16_t) / sizeof(int16_t));

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