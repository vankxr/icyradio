#include "adc.h"

void _adc_isr()
{
    uint32_t ulFlags = ADC_REGS->ADC_INTFLAG;

    ADC_REGS->ADC_INTFLAG = ulFlags;
}

void adc_init()
{
    pm_apbc_clock_gate(PM_APBCMASK_ADC_Msk, 1);

    ADC_REGS->ADC_CTRLA = ADC_CTRLA_SWRST_Msk;

    while(ADC_REGS->ADC_CTRLA & ADC_CTRLA_SWRST_Msk);

    // Load NVM calibration
    uint8_t ubLinCal = (OTP4_FUSES_REGS->FUSES_OTP4_WORD_0 & FUSES_OTP4_WORD_0_ADC_LINEARITY_0_Msk) >> FUSES_OTP4_WORD_0_ADC_LINEARITY_0_Pos;
    uint8_t ubBiasCal = (OTP4_FUSES_REGS->FUSES_OTP4_WORD_1 & FUSES_OTP4_WORD_1_ADC_BIASCAL_Msk) >> FUSES_OTP4_WORD_1_ADC_BIASCAL_Pos;

    ADC_REGS->ADC_CALIB = ADC_CALIB_BIAS_CAL(ubBiasCal) | ADC_CALIB_LINEARITY_CAL(ubLinCal);

    ADC_REGS->ADC_REFCTRL = ADC_REFCTRL_REFCOMP_Msk | ADC_REFCTRL_REFSEL_INT1V;
    ADC_REGS->ADC_CTRLB = ADC_CTRLB_PRESCALER_DIV4 | ADC_CTRLB_RESSEL_12BIT;
    ADC_REGS->ADC_CTRLA = ADC_CTRLA_ENABLE_Msk;

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);
}

float adc_get_iovdd()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_IOGND | ADC_INPUTCTRL_MUXPOS_SCALEDIOVCC;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;
    static const float fCorr = 1000.f / 4095.f * 4.f;

    return (float)usResult * fCorr;
}
float adc_get_corevdd()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS_SCALEDCOREVCC;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;
    static const float fCorr = 1000.f / 4095.f * 4.f;

    return (float)usResult * fCorr;
}

float adc_get_temperature()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS_TEMP;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    static uint8_t ubCalibInit = 0;
    static float fRoomTemp;
    static float fRoom1V0;
    static float fRoomVoltage;
    static float fHotTemp;
    static float fHot1V0;
    static float fHotVoltage;

    if(!ubCalibInit)
    {
        uint8_t ubRoomTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_ROOM_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_ROOM_TEMP_VAL_INT_Pos;
        uint8_t ubRoomTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_ROOM_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_ROOM_TEMP_VAL_DEC_Pos;
        fRoomTemp = (float)ubRoomTempInt + (float)ubRoomTempDec / 10.f;

        int8_t bRoom1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_ROOM_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_0_ROOM_INT1V_VAL_Pos;
        fRoom1V0 = 1.f - (float)bRoom1V0 / 1000.f;

        uint16_t usRoomADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_ROOM_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_ROOM_ADC_VAL_Pos;
        fRoomVoltage = (float)usRoomADCCode * fRoom1V0 / 4095.f;

        uint8_t ubHotTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_HOT_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_HOT_TEMP_VAL_INT_Pos;
        uint8_t ubHotTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_HOT_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_HOT_TEMP_VAL_DEC_Pos;
        fHotTemp = (float)ubHotTempInt + (float)ubHotTempDec / 10.f;

        int8_t bHot1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_HOT_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_HOT_INT1V_VAL_Pos;
        fHot1V0 = 1.f - (float)bHot1V0 / 1000.f;

        uint16_t usHotADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_HOT_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_HOT_ADC_VAL_Pos;
        fHotVoltage = (float)usHotADCCode * fHot1V0 / 4095.f;

        ubCalibInit = 1;
    }

    float fCoarseVoltage = (float)usResult * 1.f / 4095.f;
    float fCoarseTemp = (fCoarseVoltage - fRoomVoltage) * (fHotTemp - fRoomTemp) / (fHotVoltage - fRoomVoltage) + fRoomTemp;
    float f1V0 = (fHot1V0 - fRoom1V0) * (fCoarseTemp - fRoomTemp) / (fHotTemp - fRoomTemp) + fRoom1V0;
    float fFineVoltage = (float)usResult * f1V0 / 4095.f;
    float fFineTemp = (fFineVoltage - fRoomVoltage) * (fHotTemp - fRoomTemp) / (fHotVoltage - fRoomVoltage) + fRoomTemp;

    return fFineTemp;
}