#include "fir.h"

fir_ctx_t* fir_init(uint16_t usNumTaps, int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize)
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
        memcpy(psInput, psFIROutput, pContext->ulBlockSize * sizeof(int16_t));

        free(psFIROutput);
    }
}

fir_complex_ctx_t* fir_complex_init(uint16_t usNumTaps, int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize)
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

fir_decimator_ctx_t* fir_decimator_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize)
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
        memcpy(psInput, psFIROutput, pContext->ulBlockSize / pContext->pInstance->M * sizeof(int16_t));

        free(psFIROutput);
    }
}

fir_decimator_complex_ctx_t* fir_decimator_complex_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize)
{
    if(!usNumTaps)
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