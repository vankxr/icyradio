#include "gclk.h"

uint32_t GCLK_IN_CLOCK_FREQ[8];
uint32_t GCLK_GEN_CLOCK_FREQ[8];
uint32_t GCLK_CLOCK_FREQ[GCLK_NUM_GCLKS];

void gclk_init()
{
    gclk_gen_config(0, 1, GCLK_GENCTRL_IDC_Msk, GCLK_GENCTRL_SRC_DFLL48M_Val, 1); // GCLK0 at 48 MHz
    gclk_gen_config(2, 1, GCLK_GENCTRL_IDC_Msk, GCLK_GENCTRL_SRC_OSCULP32K_Val, 1); // GCLK2 at 32.768 kHz
    gclk_gen_config(3, 1, GCLK_GENCTRL_IDC_Msk, GCLK_GENCTRL_SRC_OSC8M_Val, 1); // GCLK3 at 8 MHz

    gclk_clk_config(GCLK_CLKCTRL_ID_WDT_Val, 1, 2); // Clock for WDT
    gclk_clk_config(GCLK_CLKCTRL_ID_SERCOM0_CORE_Val, 1, 0); // Clock for SERCOM0 Core
    gclk_clk_config(GCLK_CLKCTRL_ID_SERCOM1_CORE_Val, 1, 0); // Clock for SERCOM1 Core
    gclk_clk_config(GCLK_CLKCTRL_ID_SERCOM3_CORE_Val, 1, 0); // Clock for SERCOM3 Core
    gclk_clk_config(GCLK_CLKCTRL_ID_SERCOMX_SLOW_Val, 1, 2); // Clock for SERCOMx slow
    gclk_clk_config(GCLK_CLKCTRL_ID_ADC_Val, 1, 3); // Clock for ADC

    // Update Clocks
    gclk_update_clocks();
}
void gclk_update_clocks()
{
    // Calculate GCLK generator frequencies
    // First determine GCLK1, since it can be used as source for other generators
    for(uint8_t i = 1; i < 8; i = (i == 1) ? 0 : ((i == 0) ? 2 : (i + 1)))
    {
        uint32_t ulCtrl;

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            *(volatile uint8_t *)&GCLK_REGS->GCLK_GENCTRL = i;

            while(GCLK_REGS->GCLK_STATUS & GCLK_STATUS_SYNCBUSY_Msk);

            ulCtrl = GCLK_REGS->GCLK_GENCTRL;
        }

        uint32_t ulSrcFreq = 0;

        switch(ulCtrl & GCLK_GENCTRL_SRC_Msk)
        {
            case GCLK_GENCTRL_SRC_XOSC:
                ulSrcFreq = SYSCTRL_XOSC_CLOCK_FREQ;
            break;
            case GCLK_GENCTRL_SRC_GCLKIN:
                ulSrcFreq = GCLK_IN_CLOCK_FREQ[i];
            break;
            case GCLK_GENCTRL_SRC_GCLKGEN1:
                ulSrcFreq = GCLK_GEN_CLOCK_FREQ[1];
            break;
            case GCLK_GENCTRL_SRC_OSCULP32K:
            case GCLK_GENCTRL_SRC_OSC32K:
            case GCLK_GENCTRL_SRC_XOSC32K:
                ulSrcFreq = 32768;
            break;
            case GCLK_GENCTRL_SRC_OSC8M:
                ulSrcFreq = SYSCTRL_OSC8M_CLOCK_FREQ;
            break;
            case GCLK_GENCTRL_SRC_DFLL48M:
                ulSrcFreq = SYSCTRL_DFLL48M_CLOCK_FREQ;
            break;
        }

        if(!ulSrcFreq)
        {
            GCLK_GEN_CLOCK_FREQ[i] = 0;

            continue;
        }

        uint16_t usDiv;

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            *(volatile uint8_t *)&GCLK_REGS->GCLK_GENDIV = i;

            while(GCLK_REGS->GCLK_STATUS & GCLK_STATUS_SYNCBUSY_Msk);

            usDiv = (GCLK_REGS->GCLK_GENDIV & GCLK_GENDIV_DIV_Msk) >> GCLK_GENDIV_DIV_Pos;
        }

        if(ulCtrl & GCLK_GENCTRL_DIVSEL_Msk)
        {
            GCLK_GEN_CLOCK_FREQ[i] = ulSrcFreq / (1UL << (usDiv + 1));
        }
        else
        {
            if(!usDiv)
                usDiv = 1;

            GCLK_GEN_CLOCK_FREQ[i] = ulSrcFreq / usDiv;
        }
    }

    // Calculate GCLK frequencies
    for(uint8_t i = 0; i < GCLK_NUM_GCLKS; i++)
    {
        uint32_t ulCtrl;

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            *(volatile uint8_t *)&GCLK_REGS->GCLK_CLKCTRL = i;

            while(GCLK_REGS->GCLK_STATUS & GCLK_STATUS_SYNCBUSY_Msk);

            ulCtrl = GCLK_REGS->GCLK_CLKCTRL;
        }

        uint8_t ubGen = (ulCtrl & GCLK_CLKCTRL_GEN_Msk) >> GCLK_CLKCTRL_GEN_Pos;

        GCLK_CLOCK_FREQ[i] = GCLK_GEN_CLOCK_FREQ[ubGen];
    }
}

