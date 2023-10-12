#include "nvmctrl.h"

void nvmctrl_init()
{
    // Init for worst case scenario
    NVMCTRL_REGS->NVMCTRL_CTRLB = NVMCTRL_CTRLB_READMODE_NO_MISS_PENALTY | NVMCTRL_CTRLB_SLEEPPRM_WAKEUPINSTANT | NVMCTRL_CTRLB_MANW_Msk | NVMCTRL_CTRLB_RWS(3);
}

void nvmctrl_config_waitstates(uint32_t ulFrequency, float fVoltage)
{
    if(fVoltage < 2700.f)
    {
        if(ulFrequency <= 14000000UL)
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(0);
        else if(ulFrequency <= 28000000UL)
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(1);
        else if(ulFrequency <= 42000000UL)
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(2);
        else
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(3);
    }
    else
    {
        if(ulFrequency <= 24000000UL)
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(0);
        else
            NVMCTRL_REGS->NVMCTRL_CTRLB = (NVMCTRL_REGS->NVMCTRL_CTRLB & ~NVMCTRL_CTRLB_RWS_Msk) | NVMCTRL_CTRLB_RWS(1);
    }
}

uint32_t nvmctrl_get_flash_size()
{
    uint32_t ulNumPages = (NVMCTRL_REGS->NVMCTRL_PARAM & NVMCTRL_PARAM_NVMP_Msk) >> NVMCTRL_PARAM_NVMP_Pos;
    uint32_t ulPageSize = 1 << (((NVMCTRL_REGS->NVMCTRL_PARAM & NVMCTRL_PARAM_PSZ_Msk) >> NVMCTRL_PARAM_PSZ_Pos) + 3);

    return ulNumPages * ulPageSize;
}

void nvmctrl_get_unique_id(uint32_t *pulID)
{
    pulID[0] = *(volatile uint32_t *)0x0080A00C;
    pulID[1] = *(volatile uint32_t *)0x0080A040;
    pulID[2] = *(volatile uint32_t *)0x0080A044;
    pulID[2] = *(volatile uint32_t *)0x0080A048;
}