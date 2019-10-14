#include "emu.h"

uint8_t g_ubAVDDLow = 0;
uint8_t g_ubAltAVDDLow = 0;
uint8_t g_ubDVDDLow = 0;
uint8_t g_ubIOVDDLow = 0;

static uint8_t emu_vmon_thresh_calc(uint8_t ubThresh1V86, uint8_t ubThresh2V98, float fTargetVoltage)
{
    // Convert from BCD
    float fThresh1V86 = 10 * ((ubThresh1V86 >> 4) & 0xF) + ((ubThresh1V86 >> 0) & 0xF);
    float fThresh2V98 = 10 * ((ubThresh2V98 >> 4) & 0xF) + ((ubThresh2V98 >> 0) & 0xF);

    // Interpolate between the two calibration thresholds
    float fSlope = (2.98f - 1.86f) / (fThresh2V98 - fThresh1V86);
    float fOffset = 1.86f - (fSlope * fThresh1V86);

    // Find the Code for the target voltage
    float fTargetThresh = roundf((fTargetVoltage - fOffset) / fSlope);

    // Convert to BCD
    uint8_t ubDecThresh = fTargetThresh / 10.f;
    uint8_t ubUniThresh = fTargetThresh - (ubDecThresh * 10);

    uint8_t ubTargetThresh = ((ubDecThresh & 0xF) << 4) | (ubUniThresh & 0xF);

    return ubTargetThresh;
}
static float emu_vmon_thresh_get(uint8_t ubThresh1V86, uint8_t ubThresh2V98, uint8_t ubCurrentThresh)
{
    // Convert from BCD
    float fCurrentThresh = 10 * ((ubCurrentThresh >> 4) & 0xF) + ((ubCurrentThresh >> 0) & 0xF);
    float fThresh1V86 = 10 * ((ubThresh1V86 >> 4) & 0xF) + ((ubThresh1V86 >> 0) & 0xF);
    float fThresh2V98 = 10 * ((ubThresh2V98 >> 4) & 0xF) + ((ubThresh2V98 >> 0) & 0xF);

    // Interpolate between the two calibration thresholds
    float fSlope = (2.98f - 1.86f) / (fThresh2V98 - fThresh1V86);
    float fOffset = 1.86f - (fSlope * fThresh1V86);

    // Find the Code for the target voltage
    float fCurrentVoltage = (fCurrentThresh * fSlope) + fOffset;

    return fCurrentVoltage;
}

void _emu_isr()
{
    uint32_t ulFlags = EMU->IFC;

    if(ulFlags & EMU_IFC_VMONAVDDFALL)
        g_ubAVDDLow = 1;
    else if(ulFlags & EMU_IFC_VMONAVDDRISE)
        g_ubAVDDLow = 0;

    if(ulFlags & EMU_IFC_VMONALTAVDDFALL)
        g_ubAltAVDDLow = 1;
    else if(ulFlags & EMU_IFC_VMONALTAVDDRISE)
        g_ubAltAVDDLow = 0;

    if(ulFlags & EMU_IFC_VMONDVDDFALL)
        g_ubDVDDLow = 1;
    else if(ulFlags & EMU_IFC_VMONDVDDRISE)
        g_ubDVDDLow = 0;

    if(ulFlags & EMU_IFC_VMONIO0FALL)
        g_ubIOVDDLow = 1;
    else if(ulFlags & EMU_IFC_VMONIO0RISE)
        g_ubIOVDDLow = 0;
}

