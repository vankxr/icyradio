#include "rstc.h"

void rstc_init(uint8_t ubUserResetEnable, uint8_t ubUserResetIntEnable, uint8_t ubUserResetLength)
{
    RSTC->RSTC_MR = RSTC_MR_KEY_PASSWD | ((ubUserResetLength << RSTC_MR_ERSTL_Pos) & RSTC_MR_ERSTL_Msk) | (ubUserResetIntEnable ? RSTC_MR_URSTIEN : 0) | (ubUserResetEnable ? RSTC_MR_URSTEN : 0);
}

uint8_t rstc_get_reset_reason()
{
    return (RSTC->RSTC_SR & RSTC_SR_RSTTYP_Msk) >> RSTC_SR_RSTTYP_Pos;
}

void rstc_reset_system(uint8_t ubExternal)
{
    RSTC->RSTC_CR = RSTC_CR_KEY_PASSWD | RSTC_CR_PROCRST | (ubExternal ? RSTC_CR_EXTRST : 0);

    while(1);
}