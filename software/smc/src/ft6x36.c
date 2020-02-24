
#include "ft6x36.h"

static volatile ft6x36_event_t pxTouchFIFO[FT6X36_TOUCH_FIFO_SIZE];
static volatile uint8_t ubTouchFIFORd = 0;
static volatile uint8_t ubTouchFIFOWr = 0;
static ft6x36_event_callback_fn_t pfEventCallback = NULL;

static uint8_t ft6x36_read_register(uint8_t ubRegister)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c0_write_byte(FT6X06_I2C_ADDR, ubRegister, I2C_RESTART);
        return i2c0_read_byte(FT6X06_I2C_ADDR, I2C_STOP);
    }
}
static void ft6x36_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    uint8_t pubBuffer[2];

    pubBuffer[0] = ubRegister;
    pubBuffer[1] = ubValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c0_write(FT6X06_I2C_ADDR, pubBuffer, 2, I2C_STOP);
    }
}
static void ft6x36_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    ft6x36_write_register(ubRegister, (ft6x36_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t ft6x36_init()
{
    TFT_TOUCH_RESET();
    delay_ms(10);
    TFT_TOUCH_UNRESET();
    delay_ms(300);

    if(!i2c0_write(FT6X06_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    if(ft6x36_get_chip_id() != 0x36)
        return 0;

    ft6x36_write_register(FT6X06_REG_PERIODACTIVE, 0x01);
    ft6x36_write_register(FT6X06_REG_TH_GROUP, 127);

    return 1;
}
void ft6x36_isr()
{
    uint8_t pubBuf[4];

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c0_write_byte(FT6X06_I2C_ADDR, FT6X06_REG_P1_XH, I2C_RESTART);
        i2c0_read(FT6X06_I2C_ADDR, pubBuf, 4, I2C_STOP);
    }

    pxTouchFIFO[ubTouchFIFOWr].ubEvent = pubBuf[0] & 0xC0;
    pxTouchFIFO[ubTouchFIFOWr].usX = ((uint16_t)(pubBuf[0] & 0x03) << 8) | (uint16_t)pubBuf[1];
    pxTouchFIFO[ubTouchFIFOWr].usY = ((uint16_t)(pubBuf[2] & 0x03) << 8) | (uint16_t)pubBuf[3];

    if(++ubTouchFIFOWr >= FT6X36_TOUCH_FIFO_SIZE)
        ubTouchFIFOWr = 0;
}
void ft6x36_tick()
{
    while((FT6X36_TOUCH_FIFO_SIZE + ubTouchFIFOWr - ubTouchFIFORd) % FT6X36_TOUCH_FIFO_SIZE)
    {
        if(pfEventCallback)
            pfEventCallback(pxTouchFIFO[ubTouchFIFORd].ubEvent, pxTouchFIFO[ubTouchFIFORd].usX, pxTouchFIFO[ubTouchFIFORd].usY);

        if(++ubTouchFIFORd >= FT6X36_TOUCH_FIFO_SIZE)
            ubTouchFIFORd = 0;
    }
}

void ft6x36_set_event_callback(ft6x36_event_callback_fn_t pfFunc)
{
    pfEventCallback = pfFunc;
}

uint8_t ft6x36_get_vendor_id()
{
    return ft6x36_read_register(FT6X06_REG_FOCALTECH_ID);
}
uint8_t ft6x36_get_chip_id()
{
    return ft6x36_read_register(FT6X06_REG_CIPHER);
}
uint8_t ft6x36_get_firmware_version()
{
    return ft6x36_read_register(FT6X06_REG_FIRMID);
}