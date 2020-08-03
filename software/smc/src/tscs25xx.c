#include "tscs25xx.h"

static uint8_t tscs25xx_read_register(uint8_t ubRegister)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write_byte(TSCS25XX_I2C_ADDR, ubRegister, I2C_RESTART);
        return i2c2_read_byte(TSCS25XX_I2C_ADDR, I2C_STOP);
    }
}
static void tscs25xx_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    uint8_t pubBuffer[2];

    pubBuffer[0] = ubRegister;
    pubBuffer[1] = ubValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write(TSCS25XX_I2C_ADDR, pubBuffer, 2, I2C_STOP);
    }
}
static void tscs25xx_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    tscs25xx_write_register(ubRegister, (tscs25xx_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t tscs25xx_init()
{
    CODEC_RESET();
    delay_ms(10);
    CODEC_UNRESET();
    delay_ms(50);

    if(!i2c2_write(TSCS25XX_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    if((tscs25xx_read_register(TSCS25XX_REG_DEVADR) >> 1) != TSCS25XX_I2C_ADDR)
        return 0;

    tscs25xx_adc_set_mute(1);
    tscs25xx_dac_set_mute(1);

    delay_ms(50);

    tscs25xx_write_register(TSCS25XX_REG_PWRM1, TSCS25XX_REG_PWRM1_BSTL_POWER_UP | TSCS25XX_REG_PWRM1_BSTR_POWER_UP | TSCS25XX_REG_PWRM1_PGAL_POWER_UP | TSCS25XX_REG_PWRM1_PGAR_POWER_UP | TSCS25XX_REG_PWRM1_ADCL_POWER_UP | TSCS25XX_REG_PWRM1_ADCR_POWER_UP | TSCS25XX_REG_PWRM1_MICB_POWER_UP | TSCS25XX_REG_PWRM1_DIGENB_MCLK_ENABLED);
    tscs25xx_write_register(TSCS25XX_REG_PWRM2, TSCS25XX_REG_PWRM2_D2S_POWER_UP | TSCS25XX_REG_PWRM2_HPL_POWER_UP | TSCS25XX_REG_PWRM2_HPR_POWER_UP | TSCS25XX_REG_PWRM2_VREF_POWER_UP);

    tscs25xx_write_register(TSCS25XX_REG_PLLCTL1C, TSCS25XX_REG_PLLCTL1C_PLL1_POWER_DOWN | TSCS25XX_REG_PLLCTL1C_PLL2_POWER_DOWN);
    tscs25xx_write_register(TSCS25XX_REG_PLLCTLD, 0x1A); // PLL1 Zero R & charge pump current
    tscs25xx_write_register(TSCS25XX_REG_PLLCTL12, 0x22); // PLL2 Zero R & charge pump current
    tscs25xx_write_register(TSCS25XX_REG_PLLCTL1B, 0x28); // PLL1 & PLL2 VCO current
    tscs25xx_write_register(TSCS25XX_REG_PLLREFSEL, TSCS25XX_REG_PLLREFSEL_PLL2_REF_MCLK2 | TSCS25XX_REG_PLLREFSEL_PLL1_REF_MCLK2);

    tscs25xx_write_register(TSCS25XX_REG_ATEST16, 0x06);
    tscs25xx_write_register(TSCS25XX_REG_ATEST17, 0x06);
    tscs25xx_write_register(TSCS25XX_REG_ATEST7, 0x02);
    tscs25xx_write_register(TSCS25XX_REG_ATEST5, 0x01);

    tscs25xx_write_register(TSCS25XX_REG_DCOFSEL, 0x05);

    tscs25xx_write_register(TSCS25XX_REG_CONFIG0, TSCS25XX_REG_CONFIG0_ASDM_HALF | TSCS25XX_REG_CONFIG0_DSDM_HALF | TSCS25XX_REG_CONFIG0_DC_FILTER_ON | TSCS25XX_REG_CONFIG0_SD_NO_FORCE_ON);

    tscs25xx_write_register(TSCS25XX_REG_ATEST1, 0x60);

    tscs25xx_write_register(TSCS25XX_REG_AIC1, TSCS25XX_REG_AIC1_BCLK_NOT_INV | TSCS25XX_REG_AIC1_MS_SLAVE | TSCS25XX_REG_AIC1_LRCLK_NOT_INV | TSCS25XX_REG_AIC1_WL_16_BIT | TSCS25XX_REG_AIC1_FORMAT_I2S);
    tscs25xx_write_register(TSCS25XX_REG_AIC2, TSCS25XX_REG_AIC2_DAC_STEREO | TSCS25XX_REG_AIC2_ADC_STEREO | TSCS25XX_REG_AIC2_TRI_OUTPUT | (3 << 0));
    tscs25xx_write_register(TSCS25XX_REG_AIC3, TSCS25XX_REG_AIC3_ADOPD_ENABLED | TSCS25XX_REG_AIC3_ALRPD_ENABLED | TSCS25XX_REG_AIC3_ABCPD_ENABLED | TSCS25XX_REG_AIC3_DDIPD_ENABLED | TSCS25XX_REG_AIC3_DLRPD_ENABLED | TSCS25XX_REG_AIC3_DBCPD_ENABLED);

    /*
    tscs25xx_write_register(0x26, 0x00); // Set make up gain
    tscs25xx_write_register(0x27, 0xE9); // Compressor Threshold
    tscs25xx_write_register(0x28, 0x03); // Compressor Ratio
    tscs25xx_write_register(0x29, 0x67); // Compressor Attack Time (Low)
    tscs25xx_write_register(0x2A, 0xB1); // Compressor Attack Time (High)
    tscs25xx_write_register(0x2B, 0x62); // Compressor Release Time (Low)
    tscs25xx_write_register(0x2C, 0xFA); // Compressor Release Time (High)
    tscs25xx_write_register(0x2D, 0xF1); // Limiter Threshold
    tscs25xx_write_register(0x2E, 0xF1); // Limiter Target
    tscs25xx_write_register(0x2F, 0xB3); // Limiter Attack Time (Low)
    tscs25xx_write_register(0x30, 0xD8); // Limiter Attack Time (High)
    tscs25xx_write_register(0x31, 0x36); // Limiter Release Time (Low)
    tscs25xx_write_register(0x32, 0xFF); // Limiter Release Time (High)
    tscs25xx_write_register(0x33, 0x94); // Expander Threshold
    tscs25xx_write_register(0x34, 0x01); // Expander Ratio
    tscs25xx_write_register(0x35, 0xB3); // Expander Attack Time (Low)
    tscs25xx_write_register(0x36, 0xD8); // Expander Attack Time (High)
    tscs25xx_write_register(0x37, 0x9B); // Expander Release Time (Low)
    tscs25xx_write_register(0x38, 0xFF); // Expander Release Time (High)
    */

    tscs25xx_write_register(TSCS25XX_REG_CLECTL, TSCS25XX_REG_CLECTL_WINDOW_SEL_512 | TSCS25XX_REG_CLECTL_LVL_MODE_AVERAGE | TSCS25XX_REG_CLECTL_EXPANDER_DISABLED | TSCS25XX_REG_CLECTL_LIMITER_DISABLED | TSCS25XX_REG_CLECTL_COMPRESSOR_DISABLED);

    return 1;
}

void tscs25xx_soft_reset()
{
    tscs25xx_write_register(TSCS25XX_REG_RESET, 0x85);

    delay_ms(10);
}

uint16_t tscs25xx_read_device_id()
{
    return ((uint16_t)tscs25xx_read_register(TSCS25XX_REG_DEVIDH) << 8) | tscs25xx_read_register(TSCS25XX_REG_DEVIDL);
}
uint8_t tscs25xx_read_revision_id()
{
    return tscs25xx_read_register(TSCS25XX_REG_REVID);
}
uint8_t tscs25xx_read_mf_otp_version()
{
    return tscs25xx_read_register(TSCS25XX_REG_MFG0);
}
uint8_t tscs25xx_read_mf_wafer_id()
{
    return tscs25xx_read_register(TSCS25XX_REG_MFG3) & 0x1F;
}
uint8_t tscs25xx_read_mf_wafer_x()
{
    return tscs25xx_read_register(TSCS25XX_REG_MFG1) & 0x3F;
}
uint8_t tscs25xx_read_mf_wafer_y()
{
    return tscs25xx_read_register(TSCS25XX_REG_MFG2) & 0x3F;
}

void tscs25xx_power_up();
void tscs25xx_power_down();

uint8_t tscs25xx_pll_config(uint8_t ubPLLID, uint32_t ulRefFrequency)
{
    if(ubPLLID != 1 && ubPLLID != 2)
        return 0;

    if(ulRefFrequency < 256000)
        return 0;

    if(ulRefFrequency > 65536000)
        return 0;

    if(ubPLLID == 1 && (tscs25xx_read_register(TSCS25XX_REG_PLLCTL1C) & TSCS25XX_REG_PLLCTL1C_PLL1_POWER_UP))
        return 0;

    if(ubPLLID == 2 && (tscs25xx_read_register(TSCS25XX_REG_PLLCTL1C) & TSCS25XX_REG_PLLCTL1C_PLL2_POWER_UP))
        return 0;

    uint32_t ulTargetFreq;

    if(ubPLLID == 1)
        ulTargetFreq = TSCS25XX_PLL1_OUTPUT_FREQ;
    else if(ubPLLID == 2)
        ulTargetFreq = TSCS25XX_PLL2_OUTPUT_FREQ;

    uint8_t ubOutDivider;
    uint16_t usRefDivider;
    uint16_t usFeedbackDivider;

    for(ubOutDivider = 2; ubOutDivider < 6; ubOutDivider++) // FIXME: Unsure about the VCO operating range
    {
        uint32_t ulVCOFreq = ulTargetFreq * ubOutDivider;

        for(usRefDivider = 1; usRefDivider < 256; usRefDivider++)
        {
            if(ulRefFrequency % usRefDivider) // Avoid undefined behaviour
                continue;

            if(ulVCOFreq % (ulRefFrequency / usRefDivider))
                continue;

            usFeedbackDivider = ulVCOFreq / (ulRefFrequency / usRefDivider);

            if(usFeedbackDivider < 2048)
                break;
        }

        if(usFeedbackDivider < 2048 && usRefDivider < 256)
            break;
    }

    if(usFeedbackDivider >= 2048 || usRefDivider >= 256 || ubOutDivider >= 6) // Can't find an exact divider within range
        return 0;

    if(ubPLLID == 1)
    {
        tscs25xx_write_register(TSCS25XX_REG_PLLCTL9, usRefDivider & 0xFF);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTLA, ubOutDivider);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTLB, usFeedbackDivider & 0xFF);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTLC, (usFeedbackDivider >> 8) & 0x07);
    }
    else if(ubPLLID == 2)
    {
        tscs25xx_write_register(TSCS25XX_REG_PLLCTLE, usRefDivider & 0xFF);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTLF, ubOutDivider);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTL10, usFeedbackDivider & 0xFF);
        tscs25xx_write_register(TSCS25XX_REG_PLLCTL11, (usFeedbackDivider >> 8) & 0x07);
    }

    return 1;
}
uint8_t tscs25xx_timebase_config(uint32_t ulRefFrequency)
{
    if(ulRefFrequency < 256000)
        return 0;

    if(ulRefFrequency > 65536000)
        return 0;

    float fDivider = (float)ulRefFrequency / 256000;
    uint8_t ubDivider = fDivider + 0.5f; // Round to nearest

    tscs25xx_write_register(TSCS25XX_REG_TIMEBASE, ubDivider - 1);

    return 1;
}
uint8_t tscs25xx_sample_rate_config(uint32_t ulSampleRate)
{
    if(ulSampleRate < 44100 / 4 || ulSampleRate > 48000 * 2)
        return 0;

    if(!(ulSampleRate % 48000))
    {
        tscs25xx_write_register(TSCS25XX_REG_PLLCTL1C, TSCS25XX_REG_PLLCTL1C_PLL1_POWER_UP);

        for(uint8_t i = 0; i < 10; i++)
        {
            if(tscs25xx_read_register(TSCS25XX_REG_PLLCTL0) & TSCS25XX_REG_PLLCTL0_PLL1_LOCKED)
                break;

            delay_ms(100);
        }

        if(!(tscs25xx_read_register(TSCS25XX_REG_PLLCTL0) & TSCS25XX_REG_PLLCTL0_PLL1_LOCKED))
            return 0;

        switch(ulSampleRate)
        {
            case 12000:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_48_KHZ | TSCS25XX_REG_ADCSR_ABM_0p25x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_48_KHZ | TSCS25XX_REG_DACSR_DBM_0p25x);
            }
            break;
            case 24000:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_48_KHZ | TSCS25XX_REG_ADCSR_ABM_0p5x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_48_KHZ | TSCS25XX_REG_DACSR_DBM_0p5x);
            }
            break;
            case 48000:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_48_KHZ | TSCS25XX_REG_ADCSR_ABM_1x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_48_KHZ | TSCS25XX_REG_DACSR_DBM_1x);
            }
            break;
            case 96000:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_48_KHZ | TSCS25XX_REG_ADCSR_ABM_2x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_48_KHZ | TSCS25XX_REG_DACSR_DBM_2x);
            }
            break;
        }

        return 1;
    }
    else if(!(ulSampleRate % 44100))
    {
        tscs25xx_write_register(TSCS25XX_REG_PLLCTL1C, TSCS25XX_REG_PLLCTL1C_PLL2_POWER_UP);

        for(uint8_t i = 0; i < 10; i++)
        {
            if(tscs25xx_read_register(TSCS25XX_REG_PLLCTL0) & TSCS25XX_REG_PLLCTL0_PLL2_LOCKED)
                break;

            delay_ms(100);
        }

        if(!(tscs25xx_read_register(TSCS25XX_REG_PLLCTL0) & TSCS25XX_REG_PLLCTL0_PLL2_LOCKED))
            return 0;

        switch(ulSampleRate)
        {
            case 11025:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_44p1_KHZ | TSCS25XX_REG_ADCSR_ABM_0p25x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_44p1_KHZ | TSCS25XX_REG_DACSR_DBM_0p25x);
            }
            break;
            case 22050:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_44p1_KHZ | TSCS25XX_REG_ADCSR_ABM_0p5x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_44p1_KHZ | TSCS25XX_REG_DACSR_DBM_0p5x);
            }
            break;
            case 44100:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_44p1_KHZ | TSCS25XX_REG_ADCSR_ABM_1x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_44p1_KHZ | TSCS25XX_REG_DACSR_DBM_1x);
            }
            break;
            case 88200:
            {
                tscs25xx_rmw_register(TSCS25XX_REG_ADCSR, (uint8_t)~0x1F, TSCS25XX_REG_ADCSR_ABR_44p1_KHZ | TSCS25XX_REG_ADCSR_ABM_2x);
                tscs25xx_rmw_register(TSCS25XX_REG_DACSR, (uint8_t)~0x1F, TSCS25XX_REG_DACSR_DBR_44p1_KHZ | TSCS25XX_REG_DACSR_DBM_2x);
            }
            break;
        }

        return 1;
    }

    return 0;
}

