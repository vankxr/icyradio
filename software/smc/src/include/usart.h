#ifndef __USART_H__
#define __USART_H__

#include <em_device.h>
#include <stdlib.h>
#include <string.h>
#include "nvic.h"
#include "utils.h"
#include "atomic.h"
#include "cmu.h"
#include "ldma.h"

#define USART_LOCATION_DISABLED -1

#define USART_SPI_LSB_FIRST 0
#define USART_SPI_MSB_FIRST 1


#define USART0_MODE_SPI                   // Define for SPI, comment out for UART
//#define USART0_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART0_DMA_CHANNEL          0     // Only relevant when in UART mode
#define USART0_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART0_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART0_MODE_SPI)
void usart0_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart0_spi_transfer_byte(const uint8_t ubData);
void usart0_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart0_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart0_spi_transfer_byte(*pubSrc++);
}
static inline void usart0_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart0_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart0_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart0_spi_transfer_byte(ubSendData);
}
#else   // USART0_MODE_SPI
void usart0_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart0_write_byte(const uint8_t ubData);
uint8_t usart0_read_byte();
uint32_t usart0_available();
void usart0_flush();
static inline void usart0_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart0_write_byte(*pubSrc++);
}
static inline void usart0_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart0_read_byte();
}
#endif  // USART0_MODE_SPI

#define USART1_MODE_SPI                   // Define for SPI, comment out for UART
//#define USART1_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART1_DMA_CHANNEL          1     // Only relevant when in UART mode
#define USART1_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART1_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART1_MODE_SPI)
void usart1_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart1_spi_transfer_byte(const uint8_t ubData);
void usart1_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart1_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart1_spi_transfer_byte(*pubSrc++);
}
static inline void usart1_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart1_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart1_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart1_spi_transfer_byte(ubSendData);
}
#else   // USART1_MODE_SPI
void usart1_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart1_write_byte(const uint8_t ubData);
uint8_t usart1_read_byte();
uint32_t usart1_available();
void usart1_flush();
static inline void usart1_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart1_write_byte(*pubSrc++);
}
static inline void usart1_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart1_read_byte();
}
#endif  // USART1_MODE_SPI

#define USART2_MODE_SPI                   // Define for SPI, comment out for UART
//#define USART2_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART2_DMA_CHANNEL          2     // Only relevant when in UART mode
#define USART2_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART2_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART2_MODE_SPI)
void usart2_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart2_spi_transfer_byte(const uint8_t ubData);
void usart2_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart2_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart2_spi_transfer_byte(*pubSrc++);
}
static inline void usart2_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart2_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart2_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart2_spi_transfer_byte(ubSendData);
}
#else   // USART2_MODE_SPI
void usart2_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart2_write_byte(const uint8_t ubData);
uint8_t usart2_read_byte();
uint32_t usart2_available();
void usart2_flush();
static inline void usart2_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart2_write_byte(*pubSrc++);
}
static inline void usart2_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart2_read_byte();
}
#endif  // USART2_MODE_SPI

#define USART3_MODE_SPI                   // Define for SPI, comment out for UART
//#define USART3_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART3_DMA_CHANNEL          3     // Only relevant when in UART mode
#define USART3_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART3_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART3_MODE_SPI)
void usart3_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart3_spi_transfer_byte(const uint8_t ubData);
void usart3_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart3_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart3_spi_transfer_byte(*pubSrc++);
}
static inline void usart3_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart3_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart3_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart3_spi_transfer_byte(ubSendData);
}
#else   // USART3_MODE_SPI
void usart3_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart3_write_byte(const uint8_t ubData);
uint8_t usart3_read_byte();
uint32_t usart3_available();
void usart3_flush();
static inline void usart3_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart3_write_byte(*pubSrc++);
}
static inline void usart3_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart3_read_byte();
}
#endif  // USART3_MODE_SPI

#define USART4_MODE_SPI                   // Define for SPI, comment out for UART
//#define USART4_MODE_SPI_3W              // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART4_DMA_CHANNEL          4     // Only relevant when in UART mode
#define USART4_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART4_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART4_MODE_SPI)
void usart4_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart4_spi_transfer_byte(const uint8_t ubData);
void usart4_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart4_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart4_spi_transfer_byte(*pubSrc++);
}
static inline void usart4_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart4_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart4_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart4_spi_transfer_byte(ubSendData);
}
#else   // USART4_MODE_SPI
void usart4_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart4_write_byte(const uint8_t ubData);
uint8_t usart4_read_byte();
uint32_t usart4_available();
void usart4_flush();
static inline void usart4_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart4_write_byte(*pubSrc++);
}
static inline void usart4_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart4_read_byte();
}
#endif  // USART4_MODE_SPI

#define USART5_MODE_SPI                   // Define for SPI, comment out for UART
#define USART5_MODE_SPI_3W                // Define for 3-wire SPI, comment out for 4-wire SPI
#define USART5_DMA_CHANNEL          5     // Only relevant when in UART mode
#define USART5_DMA_RX_BUFFER_SIZE   128   // Only relevant when in UART mode
#define USART5_FIFO_SIZE            256   // Only relevant when in UART mode

#if defined(USART5_MODE_SPI)
void usart5_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, int8_t bMISOLocation, int8_t bMOSILocation, uint8_t ubCLKLocation);
uint8_t usart5_spi_transfer_byte(const uint8_t ubData);
void usart5_spi_write_byte(const uint8_t ubData, const uint8_t ubWait);
static inline void usart5_spi_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart5_spi_transfer_byte(*pubSrc++);
}
static inline void usart5_spi_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        usart5_spi_write_byte(*pubSrc++, ubWait && !ulSize);
}
static inline void usart5_spi_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = usart5_spi_transfer_byte(ubSendData);
}
#else   // USART5_MODE_SPI
void usart5_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void usart5_write_byte(const uint8_t ubData);
uint8_t usart5_read_byte();
uint32_t usart5_available();
void usart5_flush();
static inline void usart5_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        usart5_write_byte(*pubSrc++);
}
static inline void usart5_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = usart5_read_byte();
}
#endif  // USART5_MODE_SPI

#define UART0_DMA_CHANNEL           6
#define UART0_DMA_RX_BUFFER_SIZE    128
#define UART0_FIFO_SIZE             256

void uart0_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void uart0_write_byte(const uint8_t ubData);
uint8_t uart0_read_byte();
uint32_t uart0_available();
void uart0_flush();
static inline void uart0_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        uart0_write_byte(*pubSrc++);
}
static inline void uart0_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = uart0_read_byte();
}

#define UART1_DMA_CHANNEL           7
#define UART1_DMA_RX_BUFFER_SIZE    128
#define UART1_FIFO_SIZE             256

void uart1_init(uint32_t ulBaud, uint32_t ulFrameSettings, int8_t bRXLocation, int8_t bTXLocation, int8_t bCTSLocation, int8_t bRTSLocation);
void uart1_write_byte(const uint8_t ubData);
uint8_t uart1_read_byte();
uint32_t uart1_available();
void uart1_flush();
static inline void uart1_write(const uint8_t *pubSrc, uint32_t ulSize)
{
    while(ulSize--)
        uart1_write_byte(*pubSrc++);
}
static inline void uart1_read(uint8_t *pubDst, uint32_t ulSize)
{
    while(ulSize--)
        *pubDst++ = uart1_read_byte();
}

#endif  // __USART_H__