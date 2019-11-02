#include "eefc.h"

void eefc_init()
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        EFC->EEFC_FMR = EEFC_FMR_CLOE | EEFC_FMR_SCOD;
    }
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

void eefc_get_unique_id(uint32_t *pulID)
{
    if(!pulID)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_STUI;

        while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));

        pulID[0] = *(volatile uint32_t *)0x00400000;
        pulID[1] = *(volatile uint32_t *)0x00400004;
        pulID[2] = *(volatile uint32_t *)0x00400008;
        pulID[3] = *(volatile uint32_t *)0x0040000C;

        EFC->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_SPUI;

        while(!(EFC->EEFC_FSR & EEFC_FSR_FRDY));
    }
}

