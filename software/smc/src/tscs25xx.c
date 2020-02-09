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
    delay_ms(10);

    if(!i2c2_write(TSCS25XX_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    if((tscs25xx_read_register(TSCS25XX_REG_DEVADR) >> 1) != TSCS25XX_I2C_ADDR)
        return 0;

    return 1;
}

uint16_t tscs25xx_read_device_id()
{
    return ((uint16_t)tscs25xx_read_register(TSCS25XX_REG_DEVIDH) << 8) | tscs25xx_read_register(TSCS25XX_REG_DEVIDL);
}
uint8_t tscs25xx_read_revision_id()
{
    return tscs25xx_read_register(TSCS25XX_REG_REVID);
}