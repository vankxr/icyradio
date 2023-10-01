#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <errno.h>
#include "utils.h"

extern int utils_test_bit(int pos, const volatile void* addr);

/**
 * Find first set bit in word.
 */
uint32_t utils_find_first_set_bit(uint32_t word)
{
    uint32_t first_set_bit = 0;

    while(word)
    {
        if(word & 0x1)
            return first_set_bit;

        word >>= 1;
        first_set_bit++;
    }

    return 32;
}

/**
 * Find last set bit in word.
 */
uint32_t utils_find_last_set_bit(uint32_t word)
{
    uint32_t bit = 0;
    uint32_t last_set_bit = 32;

    while(word)
    {
        if(word & 0x1)
            last_set_bit = bit;

        word >>= 1;
        bit++;
    }

    return last_set_bit;
}

/**
 * Locate the closest element in an array.
 */
uint32_t utils_find_closest(int32_t val, const int32_t* array, uint32_t size)
{
    int32_t diff = abs(array[0] - val);
    uint32_t ret = 0;
    uint32_t i;

    for(i = 1; i < size; i++)
    {
        if(abs(array[i] - val) < diff)
        {
            diff = abs(array[i] - val);
            ret = i;
        }
    }

    return ret;
}

/**
 * Shift the value and apply the specified mask.
 */
uint32_t utils_field_prep(uint32_t mask, uint32_t val)
{
    return (val << utils_find_first_set_bit(mask)) & mask;
}

/**
 * Get a field specified by a mask from a word.
 */
uint32_t utils_field_get(uint32_t mask, uint32_t word)
{
    return (word & mask) >> utils_find_first_set_bit(mask);
}

/**
 * Log base 2 of the given number.
 */
int32_t utils_log_base_2(uint32_t x)
{
    return utils_find_last_set_bit(x);
}

/**
 * Find greatest common divisor of the given two numbers.
 */
uint32_t utils_greatest_common_divisor(uint32_t a, uint32_t b)
{
    uint32_t div;
    uint32_t common_div = 1;

    if((a == 0) || (b == 0))
        return MAX(a, b);

    for(div = 1; (div <= a) && (div <= b); div++)
        if(!(a % div) && !(b % div))
            common_div = div;

    return common_div;
}
/**
 * Find lowest common multiple of the given two numbers.
 */
uint32_t utils_lowest_common_multiple(uint32_t a, uint32_t b)
{
    if(a && b)
        return (a / utils_greatest_common_divisor(a, b)) * b;
    else
        return 0;
}

/**
 * Calculate best rational approximation for a given fraction.
 */
void utils_rational_best_approximation(uint32_t given_numerator, uint32_t given_denominator, uint32_t max_numerator, uint32_t max_denominator, uint32_t* best_numerator, uint32_t* best_denominator)
{
    uint32_t gcd;

    gcd = utils_greatest_common_divisor(given_numerator, given_denominator);

    *best_numerator = given_numerator / gcd;
    *best_denominator = given_denominator / gcd;

    if((*best_numerator > max_numerator) || (*best_denominator > max_denominator))
    {
        *best_numerator = 0;
        *best_denominator = 0;
    }
}

/**
 * Calculate the number of set bits (8-bit size).
 */
unsigned int utils_hweight8(uint8_t word)
{
    uint32_t count = 0;

    while(word)
    {
        if(word & 0x1)
            count++;

        word >>= 1;
    }

    return count;
}

/**
 * Calculate the number of set bits (16-bit size).
 */
unsigned int utils_hweight16(uint16_t word)
{
    return utils_hweight8(word >> 8) + utils_hweight8(word);
}

/**
 * Calculate the number of set bits (32-bit size).
 */
unsigned int utils_hweight32(uint32_t word)
{
    return utils_hweight16(word >> 16) + utils_hweight16(word);
}

/**
 * Calculate the quotient and the remainder of an integer division.
 */
