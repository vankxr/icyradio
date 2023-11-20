#ifndef __SERCOM_H__
#define __SERCOM_H__

#include <sam.h>
#include <stdlib.h>
#include <string.h>
#include "pm.h"
#include "gclk.h"
#include "nvic.h"
#include "utils.h"
#include "atomic.h"

#define SERCOM_I2C_NORMAL 0
#define SERCOM_I2C_FAST 1

#define SERCOM_I2C_RESTART 0
#define SERCOM_I2C_STOP 1

#define SERCOM_SPI_LSB_FIRST 0
#define SERCOM_SPI_MSB_FIRST 1

typedef uint8_t (* sercom_i2c_slave_addr_isr_t)(uint8_t);
typedef uint8_t (* sercom_i2c_slave_tx_data_isr_t)();
typedef uint8_t (* sercom_i2c_slave_rx_data_isr_t)(uint8_t);


// #define SERCOM0_MODE_I2C_MASTER            // Define for Master I2C support
// #define SERCOM0_MODE_I2C_SLAVE             // Define for Slave I2C support
#define SERCOM0_MODE_SPI                   // Define for SPI
// #define SERCOM0_MODE_UART                  // Define for UART
#define SERCOM0_FIFO_SIZE            256   // Only relevant when in UART mode

#ifdef SERCOM0_MODE_I2C_MASTER
void sercom0_i2c_master_init(uint8_t ubMode);
uint8_t sercom0_i2c_master_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom0_i2c_master_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom0_i2c_master_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom0_i2c_master_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom0_i2c_master_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom0_i2c_master_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom0_i2c_master_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom0_i2c_master_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!sercom0_i2c_master_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
#endif // SERCOM0_MODE_I2C_MASTER
#ifdef SERCOM0_MODE_I2C_SLAVE
void sercom0_i2c_slave_init(uint8_t ubAddress);
void sercom0_i2c_slave_set_addr_isr(sercom_i2c_slave_addr_isr_t pfISR);
void sercom0_i2c_slave_set_tx_data_isr(sercom_i2c_slave_tx_data_isr_t pfISR);
void sercom0_i2c_slave_set_rx_data_isr(sercom_i2c_slave_rx_data_isr_t pfISR);
#endif // SERCOM0_MODE_I2C_SLAVE
#ifdef SERCOM0_MODE_SPI
void sercom0_spi_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
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
#endif // SERCOM0_MODE_SPI
#ifdef SERCOM0_MODE_UART
void sercom0_uart_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom0_uart_write_byte(const uint8_t ubData);
uint8_t sercom0_uart_read_byte();
uint32_t sercom0_uart_available();
void sercom0_uart_flush();
static inline void sercom0_uart_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom0_uart_write_byte(*pubSrc++);
}
static inline void sercom0_uart_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom0_uart_read_byte();
}
#endif // SERCOM0_MODE_UART


#define SERCOM1_MODE_I2C_MASTER            // Define for Master I2C support
#define SERCOM1_MODE_I2C_SLAVE             // Define for Slave I2C support
// #define SERCOM1_MODE_SPI                   // Define for SPI
// #define SERCOM1_MODE_UART                  // Define for UART
#define SERCOM1_FIFO_SIZE            256   // Only relevant when in UART mode

#ifdef SERCOM1_MODE_I2C_MASTER
void sercom1_i2c_master_init(uint8_t ubMode);
uint8_t sercom1_i2c_master_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom1_i2c_master_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom1_i2c_master_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom1_i2c_master_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom1_i2c_master_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom1_i2c_master_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom1_i2c_master_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom1_i2c_master_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!sercom1_i2c_master_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
#endif // SERCOM1_MODE_I2C_MASTER
#ifdef SERCOM1_MODE_I2C_SLAVE
void sercom1_i2c_slave_init(uint8_t ubAddress);
void sercom1_i2c_slave_set_addr_isr(sercom_i2c_slave_addr_isr_t pfISR);
void sercom1_i2c_slave_set_tx_data_isr(sercom_i2c_slave_tx_data_isr_t pfISR);
void sercom1_i2c_slave_set_rx_data_isr(sercom_i2c_slave_rx_data_isr_t pfISR);
#endif // SERCOM1_MODE_I2C_SLAVE
#ifdef SERCOM1_MODE_SPI
void sercom1_spi_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
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
#endif // SERCOM1_MODE_SPI
#ifdef SERCOM1_MODE_UART
void sercom1_uart_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom1_uart_write_byte(const uint8_t ubData);
uint8_t sercom1_uart_read_byte();
uint32_t sercom1_uart_available();
void sercom1_uart_flush();
static inline void sercom1_uart_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom1_uart_write_byte(*pubSrc++);
}
static inline void sercom1_uart_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom1_uart_read_byte();
}
#endif // SERCOM1_MODE_UART


