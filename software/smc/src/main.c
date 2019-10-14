#include <em_device.h>
#include <stdlib.h>
#include <math.h>
#include "debug_macros.h"
#include "utils.h"
#include "nvic.h"
#include "atomic.h"
#include "systick.h"
#include "rmu.h"
#include "emu.h"
#include "cmu.h"
#include "gpio.h"
#include "dbg.h"
#include "msc.h"
#include "crypto.h"
#include "crc.h"
#include "trng.h"
#include "rtcc.h"
#include "adc.h"
#include "usart.h"
#include "i2c.h"
#include "ft6x36.h"
#include "ili9488.h"
#include "tft.h"
#include "images.h"
#include "fonts.h"

// Structs

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint16_t get_device_revision();

static void touch_button_callback(uint8_t ubButtonID);

// Variables
static uint8_t ubScreenNum = 0;
tft_graph_t *pGraph = NULL;
tft_terminal_t *pTerminal = NULL;
tft_textbox_t *pTextbox = NULL;
tft_button_t *pButtons[5] = {NULL};

// ISRs

// Functions
void reset()
{
    SCB->AIRCR = 0x05FA0000 | _VAL2FLD(SCB_AIRCR_SYSRESETREQ, 1);

    while(1);
}
void sleep()
{
    rtcc_set_alarm(rtcc_get_time() + 5);

    SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk; // Configure Deep Sleep (EM2/3)

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        IRQ_CLEAR(RTCC_IRQn);

        __DMB(); // Wait for all memory transactions to finish before memory access
        __DSB(); // Wait for all memory transactions to finish before executing instructions
        __ISB(); // Wait for all memory transactions to finish before fetching instructions
        __SEV(); // Set the event flag to ensure the next WFE will be a NOP
        __WFE(); // NOP and clear the event flag
        __WFE(); // Wait for event
        __NOP(); // Prevent debugger crashes

        cmu_init();
        cmu_update_clocks();
    }
}

uint32_t get_free_ram()
{
    void *pCurrentHeap = malloc(1);

    uint32_t ulFreeRAM = (uint32_t)__get_MSP() - (uint32_t)pCurrentHeap;

    free(pCurrentHeap);

    return ulFreeRAM;
}

