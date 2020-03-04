
#include "biquad.h"

static inline void biquad_calc_lowpass(biquad_t *pFilter, float fCos, float fAlpha);
static inline void biquad_calc_highpass(biquad_t *pFilter, float fCos, float fAlpha);
static inline void biquad_calc_bandpass(biquad_t *pFilter, float fCos, float fAlpha);
static inline void biquad_calc_peak(biquad_t *pFilter, float fGain, float fCos, float fAlpha);
static inline void biquad_calc_notch(biquad_t *pFilter, float fCos, float fAlpha);
static inline void biquad_calc_lowshelf(biquad_t *pFilter, float fGain, float fSin, float fCos, float fBeta);
static inline void biquad_calc_highshelf(biquad_t *pFilter, float fGain, float fSin, float fCos, float fBeta);


biquad_t* biquad_init(uint8_t ubType, uint32_t ulSampleFreq, uint32_t ulCutoffFreq, float fQFactor, float fGain)
{
    
}
void biquad_delete(biquad_t *pFilter);
void biquad_calc_coefs(biquad_t *pFilter);
void biquad_get_gain(biquad_t *pFilter, uint32_t ulFrequency);