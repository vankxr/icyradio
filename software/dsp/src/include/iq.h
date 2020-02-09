#ifndef __IQ_H__
#define __IQ_H__

#include <stdlib.h>
#include <stdint.h>

#define TAU (2 * INT16_MAX)

typedef struct iq16_t
{
	int16_t i;
	int16_t q;
} iq16_t;

#define INT16_TO_IQ16(x)	\
	((iq16_t) 				\
	{ 						\
		.i = x,				\
		.q = 0	 			\
	})
#define IQ16_CONJUGATE(x)	\
	((iq16_t) 				\
	{ 						\
		.i = x.i,			\
		.q = -x.q 			\
	})
#define IQ16_PRODUCT(x, y) 												\
	((iq16_t) 															\
	{ 																	\
		.i = (((int64_t)x.i * y.i) - ((int64_t)x.q * y.q)) / INT16_MAX, \
		.q = (((int64_t)x.i * y.q) + ((int64_t)x.q * y.i)) / INT16_MAX, \
	})
#define IQ16_SCALAR_PRODUCT(x, y)				\
	((iq16_t) 									\
	{ 											\
		.i = ((int32_t)x.i * y) / INT16_MAX,	\
		.q = ((int32_t)x.q * y) / INT16_MAX		\
	})
#define IQ16_SCALAR_QUOTIENT(x, y)				\
	((iq16_t) 									\
	{ 											\
		.i = ((int32_t)x.i * INT16_MAX) / y,	\
		.q = ((int32_t)x.q * INT16_MAX) / y		\
	})

#endif  // __IQ_H__