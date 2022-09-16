#include <em_device.h>
#include <stdlib.h>
#include <math.h>
#include "arm_math.h"
#include "arm_const_structs.h"
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
#include "dsp.h"
#include "fpga.h"
#include "si5351.h"
#include "ft6x36.h"
#include "ili9488.h"
#include "r820t2.h"
#include "ad9117.h"
#include "adf4351.h"
#include "cp2615.h"
#include "tscs25xx.h"
#include "biquad.h"
#include "tft.h"
#include "images.h"
#include "fonts.h"
#include "i2s_bridge_config.h"
#include "v1.icyradio.h"

// Structs

// Helper macros
#define RX_IF_TO_RF(i) (R820T2_FREQ - ((i) - R820T2_IF_FREQ))
#define RX_RF_TO_IF(r) ((R820T2_FREQ - (r)) + R820T2_IF_FREQ)

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_core_name(char *pszDeviceCoreName, uint32_t ulDeviceCoreNameSize);
static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint16_t get_device_revision();

static void tft_button_touch_callback(uint32_t ulButtonID);

static void rx_get_psd(float *pfPower);
static void rx_draw_psd(tft_graph_t *pGraph, float *pfPower);
static float rx_get_max_power(float *pfPower, uint32_t *pulFrequency);
static float rx_get_power(float *pfPower, uint32_t ulFrequency);

static void init_user_interface();
static void init_system_clocks();
static void init_audio_chain();
static void init_baseband_chain();
static void init_rx_chain();
static void init_tx_chain();

// Variables
static uint32_t ulRXHardTunedFrequency = 524800000;
static uint32_t ulRXSoftTunedFrequency = 525000000;
static tft_graph_t *pRXIFPSDGraph = NULL;
static tft_textbox_t *pRXTunedFreqTextbox = NULL;
static tft_button_t *pRXTunedFreqButtons[2] = {NULL, NULL};

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
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        extern void *_sbrk(int);

        void *pCurrentHeap = _sbrk(1);

        if(!pCurrentHeap)
            return 0;

        uint32_t ulFreeRAM = (uint32_t)__get_MSP() - (uint32_t)pCurrentHeap;

        _sbrk(-1);

        return ulFreeRAM;
    }
}