// #define SERCOM2_MODE_I2C_MASTER            // Define for Master I2C support
// #define SERCOM2_MODE_I2C_SLAVE             // Define for Slave I2C support
// #define SERCOM2_MODE_SPI                   // Define for SPI
// #define SERCOM2_MODE_UART                  // Define for UART
#define SERCOM2_FIFO_SIZE            256   // Only relevant when in UART mode

#ifdef SERCOM2_MODE_I2C_MASTER
void sercom2_i2c_master_init(uint8_t ubMode);
uint8_t sercom2_i2c_master_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom2_i2c_master_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom2_i2c_master_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom2_i2c_master_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom2_i2c_master_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom2_i2c_master_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom2_i2c_master_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom2_i2c_master_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!sercom2_i2c_master_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
#endif // SERCOM2_MODE_I2C_MASTER
#ifdef SERCOM2_MODE_I2C_SLAVE
void sercom2_i2c_slave_init(uint8_t ubAddress);
void sercom2_i2c_slave_set_addr_isr(sercom_i2c_slave_addr_isr_t pfISR);
void sercom2_i2c_slave_set_tx_data_isr(sercom_i2c_slave_tx_data_isr_t pfISR);
void sercom2_i2c_slave_set_rx_data_isr(sercom_i2c_slave_rx_data_isr_t pfISR);
#endif // SERCOM2_MODE_I2C_SLAVE
#ifdef SERCOM2_MODE_SPI
void sercom2_spi_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
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
#endif // SERCOM2_MODE_SPI
#ifdef SERCOM2_MODE_UART
void sercom2_uart_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom2_uart_write_byte(const uint8_t ubData);
uint8_t sercom2_uart_read_byte();
uint32_t sercom2_uart_available();
void sercom2_uart_flush();
static inline void sercom2_uart_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom2_uart_write_byte(*pubSrc++);
}
static inline void sercom2_uart_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom2_uart_read_byte();
}
#endif // SERCOM2_MODE_UART


// #define SERCOM3_MODE_I2C_MASTER            // Define for Master I2C support
// #define SERCOM3_MODE_I2C_SLAVE             // Define for Slave I2C support
// #define SERCOM3_MODE_SPI                   // Define for SPI
#define SERCOM3_MODE_UART                  // Define for UART
#define SERCOM3_FIFO_SIZE            256   // Only relevant when in UART mode

#ifdef SERCOM3_MODE_I2C_MASTER
void sercom3_i2c_master_init(uint8_t ubMode);
uint8_t sercom3_i2c_master_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop);
static inline uint8_t sercom3_i2c_master_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return sercom3_i2c_master_transmit((ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t sercom3_i2c_master_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return sercom3_i2c_master_transmit((ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t sercom3_i2c_master_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return sercom3_i2c_master_transmit((ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t sercom3_i2c_master_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!sercom3_i2c_master_transmit((ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
#endif // SERCOM3_MODE_I2C_MASTER
#ifdef SERCOM3_MODE_I2C_SLAVE
void sercom3_i2c_slave_init(uint8_t ubAddress);
void sercom3_i2c_slave_set_addr_isr(sercom_i2c_slave_addr_isr_t pfISR);
void sercom3_i2c_slave_set_tx_data_isr(sercom_i2c_slave_tx_data_isr_t pfISR);
void sercom3_i2c_slave_set_rx_data_isr(sercom_i2c_slave_rx_data_isr_t pfISR);
#endif // SERCOM3_MODE_I2C_SLAVE
#ifdef SERCOM3_MODE_SPI
void sercom3_spi_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO);
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
#endif // SERCOM3_MODE_SPI
#ifdef SERCOM3_MODE_UART
void sercom3_uart_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO);
void sercom3_uart_write_byte(const uint8_t ubData);
uint8_t sercom3_uart_read_byte();
uint32_t sercom3_uart_available();
void sercom3_uart_flush();
static inline void sercom3_uart_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        sercom3_uart_write_byte(*pubSrc++);
}
static inline void sercom3_uart_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = sercom3_uart_read_byte();
}
#endif // SERCOM3_MODE_UART

#endif  // __SERCOM_H__