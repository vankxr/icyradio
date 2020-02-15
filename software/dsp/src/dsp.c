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