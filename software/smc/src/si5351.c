#include "si5351.h"

uint32_t SI5351_XTAL_FREQ;
uint32_t SI5351_CLKIN_FREQ;
uint32_t SI5351_CLKIN_DIV_FREQ;
uint32_t SI5351_PLL_SRC_FREQ[2];
uint32_t SI5351_PLL_FREQ[2];
uint32_t SI5351_MS_SRC_FREQ[8];
uint32_t SI5351_MS_FREQ[8];
uint32_t SI5351_CLK_SRC_FREQ[8];
uint32_t SI5351_CLK_FREQ[8];

static uint32_t si5351_get_gcd(uint32_t ulM, uint32_t ulN)
{
    while(ulN)
    {
        uint32_t ulMCopy = ulM;
        ulM = ulN;
        ulN = ulMCopy % ulN;
    }

    return ulM;
}
static void si5351_get_mixed_number(uint32_t ulM, uint32_t ulN, si5351_mixed_number_t *pMixedNumber) // Transform (m / n) in (a + (b / c)) where (b / c) is irreducible
{
    if(!pMixedNumber)
        return;

    uint32_t ulGCD = si5351_get_gcd(ulM, ulN);
    ulM /= ulGCD;
    ulN /= ulGCD;

    pMixedNumber->ulInt = ulM / ulN;
    pMixedNumber->ulNum = ulM % ulN;
    pMixedNumber->ulDen = ulN;
}

static uint8_t si5351_read_register(uint8_t ubRegister)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c0_write_byte(SI5351_I2C_ADDR, ubRegister, I2C_RESTART);
        return i2c0_read_byte(SI5351_I2C_ADDR, I2C_STOP);
    }
}
static void si5351_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    uint8_t pubBuffer[2];

    pubBuffer[0] = ubRegister;
    pubBuffer[1] = ubValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c0_write(SI5351_I2C_ADDR, pubBuffer, 2, I2C_STOP);
    }
}
static void si5351_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    si5351_write_register(ubRegister, (si5351_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t si5351_init()
{
    if(!i2c0_write(SI5351_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    while(si5351_read_status() & SI5351_REG_STATUS_SYS_INIT);

    si5351_write_register(SI5351_REG_CLK_OEB, 0xFF); // Disable all outputs by software
    si5351_write_register(SI5351_REG_OEB_MASK, 0x00); // Control all output enables via the OEB pad

    CLK_MNGR_OUT_DIS(); // Disable all outputs by hardware
    CLK_MNGR_REF_EN(); // Enable reference clock

    while(si5351_read_status() & SI5351_REG_STATUS_CLKIN_LOS); // Wait until it is validated

    si5351_write_register(SI5351_REG_IRQ_MASK, SI5351_REG_IRQ_MASK_XO_LOS); // Mask XTAL loss IRQ since we are not using it as a source
    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00); // Clear all IRQs

    for(uint8_t i = 0; i < 8; i++) // Power down all clocks
        si5351_clock_power_down(i);

    return 1;
}
void si5351_isr()
{
    uint8_t ubFlags = si5351_read_register(SI5351_REG_IRQ_FLAGS);

    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00);
}

uint8_t si5351_read_revision_id()
{
    return si5351_read_register(SI5351_REG_STATUS) & SI5351_REG_STATUS_REVID;
}
uint8_t si5351_read_status()
{
    return si5351_read_register(SI5351_REG_STATUS) & 0xF0;
}

uint8_t si5351_xtal_config(uint32_t ulFrequency, uint8_t ubCapacitance)
{
    if(ulFrequency < 25000000UL || ulFrequency > 27000000UL)
        return 0;

    SI5351_XTAL_FREQ = ulFrequency;

    // TODO: Capacitance
}
uint8_t si5351_clkin_config(uint32_t ulFrequency, uint8_t ubDivider)
{
    if(!ulFrequency)
        return 0;

    if(!ubDivider)
        return 0;

    if(ulFrequency / ubDivider < 10000000UL)
        return 0;

    if(ulFrequency / ubDivider > 40000000UL)
        return 0;

    SI5351_CLKIN_FREQ = ulFrequency;

    switch(ubDivider)
    {
        case 1:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV1);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 0;
        }
        break;
        case 2:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV2);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 1;
        }
        break;
        case 4:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV4);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 2;
        }
        break;
        case 8:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV8);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 3;
        }
        break;
        default:
            return 0;
    }

    return 1;
}

