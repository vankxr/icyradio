#include "sysctrl.h"

uint32_t SYSCTRL_XOSC_CLOCK_FREQ;
uint32_t SYSCTRL_OSC8M_CLOCK_FREQ;
uint32_t SYSCTRL_DFLL48M_CLOCK_FREQ;

void sysctrl_init()
{
    // Enable Bandgap and Temperature Sensor
    SYSCTRL_REGS->SYSCTRL_VREF |= SYSCTRL_VREF_TSEN_Msk | SYSCTRL_VREF_BGOUTEN_Msk;

    // OSC8M at 8 MHz
    SYSCTRL_REGS->SYSCTRL_OSC8M &= ~SYSCTRL_OSC8M_PRESC_Msk;

    // DFLL in open loop mode
    sysctrl_dfll48m_config(1, 0, 0, 0, 0, 0, 0);

    // Update Clocks
    sysctrl_update_clocks();
}
void sysctrl_update_clocks()
{
    if(SYSCTRL_REGS->SYSCTRL_OSC8M & SYSCTRL_OSC8M_ENABLE_Msk)
        SYSCTRL_OSC8M_CLOCK_FREQ = 8000000UL >> ((SYSCTRL_REGS->SYSCTRL_OSC8M & SYSCTRL_OSC8M_PRESC_Msk) >> SYSCTRL_OSC8M_PRESC_Pos);
    else
        SYSCTRL_OSC8M_CLOCK_FREQ = 0;

    if(SYSCTRL_REGS->SYSCTRL_DFLLCTRL & SYSCTRL_DFLLCTRL_ENABLE_Msk)
    {
        if(SYSCTRL_REGS->SYSCTRL_DFLLCTRL & SYSCTRL_DFLLCTRL_MODE_Msk)
        {
            uint32_t ulRef = GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_DFLL48M_Val];
            uint16_t usMul = SYSCTRL_REGS->SYSCTRL_DFLLMUL & SYSCTRL_DFLLMUL_MUL_Msk;

            SYSCTRL_DFLL48M_CLOCK_FREQ = ulRef * usMul;
        }
        else
        {
            SYSCTRL_DFLL48M_CLOCK_FREQ = 48000000UL;
        }
    }
    else
    {
        SYSCTRL_DFLL48M_CLOCK_FREQ = 0;
    }
}

void sysctrl_osc8m_config(uint8_t ubEnable, uint8_t ubPresc)
{
    if(ubEnable)
        SYSCTRL_REGS->SYSCTRL_OSC8M = (SYSCTRL_REGS->SYSCTRL_OSC8M & ~SYSCTRL_OSC8M_PRESC_Msk) | (ubPresc << SYSCTRL_OSC8M_PRESC_Pos) | SYSCTRL_OSC8M_ENABLE_Msk;
    else
        SYSCTRL_REGS->SYSCTRL_OSC8M &= ~SYSCTRL_OSC8M_ENABLE_Msk;
}
void sysctrl_dfll48m_config(uint8_t ubEnable, uint8_t ubClosedLoop, uint16_t usMult, uint8_t ubCoarse, uint16_t usFine, uint8_t ubCoarseStep, uint16_t usFineStep)
{
    if(!ubEnable)
    {
        SYSCTRL_REGS->SYSCTRL_DFLLCTRL &= ~SYSCTRL_DFLLCTRL_ENABLE_Msk;

        return;
    }

    if(ubClosedLoop)
    {
        if(ubCoarse > BIT(6) - 1)
            return;

        if(usFine > BIT(10) - 1)
            return;

        if(ubCoarseStep > BIT(5) - 1)
            return;

        if(usFineStep > BIT(9) - 1)
            return;

        SYSCTRL_REGS->SYSCTRL_DFLLCTRL = SYSCTRL_DFLLCTRL_ENABLE_Msk;
        SYSCTRL_REGS->SYSCTRL_DFLLVAL = SYSCTRL_DFLLVAL_COARSE(ubCoarse) | SYSCTRL_DFLLVAL_FINE(usFine);
        SYSCTRL_REGS->SYSCTRL_DFLLMUL = SYSCTRL_DFLLMUL_CSTEP(ubCoarseStep) | SYSCTRL_DFLLMUL_FSTEP(usFineStep) | SYSCTRL_DFLLMUL_MUL(usMult);
        SYSCTRL_REGS->SYSCTRL_DFLLCTRL = SYSCTRL_DFLLCTRL_QLDIS_Msk | SYSCTRL_DFLLCTRL_MODE_Msk | SYSCTRL_DFLLCTRL_ENABLE_Msk;

        while(!(SYSCTRL_REGS->SYSCTRL_PCLKSR & SYSCTRL_PCLKSR_DFLLLCKC_Msk));
        while(!(SYSCTRL_REGS->SYSCTRL_PCLKSR & SYSCTRL_PCLKSR_DFLLLCKF_Msk));
    }
    else
    {
        uint8_t ubCoarse = (OTP4_FUSES_REGS->FUSES_OTP4_WORD_1 & FUSES_OTP4_WORD_1_DFLL48M_COARSE_CAL_Msk) >> FUSES_OTP4_WORD_1_DFLL48M_COARSE_CAL_Pos;
        uint16_t usFine = (OTP4_FUSES_REGS->FUSES_OTP4_WORD_2 & FUSES_OTP4_WORD_2_DFLL48M_FINE_CAL_Msk) >> FUSES_OTP4_WORD_2_DFLL48M_FINE_CAL_Pos;

        SYSCTRL_REGS->SYSCTRL_DFLLCTRL = SYSCTRL_DFLLCTRL_ENABLE_Msk;
        SYSCTRL_REGS->SYSCTRL_DFLLVAL = SYSCTRL_DFLLVAL_COARSE(ubCoarse) | SYSCTRL_DFLLVAL_FINE(usFine);
        SYSCTRL_REGS->SYSCTRL_DFLLCTRL + SYSCTRL_DFLLCTRL_STABLE_Msk | SYSCTRL_DFLLCTRL_ENABLE_Msk;
    }
}