#include "fpga.h"

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize)
{
    if(!pubBitstream || !ulBitstreamSize)
        return 0;

    uint8_t *pubExpandedBitstream = (uint8_t *)malloc(FPGA_BITSTREAM_SIZE);

    if(!pubExpandedBitstream)
        return 0;

    uint32_t ulExpandedBitstreamSize = 0;

    if(!rle_decode(pubBitstream, ulBitstreamSize, pubExpandedBitstream, FPGA_BITSTREAM_SIZE, &ulExpandedBitstreamSize))
        return 0;

    if(ulExpandedBitstreamSize != FPGA_BITSTREAM_SIZE)
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

    usart1_spi_write(pubExpandedBitstream, ulExpandedBitstreamSize, 1); // Send bitstream

    FPGA_UNSELECT();

    free(pubExpandedBitstream);

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

        usart1_spi_write_byte(0x80 | (ubRegister & 0x7F), 0);
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

    fpga_write_register(FPGA_REG_IRQ_STATE, FPGA_REG_IRQ_STATE_CLEAR_ON_READ); // Enable clear on read IRQ flags
    fpga_irq_clear(0xFF); // Clear all IRQs

    fpga_irq_set_mask(FPGA_IRQ_SMC, 0x00);
    fpga_irq_set_mask(FPGA_IRQ_DSP, 0x00);

    fpga_reset_module(FPGA_REG_RST_CNTRL_PLL1_SOFT_RST, 0);
    while(!(fpga_read_register(FPGA_REG_RST_CNTRL) & FPGA_REG_RST_CNTRL_PLL1_LOCKED));

    return 1;
}
void fpga_isr()
{
    uint8_t ubIRQFlags = fpga_irq_get_state();
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

void fpga_pll_config(uint8_t ubID, uint8_t ubEnable, uint8_t ubSleep, uint8_t ubBypass)
{
    switch(ubID)
    {
        case FPGA_PLL1_ID:
        {
            fpga_reset_module(FPGA_REG_RST_CNTRL_PLL1_SOFT_RST, !ubEnable);
            fpga_rmw_register(FPGA_REG_RST_CNTRL, ~(FPGA_REG_RST_CNTRL_PLL1_SLEEP | FPGA_REG_RST_CNTRL_PLL1_BYPASS), (ubSleep ? FPGA_REG_RST_CNTRL_PLL1_SLEEP : 0) | (ubBypass ? FPGA_REG_RST_CNTRL_PLL1_BYPASS : 0));
        }
        break;
        case FPGA_PLL2_ID:
        {
            fpga_reset_module(FPGA_REG_RST_CNTRL_PLL2_SOFT_RST, !ubEnable);
            fpga_rmw_register(FPGA_REG_RST_CNTRL, ~(FPGA_REG_RST_CNTRL_PLL2_SLEEP | FPGA_REG_RST_CNTRL_PLL2_BYPASS), (ubSleep ? FPGA_REG_RST_CNTRL_PLL2_SLEEP : 0) | (ubBypass ? FPGA_REG_RST_CNTRL_PLL2_BYPASS : 0));
        }
        break;
    }
}
uint8_t fpga_pll_get_lock_state(uint8_t ubID)
{
    switch(ubID)
    {
        case FPGA_PLL1_ID:
            return !!(fpga_read_register(FPGA_REG_RST_CNTRL) & FPGA_REG_RST_CNTRL_PLL1_LOCKED);
        case FPGA_PLL2_ID:
            return !!(fpga_read_register(FPGA_REG_RST_CNTRL) & FPGA_REG_RST_CNTRL_PLL2_LOCKED);
    }

    return 0;
}

void fpga_irq_set_mask(uint8_t ubID, uint8_t ubMask)
{
    switch(ubID)
    {
        case FPGA_IRQ_SMC:
            fpga_rmw_register(FPGA_REG_IRQ_MASK, 0x0000FF00, (ubMask & 0xFF) << 0);
        break;
        case FPGA_IRQ_DSP:
            fpga_rmw_register(FPGA_REG_IRQ_MASK, 0x000000FF, (ubMask & 0xFF) << 8);
        break;
    }
}
uint8_t fpga_irq_get_state()
{
    return fpga_read_register(FPGA_REG_IRQ_STATE);
}
void fpga_irq_set(uint8_t ubMask)
{
    fpga_write_register(FPGA_REG_IRQ_SET_CLEAR, (ubMask & 0xFF) << 0);
}
void fpga_irq_clear(uint8_t ubMask)
{
    fpga_write_register(FPGA_REG_IRQ_SET_CLEAR, (ubMask & 0xFF) << 8);
}

void fpga_rgb_led_enable(uint8_t ubColor)
{
    if(ubColor > FPGA_LED_BLUE)
        return;

    fpga_rmw_register(FPGA_REG_LED_CNTRL, ~BIT(ubColor), BIT(ubColor));
}
void fpga_rgb_led_disable(uint8_t ubColor)
{
    if(ubColor > FPGA_LED_BLUE)
        return;

    fpga_rmw_register(FPGA_REG_LED_CNTRL, ~BIT(ubColor), 0);
}
void fpga_rgb_led_set_duty(uint8_t ubColor, uint16_t usDuty)
{
    if(ubColor > FPGA_LED_BLUE)
        return;

    fpga_write_register(FPGA_REG_RED_LED_DUTY + ubColor, usDuty);
}
uint16_t fpga_rgb_led_get_duty(uint8_t ubColor)
{
    if(ubColor > FPGA_LED_BLUE)
        return 0;

    return fpga_read_register(FPGA_REG_RED_LED_DUTY + ubColor);
}

void fpga_adc_dpram_sample(int16_t *psData, uint16_t usSize)
{
    if(!psData)
        return;

    if(!usSize || usSize > FPGA_ADC_DPRAM_SIZE)
        return;

    while(fpga_read_register(FPGA_REG_ADC_DPRAM_CNTRL) & FPGA_REG_ADC_DPRAM_CNTRL_WR_EN); // Wait if the previous operation did not finish yet

    fpga_write_register(FPGA_REG_ADC_DPRAM_CNTRL, FPGA_REG_ADC_DPRAM_CNTRL_WR_REQUEST | FPGA_REG_ADC_DPRAM_CNTRL_RD_ADDR_INC); // Enable auto address increment and trigger write

    while(!(fpga_read_register(FPGA_REG_ADC_DPRAM_CNTRL) & FPGA_REG_ADC_DPRAM_CNTRL_WR_EN)); // Wait for the write to start

    fpga_write_register(FPGA_REG_ADC_DPRAM_ADDR, 0); // Reset the read address

    while(usSize--)
        *psData++ = fpga_read_register(FPGA_REG_ADC_DPRAM_DATA) & 0xFFFF;
}

void fpga_qddc_set_iq_swap(uint8_t ubEnable)
{
    fpga_rmw_register(FPGA_REG_QDDC_CNTRL, ~FPGA_REG_QDDC_CNTRL_IQ_SWAP, ubEnable ? FPGA_REG_QDDC_CNTRL_IQ_SWAP : 0);
}
void fpga_qddc_set_lo_noise_shaping(uint8_t ubEnable)
{
    fpga_rmw_register(FPGA_REG_QDDC_CNTRL, ~FPGA_REG_QDDC_CNTRL_LO_NS_EN, ubEnable ? FPGA_REG_QDDC_CNTRL_LO_NS_EN : 0);
}
void fpga_qddc_set_lo_freq(int32_t lFrequency)
{
    uint32_t ulFrequency = lFrequency > 0 ? lFrequency : -lFrequency;
    uint32_t ulDirection = lFrequency > 0 ? 0x00000000 : 0x80000000;

    uint64_t ullFrequency = (uint64_t)ulFrequency << FPGA_QDDC_LO_FSZ;
    uint32_t ulValue = ullFrequency / FPGA_QDDC_CLK;

    fpga_write_register(FPGA_REG_QDDC_LO_FREQ, ulDirection | ulValue);
}
int32_t fpga_qddc_get_lo_freq()
{
    uint32_t ulValue = fpga_read_register(FPGA_REG_QDDC_LO_FREQ);
    uint64_t ullFrequency = (uint64_t)(ulValue & 0x7FFFFFFF) * FPGA_QDDC_CLK;

    return (ullFrequency >> FPGA_QDDC_LO_FSZ) * ((ulValue & 0x80000000) ? -1 : 1);
}

void fpga_qduc_set_tuner_bypass(uint8_t ubEnable)
{
    fpga_rmw_register(FPGA_REG_QDUC_CNTRL, ~FPGA_REG_QDUC_CNTRL_TUNER_BYP, ubEnable ? FPGA_REG_QDUC_CNTRL_TUNER_BYP : 0);
}
void fpga_qduc_set_iq_swap(uint8_t ubEnable)
{
    fpga_rmw_register(FPGA_REG_QDUC_CNTRL, ~FPGA_REG_QDUC_CNTRL_IQ_SWAP, ubEnable ? FPGA_REG_QDUC_CNTRL_IQ_SWAP : 0);
}
void fpga_qduc_set_lo_noise_shaping(uint8_t ubEnable)
{
    fpga_rmw_register(FPGA_REG_QDUC_CNTRL, ~FPGA_REG_QDUC_CNTRL_LO_NS_EN, ubEnable ? FPGA_REG_QDUC_CNTRL_LO_NS_EN : 0);
}
void fpga_qduc_set_lo_freq(int32_t lFrequency)
{
    uint32_t ulFrequency = lFrequency > 0 ? lFrequency : -lFrequency;
    uint32_t ulDirection = lFrequency > 0 ? 0x00000000 : 0x80000000;

    uint64_t ullFrequency = (uint64_t)ulFrequency << FPGA_QDUC_LO_FSZ;
    uint32_t ulValue = ullFrequency / FPGA_QDUC_CLK;

    fpga_write_register(FPGA_REG_QDUC_LO_FREQ, ulDirection | ulValue);
}
int32_t fpga_qduc_get_lo_freq()
{
    uint32_t ulValue = fpga_read_register(FPGA_REG_QDUC_LO_FREQ);
    uint64_t ullFrequency = (uint64_t)(ulValue & 0x7FFFFFFF) * FPGA_QDUC_CLK;

    return (ullFrequency >> FPGA_QDUC_LO_FSZ) * ((ulValue & 0x80000000) ? -1 : 1);
}

void fpga_i2s_mux_set_codec_master_clock(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFFFC, (ulSource & 0x00000003));
}
uint32_t fpga_i2s_mux_get_codec_master_clock()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000003;
}
void fpga_i2s_mux_set_dsp_data_clock(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFFF3, (ulSource & 0x0000000C));
}
uint32_t fpga_i2s_mux_get_dsp_data_clock()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x0000000C;
}
void fpga_i2s_mux_set_codec_data_clock(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFFCF, (ulSource & 0x00000030));
}
uint32_t fpga_i2s_mux_get_codec_data_clock()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000030;
}
void fpga_i2s_mux_set_dsp_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFFCFF, (ulSource & 0x00000300));
}
uint32_t fpga_i2s_mux_get_dsp_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000300;
}
void fpga_i2s_mux_set_codec_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFF3FF, (ulSource & 0x00000C00));
}
uint32_t fpga_i2s_mux_get_codec_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00000C00;
}
void fpga_i2s_mux_set_bridge_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFFCFFF, (ulSource & 0x00003000));
}
uint32_t fpga_i2s_mux_get_bridge_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x00003000;
}
void fpga_i2s_mux_set_fpga_sdin(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_AUDIO_I2S_MUX_SEL, 0xFFFF3FFF, (ulSource & 0x0000C000));
}
uint32_t fpga_i2s_mux_get_fpga_sdin()
{
    return fpga_read_register(FPGA_REG_AUDIO_I2S_MUX_SEL) & 0x0000C000;
}

