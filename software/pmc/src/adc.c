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

static uint16_t adc_read_iovdd()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_IOGND | ADC_INPUTCTRL_MUXPOS_SCALEDIOVCC;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_iovdd()
{
    uint16_t usResult = adc_read_iovdd();

    return (uint32_t)usResult * 1000UL * 4UL / 4095UL;
}
float adc_getf_iovdd()
{
    uint16_t usResult = adc_read_iovdd();
    static const float fCorr = 1000.f / 4095.f * 4.f;

    return (float)usResult * fCorr;
}
static uint16_t adc_read_corevdd()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS_SCALEDCOREVCC;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_corevdd()
{
    uint16_t usResult = adc_read_corevdd();

    return (uint32_t)usResult * 1000UL * 4UL / 4095UL;
}
float adc_getf_corevdd()
{
    uint16_t usResult = adc_read_corevdd();
    static const float fCorr = 1000.f / 4095.f * 4.f;

    return (float)usResult * fCorr;
}
static uint16_t adc_read_vbus()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS(ADC_VBUS_VSENSE_CHAN);
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x00);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_vbus()
{
    uint16_t usResult = adc_read_vbus();

    return (uint64_t)usResult * 1000UL * (ADC_VBUS_VSENSE_DIV_RT + ADC_VBUS_VSENSE_DIV_RB) / (ADC_VBUS_VSENSE_DIV_RB * 4095UL);
}
float adc_getf_vbus()
{
    uint16_t usResult = adc_read_vbus();
    static const float fCorr = 1000.f / 4095.f / ADC_VBUS_VSENSE_DIV;

    return (float)usResult * fCorr;
}
static uint16_t adc_read_vin()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS(ADC_VIN_VSENSE_CHAN);
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x00);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_vin()
{
    uint16_t usResult = adc_read_vin();

    return (uint64_t)usResult * 1000UL * (ADC_VIN_VSENSE_DIV_RT + ADC_VIN_VSENSE_DIV_RB) / (ADC_VIN_VSENSE_DIV_RB * 4095UL);
}
float adc_getf_vin()
{
    uint16_t usResult = adc_read_vin();
    static const float fCorr = 1000.f / 4095.f / ADC_VIN_VSENSE_DIV;

    return (float)usResult * fCorr;
}
static uint16_t adc_read_12v0()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS(ADC_12V0_VSENSE_CHAN);
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x00);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_12v0()
{
    uint16_t usResult = adc_read_12v0();

    return (uint64_t)usResult * 1000UL * (ADC_12V0_VSENSE_DIV_RT + ADC_12V0_VSENSE_DIV_RB) / (ADC_12V0_VSENSE_DIV_RB * 4095UL);
}
float adc_getf_12v0()
{
    uint16_t usResult = adc_read_12v0();
    static const float fCorr = 1000.f / 4095.f / ADC_12V0_VSENSE_DIV;

    return (float)usResult * fCorr;
}
static uint16_t adc_read_vext()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS(ADC_VEXT_VSENSE_CHAN);
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x00);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_vext()
{
    uint16_t usResult = adc_read_vext();

    return (uint64_t)usResult * 1000UL * (ADC_VEXT_VSENSE_DIV_RT + ADC_VEXT_VSENSE_DIV_RB) / (ADC_VEXT_VSENSE_DIV_RB * 4095UL);
}
float adc_getf_vext()
{
    uint16_t usResult = adc_read_vext();
    static const float fCorr = 1000.f / 4095.f / ADC_VEXT_VSENSE_DIV;

    return (float)usResult * fCorr;
}