void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize)
{
    uint8_t ubFamily = (DEVINFO->PART & _DEVINFO_PART_DEVICE_FAMILY_MASK) >> _DEVINFO_PART_DEVICE_FAMILY_SHIFT;
    const char* szFamily = "?";

    switch(ubFamily)
    {
        case 0x10: szFamily = "EFR32MG1P";  break;
        case 0x11: szFamily = "EFR32MG1B";  break;
        case 0x12: szFamily = "EFR32MG1V";  break;
        case 0x13: szFamily = "EFR32BG1P";  break;
        case 0x14: szFamily = "EFR32BG1B";  break;
        case 0x15: szFamily = "EFR32BG1V";  break;
        case 0x19: szFamily = "EFR32FG1P";  break;
        case 0x1A: szFamily = "EFR32FG1B";  break;
        case 0x1B: szFamily = "EFR32FG1V";  break;
        case 0x1C: szFamily = "EFR32MG12P"; break;
        case 0x1D: szFamily = "EFR32MG12B"; break;
        case 0x1E: szFamily = "EFR32MG12V"; break;
        case 0x1F: szFamily = "EFR32BG12P"; break;
        case 0x20: szFamily = "EFR32BG12B"; break;
        case 0x21: szFamily = "EFR32BG12V"; break;
        case 0x25: szFamily = "EFR32FG12P"; break;
        case 0x26: szFamily = "EFR32FG12B"; break;
        case 0x27: szFamily = "EFR32FG12V"; break;
        case 0x28: szFamily = "EFR32MG13P"; break;
        case 0x29: szFamily = "EFR32MG13B"; break;
        case 0x2A: szFamily = "EFR32MG13V"; break;
        case 0x2B: szFamily = "EFR32BG13P"; break;
        case 0x2C: szFamily = "EFR32BG13B"; break;
        case 0x2D: szFamily = "EFR32BG13V"; break;
        case 0x2E: szFamily = "EFR32ZG13P"; break;
        case 0x31: szFamily = "EFR32FG13P"; break;
        case 0x32: szFamily = "EFR32FG13B"; break;
        case 0x33: szFamily = "EFR32FG13V"; break;
        case 0x34: szFamily = "EFR32MG14P"; break;
        case 0x35: szFamily = "EFR32MG14B"; break;
        case 0x36: szFamily = "EFR32MG14V"; break;
        case 0x37: szFamily = "EFR32BG14P"; break;
        case 0x38: szFamily = "EFR32BG14B"; break;
        case 0x39: szFamily = "EFR32BG14V"; break;
        case 0x3A: szFamily = "EFR32ZG14P"; break;
        case 0x3D: szFamily = "EFR32FG14P"; break;
        case 0x3E: szFamily = "EFR32FG14B"; break;
        case 0x3F: szFamily = "EFR32FG14V"; break;
        case 0x47: szFamily = "EFM32G";     break;
        case 0x48: szFamily = "EFM32GG";    break;
        case 0x49: szFamily = "EFM32TG";    break;
        case 0x4A: szFamily = "EFM32LG";    break;
        case 0x4B: szFamily = "EFM32WG";    break;
        case 0x4C: szFamily = "EFM32ZG";    break;
        case 0x4D: szFamily = "EFM32HG";    break;
        case 0x51: szFamily = "EFM32PG1B";  break;
        case 0x53: szFamily = "EFM32JG1B";  break;
        case 0x55: szFamily = "EFM32PG12B"; break;
        case 0x57: szFamily = "EFM32JG12B"; break;
        case 0x64: szFamily = "EFM32GG11B"; break;
        case 0x67: szFamily = "EFM32TG11B"; break;
        case 0x6A: szFamily = "EFM32GG12B"; break;
        case 0x78: szFamily = "EZR32LG";    break;
        case 0x79: szFamily = "EZR32WG";    break;
        case 0x7A: szFamily = "EZR32HG";    break;
    }

    uint8_t ubPackage = (DEVINFO->MEMINFO & _DEVINFO_MEMINFO_PKGTYPE_MASK) >> _DEVINFO_MEMINFO_PKGTYPE_SHIFT;
    char cPackage = '?';

    if(ubPackage == 74)
        cPackage = '?';
    else if(ubPackage == 76)
        cPackage = 'L';
    else if(ubPackage == 77)
        cPackage = 'M';
    else if(ubPackage == 81)
        cPackage = 'Q';

    uint8_t ubTempGrade = (DEVINFO->MEMINFO & _DEVINFO_MEMINFO_TEMPGRADE_MASK) >> _DEVINFO_MEMINFO_TEMPGRADE_SHIFT;
    char cTempGrade = '?';

    if(ubTempGrade == 0)
        cTempGrade = 'G';
    else if(ubTempGrade == 1)
        cTempGrade = 'I';
    else if(ubTempGrade == 2)
        cTempGrade = '?';
    else if(ubTempGrade == 3)
        cTempGrade = '?';

    uint16_t usPartNumber = (DEVINFO->PART & _DEVINFO_PART_DEVICE_NUMBER_MASK) >> _DEVINFO_PART_DEVICE_NUMBER_SHIFT;
    uint8_t ubPinCount = (DEVINFO->MEMINFO & _DEVINFO_MEMINFO_PINCOUNT_MASK) >> _DEVINFO_MEMINFO_PINCOUNT_SHIFT;

    snprintf(pszDeviceName, ulDeviceNameSize, "%s%huF%hu%c%c%hhu", szFamily, usPartNumber, FLASH_SIZE >> 10, cTempGrade, cPackage, ubPinCount);
}
uint16_t get_device_revision()
{
    uint16_t usRevision;

    /* CHIP MAJOR bit [3:0]. */
    usRevision = ((ROMTABLE->PID0 & _ROMTABLE_PID0_REVMAJOR_MASK) >> _ROMTABLE_PID0_REVMAJOR_SHIFT) << 8;
    /* CHIP MINOR bit [7:4]. */
    usRevision |= ((ROMTABLE->PID2 & _ROMTABLE_PID2_REVMINORMSB_MASK) >> _ROMTABLE_PID2_REVMINORMSB_SHIFT) << 4;
    /* CHIP MINOR bit [3:0]. */
    usRevision |= (ROMTABLE->PID3 & _ROMTABLE_PID3_REVMINORLSB_MASK) >> _ROMTABLE_PID3_REVMINORLSB_SHIFT;

    return usRevision;
}