void tscs25xx_adc_config_left_input(uint8_t ubSource, uint8_t ubGain, uint8_t ubInvert, uint8_t ubHighPassEnable)
{
    switch(ubSource)
    {
        case TSCS25XX_ADC_INPUT_1:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0xC0, TSCS25XX_REG_INSELL_INSEL_1);
        break;
        case TSCS25XX_ADC_INPUT_2:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0xC0, TSCS25XX_REG_INSELL_INSEL_2);
        break;
        case TSCS25XX_ADC_INPUT_D2S:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0xC0, TSCS25XX_REG_INSELL_INSEL_D2S);
        break;
        default:
            return;
    }

    switch(ubGain)
    {
        case 0:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0x30, TSCS25XX_REG_INSELL_MICBST_BYP);
        break;
        case 10:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0x30, TSCS25XX_REG_INSELL_MICBST_10DB);
        break;
        case 20:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0x30, TSCS25XX_REG_INSELL_MICBST_20DB);
        break;
        case 30:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELL, (uint8_t)~0x30, TSCS25XX_REG_INSELL_MICBST_30DB);
        break;
    }

    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~TSCS25XX_REG_CNVRTR0_ADCPOLL_INV, ubInvert ? TSCS25XX_REG_CNVRTR0_ADCPOLL_INV : TSCS25XX_REG_CNVRTR0_ADCPOLL_NORMAL);
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~TSCS25XX_REG_CNVRTR0_HPDL_DISABLE, ubHighPassEnable ? TSCS25XX_REG_CNVRTR0_HPDL_ENABLE : TSCS25XX_REG_CNVRTR0_HPDL_DISABLE);
}
void tscs25xx_adc_config_right_input(uint8_t ubSource, uint8_t ubGain, uint8_t ubInvert, uint8_t ubHighPassEnable)
{
    switch(ubSource)
    {
        case TSCS25XX_ADC_INPUT_1:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0xC0, TSCS25XX_REG_INSELR_INSEL_1);
        break;
        case TSCS25XX_ADC_INPUT_2:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0xC0, TSCS25XX_REG_INSELR_INSEL_2);
        break;
        case TSCS25XX_ADC_INPUT_D2S:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0xC0, TSCS25XX_REG_INSELR_INSEL_D2S);
        break;
        default:
            return;
    }

    switch(ubGain)
    {
        case 0:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0x30, TSCS25XX_REG_INSELR_MICBST_BYP);
        break;
        case 10:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0x30, TSCS25XX_REG_INSELR_MICBST_10DB);
        break;
        case 20:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0x30, TSCS25XX_REG_INSELR_MICBST_20DB);
        break;
        case 30:
            tscs25xx_rmw_register(TSCS25XX_REG_INSELR, (uint8_t)~0x30, TSCS25XX_REG_INSELR_MICBST_30DB);
        break;
    }

    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~TSCS25XX_REG_CNVRTR0_ADCPOLR_INV, ubInvert ? TSCS25XX_REG_CNVRTR0_ADCPOLR_INV : TSCS25XX_REG_CNVRTR0_ADCPOLR_NORMAL);
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~TSCS25XX_REG_CNVRTR0_HPDR_DISABLE, ubHighPassEnable ? TSCS25XX_REG_CNVRTR0_HPDR_ENABLE : TSCS25XX_REG_CNVRTR0_HPDR_DISABLE);
}
void tscs25xx_adc_config_mono_mixer(uint8_t ubMode)
{
    switch(ubMode)
    {
        case TSCS25XX_MONO_MIX_STEREO:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR0_AMONOMIX_STEREO);
        break;
        case TSCS25XX_MONO_MIX_LEFT:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR0_AMONOMIX_AMONO_L);
        break;
        case TSCS25XX_MONO_MIX_RIGHT:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR0_AMONOMIX_AMONO_R);
        break;
        case TSCS25XX_MONO_MIX_BOTH:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR0_AMONOMIX_DMONO_LR);
        break;
    }
}
void tscs25xx_adc_config_d2s_amp(uint8_t ubInputChannel)
{
    switch(ubInputChannel)
    {
        case TSCS25XX_D2S_INPUT_1:
            tscs25xx_write_register(TSCS25XX_REG_INMODE, TSCS25XX_REG_INMODE_DS_IN_1);
        break;
        case TSCS25XX_D2S_INPUT_2:
            tscs25xx_write_register(TSCS25XX_REG_INMODE, TSCS25XX_REG_INMODE_DS_IN_2);
        break;
    }
}

