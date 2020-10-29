#ifndef __MATRIX_H__
#define __MATRIX_H__

#include <sam.h>

#define MATRIX_MASTER_PRIORITY(m, p) (((p) & 3) << (((m) % 8) * 4))

void matrix_init();

#endif  // __MATRIX_H__
