#include "rtcc.h"

void rtcc_init()
{
    cmu_hfbus_clock_gate(CMU_HFBUSCLKEN0_LE, 1);

    cmu_lfe_rtcc_clock_config(1, CMU_LFEPRESC0_RTCC_DIV1);

    cmu_update_clocks();

    RTCC->CTRL = RTCC_CTRL_CNTMODE_NORMAL | RTCC_CTRL_OSCFDETEN | RTCC_CTRL_CNTTICK_CCV0MATCH | RTCC_CTRL_PRECCV0TOP | RTCC_CTRL_DEBUGRUN;
    RTCC->PRECNT = 0;
    RTCC->CNT = 0;

    RTCC->CC[0].CCV = (RTCC_CLOCK_FREQ / 1) - 1; // Prescaler for 1 Hz

    RTCC->CC[1].CTRL = RTCC_CC_CTRL_COMPBASE_CNT | RTCC_CC_CTRL_MODE_OUTPUTCOMPARE;

    RTCC->IFC = _RTCC_IFC_MASK;
    RTCC->IEN |= RTCC_IEN_CC1;

    RTCC->CTRL |= RTCC_CTRL_ENABLE;
}
uint32_t rtcc_get_time()
{
    return RTCC->CNT;
}
void rtcc_set_time(uint32_t ulTime)
{
    RTCC->CNT = ulTime;
}
void rtcc_set_alarm(uint32_t ulAlarm)
{
    RTCC->CC[1].CCV = ulAlarm;

    RTCC->IFC = RTCC_IFC_CC1;
}