void get_device_core_name(char *pszDeviceCoreName, uint32_t ulDeviceCoreNameSize)
{
    uint8_t ubImplementer = (SCB->CPUID & SCB_CPUID_IMPLEMENTER_Msk) >> SCB_CPUID_IMPLEMENTER_Pos;
    const char* szImplementer = "?";

    switch(ubImplementer)
    {
        case 0x41: szImplementer = "ARM"; break;
    }

    uint16_t usPartNo = (SCB->CPUID & SCB_CPUID_PARTNO_Msk) >> SCB_CPUID_PARTNO_Pos;
    const char* szPartNo = "?";

    switch(usPartNo)
    {
        case 0xC20: szPartNo = "Cortex-M0"; break;
        case 0xC60: szPartNo = "Cortex-M0+"; break;
        case 0xC21: szPartNo = "Cortex-M1"; break;
        case 0xD20: szPartNo = "Cortex-M23"; break;
        case 0xC23: szPartNo = "Cortex-M3"; break;
        case 0xD21: szPartNo = "Cortex-M33"; break;
        case 0xC24: szPartNo = "Cortex-M4"; break;
        case 0xC27: szPartNo = "Cortex-M7"; break;
    }

    uint8_t ubVariant = (SCB->CPUID & SCB_CPUID_VARIANT_Msk) >> SCB_CPUID_VARIANT_Pos;
    uint8_t ubRevision = (SCB->CPUID & SCB_CPUID_REVISION_Msk) >> SCB_CPUID_REVISION_Pos;

    snprintf(pszDeviceCoreName, ulDeviceCoreNameSize, "%s %s r%hhup%hhu", szImplementer, szPartNo, ubVariant, ubRevision);
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

void tft_button_touch_callback(uint32_t ulButtonID)
{
    switch(ulButtonID)
    {
        case 0:
        {
            ulRXSoftTunedFrequency -= 100000;

            if(ulRXSoftTunedFrequency < 87500000)
                ulRXSoftTunedFrequency = 87500000;
        }
        break;
        case 1:
        {
            ulRXSoftTunedFrequency += 100000;

            if(ulRXSoftTunedFrequency > 108000000)
                ulRXSoftTunedFrequency = 108000000;
        }
        break;
    }

    fpga_qddc_set_lo_freq(RX_RF_TO_IF(ulRXSoftTunedFrequency));
    DBGPRINTLN_CTX("FPGA QDDC tuner LO frequency: %.3f MHz", (float)fpga_qddc_get_lo_freq() / 1000000);

    tft_textbox_clear(pRXTunedFreqTextbox);
    tft_textbox_printf(pRXTunedFreqTextbox, "Hard: %.2f MHz\n\rSoft: %.2f MHz", (float)ulRXHardTunedFrequency / 1000000, (float)ulRXSoftTunedFrequency / 1000000);
}

void rx_get_psd(float *pfPower)
{
    if(!pfPower)
        return;

    // Zero output buffer
    memset(pfPower, 0, 2048 * sizeof(float));

    // Allocate buffer to store time-domain data
    int16_t *psTDData = (int16_t *)malloc(4096 * sizeof(int16_t));

    if(!psTDData)
        return;

    memset(psTDData, 0, 4096 * sizeof(int16_t));

    // Get samples from ADC
    fpga_reset_module(FPGA_REG_RST_CNTRL_ADC_DPRAM_SOFT_RST, 0); // Enable ADC DPRAM

    fpga_adc_dpram_sample(psTDData, 4096); // Sample

    fpga_reset_module(FPGA_REG_RST_CNTRL_ADC_DPRAM_SOFT_RST, 1); // Disable ADC DPRAM

    // FFT Window
    static uint8_t ubWindowInit = 0;
    static int16_t sWindowBuffer[4096];

    if(!ubWindowInit)
    {
        // Generate window LUT
        for(uint16_t i = 0; i < 4096; i++)
        {
            // Hanning
            //sWindowBuffer[i] = (0.5f - 0.5f * cosf(2.f * M_PI * (float)i / 4096)) * INT16_MAX;
            // Hamming
            //sWindowBuffer[i] = (0.53836f - 0.46164f * cosf(2.f * M_PI * (float)i / 4096)) * INT16_MAX;
            // Blackman-Harris
            sWindowBuffer[i] = (0.35875f - 0.48829f * cosf(2.f * M_PI * (float)i / 4096) + 0.14128f * cosf(4.f * M_PI * (float)i / 4096) - 0.01168f * cosf(6.f * M_PI * (float)i / 4096)) * INT16_MAX;
        }

        ubWindowInit = 1;
    }

    // Allocate buffer to store FFT data
    int16_t *psFFTBuffer = (int16_t *)malloc(2 * 4096 * sizeof(int16_t));

    if(!psFFTBuffer)
    {
        free(psTDData);

        return;
    }

    memset(psFFTBuffer, 0, 2 * 4096 * sizeof(int16_t));

    // Fill FFT buffer and apply the window
    for(uint16_t i = 0; i < 4096; i++)
    {
        psFFTBuffer[i * 2 + 0] = psTDData[i];   // Real part
        psFFTBuffer[i * 2 + 1] = 0;             // Imaginary part

        psFFTBuffer[i * 2 + 0] = ((int64_t)psFFTBuffer[i * 2 + 0] * sWindowBuffer[i]) / INT16_MAX; // Apply FFT window

        /*
        char obuf[64];
        uint32_t osz = snprintf(obuf, 64, "%.6f\r\n", (float)psFFTBuffer[i * 2 + 0] / INT16_MAX);

        for(uint32_t isz = 0; isz < osz; isz++)
            dbg_swo_send_uint8(obuf[isz], 1);
        */
    }

    free(psTDData);

    arm_cfft_q15(&arm_cfft_sR_q15_len4096, psFFTBuffer, 0, 1); // Compute FFT

    // Compute PSD for half of the spectrum since it's mirrored around DC
    for(uint16_t i = 0; i < 2048; i++)
    {
        float fReal = (float)psFFTBuffer[i * 2 + 0] / INT16_MAX;
        float fImag = (float)psFFTBuffer[i * 2 + 1] / INT16_MAX;

        pfPower[i] = 10.f * log10(fReal * fReal + fImag * fImag);
    }

    free(psFFTBuffer);
}
void rx_draw_psd(tft_graph_t *pGraph, float *pfPower)
{
    if(!pGraph)
        return;

    if(!pfPower)
        return;

    float *pfFrequency = (float *)malloc(2048 * sizeof(float));

    if(!pfFrequency)
        return;

    memset(pfFrequency, 0.f, 2048 * sizeof(float));

    float fBinStep = (float)FPGA_ADC_CLK / 4096 / 1000000;

    for(uint16_t i = 0; i < 2048; i++)
        pfFrequency[i] = i * fBinStep;

    tft_graph_clear(pGraph);
    tft_graph_draw_frame(pGraph);
    tft_graph_draw_data(pGraph, pfFrequency, pfPower, 2048);

    free(pfFrequency);
}
float rx_get_max_power(float *pfPower, uint32_t *pulFrequency)
{
    if(!pfPower)
        return 0.f;

    float fBinStep = (float)FPGA_ADC_CLK / 4096;

    float fMaxPower = -INFINITY;
    uint32_t ulMaxPowerFrequency = 0.f;

    // Ignore DC bin (index 0)
    for(uint16_t i = 1; i < 2048; i++)
    {
        float fPower = pfPower[i];

        if(fPower > fMaxPower)
        {
            fMaxPower = fPower;
            ulMaxPowerFrequency = i * fBinStep;
        }
    }

    if(pulFrequency)
        *pulFrequency = ulMaxPowerFrequency;

    return fMaxPower;
}
float rx_get_power(float *pfPower, uint32_t ulFrequency)
{
    if(!pfPower)
        return 0.f;

    if(ulFrequency >= FPGA_ADC_CLK / 2) // Nyquist frequency
        return 0.f;

    float fBinStep = (float)FPGA_ADC_CLK / 4096;
    uint16_t usBinIndex = ulFrequency / fBinStep;

    if(usBinIndex >= 2048)
        return 0.f;

    return pfPower[usBinIndex];
}

void init_user_interface()
{
    pRXIFPSDGraph = tft_graph_create(50, 100, 480 - 2 * 50, 320 - 2 * 50 - 50, 0, 12, 1, -70, -20, 10, 1, "%.0f", "%.0f", "IF PSD", "MHz", "dBFS", &xSans9pFont, RGB565_DARKGREY, RGB565_DARKGREY, RGB565_FROM_RGB(0x00, 0x70, 0xD9), RGB565_WHITE, RGB565_BLACK);

    if(!pRXIFPSDGraph)
        return;

    tft_graph_clear(pRXIFPSDGraph);
    tft_graph_draw_frame(pRXIFPSDGraph);

    pRXTunedFreqTextbox = tft_textbox_create(50, 20, 2, 260, 0, 0, &xSans9pFont, RGB565_LIGHTBLUE, RGB565_BLACK);

    if(!pRXTunedFreqTextbox)
        return;

    tft_textbox_clear(pRXTunedFreqTextbox);
    tft_textbox_printf(pRXTunedFreqTextbox, "Hard: %.2f MHz\n\rSoft: %.2f MHz", (float)ulRXHardTunedFrequency / 1000000, (float)ulRXSoftTunedFrequency / 1000000);

    pRXTunedFreqButtons[0] = tft_button_create(0, 320, 20, 50, 50, "<", &xSans18pFont, RGB565_NAVY, RGB565_BLACK);

    if(!pRXTunedFreqButtons[0])
        return;

    tft_button_set_callback(pRXTunedFreqButtons[0], tft_button_touch_callback);
    tft_button_draw(pRXTunedFreqButtons[0]);

    pRXTunedFreqButtons[1] = tft_button_create(1, 380, 20, 50, 50, ">", &xSans18pFont, RGB565_NAVY, RGB565_BLACK);

    if(!pRXTunedFreqButtons[1])
        return;

    tft_button_set_callback(pRXTunedFreqButtons[1], tft_button_touch_callback);
    tft_button_draw(pRXTunedFreqButtons[1]);
}
void init_system_clocks()
{
    si5351_clkin_config(50000000, 2); // fPFD = CLKIN / 2

    DBGPRINTLN_CTX("CLKMNGR - CLKIN Clock: %.3f MHz", (float)SI5351_CLKIN_FREQ / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - CLKIN Divider Clock: %.3f MHz", (float)SI5351_CLKIN_DIV_FREQ / 1000000);

    //// PLLA
    si5351_pll_set_source(SI5351_PLLA, SI5351_PLL_SRC_CLKIN);
    si5351_pll_set_freq(SI5351_PLLA, 800000000);

    DBGPRINTLN_CTX("CLKMNGR - PLLA Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLA] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - PLLA VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLA] / 1000000);

    //// PLLB
    si5351_pll_set_source(SI5351_PLLB, SI5351_PLL_SRC_CLKIN);
    si5351_pll_set_freq(SI5351_PLLB, 840000000);

    DBGPRINTLN_CTX("CLKMNGR - PLLB Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLB] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - PLLB VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLB] / 1000000);

    //// FPGA Clock #1
    si5351_multisynth_set_source(SI5351_FPGA_CLK1, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK1, 100000000);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK1, 45.f);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK1] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK1] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK1, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK1));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK1, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK1, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK1, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK1, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK1, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK1] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK1); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK1); // Software enable the clock output

    //// FPGA Clock #2
    si5351_multisynth_set_source(SI5351_FPGA_CLK2, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK2, 0);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK2, 0.f);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK2] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK2] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK2, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK2));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK2, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK2, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK2, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK2, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK2, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK2] / 1000000);

    si5351_clock_power_down(SI5351_FPGA_CLK2); // Power the output stage down
    si5351_clock_disable(SI5351_FPGA_CLK2); // Software disable the clock output

    //// FPGA Clock #3
    si5351_multisynth_set_source(SI5351_FPGA_CLK3, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK3, 12288000);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK3, 90.f);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK3] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK3] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK3, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK3));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK3, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK3, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK3, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK3, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK3, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK3] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK3); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK3); // Software enable the clock output

    //// FPGA Clock #4
    si5351_multisynth_set_source(SI5351_FPGA_CLK4, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK4, 12288000);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK4, 180.f);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK4, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK4] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK4, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK4] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK4, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK4));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK4, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK4, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK4, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK4, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK4, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK4, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK4] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK4); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK4); // Software enable the clock output

    //// SMC Main Clock
    si5351_multisynth_set_source(SI5351_SMC_MAIN_CLK, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_SMC_MAIN_CLK, 50000000);
    si5351_multisynth_set_phase_offset(SI5351_SMC_MAIN_CLK, 0.f);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_MS_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Phase offset: %.1f deg", SI5351_SMC_MAIN_CLK, si5351_multisynth_get_phase_offset(SI5351_SMC_MAIN_CLK));

    si5351_clock_set_disable_state(SI5351_SMC_MAIN_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_SMC_MAIN_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_SMC_MAIN_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_SMC_MAIN_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_SMC_MAIN_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_CLK_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);

    si5351_clock_power_up(SI5351_SMC_MAIN_CLK); // Power the output stage up
    si5351_clock_enable(SI5351_SMC_MAIN_CLK); // Software enable the clock output

    //// DSP Main Clock
    si5351_multisynth_set_source(SI5351_DSP_MAIN_CLK, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_DSP_MAIN_CLK, 12000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.3f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.3f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_MS_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);

    si5351_clock_set_disable_state(SI5351_DSP_MAIN_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_DSP_MAIN_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_DSP_MAIN_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_DSP_MAIN_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_DSP_MAIN_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.3f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_CLK_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);

    si5351_clock_power_up(SI5351_DSP_MAIN_CLK); // Power the output stage up
    si5351_clock_enable(SI5351_DSP_MAIN_CLK); // Software enable the clock output

    //// Global output enable
    CLK_MNGR_OUT_EN();
}
void init_audio_chain()
{
    fpga_reset_module(FPGA_REG_RST_CNTRL_AUDIO_I2S_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA audio I2S enabled!");

    fpga_i2s_mux_set_codec_master_clock(FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_MCLK_SEL_FPGA);
    fpga_i2s_mux_set_codec_data_clock(FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_DCLK_SEL_FPGA);
    fpga_i2s_mux_set_codec_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_DSP);
    DBGPRINTLN_CTX("FPGA codec I2S mux configured!");

    fpga_i2s_mux_set_dsp_data_clock(FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_DCLK_SEL_FPGA);
    fpga_i2s_mux_set_dsp_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_SDIN_SEL_CODEC);
    DBGPRINTLN_CTX("FPGA DSP I2S mux configured!");

    fpga_i2s_mux_set_bridge_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_CODEC);
    DBGPRINTLN_CTX("FPGA bridge I2S mux configured!");

    fpga_i2s_mux_set_fpga_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_FPGA_SDIN_SEL_DSP);
    DBGPRINTLN_CTX("FPGA I2S mux configured!");

    delay_ms(100);

    if(tscs25xx_timebase_config(FPGA_AUDIO_I2S_MCLK))
        DBGPRINTLN_CTX("CODEC timebase configured for %.3f MHz!", (float)FPGA_AUDIO_I2S_MCLK / 1000000.f);
    else
        DBGPRINTLN_CTX("CODEC failed to configure timebase!");

    if(tscs25xx_pll_config(1, FPGA_AUDIO_I2S_MCLK))
        DBGPRINTLN_CTX("CODEC PLL #1 configured for %.3f MHz!", (float)FPGA_AUDIO_I2S_MCLK / 1000000.f);
    else
        DBGPRINTLN_CTX("CODEC failed to configure PLL #1!");

    if(tscs25xx_pll_config(2, FPGA_AUDIO_I2S_MCLK))
        DBGPRINTLN_CTX("CODEC PLL #2 configured for %.3f MHz!", (float)FPGA_AUDIO_I2S_MCLK / 1000000.f);
    else
        DBGPRINTLN_CTX("CODEC failed to configure PLL #2!");

    uint32_t ulAudioSampleRate = FPGA_AUDIO_I2S_CLK / 32 / 16 / 2; // FPGA_AUDIO_I2S_CLK / 32 = AUDIO_I2S_BCLK, AUDIO_I2S_BCLK / 16 bits per word / 2 channels (stereo)

    if(tscs25xx_sample_rate_config(ulAudioSampleRate))
        DBGPRINTLN_CTX("CODEC sample rate: %.3f kHz", (float)ulAudioSampleRate / 1000.f);
    else
        DBGPRINTLN_CTX("CODEC failed to configure sample rate!");

    const float fEQPrescaler[2] = {
        1.5f,
        1.f
    };
    const uint32_t ulEQFilterCutoffFreq[2][6] = {
        {
            6000,
            200,
            70,
            0,
            0,
            0
        },
        {
            0,
            0,
            0,
            0,
            0,
            0
        }
    };
    const uint8_t ubEQFilterType[2][6] = {
        {
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_HIGHSHELF,
            BIQUAD_TYPE_PEAK,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS
        },
        {
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS,
            BIQUAD_TYPE_LOWPASS
        }
    };
    const float fEQFilterQFactor[2][6] = {
        {
            0.707106781186f,
            0.707106781186f,
            2.f,
            0.707106781186f,
            0.707106781186f,
            0.707106781186f
        },
        {
            0.707106781186f,
            0.707106781186f,
            0.707106781186f,
            0.707106781186f,
            0.707106781186f,
            0.707106781186f
        }
    };
    const float fEQFilterGain[2][6] = {
        {
            1.f,
            -9.f,
            6.f,
            1.f,
            1.f,
            1.f
        },
        {
            1.f,
            1.f,
            1.f,
            1.f,
            1.f,
            1.f
        }
    };

    for(uint8_t i = 0; i < 2; i++)
    {
        tscs25xx_eq_config_prescaler(i, TSCS25XX_EQ_CHANNEL_LEFT, fEQPrescaler[i]);
        tscs25xx_eq_config_prescaler(i, TSCS25XX_EQ_CHANNEL_RIGHT, fEQPrescaler[i]);

        DBGPRINTLN_CTX("CODEC EQ%hhu prescaler: %.3f", i + 1, fEQPrescaler[i]);

        for(uint8_t j = 0; j < 6; j++)
        {
            if(!ulEQFilterCutoffFreq[i][j])
                continue;

            biquad_t *pBiquadFilter = biquad_init(ubEQFilterType[i][j], ulAudioSampleRate, ulEQFilterCutoffFreq[i][j]);

            if(!pBiquadFilter)
            {
                DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu failed to initialize!", i + 1, j);

                continue;
            }

            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu type: %hhu", i + 1, j, ubEQFilterType[i][j]);
            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu cutoff frequency: %lu Hz", i + 1, j, ulEQFilterCutoffFreq[i][j]);
            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu gain: %.2f dB", i + 1, j, fEQFilterGain[i][j]);
            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu Q factor: %.5f", i + 1, j, fEQFilterQFactor[i][j]);

            biquad_calc_coefs(pBiquadFilter, fEQFilterQFactor[i][j], fEQFilterGain[i][j]);

            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu calculated! (b0: %.8f, b1: %.8f, b2: %.8f, a1: %.8f, a2: %.8f)", i + 1, j, pBiquadFilter->fB0, pBiquadFilter->fB1, pBiquadFilter->fB2, pBiquadFilter->fA1, pBiquadFilter->fA2);

            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu gain at cutoff: %.2f dB", i + 1, j, 20 * log10f(biquad_get_gain(pBiquadFilter, ulEQFilterCutoffFreq[i][j])));

            tscs25xx_eq_config_band(i, TSCS25XX_EQ_CHANNEL_LEFT, j, pBiquadFilter);
            tscs25xx_eq_config_band(i, TSCS25XX_EQ_CHANNEL_RIGHT, j, pBiquadFilter);

            DBGPRINTLN_CTX("CODEC EQ%hhu band %hhu configured!", i + 1, j);

            biquad_delete(pBiquadFilter);
        }
    }

    tscs25xx_eq_config(TSCS25XX_EQ1, 1, TSCS25XX_EQ_BAND_PRESC_B0_2); // Enable EQ 1 prescaler and Bands 0 to 2
    DBGPRINTLN_CTX("CODEC EQ1 configured!");

    tscs25xx_eq_config(TSCS25XX_EQ2, 0, TSCS25XX_EQ_BAND_PRESC); // Disable EQ 2
    DBGPRINTLN_CTX("CODEC EQ2 configured!");

    tscs25xx_effects_config(0, 0, 1, 0, 1); // 3D OFF, Treble OFF, Treble non-linear ON, Bass OFF, Bass non-linear ON
    DBGPRINTLN_CTX("CODEC effects configured!");

    tscs25xx_adc_config_left_input(TSCS25XX_ADC_INPUT_2, 0, 0, 1); // MIC input, 30 dB gain, not inverted, high-pass enabled
    tscs25xx_adc_config_right_input(TSCS25XX_ADC_INPUT_2, 0, 0, 1); // MIC input, 30 dB gain, not inverted, high-pass enabled
    tscs25xx_adc_config_mono_mixer(TSCS25XX_MONO_MIX_STEREO);
    DBGPRINTLN_CTX("CODEC ADC input configured!");

    tscs25xx_dac_config_left_output(0); // Not inverted
    tscs25xx_dac_config_right_output(0); // Not inverted
    tscs25xx_dac_config_mono_mixer(TSCS25XX_MONO_MIX_STEREO);
    tscs25xx_dac_config(TSCS25XX_DAC_DITHER_DISABLED, 0); // Dither disabled, Deemphasis filter enabled
    DBGPRINTLN_CTX("CODEC DAC output configured!");

    tscs25xx_zero_det_config(1, 512); // Mute output if 512 consecutive zeros received
    DBGPRINTLN_CTX("CODEC zero detector configured!");

    tscs25xx_noise_gate_config(1, -30.f); // Mute input if signal below -30 dBFS
    DBGPRINTLN_CTX("CODEC noise gate configured!");

    tscs25xx_volume_config(1, 1, 1); // Fade enabled, individual update, update on zero cross only
    DBGPRINTLN_CTX("CODEC volume configured!");

    tscs25xx_hp_set_left_volume(-6.f); // -6.000 dB
    tscs25xx_hp_set_right_volume(-6.f); // -6.000 dB
    DBGPRINTLN_CTX("CODEC left headphone volume: %.3f dB", tscs25xx_hp_get_left_volume());
    DBGPRINTLN_CTX("CODEC right headphone volume: %.3f dB", tscs25xx_hp_get_right_volume());

    tscs25xx_input_set_left_volume(9.f); // 9.000 dB
    tscs25xx_input_set_right_volume(9.f); // 9.000 dB
    DBGPRINTLN_CTX("CODEC left input volume: %.3f dB", tscs25xx_input_get_left_volume());
    DBGPRINTLN_CTX("CODEC right input volume: %.3f dB", tscs25xx_input_get_right_volume());

    tscs25xx_dac_set_left_volume(0.f); // 0.000 dB
    tscs25xx_dac_set_right_volume(0.f); // 0.000 dB
    DBGPRINTLN_CTX("CODEC left DAC volume: %.3f dB", tscs25xx_dac_get_left_volume());
    DBGPRINTLN_CTX("CODEC right DAC volume: %.3f dB", tscs25xx_dac_get_right_volume());

    tscs25xx_adc_set_left_volume(0.f); // 0.000 dB
    tscs25xx_adc_set_right_volume(0.f); // 0.000 dB
    DBGPRINTLN_CTX("CODEC left ADC volume: %.3f dB", tscs25xx_adc_get_left_volume());
    DBGPRINTLN_CTX("CODEC right ADC volume: %.3f dB", tscs25xx_adc_get_right_volume());

    delay_ms(50);

    tscs25xx_dac_set_mute(0);
    tscs25xx_adc_set_mute(0);
}
void init_baseband_chain()
{
    fpga_reset_module(FPGA_REG_RST_CNTRL_BB_I2S_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA baseband I2S enabled!");
}
void init_rx_chain()
{
    r820t2_set_lna_gain(22.f, 0); // +2 dB
    DBGPRINTLN_CTX("RX Tuner LNA gain: %.1f dB", r820t2_get_lna_gain());

    r820t2_set_mixer_gain(0.f, 0); // +0 dB
    DBGPRINTLN_CTX("RX Tuner mixer gain: %.1f dB", r820t2_get_mixer_gain());

    r820t2_set_vga_gain(30.f); // +30 dB
    DBGPRINTLN_CTX("RX Tuner VGA gain: %.1f dB", r820t2_get_vga_gain());

    r820t2_set_if_bandwidth(3, 15, 13); // IF passband from ~500 kHz to ~7.5 MHz

    r820t2_set_if_freq(4000000); // 4 MHz IF
    DBGPRINTLN_CTX("RX Tuner IF frequency: %.3f MHz", (float)R820T2_IF_FREQ / 1000000);

    if(r820t2_set_freq(ulRXHardTunedFrequency))
        DBGPRINTLN_CTX("RX Tuner tuned to %.3f MHz", (float)R820T2_FREQ / 1000000);
    else
        DBGPRINTLN_CTX("RX Tuner failed to tune!");

    fpga_reset_module(FPGA_REG_RST_CNTRL_ADC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA ADC enabled!");

    RXADC_POWER_UP();
    RXADC_GAIN_X1();
    RXADC_DITHER_OFF();
    DBGPRINTLN_CTX("RX ADC powered up, gain x1, dither disabled!");

    fpga_qddc_set_lo_freq(RX_RF_TO_IF(ulRXSoftTunedFrequency));
    DBGPRINTLN_CTX("FPGA QDDC tuner LO frequency: %.3f MHz", (float)fpga_qddc_get_lo_freq() / 1000000);

    fpga_qddc_set_lo_noise_shaping(1);
    fpga_qddc_set_iq_swap(0); // Tuner uses high-side LO injection, so invert the spectrum in the QDDC

    fpga_reset_module(FPGA_REG_RST_CNTRL_QDDC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA QDDC enabled!");
}
void init_tx_chain()
{
    fpga_qduc_set_lo_freq(50000);
    DBGPRINTLN_CTX("FPGA QDUC tuner LO frequency: %.3f MHz", (float)fpga_qduc_get_lo_freq() / 1000000);

    fpga_qduc_set_lo_noise_shaping(1);
    fpga_qduc_set_iq_swap(0);
    fpga_qduc_set_tuner_bypass(1);

    fpga_reset_module(FPGA_REG_RST_CNTRL_QDUC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA QDUC enabled!");

    fpga_reset_module(FPGA_REG_RST_CNTRL_DAC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA DAC enabled!");

    ad9117_calibrate(FPGA_DAC_CLK);
    DBGPRINTLN_CTX("TX DAC calibrated!");

    ad9117_i_offset_config(1, AD9117_REG_AUX_CTLI_RANGE_1V0 | AD9117_REG_AUX_CTLI_TOP_1V0);
    ad9117_i_offset_set_value(522);
    DBGPRINTLN_CTX("TX DAC I offset: %hu", ad9117_i_offset_get_value());

    ad9117_q_offset_config(1, AD9117_REG_AUX_CTLQ_RANGE_1V0 | AD9117_REG_AUX_CTLQ_TOP_1V0);
    ad9117_q_offset_set_value(190);
    DBGPRINTLN_CTX("TX DAC Q offset: %hu", ad9117_q_offset_get_value());

    ad9117_i_gain_set_value(0);
    DBGPRINTLN_CTX("TX DAC I gain: %hu", ad9117_i_gain_get_value());

    ad9117_q_gain_set_value(0);
    DBGPRINTLN_CTX("TX DAC Q gain: %hu", ad9117_q_gain_get_value());

    adf4351_pfd_config(32000000, 1, 0, 25, 0);
    DBGPRINTLN_CTX("TX PLL Reference frequency: %.3f MHz", (float)ADF4351_REF_FREQ / 1000000);
    DBGPRINTLN_CTX("TX PLL PFD frequency: %.3f MHz", (float)ADF4351_PFD_FREQ / 1000000);

    adf4351_charge_pump_set_current(2.f); // 2 mA
    DBGPRINTLN_CTX("TX PLL CP current: %.2f mA", adf4351_charge_pump_get_current());

    adf4351_main_out_config(1, -4); // -4 dBm
    DBGPRINTLN_CTX("TX PLL output power: %i dBm", adf4351_main_out_get_power());

    adf4351_set_frequency(2 * 525000000); // Mixer uses divide-by-2 quadrature generation
    DBGPRINTLN_CTX("TX PLL output frequency: %.3f MHz", (float)ADF4351_FREQ / 1000000);

    TXPLL_UNMUTE();

    TXMIXER_ENABLE();

    delay_ms(100);

    TXPA_BIAS_ENABLE();
}

int init()
{
    rmu_init(RMU_CTRL_PINRMODE_FULL, RMU_CTRL_SYSRMODE_EXTENDED, RMU_CTRL_LOCKUPRMODE_EXTENDED, RMU_CTRL_WDOGRMODE_EXTENDED); // Init RMU and set reset modes

    emu_init(1); // Init EMU, ignore DCDC and switch digital power immediatly to DVDD

    cmu_init(); // Init Clocks

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
    emu_vmon_dvdd_config(1, 3.1f, &fDVDDLowThresh); // Enable DVDD monitor
    emu_vmon_iovdd_config(1, 3.15f, &fIOVDDLowThresh); // Enable IOVDD monitor

    fDVDDHighThresh = fDVDDLowThresh + 0.026f; // Hysteresis from datasheet
    fIOVDDHighThresh = fIOVDDLowThresh + 0.026f; // Hysteresis from datasheet

    usart1_init(12000000, 0, USART_SPI_MSB_FIRST, 4, 4, 4); // Init USART1 at 12 MHz (FPGA)
    usart2_init(4500000, 0, USART_SPI_MSB_FIRST, 2, 2, 2); // Init USART2 at 4.5 MHz (TFT)
    usart3_init(1000000, 0, USART_SPI_MSB_FIRST, 0, 0, 0); // Init USART3 at 1 MHz (DSP)
    usart4_init(18000000, 0, USART_SPI_MSB_FIRST, -1, 1, 1); // Init USART4 at 18 MHz (TXPLL)
    usart5_init(18000000, 0, USART_SPI_MSB_FIRST, -1, 0, 1); // Init USART5 at 18 MHz (TXDAC)

    i2c0_init(I2C_FAST, 7, 7); // Init I2C0 at 400 kHz (System)
    i2c1_init(I2C_FAST, 0, 0); // Init I2C1 at 400 kHz (RX Tuner)
    i2c2_init(I2C_NORMAL, 2, 2); // Init I2C2 at 100 kHz (Audio)

    char szDeviceCoreName[32];
    char szDeviceName[32];

    get_device_core_name(szDeviceCoreName, 32);
    get_device_name(szDeviceName, 32);

    DBGPRINTLN_CTX("IcyRadio SMC v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    DBGPRINTLN_CTX("Core: %s", szDeviceCoreName);
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

    DBGPRINTLN_CTX("CMU - HFXO Oscillator: %.3f MHz", (float)HFXO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFRCO Oscillator: %.3f MHz", (float)HFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - USHFRCO Oscillator: %.3f MHz", (float)USHFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - AUXHFRCO Oscillator: %.3f MHz", (float)AUXHFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - LFXO Oscillator: %.3f kHz", (float)LFXO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LFRCO Oscillator: %.3f kHz", (float)LFRCO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - ULFRCO Oscillator: %.3f kHz", (float)ULFRCO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - HFSRC Clock: %.3f MHz", (float)HFSRC_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HF Clock: %.3f MHz", (float)HF_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFBUS Clock: %.3f MHz", (float)HFBUS_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFCORE Clock: %.3f MHz", (float)HFCORE_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFEXP Clock: %.3f MHz", (float)HFEXP_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPER Clock: %.3f MHz", (float)HFPER_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPERB Clock: %.3f MHz", (float)HFPERB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFPERC Clock: %.3f MHz", (float)HFPERC_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFLE Clock: %.3f MHz", (float)HFLE_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - QSPI Clock: %.3f MHz", (float)QSPI_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - SDIO Clock: %.3f MHz", (float)SDIO_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - USB Clock: %.3f MHz", (float)USB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - ADC0 Clock: %.3f MHz", (float)ADC0_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - ADC1 Clock: %.3f MHz", (float)ADC1_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - DBG Clock: %.3f MHz", (float)DBG_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - AUX Clock: %.3f MHz", (float)AUX_CLOCK_FREQ / 1000000);
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

    TFT_TOUCH_UNRESET();
    I2S_BRG_CFG_EN();
    I2S_BRG_UNRESET();
    CODEC_UNRESET();

    DBGPRINTLN_CTX("Scanning I2C bus 0...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(i2c0_write(a, NULL, 0, I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    DBGPRINTLN_CTX("Scanning I2C bus 1...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(i2c1_write(a, NULL, 0, I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    DBGPRINTLN_CTX("Scanning I2C bus 2...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(i2c2_write(a, NULL, 0, I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    if(fpga_load_bitstream(v1_icyradio_bin, v1_icyradio_bin_len))
        DBGPRINTLN_CTX("FPGA load OK!");
    else
        DBGPRINTLN_CTX("FPGA load NOK!");

    if(ili9488_init())
        DBGPRINTLN_CTX("ILI9488 init OK!");
    else
        DBGPRINTLN_CTX("ILI9488 init NOK!");

    if(ft6x36_init())
        DBGPRINTLN_CTX("FT6236 init OK!");
    else
        DBGPRINTLN_CTX("FT6236 init NOK!");

    if(si5351_init())
        DBGPRINTLN_CTX("SI5351 init OK!");
    else
        DBGPRINTLN_CTX("SI5351 init NOK!");

    if(r820t2_init())
        DBGPRINTLN_CTX("R820T2 init OK!");
    else
        DBGPRINTLN_CTX("R820T2 init NOK!");

    if(ad9117_init())
        DBGPRINTLN_CTX("AD9117 init OK!");
    else
        DBGPRINTLN_CTX("AD9117 init NOK!");

    if(adf4351_init())
        DBGPRINTLN_CTX("ADF4351 init OK!");
    else
        DBGPRINTLN_CTX("ADF4351 init NOK!");

    if(cp2615_init())
        DBGPRINTLN_CTX("CP2615 init OK!");
    else
        DBGPRINTLN_CTX("CP2615 init NOK!");

    if(tscs25xx_init())
        DBGPRINTLN_CTX("TSCS25xx init OK!");
    else
        DBGPRINTLN_CTX("TSCS25xx init NOK!");

    return 0;
}
int main()
{
    // Clock manager info & configuration
    DBGPRINTLN_CTX("SI5351 revision ID: %hhu", si5351_read_revision_id());

    init_system_clocks();

    // HFXO and DPLL setup
    cmu_hfxo_config(1, CMU_HFXOCTRL_MODE_DIGEXTCLK, 50000000);
    cmu_dpll_config(1, CMU_DPLLCTRL_REFSEL_HFXO | CMU_DPLLCTRL_AUTORECOVER | CMU_DPLLCTRL_EDGESEL_RISE | CMU_DPLLCTRL_MODE_FREQLL, 1000, 1440); // 50 MHz * 1440 / 1000 = 72 MHz

    // FPGA design init
    if(fpga_init())
        DBGPRINTLN_CTX("FPGA init OK!");
    else
        DBGPRINTLN_CTX("FPGA init NOK!");

    // FPGA design info
    DBGPRINTLN_CTX("FPGA design ID: 0x%04X", fpga_read_design_id());
    DBGPRINTLN_CTX("FPGA design version: v%hu", fpga_read_design_version());

    fpga_pll_config(FPGA_PLL1_ID, 1, 0, 0);
    while(!fpga_pll_get_lock_state(FPGA_PLL1_ID));
    DBGPRINTLN_CTX("FPGA PLL1 locked!");

    DBGPRINTLN_CTX("FPGA - CLK1 Clock: %.3f MHz", (float)FPGA_CLK1_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK2 Clock: %.3f MHz", (float)FPGA_CLK2_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK3 Clock: %.3f MHz", (float)FPGA_CLK3_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK4 Clock: %.3f MHz", (float)FPGA_CLK4_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK5 Clock: %.3f MHz", (float)FPGA_CLK5_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK6 Clock: %.3f MHz", (float)FPGA_CLK6_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK7 Clock: %.3f MHz", (float)FPGA_CLK7_FREQ / 1000000);
    DBGPRINTLN_CTX("FPGA - CLK8 Clock: %.3f MHz", (float)FPGA_CLK8_FREQ / 1000000);

    DBGPRINTLN_CTX("FPGA - Reset module Clock: %.3f MHz", (float)FPGA_RST_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - ADC DPRAM module read Clock: %.3f MHz", (float)FPGA_ADC_DPRAM_RD_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - ADC DPRAM module write Clock: %.3f MHz", (float)FPGA_ADC_DPRAM_WR_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - ADC module Clock: %.3f MHz", (float)FPGA_ADC_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - QDDC module Clock: %.3f MHz", (float)FPGA_QDDC_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - Baseband I2S module Clock: %.3f MHz", (float)FPGA_BB_I2S_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - QDUC module Clock: %.3f MHz", (float)FPGA_QDUC_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - DAC module Clock: %.3f MHz", (float)FPGA_DAC_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - Audio I2S module Clock: %.3f MHz", (float)FPGA_AUDIO_I2S_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - Audio I2S module master Clock: %.3f MHz", (float)FPGA_AUDIO_I2S_MCLK / 1000000);
    DBGPRINTLN_CTX("FPGA - QSPI DPRAM module read Clock: %.3f MHz", (float)FPGA_QSPI_DPRAM_RD_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - QSPI DPRAM module write Clock: %.3f MHz", (float)FPGA_QSPI_DPRAM_WR_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - QSPI memory module Clock: %.3f MHz", (float)FPGA_QSPI_MEM_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - Interrupt module Clock: %.3f MHz", (float)FPGA_IRQ_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - LED module Clock: %.3f MHz", (float)FPGA_LED_CLK / 1000000);
    DBGPRINTLN_CTX("FPGA - Control SPI module Clock: %.3f MHz", (float)FPGA_CNTRL_SPI_CLK / 1000000);

    fpga_reset_module(FPGA_REG_RST_CNTRL_LED_SOFT_RST, 0);

    fpga_rgb_led_enable(FPGA_LED_RED);
    fpga_rgb_led_enable(FPGA_LED_GREEN);
    fpga_rgb_led_enable(FPGA_LED_BLUE);

    // DSP init
    if(dsp_init())
        DBGPRINTLN_CTX("DSP init OK!");
    else
        DBGPRINTLN_CTX("DSP init NOK!");

    // DSP info
    uint32_t ulDSPUniqueID[4];

    dsp_read_unique_id(ulDSPUniqueID);

    DBGPRINTLN_CTX("DSP firmware ID: 0x%02X", dsp_read_device_id());
    DBGPRINTLN_CTX("DSP firmware version: v%hu", dsp_read_firmware_version());
    DBGPRINTLN_CTX("DSP Unique ID: %08X-%08X-%08X-%08X", ulDSPUniqueID[0], ulDSPUniqueID[1], ulDSPUniqueID[2], ulDSPUniqueID[3]);

    // I2S Bridge info & configuration
    char pszBridgeVersion[33];

    cp2615_reset(1);
    cp2615_read_version(pszBridgeVersion, 33);

    DBGPRINTLN_CTX("CP2615 version: %s", pszBridgeVersion);

    cp2615_rom_read(0x0000, pszBridgeVersion, 4);

    pszBridgeVersion[4] = 0;

    DBGPRINTLN_CTX("CP2615 config signature: %s", pszBridgeVersion);

    if(strncmp(pszBridgeVersion, "2614", 4))
    {
        DBGPRINTLN_CTX("CP2615 config not present, loading config...");

        cp2615_rom_erase();
        cp2615_rom_write(0x0000, i2s_bridge_config, i2s_bridge_config_len);

        cp2615_rom_read(0x0000, pszBridgeVersion, 4);

        pszBridgeVersion[4] = 0;

        DBGPRINTLN_CTX("CP2615 config signature: %s", pszBridgeVersion);
    }

    cp2615_reset(0);

    // CODEC info & configuration
    DBGPRINTLN_CTX("TSCS25xx ID: 0x%04X", tscs25xx_read_device_id());

    uint8_t ubCodecRevision = tscs25xx_read_revision_id();

    DBGPRINTLN_CTX("TSCS25xx revision ID: %hhu.%hhu", TSCS25XX_REV_MAJOR(ubCodecRevision), TSCS25XX_REV_MINOR(ubCodecRevision));
    DBGPRINTLN_CTX("TSCS25xx version: %hhu", tscs25xx_read_mf_otp_version());
    DBGPRINTLN_CTX("TSCS25xx wafer ID: %hhu", tscs25xx_read_mf_wafer_id());
    DBGPRINTLN_CTX("TSCS25xx wafer coordinates: (%hhu, %hhu)", tscs25xx_read_mf_wafer_x(), tscs25xx_read_mf_wafer_y());

    // RX Chain configuration
    init_rx_chain();

    // Baseband configuration
    init_baseband_chain();

    // TX Chain configuration
    init_tx_chain();

    // Audio configuration
    init_audio_chain();

    // TFT info
    DBGPRINTLN_CTX("ILI9488 ID: 0x%06X", ili9488_read_id());
    DBGPRINTLN_CTX("FT6236 Vendor ID: 0x%02X", ft6x36_get_vendor_id());
    DBGPRINTLN_CTX("FT6236 Chip ID: 0x%02X", ft6x36_get_chip_id());
    DBGPRINTLN_CTX("FT6236 Firmware version: 0x%02X", ft6x36_get_firmware_version());

    // TFT High speed interface
    usart2_init(36000000, 0, USART_SPI_MSB_FIRST, 2, 2, 2); // Re-init USART2 at 36 MHz (TFT)

    // TFT Init
    tft_init();
    tft_bl_init(50000); // Init backlight PWM at 50 kHz
    tft_bl_set(0.f); // Set backlight to 0%
    tft_display_on(); // Turn display on
    tft_set_rotation(ILI9488_ROTATION_HORIZONTAL_FLIP); // Set rotation (horizontal, ribbon to the left)
    tft_fill_screen(RGB565_BLACK); // Fill display

    // UI Init
    init_user_interface();

    tft_bl_set(0.5f); // Set backlight to 50%

    while(1)
    {
        ft6x36_tick();

        static uint64_t ullLastLEDTick = 0;
        static uint64_t ullLastPWMTick = 0;
        static uint64_t ullLastTFTTick = 0;
        static uint64_t ullLastDebugPrint = 0;

        if(g_ullSystemTick - ullLastLEDTick > 500)
        {
            ullLastLEDTick = g_ullSystemTick;

            LED_TOGGLE();
        }

        if(g_ullSystemTick - ullLastPWMTick > 50)
        {
            ullLastPWMTick = g_ullSystemTick;

            static int8_t duty_sig[3] = {1, 1, 1};
            static int16_t duty[3] = {10, 1010, 2010};

            fpga_rgb_led_set_duty(FPGA_LED_RED, duty[0]);
            fpga_rgb_led_set_duty(FPGA_LED_GREEN, duty[1]);
            fpga_rgb_led_set_duty(FPGA_LED_BLUE, duty[2]);

            for(uint8_t i = 0; i < 3; i++)
            {
                duty[i] += 20 * duty_sig[i];

                if(duty[i] >= 4095)
                {
                    duty[i] = 4095;

                    duty_sig[i] = -1;
                }

                if(duty[i] <= 10)
                {
                    duty[i] = 10;

                    duty_sig[i] = 1;
                }
            }
        }

        if(g_ullSystemTick - ullLastTFTTick > 5000)
        {
            ullLastTFTTick = g_ullSystemTick;

            float *pfRXPSD = (float *)malloc(2048 * sizeof(float));

            if(pfRXPSD)
            {
                rx_get_psd(pfRXPSD);

                DBGPRINTLN_CTX("RX hard-tuned power: %.2f dBFS", rx_get_power(pfRXPSD, RX_RF_TO_IF(R820T2_FREQ)));
                DBGPRINTLN_CTX("RX soft-tuned power: %.2f dBFS", rx_get_power(pfRXPSD, RX_RF_TO_IF(ulRXSoftTunedFrequency)));

                uint32_t ulMaxPowerFrequency = 0;
                float fMaxPower = rx_get_max_power(pfRXPSD, &ulMaxPowerFrequency);

                DBGPRINTLN_CTX("RX peak power: %.2f dBFS at %.2f MHz", fMaxPower, (float)RX_IF_TO_RF(ulMaxPowerFrequency) / 1000000);

                rx_draw_psd(pRXIFPSDGraph, pfRXPSD);

                free(pfRXPSD);
            }

            uint8_t ubBuf[18];

            DSP_SELECT();

            usart3_spi_write_byte(0x6E, 0);
            usart3_spi_read(ubBuf, 18, 0x00);

            DSP_UNSELECT();

            DBGPRINT_CTX("dsp data [");

            for(uint16_t i = 0; i < sizeof(ubBuf); i++)
                DBGPRINT("%02X", ubBuf[i]);

            DBGPRINTLN("]");
        }

        if(g_ullSystemTick - ullLastDebugPrint > 20000)
        {
            ullLastDebugPrint = g_ullSystemTick;

            DBGPRINTLN_CTX("TX Amplifier overcurrent: %s", TXPA_OVERCURRENT() ? "yes" : "no");
            DBGPRINTLN_CTX("TX Mixer temperature: %.2f C", adc_get_tx_mixer_temperature());
            DBGPRINTLN_CTX("ADC temperature: %.2f C", adc_get_temperature());
            DBGPRINTLN_CTX("EMU temperature: %.2f C", emu_get_temperature());
            DBGPRINTLN_CTX("RTCC time: %lu s", rtcc_get_time());
        }
    }

    return 0;
}