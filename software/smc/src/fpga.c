#include "fpga.h"

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize)
{
    if(!pubBitstream || !ulBitstreamSize)
        return 0;

    FPGA_HARD_RESET(); // Reset
    FPGA_SELECT();

    while(FPGA_CFG_DONE()); // CDONE should fall

    delay_ms(10);

    FPGA_HARD_UNRESET(); // Release reset

    delay_ms(10);

    FPGA_UNSELECT();

    usart1_spi_write_byte(0x00, 1); // 8 clocks for internal housekeeping

    FPGA_SELECT();

    usart1_spi_write(pubBitstream, ulBitstreamSize, 1); // Send bitstream

    FPGA_UNSELECT();

    uint8_t i = 0;

    while(!FPGA_CFG_DONE()) // Send clocks until CDONE rises, should take no more than 100 clocks
    {
        if(i >= 100)
            return 0;

        usart1_spi_write_byte(0x00, 1);

        i += 8;
    }

    for(uint8_t i = 0; i < 49; i += 8) // Send ~49 clocks before IOs go into user mode
        usart1_spi_write_byte(0x00, 1);

    return 1;
}

// Design specific

static uint32_t fpga_read_register(uint8_t ubRegister)
{
    uint8_t ubBuf[4];

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        FPGA_SELECT();

        usart1_spi_write_byte(0x80 | (ubRegister & 0x7F), 1);
        usart1_spi_read(ubBuf, 4, 0x00);

        FPGA_UNSELECT();
    }

    return ((uint32_t)ubBuf[0] << 24) | ((uint32_t)ubBuf[1] << 16) | ((uint32_t)ubBuf[2] << 8) | ((uint32_t)ubBuf[3] << 0);
}
static void fpga_write_register(uint8_t ubRegister, uint32_t ulValue)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        FPGA_SELECT();

        usart1_spi_write_byte(ubRegister & 0x7F, 0);
        usart1_spi_write_byte((ulValue >> 24) & 0xFF, 0);
        usart1_spi_write_byte((ulValue >> 16) & 0xFF, 0);
        usart1_spi_write_byte((ulValue >> 8) & 0xFF, 0);
        usart1_spi_write_byte((ulValue >> 0) & 0xFF, 1);

        FPGA_UNSELECT();
    }
}
static void fpga_rmw_register(uint8_t ubRegister, uint32_t ulMask, uint32_t ulValue)
{
    fpga_write_register(ubRegister, (fpga_read_register(ubRegister) & ulMask) | ulValue);
}

uint8_t fpga_init()
{
    FPGA_SOFT_RESET();
    delay_ms(20);
    FPGA_SOFT_UNRESET();
    delay_ms(20);

    if(fpga_read_design_id() != 0xDADC)
        return 0;

    return 1;
}

uint16_t fpga_read_design_id()
{
    return (fpga_read_register(FPGA_REG_ID) & FPGA_REG_ID_DESIGN_ID) >> 16;
}
uint16_t fpga_read_design_version()
{
    return (fpga_read_register(FPGA_REG_ID) & FPGA_REG_ID_DESIGN_VERSION) >> 0;
}

void fpga_reset_module(uint32_t ulModule, uint8_t ubReset)
{
    uint32_t ulReg = fpga_read_register(FPGA_REG_RST_CNTRL);

    if(ubReset)
        ulReg |= ulModule;
    else
        ulReg &= ~ulModule;

    fpga_write_register(FPGA_REG_RST_CNTRL, ulReg);
}

void fpga_irq_set_mask(uint8_t ubID, uint8_t ubMask)
{
    switch(ubID)
    {
        case FPGA_IRQ_SMC:
            fpga_rmw_register(FPGA_REG_IRQ_CNTRL_STATUS, 0x0000FF00, (ubMask & 0xFF) << 0);
        break;
        case FPGA_IRQ_DSP:
            fpga_rmw_register(FPGA_REG_IRQ_CNTRL_STATUS, 0x000000FF, (ubMask & 0xFF) << 8);
        break;
    }
}
uint8_t fpga_irq_get_status()
{
    return (fpga_read_register(FPGA_REG_IRQ_CNTRL_STATUS) >> 16) & 0xFF;
}
void fpga_irq_set(uint8_t ubMask)
{
    fpga_rmw_register(FPGA_REG_IRQ_CNTRL_STATUS, 0x0000FFFF, (ubMask & 0xFF) << 24);
}
void fpga_irq_clear(uint8_t ubMask)
{
    fpga_rmw_register(FPGA_REG_IRQ_CNTRL_STATUS, 0x0000FFFF, (ubMask & 0xFF) << 16);
}

