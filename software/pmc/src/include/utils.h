#ifndef __UTILS_H__
#define __UTILS_H__

#include <sam.h>

// Memory sections & aliases
#define IRAM0_TEXT __attribute__ ((section(".iram0.text")))
#define IRAM1_TEXT __attribute__ ((section(".iram1.text")))
#define IROM1_TEXT __attribute__ ((section(".irom1.text")))
#define DROM0_DATA __attribute__ ((section(".drom0.data")))

#define RAM_CODE IRAM0_TEXT
#define RAMH_CODE IRAM1_TEXT
#define BOOT_CODE IROM1_TEXT
#define USER_DATA DROM0_DATA

// Macro to make a dummy read
#define REG_DISCARD(reg) __asm__ volatile ("" : : "r" (*(volatile uint32_t *)(reg)))

// Macros to access bit band/set/clear regions
#define PERI_REG_BIT_SET_ADDR(reg)          (PER_BITSET_MEM_BASE + ((uint32_t)(reg) - PER_MEM_BASE))
#define PERI_REG_BIT_SET(reg)               *(volatile uint32_t *)PERI_REG_BIT_SET_ADDR(reg)
#define PERI_REG_BIT_CLEAR_ADDR(reg)        (PER_BITCLR_MEM_BASE + ((uint32_t)(reg) - PER_MEM_BASE))
#define PERI_REG_BIT_CLEAR(reg)             *(volatile uint32_t *)PERI_REG_BIT_CLEAR_ADDR(reg)

// Macro to check if the address has a valid app
#define IS_VALID_APP(addr) ((*(volatile uint32_t *)(addr) & 0xFFF80000) == SRAM_BASE)

// Macro to get the bit value
#define BIT(x) (1 << (x))

// Printf macros to print bits
#define UINT8BITSTR         "%c%c%c%c%c%c%c%c"
#define UINT16BITSTR        UINT8BITSTR UINT8BITSTR
#define UINT32BITSTR        UINT16BITSTR UINT16BITSTR
#define UINT64BITSTR        UINT32BITSTR UINT32BITSTR
#define UINT82BITSTR(b)     ((b) & 0x80 ? '1' : '0'), ((b) & 0x40 ? '1' : '0'), ((b) & 0x20 ? '1' : '0'), ((b) & 0x10 ? '1' : '0'), ((b) & 0x08 ? '1' : '0'), ((b) & 0x04 ? '1' : '0'), ((b) & 0x02 ? '1' : '0'), ((b) & 0x01 ? '1' : '0')
#define UINT162BITSTR(b)    UINT82BITSTR(((b) >> 8) & 0xFF), UINT82BITSTR(((b) >> 0) & 0xFF)
#define UINT322BITSTR(b)    UINT162BITSTR(((b) >> 16) & 0xFFFF), UINT162BITSTR(((b) >> 0) & 0xFFFF)
#define UINT642BITSTR(b)    UINT322BITSTR(((b) >> 32) & 0xFFFFFFFF), UINT322BITSTR(((b) >> 0) & 0xFFFFFFFF)

// Absolute value of
#define ABS(a)      ((a) < 0 ? (-(a)) : (a))

#endif  // __UTILS_H__
