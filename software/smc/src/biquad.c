
#include "biquad.h"

static inline void biquad_calc_lowpass(biquad_t *pFilter, float fCos, float fAlpha)
{
    if(!pFilter)
        return;

    float fA0 = 1.f + fAlpha;
    pFilter->fA1 = -2.f * fCos;
    pFilter->fA2 = 1.f - fAlpha;
    pFilter->fB0 = (1.f - fCos) / 2.f;
    pFilter->fB1 = 1.f - fCos;
    pFilter->fB2 = (1.f - fCos) / 2.f;

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_highpass(biquad_t *pFilter, float fCos, float fAlpha)
{
    if(!pFilter)
        return;

    float fA0 = 1.f + fAlpha;
    pFilter->fA1 = -2.f * fCos;
    pFilter->fA2 = 1.f - fAlpha;
    pFilter->fB0 = (1.f + fCos) / 2.f;
    pFilter->fB1 = -(1.f + fCos);
    pFilter->fB2 = (1.f + fCos) / 2.f;

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_bandpass(biquad_t *pFilter, float fCos, float fAlpha)
{
    if(!pFilter)
        return;

    float fA0 = 1.f + fAlpha;
    pFilter->fA1 = -2.f * fCos;
    pFilter->fA2 = 1.f - fAlpha;
    pFilter->fB0 = fAlpha;
    pFilter->fB1 = 0.f;
    pFilter->fB2 = -fAlpha;

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_peak(biquad_t *pFilter, float fGain, float fCos, float fAlpha)
{
    if(!pFilter)
        return;

    float fA0 = 1.f + fAlpha / fGain;
    pFilter->fA1 = -2.f * fCos;
    pFilter->fA2 = 1.f - fAlpha / fGain;
    pFilter->fB0 = 1.f + fAlpha * fGain;
    pFilter->fB1 = -2.f * fCos;
    pFilter->fB2 = 1.f - fAlpha * fGain;

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_notch(biquad_t *pFilter, float fCos, float fAlpha)
{
    if(!pFilter)
        return;

    float fA0 = 1.f + fAlpha;
    pFilter->fA1 = -2.f * fCos;
    pFilter->fA2 = 1.f - fAlpha;
    pFilter->fB0 = 1.f;
    pFilter->fB1 = -2.f * fCos;
    pFilter->fB2 = 1.f;

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_lowshelf(biquad_t *pFilter, float fGain, float fSin, float fCos, float fBeta)
{
    if(!pFilter)
        return;

    float fA0 = (fGain + 1.f) + (fGain - 1.f) * fCos + fBeta * fSin;
    pFilter->fA1 = -2.f * ((fGain - 1.f) + (fGain + 1.f) * fCos);
    pFilter->fA2 = (fGain + 1.f) + (fGain - 1.f) * fCos - fBeta * fSin;
    pFilter->fB0 = fGain * ((fGain + 1.f) - (fGain - 1.f) * fCos + fBeta * fSin);
    pFilter->fB1 = 2.f * fGain * ((fGain - 1.f) - (fGain + 1.f) * fCos);
    pFilter->fB2 = fGain * ((fGain + 1.f) - (fGain - 1.f) * fCos - fBeta * fSin);

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}
static inline void biquad_calc_highshelf(biquad_t *pFilter, float fGain, float fSin, float fCos, float fBeta)
{
    if(!pFilter)
        return;

    float fA0 = (fGain + 1.f) - (fGain - 1.f) * fCos + fBeta * fSin;
    pFilter->fA1 = 2.f * ((fGain - 1.f) - (fGain + 1.f) * fCos);
    pFilter->fA2 = (fGain + 1.f) - (fGain - 1.f) * fCos - fBeta * fSin;
    pFilter->fB0 = fGain * ((fGain + 1.f) + (fGain - 1.f) * fCos + fBeta * fSin);
    pFilter->fB1 = -2.f * fGain * ((fGain - 1.f) + (fGain + 1.f) * fCos);
    pFilter->fB2 = fGain * ((fGain + 1.f) + (fGain - 1.f) * fCos - fBeta * fSin);

    pFilter->fA1 /= fA0;
    pFilter->fA2 /= fA0;
    pFilter->fB0 /= fA0;
    pFilter->fB1 /= fA0;
    pFilter->fB2 /= fA0;
}


biquad_t* biquad_init(uint8_t ubType, uint32_t ulSampleFreq, uint32_t ulCutoffFreq)
{
    if(ubType > BIQUAD_TYPE_HIGHSHELF)
        return NULL;

    if(!ulSampleFreq)
        return NULL;

    if(ulCutoffFreq > (ulSampleFreq >> 1))
        return NULL;

    biquad_t *pFilter = (biquad_t *)malloc(sizeof(biquad_t));

    if(!pFilter)
        return NULL;

    memset(pFilter, 0, sizeof(biquad_t));

    pFilter->ubType = ubType;
    pFilter->ulSampleFreq = ulSampleFreq;
    pFilter->ulCutoffFreq = ulCutoffFreq;

    return pFilter;
}
void biquad_delete(biquad_t *pFilter)
{
    if(!pFilter)
        return;

    free(pFilter);
}
void biquad_calc_coefs(biquad_t *pFilter, float fQFactor, float fGain)
{
    if(!pFilter)
        return;

    if(fQFactor <= 0.f)
        return;

    float fLinGain = powf(10.f, fGain / 40.f);
    float fOmega = 2.f * M_PI * pFilter->ulCutoffFreq / pFilter->ulSampleFreq;
    float fSin = sinf(fOmega);
    float fCos = cosf(fOmega);
    float fAlpha = fSin / (2.f * fQFactor);
    float fBeta = sqrtf(2.f * fLinGain);

    switch(pFilter->ubType)
    {
        case BIQUAD_TYPE_LOWPASS:
            biquad_calc_lowpass(pFilter, fCos, fAlpha);
        break;
        case BIQUAD_TYPE_HIGHPASS:
            biquad_calc_highpass(pFilter, fCos, fAlpha);
        break;
        case BIQUAD_TYPE_BANDPASS:
            biquad_calc_bandpass(pFilter, fCos, fAlpha);
        break;
        case BIQUAD_TYPE_PEAK:
            biquad_calc_peak(pFilter, fLinGain, fCos, fAlpha);
        break;
        case BIQUAD_TYPE_NOTCH:
            biquad_calc_notch(pFilter, fCos, fAlpha);
        break;
        case BIQUAD_TYPE_LOWSHELF:
            biquad_calc_lowshelf(pFilter, fLinGain, fSin, fCos, fBeta);
        break;
        case BIQUAD_TYPE_HIGHSHELF:
            biquad_calc_highshelf(pFilter, fLinGain, fSin, fCos, fBeta);
        break;
    }
}
float biquad_get_gain(biquad_t *pFilter, uint32_t ulFrequency)
{
    if(!pFilter)
        return 0.f;

    if(ulFrequency > (pFilter->ulSampleFreq >> 1))
        return 0.f;

    float fPhi = powf(sinf(2.f * M_PI * ulFrequency / (2.f * pFilter->ulSampleFreq)), 2.f);

    float fResult = (powf(pFilter->fB0 + pFilter->fB1 + pFilter->fB2, 2.f) - 4.f * (pFilter->fB0*pFilter->fB1 + 4.f * pFilter->fB0*pFilter->fB2 + pFilter->fB1 * pFilter->fB2) * fPhi + 16.f * pFilter->fB0 * pFilter->fB2 * powf(fPhi, 2.f));
    fResult /= powf(1.f + pFilter->fA1+pFilter->fA2, 2.f) - 4.f * (pFilter->fA1 + 4.f * pFilter->fA2 + pFilter->fA1 * pFilter->fA2) * fPhi + 16.f * pFilter->fA2 * powf(fPhi, 2.f);

    if(fResult < 0.f)
        return 0.f;

    return sqrtf(fResult);
}