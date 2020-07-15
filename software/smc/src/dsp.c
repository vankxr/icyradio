#include "dsp.h"

static uint32_t dsp_read_register(uint8_t ubRegister)
{
    uint8_t ubBuf[4];

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        DSP_SELECT();

        usart3_spi_write_byte(0x80 | (ubRegister & 0x7F), 1);
        usart3_spi_read(ubBuf, 4, 0x00);

        DSP_UNSELECT();
    }

    return ((uint32_t)ubBuf[0] << 24) | ((uint32_t)ubBuf[1] << 16) | ((uint32_t)ubBuf[2] << 8) | ((uint32_t)ubBuf[3] << 0);
}
static void dsp_write_register(uint8_t ubRegister, uint32_t ulValue)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        DSP_SELECT();

        usart3_spi_write_byte(ubRegister & 0x7F, 1);
        usart3_spi_write_byte((ulValue >> 24) & 0xFF, 0);
        usart3_spi_write_byte((ulValue >> 16) & 0xFF, 0);
        usart3_spi_write_byte((ulValue >> 8) & 0xFF, 0);
        usart3_spi_write_byte((ulValue >> 0) & 0xFF, 1);

        DSP_UNSELECT();
    }
}
static void dsp_rmw_register(uint8_t ubRegister, uint32_t ulMask, uint32_t ulValue)
{
    dsp_write_register(ubRegister, (dsp_read_register(ubRegister) & ulMask) | ulValue);
}

uint8_t dsp_init()
{
    DSP_RESET();
    delay_ms(20);
    DSP_UNRESET();
    delay_ms(80);

    // Reset interface
    DSP_SELECT();
    delay_ms(5);
    DSP_UNSELECT();
    delay_ms(2);

    if(dsp_read_firmware_id() != 0x0D57)
        return 0;

    return 1;
}
void dsp_isr()
{

}

uint16_t dsp_read_firmware_id()
{
    return (dsp_read_register(DSP_REG_ID) & DSP_REG_ID_FIRMWARE_ID) >> 16;
}
uint16_t dsp_read_firmware_version()
{
    return (dsp_read_register(DSP_REG_ID) & DSP_REG_ID_FIRMWARE_VERSION) >> 0;
}
