#include "eefc.h"

void eefc_init()
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        EFC->EEFC_FMR |= EEFC_FMR_CLOE;
        EFC->EEFC_FMR &= ~EEFC_FMR_SCOD;
    }
}
void eefc_config_waitstates(uint32_t ulFrequency)
{
    if(ulFrequency <= 23000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (0 << EEFC_FMR_FWS_Pos);
    else if(ulFrequency <= 46000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (1 << EEFC_FMR_FWS_Pos);
    else if(ulFrequency <= 69000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (2 << EEFC_FMR_FWS_Pos);
    else if(ulFrequency <= 92000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (3 << EEFC_FMR_FWS_Pos);
    else if(ulFrequency <= 115000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (4 << EEFC_FMR_FWS_Pos);
    else if(ulFrequency <= 138000000UL)
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (5 << EEFC_FMR_FWS_Pos);
    else
        EFC->EEFC_FMR = (EFC->EEFC_FMR & ~EEFC_FMR_FWS_Msk) | (6 << EEFC_FMR_FWS_Pos);
}

uint32_t eefc_get_flash_size()
{
    EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_GETD;

    while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

    REG_DISCARD(&(EFC->EEFC_FRR));

    return EFC->EEFC_FRR;
}
uint32_t eefc_get_flash_page_size()
{
    EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_GETD;

    while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

    REG_DISCARD(&(EFC->EEFC_FRR));
    REG_DISCARD(&(EFC->EEFC_FRR));

    return EFC->EEFC_FRR;
}
uint32_t eefc_get_sram_size()
{
    EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_GGPB;

    while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

    uint8_t ubTCMConfig = (EFC->EEFC_FRR & 0x00000180) >> 7;
    uint32_t ulTCMSize = 0;

    switch(ubTCMConfig)
    {
        case 0: ulTCMSize = 0;      break;
        case 1: ulTCMSize = 32768;  break;
        case 2: ulTCMSize = 65536;  break;
        case 3: ulTCMSize = 131072; break;
    }

    uint8_t ubSRAMSize = (CHIPID->CHIPID_CIDR & CHIPID_CIDR_SRAMSIZ_Msk) >> CHIPID_CIDR_SRAMSIZ_Pos;
    uint32_t ulSRAMSize = 0;

    switch(ubSRAMSize)
    {
        case  0: ulSRAMSize = 49152;  break;
        case  1: ulSRAMSize = 196608; break;
        case  2: ulSRAMSize = 393216; break;
        case  3: ulSRAMSize = 6144;   break;
        case  4: ulSRAMSize = 24576;  break;
        case  5: ulSRAMSize = 4096;   break;
        case  6: ulSRAMSize = 81920;  break;
        case  7: ulSRAMSize = 163840; break;
        case  8: ulSRAMSize = 8192;   break;
        case  9: ulSRAMSize = 16384;  break;
        case 10: ulSRAMSize = 32768;  break;
        case 11: ulSRAMSize = 65536;  break;
        case 12: ulSRAMSize = 131072; break;
        case 13: ulSRAMSize = 262144; break;
        case 14: ulSRAMSize = 98304;  break;
        case 15: ulSRAMSize = 524288; break;
    }

    if(ulTCMSize * 2 > ulSRAMSize)
        return 0;

    return ulSRAMSize - 2 * ulTCMSize;
}
uint32_t eefc_get_tcm_size()
{
    EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_GGPB;

    while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

    uint8_t ubTCMConfig = (EFC->EEFC_FRR & 0x00000180) >> 7;
    uint32_t ulTCMSize = 0;

    switch(ubTCMConfig)
    {
        case 0: ulTCMSize = 0;      break;
        case 1: ulTCMSize = 32768;  break;
        case 2: ulTCMSize = 65536;  break;
        case 3: ulTCMSize = 131072; break;
    }

    return ulTCMSize;
}

void eefc_get_unique_id(uint32_t *pulID)
{
    if(!pulID)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_STUI;

        while(EFC->EEFC_FSR & EEFC_FSR_FRDY);

        pulID[0] = *(volatile uint32_t *)0x00400000;
        pulID[1] = *(volatile uint32_t *)0x00400004;
        pulID[2] = *(volatile uint32_t *)0x00400008;
        pulID[3] = *(volatile uint32_t *)0x0040000C;

        EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_SPUI;

        while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

        icache_invalidate();
        dcache_addr_invalidate((void *)0x00400000, 4 * sizeof(uint32_t));
    }
}

