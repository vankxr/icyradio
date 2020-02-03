#include "adf4351.h"

uint32_t ADF4351_REF_FREQ;
uint32_t ADF4351_PFD_FREQ;
uint64_t ADF4351_FREQ;

static uint32_t ulRegisterCache[6];

static uint32_t adf4351_get_gcd(uint64_t ullM, uint64_t ullN)
{
    while(ullN)
    {
        uint64_t ullMCopy = ullM;
        ullM = ullN;
        ullN = ullMCopy % ullN;
    }

    return ullM;
}
static void adf4351_get_mixed_number(uint64_t ullM, uint64_t ullN, adf4351_mixed_number_t *pMixedNumber) // Transform (m / n) in (a + (b / c)) where (b / c) is irreducible
{
    if(!pMixedNumber)
        return;

    uint32_t ulGCD = adf4351_get_gcd(ullM, ullN);
    ullM /= ulGCD;
    ullN /= ulGCD;

    pMixedNumber->ulInt = ullM / ullN;
    pMixedNumber->ulNum = ullM % ullN;
    pMixedNumber->ulDen = ullN;
}

static void adf4351_write_register(uint8_t ubRegister, uint32_t ulValue)
{
    if(ubRegister > 5)
        return;

    ulRegisterCache[ubRegister] = ulValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TXPLL_UNLATCH();

        usart4_spi_write_byte((ulValue >> 24) & 0xFF, 0);
        usart4_spi_write_byte((ulValue >> 16) & 0xFF, 0);
        usart4_spi_write_byte((ulValue >> 8) & 0xFF, 0);
        usart4_spi_write_byte((((ulValue >> 0) & 0xF8) | (ubRegister & 0x07)), 1);

        TXPLL_LATCH();
    }
}
static void adf4351_rmw_register(uint8_t ubRegister, uint32_t ulMask, uint32_t ulValue)
{
    if(ubRegister > 5)
        return;

    adf4351_write_register(ubRegister, (ulRegisterCache[ubRegister] & ulMask) | ulValue);
}

uint8_t adf4351_init()
{
    TXPLL_MUTE();

    TXPLL_DISABLE();
    delay_ms(10);
    TXPLL_ENABLE();
    delay_ms(10);

    adf4351_write_register(5, ADF4351_R5_LD_DIG_LOCK_DETECT | (3 << 19));
    adf4351_write_register(4, ADF4351_R4_FEEDBACK_FUNDAMENTAL | (0 << 20) | (1 << 12) | ADF4351_R4_VCO_POWER_UP | ADF4351_R4_UNLOCK_MUTED | ADF4351_R4_AUX_DIVIDED | ADF4351_R4_AUX_DISABLED | (0 << 6) | ADF4351_R4_MAIN_DISABLED | (0 << 3));
    adf4351_write_register(3, ADF4351_R3_BAND_SEL_CLK_HIGH | ADF4351_R3_BACKLASH_FRAC | ADF4351_R3_CHG_CANCEL_DISABLED | ADF4351_R3_CSR_ENABLED | ADF4351_R3_CLK_DIV_RESYNC | (1 << 3));
    adf4351_write_register(2, ADF4351_R2_NOISE_MODE_LOW_NOISE | ADF4351_R2_MUXOUT_HIGH_Z | ADF4351_R2_REF_DOUBLE_DISABLED | ADF4351_R2_REF_DIV2_ENABLED | (1 << 14) | ADF4351_R2_DBF_R4_DISABLED | (0 << 9) | ADF4351_R2_LDF_FRAC | ADF4351_R2_LDP_6_NS | ADF4351_R2_PD_POSITIVE | ADF4351_R2_POWER_UP | ADF4351_R2_CP_TRISTATE_DISABLED | ADF4351_R2_CNT_RESET_DISABLED);
    adf4351_write_register(1, ADF4351_R1_PHASE_ADJ_DISABLED | ADF4351_R1_PRESCALER_4_5 | (1 << 15) | (2 << 3));
    adf4351_write_register(0, (23 << 15) | (0 << 3));

    return 1;
}