void tscs25xx_dac_config_left_output(uint8_t ubInvert)
{
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~TSCS25XX_REG_CNVRTR1_DACPOLL_INV, ubInvert ? TSCS25XX_REG_CNVRTR1_DACPOLL_INV : TSCS25XX_REG_CNVRTR1_DACPOLL_NORMAL);
}
void tscs25xx_dac_config_right_output(uint8_t ubInvert)
{
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~TSCS25XX_REG_CNVRTR1_DACPOLR_INV, ubInvert ? TSCS25XX_REG_CNVRTR1_DACPOLR_INV : TSCS25XX_REG_CNVRTR1_DACPOLR_NORMAL);
}
void tscs25xx_dac_config_mono_mixer(uint8_t ubMode)
{
    switch(ubMode)
    {
        case TSCS25XX_MONO_MIX_STEREO:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR1_DMONOMIX_STEREO);
        break;
        case TSCS25XX_MONO_MIX_LEFT:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR1_DMONOMIX_MONO_L);
        break;
        case TSCS25XX_MONO_MIX_RIGHT:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR1_DMONOMIX_MONO_R);
        break;
        case TSCS25XX_MONO_MIX_BOTH:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x30, TSCS25XX_REG_CNVRTR1_DMONOMIX_MONO_LR);
        break;
    }
}
void tscs25xx_dac_config(uint8_t ubDitherMode, uint8_t ubDeempEnable)
{
    switch(ubDitherMode)
    {
        case TSCS25XX_DAC_DITHER_DISABLED:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x03, TSCS25XX_REG_CNVRTR1_DACDITH_DISABLED);
        break;
        case TSCS25XX_DAC_DITHER_STATIC:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x03, TSCS25XX_REG_CNVRTR1_DACDITH_STATIC);
        break;
        case TSCS25XX_DAC_DITHER_DYN_HALF:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x03, TSCS25XX_REG_CNVRTR1_DACDITH_DYN_HALF);
        break;
        case TSCS25XX_DAC_DITHER_DYN_FULL:
            tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~0x03, TSCS25XX_REG_CNVRTR1_DACDITH_DYN_FULL);
        break;
    }

    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~TSCS25XX_REG_CNVRTR1_DEEMP_ENABLED, ubDeempEnable ? TSCS25XX_REG_CNVRTR1_DEEMP_ENABLED : TSCS25XX_REG_CNVRTR1_DEEMP_DISABLED);
}