uint64_t utils_do_div(uint64_t* n, uint64_t base)
{
    uint64_t mod = 0;

    mod = *n % base;
    *n = *n / base;

    return mod;
}

/**
 * Unsigned 64bit divide with 64bit divisor and remainder
 */
uint64_t utils_div64_u64_rem(uint64_t dividend, uint64_t divisor, uint64_t* remainder)
{
    *remainder = dividend % divisor;

    return dividend / divisor;
}

/**
 * Unsigned 64bit divide with 32bit divisor with remainder
 */
uint64_t utils_div_u64_rem(uint64_t dividend, uint32_t divisor, uint32_t* remainder)
{
    *remainder = utils_do_div(&dividend, divisor);

    return dividend;
}

/**
 * Signed 64bit divide with 32bit divisor with remainder
 */
int64_t utils_div_s64_rem(int64_t dividend, int32_t divisor, int32_t* remainder)
{
    *remainder = dividend % divisor;

    return dividend / divisor;
}

/**
 * Unsigned 64bit divide with 32bit divisor
 */
uint64_t utils_div_u64(uint64_t dividend, uint32_t divisor)
{
    uint32_t remainder;

    return utils_div_u64_rem(dividend, divisor, &remainder);
}

/**
 * Signed 64bit divide with 32bit divisor
 */
int64_t utils_div_s64(int64_t dividend, int32_t divisor)
{
    int32_t remainder;

    return utils_div_s64_rem(dividend, divisor, &remainder);
}

/**
 * Converts from string to int32_t
 * @param *str
 * @return int32_t
 */
int32_t utils_str_to_int32(const char* str)
{
    char* end;
    int32_t value = strtol(str, &end, 0);

    if(end == str)
        return -EINVAL;
    else
        return value;
}

/**
 * Converts from string to uint32_t
 * @param *str
 * @return uint32_t
 */
uint32_t utils_str_to_uint32(const char* str)
{
    char* end;
    uint32_t value = strtoul(str, &end, 0);

    if(end == str)
        return -EINVAL;
    else
        return value;
}

void utils_put_unaligned_be16(uint16_t val, uint8_t* buf)
{
    buf[1] = val & 0xFF;
    buf[0] = val >> 8;
}

uint16_t utils_get_unaligned_be16(uint8_t* buf)
{
    return buf[1] | ((uint16_t)buf[0] << 8);
}

void utils_put_unaligned_le16(uint16_t val, uint8_t* buf)
{
    buf[0] = val & 0xFF;
    buf[1] = val >> 8;
}

uint16_t utils_get_unaligned_le16(uint8_t* buf)
{
    return buf[0] | ((uint16_t)buf[1] << 8);
}

void utils_put_unaligned_be24(uint32_t val, uint8_t* buf)
{
    buf[2] = val & 0xFF;
    buf[1] = (val >> 8) & 0xFF;
    buf[0] = val >> 16;
}

uint32_t utils_get_unaligned_be24(uint8_t* buf)
{
    return buf[2] | ((uint16_t)buf[1] << 8) | ((uint32_t)buf[0] << 16);
}

void utils_put_unaligned_le24(uint32_t val, uint8_t* buf)
{
    buf[0] = val & 0xFF;
    buf[1] = (val >> 8) & 0xFF;
    buf[2] = val >> 16;
}

uint32_t utils_get_unaligned_le24(uint8_t* buf)
{
    return buf[0] | ((uint16_t)buf[1] << 8) | ((uint32_t)buf[2] << 16);
}

void utils_put_unaligned_be32(uint32_t val, uint8_t* buf)
{
    buf[3] = val & 0xFF;
    buf[2] = (val >> 8) & 0xFF;
    buf[1] = (val >> 16) & 0xFF;
    buf[0] = val >> 24;
}

uint32_t utils_get_unaligned_be32(uint8_t* buf)
{
    return buf[3] | ((uint16_t)buf[2] << 8) | ((uint32_t)buf[1] << 16) | ((uint32_t)buf[0] << 24);
}

