#include "dbg.h"

void _putchar(char ch)
{
    dbg_swo_putc(ch, 0);
}

void dbg_init()
{
    pmc_pck_clock_config(PMC_PCK_ETM, 1, PMC_PCK_CSS_MCK, 1); // Enable debug clock = MCK / (0 + 1)
}
void dbg_swo_config(uint32_t ulChannelMask, uint32_t ulFrequency)
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;

    ITM->LAR = 0xC5ACCE55; // Unlock ITM registers

    ITM->TCR = (1 << ITM_TCR_TraceBusID_Pos) | ITM_TCR_SWOENA_Msk | ITM_TCR_SYNCENA_Msk | ITM_TCR_ITMENA_Msk;
    ITM->TER = ulChannelMask;
    ITM->TPR = ulChannelMask;

    TPI->SPPR = (2 << TPI_SPPR_TXMODE_Pos);
    TPI->FFCR = TPI_FFCR_TrigIn_Msk;
    TPI->ACPR = (pmc_pck_clock_get_freq(PMC_PCK_ETM) / ulFrequency) - 1;
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