void touch_button_callback(uint8_t ubButtonID)
{
    switch(ubButtonID)
    {
        case 0: // image
            if(ubScreenNum != 0)
            {
                ubScreenNum = 0;
                tft_fill_screen(RGB565_WHITE);
                for(uint8_t x = 0; x < 4; x++)
                {
                    for(uint8_t y = 0; y < 6; y++)
                    {
                        tft_draw_image(&xPepeImage, 32 + (x * 64), 32 + (y * 64));
                    }
                }
                tft_button_draw(pButtons[0], "img", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[1], "grph", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[2], "trm", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[3], "txt", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[4], "blnk", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
            }
            DBGPRINTLN_CTX("Button 0 Pressed!");
            break;

        case 1: // graph
            if(ubScreenNum != 1)
            {
                ubScreenNum = 1;
                tft_fill_screen(RGB565_DARKGREY);
                tft_graph_draw_frame(pGraph);
                tft_button_draw(pButtons[0], "img", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[1], "grph", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[2], "trm", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[3], "txt", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[4], "blnk", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
            }
            DBGPRINTLN_CTX("Button 1 Pressed!");
            break;

        case 2: // terminal
            if(ubScreenNum != 2)
            {
                ubScreenNum = 2;
                tft_fill_screen(RGB565_BLACK);
                tft_terminal_update(pTerminal);
                tft_button_draw(pButtons[0], "img", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[1], "grph", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[2], "trm", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[3], "txt", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[4], "blnk", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
            }
            DBGPRINTLN_CTX("Button 2 Pressed!");
            break;

        case 3: // text box
        if(ubScreenNum != 3)
            {
                ubScreenNum = 3;
                tft_fill_screen(RGB565_WHITE);
                tft_draw_rectangle(10, 65, 295 + 15 + 5, 75 + tft_get_text_height(&xSans9pFont, 6), RGB565_DARKGREEN, 1);
                tft_textbox_clear(pTextbox);
                tft_printf(&xSans18pFont, 10, 10, RGB565_DARKGREY, RGB565_WHITE, "Display is the wey");
                tft_button_draw(pButtons[0], "img", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[1], "grph", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[2], "trm", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[3], "txt", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[4], "blnk", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
            }
            DBGPRINTLN_CTX("Button 3 Pressed!");
            break;

        case 4: // blank
            if(ubScreenNum != 4)
            {
                ubScreenNum = 4;
                tft_fill_screen(RGB565_BLACK);
                tft_button_draw(pButtons[0], "img", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[1], "grph", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[2], "trm", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[3], "txt", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
                tft_button_draw(pButtons[4], "blnk", &xSans9pFont, RGB565_CYAN, RGB565_BLACK);
            }
            DBGPRINTLN_CTX("Button 4 Pressed!");
            break;

        default:
            DBGPRINTLN_CTX("Sum Ting Wong");
            break;
    }
}

int init()
{
    rmu_init(RMU_CTRL_PINRMODE_FULL, RMU_CTRL_SYSRMODE_EXTENDED, RMU_CTRL_LOCKUPRMODE_EXTENDED, RMU_CTRL_WDOGRMODE_EXTENDED); // Init RMU and set reset modes

    emu_init(1); // Init EMU, ignore DCDC and switch digital power immediatly to DVDD

    //cmu_hfxo_startup_calib(0x200, 0x145); // Config HFXO Startup for 1280 uA, 36 pF (18 pF + 2 pF CLOAD)
    //cmu_hfxo_steady_calib(0x009, 0x145); // Config HFXO Steady for 12 uA, 36 pF (18 pF + 2 pF CLOAD)

    cmu_lfxo_calib(0x08); // Config LFXO for 10 pF (5 pF + 1 pF CLOAD)

    cmu_init(); // Init Clocks

    cmu_ushfrco_calib(1, USHFRCO_CALIB_50M, 50000000); // Enable and calibrate USHFRCO for 50 MHz
    cmu_auxhfrco_calib(1, AUXHFRCO_CALIB_32M, 32000000); // Enable and calibrate AUXHFRCO for 32 MHz

    cmu_update_clocks(); // Update Clocks

    dbg_init(); // Init Debug module
    dbg_swo_config(BIT(0) | BIT(1), 6000000); // Init SWO channels 0 and 1 at 6 MHz

    msc_init(); // Init Flash, RAM and caches

    systick_init(); // Init system tick

    gpio_init(); // Init GPIOs
    ldma_init(); // Init LDMA
    rtcc_init(); // Init RTCC
    trng_init(); // Init TRNG
    crypto_init(); // Init Crypto engine
    crc_init(); // Init CRC calculation unit
    adc_init(); // Init ADCs

    float fAVDDHighThresh, fAVDDLowThresh;
    float fDVDDHighThresh, fDVDDLowThresh;
    float fIOVDDHighThresh, fIOVDDLowThresh;

    emu_vmon_avdd_config(1, 3.1f, &fAVDDLowThresh, 3.22f, &fAVDDHighThresh); // Enable AVDD monitor
    emu_vmon_dvdd_config(1, 2.5f, &fDVDDLowThresh); // Enable DVDD monitor
    emu_vmon_iovdd_config(1, 3.15f, &fIOVDDLowThresh); // Enable IOVDD monitor

    fDVDDHighThresh = fDVDDLowThresh + 0.026f; // Hysteresis from datasheet
    fIOVDDHighThresh = fIOVDDLowThresh + 0.026f; // Hysteresis from datasheet

    usart2_init(4500000, 0, USART_SPI_MSB_FIRST, 1, 1, 1); // Init USART2 at 4.5 MHz (TFT)

    i2c0_init(I2C_FAST, 0, 0); // Init I2C0 at 400 kHz (System)
    i2c2_init(I2C_FAST, 2, 2); // Init I2C2 at 400 kHz (Sensors)

    char szDeviceName[32];

    get_device_name(szDeviceName, 32);

    DBGPRINTLN_CTX("IcyRadio SMC v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    DBGPRINTLN_CTX("Device: %s", szDeviceName);
    DBGPRINTLN_CTX("Device Revision: 0x%04X", get_device_revision());
    DBGPRINTLN_CTX("Calibration temperature: %hhu C", (DEVINFO->CAL & _DEVINFO_CAL_TEMP_MASK) >> _DEVINFO_CAL_TEMP_SHIFT);
    DBGPRINTLN_CTX("Flash Size: %hu KiB", FLASH_SIZE >> 10);
    DBGPRINTLN_CTX("RAM Size: %hu KiB", SRAM_SIZE >> 10);
    DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);
    DBGPRINTLN_CTX("Unique ID: %08X-%08X", DEVINFO->UNIQUEH, DEVINFO->UNIQUEL);

    DBGPRINTLN_CTX("RMU - Reset cause: %hhu", rmu_get_reset_reason());
    DBGPRINTLN_CTX("RMU - Reset state: %hhu", rmu_get_reset_state());

    rmu_clear_reset_reason();

    DBGPRINTLN_CTX("CMU - HFXO Clock: %.1f MHz", (float)HFXO_VALUE / 1000000);
    DBGPRINTLN_CTX("CMU - HFRCO Clock: %.1f MHz", (float)HFRCO_VALUE / 1000000);
    DBGPRINTLN_CTX("CMU - USHFRCO Clock: %.1f MHz", (float)USHFRCO_VALUE / 1000000);
    DBGPRINTLN_CTX("CMU - AUXHFRCO Clock: %.1f MHz", (float)AUXHFRCO_VALUE / 1000000);
    DBGPRINTLN_CTX("CMU - LFXO Clock: %.3f kHz", (float)LFXO_VALUE / 1000);
    DBGPRINTLN_CTX("CMU - LFRCO Clock: %.3f kHz", (float)LFRCO_VALUE / 1000);
    DBGPRINTLN_CTX("CMU - ULFRCO Clock: %.3f kHz", (float)ULFRCO_VALUE / 1000);
    DBGPRINTLN_CTX("CMU - HFSRC Clock: %.1f MHz", (float)HFSRC_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HF Clock: %.1f MHz", (float)HF_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFBUS Clock: %.1f MHz", (float)HFBUS_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFCORE Clock: %.1f MHz", (float)HFCORE_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFEXP Clock: %.1f MHz", (float)HFEXP_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPER Clock: %.1f MHz", (float)HFPER_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPERB Clock: %.1f MHz", (float)HFPERB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPERC Clock: %.1f MHz", (float)HFPERC_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFLE Clock: %.1f MHz", (float)HFLE_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - QSPI Clock: %.1f MHz", (float)QSPI_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - SDIO Clock: %.1f MHz", (float)SDIO_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - USB Clock: %.1f MHz", (float)USB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - ADC0 Clock: %.1f MHz", (float)ADC0_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - ADC1 Clock: %.1f MHz", (float)ADC1_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - DBG Clock: %.1f MHz", (float)DBG_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - AUX Clock: %.1f MHz", (float)AUX_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - LFA Clock: %.3f kHz", (float)LFA_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LESENSE Clock: %.3f kHz", (float)LESENSE_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - RTC Clock: %.3f kHz", (float)RTC_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LCD Clock: %.3f kHz", (float)LCD_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LETIMER0 Clock: %.3f kHz", (float)LETIMER0_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LETIMER1 Clock: %.3f kHz", (float)LETIMER1_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LFB Clock: %.3f kHz", (float)LFB_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LEUART0 Clock: %.3f kHz", (float)LEUART0_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LEUART1 Clock: %.3f kHz", (float)LEUART1_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - SYSTICK Clock: %.3f kHz", (float)SYSTICK_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - CSEN Clock: %.3f kHz", (float)CSEN_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LFC Clock: %.3f kHz", (float)LFC_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LFE Clock: %.3f kHz", (float)LFE_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - RTCC Clock: %.3f kHz", (float)RTCC_CLOCK_FREQ / 1000);

    DBGPRINTLN_CTX("EMU - AVDD Fall Threshold: %.2f mV!", fAVDDLowThresh * 1000);
    DBGPRINTLN_CTX("EMU - AVDD Rise Threshold: %.2f mV!", fAVDDHighThresh * 1000);
    DBGPRINTLN_CTX("EMU - AVDD Voltage: %.2f mV", adc_get_avdd());
    DBGPRINTLN_CTX("EMU - AVDD Status: %s", g_ubAVDDLow ? "LOW" : "OK");
    DBGPRINTLN_CTX("EMU - DVDD Fall Threshold: %.2f mV!", fDVDDLowThresh * 1000);
    DBGPRINTLN_CTX("EMU - DVDD Rise Threshold: %.2f mV!", fDVDDHighThresh * 1000);
    DBGPRINTLN_CTX("EMU - DVDD Voltage: %.2f mV", adc_get_dvdd());
    DBGPRINTLN_CTX("EMU - DVDD Status: %s", g_ubDVDDLow ? "LOW" : "OK");
    DBGPRINTLN_CTX("EMU - IOVDD Fall Threshold: %.2f mV!", fIOVDDLowThresh * 1000);
    DBGPRINTLN_CTX("EMU - IOVDD Rise Threshold: %.2f mV!", fIOVDDHighThresh * 1000);
    DBGPRINTLN_CTX("EMU - IOVDD Voltage: %.2f mV", adc_get_iovdd());
    DBGPRINTLN_CTX("EMU - IOVDD Status: %s", g_ubIOVDDLow ? "LOW" : "OK");
    DBGPRINTLN_CTX("EMU - Core Voltage: %.2f mV", adc_get_corevdd());

    delay_ms(100);

    DBGPRINTLN_CTX("Scanning I2C bus 0...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(i2c0_write(a, NULL, 0, I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    DBGPRINTLN_CTX("Scanning I2C bus 1...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(i2c1_write(a, NULL, 0, I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    if(ili9488_init())
        DBGPRINTLN_CTX("ILI9488 init OK!");
    else
        DBGPRINTLN_CTX("ILI9488 init NOK!");

    if(ft6x36_init())
        DBGPRINTLN_CTX("FT6236 init OK!");
    else
        DBGPRINTLN_CTX("FT6236 init NOK!");

    return 0;
}
int main()
{
    // CLK OUT to check if the clock was properly calibrated
    //CMU->ROUTELOC0 = CMU_ROUTELOC0_CLKOUT1LOC_LOC1;
    //CMU->ROUTEPEN |= CMU_ROUTEPEN_CLKOUT1PEN;
    //CMU->CTRL |= CMU_CTRL_CLKOUTSEL1_HFXO;

    // TFT Controller info
    DBGPRINTLN_CTX("ILI9488 ID: 0x%06X", ili9488_read_id());

    // TFT Touch info
    DBGPRINTLN_CTX("FT6236 Vendor ID: 0x%02X", ft6x36_get_vendor_id());
    DBGPRINTLN_CTX("FT6236 Chip ID: 0x%02X", ft6x36_get_chip_id());
    DBGPRINTLN_CTX("FT6236 Firmware version: 0x%02X", ft6x36_get_firmware_version());

    // TFT High speed interface
    usart2_init(36000000, 0, USART_SPI_MSB_FIRST, 1, 1, 1); // Re-init USART2 at 36 MHz (TFT)

    // TFT Init
    tft_init();
    tft_set_button_callback(touch_button_callback);
    tft_bl_init(2000); // Init backlight PWM at 2 kHz
    tft_bl_set(0.f); // Set backlight to 0%
    tft_display_on(); // Turn display on
    tft_set_rotation(ILI9488_ROTATION_VERTICAL_FLIP); // Set rotation (vertical, ribbon at the bottom)
    tft_fill_screen(RGB565_BLACK); // Fill display

    pGraph = tft_graph_create(60, 30, 220, 360, 0, 30, 5, 20, 35, 1, 1, "%.0f", "%.0f", "Temperature", "t", "C", &xSans9pFont, RGB565_WHITE, RGB565_BLACK, RGB565_CYAN, RGB565_BLACK, RGB565_DARKGREY);
    if(!pGraph)
    {
        DBGPRINTLN_CTX("Could not allocate graph");
        while(1);
    }

    pTerminal = tft_terminal_create(10, 10, 18, 300, &xSans9pFont, RGB565_GREEN, RGB565_BLACK);
    if(!pTerminal)
    {
        DBGPRINTLN_CTX("Could not allocate terminal");
        while(1);
    }

    pTextbox = tft_textbox_create(15, 70, 6, 295, 0, 0, &xSans9pFont, RGB565_BLUE, RGB565_WHITE);
    if(!pTextbox)
    {
        DBGPRINTLN_CTX("Could not allocate textbox");
        while(1);
    }

    pButtons[0] = tft_button_create(0, 10, 420, 50, 50);
    if(!pButtons[0])
    {
        DBGPRINTLN_CTX("Could not allocate button");
        while(1);
    }

    pButtons[1] = tft_button_create(1, 70, 420, 50, 50);
    if(!pButtons[1])
    {
        DBGPRINTLN_CTX("Could not allocate button");
        while(1);
    }

    pButtons[2] = tft_button_create(2, 130, 420, 50, 50);
    if(!pButtons[2])
    {
        DBGPRINTLN_CTX("Could not allocate button");
        while(1);
    }

    pButtons[3] = tft_button_create(3, 190, 420, 50, 50);
    if(!pButtons[3])
    {
        DBGPRINTLN_CTX("Could not allocate button");
        while(1);
    }

    pButtons[4] = tft_button_create(4, 250, 420, 50, 50);
    if(!pButtons[4])
    {
        DBGPRINTLN_CTX("Could not allocate button");
        while(1);
    }

    touch_button_callback(4);

    tft_bl_set(0.75f); // Set backlight to 75%

    while(1)
    {
        ft6x36_tick();

        static uint64_t ullLastTftRoutine = 0;

        if(g_ullSystemTick > (ullLastTftRoutine + 1000))
        {
            static uint8_t ubCount = 0;

            switch(ubScreenNum)
            {
                case 1: // graph

                    if(ubCount == 31)
                    {
                        tft_graph_clear(pGraph);
                        tft_graph_draw_frame(pGraph);
                        ubCount = 0;
                    }

                    float fCount = ubCount;
                    float fTemp = 0;

                    tft_graph_draw_data(pGraph, &fCount, &fTemp, 1);

                    ubCount++;

                    break;

                case 2: // terminal
                    if(pTerminal->ubUpdatePending)
                        tft_terminal_update(pTerminal);
                    break;

                case 3: // text box
                    tft_textbox_goto(pTextbox, 0, 0, 1);
                    tft_textbox_set_color(pTextbox, RGB565_BLUE, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "ADC Temp: ");
                    tft_textbox_set_color(pTextbox, RGB565_RED, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "%.2f\n\r", adc_get_temperature());
                    tft_textbox_set_color(pTextbox, RGB565_BLUE, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "EMU Temp: ");
                    tft_textbox_set_color(pTextbox, RGB565_RED, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "%.2f\n\r", emu_get_temperature());
                    tft_textbox_set_color(pTextbox, RGB565_BLUE, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "RTCC Time: ");
                    tft_textbox_set_color(pTextbox, RGB565_RED, RGB565_WHITE);
                    tft_textbox_printf(pTextbox, "%lu\n\r", rtcc_get_time());
                    break;

                default:
                    break;
            }

            ullLastTftRoutine = g_ullSystemTick;
        }

        static uint64_t ullLastSwoPrint = 0;

        if(g_ullSystemTick > (ullLastSwoPrint + 10000))
        {

            DBGPRINTLN_CTX("ADC Temp: %.2f", adc_get_temperature());
            DBGPRINTLN_CTX("EMU Temp: %.2f", emu_get_temperature());
            DBGPRINTLN_CTX("RTCC Time: %lu", rtcc_get_time());

            tft_terminal_printf(pTerminal, 0, "Free RAM: %lu KiB\n", get_free_ram() >> 10);

            ullLastSwoPrint = g_ullSystemTick;
        }
    }

    return 0;
}