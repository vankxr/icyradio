#include "fir.h"

fir_ctx_t* fir_init(uint16_t usNumTaps, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_ctx_t *pNewContext = (fir_ctx_t *)malloc(sizeof(fir_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_ctx_t));

    int16_t *psFIRState = psState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((usNumTaps + ulBlockSize) * sizeof(int16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pInstance = (arm_fir_instance_q15 *)malloc(sizeof(arm_fir_instance_q15));

    if(!pNewContext->pInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    if(arm_fir_init_q15(pNewContext->pInstance, usNumTaps, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_delete(fir_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pInstance->pState);

        free(pContext->pInstance);
    }

    free(pContext);
}
void fir_filter(fir_ctx_t *pContext, int16_t *psInput, int16_t *psOutput)
{
    if(!pContext)
        return;

    if(!psInput)
        return;

    int16_t *psFIROutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psFIROutput)
    {
        psFIROutput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

        if(!psFIROutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_fir_q15(pContext->pInstance, psInput, psFIROutput, pContext->ulBlockSize);

    if(ubOutputAllocated)
    {
        arm_copy_q15(psFIROutput, psInput, pContext->ulBlockSize);

        free(psFIROutput);
    }
}

fir_complex_ctx_t* fir_complex_init(uint16_t usNumTaps, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_complex_ctx_t *pNewContext = (fir_complex_ctx_t *)malloc(sizeof(fir_complex_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_complex_ctx_t));

    int16_t *psFIRState = (int16_t *)pState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((usNumTaps + ulBlockSize) * sizeof(iq16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pIInstance = (arm_fir_instance_q15 *)malloc(sizeof(arm_fir_instance_q15));

    if(!pNewContext->pIInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    pNewContext->pQInstance = (arm_fir_instance_q15 *)malloc(sizeof(arm_fir_instance_q15));

    if(!pNewContext->pQInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_init_q15(pNewContext->pIInstance, usNumTaps, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_init_q15(pNewContext->pQInstance, usNumTaps, psCoefs, psFIRState + (usNumTaps + ulBlockSize), ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_complex_delete(fir_complex_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pIInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pIInstance->pState);

        free(pContext->pIInstance);
    }

    if(pContext->pQInstance)
        free(pContext->pQInstance);

    free(pContext);
}
void fir_complex_filter(fir_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput)
{
    if(!pContext)
        return;

    if(!pInput)
        return;

    int16_t *psInput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psInput)
        return;

    int16_t *psOutput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psOutput)
    {
        free(psInput);

        return;
    }

    iq16_t *pFIROutput = pOutput ? pOutput : pInput;

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        psInput[i] = pInput[i].i;

    arm_fir_q15(pContext->pIInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
    {
        pFIROutput[i].i = psOutput[i];
        psInput[i] = pInput[i].q;
    }

    arm_fir_q15(pContext->pQInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        pFIROutput[i].q = psOutput[i];

    free(psInput);
    free(psOutput);
}

fir_sparse_ctx_t* fir_sparse_init(uint16_t usNumTaps, const int16_t *psCoefs, const int32_t *plTapDelay, int16_t *psState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!plTapDelay)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_sparse_ctx_t *pNewContext = (fir_sparse_ctx_t *)malloc(sizeof(fir_sparse_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_sparse_ctx_t));

    pNewContext->psScratchIn = (int16_t *)malloc(ulBlockSize * sizeof(int16_t));

    if(!pNewContext->psScratchIn)
    {
        free(pNewContext);

        return NULL;
    }

    pNewContext->plScratchOut = (int32_t *)malloc(ulBlockSize * sizeof(int32_t));

    if(!pNewContext->plScratchOut)
    {
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    int32_t lMaxTapDelay = 0;
    uint32_t ulMaxTapDelayIndex = 0;

    arm_max_q31(plTapDelay, usNumTaps, &lMaxTapDelay, &ulMaxTapDelayIndex);

    if(lMaxTapDelay <= 0 || lMaxTapDelay > UINT16_MAX)
    {
        free(pNewContext->plScratchOut);
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    int16_t *psFIRState = psState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((lMaxTapDelay + ulBlockSize) * sizeof(int16_t));

        if(!psFIRState)
        {
            free(pNewContext->plScratchOut);
            free(pNewContext->psScratchIn);
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pInstance = (arm_fir_sparse_instance_q15 *)malloc(sizeof(arm_fir_sparse_instance_q15));

    if(!pNewContext->pInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->plScratchOut);
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    arm_fir_sparse_init_q15(pNewContext->pInstance, usNumTaps, psCoefs, psFIRState, (int32_t *)plTapDelay, (uint16_t)lMaxTapDelay, ulBlockSize);

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_sparse_delete(fir_sparse_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pInstance->pState);

        free(pContext->pInstance);
    }

    free(pContext->psScratchIn);
    free(pContext->plScratchOut);

    free(pContext);
}
void fir_sparse_filter(fir_sparse_ctx_t *pContext, int16_t *psInput, int16_t *psOutput)
{
    if(!pContext)
        return;

    if(!psInput)
        return;

    int16_t *psFIROutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psFIROutput)
    {
        psFIROutput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

        if(!psFIROutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_fir_sparse_q15(pContext->pInstance, psInput, psFIROutput, pContext->psScratchIn, pContext->plScratchOut, pContext->ulBlockSize);

    if(ubOutputAllocated)
    {
        arm_copy_q15(psFIROutput, psInput, pContext->ulBlockSize);

        free(psFIROutput);
    }
}

fir_sparse_complex_ctx_t* fir_sparse_complex_init(uint16_t usNumTaps, const int16_t *psCoefs, const int32_t *plTapDelay, iq16_t *pState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!plTapDelay)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_sparse_complex_ctx_t *pNewContext = (fir_sparse_complex_ctx_t *)malloc(sizeof(fir_sparse_complex_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_sparse_complex_ctx_t));

    pNewContext->psScratchIn = (int16_t *)malloc(ulBlockSize * sizeof(int16_t));

    if(!pNewContext->psScratchIn)
    {
        free(pNewContext);

        return NULL;
    }

    pNewContext->plScratchOut = (int32_t *)malloc(ulBlockSize * sizeof(int32_t));

    if(!pNewContext->plScratchOut)
    {
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    int32_t lMaxTapDelay = 0;
    uint32_t ulMaxTapDelayIndex = 0;

    arm_max_q31(plTapDelay, usNumTaps, &lMaxTapDelay, &ulMaxTapDelayIndex);

    if(lMaxTapDelay <= 0 || lMaxTapDelay > UINT16_MAX)
    {
        free(pNewContext->plScratchOut);
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    int16_t *psFIRState = (int16_t *)pState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((lMaxTapDelay + ulBlockSize) * sizeof(iq16_t));

        if(!psFIRState)
        {
            free(pNewContext->plScratchOut);
            free(pNewContext->psScratchIn);
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pIInstance = (arm_fir_sparse_instance_q15 *)malloc(sizeof(arm_fir_sparse_instance_q15));

    if(!pNewContext->pIInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->plScratchOut);
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    pNewContext->pQInstance = (arm_fir_sparse_instance_q15 *)malloc(sizeof(arm_fir_sparse_instance_q15));

    if(!pNewContext->pQInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->plScratchOut);
        free(pNewContext->psScratchIn);
        free(pNewContext);

        return NULL;
    }

    arm_fir_sparse_init_q15(pNewContext->pIInstance, usNumTaps, psCoefs, psFIRState, (int32_t *)plTapDelay, (uint16_t)lMaxTapDelay, ulBlockSize);
    arm_fir_sparse_init_q15(pNewContext->pQInstance, usNumTaps, psCoefs, psFIRState + (lMaxTapDelay + ulBlockSize), (int32_t *)plTapDelay, (uint16_t)lMaxTapDelay, ulBlockSize);

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_sparse_complex_delete(fir_sparse_complex_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pIInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pIInstance->pState);

        free(pContext->pIInstance);
    }

    if(pContext->pQInstance)
        free(pContext->pQInstance);

    free(pContext->psScratchIn);
    free(pContext->plScratchOut);

    free(pContext);
}
void fir_sparse_complex_filter(fir_sparse_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput)
{
    if(!pContext)
        return;

    if(!pInput)
        return;

    int16_t *psInput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psInput)
        return;

    int16_t *psOutput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psOutput)
    {
        free(psInput);

        return;
    }

    iq16_t *pFIROutput = pOutput ? pOutput : pInput;

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        psInput[i] = pInput[i].i;

    arm_fir_sparse_q15(pContext->pIInstance, psInput, psOutput, pContext->psScratchIn, pContext->plScratchOut, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
    {
        pFIROutput[i].i = psOutput[i];
        psInput[i] = pInput[i].q;
    }

    arm_fir_sparse_q15(pContext->pQInstance, psInput, psOutput, pContext->psScratchIn, pContext->plScratchOut, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        pFIROutput[i].q = psOutput[i];

    free(psInput);
    free(psOutput);
}

fir_decimator_ctx_t* fir_decimator_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!ubDecimationFactor)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_decimator_ctx_t *pNewContext = (fir_decimator_ctx_t *)malloc(sizeof(fir_decimator_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_decimator_ctx_t));

    int16_t *psFIRState = psState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((usNumTaps + ulBlockSize - 1) * sizeof(int16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pInstance = (arm_fir_decimate_instance_q15 *)malloc(sizeof(arm_fir_decimate_instance_q15));

    if(!pNewContext->pInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    if(arm_fir_decimate_init_q15(pNewContext->pInstance, usNumTaps, ubDecimationFactor, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_decimator_delete(fir_decimator_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pInstance->pState);

        free(pContext->pInstance);
    }

    free(pContext);
}
void fir_decimator_filter(fir_decimator_ctx_t *pContext, int16_t *psInput, int16_t *psOutput)
{
    if(!pContext)
        return;

    if(!psInput)
        return;

    int16_t *psFIROutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psFIROutput)
    {
        psFIROutput = (int16_t *)malloc(pContext->ulBlockSize / pContext->pInstance->M * sizeof(int16_t));

        if(!psFIROutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_fir_decimate_q15(pContext->pInstance, psInput, psFIROutput, pContext->ulBlockSize);

    if(ubOutputAllocated)
    {
        arm_copy_q15(psFIROutput, psInput, pContext->ulBlockSize / pContext->pInstance->M);

        free(psFIROutput);
    }
}

fir_decimator_complex_ctx_t* fir_decimator_complex_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!ubDecimationFactor)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_decimator_complex_ctx_t *pNewContext = (fir_decimator_complex_ctx_t *)malloc(sizeof(fir_decimator_complex_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_decimator_complex_ctx_t));

    int16_t *psFIRState = (int16_t *)pState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc((usNumTaps + ulBlockSize - 1) * sizeof(iq16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pIInstance = (arm_fir_decimate_instance_q15 *)malloc(sizeof(arm_fir_decimate_instance_q15));

    if(!pNewContext->pIInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    pNewContext->pQInstance = (arm_fir_decimate_instance_q15 *)malloc(sizeof(arm_fir_decimate_instance_q15));

    if(!pNewContext->pQInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_decimate_init_q15(pNewContext->pIInstance, usNumTaps, ubDecimationFactor, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_decimate_init_q15(pNewContext->pQInstance, usNumTaps, ubDecimationFactor, psCoefs, psFIRState + (usNumTaps + ulBlockSize - 1), ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_decimator_complex_delete(fir_decimator_complex_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pIInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pIInstance->pState);

        free(pContext->pIInstance);
    }

    if(pContext->pQInstance)
        free(pContext->pQInstance);

    free(pContext);
}
void fir_decimator_complex_filter(fir_decimator_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput)
{
    if(!pContext)
        return;

    if(!pInput)
        return;

    int16_t *psInput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psInput)
        return;

    int16_t *psOutput = (int16_t *)malloc(pContext->ulBlockSize / pContext->pIInstance->M * sizeof(int16_t));

    if(!psOutput)
    {
        free(psInput);

        return;
    }

    iq16_t *pFIROutput = pOutput ? pOutput : pInput;

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        psInput[i] = pInput[i].i;

    arm_fir_decimate_q15(pContext->pIInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
    {
        if(i < pContext->ulBlockSize / pContext->pIInstance->M)
            pFIROutput[i].i = psOutput[i];

        psInput[i] = pInput[i].q;
    }

    arm_fir_decimate_q15(pContext->pQInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize / pContext->pIInstance->M; i++)
        pFIROutput[i].q = psOutput[i];

    free(psInput);
    free(psOutput);
}

fir_interpolator_ctx_t* fir_interpolator_init(uint16_t usNumTaps, uint8_t ubInterpolationFactor, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!ubInterpolationFactor)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_interpolator_ctx_t *pNewContext = (fir_interpolator_ctx_t *)malloc(sizeof(fir_interpolator_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_interpolator_ctx_t));

    int16_t *psFIRState = psState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc(((usNumTaps / ubInterpolationFactor) + ulBlockSize - 1) * sizeof(int16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pInstance = (arm_fir_interpolate_instance_q15 *)malloc(sizeof(arm_fir_interpolate_instance_q15));

    if(!pNewContext->pInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    if(arm_fir_interpolate_init_q15(pNewContext->pInstance, ubInterpolationFactor, usNumTaps, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_interpolator_delete(fir_interpolator_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pInstance->pState);

        free(pContext->pInstance);
    }

    free(pContext);
}
void fir_interpolator_filter(fir_interpolator_ctx_t *pContext, int16_t *psInput, int16_t *psOutput)
{
    if(!pContext)
        return;

    if(!psInput)
        return;

    int16_t *psFIROutput = psOutput;
    uint8_t ubOutputAllocated = 0;

    if(!psFIROutput)
    {
        psFIROutput = (int16_t *)malloc(pContext->ulBlockSize * pContext->pInstance->L * sizeof(int16_t));

        if(!psFIROutput)
            return;

        ubOutputAllocated = 1;
    }

    arm_fir_interpolate_q15(pContext->pInstance, psInput, psFIROutput, pContext->ulBlockSize);

    if(ubOutputAllocated)
    {
        arm_copy_q15(psFIROutput, psInput, pContext->ulBlockSize * pContext->pInstance->L);

        free(psFIROutput);
    }
}

fir_interpolator_complex_ctx_t* fir_interpolator_complex_init(uint16_t usNumTaps, uint8_t ubInterpolationFactor, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
        return NULL;

    if(!ubInterpolationFactor)
        return NULL;

    if(!psCoefs)
        return NULL;

    if(!ulBlockSize)
        return NULL;

    fir_interpolator_complex_ctx_t *pNewContext = (fir_interpolator_complex_ctx_t *)malloc(sizeof(fir_interpolator_complex_ctx_t));

    if(!pNewContext)
        return NULL;

    memset(pNewContext, 0, sizeof(fir_interpolator_complex_ctx_t));

    int16_t *psFIRState = (int16_t *)pState;

    if(!psFIRState)
    {
        psFIRState = (int16_t *)malloc(((usNumTaps / ubInterpolationFactor) + ulBlockSize - 1) * sizeof(iq16_t));

        if(!psFIRState)
        {
            free(pNewContext);

            return NULL;
        }

        pNewContext->ubStateAllocated = 1;
    }

    pNewContext->pIInstance = (arm_fir_interpolate_instance_q15 *)malloc(sizeof(arm_fir_interpolate_instance_q15));

    if(!pNewContext->pIInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext);

        return NULL;
    }

    pNewContext->pQInstance = (arm_fir_interpolate_instance_q15 *)malloc(sizeof(arm_fir_interpolate_instance_q15));

    if(!pNewContext->pQInstance)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_interpolate_init_q15(pNewContext->pIInstance, ubInterpolationFactor, usNumTaps, psCoefs, psFIRState, ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    if(arm_fir_interpolate_init_q15(pNewContext->pQInstance, ubInterpolationFactor, usNumTaps, psCoefs, psFIRState + ((usNumTaps / ubInterpolationFactor) + ulBlockSize - 1), ulBlockSize) != ARM_MATH_SUCCESS)
    {
        if(pNewContext->ubStateAllocated)
            free(psFIRState);

        free(pNewContext->pIInstance);
        free(pNewContext->pQInstance);
        free(pNewContext);

        return NULL;
    }

    pNewContext->ulBlockSize = ulBlockSize;

    return pNewContext;
}
void fir_interpolator_complex_delete(fir_interpolator_complex_ctx_t *pContext)
{
    if(!pContext)
        return;

    if(pContext->pIInstance)
    {
        if(pContext->ubStateAllocated)
            free(pContext->pIInstance->pState);

        free(pContext->pIInstance);
    }

    if(pContext->pQInstance)
        free(pContext->pQInstance);

    free(pContext);
}
void fir_interpolator_complex_filter(fir_interpolator_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput)
{
    if(!pContext)
        return;

    if(!pInput)
        return;

    int16_t *psInput = (int16_t *)malloc(pContext->ulBlockSize * sizeof(int16_t));

    if(!psInput)
        return;

    int16_t *psOutput = (int16_t *)malloc(pContext->ulBlockSize * pContext->pIInstance->L * sizeof(int16_t));

    if(!psOutput)
    {
        free(psInput);

        return;
    }

    iq16_t *pFIROutput = pOutput ? pOutput : pInput;

    for(uint32_t i = 0; i < pContext->ulBlockSize; i++)
        psInput[i] = pInput[i].i;

    arm_fir_interpolate_q15(pContext->pIInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize * pContext->pIInstance->L; i++)
    {
        if(i < pContext->ulBlockSize)
            psInput[i] = pInput[i].q;

        pFIROutput[i].i = psOutput[i];

    }

    arm_fir_interpolate_q15(pContext->pQInstance, psInput, psOutput, pContext->ulBlockSize);

    for(uint32_t i = 0; i < pContext->ulBlockSize * pContext->pIInstance->L; i++)
        pFIROutput[i].q = psOutput[i];

    free(psInput);
    free(psOutput);
}