void fpga_rgb_led_enable()
{
    fpga_write_register(FPGA_REG_LED_CNTRL, FPGA_REG_LED_CNTRL_LED_EN);
}
void fpga_rgb_led_disable()
{
    fpga_write_register(FPGA_REG_LED_CNTRL, 0);
}
void fpga_rbg_led_set_duty(uint8_t ubColor, uint16_t usDuty)
{
    if(ubColor > FPGA_LED_BLUE)
        return;

    fpga_write_register(FPGA_REG_RED_LED_DUTY + ubColor, usDuty);
}
uint16_t fpga_rbg_led_get_duty(uint8_t ubColor)
{
    if(ubColor > FPGA_LED_BLUE)
        return 0;

    return fpga_read_register(FPGA_REG_RED_LED_DUTY + ubColor);
}

void fpga_adc_dpram_sample(uint32_t *pulData, uint16_t usSize)
{
    if(!pulData)
        return;

    if(!usSize || usSize > FPGA_ADC_DPRAM_SIZE)
        return;

    fpga_write_register(FPGA_REG_ADC_DPRAM_CNTRL, FPGA_REG_ADC_DPRAM_CNTRL_RD_ADDR_INC | FPGA_REG_ADC_DPRAM_CNTRL_TRIG); // Enable auto address increment and trigger write

    while(!(fpga_read_register(FPGA_REG_ADC_DPRAM_CNTRL) & FPGA_REG_ADC_DPRAM_CNTRL_WR_EN)); // Wait for the write to start
    while(fpga_read_register(FPGA_REG_ADC_DPRAM_CNTRL) & FPGA_REG_ADC_DPRAM_CNTRL_WR_EN); // Wait for the write to end

    fpga_write_register(FPGA_REG_ADC_DPRAM_ADDR, 0); // Reset the read address

    while(usSize--)
        *pulData++ = fpga_read_register(FPGA_REG_ADC_DPRAM_DATA);
}

void fpga_ddc_set_lo_noise_shaping(uint8_t ubEnable)
{
    fpga_write_register(FPGA_REG_DDC_CNTRL, ubEnable ? FPGA_REG_DDC_CNTRL_LO_NS_EN : 0);
}
void fpga_ddc_set_lo_freq(uint32_t ulFrequency)
{
    uint64_t ullFrequency = (uint64_t)ulFrequency << FPGA_DDC_LO_FSZ;
    uint32_t ulValue = ullFrequency / FPGA_DDC_LO_CLK_FREQ;

    fpga_write_register(FPGA_REG_DDC_LO_FREQ, ulValue);
}
uint32_t fpga_ddc_get_lo_freq()
{
    uint32_t ulValue = fpga_read_register(FPGA_REG_DDC_LO_FREQ);
    uint64_t ullFrequency = ulValue * FPGA_DDC_LO_CLK_FREQ;

    return ullFrequency >> FPGA_DDC_LO_FSZ;
}

void fpga_i2s_mux_set_dsp_clock(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFFFC, (ulSource & 0x00000003));
}
uint32_t fpga_i2s_mux_get_dsp_clock()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000003;
}
void fpga_i2s_mux_set_codec_clock(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFFF3, (ulSource & 0x0000000C));
}
uint32_t fpga_i2s_mux_get_codec_clock()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x0000000C;
}
void fpga_i2s_mux_set_dsp_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFEFF, (ulSource & 0x00000100));
}
uint32_t fpga_i2s_mux_get_dsp_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000100;
}
void fpga_i2s_mux_set_codec_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFDFF, (ulSource & 0x00000200));
}
uint32_t fpga_i2s_mux_get_codec_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000200;
}
void fpga_i2s_mux_set_bridge_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFBFF, (ulSource & 0x00000400));
}
uint32_t fpga_i2s_mux_get_bridge_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000400;
}