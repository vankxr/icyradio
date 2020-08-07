#include "trng.h"

void trng_init()
{
    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (TRNG_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    TRNG->TRNG_CR = TRNG_CR_KEY_PASSWD | TRNG_CR_ENABLE;
}
uint32_t trng_pop_random()
{
    while(!TRNG->TRNG_ISR & TRNG_ISR_DATRDY);

    return TRNG->TRNG_ODATA;
}