void gclk_gen_config(uint8_t ubID, uint8_t ubEnable, uint32_t ulConfig, uint8_t ubSource, uint32_t ulDivider)
{
    static const uint32_t ulMaxDiv[8] = {BIT(8), BIT(16), BIT(5), BIT(8), BIT(8), BIT(8), BIT(8), BIT(8)}; // DIVSEL = 0

    if(ubID > 7)
        return;

    if(!ulDivider)
        return;

    if(!ubEnable)
    {
        GCLK_REGS->GCLK_GENCTRL = ubID; // GENEN = 0

        return;
    }

    switch(ubSource)
    {
        case GCLK_GENCTRL_SRC_XOSC_Val:
        case GCLK_GENCTRL_SRC_GCLKIN_Val:
        case GCLK_GENCTRL_SRC_GCLKGEN1_Val:
        case GCLK_GENCTRL_SRC_OSCULP32K_Val:
        case GCLK_GENCTRL_SRC_OSC32K_Val:
        case GCLK_GENCTRL_SRC_XOSC32K_Val:
        case GCLK_GENCTRL_SRC_OSC8M_Val:
        case GCLK_GENCTRL_SRC_DFLL48M_Val:
        break;
        default:
            return;
    }

    ulConfig &= GCLK_GENCTRL_RUNSTDBY_Msk | GCLK_GENCTRL_OE_Msk | GCLK_GENCTRL_OOV_Msk | GCLK_GENCTRL_IDC_Msk;

    uint16_t usDiv = 0;

    if(ulDivider < ulMaxDiv[ubID])
    {
        usDiv = ulDivider;
    }
    else
    {
        for(usDiv = 0; usDiv < 31; usDiv++) // Theoretically, some dividers can go up to (1 << 256), but that is impractical
        {
            if(ulDivider == BIT(usDiv + 1))
                break;
        }

        if(usDiv == 31)
            return;

        ulConfig |= GCLK_GENCTRL_DIVSEL_Msk;
    }

    GCLK_REGS->GCLK_GENDIV = ubID | GCLK_GENDIV_DIV(usDiv);
    GCLK_REGS->GCLK_GENCTRL = ubID | ulConfig | GCLK_GENCTRL_GENEN_Msk | GCLK_GENCTRL_SRC(ubSource);

    while(GCLK_REGS->GCLK_STATUS & GCLK_STATUS_SYNCBUSY_Msk);
}
void gclk_clk_config(uint8_t ubID, uint8_t ubEnable, uint8_t ubSource)
{
    if(ubID >= GCLK_NUM_GCLKS)
        return;

    if(!ubEnable)
    {
        GCLK_REGS->GCLK_CLKCTRL = ubID; // CLKEN = 0

        return;
    }

    if(ubSource > 7)
        return;

    GCLK_REGS->GCLK_CLKCTRL = ubID | GCLK_CLKCTRL_CLKEN_Msk | GCLK_CLKCTRL_GEN(ubSource);

    while(GCLK_REGS->GCLK_STATUS & GCLK_STATUS_SYNCBUSY_Msk);
}