void emu_init(uint8_t ubImmediateSwitch)
{
    EMU->PWRCTRL = (ubImmediateSwitch ? EMU_PWRCTRL_IMMEDIATEPWRSWITCH : 0) | EMU_PWRCTRL_REGPWRSEL_DVDD | EMU_PWRCTRL_ANASW_AVDD;

    EMU->IFC = _EMU_IFC_MASK; // Clear pending IRQs
    IRQ_CLEAR(EMU_IRQn); // Clear pending vector
    IRQ_SET_PRIO(EMU_IRQn, 3, 1); // Set priority 3,1 (min)
    IRQ_ENABLE(EMU_IRQn); // Enable vector
}
void emu_dcdc_init(float fTargetVoltage, float fMaxLNCurrent, float fMaxLPCurrent, float fMaxReverseCurrent)
{
    if(fTargetVoltage < 1800.f || fTargetVoltage >= 3000.f)
        return;

    if(fMaxLNCurrent <= 0.f || fMaxLNCurrent > 200.f)
        return;

    if(fMaxLPCurrent <= 0.f || fMaxLPCurrent > 10000.f)
        return;

    if(fMaxReverseCurrent < 0.f || fMaxReverseCurrent > 160.f)
        return;

    // Low Power & Low Noise current limit
    uint8_t ubLPBias = 0;

    if(fMaxLPCurrent < 75.f)
        ubLPBias = 0;
    else if(fMaxLPCurrent < 500.f)
        ubLPBias = 1;
    else if(fMaxLPCurrent < 2500.f)
        ubLPBias = 2;
    else
        ubLPBias = 3;

    EMU->DCDCMISCCTRL = (EMU->DCDCMISCCTRL & ~_EMU_DCDCMISCCTRL_LPCMPBIASEM234H_MASK) | ((uint32_t)ubLPBias << _EMU_DCDCMISCCTRL_LPCMPBIASEM234H_SHIFT);
    EMU->DCDCMISCCTRL |= EMU_DCDCMISCCTRL_LNFORCECCM; // Force CCM to prevent reverse current
    EMU->DCDCLPCTRL |= EMU_DCDCLPCTRL_LPVREFDUTYEN; // Enable duty cycling of the bias for LP mode
    EMU->DCDCLNFREQCTRL = (EMU->DCDCLNFREQCTRL & ~_EMU_DCDCLNFREQCTRL_RCOBAND_MASK) | 4; // Set RCO Band to 7MHz

    uint8_t ubFETCount = 0;

    if(fMaxLNCurrent < 20.f)
        ubFETCount = 4;
    else if(fMaxLNCurrent >= 20.f && fMaxLNCurrent < 40.f)
        ubFETCount = 8;
    else
        ubFETCount = 16;

    EMU->DCDCMISCCTRL = (EMU->DCDCMISCCTRL & ~_EMU_DCDCMISCCTRL_NFETCNT_MASK) | ((uint32_t)(ubFETCount - 1) << _EMU_DCDCMISCCTRL_NFETCNT_SHIFT);
    EMU->DCDCMISCCTRL = (EMU->DCDCMISCCTRL & ~_EMU_DCDCMISCCTRL_PFETCNT_MASK) | ((uint32_t)(ubFETCount - 1) << _EMU_DCDCMISCCTRL_PFETCNT_SHIFT);

    uint8_t ubLNCurrentLimit = (((fMaxLNCurrent + 40.f) * 1.5f) / (5.f * ubFETCount)) - 1;
    uint8_t ubLPCurrentLimit = 1; // Recommended value

    EMU->DCDCMISCCTRL = (EMU->DCDCMISCCTRL & ~(_EMU_DCDCMISCCTRL_LNCLIMILIMSEL_MASK | _EMU_DCDCMISCCTRL_LPCLIMILIMSEL_MASK)) | ((uint32_t)ubLNCurrentLimit << _EMU_DCDCMISCCTRL_LNCLIMILIMSEL_SHIFT) | ((uint32_t)ubLPCurrentLimit << _EMU_DCDCMISCCTRL_LPCLIMILIMSEL_SHIFT);

    uint8_t ubZDetLimit = ((fMaxReverseCurrent + 40.f) * 1.5f) / (2.5f * ubFETCount);

    EMU->DCDCZDETCTRL = (EMU->DCDCZDETCTRL & ~_EMU_DCDCZDETCTRL_ZDETILIMSEL_MASK) | ((uint32_t)ubZDetLimit << _EMU_DCDCZDETCTRL_ZDETILIMSEL_SHIFT);

    EMU->DCDCCLIMCTRL |= EMU_DCDCCLIMCTRL_BYPLIMEN; // Enable bypass current limiter to prevent overcurrent when switching modes

    // Output Voltage
    if(fTargetVoltage > 1800.f)
    {
        float fMaxVOut = 3000.f;
        float fMinVOut = 1800.f;
        float fDiffVOut = fMaxVOut - fMinVOut;

        uint8_t ubLNVRefHigh = (DEVINFO->DCDCLNVCTRL0 & _DEVINFO_DCDCLNVCTRL0_3V0LNATT1_MASK) >> _DEVINFO_DCDCLNVCTRL0_3V0LNATT1_SHIFT;
        uint8_t ubLNVRefLow = (DEVINFO->DCDCLNVCTRL0 & _DEVINFO_DCDCLNVCTRL0_1V8LNATT1_MASK) >> _DEVINFO_DCDCLNVCTRL0_1V8LNATT1_SHIFT;

        uint8_t ubLNVRef = ((fTargetVoltage - fMinVOut) * (float)(ubLNVRefHigh - ubLNVRefLow)) / fDiffVOut;
        ubLNVRef += ubLNVRefLow;

        EMU->DCDCLNVCTRL = (ubLNVRef << _EMU_DCDCLNVCTRL_LNVREF_SHIFT) | EMU_DCDCLNVCTRL_LNATT;

        uint8_t ubLPVRefLow = 0;
        uint8_t ubLPVRefHigh = 0;

        switch(ubLPBias)
        {
            case 0:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL2 & _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_MASK) >> _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL2 & _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_MASK) >> _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_SHIFT;
            }
            break;
            case 1:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL2 & _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_MASK) >> _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL2 & _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_MASK) >> _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_SHIFT;
            }
            break;
            case 2:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL3 & _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_MASK) >> _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL3 & _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_MASK) >> _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_SHIFT;
            }
            break;
            case 3:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL3 & _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_MASK) >> _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL3 & _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_MASK) >> _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_SHIFT;
            }
            break;
        }

        uint8_t ubLPVRef = ((fTargetVoltage - fMinVOut) * (float)(ubLPVRefHigh - ubLPVRefLow)) / fDiffVOut;
        ubLPVRef += ubLPVRefLow;

        EMU->DCDCLPVCTRL = (ubLPVRef << _EMU_DCDCLPVCTRL_LPVREF_SHIFT) | EMU_DCDCLPVCTRL_LPATT;
    }
    else
    {
        float fMaxVOut = 1800.f;
        float fMinVOut = 1200.f;
        float fDiffVOut = fMaxVOut - fMinVOut;

        uint8_t ubLNVRefHigh = (DEVINFO->DCDCLNVCTRL0 & _DEVINFO_DCDCLNVCTRL0_1V8LNATT0_MASK) >> _DEVINFO_DCDCLNVCTRL0_1V8LNATT0_SHIFT;
        uint8_t ubLNVRefLow = (DEVINFO->DCDCLNVCTRL0 & _DEVINFO_DCDCLNVCTRL0_1V2LNATT0_MASK) >> _DEVINFO_DCDCLNVCTRL0_1V2LNATT0_SHIFT;

        uint8_t ubLNVRef = ((fTargetVoltage - fMinVOut) * (float)(ubLNVRefHigh - ubLNVRefLow)) / fDiffVOut;
        ubLNVRef += ubLNVRefLow;

        EMU->DCDCLNVCTRL = ubLNVRef << _EMU_DCDCLNVCTRL_LNVREF_SHIFT;

        uint8_t ubLPVRefLow = 0;
        uint8_t ubLPVRefHigh = 0;

        switch(ubLPBias)
        {
            case 0:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL0 & _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_MASK) >> _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL0 & _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_MASK) >> _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_SHIFT;
            }
            break;
            case 1:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL0 & _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_MASK) >> _DEVINFO_DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL0 & _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_MASK) >> _DEVINFO_DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_SHIFT;
            }
            break;
            case 2:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL1 & _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_MASK) >> _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL1 & _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_MASK) >> _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_SHIFT;
            }
            break;
            case 3:
            {
                ubLPVRefHigh = (DEVINFO->DCDCLPVCTRL1 & _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_MASK) >> _DEVINFO_DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_SHIFT;
                ubLPVRefLow = (DEVINFO->DCDCLPVCTRL1 & _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_MASK) >> _DEVINFO_DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_SHIFT;
            }
            break;
        }

        uint8_t ubLPVRef = ((fTargetVoltage - fMinVOut) * (float)(ubLPVRefHigh - ubLPVRefLow)) / fDiffVOut;
        ubLPVRef += ubLPVRefLow;

        EMU->DCDCLPVCTRL = ubLPVRef << _EMU_DCDCLPVCTRL_LPVREF_SHIFT;
    }

    EMU->DCDCLPCTRL = (EMU->DCDCLPCTRL & ~_EMU_DCDCLPCTRL_LPCMPHYSSELEM234H_MASK) | (((DEVINFO->DCDCLPCMPHYSSEL1 & (((uint32_t)0xFF) << (ubLPBias * 8))) >> (ubLPBias * 8)) << _EMU_DCDCLPCTRL_LPCMPHYSSELEM234H_SHIFT);

    while(EMU->DCDCSYNC & EMU_DCDCSYNC_DCDCCTRLBUSY); // Wait for configuration to write

    // Calibration
    //EMU->DCDCLNCOMPCTRL = 0x57204077; // Compensation for 1uF DCDC capacitor
    EMU->DCDCLNCOMPCTRL = 0xB7102137; // Compensation for 4.7uF DCDC capacitor

    // Enable DCDC converter
    EMU->DCDCCTRL = EMU_DCDCCTRL_DCDCMODEEM4_EM4LOWPOWER | EMU_DCDCCTRL_DCDCMODEEM23_EM23LOWPOWER | EMU_DCDCCTRL_DCDCMODE_LOWNOISE;

    // Switch digital domain to DVDD
    EMU->PWRCTRL = EMU_PWRCTRL_REGPWRSEL_DVDD | EMU_PWRCTRL_ANASW_AVDD;
}