uint8_t adf4351_pfd_config(uint32_t ulFrequency, uint8_t ubRefDiv2, uint8_t ubRevDouble, uint16_t usRDivider, uint8_t ubFastBandSelect)
{
    if(!ulFrequency)
        return 0;

    if(usRDivider < 1)
        return 0;

    uint32_t ulPFDFrequency = ulFrequency * (1 + !!ubRevDouble) / (usRDivider * (1 + !!ubRefDiv2));

    if(ulPFDFrequency > 32000000UL)
        return 0;

    // Calculate band select clock divider
    uint16_t usBandSelectDivider = 0;

    while(ulPFDFrequency / ++usBandSelectDivider > (ubFastBandSelect ? 500000 : 125000));

    if(usBandSelectDivider > 255)
        return 0;

    adf4351_rmw_register(4, ~(0xFF << 12), (uint32_t)usBandSelectDivider << 12);
    adf4351_rmw_register(3, ~ADF4351_R3_BAND_SEL_CLK_HIGH, ubFastBandSelect ? ADF4351_R3_BAND_SEL_CLK_HIGH : ADF4351_R3_BAND_SEL_CLK_LOW);
    adf4351_rmw_register(2, ~(ADF4351_R2_REF_DOUBLE_ENABLED | ADF4351_R2_REF_DIV2_ENABLED | (0x3FF << 14)), (ubRevDouble ? ADF4351_R2_REF_DOUBLE_ENABLED : ADF4351_R2_REF_DOUBLE_DISABLED) | (ubRefDiv2 ? ADF4351_R2_REF_DIV2_ENABLED : ADF4351_R2_REF_DIV2_DISABLED) | ((uint32_t)usRDivider << 14));
    adf4351_write_register(0, ulRegisterCache[0]); // Force double buffer to update by writting to R0

    ADF4351_REF_FREQ = ulFrequency;
    ADF4351_PFD_FREQ = ulPFDFrequency;

    return 1;
}

uint8_t adf4351_charge_pump_set_current(float fCurrent)
{
    if(fCurrent < 0.31f || fCurrent > 5.0f)
        return 0;

    uint8_t ubCurrent = fCurrent / 0.3125f;

    ubCurrent--;

    if(ubCurrent > 15)
        ubCurrent = 15;

    adf4351_rmw_register(2, ~(0xF << 9), ubCurrent << 9);

    return 1;
}
float adf4351_charge_pump_get_current()
{
    uint8_t ubCurrent = (ulRegisterCache[2] >> 9) & 0xF;

    return 0.3125f * (ubCurrent + 1);
}

uint8_t adf4351_set_frequency(uint64_t ullFrequency)
{
    if(!ullFrequency)
        return 0;

    uint8_t ubRFDivider = 0xFF;
    uint64_t ullVCOFrequency;

    for(uint8_t i = 0; i < 7; i++)
    {
        ullVCOFrequency = ullFrequency << i;

        if(ullVCOFrequency >= 2200000000ULL && ullVCOFrequency <= 4400000000ULL) // VCO operating range
        {
            ubRFDivider = i;

            break;
        }
    }

    if(ubRFDivider == 0xFF)
        return 0;

    // fVCO = fPFD * M
    // M = fVCO / fPFD

    adf4351_mixed_number_t *pMultiplier = (adf4351_mixed_number_t *)malloc(sizeof(adf4351_mixed_number_t));

    memset(pMultiplier, 0, sizeof(adf4351_mixed_number_t));

    if(!pMultiplier)
        return 0;

    adf4351_get_mixed_number(ullVCOFrequency, ADF4351_PFD_FREQ, pMultiplier);

    if(!pMultiplier->ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        free(pMultiplier);

        return 0;
    }

    if(pMultiplier->ulInt > 65535 || pMultiplier->ulInt < 23) // INT limits (min 23, 16-bit wide)
        return 0;

    if(pMultiplier->ulDen > 4095) // MOD limits (12 bit long)
        return 0;

    if(pMultiplier->ulNum > 4095) // FRAC limits (12 bit long)
        return 0;

    uint16_t usINT = pMultiplier->ulInt;
    uint16_t usFRAC = pMultiplier->ulNum;
    uint16_t usMOD = pMultiplier->ulDen;

    free(pMultiplier);

    while((usMOD << 1) < 4096) // Maximise MOD and FRAC to improve phase noise
    {
        usMOD <<= 1;
        usFRAC <<= 1;
    }

    // Re-calculate the phase word since it depends and is limited by MOD
    uint16_t usPrevMOD = (ulRegisterCache[1] >> 3) & 0xFFF;
    uint16_t usPhase = (ulRegisterCache[1] >> 15) & 0xFFF;

    usPhase *= ((float)usMOD / usPrevMOD);

    if(usPhase >= usMOD)
        usPhase = usMOD - 1;

    ADF4351_FREQ = (uint64_t)(ADF4351_PFD_FREQ * (usINT + (float)usFRAC / usMOD)) >> ubRFDivider;

    if(!usFRAC)
        adf4351_rmw_register(2, ~ADF4351_R2_LDF_INT, ADF4351_R2_LDF_INT);
    else
        adf4351_rmw_register(2, ~ADF4351_R2_LDF_INT, ADF4351_R2_LDF_FRAC);

    adf4351_rmw_register(4, ~(7 << 20), (uint8_t)ubRFDivider << 20);
    adf4351_rmw_register(1, ~(ADF4351_R1_PRESCALER_8_9 | (0xFFF << 15) | (0xFFF << 3)), (usINT < 75 ? ADF4351_R1_PRESCALER_4_5 : ADF4351_R1_PRESCALER_8_9) | ((uint32_t)usPhase << 15) | ((uint32_t)usMOD << 3));
    adf4351_write_register(0, ((uint32_t)usINT << 15) | ((uint32_t)usFRAC << 3));

    while(!TXPLL_LOCKED());

    return 1;
}

