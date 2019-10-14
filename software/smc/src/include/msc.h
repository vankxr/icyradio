#ifndef __MSC_H__
#define __MSC_H__

#include <em_device.h>

#define FLASH_PAGE_COUNT    (FLASH_SIZE / FLASH_PAGE_SIZE)

typedef struct
{
    volatile uint32_t   PLW[16]; // Page Lock Word (one page per bit from 0 to 32)
    uint32_t            RESERVED0[106];
    volatile uint32_t   CLW[2]; // Configuration Lock Word (CLW[0] bit 1 enables the bootloader, CLW[0] bit 2 makes RESETn soft reset, CLW[1] bit 0 disables flash bank switching)
    volatile uint32_t   ALW; // AAP Lock Word (bits 0:3 enable the AAP, bit 31 enables software to re-enable the AAP)
    volatile uint32_t   MLW; // Mass Erase Lock Word (bit 0 enables mass erase on the lower half, bit 1 enables mass erase on the upper half)
    volatile uint32_t   ULW; // User Page Lock Word (bit 0 enables write/erase of the user data page, bit 1 enables writes to the lock bits page)
    volatile uint32_t   DLW; // Debug Lock Word (bits 0:3 enable the debug access to the core)
} lock_bits_t;

typedef struct
{
    volatile uint32_t *pulRegister;
    volatile uint32_t ulInitialCalibration;
} init_calib_t;

extern lock_bits_t *g_psLockBits;
extern init_calib_t *g_psInitCalibrationTable;

void msc_init();
void msc_config_waitstates(uint32_t ulFrequency);
void msc_flash_lock();
void msc_flash_unlock();
void msc_flash_page_erase(uint32_t ulAddress);
void msc_flash_page_write(uint32_t ulAddress, uint8_t *pubData, uint32_t ulSize);
void msc_flash_word_write(uint32_t ulAddress, uint32_t ulData);

#endif  // __MSC_H__