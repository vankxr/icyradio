#include "ad9117.h"

static uint8_t ad9117_read_register(uint8_t ubRegister)
{
    uint8_t ubValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TXDAC_SELECT();

        usart5_spi_write_byte((ubRegister & 0x1F) | 0x80, 0);

        ubValue = usart5_spi_transfer_byte(0x00);

        TXDAC_UNSELECT();
    }

    return ubValue;
}
static void ad9117_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TXDAC_SELECT();

        usart5_spi_write_byte(ubRegister & 0x1F, 0);
        usart5_spi_write_byte(ubValue, 1);

        TXDAC_UNSELECT();
    }
}
static void ad9117_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    ad9117_write_register(ubRegister, (ad9117_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t ad9117_init()
{
    TXDAC_RESET();
    delay_ms(10);
    TXDAC_UNRESET();
    delay_ms(10);

    if(ad9117_read_register(AD9117_REG_VERSION) != 0x0A)
        return 0;

    ad9117_config_reset();

    ad9117_write_register(AD9117_REG_POWER_DOWN, AD9117_REG_POWER_DOWN_LDO_ON | AD9117_REG_POWER_DOWN_PWR_UP | AD9117_REG_POWER_DOWN_QDAC_ON | AD9117_REG_POWER_DOWN_IDAC_ON | AD9117_REG_POWER_DOWN_QCLK_ON | AD9117_REG_POWER_DOWN_ICLK_ON | AD9117_REG_POWER_DOWN_INT_REF);
    ad9117_write_register(AD9117_REG_DATA_CTL, AD9117_REG_DATA_CTL_TWOS | AD9117_REG_DATA_CTL_IFIRST | AD9117_REG_DATA_CTL_IRISING | AD9117_REG_DATA_CTL_SIMUL_ON | AD9117_REG_DATA_CTL_DCI_ON | AD9117_REG_DATA_CTL_DCO_DOUBLE);

    ad9117_write_register(AD9117_REG_IDAC_GAIN, 0x00); // No extra gain
    ad9117_write_register(AD9117_REG_IRSET, AD9117_REG_IRSET_ENABLE | 0x20); // IRset = 1,6 kOhm, IIFS = 20mA
    ad9117_write_register(AD9117_REG_IRCML, AD9117_REG_IRCML_DISABLE); // Use external common mode resistor

    ad9117_write_register(AD9117_REG_QDAC_GAIN, 0x00); // No extra gain
    ad9117_write_register(AD9117_REG_QRSET, AD9117_REG_QRSET_ENABLE | 0x20); // IRset = 1,6 kOhm, IQFS = 20mA
    ad9117_write_register(AD9117_REG_QRCML, AD9117_REG_QRCML_DISABLE); // Use external common mode resistor

    ad9117_i_offset_config(0, 0); // Disable I offset
    ad9117_q_offset_config(0, 0); // Disable Q offset

    ad9117_write_register(AD9117_REG_RREF, 0x00); // RRef = 10 kOhm, VREFIO = 1.0V

    ad9117_write_register(AD9117_REG_CLK_MODE, AD9117_REG_CLK_MODE_MODEQ_PHASE2 | AD9117_REG_CLK_MODE_CLKMODE_FORCED | AD9117_REG_CLK_MODE_MODEI_PHASE2);

    return 1;
}

void ad9117_config_reset()
{
    ad9117_rmw_register(AD9117_REG_SPI_CTL, (uint8_t)~AD9117_REG_SPI_CTL_RESET, AD9117_REG_SPI_CTL_RESET);
    ad9117_rmw_register(AD9117_REG_SPI_CTL, (uint8_t)~AD9117_REG_SPI_CTL_RESET, AD9117_REG_SPI_CTL_UNRESET);

    delay_ms(10);
}

void ad9117_calibrate(uint32_t ulCLKINFrequency)
{
    if(!ulCLKINFrequency)
        return;

    ulCLKINFrequency >>= 4; // Calibration clock is pre-divided by 16

    uint8_t ubDivider = 0;

    while(ubDivider <= 7)
    {
        uint32_t ulCalibFrequency = ulCLKINFrequency >> (8 - ubDivider);

        if(ulCalibFrequency > 500000 && ulCalibFrequency < 4000000)
            break;

        ubDivider++;
    }

    ad9117_write_register(AD9117_REG_MEM_RW, AD9117_REG_MEM_RW_CALRSTQ | AD9117_REG_MEM_RW_CALRSTI | AD9117_REG_MEM_RW_UNCALQ | AD9117_REG_MEM_RW_UNCALI); // Delete current calibration and flags
    ad9117_write_register(AD9117_REG_MEM_RW, 0x00); // Reset register

    ad9117_write_register(AD9117_REG_CAL_CTL, AD9117_REG_CAL_CTL_CALQ | AD9117_REG_CAL_CTL_CALI | AD9117_REG_CAL_CTL_CAL_CLK_ENABLE | (ubDivider & 0x07)); // Enable calibration clock, set divider and select both DACs to be calibrated
    ad9117_write_register(AD9117_REG_MEM_RW, AD9117_REG_MEM_RW_CAL_START); // Start calibration

    while(!(ad9117_read_register(AD9117_REG_CAL_MEM) & AD9117_REG_CAL_MEM_CALSTATQ_DONE)); // Wait for Q DAC to complete
    while(!(ad9117_read_register(AD9117_REG_CAL_MEM) & AD9117_REG_CAL_MEM_CALSTATI_DONE)); // Wait for I DAC to complete

    ad9117_write_register(AD9117_REG_MEM_RW, 0x00); // Reset register

    ad9117_rmw_register(AD9117_REG_CAL_CTL, (uint8_t)~AD9117_REG_CAL_CTL_CAL_CLK_ENABLE, AD9117_REG_CAL_CTL_CAL_CLK_DISABLE); // Disable calibration clock
}

void ad9117_i_offset_config(uint8_t ubEnable, uint8_t ubRange)
{
    if(!ubEnable)
    {
        ad9117_rmw_register(AD9117_REG_AUX_CTLI, (uint8_t)~AD9117_REG_AUX_CTLI_ENABLE, AD9117_REG_AUX_CTLI_DISABLE);

        return;
    }

    ad9117_rmw_register(AD9117_REG_AUX_CTLI, (uint8_t)~0xFC, AD9117_REG_AUX_CTLI_ENABLE | (ubRange & 0x7C));
}
void ad9117_i_offset_set_value(uint16_t usOffset)
{
    ad9117_write_register(AD9117_REG_AUXDACI, usOffset & 0xFF);
    ad9117_rmw_register(AD9117_REG_AUX_CTLI, (uint8_t)~0x03, (usOffset >> 8) & 0x03);
}
uint16_t ad9117_i_offset_get_value()
{
    return ((uint16_t)(ad9117_read_register(AD9117_REG_AUX_CTLI) & 0x03) << 8) | (uint16_t)ad9117_read_register(AD9117_REG_AUXDACI);
}

void ad9117_q_offset_config(uint8_t ubEnable, uint8_t ubRange)
{
    if(!ubEnable)
    {
        ad9117_rmw_register(AD9117_REG_AUX_CTLQ, (uint8_t)~AD9117_REG_AUX_CTLQ_ENABLE, AD9117_REG_AUX_CTLQ_DISABLE);

        return;
    }

    ad9117_rmw_register(AD9117_REG_AUX_CTLQ, (uint8_t)~0xFC, AD9117_REG_AUX_CTLQ_ENABLE | (ubRange & 0x7C));
}
void ad9117_q_offset_set_value(uint16_t usOffset)
{
    ad9117_write_register(AD9117_REG_AUXDACQ, usOffset & 0xFF);
    ad9117_rmw_register(AD9117_REG_AUX_CTLQ, (uint8_t)~0x03, (usOffset >> 8) & 0x03);
}
uint16_t ad9117_q_offset_get_value()
{
    return ((uint16_t)(ad9117_read_register(AD9117_REG_AUX_CTLQ) & 0x03) << 8) | (uint16_t)ad9117_read_register(AD9117_REG_AUXDACQ);
}