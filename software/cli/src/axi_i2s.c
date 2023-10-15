#include "axi_i2s.h"

static void axi_i2s_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        return; // Prevent locking up the AXI bus if the core is in reset

    *(volatile uint32_t *)((uintptr_t)pAXII2SBase + ulRegister) = ulValue;
}
static uint32_t axi_i2s_reg_read(uint32_t ulRegister)
{
    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        return 0; // Prevent locking up the AXI bus if the core is in reset

    return *(volatile uint32_t *)((uintptr_t)pAXII2SBase + ulRegister);
}

uint8_t axi_i2s_init()
{
    uint32_t ulVersion = axi_i2s_get_core_version();

    DBGPRINTLN_CTX("Found AXI I2S Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    if(AXI_CORE_VERSION_MAJOR(ulVersion) < 1)
    {
        DBGPRINTLN_CTX("AXI I2S Core v%d.%d.%d is not supported", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

        return 0;
    }

    return 1;
}

uint32_t axi_i2s_get_core_version()
{
    return axi_i2s_reg_read(AXI_I2S_REG_VERSION);
}

uint8_t axi_i2s_clk_div_config(uint32_t ulMCLKDiv, uint32_t ulBCLKDiv, uint32_t ulLRCLKDiv)
{
    if(axi_i2s_clk_enabled())
        return 0;

    if(!ulMCLKDiv || ulMCLKDiv > 256)
        return 0;

    if(!ulBCLKDiv || ulBCLKDiv > 256)
        return 0;

    if(!ulLRCLKDiv || ulLRCLKDiv > 65536)
        return 0;

    axi_i2s_reg_write(AXI_I2S_REG_MCLK_DIV, ulMCLKDiv - 1);
    axi_i2s_reg_write(AXI_I2S_REG_BCLK_DIV, ulBCLKDiv - 1);
    axi_i2s_reg_write(AXI_I2S_REG_LRCLK_DIV, ulLRCLKDiv - 1);
}
uint8_t axi_i2s_clk_config(uint32_t ulInputFreq, uint32_t ulMCLKFreq, uint32_t ulBCLKFreq, uint32_t ulLRCLKFreq)
{
    uint32_t ulMCLKDiv = ulInputFreq / ulMCLKFreq;
    uint32_t ulBCLKDiv = ulMCLKFreq / ulBCLKFreq;
    uint32_t ulLRCLKDiv = ulBCLKFreq / ulLRCLKFreq;

    return axi_i2s_clk_div_config(ulMCLKDiv, ulBCLKDiv, ulLRCLKDiv);
}
uint8_t axi_i2s_clk_auto_config(uint32_t ulInputFreq, uint32_t ulMCLKFreq, uint32_t ulSampRate, uint32_t *pulBCLKFreq)
{
    // Determine BCLK based on the sample rate, number of channels and channel bit size
    uint32_t ulBCLKFreq = ulSampRate;

    switch(axi_i2s_get_sample_size())
    {
        case AXI_I2S_CHAN_BIT_SZ_16:
            ulBCLKFreq *= 16;
        break;
        case AXI_I2S_CHAN_BIT_SZ_32:
            ulBCLKFreq *= 32;
        break;
    }

    ulBCLKFreq *= axi_i2s_get_num_chans();

    if(!axi_i2s_clk_config(ulInputFreq, ulMCLKFreq, ulBCLKFreq, ulSampRate))
        return 0;

    if(pulBCLKFreq != NULL)
        *pulBCLKFreq = ulBCLKFreq;

    return 1;
}

uint8_t axi_i2s_clk_enable(uint8_t ubEnable)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubEnable && (ulCtrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Already enabled
        return 0;

    if(!ubEnable && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Already disabled
        return 0;

    if(!ubEnable && (ulCtrl & AXI_I2S_REG_CTRL_I2S_EN)) // I2S SERDES enabled, can't disable clock
        return 0;

    if(ubEnable)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN;
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN;

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_clk_enabled()
{
    return !!(axi_i2s_reg_read(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN);
}
uint8_t axi_i2s_enable(uint8_t ubEnable)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubEnable && (ulCtrl & AXI_I2S_REG_CTRL_I2S_EN)) // Already enabled
        return 0;

    if(!ubEnable && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_EN)) // Already disabled
        return 0;

    if(ubEnable && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Clock disabled, can't enable I2S SERDES
        return 0;

    if(ubEnable)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_EN;
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_EN;

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_enabled()
{
    return !!(axi_i2s_reg_read(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_EN);
}
uint8_t axi_i2s_pause(uint8_t ubPause)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubPause && (ulCtrl & AXI_I2S_REG_CTRL_I2S_PAUSE)) // Already paused
        return 0;

    if(!ubPause && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_PAUSE)) // Already unpaused
        return 0;

    if(ubPause)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_PAUSE;
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_PAUSE;

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_paused()
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ulCtrl & AXI_I2S_REG_CTRL_I2S_PAUSE) // Pause requested
    {
        if(ulCtrl & AXI_I2S_REG_CTRL_I2S_PAUSED) // Already paused
            return 2;

        return 1;
    }

    return 0;
}
uint8_t axi_i2s_loopback_enable(uint8_t ubEnable)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubEnable && (ulCtrl & AXI_I2S_REG_CTRL_I2S_LB_EN)) // Already enabled
        return 0;

    if(!ubEnable && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_LB_EN)) // Already disabled
        return 0;

    if(ubEnable)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_LB_EN;
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_LB_EN;

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_loopback_enabled()
{
    return !!(axi_i2s_reg_read(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_LB_EN);
}

uint8_t axi_i2s_set_num_chans(uint8_t ubNumChans)
{
    switch(ubNumChans)
    {
        case 2:
        case 4:
        case 8:
            break;
        default:
            return 0;
    }

    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL);
    ulCtrl |= AXI_I2S_REG_CTRL_I2S_CHAN_MAX(ubNumChans - 1);

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_get_num_chans()
{
    return ((axi_i2s_reg_read(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16) + 1;
}

uint8_t axi_i2s_chan_enable(uint8_t ubChan, uint8_t ubEnable)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubChan > ((ulCtrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16))
        return 0;

    if(ubEnable && (ulCtrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(ubChan))) // Already enabled
        return 0;

    if(!ubEnable && !(ulCtrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(ubChan))) // Already disabled
        return 0;

    if(ubEnable)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_CHAN_EN(ubChan);
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_EN(ubChan);

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
uint8_t axi_i2s_chan_enabled(uint8_t ubChan)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(ubChan > ((ulCtrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16))
        return 0;

    return !!(ulCtrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(ubChan));
}

uint8_t axi_i2s_set_sample_size(enum axi_i2s_chan_bit_sz eBitSz)
{
    uint32_t ulCtrl = axi_i2s_reg_read(AXI_I2S_REG_CTRL);

    if(eBitSz == AXI_I2S_CHAN_BIT_SZ_32)
        ulCtrl |= AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ;
    else
        ulCtrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ;

    axi_i2s_reg_write(AXI_I2S_REG_CTRL, ulCtrl);

    return 1;
}
enum axi_i2s_chan_bit_sz axi_i2s_get_sample_size()
{
    return (axi_i2s_reg_read(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ) ? AXI_I2S_CHAN_BIT_SZ_32 : AXI_I2S_CHAN_BIT_SZ_16;
}