uint8_t tscs25xx_dac_ram_write(uint8_t ubAddress, uint32_t *pulData, uint8_t ubDataSize)
{
    if(!pulData)
        return 0;

    if(!ubDataSize)
        return 0;

    if((uint16_t)ubAddress + (uint16_t)ubDataSize > TSCS25XX_DAC_RAM_SIZE)
        return 0;

    tscs25xx_write_register(TSCS25XX_REG_DACCRADDR, ubAddress);

    while(ubDataSize--)
    {
        uint8_t pubBuffer[4];
        uint32_t ulData = *pulData++;

        pubBuffer[0] = TSCS25XX_REG_DACCRWRL;
        pubBuffer[1] = (ulData >> 0) & 0xFF;
        pubBuffer[2] = (ulData >> 8) & 0xFF;
        pubBuffer[3] = (ulData >> 16) & 0xFF;

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            i2c2_write(TSCS25XX_I2C_ADDR, pubBuffer, 4, I2C_STOP);
        }

        while(tscs25xx_read_register(TSCS25XX_REG_DACCRSTAT) & TSCS25XX_REG_DACCRSTAT_DACCR_BUSY);
    }

    return 1;
}
uint8_t tscs25xx_dac_ram_read(uint8_t ubAddress, uint32_t *pulData, uint8_t ubDataSize)
{
    if(!pulData)
        return 0;

    if(!ubDataSize)
        return 0;

    if((uint16_t)ubAddress + (uint16_t)ubDataSize > TSCS25XX_DAC_RAM_SIZE)
        return 0;

    tscs25xx_write_register(TSCS25XX_REG_DACCRADDR, ubAddress);

    while(ubDataSize--)
    {
        *pulData = 0;

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            i2c2_write_byte(TSCS25XX_I2C_ADDR, TSCS25XX_REG_DACCRRDL, I2C_RESTART);
            i2c2_read(TSCS25XX_I2C_ADDR, (uint8_t *)(pulData++), 3, I2C_STOP);
        }
    }

    return 1;
}

