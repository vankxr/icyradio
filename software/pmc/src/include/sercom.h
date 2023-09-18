#ifndef __SERCOM_H__
#define __SERCOM_H__

#include <sam.h>
#include <stdlib.h>
#include <string.h>
#include "nvic.h"
#include "utils.h"
#include "atomic.h"

#define SERCOM_I2C_NORMAL 0
#define SERCOM_I2C_FAST 1

#define SERCOM_I2C_RESTART 0
#define SERCOM_I2C_STOP 1

#define SERCOM_SPI_LSB_FIRST 0
#define SERCOM_SPI_MSB_FIRST 1

//#define SERCOM0_MODE_I2C                   // Define for I2C
#define SERCOM0_MODE_SPI                   // Define for SPI
//#define SERCOM0_MODE_UART                  // Define for UART
//#define SERCOM0_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define SERCOM0_DMA_CHANNEL          0     // Only relevant when in UART mode
#define SERCOM0_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(SERCOM0_MODE_SPI) && !defined(SERCOM0_MODE_I2C) && !defined(SERCOM0_MODE_UART)
void sercom0_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
uint8_t sercom0_spi_transfer_byte(const uint8_t ubData);
void sercom0_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void sercom0_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom0_spi_transfer_byte(*pubSrc++);
}
static inline void sercom0_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        sercom0_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void sercom0_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom0_spi_transfer_byte(ubSendData);
}
#elif !defined(SERCOM0_MODE_SPI) && defined(SERCOM0_MODE_I2C) && !defined(SERCOM0_MODE_UART)
void sercom0_init(uint8_t ubMode);
uint8_t sercom0_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom0_i2c_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom0_i2c_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom0_i2c_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom0_i2c_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom0_i2c_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom0_i2c_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom0_i2c_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    sercom0_i2c_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop);

    return ubData;
}
#elif !defined(SERCOM0_MODE_SPI) && !defined(SERCOM0_MODE_I2C) && defined(SERCOM0_MODE_UART)
void sercom0_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom0_write_byte(const uint8_t ubData);
uint8_t sercom0_read_byte();
uint32_t sercom0_available();
void sercom0_flush();
static inline void sercom0_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom0_write_byte(*pubSrc++);
}
static inline void sercom0_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom0_read_byte();
}
#endif  // SERCOM0_MODE

#define SERCOM1_MODE_I2C                   // Define for I2C
//#define SERCOM1_MODE_SPI                   // Define for SPI
//#define SERCOM1_MODE_UART                  // Define for UART
//#define SERCOM1_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define SERCOM1_DMA_CHANNEL          0     // Only relevant when in UART mode
#define SERCOM1_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(SERCOM1_MODE_SPI) && !defined(SERCOM1_MODE_I2C) && !defined(SERCOM1_MODE_UART)
void sercom1_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
uint8_t sercom1_spi_transfer_byte(const uint8_t ubData);
void sercom1_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void sercom1_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom1_spi_transfer_byte(*pubSrc++);
}
static inline void sercom1_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        sercom1_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void sercom1_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom1_spi_transfer_byte(ubSendData);
}
#elif !defined(SERCOM1_MODE_SPI) && defined(SERCOM1_MODE_I2C) && !defined(SERCOM1_MODE_UART)
void sercom1_init(uint8_t ubMode);
uint8_t sercom1_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom1_i2c_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom1_i2c_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom1_i2c_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom1_i2c_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom1_i2c_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom1_i2c_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom1_i2c_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    sercom1_i2c_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop);

    return ubData;
}
#elif !defined(SERCOM1_MODE_SPI) && !defined(SERCOM1_MODE_I2C) && defined(SERCOM1_MODE_UART)
void sercom1_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom1_write_byte(const uint8_t ubData);
uint8_t sercom1_read_byte();
uint32_t sercom1_available();
void sercom1_flush();
static inline void sercom1_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom1_write_byte(*pubSrc++);
}
static inline void sercom1_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom1_read_byte();
}
#endif  // SERCOM1_MODE

//#define SERCOM2_MODE_I2C                   // Define for I2C
//#define SERCOM2_MODE_SPI                   // Define for SPI
//#define SERCOM2_MODE_UART                  // Define for UART
//#define SERCOM2_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define SERCOM2_DMA_CHANNEL          0     // Only relevant when in UART mode
#define SERCOM2_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(SERCOM2_MODE_SPI) && !defined(SERCOM2_MODE_I2C) && !defined(SERCOM2_MODE_UART)
void sercom2_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
uint8_t sercom2_spi_transfer_byte(const uint8_t ubData);
void sercom2_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void sercom2_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom2_spi_transfer_byte(*pubSrc++);
}
static inline void sercom2_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        sercom2_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void sercom2_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom2_spi_transfer_byte(ubSendData);
}
#elif !defined(SERCOM2_MODE_SPI) && defined(SERCOM2_MODE_I2C) && !defined(SERCOM2_MODE_UART)
void sercom2_init(uint8_t ubMode);
uint8_t sercom2_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom2_i2c_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom2_i2c_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom2_i2c_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom2_i2c_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom2_i2c_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom2_i2c_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom2_i2c_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    sercom2_i2c_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop);

    return ubData;
}
#elif !defined(SERCOM2_MODE_SPI) && !defined(SERCOM2_MODE_I2C) && defined(SERCOM2_MODE_UART)
void sercom2_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom2_write_byte(const uint8_t ubData);
uint8_t sercom2_read_byte();
uint32_t sercom2_available();
void sercom2_flush();
static inline void sercom2_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom2_write_byte(*pubSrc++);
}
static inline void sercom2_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom2_read_byte();
}
#endif  // SERCOM2_MODE

//#define SERCOM3_MODE_I2C                   // Define for I2C
//#define SERCOM3_MODE_SPI                   // Define for SPI
#define SERCOM3_MODE_UART                  // Define for UART
//#define SERCOM3_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define SERCOM3_DMA_CHANNEL          0     // Only relevant when in UART mode
#define SERCOM3_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(SERCOM3_MODE_SPI) && !defined(SERCOM3_MODE_I2C) && !defined(SERCOM3_MODE_UART)
void sercom3_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
uint8_t sercom3_spi_transfer_byte(const uint8_t ubData);
void sercom3_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void sercom3_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom3_spi_transfer_byte(*pubSrc++);
}
static inline void sercom3_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        sercom3_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void sercom3_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = sercom3_spi_transfer_byte(ubSendData);
}
#elif !defined(SERCOM3_MODE_SPI) && defined(SERCOM3_MODE_I2C) && !defined(SERCOM3_MODE_UART)
void sercom3_init(uint8_t ubMode);
uint8_t sercom3_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom3_i2c_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom3_i2c_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom3_i2c_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom3_i2c_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom3_i2c_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom3_i2c_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom3_i2c_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    sercom3_i2c_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop);

    return ubData;
}
#elif !defined(SERCOM3_MODE_SPI) && !defined(SERCOM3_MODE_I2C) && defined(SERCOM3_MODE_UART)
void sercom3_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom3_write_byte(const uint8_t ubData);
uint8_t sercom3_read_byte();
uint32_t sercom3_available();
void sercom3_flush();
static inline void sercom3_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom3_write_byte(*pubSrc++);
}
static inline void sercom3_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom3_read_byte();
}
#endif  // SERCOM3_MODE

#endif  // __SERCOM_H__