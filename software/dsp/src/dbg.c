#include "dbg.h"

void _putchar(char ch)
{
    dbg_swo_putc(ch, 0);
}

void dbg_init()
{
    PMC->PMC_PCK[3] = (0 << PMC_PCK_PRES_Pos) | PMC_PCK_CSS_MCK; // Select debug clock = MCK / (0 + 1)
    PMC->PMC_SCER = PMC_SCER_PCK3; // Enable debug clock

    while(!(PMC->PMC_SR & PMC_SR_PCKRDY3)); // Wait for it to be enabled
}
void dbg_swo_config(uint32_t ulChannelMask, uint32_t ulFrequency)
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    TPI->SPPR = 2 << TPI_SPPR_TXMODE_Pos;
    TPI->ACPR = (pmc_get_pck_clock_freq(3) / ulFrequency) - 1;
    TPI->FFCR = 0x00000100;
    DWT->CTRL = 0x400003FE;
    ITM->LAR = 0xC5ACCE55;
    ITM->TCR = (1 << ITM_TCR_TraceBusID_Pos) | ITM_TCR_SWOENA_Msk | ITM_TCR_ITMENA_Msk;
    ITM->TPR = ulChannelMask;
    ITM->TER = ulChannelMask;
}
void dbg_swo_putc(char c, uint8_t ubChannel)
{
    dbg_swo_send_uint8((uint8_t)c, ubChannel);
}
void dbg_swo_send_uint8(uint8_t ubData, uint8_t ubChannel)
{
    if(!(ITM->TCR & ITM_TCR_ITMENA_Msk))
        return;

    if(!(ITM->TER & BIT(ubChannel)))
        return;

    while(!ITM->PORT[ubChannel].u8);

    ITM->PORT[ubChannel].u8 = ubData;
}
void dbg_swo_send_uint16(uint16_t usData, uint8_t ubChannel)
{
    if(!(ITM->TCR & ITM_TCR_ITMENA_Msk))
        return;

    if(!(ITM->TER & BIT(ubChannel)))
        return;

    while(!ITM->PORT[ubChannel].u8);

    ITM->PORT[ubChannel].u16 = usData;
}
void dbg_swo_send_uint32(uint32_t ulData, uint8_t ubChannel)
{
    if(!(ITM->TCR & ITM_TCR_ITMENA_Msk))
        return;

    if(!(ITM->TER & BIT(ubChannel)))
        return;

    while(!ITM->PORT[ubChannel].u8);

    ITM->PORT[ubChannel].u32 = ulData;
}