void tscs25xx_effects_config(uint8_t ub3DEnable, uint8_t ubTrebleEnable, uint8_t ubTrebleNLEnable, uint8_t ubBassEnable, uint8_t ubBassNLEnable)
{
    uint8_t ubData = 0;

    ubData |= ub3DEnable ? TSCS25XX_REG_FXCTL_3DEN_ENABLED : TSCS25XX_REG_FXCTL_3DEN_DISABLED;
    ubData |= ubTrebleEnable ? TSCS25XX_REG_FXCTL_TEEN_ENABLED : TSCS25XX_REG_FXCTL_TEEN_DISABLED;
    ubData |= ubTrebleNLEnable ? TSCS25XX_REG_FXCTL_TNLFBYP_ENABLED : TSCS25XX_REG_FXCTL_TNLFBYP_BYPASS;
    ubData |= ubBassEnable ? TSCS25XX_REG_FXCTL_BEEN_ENABLED : TSCS25XX_REG_FXCTL_BEEN_DISABLED;
    ubData |= ubBassNLEnable ? TSCS25XX_REG_FXCTL_BNLFBYP_ENABLED : TSCS25XX_REG_FXCTL_BNLFBYP_BYPASS;

    tscs25xx_write_register(TSCS25XX_REG_FXCTL, ubData);
}

