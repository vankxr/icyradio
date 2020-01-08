#include "si5351.h"

static uint32_t SI5351_XTAL_FREQ = 26000000UL;
static uint32_t SI5351_CLKIN_FREQ = 50000000UL;
static uint32_t SI5351_CLKIN_DIV_FREQ;
static uint32_t SI5351_PLL_SRC_FREQ[2];
static uint32_t SI5351_PLL_FREQ[2];
static uint32_t SI5351_CLK_FREQ[8];

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

uint8_t si5351_set_clkin_divider(uint8_t ubDivider)
{
    switch(ubDivider)
    {
        case 1:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV1);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 0;
        }
        break;
        case 2:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV2);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 1;
        }
        break;
        case 4:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV4);

            SI5351_CLKIN_DIV_FREQ = SI5351_CLKIN_FREQ >> 2;
        }
        break;
        case 8:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~0xC0, SI5351_REG_PLL_SRC_CLKIN_DIV8);

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
        case SI5351_PLL_SRC_CLKIN:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~BIT(2 + ubPLL), !ubPLL ? SI5351_REG_PLL_SRC_SRCA_CLKIN : SI5351_REG_PLL_SRC_SRCB_CLKIN);

            SI5351_PLL_SRC_FREQ[ubPLL] = SI5351_CLKIN_DIV_FREQ;
        }
        break;
        case SI5351_PLL_SRC_XTAL:
        {
            si5351_rmw_register(SI5351_REG_PLL_SRC, ~BIT(2 + ubPLL), !ubPLL ? SI5351_REG_PLL_SRC_SRCA_XTAL : SI5351_REG_PLL_SRC_SRCB_XTAL);

            SI5351_PLL_SRC_FREQ[ubPLL] = SI5351_XTAL_FREQ;
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

    //uint8_t ubIntMode = ;

    free(pMultiplier);

    return 1;
}




uint8_t si5351_read_clock_enable(uint8_t ubID)
{
    if(ubID < 0 || ubID > 7)
        return 0;

    return !(si5351_read_register(SI5351_REG_CLK_OEB) & BIT(ubID));
}
void si5351_write_clock_enable(uint8_t ubID, uint8_t ubEnable)
{
    if(ubID < 0 || ubID > 7)
        return;

    si5351_rmw_register(SI5351_REG_CLK_OEB, ~BIT(ubID), !ubEnable ? BIT(ubID) : 0x00);
}

uint8_t si5351_read_clock_oeb_mask()
{
    return si5351_read_register(SI5351_REG_OEB_MASK);
}
void si5351_write_clock_oeb_mask(uint8_t ubMask)
{
    si5351_write_register(SI5351_REG_OEB_MASK, ubMask);
}

uint8_t si5351_read_pll_src()
{
    return si5351_read_register(SI5351_REG_PLL_SRC);
}
void si5351_write_pll_src(uint8_t ubPLLSource)
{
    si5351_write_register(SI5351_REG_PLL_SRC, ubPLLSource & 0xCC);
}

uint8_t si5351_read_clock_config(uint8_t ubID)
{
    if(ubID < 0 || ubID > 7)
        return 0;

    return si5351_read_register(SI5351_REG_CLKn_CFG(ubID));
}
void si5351_write_clock_config(uint8_t ubID, uint8_t ubConfig)
{
    if(ubID < 0 || ubID > 5)
        return;

    si5351_write_register(SI5351_REG_CLKn_CFG(ubID), ubConfig);
}

uint8_t si5351_read_clock_disable_state(uint8_t ubID)
{
    if(ubID < 0 || ubID > 7)
        return 0;

    return (si5351_read_register(ubID < 4 ? SI5351_REG_CLK3_0_DIS : SI5351_REG_CLK7_4_DIS) >> (2 * (ubID % 4))) & 0x03;
}
void si5351_write_clock_disable_state(uint8_t ubID, uint8_t ubDisableState)
{
    if(ubID < 0 || ubID > 7)
        return;

    ubDisableState &= 0x03;

    uint8_t ubRegValue = si5351_read_register(ubID < 4 ? SI5351_REG_CLK3_0_DIS : SI5351_REG_CLK7_4_DIS);

    ubRegValue &= ~(0x03 << (2 * (ubID % 4)));
    ubRegValue |= ubDisableState << (2 * (ubID % 4));

    si5351_write_register(ubID < 4 ? SI5351_REG_CLK3_0_DIS : SI5351_REG_CLK7_4_DIS, ubRegValue);
}

uint8_t si5351_read_clock_phase(uint8_t ubID)
{
    if(ubID < 0 || ubID > 5)
        return 0;

    return si5351_read_register(SI5351_REG_CLKn_PHOFF(ubID));
}
void si5351_write_clock_phase(uint8_t ubID, uint8_t ubPhase)
{
    if(ubID < 0 || ubID > 5)
        return;

    si5351_write_register(SI5351_REG_CLKn_PHOFF(ubID), ubPhase & 0x7F);
}

uint8_t si5351_read_xtal_cload()
{
    return si5351_read_register(SI5351_REG_XTAL_CL);
}
void si5351_write_xtal_cload(uint8_t ubCLoad)
{
    if(!(ubCLoad & 0xC0))
        return;

    si5351_write_register(SI5351_REG_XTAL_CL, ubCLoad & 0xC0);
}

uint8_t si5351_read_fanout_enable()
{
    return si5351_read_register(SI5351_REG_FANOUT_EN);
}
void si5351_write_fanout_enable(uint8_t ubEnable)
{
    si5351_write_register(SI5351_REG_FANOUT_EN, ubEnable & 0xD0);
}