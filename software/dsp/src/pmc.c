#include "pmc.h"

uint32_t MAINRCO_VALUE = 12000000UL;
uint32_t SLOWRCO_VALUE = 32000UL;

uint32_t MAINCK_CLOCK_FREQ;
uint32_t SLCK_CLOCK_FREQ;
uint32_t PLLACK_CLOCK_FREQ;
uint32_t UPLLCK_CLOCK_FREQ;
uint32_t MCK_CLOCK_FREQ;
uint32_t HCLK_CLOCK_FREQ;
uint32_t PCK_CLOCK_FREQ[8];
uint32_t I2SC_GCLK_CLOCK_FREQ[2];

void pmc_init()
{
    // Bypass main xtal oscillator
    PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY;

    // Wait until clock is valid
    do
    {
        PMC->CKGR_MCFR = CKGR_MCFR_CCSS | CKGR_MCFR_RCMEAS;

        while(!(PMC->CKGR_MCFR & CKGR_MCFR_MAINFRDY));
    } while(!(PMC->CKGR_MCFR & CKGR_MCFR_MAINF_Msk));
    

}
void pmc_update_clocks()
{

}