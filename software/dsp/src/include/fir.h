#ifndef __FIR_H__
#define __FIR_H__

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include "utils.h"
#include "arm_math.h"
#include "iq16.h"

typedef struct fir_ctx_t fir_ctx_t;
typedef struct fir_complex_ctx_t fir_complex_ctx_t;
typedef struct fir_sparse_ctx_t fir_sparse_ctx_t;
typedef struct fir_sparse_complex_ctx_t fir_sparse_complex_ctx_t;
typedef struct fir_decimator_ctx_t fir_decimator_ctx_t;
typedef struct fir_decimator_complex_ctx_t fir_decimator_complex_ctx_t;
typedef struct fir_interpolator_ctx_t fir_interpolator_ctx_t;
typedef struct fir_interpolator_complex_ctx_t fir_interpolator_complex_ctx_t;

struct fir_ctx_t
{
    arm_fir_instance_q15 *pInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};
struct fir_complex_ctx_t
{
    arm_fir_instance_q15 *pIInstance;
    arm_fir_instance_q15 *pQInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};
struct fir_sparse_ctx_t
{
    arm_fir_sparse_instance_q15 *pInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
    int16_t *psScratchIn;
    int32_t *plScratchOut;
};
struct fir_sparse_complex_ctx_t
{
    arm_fir_sparse_instance_q15 *pIInstance;
    arm_fir_sparse_instance_q15 *pQInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
    int16_t *psScratchIn;
    int32_t *plScratchOut;
};
struct fir_decimator_ctx_t
{
    arm_fir_decimate_instance_q15 *pInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};
struct fir_decimator_complex_ctx_t
{
    arm_fir_decimate_instance_q15 *pIInstance;
    arm_fir_decimate_instance_q15 *pQInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};
struct fir_interpolator_ctx_t
{
    arm_fir_interpolate_instance_q15 *pInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};
struct fir_interpolator_complex_ctx_t
{
    arm_fir_interpolate_instance_q15 *pIInstance;
    arm_fir_interpolate_instance_q15 *pQInstance;
    uint32_t ulBlockSize;
    uint8_t ubStateAllocated : 1;
};

fir_ctx_t* fir_init(uint16_t usNumTaps, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize);
void fir_delete(fir_ctx_t *pContext);
void fir_filter(fir_ctx_t *pContext, int16_t *psInput, int16_t *psOutput);

fir_complex_ctx_t* fir_complex_init(uint16_t usNumTaps, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize);
void fir_complex_delete(fir_complex_ctx_t *pContext);
void fir_complex_filter(fir_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput);

fir_sparse_ctx_t* fir_sparse_init(uint16_t usNumTaps, const int16_t *psCoefs, const int32_t *plTapDelay, int16_t *psState, uint32_t ulBlockSize);
void fir_sparse_delete(fir_sparse_ctx_t *pContext);
void fir_sparse_filter(fir_sparse_ctx_t *pContext, int16_t *psInput, int16_t *psOutput);

fir_sparse_complex_ctx_t* fir_sparse_complex_init(uint16_t usNumTaps, const int16_t *psCoefs, const int32_t *plTapDelay, iq16_t *pState, uint32_t ulBlockSize);
void fir_sparse_complex_delete(fir_sparse_complex_ctx_t *pContext);
void fir_sparse_complex_filter(fir_sparse_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput);

fir_decimator_ctx_t* fir_decimator_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize);
void fir_decimator_delete(fir_decimator_ctx_t *pContext);
void fir_decimator_filter(fir_decimator_ctx_t *pContext, int16_t *psInput, int16_t *psOutput);

fir_decimator_complex_ctx_t* fir_decimator_complex_init(uint16_t usNumTaps, uint8_t ubDecimationFactor, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize);
void fir_decimator_complex_delete(fir_decimator_complex_ctx_t *pContext);
void fir_decimator_complex_filter(fir_decimator_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput);

fir_interpolator_ctx_t* fir_interpolator_init(uint16_t usNumTaps, uint8_t ubInterpolationFactor, const int16_t *psCoefs, int16_t *psState, uint32_t ulBlockSize);
void fir_interpolator_delete(fir_interpolator_ctx_t *pContext);
void fir_interpolator_filter(fir_interpolator_ctx_t *pContext, int16_t *psInput, int16_t *psOutput);

fir_interpolator_complex_ctx_t* fir_interpolator_complex_init(uint16_t usNumTaps, uint8_t ubInterpolationFactor, const int16_t *psCoefs, iq16_t *pState, uint32_t ulBlockSize);
void fir_interpolator_complex_delete(fir_interpolator_complex_ctx_t *pContext);
void fir_interpolator_complex_filter(fir_interpolator_complex_ctx_t *pContext, iq16_t *pInput, iq16_t *pOutput);

#endif  // __FIR_H__