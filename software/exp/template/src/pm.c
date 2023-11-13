#include "pm.h"

uint32_t PM_MAIN_CLOCK_FREQ;
uint32_t PM_CPU_CLOCK_FREQ;
uint32_t PM_AHB_CLOCK_FREQ;
uint32_t PM_APBA_CLOCK_FREQ;
uint32_t PM_APBB_CLOCK_FREQ;
uint32_t PM_APBC_CLOCK_FREQ;

void pm_init()
{
    // Configure clock tree
    pm_cpu_ahb_clock_config(1); // GCLK_MAIN / 1
    pm_apba_clock_config(1); // GCLK_MAIN / 1
    pm_apbb_clock_config(1); // GCLK_MAIN / 1
    pm_apbc_clock_config(1); // GCLK_MAIN / 1

    // Update Clocks
    pm_update_clocks();
}
void pm_update_clocks()
{
    if(PM_REGS->PM_CTRL & BIT(4)) // BKUPCLK
        PM_MAIN_CLOCK_FREQ = SYSCTRL_OSC8M_CLOCK_FREQ;
    else
        PM_MAIN_CLOCK_FREQ = GCLK_GEN_CLOCK_FREQ[0];

    PM_CPU_CLOCK_FREQ = PM_MAIN_CLOCK_FREQ >> (PM_REGS->PM_CPUSEL & PM_CPUSEL_CPUDIV_Msk);
    PM_AHB_CLOCK_FREQ = PM_CPU_CLOCK_FREQ;
    PM_APBA_CLOCK_FREQ = PM_MAIN_CLOCK_FREQ >> (PM_REGS->PM_APBASEL & PM_APBASEL_APBADIV_Msk);
    PM_APBB_CLOCK_FREQ = PM_MAIN_CLOCK_FREQ >> (PM_REGS->PM_APBBSEL & PM_APBBSEL_APBBDIV_Msk);
    PM_APBC_CLOCK_FREQ = PM_MAIN_CLOCK_FREQ >> (PM_REGS->PM_APBCSEL & PM_APBCSEL_APBCDIV_Msk);
}

uint8_t pm_get_reset_reason()
{
    return PM_REGS->PM_RCAUSE & PM_RCAUSE_Msk;
}
const char *pm_get_reset_reason_string(uint8_t ubResetReason)
{
    switch(ubResetReason)
    {
        case PM_RCAUSE_POR_Msk:
            return "Power On Reset";
        case PM_RCAUSE_BOD12_Msk:
            return "Core 1.2V Brown Out Reset";
        case PM_RCAUSE_BOD33_Msk:
            return "3.3V Brown Out Reset";
        case PM_RCAUSE_EXT_Msk:
            return "External Reset Pin";
        case PM_RCAUSE_WDT_Msk:
            return "Watchdog Reset";
        case PM_RCAUSE_SYST_Msk:
            return "System Reset Request";
    }

    return "Unknown";
}

void pm_cpu_ahb_clock_config(uint8_t ubPrescaler)
{
    switch(ubPrescaler)
    {
        case 1:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV1;
        break;
        case 2:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV2;
        break;
        case 4:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV4;
        break;
        case 8:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV8;
        break;
        case 16:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV16;
        break;
        case 32:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV32;
        break;
        case 64:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV64;
        break;
        case 128:
            PM_REGS->PM_CPUSEL = PM_CPUSEL_CPUDIV_DIV128;
        break;
    }
}
void pm_apba_clock_config(uint8_t ubPrescaler)
{
    switch(ubPrescaler)
    {
        case 1:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV1;
        break;
        case 2:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV2;
        break;
        case 4:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV4;
        break;
        case 8:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV8;
        break;
        case 16:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV16;
        break;
        case 32:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV32;
        break;
        case 64:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV64;
        break;
        case 128:
            PM_REGS->PM_APBASEL = PM_APBASEL_APBADIV_DIV128;
        break;
    }
}
void pm_apbb_clock_config(uint8_t ubPrescaler)
{
    switch(ubPrescaler)
    {
        case 1:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV1;
        break;
        case 2:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV2;
        break;
        case 4:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV4;
        break;
        case 8:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV8;
        break;
        case 16:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV16;
        break;
        case 32:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV32;
        break;
        case 64:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV64;
        break;
        case 128:
            PM_REGS->PM_APBBSEL = PM_APBBSEL_APBBDIV_DIV128;
        break;
    }
}
void pm_apbc_clock_config(uint8_t ubPrescaler)
{
    switch(ubPrescaler)
    {
        case 1:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV1;
        break;
        case 2:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV2;
        break;
        case 4:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV4;
        break;
        case 8:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV8;
        break;
        case 16:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV16;
        break;
        case 32:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV32;
        break;
        case 64:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV64;
        break;
        case 128:
            PM_REGS->PM_APBCSEL = PM_APBCSEL_APBCDIV_DIV128;
        break;
    }
}

void pm_ahb_clock_gate(uint32_t ulMask, uint8_t ubEnable)
{
    if(ubEnable)
        PM_REGS->PM_AHBMASK |= (ulMask & PM_AHBMASK_Msk);
    else
        PM_REGS->PM_AHBMASK &= ~(ulMask & PM_AHBMASK_Msk);
}
void pm_apba_clock_gate(uint32_t ulMask, uint8_t ubEnable)
{
    if(ubEnable)
        PM_REGS->PM_APBAMASK |= (ulMask & PM_APBAMASK_Msk);
    else
        PM_REGS->PM_APBAMASK &= ~(ulMask & PM_APBAMASK_Msk);
}
void pm_apbb_clock_gate(uint32_t ulMask, uint8_t ubEnable)
{
    if(ubEnable)
        PM_REGS->PM_APBBMASK |= (ulMask & PM_APBBMASK_Msk);
    else
        PM_REGS->PM_APBBMASK &= ~(ulMask & PM_APBBMASK_Msk);
}
void pm_apbc_clock_gate(uint32_t ulMask, uint8_t ubEnable)
{
    if(ubEnable)
        PM_REGS->PM_APBCMASK |= (ulMask & PM_APBCMASK_Msk);
    else
        PM_REGS->PM_APBCMASK &= ~(ulMask & PM_APBCMASK_Msk);
}