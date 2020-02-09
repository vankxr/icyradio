#include "wdt.h"

void wdt_init(uint16_t usTimeout)
{
    uint32_t ulWDTFreq = SLCK_CLOCK_FREQ >> 7;
    uint16_t usWDTReloadValue = ((float)usTimeout / 1000) * ulWDTFreq;

    if(usWDTReloadValue > 4096)
        return;

    WDT->WDT_MR = WDT_MR_WDDBGHLT | WDT_MR_WDIDLEHLT | (4095 << WDT_MR_WDD_Pos) | WDT_MR_WDRSTEN | ((usWDTReloadValue - 1) << WDT_MR_WDV_Pos);
}
void wdt_feed()
{
    WDT->WDT_CR = WDT_CR_KEY_PASSWD | WDT_CR_WDRSTT;
}