void tscs25xx_eq_config(uint8_t ubID, uint8_t ubEnable, uint8_t ubBands)
{
    if(ubID > 1)
        return;

    if(!ubEnable)
    {
        tscs25xx_rmw_register(TSCS25XX_REG_CONFIG1, (uint8_t)~(0x0F << (ubID * 4)), 0x00);

        return;
    }

    if(ubBands > 6)
        return;

    tscs25xx_rmw_register(TSCS25XX_REG_CONFIG1, (uint8_t)~(0x0F << (ubID * 4)), ((TSCS25XX_REG_CONFIG1_EQ1_ENABLED | ubBands) << (ubID * 4)));
}
void tscs25xx_eq_config_prescaler(uint8_t ubID, uint8_t ubChannelID, float fPrescale)
{
    if(ubID > 1)
        return;

    if(ubChannelID > 1)
        return;

    int32_t lPrescale = fPrescale / powf(2.f, -22.f);

    tscs25xx_dac_ram_write(TSCS25XX_DAC_RAM_EQx_PRESCALEn(ubID, ubChannelID), (uint32_t *)&lPrescale, 1);
}
void tscs25xx_eq_config_band(uint8_t ubID, uint8_t ubChannelID, uint8_t ubBandID, biquad_t *pFilter)
{
    if(ubID > 1)
        return;

    if(ubChannelID > 1)
        return;

    if(ubBandID > 5)
        return;

    if(!pFilter)
        return;

    int32_t lCoef[5];

    lCoef[0] = pFilter->fB0 / powf(2.f, -22.f);
    lCoef[1] = pFilter->fB1 / powf(2.f, -22.f);
    lCoef[2] = pFilter->fB2 / powf(2.f, -22.f);
    lCoef[3] = -pFilter->fA1 / powf(2.f, -22.f);
    lCoef[4] = -pFilter->fA2 / powf(2.f, -22.f);

    tscs25xx_dac_ram_write(TSCS25XX_DAC_RAM_EQx_COEF_nFi_B0(ubID, ubChannelID, ubBandID), (uint32_t *)lCoef, 5);
}