uint8_t si5351_pll_reset(uint8_t ubPLL)
{
    if(ubPLL > 1)
        return 0;

    si5351_write_register(SI5351_REG_PLL_RST, !ubPLL ? SI5351_REG_PLL_RST_PLLA_RESET : SI5351_REG_PLL_RST_PLLB_RESET);

    return 1;
}
uint8_t si5351_pll_set_source(uint8_t ubPLL, uint8_t ubSource)
{
    if(ubPLL > 1)
        return 0;

    switch(ubSource)
    {
        case SI5351_PLL_SRC_XTAL:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~BIT(2 + ubPLL), !ubPLL ? SI5351_REG_PLL_SRC_SRCA_XTAL : SI5351_REG_PLL_SRC_SRCB_XTAL);

            SI5351_PLL_SRC_FREQ[ubPLL] = SI5351_XTAL_FREQ;
        }
        break;
        case SI5351_PLL_SRC_CLKIN:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~BIT(2 + ubPLL), !ubPLL ? SI5351_REG_PLL_SRC_SRCA_CLKIN : SI5351_REG_PLL_SRC_SRCB_CLKIN);

            SI5351_PLL_SRC_FREQ[ubPLL] = SI5351_CLKIN_DIV_FREQ;
        }
        break;
        default:
            return 0;
    }

    return 1;
}
uint8_t si5351_pll_set_freq(uint8_t ubPLL, uint32_t ulFreq)
{
    if(ubPLL > 1)
        return 0;

    if(ulFreq < 600000000UL || ulFreq > 900000000UL) // VCO limits
        return 0;

    // fVCO = fPFD * M
    // M = fVCO / fPFD

    si5351_mixed_number_t *pMultiplier = (si5351_mixed_number_t *)malloc(sizeof(si5351_mixed_number_t));

    memset(pMultiplier, 0, sizeof(si5351_mixed_number_t));

    if(!pMultiplier)
        return 0;

    si5351_get_mixed_number(ulFreq, SI5351_PLL_SRC_FREQ[ubPLL], pMultiplier);

    if(!pMultiplier->ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        free(pMultiplier);

        return 0;
    }

    if(pMultiplier->ulInt < 15 || pMultiplier->ulInt > 90) // Integer limits
    {
        free(pMultiplier);

        return 0;
    }

    if(pMultiplier->ulInt == 90 && pMultiplier->ulNum) // Fractional limits
    {
        free(pMultiplier);

        return 0;
    }

    if(pMultiplier->ulDen > BIT(20) - 1) // Denominator must fit in 20 bits
    {
        free(pMultiplier);

        return 0;
    }

    uint32_t ulP1 = 128 * pMultiplier->ulInt + (uint32_t)(128.f * (double)pMultiplier->ulNum / pMultiplier->ulDen) - 512;
    uint32_t ulP2 = 128 * pMultiplier->ulNum - pMultiplier->ulDen * (uint32_t)(128.f * (double)pMultiplier->ulNum / pMultiplier->ulDen) - 512;
    uint32_t ulP3 = pMultiplier->ulDen;

    if(!pMultiplier->ulNum && !(pMultiplier->ulInt & 1)) // If multiplier is an even integer, turn on integer mode
        si5351_rmw_register(SI5351_REG_CLKn_CFG(6 + ubPLL), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
    else
        si5351_rmw_register(SI5351_REG_CLKn_CFG(6 + ubPLL), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

    si5351_write_register(SI5351_REG_MSNn_P1_LSB(ubPLL), (ulP1 >> 0) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P1_MID(ubPLL), (ulP1 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P1_MSB(ubPLL), (ulP1 >> 16) & 0x03);
    si5351_write_register(SI5351_REG_MSNn_P2_LSB(ubPLL), (ulP2 >> 0) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P2_MID(ubPLL), (ulP2 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P3_LSB(ubPLL), (ulP3 >> 0) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P3_MID(ubPLL), (ulP3 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P3_2_MSB(ubPLL), ((ulP3 >> 12) & 0xF0) | ((ulP2 >> 16) & 0x0F));

    si5351_pll_reset(ubPLL);

    SI5351_PLL_FREQ[ubPLL] = SI5351_PLL_SRC_FREQ[ubPLL] * ((double)pMultiplier->ulInt + ((double)pMultiplier->ulNum / pMultiplier->ulDen));

    free(pMultiplier);

    return 1;
}

uint8_t si5351_multisynth_set_source(uint8_t ubMS, uint8_t ubSource)
{
    if(ubMS > 7)
        return 0;

    switch(ubSource)
    {
        case SI5351_MS_SRC_PLLA:
        {
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), (uint8_t)~BIT(5), SI5351_REG_CLKn_CFG_MS_SRC_PLLA);

            SI5351_MS_SRC_FREQ[ubMS] = SI5351_PLL_FREQ[0];
        }
        break;
        case SI5351_MS_SRC_PLLB:
        {
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), (uint8_t)~BIT(5), SI5351_REG_CLKn_CFG_MS_SRC_PLLB);

            SI5351_MS_SRC_FREQ[ubMS] = SI5351_PLL_FREQ[1];
        }
        break;
        default:
            return 0;
    }

    return 1;
}
uint8_t si5351_multisynth_set_freq(uint8_t ubMS, uint32_t ulFreq)
{
    if(ubMS > 7)
        return 0;

    if(ulFreq < 666666UL || ulFreq > 200000000UL) // Divider limits
        return 0;

    // fMS = fVCO / M
    // M = fVCO / fMS

    si5351_mixed_number_t *pDivider = (si5351_mixed_number_t *)malloc(sizeof(si5351_mixed_number_t));

    memset(pDivider, 0, sizeof(si5351_mixed_number_t));

    if(!pDivider)
        return 0;

    si5351_get_mixed_number(SI5351_MS_SRC_FREQ[ubMS], ulFreq, pDivider);

    if(!pDivider->ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        free(pDivider);

        return 0;
    }

    if(ubMS > 5)
    {
        if(pDivider->ulInt < 6 || pDivider->ulInt > 254 || (pDivider->ulInt & 1))
        {
            free(pDivider);

            return 0;
        }

        si5351_write_register(ubMS == 6 ? SI5351_REG_MS6_P1 : SI5351_REG_MS7_P1, pDivider->ulInt);
    }
    else
    {
        if(pDivider->ulInt < 4 || pDivider->ulInt > 900) // Integer limits
        {
            free(pDivider);

            return 0;
        }

        if(pDivider->ulNum && pDivider->ulInt < 8) // Integer limits
        {
            free(pDivider);

            return 0;
        }

        if(!pDivider->ulNum && pDivider->ulInt < 8 && pDivider->ulInt != 4 && pDivider->ulInt != 6) // Integer limits
        {
            free(pDivider);

            return 0;
        }

        if(pDivider->ulInt == 900 && pDivider->ulNum) // Fractional limits
        {
            free(pDivider);

            return 0;
        }

        if(pDivider->ulDen > BIT(20) - 1) // Denominator must fit in 20 bits
        {
            free(pDivider);

            return 0;
        }

        uint32_t ulP1 = 128 * pDivider->ulInt + (uint32_t)(128.f * (double)pDivider->ulNum / pDivider->ulDen) - 512;
        uint32_t ulP2 = 128 * pDivider->ulNum - pDivider->ulDen * (uint32_t)(128.f * (double)pDivider->ulNum / pDivider->ulDen) - 512;
        uint32_t ulP3 = pDivider->ulDen;

        if(!pDivider->ulNum && !(pDivider->ulInt & 1)) // If multiplier is an even integer, turn on integer mode
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
        else
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

        si5351_write_register(SI5351_REG_MSn_P1_LSB(ubMS), (ulP1 >> 0) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P1_MID(ubMS), (ulP1 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P1_MSB_DIV(ubMS), ((pDivider->ulNum == 4) ? SI5351_REG_MSn_P1_MSB_DIV_MSn_DIV4 : 0x00) | ((ulP1 >> 16) & 0x03));
        si5351_write_register(SI5351_REG_MSn_P2_LSB(ubMS), (ulP2 >> 0) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P2_MID(ubMS), (ulP2 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P3_LSB(ubMS), (ulP3 >> 0) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P3_MID(ubMS), (ulP3 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P3_2_MSB(ubMS), ((ulP3 >> 12) & 0xF0) | ((ulP2 >> 16) & 0x0F));
    }

    SI5351_MS_FREQ[ubMS] = SI5351_MS_SRC_FREQ[ubMS] / ((double)pDivider->ulInt + ((double)pDivider->ulNum / pDivider->ulDen));

    free(pDivider);

    return 1;
}
uint8_t si5351_multisynth_set_phase_offset(uint8_t ubMS, float fOffset)
{
    if(ubMS > 5)
        return 0;

    // TODO: phase offset
    //si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

    return 0;
}

uint8_t si5351_clock_power_up(uint8_t ubClock)
{
    if(ubClock > 7)
        return 0;

    si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~SI5351_REG_CLKn_CFG_POWER_DOWN, SI5351_REG_CLKn_CFG_POWER_UP);

    return 1;
}
uint8_t si5351_clock_power_down(uint8_t ubClock)
{
    if(ubClock > 7)
        return 0;

    si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~SI5351_REG_CLKn_CFG_POWER_DOWN, SI5351_REG_CLKn_CFG_POWER_DOWN);

    return 1;
}
uint8_t si5351_clock_enable(uint8_t ubClock)
{
    if(ubClock > 7)
        return 0;

    si5351_rmw_register(SI5351_REG_CLK_OEB, ~BIT(ubClock), 0);

    return 1;
}
uint8_t si5351_clock_disable(uint8_t ubClock)
{
    if(ubClock > 7)
        return 0;

    si5351_rmw_register(SI5351_REG_CLK_OEB, ~BIT(ubClock), BIT(ubClock));

    return 1;
}
uint8_t si5351_clock_set_disable_state(uint8_t ubClock, uint8_t ubDisableState)
{
    if(ubClock > 7)
        return 0;

    ubDisableState &= 0x03;

    si5351_rmw_register(ubClock < 4 ? SI5351_REG_CLK3_0_DIS : SI5351_REG_CLK7_4_DIS, ~(0x03 << (2 * (ubClock % 4))), ubDisableState << (2 * (ubClock % 4)));
}
uint8_t si5351_clock_set_drive_current(uint8_t ubClock, uint8_t ubDriveCurrent)
{
    if(!ubDriveCurrent)
        return 0;

    if(ubClock > 7)
        return 0;

    switch(ubDriveCurrent)
    {
        case 2:
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x03, SI5351_REG_CLKn_CFG_IDRV_2MA);
        break;
        case 4:
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x03, SI5351_REG_CLKn_CFG_IDRV_4MA);
        break;
        case 6:
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x03, SI5351_REG_CLKn_CFG_IDRV_6MA);
        break;
        case 8:
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x03, SI5351_REG_CLKn_CFG_IDRV_8MA);
        break;
        default:
            return 0;
    }

    return 1;
}
uint8_t si5351_clock_set_invert(uint8_t ubClock, uint8_t ubInvert)
{
    if(ubClock > 7)
        return 0;

    si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), ~SI5351_REG_CLKn_CFG_CLK_INV, ubInvert ? SI5351_REG_CLKn_CFG_CLK_INV : 0x00);

    return 1;
}
uint8_t si5351_clock_set_source(uint8_t ubClock, uint8_t ubSource)
{
    if(ubClock > 7)
        return 0;

    switch(ubSource)
    {
        case SI5351_CLK_SRC_XTAL:
        {
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x0C, SI5351_REG_CLKn_CFG_SRC_XTAL);

            SI5351_CLK_SRC_FREQ[ubClock] = SI5351_XTAL_FREQ;
        }
        break;
        case SI5351_CLK_SRC_CLKIN:
        {
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x0C, SI5351_REG_CLKn_CFG_SRC_CLKIN);

            SI5351_CLK_SRC_FREQ[ubClock] = SI5351_CLKIN_DIV_FREQ;
        }
        break;
        case SI5351_CLK_SRC_MS04:
        {
            if(ubClock == 0 || ubClock == 4)
                return 0;

            if(ubClock < 4)
            {
                si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x0C, SI5351_REG_CLKn_CFG_SRC_MSYNTH0);

                SI5351_CLK_SRC_FREQ[ubClock] = SI5351_MS_FREQ[0];
            }
            else
            {
                si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x0C, SI5351_REG_CLKn_CFG_SRC_MSYNTH4);

                SI5351_CLK_SRC_FREQ[ubClock] = SI5351_MS_FREQ[4];
            }
        }
        break;
        case SI5351_CLK_SRC_MSn:
        {
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubClock), (uint8_t)~0x0C, SI5351_REG_CLKn_CFG_SRC_MSYNTHn);

            SI5351_CLK_SRC_FREQ[ubClock] = SI5351_MS_FREQ[ubClock];
        }
        break;
        default:
            return 0;
    }

    return 1;
}
uint8_t si5351_clock_set_output_divider(uint8_t ubClock, uint8_t ubDivider)
{
    if(!ubDivider)
        return 0;

    if(ubClock > 7)
        return 0;

    switch(ubDivider)
    {
        case 1:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV1);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV1);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV1);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 0;
        }
        break;
        case 2:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV2);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV2);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV2);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 1;
        }
        break;
        case 4:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV4);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV4);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV4);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 2;
        }
        break;
        case 8:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV8);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV8);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV8);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 3;
        }
        break;
        case 16:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV16);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV16);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV16);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 4;
        }
        break;
        case 32:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV32);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV32);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV32);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 5;
        }
        break;
        case 64:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV64);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV64);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV64);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 6;
        }
        break;
        case 128:
        {
            if(ubClock < 6)
                si5351_rmw_register(SI5351_REG_MSn_P1_MSB_DIV(ubClock), (uint8_t)~0x70, SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128);
            else if(ubClock == 6)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x07, SI5351_REG_MS6_7_DIV_R6_DIV_DIV128);
            else if(ubClock == 7)
                si5351_rmw_register(SI5351_REG_MS6_7_DIV, (uint8_t)~0x70, SI5351_REG_MS6_7_DIV_R7_DIV_DIV128);

            SI5351_CLK_FREQ[ubClock] = SI5351_CLK_SRC_FREQ[ubClock] >> 7;
        }
        break;
        default:
            return 0;
    }

    return 1;
}