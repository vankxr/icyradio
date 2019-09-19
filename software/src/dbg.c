#include "dbg.h"

void _putchar(char ch)
{
    dbg_swo_putc(ch, 0);
}

void dbg_init()
{
    
}
void dbg_swo_config(uint32_t ulChannelMask, uint32_t ulFrequency)
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    TPI->SPPR = 2 << TPI_SPPR_TXMODE_Pos;
    TPI->ACPR = (12000000 / ulFrequency) - 1;
    TPI->FFCR = 0x00000100;
    DWT->CTRL = 0x400003FE;
    ITM->LAR = 0xC5ACCE55;
    ITM->TCR = (1 << ITM_TCR_TraceBusID_Pos) | ITM_TCR_ITMENA_Msk;
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