static uint16_t adc_read_temperature()
{
    ADC_REGS->ADC_INPUTCTRL = ADC_INPUTCTRL_GAIN_1X | ADC_INPUTCTRL_MUXNEG_GND | ADC_INPUTCTRL_MUXPOS_TEMP;
    ADC_REGS->ADC_SAMPCTRL = ADC_SAMPCTRL_SAMPLEN(0x3F);

    while(ADC_REGS->ADC_STATUS & ADC_STATUS_SYNCBUSY_Msk);

    ADC_REGS->ADC_SWTRIG = ADC_SWTRIG_START_Msk;

    while(!(ADC_REGS->ADC_INTFLAG & ADC_INTFLAG_RESRDY_Msk));

    uint16_t usResult = ADC_REGS->ADC_RESULT;

    return usResult;
}
uint32_t adc_get_temperature()
{
    static uint8_t ubCalibInit = 0;
    static uint32_t ulRoomTemp;
    static uint32_t ulRoom1V0;
    static uint32_t ulRoomVoltage;
    static uint32_t ulHotTemp;
    static uint32_t ulHot1V0;
    static uint32_t ulHotVoltage;

    if(!ubCalibInit)
    {
        uint8_t ubRoomTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Pos;
        uint8_t ubRoomTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Pos;
        ulRoomTemp = (uint32_t)ubRoomTempInt * 1000UL + (uint32_t)ubRoomTempDec * 100UL;

        int8_t bRoom1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_INT1V_VAL_Pos;
        ulRoom1V0 = 1000UL - bRoom1V0;

        uint16_t usRoomADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_ROOM_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_ROOM_ADC_VAL_Pos;
        ulRoomVoltage = (uint32_t)usRoomADCCode * ulRoom1V0 / 4095UL;

        uint8_t ubHotTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_INT_Pos;
        uint8_t ubHotTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_DEC_Pos;
        ulHotTemp = (uint32_t)ubHotTempInt * 1000UL + (uint32_t)ubHotTempDec * 100UL;

        int8_t bHot1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_INT1V_VAL_Pos;
        ulHot1V0 = 1000UL - bHot1V0;

        uint16_t usHotADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_ADC_VAL_Pos;
        ulHotVoltage = (uint32_t)usHotADCCode * ulHot1V0 / 4095UL;

        ubCalibInit = 1;
    }

    uint16_t usResult = adc_read_temperature();

    uint32_t ulCoarseVoltage = (uint32_t)usResult * 1000UL / 4095UL;
    uint32_t ulCoarseTemp = (ulCoarseVoltage - ulRoomVoltage) * (ulHotTemp - ulRoomTemp) / (ulHotVoltage - ulRoomVoltage) + ulRoomTemp;
    uint32_t ul1V0 = (ulHot1V0 - ulRoom1V0) * (ulCoarseTemp - ulRoomTemp) / (ulHotTemp - ulRoomTemp) + ulRoom1V0;
    uint32_t ulFineVoltage = (uint32_t)usResult * ul1V0 / 4095UL;
    uint32_t ulFineTemp = (ulFineVoltage - ulRoomVoltage) * (ulHotTemp - ulRoomTemp) / (ulHotVoltage - ulRoomVoltage) + ulRoomTemp;

    return ulFineTemp;
}
float adc_getf_temperature()
{
    static uint8_t ubCalibInit = 0;
    static float fRoomTemp;
    static float fRoom1V0;
    static float fRoomVoltage;
    static float fHotTemp;
    static float fHot1V0;
    static float fHotVoltage;

    if(!ubCalibInit)
    {
        uint8_t ubRoomTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Pos;
        uint8_t ubRoomTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Pos;
        fRoomTemp = (float)ubRoomTempInt + (float)ubRoomTempDec / 10.f;

        int8_t bRoom1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_INT1V_VAL_Pos;
        fRoom1V0 = 1.f - (float)bRoom1V0 / 1000.f;

        uint16_t usRoomADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_ROOM_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_ROOM_ADC_VAL_Pos;
        fRoomVoltage = (float)usRoomADCCode * fRoom1V0 / 4095.f;

        uint8_t ubHotTempInt = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_INT_Pos;
        uint8_t ubHotTempDec = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_HOT_TEMP_VAL_DEC_Pos;
        fHotTemp = (float)ubHotTempInt + (float)ubHotTempDec / 10.f;

        int8_t bHot1V0 = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_INT1V_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_INT1V_VAL_Pos;
        fHot1V0 = 1.f - (float)bHot1V0 / 1000.f;

        uint16_t usHotADCCode = (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_1 & FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_ADC_VAL_Msk) >> FUSES_TEMP_LOG_WORD_1_NVMCTRL_HOT_ADC_VAL_Pos;
        fHotVoltage = (float)usHotADCCode * fHot1V0 / 4095.f;

        ubCalibInit = 1;
    }

    uint16_t usResult = adc_read_temperature();

    float fCoarseVoltage = (float)usResult * 1.f / 4095.f;
    float fCoarseTemp = (fCoarseVoltage - fRoomVoltage) * (fHotTemp - fRoomTemp) / (fHotVoltage - fRoomVoltage) + fRoomTemp;
    float f1V0 = (fHot1V0 - fRoom1V0) * (fCoarseTemp - fRoomTemp) / (fHotTemp - fRoomTemp) + fRoom1V0;
    float fFineVoltage = (float)usResult * f1V0 / 4095.f;
    float fFineTemp = (fFineVoltage - fRoomVoltage) * (fHotTemp - fRoomTemp) / (fHotVoltage - fRoomVoltage) + fRoomTemp;

    return fFineTemp;
}