void adf4351_set_phase(float fPhase)
{
    if(fPhase < 0.f || fPhase > 360.f)
        return;

    uint16_t usMOD = (ulRegisterCache[1] >> 3) & 0xFFF;
    float fPhaseStep = 360.f / usMOD;

    uint16_t usPhase = fPhase / fPhaseStep;

    if(usPhase >= usMOD)
        usPhase = usMOD - 1;

    adf4351_rmw_register(1, ~(0xFFF << 15), (uint32_t)usPhase << 15);
    adf4351_write_register(0, ulRegisterCache[0]); // Force double buffer to update by writting to R0
}
float adf4351_get_phase()
{
    uint16_t usMOD = (ulRegisterCache[1] >> 3) & 0xFFF;
    uint16_t usPhase = (ulRegisterCache[1] >> 15) & 0xFFF;

    float fPhaseStep = 360.f / usMOD;

    return fPhaseStep * usPhase;
}

void adf4351_main_out_config(uint8_t ubEnable, int8_t bPower)
{
    if(!ubEnable)
    {
        adf4351_rmw_register(4, ~ADF4351_R4_MAIN_ENABLED, ADF4351_R4_MAIN_DISABLED);

        return;
    }

    if(bPower < -4 || bPower > 5)
        return;

    uint8_t ubPower = (bPower + 4) / 3;

    adf4351_rmw_register(4, ~(ADF4351_R4_MAIN_ENABLED | (0x3 << 3)), ADF4351_R4_MAIN_ENABLED | (ubPower << 3));
}
int8_t adf4351_main_out_get_power()
{
    uint8_t ubPower = (ulRegisterCache[4] >> 3) & 0x3;

    return (int8_t)(ubPower * 3) - 4;
}
void adf4351_aux_out_config(uint8_t ubEnable, uint8_t ubDivided, int8_t bPower)
{
    if(!ubEnable)
    {
        adf4351_rmw_register(4, ~ADF4351_R4_AUX_ENABLED, ADF4351_R4_AUX_DISABLED);

        return;
    }

    if(bPower < -4 || bPower > 5)
        return;

    uint8_t ubPower = (bPower + 4) / 3;

    adf4351_rmw_register(4, ~(ADF4351_R4_AUX_ENABLED | ADF4351_R4_AUX_FUNDAMENTAL | (0x3 << 3)), (ubDivided ? ADF4351_R4_AUX_DIVIDED : ADF4351_R4_AUX_FUNDAMENTAL) | ADF4351_R4_AUX_ENABLED | (ubPower << 6));
}
int8_t adf4351_aux_out_get_power()
{
    uint8_t ubPower = (ulRegisterCache[4] >> 6) & 0x3;

    return (int8_t)(ubPower * 3) - 4;
}