void tscs25xx_volume_config(uint8_t ubFade, uint8_t ubIndividualUpdate, uint8_t ubZeroUpdate)
{
    uint8_t ubValue = 0x00;

    if(ubFade)
        ubValue |= TSCS25XX_REG_VUCTL_ADC_FADE | TSCS25XX_REG_VUCTL_DAC_FADE;

    if(!ubIndividualUpdate)
        ubValue |= TSCS25XX_REG_VUCTL_INVOLU_HOLD | TSCS25XX_REG_VUCTL_ADCVOLU_HOLD | TSCS25XX_REG_VUCTL_DACVOLU_HOLD | TSCS25XX_REG_VUCTL_SPKVOLU_HOLD | TSCS25XX_REG_VUCTL_HPVOLU_HOLD;

    tscs25xx_write_register(TSCS25XX_REG_VUCTL, ubValue);

    tscs25xx_rmw_register(TSCS25XX_REG_INVOLL, (uint8_t)~TSCS25XX_REG_INVOLL_IZCL_ZCROSS, ubZeroUpdate ? TSCS25XX_REG_INVOLL_IZCL_ZCROSS : TSCS25XX_REG_INVOLL_IZCL_IMMED);
    tscs25xx_rmw_register(TSCS25XX_REG_INVOLR, (uint8_t)~TSCS25XX_REG_INVOLR_IZCR_ZCROSS, ubZeroUpdate ? TSCS25XX_REG_INVOLR_IZCR_ZCROSS : TSCS25XX_REG_INVOLR_IZCR_IMMED);
}

void tscs25xx_hp_set_left_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -88.5f)
        ubCode = 0;
    else if(fVolume <= 6.f)
        ubCode = ((fVolume + 88.5f) / 0.75f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_HPVOLL, ubCode);
}
float tscs25xx_hp_get_left_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_HPVOLL) & 0x7F;

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.75f - 88.5f;
}
void tscs25xx_hp_set_right_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -88.5f)
        ubCode = 0;
    else if(fVolume <= 6.f)
        ubCode = ((fVolume + 88.5f) / 0.75f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_HPVOLR, ubCode);
}
float tscs25xx_hp_get_right_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_HPVOLR) & 0x7F;

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.75f - 88.5f;
}
void tscs25xx_spkr_set_left_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -77.25f)
        ubCode = 0;
    else if(fVolume <= 12.f)
        ubCode = ((fVolume + 77.25f) / 0.75f) + 8;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_SPKVOLL, ubCode);
}
float tscs25xx_spkr_get_left_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_SPKVOLL) & 0x7F;

    if(!ubCode)
        return -INFINITY;

    if(ubCode < 8)
        return -77.25f;

    return (ubCode - 8) * 0.75f - 77.25f;
}
void tscs25xx_spkr_set_right_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -77.25f)
        ubCode = 0;
    else if(fVolume <= 12.f)
        ubCode = ((fVolume + 77.25f) / 0.75f) + 8;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_SPKVOLR, ubCode);
}
float tscs25xx_spkr_get_right_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_SPKVOLR) & 0x7F;

    if(!ubCode)
        return -INFINITY;

    if(ubCode < 8)
        return -77.25f;

    return (ubCode - 8) * 0.75f - 77.25f;
}
void tscs25xx_dac_set_left_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -95.25f)
        ubCode = 0;
    else if(fVolume <= 0.f)
        ubCode = ((fVolume + 95.25f) / 0.375f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_DACVOLL, ubCode);
}
float tscs25xx_dac_get_left_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_DACVOLL);

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.375f - 95.25f;
}
void tscs25xx_dac_set_right_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -95.25f)
        ubCode = 0;
    else if(fVolume <= 0.f)
        ubCode = ((fVolume + 95.25f) / 0.375f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_DACVOLR, ubCode);
}
float tscs25xx_dac_get_right_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_DACVOLR);

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.375f - 95.25f;
}
void tscs25xx_input_set_left_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -17.25f)
        ubCode = 0;
    else if(fVolume <= 30.f)
        ubCode = (fVolume + 17.25f) / 0.75f;
    else
        return;

    tscs25xx_rmw_register(TSCS25XX_REG_INVOLL, (uint8_t)~0x3F, ubCode);
}
float tscs25xx_input_get_left_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_INVOLL) & 0x3F;

    return ubCode * 0.75f - 17.25f;
}
void tscs25xx_input_set_right_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -17.25f)
        ubCode = 0;
    else if(fVolume <= 30.f)
        ubCode = (fVolume + 17.25f) / 0.75f;
    else
        return;

    tscs25xx_rmw_register(TSCS25XX_REG_INVOLR, (uint8_t)~0x3F, ubCode);
}
float tscs25xx_input_get_right_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_INVOLR) & 0x3F;

    return ubCode * 0.75f - 17.25f;
}
void tscs25xx_adc_set_left_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -71.25f)
        ubCode = 0;
    else if(fVolume <= 24.f)
        ubCode = ((fVolume + 71.25f) / 0.375f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_ADCVOLL, ubCode);
}
float tscs25xx_adc_get_left_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_ADCVOLL);

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.375f - 71.25f;
}
void tscs25xx_adc_set_right_volume(float fVolume)
{
    uint8_t ubCode;

    if(fVolume < -71.25f)
        ubCode = 0;
    else if(fVolume <= 24.f)
        ubCode = ((fVolume + 71.25f) / 0.375f) + 1;
    else
        return;

    tscs25xx_write_register(TSCS25XX_REG_ADCVOLR, ubCode);
}
float tscs25xx_adc_get_right_volume()
{
    uint8_t ubCode = tscs25xx_read_register(TSCS25XX_REG_ADCVOLR);

    if(!ubCode)
        return -INFINITY;

    return (ubCode - 1) * 0.375f - 71.25f;
}

