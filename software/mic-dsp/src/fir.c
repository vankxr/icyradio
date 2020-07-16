#include "fir.h"

fir_filter_t *fir_init(int16_t *pusCoefs, uint32_t ulTaps)
{
    if(!pusCoefs)
        return NULL;

    if(!ulTaps)
        return NULL;

    fir_filter_t *pFilter = (fir_filter_t *)malloc(sizeof(fir_filter_t));

    if(!pFilter)
        return NULL;

    memset(pFilter, 0, sizeof(fir_filter_t));

    pFilter->psData = (int16_t *)malloc(sizeof(int16_t) * ulTaps);

    if(!pFilter->psData)
    {
        free(pFilter);

        return NULL;
    }

    memset(pFilter->psData, 0, sizeof(int16_t) * ulTaps);

    pFilter->psCoefs = (int16_t *)malloc(sizeof(int16_t) * ulTaps);

    if(!pFilter->psCoefs)
    {
        free(pFilter->psData);
        free(pFilter);

        return NULL;
    }

    memcpy(pFilter->psCoefs, pusCoefs, sizeof(int16_t) * ulTaps);

    pFilter->ulTaps = ulTaps;

    return pFilter;
}
void fir_cleanup(fir_filter_t *pFilter)
{
    if(!pFilter)
        return;

    if(pFilter->psData)
        free(pFilter->psData);

    if(pFilter->psCoefs)
        free(pFilter->psCoefs);

    free(pFilter);
}
void fir_put(fir_filter_t *pFilter, int16_t sSample)
{
    if(!pFilter)
        return;

    if(!pFilter->psData)
        return;

    pFilter->psData[pFilter->ulLastIndex++] = sSample;

    if(pFilter->ulLastIndex >= pFilter->ulTaps)
        pFilter->ulLastIndex = 0;
}
int16_t fir_get(fir_filter_t *pFilter)
{
    if(!pFilter)
        return 0;

    if(!pFilter->psData)
        return 0;

    if(!pFilter->psCoefs)
        return 0;

    int64_t llAccumulator = 0;
    uint32_t ulIndex = pFilter->ulLastIndex;

    for(uint32_t i = 0; i < pFilter->ulTaps; i++)
    {
        ulIndex = ulIndex ? ulIndex - 1 : pFilter->ulTaps - 1;

        llAccumulator += (int64_t)pFilter->psData[ulIndex] * pFilter->psCoefs[i];
    }

    return llAccumulator >> 16;
}