#pragma once

#include <cstdint>
#include <vector>
#include <utility>
#include <cstddef>

// AXI Core versioning
#define AXI_CORE_VERSION(maj, min, patch)   (((maj) << 16) | ((min) << 8) | (patch))
#define AXI_CORE_VERSION_MAJOR(v)           ((v) >> 16)
#define AXI_CORE_VERSION_MINOR(v)           (((v) >> 8) & 0xFF)
#define AXI_CORE_VERSION_PATCH(v)           ((v) & 0xFF)

#define BIT(x) (1UL << (x))

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
namespace Utils
{
    // Get greatest common divisor of two numbers
    uint64_t GetGCD(uint64_t a, uint64_t b);
    // Get least common multiple of two numbers
    uint64_t GetLCM(uint64_t a, uint64_t b);
    // Get mixed number from two numbers (a / b -> return value + a % b / b)
    uint64_t GetMixedNumber(uint64_t &a, uint64_t &b);

    // Find first set bit in word
    uint32_t FindFirstSetBit(uint32_t word);
    // Find last set bit in word
    uint32_t FindLastSetBit(uint32_t word);

    // Locate the closest element in an array
    uint32_t FindClosest(int32_t val, const int32_t *array, uint32_t size);
    // Shift the value and apply the specified mask
    uint32_t FieldPrep(uint32_t mask, uint32_t val);
    // Get a field specified by a mask from a word
    uint32_t FieldGet(uint32_t mask, uint32_t word);
    // Log base 2 of the given number
    int32_t LogBase2(uint32_t x);
    // Find greatest common divisor of the given two numbers
    uint32_t GreatestCommonDivisor(uint32_t a, uint32_t b);
    // Find lowest common multiple of the given two numbers
    uint32_t LowestCommonMultiple(uint32_t a, uint32_t b);
    // Calculate best rational approximation for a given fraction
    void RationalBestApproximation(uint32_t givenNumerator, uint32_t givenDenominator, uint32_t maxNumerator, uint32_t maxDenominator, uint32_t *bestNumerator, uint32_t *bestDenominator);
    // Calculate the number of set bits (8-bit size)
    unsigned int Hweight8(uint8_t word);
    // Calculate the number of set bits (16-bit size)
    unsigned int Hweight16(uint16_t word);
    // Calculate the number of set bits (32-bit size)
    unsigned int Hweight32(uint32_t word);
    // Calculate the quotient and the remainder of an integer division
    uint64_t DoDiv(uint64_t* n, uint64_t base);
    // Unsigned 64bit divide with 64bit divisor and remainder
    uint64_t Div64U64Rem(uint64_t dividend, uint64_t divisor, uint64_t *remainder);
    // Unsigned 64bit divide with 32bit divisor with remainder
    uint64_t DivU64Rem(uint64_t dividend, uint32_t divisor, uint32_t *remainder);
    int64_t DivS64Rem(int64_t dividend, int32_t divisor, int32_t *remainder);
    // Unsigned 64bit divide with 32bit divisor
    uint64_t DivU64(uint64_t dividend, uint32_t divisor);
    int64_t DivS64(int64_t dividend, int32_t divisor);
    // Converts from string to int32_t
    int32_t StrToInt32(const char *str);
    // Converts from string to uint32_t
    uint32_t StrToUint32(const char *str);

    void PutUnalignedBe16(uint16_t val, uint8_t *buf);
    uint16_t GetUnalignedBe16(uint8_t *buf);
    void PutUnalignedLe16(uint16_t val, uint8_t *buf);
    uint16_t GetUnalignedLe16(uint8_t *buf);
    void PutUnalignedBe24(uint32_t val, uint8_t *buf);
    uint32_t GetUnalignedBe24(uint8_t *buf);
    void PutUnalignedLe24(uint32_t val, uint8_t *buf);
    uint32_t GetUnalignedLe24(uint8_t *buf);
    void PutUnalignedBe32(uint32_t val, uint8_t *buf);
    uint32_t GetUnalignedBe32(uint8_t *buf);
    void PutUnalignedLe32(uint32_t val, uint8_t *buf);
    uint32_t GetUnalignedLe32(uint8_t *buf);

    int16_t SignExtend16(uint16_t value, int index);
    int32_t SignExtend32(uint32_t value, int index);
    uint64_t MulU32U32(uint32_t a, uint32_t b);
    uint64_t MulU64U32Shr(uint64_t a, uint32_t mul, unsigned int shift);

    bool IsBigEndian(void);
    void Memswap64(void *buf, uint32_t bytes, uint32_t step);

    uint32_t IntSqrt(uint32_t x);
    int32_t Ilog2(int32_t x);

    uint16_t IntToSIF1_1_14(int32_t val); // Fractional part is in micro units
    uint16_t ToSIF1_1_14(double val);
    int32_t IntFromSIF1_1_14(uint16_t val); // Fractional part is in micro units
    double FromSIF1_1_14(uint16_t val);

    template<typename T>
    std::pair<size_t, size_t> FindLongestSequence(std::vector<T> &vec, T value)
    {
        size_t cnt = 0;
        size_t max_cnt = 0;
        size_t start = 0;
        size_t max_start = 0;

        for(size_t i = 0; i < vec.size(); i++)
        {
            if(vec[i] == value)
            {
                if(cnt == 0)
                    start = i;

                cnt++;
            }
            else
            {
                if(cnt > max_cnt)
                {
                    max_cnt = cnt;
                    max_start = start;
                }

                cnt = 0;
            }
        }

        if(cnt > max_cnt)
        {
            max_cnt = cnt;
            max_start = start;
        }

        return std::make_pair(max_start, max_cnt);
    }
}