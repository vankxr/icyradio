
#include "cp2615.h"

uint8_t cp2615_init()
{
    cp2615_reset(1);

    if(!i2c2_write(CP2615_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    char pszVersion[33];

    cp2615_read_version(pszVersion, 33);

    if(strncmp(pszVersion, "2615", 4))
        return 0;

    cp2615_reset(0);

    return 1;
}

void cp2615_reset(uint8_t ubConfigMode)
{
    I2S_BRG_RESET();

    if(ubConfigMode)
        I2S_BRG_CFG_EN();
    else
        I2S_BRG_CFG_DIS();

    delay_ms(CP2615_T_RESET);

    I2S_BRG_UNRESET();

    delay_ms(10);
}
void cp2615_soft_reset()
{
    uint8_t pubBuffer[2];

    pubBuffer[0] = (CP2615_CMD_RESET >> 8) & 0xFF;
    pubBuffer[1] = (CP2615_CMD_RESET >> 0) & 0xFF;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write(CP2615_I2C_ADDR, pubBuffer, 2, I2C_STOP);
    }

    delay_ms(10);
}

void cp2615_read_version(char *pszVersion, uint32_t ulSize)
{
    if(!pszVersion)
        return;

    if(ulSize < 5)
        return;

    uint8_t pubBuffer[2];

    pubBuffer[0] = (CP2615_CMD_READ_VERSION >> 8) & 0xFF;
    pubBuffer[1] = (CP2615_CMD_READ_VERSION >> 0) & 0xFF;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write(CP2615_I2C_ADDR, pubBuffer, 2, I2C_RESTART);
        i2c2_read(CP2615_I2C_ADDR, pszVersion, ulSize - 1, I2C_STOP);
    }

    pszVersion[ulSize - 1] = 0;
}

void cp2615_rom_erase()
{
    uint8_t pubBuffer[4];

    pubBuffer[0] = (CP2615_CMD_ERASE >> 8) & 0xFF;
    pubBuffer[1] = (CP2615_CMD_ERASE >> 0) & 0xFF;
    pubBuffer[2] = (CP2615_MAGIC >> 8) & 0xFF;
    pubBuffer[3] = (CP2615_MAGIC >> 0) & 0xFF;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write(CP2615_I2C_ADDR, pubBuffer, 4, I2C_STOP);
    }

    delay_ms(CP2615_T_ERASE);
}
void cp2615_rom_write(uint16_t usAddress, const uint8_t *pubData, const uint16_t usDataSize)
{
    if(!pubData)
        return;

    if(!usDataSize)
        return;

    if(usAddress + usDataSize > CP2615_ROM_SIZE)
        return;

    uint16_t usOffset = 0;

    while(usDataSize > usOffset)
    {
        uint16_t usChunkSize = usDataSize - usOffset;

        if(usChunkSize > 32)
            usChunkSize = 32;

        uint8_t pubBuffer[36];

        pubBuffer[0] = (usAddress >> 8) & 0xFF;
        pubBuffer[1] = (usAddress >> 0) & 0xFF;
        pubBuffer[2] = (CP2615_MAGIC >> 8) & 0xFF;
        pubBuffer[3] = (CP2615_MAGIC >> 0) & 0xFF;

        memcpy(pubBuffer + 4, pubData + usOffset, usChunkSize);

        ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
        {
            i2c2_write(CP2615_I2C_ADDR, pubBuffer, usChunkSize + 4, I2C_STOP);
        }

        usAddress += usChunkSize;
        usOffset += usChunkSize;

        delay_ms(CP2615_T_BLOCK_WRITE);
    }
}
void cp2615_rom_read(uint16_t usAddress, uint8_t *pubData, const uint16_t usDataSize)
{
    if(!pubData)
        return;

    if(!usDataSize)
        return;

    if(usAddress + usDataSize > CP2615_ROM_SIZE)
        return;

    uint8_t pubBuffer[2];

    pubBuffer[0] = (usAddress >> 8) & 0xFF;
    pubBuffer[1] = (usAddress >> 0) & 0xFF;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c2_write(CP2615_I2C_ADDR, pubBuffer, 2, I2C_RESTART);
        i2c2_read(CP2615_I2C_ADDR, pubData, usDataSize, I2C_STOP);
    }
}