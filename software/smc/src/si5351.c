#include "si5351.h"

static const si5351_register_t pClockRegisterMap[] = {
	{0x07, 0x01},
	{0x0F, 0x4C},
	{0x10, 0x0F},
	{0x11, 0x0F},
	{0x12, 0x0F},
	{0x13, 0x4F},
	{0x14, 0x8C},
	{0x15, 0x0F},
	{0x16, 0x2F},
	{0x17, 0x8C},
	{0x1A, 0x0C},
	{0x1B, 0x35},
	{0x1C, 0x00},
	{0x1D, 0x0F},
	{0x1E, 0xB1},
	{0x1F, 0x00},
	{0x20, 0x0A},
	{0x21, 0x5B},
	{0x22, 0x00},
	{0x23, 0x19},
	{0x24, 0x00},
	{0x25, 0x0F},
	{0x26, 0xC2},
	{0x27, 0x00},
	{0x28, 0x00},
	{0x29, 0x0E},
	{0x2A, 0x02},
	{0x2B, 0x71},
	{0x2C, 0x00},
	{0x2D, 0x14},
	{0x2E, 0x1E},
	{0x2F, 0x00},
	{0x30, 0x00},
	{0x31, 0xC2},
	{0x32, 0x02},
	{0x33, 0x71},
	{0x34, 0x00},
	{0x35, 0x03},
	{0x36, 0x87},
	{0x37, 0x00},
	{0x38, 0x01},
	{0x39, 0x69},
	{0x3A, 0x00},
	{0x3B, 0x01},
	{0x3C, 0x00},
	{0x3D, 0x07},
	{0x3E, 0x00},
	{0x3F, 0x00},
	{0x40, 0x00},
	{0x41, 0x00},
	{0x42, 0x00},
	{0x43, 0x01},
	{0x44, 0x00},
	{0x45, 0x01},
	{0x46, 0x00},
	{0x47, 0x00},
	{0x48, 0x00},
	{0x49, 0x00},
	{0x52, 0x0C},
	{0x53, 0x35},
	{0x54, 0x00},
	{0x55, 0x06},
	{0x56, 0xD8},
	{0x57, 0x00},
	{0x58, 0x0B},
	{0x59, 0x48},
	{0x5A, 0x4A},
	{0x5B, 0x00},
	{0x95, 0x00},
	{0x96, 0x00},
	{0x97, 0x00},
	{0x98, 0x00},
	{0x99, 0x00},
	{0x9A, 0x00},
	{0x9B, 0x00},
	{0xA2, 0x00},
	{0xA3, 0x00},
	{0xA4, 0x00},
	{0x00, 0x00} // End of list
};

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

    CLK_MNGR_REF_EN(); // Enable reference clock

    while(si5351_read_status() & SI5351_REG_STATUS_CLKIN_LOS); // Wait until it is validated

    si5351_write_irq_mask(SI5351_REG_IRQ_MASK_XO_LOS); // Mask XTAL loss IRQ since we are not using it as a source
    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00);

    si5351_write_register(SI5351_REG_CLK_OEB, 0xFF); // Disable all outputs by software
    si5351_write_clock_oeb_mask(0x00); // Control all output enables via the OEB pad
    CLK_MNGR_OUT_DIS(); // Disable all outputs by hardware

    for(uint8_t i = 0; i < 8; i++) // Power down all clocks
        si5351_write_clock_config(i, SI5351_REG_CLKn_CFG_POWER_DOWN);

    si5351_load_registers(pClockRegisterMap); // Load CBP config

    si5351_pll_reset(1, 1); // Reset both PLLs

    delay_ms(50);

    CLK_MNGR_OUT_EN(); // Enable outputs by hardware

    return 1;
}
void si5351_isr()
{
    uint8_t ubFlags = si5351_read_register(SI5351_REG_IRQ_FLAGS);

    si5351_write_register(SI5351_REG_IRQ_FLAGS, 0x00);
}

void si5351_load_registers(const si5351_register_t *pRegisterMap)
{
    if(!pRegisterMap)
        return;

    while(pRegisterMap->ubRegister)
    {
        si5351_write_register(pRegisterMap->ubRegister, pRegisterMap->ubValue);

        pRegisterMap++;
    }
}

void si5351_pll_reset(uint8_t ubA, uint8_t ubB)
{
    if(!ubA && !ubB)
        return;

    si5351_write_register(SI5351_REG_PLL_RST, (ubA ? SI5351_REG_PLL_RST_PLLA_RESET : 0x00) | (ubB ? SI5351_REG_PLL_RST_PLLB_RESET : 0x00));
}

uint8_t si5351_read_revision_id()
{
    return si5351_read_register(SI5351_REG_STATUS) & SI5351_REG_STATUS_REVID;
}

uint8_t si5351_read_status()
{
    return si5351_read_register(SI5351_REG_STATUS) & 0xF0;
}

uint8_t si5351_read_irq_mask()
{
    return si5351_read_register(SI5351_REG_IRQ_MASK) & 0xF0;
}
void si5351_write_irq_mask(uint8_t ubMask)
{
    si5351_write_register(SI5351_REG_IRQ_MASK, ubMask & 0xF0);
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

    return (si5351_read_register(ubID < 4 ? SI5351_REG_CLK_DIS_0 : SI5351_REG_CLK_DIS_1) >> (2 * (ubID % 4))) & 0x03;
}
void si5351_write_clock_disable_state(uint8_t ubID, uint8_t ubDisableState)
{
    if(ubID < 0 || ubID > 7)
        return;

    ubDisableState &= 0x03;

    uint8_t ubRegValue = si5351_read_register(ubID < 4 ? SI5351_REG_CLK_DIS_0 : SI5351_REG_CLK_DIS_1);

    ubRegValue &= ~(0x03 << (2 * (ubID % 4)));
    ubRegValue |= ubDisableState << (2 * (ubID % 4));

    si5351_write_register(ubID < 4 ? SI5351_REG_CLK_DIS_0 : SI5351_REG_CLK_DIS_1, ubRegValue);
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