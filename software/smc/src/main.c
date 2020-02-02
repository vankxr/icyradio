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
#include "fpga.h"
#include "si5351.h"
#include "ft6x36.h"
#include "ili9488.h"
#include "r820t2.h"
#include "ad9117.h"
#include "tft.h"
#include "images.h"
#include "fonts.h"
#include "v1.icyradio.h"

// Structs

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint16_t get_device_revision();

static void init_system_clocks();
static void init_rx_chain();
static void init_tx_chain();

// Variables

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

void init_system_clocks()
{
    si5351_set_clkin_divider(2); // fPFD = CLKIN / 2

    DBGPRINTLN_CTX("CLKMNGR - CLKIN Clock: %.1f MHz", (float)SI5351_CLKIN_FREQ / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - CLKIN Divider Clock: %.1f MHz", (float)SI5351_CLKIN_DIV_FREQ / 1000000);

    //// PLLA
    si5351_pll_set_source(0, SI5351_PLL_SRC_CLKIN);
    si5351_pll_set_freq(0, 800000000);

    DBGPRINTLN_CTX("CLKMNGR - PLLA Source Clock: %.1f MHz", (float)SI5351_PLL_SRC_FREQ[0] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - PLLA VCO Clock: %.1f MHz", (float)SI5351_PLL_FREQ[0] / 1000000);

    //// PLLB
    si5351_pll_set_source(1, SI5351_PLL_SRC_CLKIN);
    si5351_pll_set_freq(1, 840000000);

    DBGPRINTLN_CTX("CLKMNGR - PLLB Source Clock: %.1f MHz", (float)SI5351_PLL_SRC_FREQ[1] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - PLLB VCO Clock: %.1f MHz", (float)SI5351_PLL_FREQ[1] / 1000000);

    //// FPGA Clock #1
    si5351_multisynth_set_source(SI5351_FPGA_CLK1, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK1, 45158400);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK1] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK1] / 1000000);

    si5351_clock_set_disable_state(SI5351_FPGA_CLK1, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK1, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK1, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK1, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK1, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_FPGA_CLK1, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK1] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK1); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK1); // Software enable the clock output

    //// FPGA Clock #2
    si5351_multisynth_set_source(SI5351_FPGA_CLK2, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK2, 80000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK2] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK2] / 1000000);

    si5351_clock_set_disable_state(SI5351_FPGA_CLK2, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK2, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK2, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK2, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK2, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_FPGA_CLK2, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK2] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK2); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK2); // Software enable the clock output

    //// FPGA Clock #3
    si5351_multisynth_set_source(SI5351_FPGA_CLK3, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK3, 20000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK3] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK3] / 1000000);

    si5351_clock_set_disable_state(SI5351_FPGA_CLK3, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK3, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK3, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK3, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK3, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_FPGA_CLK3, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK3] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK3); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK3); // Software enable the clock output

    //// FPGA Clock #4
    si5351_multisynth_set_source(SI5351_FPGA_CLK4, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK4, 10000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_FPGA_CLK4, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK4] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_FPGA_CLK4, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK4] / 1000000);

    si5351_clock_set_disable_state(SI5351_FPGA_CLK4, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK4, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK4, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK4, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK4, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_FPGA_CLK4, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK4] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK4); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK4); // Software enable the clock output

    //// SMC Main Clock
    si5351_multisynth_set_source(SI5351_SMC_MAIN_CLK, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_SMC_MAIN_CLK, 50000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_MS_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);

    si5351_clock_set_disable_state(SI5351_SMC_MAIN_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_SMC_MAIN_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_SMC_MAIN_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_SMC_MAIN_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_SMC_MAIN_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_SMC_MAIN_CLK, (float)SI5351_CLK_FREQ[SI5351_SMC_MAIN_CLK] / 1000000);

    si5351_clock_power_up(SI5351_SMC_MAIN_CLK); // Power the output stage up
    si5351_clock_enable(SI5351_SMC_MAIN_CLK); // Software enable the clock output

    //// DSP Main Clock
    si5351_multisynth_set_source(SI5351_DSP_MAIN_CLK, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_DSP_MAIN_CLK, 12000000);

    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Source Clock: %.1f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);
    DBGPRINTLN_CTX("CLKMNGR - MS%hhu Clock: %.1f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_MS_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);

    si5351_clock_set_disable_state(SI5351_DSP_MAIN_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_DSP_MAIN_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_DSP_MAIN_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_DSP_MAIN_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_DSP_MAIN_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLKMNGR - CLK%hhu Clock: %.1f MHz", SI5351_DSP_MAIN_CLK, (float)SI5351_CLK_FREQ[SI5351_DSP_MAIN_CLK] / 1000000);

    si5351_clock_power_up(SI5351_DSP_MAIN_CLK); // Power the output stage up
    //si5351_clock_enable(SI5351_DSP_MAIN_CLK); // Software enable the clock output

    //// Global output enable
    CLK_MNGR_OUT_EN();
}
void init_rx_chain()
{
    r820t2_set_lna_gain(0.f, 1); // Auto
    DBGPRINTLN_CTX("RX Tuner LNA AGC: ON");

    r820t2_set_mixer_gain(0.f, 1); // Auto
    DBGPRINTLN_CTX("RX Tuner mixer AGC: ON");

    r820t2_set_vga_gain(30.f); // 30 dB
    DBGPRINTLN_CTX("RX Tuner VGA gain: %.1f dB", r820t2_get_vga_gain());

    r820t2_set_if_bandwidth(0, 15, 13); // IF passband from ~600 kHz to ~10 MHz
    DBGPRINTLN_CTX("RX Tuner IF filter config");

    r820t2_set_if_freq(5000000); // 5 MHz IF
    DBGPRINTLN_CTX("RX Tuner IF frequency: %.1f MHz", (float)R820T2_IF_FREQ / 1000000);

    if(r820t2_set_freq(100300000))
        DBGPRINTLN_CTX("RX Tuner tuned to %.1f MHz", (float)R820T2_FREQ / 1000000);
    else
        DBGPRINTLN_CTX("RX Tuner failed to tune!");

    fpga_reset_module(FPGA_REG_RST_CNTRL_ADC_DPRAM_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA ADC DPRAM enabled!");

    fpga_reset_module(FPGA_REG_RST_CNTRL_ADC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA ADC enabled!");

    RXADC_POWER_UP();
    RXADC_GAIN_X1P5();
    RXADC_DITHER_OFF();
    DBGPRINTLN_CTX("RX ADC powered up, gain x1,5, dither disabled!");

    delay_ms(100);

    uint32_t *buf = (uint32_t *)malloc(8192 * sizeof(uint32_t));
    memset(buf, 0, 4096 * sizeof(uint32_t));

    fpga_adc_dpram_sample(buf, 4096);

    q15_t *fft_buf = (q15_t *)malloc(2 * 4096 * sizeof(q15_t));
    memset(fft_buf, 0, 2 * 4096 * sizeof(q15_t));

    for(uint16_t i = 0; i < 4096; i++)
    {
        fft_buf[i * 2 + 0] = buf[i] & 0xFFFF; // Real
        fft_buf[i * 2 + 1] = 0; // Complex

        char obuf[64];
        uint32_t osz = snprintf(obuf, 64, "%.6f\r\n", (float)((int16_t)(buf[i] & 0xFFFF)) / INT16_MAX);

        for(uint32_t isz = 0; isz < osz; isz++)
            dbg_swo_send_uint8(obuf[isz], 1);
    }

    free(buf);

    arm_cfft_q15(&arm_cfft_sR_q15_len4096, fft_buf, 0, 1);

    uint32_t ulCenterFrequency = 0;
    uint32_t ulSampleRate = SI5351_CLK_FREQ[SI5351_FPGA_CLK1];

    float fMaxPower = -INFINITY;
    float fMaxPowerFrequency = 0.f;

    //DBGPRINT_CTX("ADC FFT DATA: {");

    for(uint16_t i = 0; i < 4096; i++)
    {
        float fReal = (float)fft_buf[i * 2 + 0] / INT16_MAX;
        float fImag = (float)fft_buf[i * 2 + 1] / INT16_MAX;

        float fPower = 10 * log10(fReal * fReal + fImag * fImag);
        float fFrequency = 0;

        if(i < 4096 / 2)
            fFrequency = (ulCenterFrequency + i * ((float)ulSampleRate / 4096));
        else
            fFrequency = (ulCenterFrequency + ((int16_t)i - 4096) * ((float)ulSampleRate / 4096));
        /*
        char obuf[64];
        uint32_t osz = snprintf(obuf, 64, "%.2f\t%.2f\r\n", fFrequency, fPower);

        for(uint32_t isz = 0; isz < osz; isz++)
            dbg_swo_send_uint8(obuf[isz], 1);
        */
        if(fPower > fMaxPower)
        {
            fMaxPower = fPower;
            fMaxPowerFrequency = fFrequency;
        }
    }

    //DBGPRINTLN("} FFT DATA END ");

    free(fft_buf);

    DBGPRINTLN_CTX("Peak power = %.2f dB at frequency %.2f MHz", fMaxPower, fMaxPowerFrequency / 1000000);
}
void init_tx_chain()
{
    fpga_reset_module(FPGA_REG_RST_CNTRL_DAC_SOFT_RST, 0);
    DBGPRINTLN_CTX("FPGA DAC enabled!");

    ad9117_calibrate(SI5351_CLK_FREQ[SI5351_FPGA_CLK1]);
    DBGPRINTLN_CTX("TX DAC calibrated!");
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

    usart1_init(18000000, 0, USART_SPI_MSB_FIRST, 4, 4, 4); // Init USART1 at 18 MHz (FPGA)
    usart2_init(4500000, 0, USART_SPI_MSB_FIRST, 2, 2, 2); // Init USART2 at 4.5 MHz (TFT)
    usart3_init(18000000, 0, USART_SPI_MSB_FIRST, 0, 0, 0); // Init USART3 at 18 MHz (DSP)
    usart4_init(18000000, 0, USART_SPI_MSB_FIRST, -1, 1, 1); // Init USART4 at 18 MHz (TXPLL)
    usart5_init(18000000, 0, USART_SPI_MSB_FIRST, -1, 0, 1); // Init USART5 at 18 MHz (TXDAC)

    i2c0_init(I2C_FAST, 7, 7); // Init I2C0 at 400 kHz (System)
    i2c1_init(I2C_FAST, 0, 0); // Init I2C1 at 400 kHz (RX Tuner)
    i2c2_init(I2C_NORMAL, 2, 2); // Init I2C2 at 100 kHz (Audio)

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

    DBGPRINTLN_CTX("CMU - HFXO Oscillator: %.1f MHz", (float)HFXO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - HFRCO Oscillator: %.1f MHz", (float)HFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - USHFRCO Oscillator: %.1f MHz", (float)USHFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - AUXHFRCO Oscillator: %.1f MHz", (float)AUXHFRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("CMU - LFXO Oscillator: %.3f kHz", (float)LFXO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - LFRCO Oscillator: %.3f kHz", (float)LFRCO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("CMU - ULFRCO Oscillator: %.3f kHz", (float)ULFRCO_OSC_FREQ / 1000);
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

    delay_ms(100);

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

    return 0;
}
int main()
{
    // Clock manager info & configuration
    DBGPRINTLN_CTX("SI5351 Revision ID: %hhu", si5351_read_revision_id());

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

    fpga_rgb_led_enable();

    fpga_i2s_mux_set_codec_clock(FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_CLK_SEL_BRIDGE);
    fpga_i2s_mux_set_codec_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_BRIDGE);
    fpga_i2s_mux_set_bridge_sdin(FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_CODEC);

    I2S_BRG_RESET();
    I2S_BRG_CFG_DIS();
    delay_ms(100);
    I2S_BRG_UNRESET();

    // RX Chain configuration
    init_rx_chain();

    // TX Chain configuration
    init_tx_chain();

    // TFT info
    DBGPRINTLN_CTX("ILI9488 ID: 0x%06X", ili9488_read_id());
    DBGPRINTLN_CTX("FT6236 Vendor ID: 0x%02X", ft6x36_get_vendor_id());
    DBGPRINTLN_CTX("FT6236 Chip ID: 0x%02X", ft6x36_get_chip_id());
    DBGPRINTLN_CTX("FT6236 Firmware version: 0x%02X", ft6x36_get_firmware_version());

    // TFT High speed interface
    usart2_init(36000000, 0, USART_SPI_MSB_FIRST, 2, 2, 2); // Re-init USART2 at 36 MHz (TFT)

    // TFT Init
    tft_init();
    tft_bl_init(2000); // Init backlight PWM at 2 kHz
    tft_bl_set(0.f); // Set backlight to 0%
    tft_display_on(); // Turn display on
    tft_set_rotation(ILI9488_ROTATION_VERTICAL_FLIP); // Set rotation (vertical, ribbon at the bottom)
    tft_fill_screen(RGB565_BLACK); // Fill display

    tft_graph_t *pGraph = tft_graph_create(60, 30, 220, 360, 0, 30, 5, 20, 35, 1, 1, "%.0f", "%.0f", "Temperature", "t", "C", &xSans9pFont, RGB565_WHITE, RGB565_BLACK, RGB565_CYAN, RGB565_BLACK, RGB565_DARKGREY);
    if(!pGraph)
    {
        DBGPRINTLN_CTX("Could not allocate graph");
        while(1);
    }

    tft_bl_set(0.75f); // Set backlight to 75%

    while(1)
    {
        ft6x36_tick();

        static uint64_t ullLastPWMTick = 0;
        static uint64_t ullLastTFTTick = 0;
        static uint64_t ullLastDebugPrint = 0;

        if(g_ullSystemTick > (ullLastPWMTick + 50))
        {
            ullLastPWMTick = g_ullSystemTick;

            static int8_t duty_sig[3] = {1, 1, 1};
            static int16_t duty[3] = {0, 1000, 2000};

            fpga_rbg_led_set_duty(FPGA_LED_RED, duty[0]);
            fpga_rbg_led_set_duty(FPGA_LED_GREEN, duty[1]);
            fpga_rbg_led_set_duty(FPGA_LED_BLUE, duty[2]);

            for(uint8_t i = 0; i < 3; i++)
            {
                duty[i] += 20 * duty_sig[i];

                if(duty[i] >= 4096)
                {
                    duty[i] = 4096;

                    duty_sig[i] = -1;
                }

                if(duty[i] <= 0)
                {
                    duty[i] = 0;

                    duty_sig[i] = 1;
                }
            }
        }

        if(g_ullSystemTick > (ullLastTFTTick + 1000))
        {
            ullLastTFTTick = g_ullSystemTick;

            LED_TOGGLE();

            static uint8_t ubCount = 0;

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
        }

        if(g_ullSystemTick > (ullLastDebugPrint + 60000))
        {
            ullLastDebugPrint = g_ullSystemTick;

            DBGPRINTLN_CTX("ADC Temp: %.2f C", adc_get_temperature());
            DBGPRINTLN_CTX("EMU Temp: %.2f C", emu_get_temperature());
            DBGPRINTLN_CTX("RTCC Time: %lu s", rtcc_get_time());
        }
    }

    return 0;
}