void utils_put_unaligned_le32(uint32_t val, uint8_t* buf)
{
    buf[0] = val & 0xFF;
    buf[1] = (val >> 8) & 0xFF;
    buf[2] = (val >> 16) & 0xFF;
    buf[3] = val >> 24;
}

uint32_t utils_get_unaligned_le32(uint8_t* buf)
{
    return buf[0] | ((uint16_t)buf[1] << 8) | ((uint32_t)buf[2] << 16) | ((uint32_t)buf[3] << 24);
}

int16_t utils_sign_extend16(uint16_t value, int index)
{
    uint8_t shift = 15 - index;

    return (int16_t)(value << shift) >> shift;
}

int32_t utils_sign_extend32(uint32_t value, int index)
{
    uint8_t shift = 31 - index;

    return (int32_t)(value << shift) >> shift;
}

uint64_t utils_mul_u32_u32(uint32_t a, uint32_t b)
{
    return (uint64_t)a * b;
}

uint64_t utils_mul_u64_u32_shr(uint64_t a, uint32_t mul, unsigned int shift)
{
    uint32_t ah, al;
    uint64_t ret;

    al = a;
    ah = a >> 32;

    ret = utils_mul_u32_u32(al, mul) >> shift;

    if(ah)
        ret += utils_mul_u32_u32(ah, mul) << (32 - shift);

    return ret;
}

/**
 * @brief Check big endianess of the host processor.
 * @return Big endianess status (true/false)
 */
bool utils_is_big_endian(void)
{
    uint16_t a = 0x0100;
    return (bool)*(uint8_t*)&a;
}

/* @brief Swap bytes in a buffer with a given step
 *        Swap with step of 2:
 *        AA BB CC DD EE FF 00 11 becomes
 *        BB AA DD CC FF EE 11 00
 *        Swap with step of 3:
 *        AA BB CC DD EE FF 00 11 22 becomes
 *        CC BB AA FF EE DD 22 11 00
 *        etc.
 * @param buf - Input buffer to be swapped.
 * @param bytes - Number of bytes.
 * @param step - Number of steps.
 * @return None
 */
void utils_memswap64(void* buf, uint32_t bytes, uint32_t step)
{
    uint8_t* p = buf;
    uint32_t i, j;
    uint8_t temp[8];

    if(step < 2 || step > 8 || bytes < step || bytes % step != 0)
        return;

    for(i = 0; i < bytes; i += step)
    {
        memcpy(temp, p, step);

        for(j = step; j > 0; j--)
            *p++ = temp[j - 1];
    }
}

uint32_t utils_int_sqrt(uint32_t x)
{
    uint32_t b, m, y = 0;

    if(x <= 1)
        return x;

    m = 1UL << (BITS_PER_LONG - 2);
    while(m != 0)
    {
        b = y + m;
        y >>= 1;

        if(x >= b)
        {
            x -= b;
            y += m;
        }
        m >>= 2;
    }

    return y;
}

int32_t utils_ilog2(int32_t x)
{
    int32_t A = !(!(x >> 16));
    int32_t count = 0;
    int32_t x_copy = x;

    count = count + (A << 4);

    x_copy = (((~A + 1) & (x >> 16)) + (~(~A + 1) & x));

    A = !(!(x_copy >> 8));
    count = count + (A << 3);
    x_copy = (((~A + 1) & (x_copy >> 8)) + (~(~A + 1) & x_copy));

    A = !(!(x_copy >> 4));
    count = count + (A << 2);
    x_copy = (((~A + 1) & (x_copy >> 4)) + (~(~A + 1) & x_copy));

    A = !(!(x_copy >> 2));
    count = count + (A << 1);
    x_copy = (((~A + 1) & (x_copy >> 2)) + (~(~A + 1) & x_copy));

    A = !(!(x_copy >> 1));
    count = count + A;

    return count;
}
