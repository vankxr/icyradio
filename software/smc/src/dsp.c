#include "dsp.h"

static void dsp_read(uint8_t ubRegister, uint8_t *pubData, uint8_t ubSize)
{
    if(!pubData)
        return;

    if(!ubSize)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        DSP_SELECT();

        usart3_spi_write_byte((ubRegister & 0x7F) | 0x00, 0);
        usart3_spi_read(pubData, ubSize, 0x00);

        DSP_UNSELECT();
    }
}
static void dsp_write(uint8_t ubRegister, uint8_t *pubData, uint8_t ubSize)
{
    if(!pubData)
        return;

    if(!ubSize)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        DSP_SELECT();

        usart3_spi_write_byte((ubRegister & 0x7F) | 0x80, 0);
        usart3_spi_write(pubData, ubSize, 1);

        DSP_UNSELECT();
    }
}
static uint8_t dsp_read_register(uint8_t ubRegister)
{
    uint8_t ubData;

    dsp_read(ubRegister, &ubData, 1);

    return ubData;
}
static void dsp_write_register(uint8_t ubRegister, uint8_t ubData)
{
    dsp_write(ubRegister, &ubData, 1);
}
static void dsp_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubData)
{
    dsp_write_register(ubRegister, (dsp_read_register(ubRegister) & ubMask) | ubData);
}

uint8_t dsp_init()
{
    DSP_RESET();
    delay_ms(20);
    DSP_UNRESET();
    delay_ms(120);

    if(dsp_read_device_id() != 0xD5)
        return 0;

    return 1;
}
void dsp_isr()
{

}

uint8_t dsp_read_device_id()
{
    return dsp_read_register(DSP_REG_DEVICE_ID);
}
uint16_t dsp_read_firmware_version()
{
    uint16_t usVersion;

    dsp_read(DSP_REG_SW_VERSION, (uint8_t *)&usVersion, sizeof(uint16_t));

    return usVersion;
}
void dsp_read_unique_id(uint32_t *pulUID)
{
    if(!pulUID)
        return;

    dsp_read(DSP_REG_DEV_UID0, (uint8_t *)pulUID, 4 * sizeof(uint32_t));
}