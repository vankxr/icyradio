#include "trng.h"

void trng_init()
{
    pmc_peripheral_clock_gate(TRNG_CLOCK_ID, 1); // Enable peripheral clock

    TRNG->TRNG_CR = TRNG_CR_KEY_PASSWD | TRNG_CR_ENABLE;
}
uint32_t trng_pop_random()
{
    while(!TRNG->TRNG_ISR & TRNG_ISR_DATRDY);

    return TRNG->TRNG_ODATA;
}
