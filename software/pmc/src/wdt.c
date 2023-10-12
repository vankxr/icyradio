#include "wdt.h"

wdt_warning_isr_t pfWarningISR = NULL;

void _wdt_isr()
{
    uint32_t ulFlags = WDT_REGS->WDT_INTFLAG;

    WDT_REGS->WDT_INTFLAG = ulFlags;

    if(ulFlags & WDT_INTFLAG_EW_Msk)
        if(pfWarningISR)
            pfWarningISR();
}

void wdt_init(uint8_t ubTimeoutCycles, uint8_t ubWarningCycles)
{
    pm_apba_clock_gate(PM_APBAMASK_WDT_Msk, 1);

    ubTimeoutCycles &= WDT_CONFIG_PER_Msk;
    ubWarningCycles &= WDT_EWCTRL_EWOFFSET_Msk;

    if(ubTimeoutCycles > 0x0B)
        ubTimeoutCycles = 0x0B;

    if(ubWarningCycles > 0x0B)
        ubWarningCycles = 0x0B;

    if(WDT_REGS->WDT_CTRL & WDT_CTRL_ALWAYSON_Msk)
        return;

    WDT_REGS->WDT_CTRL = 0;

    while(WDT_REGS->WDT_STATUS & WDT_STATUS_SYNCBUSY_Msk);

    WDT_REGS->WDT_CONFIG = WDT_CONFIG_PER(ubTimeoutCycles);
    WDT_REGS->WDT_EWCTRL = WDT_EWCTRL_EWOFFSET(ubWarningCycles);

    WDT_REGS->WDT_INTFLAG = WDT_INTFLAG_Msk; // Clear all flags
    IRQ_CLEAR(WDT_IRQn); // Clear pending vector
    IRQ_SET_PRIO(WDT_IRQn, 0, 0); // Set priority 0,0
    IRQ_ENABLE(WDT_IRQn); // Enable vector
    WDT_REGS->WDT_INTENSET = WDT_INTENSET_EW_Msk; // Enable EW flag
}
void wdt_enable()
{
    if(WDT_REGS->WDT_CTRL & (WDT_CTRL_ALWAYSON_Msk | WDT_CTRL_ENABLE_Msk))
        return;

    WDT_REGS->WDT_CTRL |= WDT_CTRL_ENABLE_Msk;

    while(WDT_REGS->WDT_STATUS & WDT_STATUS_SYNCBUSY_Msk);
}
void wdt_disable()
{
    if(WDT_REGS->WDT_CTRL & WDT_CTRL_ALWAYSON_Msk)
        return;

    WDT_REGS->WDT_CTRL &= ~WDT_CTRL_ENABLE_Msk;

    while(WDT_REGS->WDT_STATUS & WDT_STATUS_SYNCBUSY_Msk);
}
void wdt_set_warning_isr(wdt_warning_isr_t pfISR)
{
    pfWarningISR = pfISR;
}
float wdt_get_timeout_period()
{
    uint8_t ubPeriod = (WDT_REGS->WDT_CONFIG & WDT_CONFIG_PER_Msk) >> WDT_CONFIG_PER_Pos;

    return (float)(1 << (ubPeriod + 3)) / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_WDT_Val] * 1000.f;
}
float wdt_get_warning_period()
{
    uint8_t ubPeriod = (WDT_REGS->WDT_EWCTRL & WDT_EWCTRL_EWOFFSET_Msk) >> WDT_EWCTRL_EWOFFSET_Pos;

    return (float)(1 << (ubPeriod + 3)) / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_WDT_Val] * 1000.f;
}
void wdt_feed()
{
    WDT_REGS->WDT_CLEAR = WDT_CLEAR_CLEAR_KEY;

    while(WDT_REGS->WDT_STATUS & WDT_STATUS_SYNCBUSY_Msk);
}