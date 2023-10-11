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
    uint8_t ubValue = 0x00;

    axi_iic_lock(AXI_IIC_SYS_INST); // Lock the I2C bus so the next two transactions are not interrupted

    axi_iic_write_byte(AXI_IIC_SYS_INST, SI5351_I2C_ADDR, ubRegister, AXI_IIC_RESTART);
    ubValue = axi_iic_read_byte(AXI_IIC_SYS_INST, SI5351_I2C_ADDR, AXI_IIC_STOP);

    axi_iic_unlock(AXI_IIC_SYS_INST); // Unlock the I2C bus

    return ubValue;
}
static void si5351_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    uint8_t pubBuffer[2];

    pubBuffer[0] = ubRegister;
    pubBuffer[1] = ubValue;

    // No need to lock the I2C bus here, since I2C transactions are guaranteed to be atomic
    axi_iic_write(AXI_IIC_SYS_INST, SI5351_I2C_ADDR, pubBuffer, 2, AXI_IIC_STOP);
}
static void si5351_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    si5351_write_register(ubRegister, (si5351_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t si5351_init()
{
    if(!axi_iic_write_byte(AXI_IIC_SYS_INST, SI5351_I2C_ADDR, SI5351_REG_STATUS, AXI_IIC_STOP))
    {
        DBGPRINTLN_CTX("I2C write failed (is the device present?), aborting");

        return 0;
    }

    uint8_t ubReg = axi_iic_read_byte(AXI_IIC_SYS_INST, SI5351_I2C_ADDR, AXI_IIC_STOP);

    DBGPRINTLN_CTX("Found Si5351 Rev %hhu", ubReg & SI5351_REG_STATUS_REVID);

    while(si5351_read_status() & SI5351_REG_STATUS_SYS_INIT)
        usleep(0);

    si5351_write_register(SI5351_REG_CLK_OEB, 0xFF); // Disable all outputs by software
    si5351_write_register(SI5351_REG_OEB_MASK, 0x00); // Control all output enables via the OEB pad

    axi_iic_gpo_set_value(AXI_IIC_SYS_INST, AXI_IIC1_GPO_CLK_MNGR_OEn_BIT, 1); // Disable all outputs by hardware

    si5351_write_register(SI5351_REG_IRQ_MASK, 0x00);
    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00); // Clear all IRQs

    for(uint8_t i = 0; i < 8; i++) // Power down all clocks
        si5351_clock_power_down(i);

    return 1;
}
void si5351_isr()
{
    uint8_t ubFlags = si5351_read_register(SI5351_REG_IRQ_FLAGS);

    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00);

    // TODO:
}

uint8_t si5351_read_revision_id()
{
    return si5351_read_register(SI5351_REG_STATUS) & SI5351_REG_STATUS_REVID;
}
uint8_t si5351_read_status()
{
    return si5351_read_register(SI5351_REG_STATUS) & 0xF8;
}

