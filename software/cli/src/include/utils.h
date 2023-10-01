#ifndef __UTILS_H__
#define __UTILS_H__

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

// AXI Core versioning
#define AXI_CORE_VERSION(maj, min, patch)   (((maj) << 16) | ((min) << 8) | (patch))
#define AXI_CORE_VERSION_MAJOR(v)           ((v) >> 16)
#define AXI_CORE_VERSION_MINOR(v)           (((v) >> 8) & 0xFF)
#define AXI_CORE_VERSION_PATCH(v)           ((v) & 0xFF)

// Macro to get the bit value
#define BIT(x) (1UL << (x))

// Printf macros to print bits
#define UINT8BITSTR         "%c%c%c%c%c%c%c%c"
#define UINT16BITSTR        UINT8BITSTR UINT8BITSTR
#define UINT32BITSTR        UINT16BITSTR UINT16BITSTR
#define UINT64BITSTR        UINT32BITSTR UINT32BITSTR
#define UINT82BITSTR(b)     ((b) & 0x80 ? '1' : '0'), ((b) & 0x40 ? '1' : '0'), ((b) & 0x20 ? '1' : '0'), ((b) & 0x10 ? '1' : '0'), ((b) & 0x08 ? '1' : '0'), ((b) & 0x04 ? '1' : '0'), ((b) & 0x02 ? '1' : '0'), ((b) & 0x01 ? '1' : '0')
#define UINT162BITSTR(b)    UINT82BITSTR(((b) >> 8) & 0xFF), UINT82BITSTR(((b) >> 0) & 0xFF)
#define UINT322BITSTR(b)    UINT162BITSTR(((b) >> 16) & 0xFFFF), UINT162BITSTR(((b) >> 0) & 0xFFFF)
#define UINT642BITSTR(b)    UINT322BITSTR(((b) >> 32) & 0xFFFFFFFF), UINT322BITSTR(((b) >> 0) & 0xFFFFFFFF)

#define ABS(x)                  ((x) < 0 ? (-(x)) : (x))
#define D_ABS(x, y)             ((x) > (y) ? ((x) - (y)) : ((y) - (x)))
#define MIN(x, y)               (((x) < (y)) ? (x) : (y))
#define MIN_T(t, x, y)          (t)MIN((t)(x), (t)(y))
#define MAX(x, y)               (((x) > (y)) ? (x) : (y))
#define MAX_T(t, x, y)          (t)MAX((t)(x), (t)(y))
#define CLAMP(x, min, max)      (MAX(MIN((x), (max)), (min)))
#define CLAMP_T(t, x, min, max) (t)CLAMP((t)(x), (t)(min), (t)(max))

#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))

#define DIV_CEIL(x,y)       (((x) + (y) - 1) / (y))
#define DIV_ROUND(x, y)     (((x) + (y) / 2) / (y))

#define BITS_PER_LONG 32

#define GENMASK(h, l) ({                        \
        uint32_t t = (uint32_t)(~0UL);          \
        t = t << (BITS_PER_LONG - (h - l + 1)); \
        t = t >> (BITS_PER_LONG - (h + 1));     \
        t;                                      \
})

// Functions

/* Check if bit set */
inline int utils_test_bit(int pos, const volatile void * addr)
{
    return (((const int *)addr)[pos / 32] >> pos) & 1UL;
}

/* Find first set bit in word. */
uint32_t utils_find_first_set_bit(uint32_t word);
/* Find last set bit in word. */
uint32_t utils_find_last_set_bit(uint32_t word);
/* Locate the closest element in an array. */
uint32_t utils_find_closest(int32_t val, const int32_t *array, uint32_t size);
/* Shift the value and apply the specified mask. */
uint32_t utils_field_prep(uint32_t mask, uint32_t val);
/* Get a field specified by a mask from a word. */
uint32_t utils_field_get(uint32_t mask, uint32_t word);
/* Log base 2 of the given number. */
int32_t utils_log_base_2(uint32_t x);
/* Find greatest common divisor of the given two numbers. */
uint32_t utils_greatest_common_divisor(uint32_t a, uint32_t b);
/* Find lowest common multiple of the given two numbers. */
uint32_t utils_lowest_common_multiple(uint32_t a, uint32_t b);
/* Calculate best rational approximation for a given fraction. */
void utils_rational_best_approximation(uint32_t given_numerator, uint32_t given_denominator, uint32_t max_numerator, uint32_t max_denominator, uint32_t *best_numerator, uint32_t *best_denominator);
/* Calculate the number of set bits (8-bit size). */
unsigned int utils_hweight8(uint8_t word);
/* Calculate the number of set bits (16-bit size). */
unsigned int utils_hweight16(uint16_t word);
/* Calculate the number of set bits (32-bit size). */
unsigned int utils_hweight32(uint32_t word);
/* Calculate the quotient and the remainder of an integer division. */
uint64_t utils_do_div(uint64_t* n, uint64_t base);
/* Unsigned 64bit divide with 64bit divisor and remainder */
uint64_t utils_div64_u64_rem(uint64_t dividend, uint64_t divisor, uint64_t *remainder);
/* Unsigned 64bit divide with 32bit divisor with remainder */
uint64_t utils_div_u64_rem(uint64_t dividend, uint32_t divisor, uint32_t *remainder);
int64_t utils_div_s64_rem(int64_t dividend, int32_t divisor, int32_t *remainder);
/* Unsigned 64bit divide with 32bit divisor */
uint64_t utils_div_u64(uint64_t dividend, uint32_t divisor);
int64_t utils_div_s64(int64_t dividend, int32_t divisor);
/* Converts from string to int32_t */
int32_t utils_str_to_int32(const char *str);
/* Converts from string to uint32_t */
uint32_t utils_str_to_uint32(const char *str);

void utils_put_unaligned_be16(uint16_t val, uint8_t *buf);
uint16_t utils_get_unaligned_be16(uint8_t *buf);
void utils_put_unaligned_le16(uint16_t val, uint8_t *buf);
uint16_t utils_get_unaligned_le16(uint8_t *buf);
void utils_put_unaligned_be24(uint32_t val, uint8_t *buf);
uint32_t utils_get_unaligned_be24(uint8_t *buf);
void utils_put_unaligned_le24(uint32_t val, uint8_t *buf);
uint32_t utils_get_unaligned_le24(uint8_t *buf);
void utils_put_unaligned_be32(uint32_t val, uint8_t *buf);
uint32_t utils_get_unaligned_be32(uint8_t *buf);
void utils_put_unaligned_le32(uint32_t val, uint8_t *buf);
uint32_t utils_get_unaligned_le32(uint8_t *buf);

int16_t utils_sign_extend16(uint16_t value, int index);
int32_t utils_sign_extend32(uint32_t value, int index);
uint64_t utils_mul_u32_u32(uint32_t a, uint32_t b);
uint64_t utils_mul_u64_u32_shr(uint64_t a, uint32_t mul, unsigned int shift);

bool utils_is_big_endian(void);
void utils_memswap64(void *buf, uint32_t bytes, uint32_t step);

uint32_t utils_int_sqrt(uint32_t x);
int32_t utils_ilog2(int32_t x);

#endif  // __UTILS_H__