void tscs25xx_dac_set_mute(uint8_t ubMute)
{
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR1, (uint8_t)~TSCS25XX_REG_CNVRTR1_DACMU_MUTED, ubMute ? TSCS25XX_REG_CNVRTR1_DACMU_MUTED : TSCS25XX_REG_CNVRTR1_DACMU_UNMUTED);
}
uint8_t tscs25xx_dac_get_mute()
{
    return !!(tscs25xx_read_register(TSCS25XX_REG_CNVRTR1) & TSCS25XX_REG_CNVRTR1_DACMU_MUTED);
}
void tscs25xx_adc_set_mute(uint8_t ubMute)
{
    tscs25xx_rmw_register(TSCS25XX_REG_CNVRTR0, (uint8_t)~TSCS25XX_REG_CNVRTR0_ADCMU_MUTED, ubMute ? TSCS25XX_REG_CNVRTR0_ADCMU_MUTED : TSCS25XX_REG_CNVRTR0_ADCMU_UNMUTED);
}
uint8_t tscs25xx_adc_get_mute()
{
    return !!(tscs25xx_read_register(TSCS25XX_REG_CNVRTR0) & TSCS25XX_REG_CNVRTR0_ADCMU_MUTED);
}

void tscs25xx_zero_det_config(uint8_t ubMute, uint16_t usLength)
{
    switch(usLength)
    {
        case 512:
            tscs25xx_rmw_register(TSCS25XX_REG_GAINCTL, (uint8_t)~0x30, TSCS25XX_REG_GAINCTL_ZERODET_LEN_512);
        break;
        case 1024:
            tscs25xx_rmw_register(TSCS25XX_REG_GAINCTL, (uint8_t)~0x30, TSCS25XX_REG_GAINCTL_ZERODET_LEN_1024);
        break;
        case 2048:
            tscs25xx_rmw_register(TSCS25XX_REG_GAINCTL, (uint8_t)~0x30, TSCS25XX_REG_GAINCTL_ZERODET_LEN_2048);
        break;
        case 4096:
            tscs25xx_rmw_register(TSCS25XX_REG_GAINCTL, (uint8_t)~0x30, TSCS25XX_REG_GAINCTL_ZERODET_LEN_4096);
        break;
    }

    tscs25xx_rmw_register(TSCS25XX_REG_GAINCTL, (uint8_t)~TSCS25XX_REG_GAINCTL_AUTO_MUTE, ubMute ? TSCS25XX_REG_GAINCTL_AUTO_MUTE : 0);
}
uint8_t tscs25xx_zero_det_get_flag()
{
    return !!(tscs25xx_read_register(TSCS25XX_REG_GAINCTL) & TSCS25XX_REG_GAINCTL_ZERODET_DETECTED);
}

void tscs25xx_noise_gate_config(uint8_t ubEnable, float fThreshold)
{
    if(!ubEnable)
    {
        tscs25xx_write_register(TSCS25XX_REG_NGATE, 0x00);

        return;
    }

    if(fThreshold < -76.5f || fThreshold > -30.f)
        return;

    uint8_t ubCode = ubCode = (fThreshold + 76.5f) / 1.5f;

    tscs25xx_write_register(TSCS25XX_REG_NGATE, (ubCode << 3) | TSCS25XX_REG_NGATE_NGG_MUTE | TSCS25XX_REG_NGATE_NGAT_ENABLE);
}