float emu_get_temperature()
{
    EMU->IFC = EMU_IFC_TEMP;

    while(!(EMU->IF & EMU_IF_TEMP));

    float fCalibrationTemp = (DEVINFO->CAL & _DEVINFO_CAL_TEMP_MASK) >> _DEVINFO_CAL_TEMP_SHIFT;
    float fEMUCalibrationTemp = (DEVINFO->EMUTEMP & _DEVINFO_EMUTEMP_EMUTEMPROOM_MASK) >> _DEVINFO_EMUTEMP_EMUTEMPROOM_SHIFT;
    float fTempCoefEM01 = 0.278f + fEMUCalibrationTemp / 100.f;
    float fEMUTemp = fCalibrationTemp + fTempCoefEM01 * (fEMUCalibrationTemp - EMU->TEMP);

    return fEMUTemp;
}

void emu_vmon_avdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh, float fHighThresh, float *pfHighThresh)
{
    EMU->VMONAVDDCTRL &= ~EMU_VMONAVDDCTRL_EN;
    EMU->IEN &= ~(EMU_IEN_VMONAVDDRISE | EMU_IEN_VMONAVDDFALL);

    if(!ubEnable)
        return;

    uint8_t ubThresh1V86 = (DEVINFO->VMONCAL0 >> 0) & 0xFF;
    uint8_t ubThresh2V98 = (DEVINFO->VMONCAL0 >> 8) & 0xFF;

    uint8_t ubLowThresh = emu_vmon_thresh_calc(ubThresh1V86, ubThresh2V98, fLowThresh);
    uint8_t ubHighThresh = emu_vmon_thresh_calc(ubThresh1V86, ubThresh2V98, fHighThresh);

    if(pfLowThresh)
        *pfLowThresh = emu_vmon_thresh_get(ubThresh1V86, ubThresh2V98, ubLowThresh);

    if(pfHighThresh)
        *pfHighThresh = emu_vmon_thresh_get(ubThresh1V86, ubThresh2V98, ubHighThresh);

    EMU->IFC = EMU_IFC_VMONAVDDRISE | EMU_IFC_VMONAVDDFALL;
    EMU->IEN |= EMU_IEN_VMONAVDDRISE | EMU_IEN_VMONAVDDFALL;
    EMU->VMONAVDDCTRL = ((uint32_t)ubLowThresh << _EMU_VMONAVDDCTRL_FALLTHRESFINE_SHIFT) | ((uint32_t)ubHighThresh << _EMU_VMONAVDDCTRL_RISETHRESFINE_SHIFT) | EMU_VMONAVDDCTRL_EN;
}
void emu_vmon_altavdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh)
{
    EMU->VMONALTAVDDCTRL &= ~EMU_VMONALTAVDDCTRL_EN;
    EMU->IEN &= ~(EMU_IEN_VMONALTAVDDRISE | EMU_IEN_VMONALTAVDDFALL);

    if(!ubEnable)
        return;

    uint8_t ubThresh1V86 = (DEVINFO->VMONCAL0 >> 16) & 0xFF;
    uint8_t ubThresh2V98 = (DEVINFO->VMONCAL0 >> 24) & 0xFF;

    uint8_t ubLowThresh = emu_vmon_thresh_calc(ubThresh1V86, ubThresh2V98, fLowThresh);

    if(pfLowThresh)
        *pfLowThresh = emu_vmon_thresh_get(ubThresh1V86, ubThresh2V98, ubLowThresh);

    EMU->IFC = EMU_IFC_VMONALTAVDDRISE | EMU_IFC_VMONALTAVDDFALL;
    EMU->IEN |= EMU_IEN_VMONALTAVDDRISE | EMU_IEN_VMONALTAVDDFALL;
    EMU->VMONALTAVDDCTRL = ((uint32_t)ubLowThresh << _EMU_VMONALTAVDDCTRL_THRESFINE_SHIFT) | EMU_VMONALTAVDDCTRL_EN;
}
void emu_vmon_dvdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh)
{
    EMU->VMONDVDDCTRL &= ~EMU_VMONDVDDCTRL_EN;
    EMU->IEN &= ~(EMU_IEN_VMONDVDDRISE | EMU_IEN_VMONDVDDFALL);

    if(!ubEnable)
        return;

    uint8_t ubThresh1V86 = (DEVINFO->VMONCAL1 >> 0) & 0xFF;
    uint8_t ubThresh2V98 = (DEVINFO->VMONCAL1 >> 8) & 0xFF;

    uint8_t ubLowThresh = emu_vmon_thresh_calc(ubThresh1V86, ubThresh2V98, fLowThresh);

    if(pfLowThresh)
        *pfLowThresh = emu_vmon_thresh_get(ubThresh1V86, ubThresh2V98, ubLowThresh);

    EMU->IFC = EMU_IFC_VMONDVDDRISE | EMU_IFC_VMONDVDDFALL;
    EMU->IEN |= EMU_IEN_VMONDVDDRISE | EMU_IEN_VMONDVDDFALL;
    EMU->VMONDVDDCTRL = ((uint32_t)ubLowThresh << _EMU_VMONDVDDCTRL_THRESFINE_SHIFT) | EMU_VMONDVDDCTRL_EN;
}
void emu_vmon_iovdd_config(uint8_t ubEnable, float fLowThresh, float *pfLowThresh)
{
    EMU->VMONIO0CTRL &= ~EMU_VMONIO0CTRL_EN;
    EMU->IEN &= ~(EMU_IEN_VMONIO0RISE | EMU_IEN_VMONIO0FALL);

    if(!ubEnable)
        return;

    uint8_t ubThresh1V86 = (DEVINFO->VMONCAL1 >> 16) & 0xFF;
    uint8_t ubThresh2V98 = (DEVINFO->VMONCAL1 >> 24) & 0xFF;

    uint8_t ubLowThresh = emu_vmon_thresh_calc(ubThresh1V86, ubThresh2V98, fLowThresh);

    if(pfLowThresh)
        *pfLowThresh = emu_vmon_thresh_get(ubThresh1V86, ubThresh2V98, ubLowThresh);

    EMU->IFC = EMU_IFC_VMONIO0RISE | EMU_IFC_VMONIO0FALL;
    EMU->IEN |= EMU_IEN_VMONIO0RISE | EMU_IEN_VMONIO0FALL;
    EMU->VMONIO0CTRL = ((uint32_t)ubLowThresh << _EMU_VMONIO0CTRL_THRESFINE_SHIFT) | EMU_VMONIO0CTRL_EN;
}