uint8_t si5351_xtal_config(uint32_t ulFrequency, uint8_t ubCapacitance)
{
    // DBGPRINTLN_CTX("Freq: %lu Hz, Cap: %hhu pF", ulFrequency, ubCapacitance);

    if(ulFrequency < 25000000UL)
    {
        DBGPRINTLN_CTX("XTAL frequency too low (Valid: 25-27 MHz)");

        return 0;
    }

    if(ulFrequency > 27000000UL)
    {
        DBGPRINTLN_CTX("XTAL frequency too high (Valid: 25-27 MHz)");

        return 0;
    }

    switch(ubCapacitance)
    {
        case 6:
            si5351_write_register(SI5351_REG_XTAL_CL, SI5351_REG_XTAL_CL_6PF);
        break;
        case 8:
            si5351_write_register(SI5351_REG_XTAL_CL, SI5351_REG_XTAL_CL_8PF);
        break;
        case 10:
            si5351_write_register(SI5351_REG_XTAL_CL, SI5351_REG_XTAL_CL_10PF);
        break;
        default:
            DBGPRINTLN_CTX("Invalid capacitance (Valid: 6, 8, 10 pF)");

            return 0;
        break;
    }

    SI5351_XTAL_FREQ = ulFrequency;

    return 1;
}
uint8_t si5351_clkin_config(uint32_t ulFrequency, uint8_t ubDivider)
{
    // DBGPRINTLN_CTX("Freq: %lu Hz, Div: %hhu", ulFrequency, ubDivider);

    if(ubDivider < 1)
    {
        DBGPRINTLN_CTX("Invalid divider (Valid: 1, 2, 4, 8)");

        return 0;
    }

    if(ulFrequency / ubDivider < 10000000UL)
    {
        DBGPRINTLN_CTX("Divided frequency too low (%u Hz, Valid: 10-40 MHz)", ulFrequency / ubDivider);

        return 0;
    }

    if(ulFrequency / ubDivider > 40000000UL)
    {
        DBGPRINTLN_CTX("Divided frequency too high (%u Hz, Valid: 10-40 MHz)", ulFrequency / ubDivider);

        return 0;
    }

    switch(ubDivider)
    {
        case 1:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV1);

            SI5351_CLKIN_FREQ = ulFrequency;
            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 0;
        }
        break;
        case 2:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV2);

            SI5351_CLKIN_FREQ = ulFrequency;
            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 1;
        }
        break;
        case 4:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV4);

            SI5351_CLKIN_FREQ = ulFrequency;
            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 2;
        }
        break;
        case 8:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV8);

            SI5351_CLKIN_FREQ = ulFrequency;
            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 3;
        }
        break;
        default:
            DBGPRINTLN_CTX("Invalid divider (Valid: 1, 2, 4, 8)");

            return 0;
        break;
    }

    return 1;
}

