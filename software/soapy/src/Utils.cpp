#include "Utils.hpp"

uint64_t Utils::GetGCD(uint64_t a, uint64_t b)
{
    if((a == 0) || (b == 0))
        return MAX(a, b);

    while(b)
    {
        uint64_t _a = a;

        a = b;
        b = _a % b;
    }

    return a;
}
uint64_t Utils::GetLCM(uint64_t a, uint64_t b)
{
    if((a == 0) || (b == 0))
        return 0;

    return (a * b) / Utils::GetGCD(a, b);
}
uint64_t Utils::GetMixedNumber(uint64_t &a, uint64_t &b)
{
    uint64_t gcd = Utils::GetGCD(a, b);
    uint64_t _a = a / gcd;
    uint64_t _b = b / gcd;

    a = _a % _b;
    b = _b;

    return _a / _b;
}

uint32_t Utils::FindFirstSetBit(uint32_t word)
{
    uint32_t i = 0;

    while(word)
    {
        if(word & 1)
            return i;

        word >>= 1;
        i++;
    }

    return 32;
}
uint32_t Utils::FindLastSetBit(uint32_t word)
{
    uint32_t bit = 32;
    uint32_t i = 0;

    while(word)
    {
        if(word & 1)
            bit = i;

        word >>= 1;
        i++;
    }

    return bit;
}

uint64_t Utils::DoDiv(uint64_t* n, uint64_t base)
{
    uint64_t mod = 0;

    mod = *n % base;
    *n = *n / base;

    return mod;
}

uint32_t Utils::IntSqrt(uint32_t x)
{
    uint32_t b, m, y = 0;

    if(x <= 1)
        return x;

    m = 1UL << (32 - 2);

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
int32_t Utils::Ilog2(int32_t x)
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


uint16_t Utils::IntToSIF1_1_14(int32_t val)
{
    if(val < -1999969)
        return 0xFFFF;

    if(val > 1999969)
        return 0x7FFF;

    uint32_t frac = (val < 0) ? BIT(15) : 0; // Handle sign

    val = ABS(val);

    if(val >= 1000000L)
        frac |= BIT(14); // Integer part

    uint64_t _val = (val % 1000000L) << 14;

    return frac | ((_val + (1000000UL / 2)) / 1000000UL);
}
uint16_t Utils::ToSIF1_1_14(double val)
{
    if(val < -1.999939)
        return 0xFFFF;

    if(val > 1.999939)
        return 0x7FFF;

    uint32_t frac = (val < 0) ? BIT(15) : 0; // Handle sign

    val = ABS(val);

    if(val >= 1)
        frac |= BIT(14); // Integer part

    uint16_t _val = (val - 1) * (double)BIT(14);

    return frac | (_val & 0x3FFF);
}
int32_t Utils::IntFromSIF1_1_14(uint16_t val)
{
    uint16_t frac = val & 0x3FFF;
    int32_t _val = (frac * 1000000ULL + (0x4000 / 2)) / 0x4000;

    if(val & BIT(14))
        _val += 1000000L;

    if(val & BIT(15))
        _val = -_val;

    return _val;
}
double Utils::FromSIF1_1_14(uint16_t val)
{
    uint16_t frac = val & 0x3FFF;
    double _val = (double)frac / (double)BIT(14);

    if(val & BIT(14))
        _val += 1;

    if(val & BIT(15))
        _val = -_val;

    return _val;
}