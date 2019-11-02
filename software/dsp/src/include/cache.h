#ifndef __CACHE_H__
#define __CACHE_H__

#include <sam.h>

#define __SCB_DCACHE_LINE_SIZE  32U /*!< Cortex-M7 cache line size is fixed to 32 bytes (8 words). See also register SCB_CCSIDR */

static inline void icache_enable()
{
    if(SCB->CCR & SCB_CCR_IC_Msk)
        return;

    __DSB();
    __ISB();

    SCB->ICIALLU = 0; // Invalidate ICache

    __DSB();
    __ISB();

    SCB->CCR |= SCB_CCR_IC_Msk; // Enable ICache

    __DSB();
    __ISB();
}

static inline void icache_disable()
{
    __DSB();
    __ISB();

    SCB->CCR &= ~SCB_CCR_IC_Msk; // Disable ICache

    SCB->ICIALLU = 0; // Invalidate ICache

    __DSB();
    __ISB();
}

static inline void icache_invalidate()
{
    __DSB();
    __ISB();

    SCB->ICIALLU = 0; // Invalidate ICache

    __DSB();
    __ISB();
}

static inline void dcache_enable()
{
    if(SCB->CCR & SCB_CCR_DC_Msk)
        return;

    SCB->CSSELR = 0; // Select level 1 DCache

    __DSB();

    // Invalidate DCache
    uint32_t ulSets = (SCB->CCSIDR & SCB_CCSIDR_NUMSETS_Msk) >> SCB_CCSIDR_NUMSETS_Pos;

    do
    {
        uint32_t ulWays = (SCB->CCSIDR & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Pos;

        do
            SCB->DCISW = ((ulSets << SCB_DCISW_SET_Pos) & SCB_DCISW_SET_Msk) | ((ulWays << SCB_DCISW_WAY_Pos) & SCB_DCISW_WAY_Msk);
        while(ulWays--);
    }
    while(ulSets--);

    __DSB();

    SCB->CCR |= SCB_CCR_DC_Msk; // Enable DCache

    __DSB();
    __ISB();
}

static inline void dcache_disable()
{
    SCB->CSSELR = 0; // Select level 1 DCache

    __DSB();

    SCB->CCR &= ~SCB_CCR_DC_Msk; // Disable DCache

    __DSB();

    // Clean and invalidate DCache
    uint32_t ulSets = (SCB->CCSIDR & SCB_CCSIDR_NUMSETS_Msk) >> SCB_CCSIDR_NUMSETS_Pos;

    do
    {
        uint32_t ulWays = (SCB->CCSIDR & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Pos;

        do
            SCB->DCCISW = ((ulSets << SCB_DCCISW_SET_Pos) & SCB_DCCISW_SET_Msk) | ((ulWays << SCB_DCCISW_WAY_Pos) & SCB_DCCISW_WAY_Msk);
        while(ulWays--);
    }
    while(ulSets--);

    __DSB();
    __ISB();
}

static inline void dcache_invalidate()
{
    SCB->CSSELR = 0; // Select level 1 DCache

    __DSB();

    // Invalidate DCache
    uint32_t ulSets = (SCB->CCSIDR & SCB_CCSIDR_NUMSETS_Msk) >> SCB_CCSIDR_NUMSETS_Pos;

    do
    {
        uint32_t ulWays = (SCB->CCSIDR & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Pos;

        do
            SCB->DCISW = ((ulSets << SCB_DCISW_SET_Pos) & SCB_DCISW_SET_Msk) | ((ulWays << SCB_DCISW_WAY_Pos) & SCB_DCISW_WAY_Msk);
        while(ulWays--);
    }
    while(ulSets--);

    __DSB();
    __ISB();
}

static inline void dcache_clean()
{
    SCB->CSSELR = 0; // Select level 1 DCache

    __DSB();

    // Clean DCache
    uint32_t ulSets = (SCB->CCSIDR & SCB_CCSIDR_NUMSETS_Msk) >> SCB_CCSIDR_NUMSETS_Pos;

    do
    {
        uint32_t ulWays = (SCB->CCSIDR & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Pos;

        do
            SCB->DCCSW = ((ulSets << SCB_DCCSW_SET_Pos) & SCB_DCCSW_SET_Msk) | ((ulWays << SCB_DCCSW_WAY_Pos) & SCB_DCCSW_WAY_Msk);
        while(ulWays--);
    }
    while(ulSets--);

    __DSB();
    __ISB();
}

static inline void dcache_clean_invalidate()
{
    SCB->CSSELR = 0; // Select level 1 DCache

    __DSB();

    // Clean and invalidate DCache
    uint32_t ulSets = (SCB->CCSIDR & SCB_CCSIDR_NUMSETS_Msk) >> SCB_CCSIDR_NUMSETS_Pos;

    do
    {
        uint32_t ulWays = (SCB->CCSIDR & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Pos;

        do
            SCB->DCCISW = ((ulSets << SCB_DCCISW_SET_Pos) & SCB_DCCISW_SET_Msk) | ((ulWays << SCB_DCCISW_WAY_Pos) & SCB_DCCISW_WAY_Msk);
        while(ulWays--);
    }
    while(ulSets--);

    __DSB();
    __ISB();
}

static inline void dcache_addr_invalidate(void *pAddr, uint32_t ulSize)
{
    if(!ulSize || (ulSize & 31))
        return;

    uint32_t ulOpAddress = (uint32_t)pAddr;
    uint32_t ulOpSize = ulSize + (ulOpAddress & 31);

    __DSB();

    do
    {
        SCB->DCIMVAC = ulOpAddress;

        ulOpAddress += 32;
        ulOpSize -= 32;
    }
    while(ulOpSize);

    __DSB();
    __ISB();
}

static inline void dcache_addr_clean(void *pAddr, uint32_t ulSize)
{
    if(!ulSize || (ulSize & 31))
        return;

    uint32_t ulOpAddress = (uint32_t)pAddr;
    uint32_t ulOpSize = ulSize + (ulOpAddress & 31);

    __DSB();

    do
    {
        SCB->DCCMVAC = ulOpAddress;

        ulOpAddress += 32;
        ulOpSize -= 32;
    }
    while(ulOpSize);

    __DSB();
    __ISB();
}

static inline void dcache_addr_clean_invalidate(void *pAddr, uint32_t ulSize)
{
    if(!ulSize || (ulSize & 31))
        return;

    uint32_t ulOpAddress = (uint32_t)pAddr;
    uint32_t ulOpSize = ulSize + (ulOpAddress & 31);

    __DSB();

    do
    {
        SCB->DCCIMVAC = ulOpAddress;

        ulOpAddress += 32;
        ulOpSize -= 32;
    }
    while(ulOpSize);

    __DSB();
    __ISB();
}

#endif  // __CACHE_H__