void fpga_qspi_mux_set_data_in(uint32_t ulSource)
{
    fpga_rmw_register(FPGA_REG_QSPI_MEM_CNTRL, 0xFFFFF8FF, (ulSource & 0x00000700));
}
uint32_t fpga_qspi_mux_get_data_in()
{
    return fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & 0x00000700;
}
void fpga_qspi_mem_write(uint32_t ulAddress, uint32_t ulSize)
{
    if(!ulSize)
        return;

    if(ulAddress + ulSize > FPGA_QSPI_RAM_SIZE)
        return;

    while(fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & (FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST_Q | FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST | FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST_Q | FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST)); // Wait if the previous operation did not finish yet

    fpga_write_register(FPGA_REG_QSPI_MEM_START_ADDR, ulAddress);
    fpga_write_register(FPGA_REG_QSPI_MEM_END_ADDR, ulAddress + ulSize + 1);

    fpga_rmw_register(FPGA_REG_QSPI_MEM_CNTRL, 0xFFFFFFF0, FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST); // Trigger write

    while(!(fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST_Q)); // Wait for the write to start
}
void fpga_qspi_mem_read(uint32_t ulAddress, int16_t *psData, uint32_t ulSize)
{
    if(!psData)
        return;

    if(!ulSize)
        return;

    if(ulAddress + ulSize > FPGA_QSPI_RAM_SIZE)
        return;

    while(fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & (FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST_Q | FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST | FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST_Q | FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST)); // Wait if the previous operation did not finish yet

    fpga_write_register(FPGA_REG_QSPI_DPRAM_CNTRL, FPGA_REG_QSPI_DPRAM_CNTRL_RD_ADDR_INC); // Enable auto address increment

    uint32_t ulReadSize = 0;

    while(ulSize > ulReadSize)
    {
        uint32_t ulChunkSize = ulSize - ulReadSize;

        if(ulChunkSize > FPGA_QSPI_DPRAM_SIZE)
            ulChunkSize = FPGA_QSPI_DPRAM_SIZE;

        fpga_write_register(FPGA_REG_QSPI_MEM_START_ADDR, ulAddress + ulReadSize);
        fpga_write_register(FPGA_REG_QSPI_MEM_END_ADDR, ulAddress + ulReadSize + ulChunkSize);

        fpga_rmw_register(FPGA_REG_QSPI_MEM_CNTRL, 0xFFFFFFF0, FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST); // Trigger read

        while(!(fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST_Q)); // Wait for the read to start
        while(fpga_read_register(FPGA_REG_QSPI_MEM_CNTRL) & FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST_Q); // Wait for the read to end

        fpga_write_register(FPGA_REG_QSPI_DPRAM_ADDR, 0); // Reset the read address

        uint32_t ulChunkSizeRead = 0;

        while(ulChunkSize > ulChunkSizeRead++)
            *psData++ = fpga_read_register(FPGA_REG_QSPI_DPRAM_DATA) & 0xFFFF;

        ulReadSize += ulChunkSize;
    }
}