#ifndef __CP2615_H__
#define __CP2615_H__

#include <em_device.h>
#include <stdlib.h>
#include <string.h>
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "i2c.h"

#define CP2615_I2C_ADDR 0x18

// Command addresses
#define CP2615_CMD_READ_VERSION 0xFFFB
#define CP2615_CMD_ERASE        0xFFFC
#define CP2615_CMD_CONFIG_LOCK  0xFFFD
#define CP2615_CMD_RESET        0xFFFE

// Magic
#define CP2615_MAGIC 0xA5F1

// Memory size
#define CP2615_ROM_SIZE 2048

// Times
#define CP2615_T_RESET          100
#define CP2615_T_ERASE          100
#define CP2615_T_BLOCK_WRITE    5


uint8_t cp2615_init();

void cp2615_reset(uint8_t ubConfigMode);
void cp2615_soft_reset();

void cp2615_read_version(char *pszVersion, uint32_t ulSize);

void cp2615_rom_erase();
void cp2615_rom_write(uint16_t usAddress, const uint8_t *pubData, const uint16_t usDataSize);
void cp2615_rom_read(uint16_t usAddress, uint8_t *pubData, const uint16_t usDataSize);

#endif // __CP2615_H__