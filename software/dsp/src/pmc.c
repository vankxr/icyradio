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

    // Switch MAINCK to main xtal oscillator
    PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCSEL;

    // Wait for it to be selected
    while(!(PMC->PMC_SR & PMC_SR_MOSCSELS));

    // Wait until clock is valid
    do
    {
        PMC->CKGR_MCFR = CKGR_MCFR_CCSS | CKGR_MCFR_RCMEAS;

        while(!(PMC->CKGR_MCFR & CKGR_MCFR_MAINFRDY));
    } while(!(PMC->CKGR_MCFR & CKGR_MCFR_MAINF_Msk));

    // Setup and enable PLLA to output 300 MHz, 63 SCLK cycles to lock
    PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | (((300000000UL / MAINXO_VALUE) - 1) << CKGR_PLLAR_MULA_Pos) | (63 << CKGR_PLLAR_PLLACOUNT_Pos) | CKGR_PLLAR_DIVA_BYPASS;

    // Wait for it to be locked
    while(!(PMC->PMC_SR & PMC_SR_LOCKA));

    // Setup HCLK and MCK dividers
    PMC->PMC_MCKR = (PMC->PMC_MCKR & PMC_MCKR_CSS_Msk) | PMC_MCKR_UPLLDIV2 | PMC_MCKR_MDIV_PCK_DIV2 | PMC_MCKR_PRES_CLK_1;

    // Wait for them to be ready
    while(!(PMC->PMC_SR & PMC_SR_MCKRDY));

    // Switch HCLK and MCK to PLLA clock
    PMC->PMC_MCKR = (PMC->PMC_MCKR & ~PMC_MCKR_CSS_Msk) | PMC_MCKR_CSS_PLLA_CLK;

    // Wait for it to be selected
    while(!(PMC->PMC_SR & PMC_SR_MCKRDY));
}
void pmc_update_clocks()
{
    switch(SUPC->SUPC_SR & SUPC_SR_OSCSEL_Msk)
    {
        case SUPC_SR_OSCSEL_RC:
            SLCK_CLOCK_FREQ = SLOWRCO_VALUE;
        break;
        case SUPC_SR_OSCSEL_CRYST:
            SLCK_CLOCK_FREQ = SLOWXO_VALUE;
        break;
    }

    switch(PMC->CKGR_MOR & CKGR_MOR_MOSCSEL_Msk)
    {
        case 0:
            MAINCK_CLOCK_FREQ = MAINRCO_VALUE;
        break;
        case CKGR_MOR_MOSCSEL:
            MAINCK_CLOCK_FREQ = MAINXO_VALUE;
        break;
    }

    float fPLLADiv = (PMC->CKGR_PLLAR & CKGR_PLLAR_DIVA_Msk) >> CKGR_PLLAR_DIVA_Pos;
    float fPLLAMul = (PMC->CKGR_PLLAR & CKGR_PLLAR_MULA_Msk) >> CKGR_PLLAR_MULA_Pos;

    if(fPLLADiv == 0 || fPLLAMul == 0)
        PLLACK_CLOCK_FREQ = 0UL;
    else
        PLLACK_CLOCK_FREQ = ((float)MAINCK_CLOCK_FREQ / fPLLADiv) * (fPLLAMul - 1);

    if(!(PMC->CKGR_UCKR & CKGR_UCKR_UPLLEN))
        UPLLCK_CLOCK_FREQ = 0UL;
    else
        UPLLCK_CLOCK_FREQ = 480000000UL;

    switch(PMC->PMC_MCKR & PMC_MCKR_CSS_Msk)
    {
        case PMC_MCKR_CSS_SLOW_CLK:
            HCLK_CLOCK_FREQ = SLCK_CLOCK_FREQ;
        break;
        case PMC_MCKR_CSS_MAIN_CLK:
            HCLK_CLOCK_FREQ = MAINCK_CLOCK_FREQ;
        break;
        case PMC_MCKR_CSS_UPLL_CLK:
            HCLK_CLOCK_FREQ = UPLLCK_CLOCK_FREQ;
        break;
        case PMC_MCKR_CSS_PLLA_CLK:
            HCLK_CLOCK_FREQ = PLLACK_CLOCK_FREQ;
        break;
    }

    switch(PMC->PMC_MCKR & PMC_MCKR_PRES_Msk)
    {
        case PMC_MCKR_PRES_CLK_1:
            HCLK_CLOCK_FREQ >>= 0;
        break;
        case PMC_MCKR_PRES_CLK_2:
            HCLK_CLOCK_FREQ >>= 1;
        break;
        case PMC_MCKR_PRES_CLK_4:
            HCLK_CLOCK_FREQ >>= 2;
        break;
        case PMC_MCKR_PRES_CLK_8:
            HCLK_CLOCK_FREQ >>= 3;
        break;
        case PMC_MCKR_PRES_CLK_16:
            HCLK_CLOCK_FREQ >>= 4;
        break;
        case PMC_MCKR_PRES_CLK_32:
            HCLK_CLOCK_FREQ >>= 5;
        break;
        case PMC_MCKR_PRES_CLK_3:
            HCLK_CLOCK_FREQ /= 3;
        break;
    }

    MCK_CLOCK_FREQ = HCLK_CLOCK_FREQ;

    switch(PMC->PMC_MCKR & PMC_MCKR_MDIV_Msk)
    {
        case PMC_MCKR_MDIV_EQ_PCK:
            MCK_CLOCK_FREQ >>= 0;
        break;
        case PMC_MCKR_MDIV_PCK_DIV2:
            MCK_CLOCK_FREQ >>= 1;
        break;
        case PMC_MCKR_MDIV_PCK_DIV4:
            MCK_CLOCK_FREQ >>= 2;
        break;
        case PMC_MCKR_MDIV_PCK_DIV3:
            MCK_CLOCK_FREQ /= 3;
        break;
    }

    for(uint8_t i = 0; i < 8; i++)
    {
        if(!(PMC->PMC_SR & BIT(i + 8)))
        {
            PCK_CLOCK_FREQ[i] = 0UL;

            continue;
        }

        switch(PMC->PMC_PCK[i] & PMC_PCK_CSS_Msk)
        {
            case PMC_PCK_CSS_SLOW_CLK:
                PCK_CLOCK_FREQ[i] = SLCK_CLOCK_FREQ;
            break;
            case PMC_PCK_CSS_MAIN_CLK:
                PCK_CLOCK_FREQ[i] = MAINCK_CLOCK_FREQ;
            break;
            case PMC_PCK_CSS_UPLL_CLK:
                PCK_CLOCK_FREQ[i] = UPLLCK_CLOCK_FREQ >> !!(PMC->PMC_MCKR & PMC_MCKR_UPLLDIV2);
            break;
            case PMC_PCK_CSS_PLLA_CLK:
                PCK_CLOCK_FREQ[i] = PLLACK_CLOCK_FREQ;
            break;
            case PMC_PCK_CSS_MCK:
                PCK_CLOCK_FREQ[i] = MCK_CLOCK_FREQ;
            break;
        }

        PCK_CLOCK_FREQ[i] /= ((PMC->PMC_PCK[i] & PMC_PCK_PRES_Msk) >> PMC_PCK_PRES_Pos) + 1;
    }

    for(uint8_t i = 0; i < 2; i++)
    {
        PMC->PMC_PCR = ((69 + i) << PMC_PCR_PID_Pos);

        if(!(PMC->PMC_PCR & PMC_PCR_GCLKEN))
        {
            I2SC_GCLK_CLOCK_FREQ[i] = 0UL;

            continue;
        }

        switch(PMC->PMC_PCR & PMC_PCR_GCLKCSS_Msk)
        {
            case PMC_PCR_GCLKCSS_SLOW_CLK:
                I2SC_GCLK_CLOCK_FREQ[i] = SLCK_CLOCK_FREQ;
            break;
            case PMC_PCR_GCLKCSS_MAIN_CLK:
                I2SC_GCLK_CLOCK_FREQ[i] = MAINCK_CLOCK_FREQ;
            break;
            case PMC_PCR_GCLKCSS_PLLA_CLK:
                I2SC_GCLK_CLOCK_FREQ[i] = UPLLCK_CLOCK_FREQ >> !!(PMC->PMC_MCKR & PMC_MCKR_UPLLDIV2);
            break;
            case PMC_PCR_GCLKCSS_UPLL_CLK:
                I2SC_GCLK_CLOCK_FREQ[i] = PLLACK_CLOCK_FREQ;
            break;
            case PMC_PCR_GCLKCSS_MCK_CLK:
                I2SC_GCLK_CLOCK_FREQ[i] = MCK_CLOCK_FREQ;
            break;
        }

        I2SC_GCLK_CLOCK_FREQ[i] /= ((PMC->PMC_PCR & PMC_PCR_GCLKDIV_Msk) >> PMC_PCR_GCLKDIV_Pos) + 1;
    }
}