uint8_t si5351_pll_reset(uint8_t ubPLL)
{
    if(ubPLL > 1)
        return 0;

    si5351_write_register(SI5351_REG_PLL_RST, !ubPLL ? SI5351_REG_PLL_RST_PLLA_RESET : SI5351_REG_PLL_RST_PLLB_RESET);

    while(si5351_read_register(SI5351_REG_PLL_RST) & (!ubPLL ? SI5351_REG_PLL_RST_PLLA_RESET : SI5351_REG_PLL_RST_PLLB_RESET))
        usleep(0);

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
    // DBGPRINTLN_CTX("PLL: %hhu, Freq: %lu Hz", ubPLL, ulFreq);

    if(ubPLL > 1)
        return 0;

    if(ulFreq < 600000000UL)
    {
        DBGPRINTLN_CTX("VCO frequency too low (Valid: 600-900 MHz)");

        return 0;
    }

    if(ulFreq > 900000000UL)
    {
        DBGPRINTLN_CTX("VCO frequency too high (Valid: 600-900 MHz)");

        return 0;
    }

    si5351_mixed_number_t xMult;

    memset(&xMult, 0, sizeof(si5351_mixed_number_t));

    si5351_get_mixed_number(ulFreq, SI5351_PLL_SRC_FREQ[ubPLL], &xMult);

    if(!xMult.ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        DBGPRINTLN_CTX("Division by zero");

        return 0;
    }

    if(xMult.ulInt < 15 || xMult.ulInt > 90) // Integer limits
    {
        DBGPRINTLN_CTX("Invalid integer multiplier (%u, Valid: 15-90)", xMult.ulInt);

        return 0;
    }

    if(xMult.ulInt == 90 && xMult.ulNum > 0) // Fractional limits
    {
        DBGPRINTLN_CTX("Invalid multiplier (%u + (%u / %u), Valid: 15-90 + (0 / 1))", xMult.ulInt, xMult.ulNum, xMult.ulDen);

        return 0;
    }

    if(xMult.ulDen > BIT(20) - 1) // Denominator must fit in 20 bits
    {
        DBGPRINTLN_CTX("Invalid denominator (%u, Valid: < %lu)", xMult.ulDen, BIT(20));

        return 0;
    }

    uint32_t ulP1 = 128 * xMult.ulInt + (uint32_t)((128 * xMult.ulNum) / xMult.ulDen) - 512;
    uint32_t ulP2 = 128 * xMult.ulNum - xMult.ulDen * (uint32_t)((128 * xMult.ulNum) / xMult.ulDen);
    uint32_t ulP3 = xMult.ulDen;

    if(!xMult.ulNum && !(xMult.ulInt & 1)) // If multiplier is an even integer, turn on integer mode
        si5351_rmw_register(SI5351_REG_CLKn_CFG(6 + ubPLL), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
    else
        si5351_rmw_register(SI5351_REG_CLKn_CFG(6 + ubPLL), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

    si5351_write_register(SI5351_REG_MSNn_P3_MID(ubPLL), (ulP3 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P3_LSB(ubPLL), (ulP3 >> 0) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P1_MSB(ubPLL), (ulP1 >> 16) & 0x03);
    si5351_write_register(SI5351_REG_MSNn_P1_MID(ubPLL), (ulP1 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P1_LSB(ubPLL), (ulP1 >> 0) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P3_2_MSB(ubPLL), ((ulP3 >> 12) & 0xF0) | ((ulP2 >> 16) & 0x0F));
    si5351_write_register(SI5351_REG_MSNn_P2_MID(ubPLL), (ulP2 >> 8) & 0xFF);
    si5351_write_register(SI5351_REG_MSNn_P2_LSB(ubPLL), (ulP2 >> 0) & 0xFF);

    si5351_pll_reset(ubPLL);

    SI5351_PLL_FREQ[ubPLL] = (uint64_t)SI5351_PLL_SRC_FREQ[ubPLL] * xMult.ulInt + (((uint64_t)SI5351_PLL_SRC_FREQ[ubPLL] * xMult.ulNum) / xMult.ulDen);

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
    // DBGPRINTLN_CTX("MS: %hhu, Freq: %lu Hz", ubMS, ulFreq);

    if(ubMS > 7)
        return 0;

    if(ulFreq < 666666UL)
    {
        DBGPRINTLN_CTX("Frequency too low (Valid: 666.666-200 MHz)");

        return 0;
    }

    if(ulFreq > 200000000UL)
    {
        DBGPRINTLN_CTX("Frequency too high (Valid: 666.666-200 MHz)");

        return 0;
    }

    si5351_mixed_number_t xDiv;

    memset(&xDiv, 0, sizeof(si5351_mixed_number_t));

    si5351_get_mixed_number(SI5351_MS_SRC_FREQ[ubMS], ulFreq, &xDiv);

    if(!xDiv.ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        DBGPRINTLN_CTX("Division by zero");

        return 0;
    }

    if(ubMS > 5)
    {
        if(xDiv.ulInt < 6 || xDiv.ulInt > 254 || (xDiv.ulInt & 1))
        {
            DBGPRINTLN_CTX("Invalid integer divider (%u, Valid: 6-254, Even)", xDiv.ulInt);

            return 0;
        }

        if(xDiv.ulNum > 0)
        {
            DBGPRINTLN_CTX("MS 6 and 7 do not support fractional mode (Div: %u + (%u / %u))", xDiv.ulInt, xDiv.ulNum, xDiv.ulDen);

            return 0;
        }

        si5351_write_register(ubMS == 6 ? SI5351_REG_MS6_P1 : SI5351_REG_MS7_P1, xDiv.ulInt);
    }
    else
    {
        if(xDiv.ulInt < 4 || xDiv.ulInt > 900) // Integer limits
        {
            DBGPRINTLN_CTX("Invalid integer divider (%u, Valid: 4-900)", xDiv.ulInt);

            return 0;
        }

        if(xDiv.ulNum && xDiv.ulInt < 8) // Integer limits
        {
            DBGPRINTLN_CTX("Fractional part not supported for integer < 8 (Div: %u + (%u / %u))", xDiv.ulInt, xDiv.ulNum, xDiv.ulDen);

            return 0;
        }

        if(xDiv.ulInt < 8 && xDiv.ulInt != 4 && xDiv.ulInt != 6) // Integer limits
        {
            DBGPRINTLN_CTX("Invalid integer divider < 8 (%u, Valid: 4, 6)", xDiv.ulInt);

            return 0;
        }

        if(xDiv.ulInt == 900 && xDiv.ulNum) // Fractional limits
        {
            DBGPRINTLN_CTX("Invalid divider (%u + (%u / %u), Valid: 4, 6, 8-900 + (0 / 1))", xDiv.ulInt, xDiv.ulNum, xDiv.ulDen);

            return 0;
        }

        if(xDiv.ulDen > BIT(20) - 1) // Denominator must fit in 20 bits
        {
            DBGPRINTLN_CTX("Invalid denominator (%u, Valid: < %lu)", xDiv.ulDen, BIT(20));

            return 0;
        }

        uint32_t ulP1 = 128 * xDiv.ulInt + (uint32_t)((128 * xDiv.ulNum) / xDiv.ulDen) - 512;
        uint32_t ulP2 = 128 * xDiv.ulNum - xDiv.ulDen * (uint32_t)((128 * xDiv.ulNum) / xDiv.ulDen);
        uint32_t ulP3 = xDiv.ulDen;

        float fPhase = si5351_multisynth_get_phase_offset(ubMS);

        if(!xDiv.ulNum && !(xDiv.ulInt & 1) && fPhase == 0.f) // If multiplier is an even integer, and we are not using phase offset, turn on integer mode
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
        else
            si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

        si5351_write_register(SI5351_REG_MSn_P3_MID(ubMS), (ulP3 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P3_LSB(ubMS), (ulP3 >> 0) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P1_MSB_DIV(ubMS), ((xDiv.ulNum == 4) ? SI5351_REG_MSn_P1_MSB_DIV_MSn_DIV4 : 0x00) | ((ulP1 >> 16) & 0x03));
        si5351_write_register(SI5351_REG_MSn_P1_MID(ubMS), (ulP1 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P1_LSB(ubMS), (ulP1 >> 0) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P3_2_MSB(ubMS), ((ulP3 >> 12) & 0xF0) | ((ulP2 >> 16) & 0x0F));
        si5351_write_register(SI5351_REG_MSn_P2_MID(ubMS), (ulP2 >> 8) & 0xFF);
        si5351_write_register(SI5351_REG_MSn_P2_LSB(ubMS), (ulP2 >> 0) & 0xFF);

        si5351_multisynth_set_phase_offset(ubMS, fPhase);
    }

    SI5351_MS_FREQ[ubMS] = ((uint64_t)SI5351_MS_SRC_FREQ[ubMS] * xDiv.ulDen) / (((uint64_t)xDiv.ulInt * xDiv.ulDen) + xDiv.ulNum);

    return 1;
}
uint8_t si5351_multisynth_set_phase_offset(uint8_t ubMS, float fOffset)
{
    if(ubMS > 5)
        return 0;

    if(fOffset < 0.f || fOffset >= 360.f)
        return 0;

    float fTimeOffset = (fOffset / 360.f) * 1000000.f / SI5351_MS_FREQ[ubMS]; // In microsseconds
    float fOffsetCode = (SI5351_MS_SRC_FREQ[ubMS] * 4.f / 1000000.f) * fTimeOffset;

    uint8_t ubOffsetCode = fOffsetCode + 0.5f; // Round to nearest

    if(ubOffsetCode > 127)
        return 0;

    si5351_rmw_register(SI5351_REG_CLKn_CFG(ubMS), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC); // Fractional mode is required to use phase offsets
    si5351_write_register(SI5351_REG_CLKn_PHOFF(ubMS), ubOffsetCode);

    return 1;
}
float si5351_multisynth_get_phase_offset(uint8_t ubMS)
{
    if(ubMS > 5)
        return 0.f;

    uint8_t ubOffsetCode = si5351_read_register(SI5351_REG_CLKn_PHOFF(ubMS));

    float fTimeOffset = (float)ubOffsetCode / (SI5351_MS_SRC_FREQ[ubMS] * 4.f / 1000000.f);

    return fTimeOffset * 360.f / (1000000.f / SI5351_MS_FREQ[ubMS]);
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