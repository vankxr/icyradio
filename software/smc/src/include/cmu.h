#ifndef __CMU_H__
#define __CMU_H__

#include <em_device.h>
#include "msc.h"

extern uint32_t HFXO_OSC_FREQ;
extern uint32_t HFRCO_OSC_FREQ;
extern uint32_t USHFRCO_OSC_FREQ;
extern uint32_t AUXHFRCO_OSC_FREQ;
extern uint32_t LFXO_OSC_FREQ;
extern uint32_t LFRCO_OSC_FREQ;
extern uint32_t ULFRCO_OSC_FREQ;

extern uint32_t HFSRC_CLOCK_FREQ;
extern uint32_t HF_CLOCK_FREQ;
extern uint32_t HFBUS_CLOCK_FREQ;
extern uint32_t HFCORE_CLOCK_FREQ;
extern uint32_t HFEXP_CLOCK_FREQ;
extern uint32_t HFPER_CLOCK_FREQ;
extern uint32_t HFPERB_CLOCK_FREQ;
extern uint32_t HFPERC_CLOCK_FREQ;
extern uint32_t HFLE_CLOCK_FREQ;
extern uint32_t QSPI_CLOCK_FREQ;
extern uint32_t SDIO_CLOCK_FREQ;
extern uint32_t USB_CLOCK_FREQ;
extern uint32_t ADC0_CLOCK_FREQ;
extern uint32_t ADC1_CLOCK_FREQ;
extern uint32_t DBG_CLOCK_FREQ;
extern uint32_t AUX_CLOCK_FREQ;
extern uint32_t LFA_CLOCK_FREQ;
extern uint32_t LESENSE_CLOCK_FREQ;
extern uint32_t RTC_CLOCK_FREQ;
extern uint32_t LCD_CLOCK_FREQ;
extern uint32_t LETIMER0_CLOCK_FREQ;
extern uint32_t LETIMER1_CLOCK_FREQ;
extern uint32_t LFB_CLOCK_FREQ;
extern uint32_t LEUART0_CLOCK_FREQ;
extern uint32_t LEUART1_CLOCK_FREQ;
extern uint32_t SYSTICK_CLOCK_FREQ;
extern uint32_t CSEN_CLOCK_FREQ;
extern uint32_t LFC_CLOCK_FREQ;
extern uint32_t LFE_CLOCK_FREQ;
extern uint32_t RTCC_CLOCK_FREQ;

// Oscillator calibration register values
/*
    It is not confirmed on all devices, but most likely, that all calibration values have CLKDIV set to 0.
    It is then easy to divide and get frequencies that are not calibrated on the DI.

    It is not confirmed on all devices, but most likely, that the FREQRANGE of all oscillators is the same:

    FREQRANGE = 0   FINETUNINGEN = 0     1 — 10 MHz
    FREQRANGE = 3   FINETUNINGEN = 0     2 — 17 MHz
    FREQRANGE = 6   FINETUNINGEN = 0     4 — 30 MHz
    FREQRANGE = 7   FINETUNINGEN = 0     5 — 34 MHz
    FREQRANGE = 8   FINETUNINGEN = 0     7 — 42 MHz
    FREQRANGE = 10  FINETUNINGEN = 0    12 — 58 MHz
    FREQRANGE = 11  FINETUNINGEN = 0    15 — 68 MHz
    FREQRANGE = 12  FINETUNINGEN = 0    18 — 83 MHz
    FREQRANGE = 13  FINETUNINGEN = 0    24 — 100 MHz
    FREQRANGE = 14  FINETUNINGEN = 0    28 — 119 MHz
    FREQRANGE = 15  FINETUNINGEN = 0    33 — 138 MHz
    FREQRANGE = 16  FINETUNINGEN = 0    43 — 163 MHz
*/
#define HFRCO_CALIB_1M      (DEVINFO->HFRCOCAL0 | CMU_HFRCOCTRL_CLKDIV_DIV4)
#define HFRCO_CALIB_2M      (DEVINFO->HFRCOCAL0 | CMU_HFRCOCTRL_CLKDIV_DIV2)
#define HFRCO_CALIB_4M      (DEVINFO->HFRCOCAL0)
#define HFRCO_CALIB_7M      (DEVINFO->HFRCOCAL3)
#define HFRCO_CALIB_8M      (DEVINFO->HFRCOCAL7 | CMU_HFRCOCTRL_CLKDIV_DIV2)
#define HFRCO_CALIB_12M     (DEVINFO->HFRCOCAL13 | CMU_HFRCOCTRL_CLKDIV_DIV4)
#define HFRCO_CALIB_13M     (DEVINFO->HFRCOCAL6)
#define HFRCO_CALIB_14M     (DEVINFO->HFRCOCAL14 | CMU_HFRCOCTRL_CLKDIV_DIV4)
#define HFRCO_CALIB_16M     (DEVINFO->HFRCOCAL7)
#define HFRCO_CALIB_18M     (DEVINFO->HFRCOCAL16 | CMU_HFRCOCTRL_CLKDIV_DIV4)
#define HFRCO_CALIB_19M     (DEVINFO->HFRCOCAL8)
#define HFRCO_CALIB_24M     (DEVINFO->HFRCOCAL13 | CMU_HFRCOCTRL_CLKDIV_DIV2)
#define HFRCO_CALIB_26M     (DEVINFO->HFRCOCAL10)
#define HFRCO_CALIB_28M     (DEVINFO->HFRCOCAL14 | CMU_HFRCOCTRL_CLKDIV_DIV2)
#define HFRCO_CALIB_32M     (DEVINFO->HFRCOCAL11)
#define HFRCO_CALIB_36M     (DEVINFO->HFRCOCAL16 | CMU_HFRCOCTRL_CLKDIV_DIV2)
#define HFRCO_CALIB_38M     (DEVINFO->HFRCOCAL12)
#define HFRCO_CALIB_48M     (DEVINFO->HFRCOCAL13)
#define HFRCO_CALIB_56M     (DEVINFO->HFRCOCAL14)
#define HFRCO_CALIB_64M     (DEVINFO->HFRCOCAL15)
#define HFRCO_CALIB_72M     (DEVINFO->HFRCOCAL16)

#define AUXHFRCO_CALIB_1M   (DEVINFO->AUXHFRCOCAL0 | CMU_AUXHFRCOCTRL_CLKDIV_DIV4)
#define AUXHFRCO_CALIB_2M   (DEVINFO->AUXHFRCOCAL0 | CMU_AUXHFRCOCTRL_CLKDIV_DIV2)
#define AUXHFRCO_CALIB_4M   (DEVINFO->AUXHFRCOCAL0)
#define AUXHFRCO_CALIB_7M   (DEVINFO->AUXHFRCOCAL3)
#define AUXHFRCO_CALIB_8M   (DEVINFO->AUXHFRCOCAL7 | CMU_AUXHFRCOCTRL_CLKDIV_DIV2)
#define AUXHFRCO_CALIB_12M  (DEVINFO->AUXHFRCOCAL13 | CMU_AUXHFRCOCTRL_CLKDIV_DIV4)
#define AUXHFRCO_CALIB_13M  (DEVINFO->AUXHFRCOCAL6)
#define AUXHFRCO_CALIB_16M  (DEVINFO->AUXHFRCOCAL7)
#define AUXHFRCO_CALIB_19M  (DEVINFO->AUXHFRCOCAL8)
#define AUXHFRCO_CALIB_24M  (DEVINFO->AUXHFRCOCAL13 | CMU_AUXHFRCOCTRL_CLKDIV_DIV2)
#define AUXHFRCO_CALIB_25M  (DEVINFO->AUXHFRCOCAL14 | CMU_AUXHFRCOCTRL_CLKDIV_DIV2)
#define AUXHFRCO_CALIB_26M  (DEVINFO->AUXHFRCOCAL10)
#define AUXHFRCO_CALIB_32M  (DEVINFO->AUXHFRCOCAL11)
#define AUXHFRCO_CALIB_38M  (DEVINFO->AUXHFRCOCAL12)
#define AUXHFRCO_CALIB_48M  (DEVINFO->AUXHFRCOCAL13)
#define AUXHFRCO_CALIB_50M  (DEVINFO->AUXHFRCOCAL14)

#define USHFRCO_CALIB_4M    (DEVINFO->USHFRCOCAL7 | CMU_USHFRCOCTRL_CLKDIV_DIV4)
#define USHFRCO_CALIB_8M    (DEVINFO->USHFRCOCAL7 | CMU_USHFRCOCTRL_CLKDIV_DIV2)
#define USHFRCO_CALIB_12M   (DEVINFO->USHFRCOCAL13 | CMU_USHFRCOCTRL_CLKDIV_DIV4)
#define USHFRCO_CALIB_16M   (DEVINFO->USHFRCOCAL7)
#define USHFRCO_CALIB_24M   (DEVINFO->USHFRCOCAL13 | CMU_USHFRCOCTRL_CLKDIV_DIV2)
#define USHFRCO_CALIB_25M   (DEVINFO->USHFRCOCAL14 | CMU_USHFRCOCTRL_CLKDIV_DIV2)
#define USHFRCO_CALIB_32M   (DEVINFO->USHFRCOCAL11)
#define USHFRCO_CALIB_48M   (DEVINFO->USHFRCOCAL13)
#define USHFRCO_CALIB_50M   (DEVINFO->USHFRCOCAL14)

// Utility macros to convert capacitance and current
// NOTE: All capacitances passed to and returned from CMU functions are the value of a single cap (i.e. the load capacitance that the crystal sees is half of that)
#define LFXO_MIN_CTUNE       ((uint32_t)0)
#define LFXO_MAX_CTUNE       ((uint32_t)127)
#define LFXO_MIN_PF          8.f
#define LFXO_MAX_PF          39.75f
#define LFXO_SS_PF           0.25f
#define LFXO_CTUNE_TO_PF(x)  (LFXO_MIN_PF + (x) * LFXO_SS_PF)
#define LFXO_PF_TO_CTUNE(x)  ((uint32_t)(((x) - LFXO_MIN_PF) / LFXO_SS_PF))
#define HFXO_MIN_CTUNE       ((uint32_t)0)
#define HFXO_MAX_CTUNE       ((uint32_t)511)
#define HFXO_MIN_PF          8.7f
#define HFXO_MAX_PF          51.624f
#define HFXO_SS_PF           0.084f
#define HFXO_CTUNE_TO_PF(x)  (HFXO_MIN_PF + (x) * HFXO_SS_PF)
#define HFXO_PF_TO_CTUNE(x)  ((uint32_t)(((x) - HFXO_MIN_PF) / HFXO_SS_PF))
#define HFXO_MIN_IBTRIM      ((uint32_t)1)
#define HFXO_MAX_IBTRIM      ((uint32_t)2047)
#define HFXO_MIN_UA          2.f
#define HFXO_MAX_UA          4862.f
#define HFXO_FINE_SS_UA      2.f
#define HFXO_COARSE_SS_UA    1280.f
#define HFXO_UA_TO_IBTRIM(x) ((((uint32_t)((x) / HFXO_COARSE_SS_UA)) << 9) | ((uint32_t)(((uint32_t)(x) % (uint32_t)HFXO_COARSE_SS_UA) / HFXO_FINE_SS_UA)))
#define HFXO_IBTRIM_TO_UA(x) (HFXO_COARSE_SS_UA * (((x) & 0x600) >> 9) + HFXO_FINE_SS_UA * (((x) & 0x0FF) >> 0))

void cmu_init();
void cmu_update_clocks();
void cmu_config_waitstates(uint32_t ulFrequency);

void cmu_clkout0_config(uint32_t ulSource, int8_t bLocation);
void cmu_clkout1_config(uint32_t ulSource, int8_t bLocation);
void cmu_clkout2_config(uint32_t ulSource, int8_t bLocation);

void cmu_hfrco_config(uint8_t ubEnable, uint32_t ulCalibration, uint32_t ulFrequency);

void cmu_ushfrco_config(uint8_t ubEnable, uint32_t ulCalibration, uint32_t ulFrequency);

void cmu_auxhfrco_config(uint8_t ubEnable, uint32_t ulCalibration, uint32_t ulFrequency);

void cmu_dpll_config(uint8_t ubEnable, uint32_t ulConfig, uint16_t usM, uint16_t usN);

void cmu_hfxo_config(uint8_t ubEnable, uint32_t ulConfig, uint32_t ulFrequency);
void cmu_hfxo_timeout_config(uint8_t ubPeakDetTimeout, uint8_t ubSteadyTimeout, uint8_t ubStartupTimeout);
void cmu_hfxo_startup_config(float fCurrent, float fCapacitance);
float cmu_hfxo_get_startup_current();
float cmu_hfxo_get_startup_cap();
void cmu_hfxo_steady_config(float fCurrent, float fCapacitance);
float cmu_hfxo_get_steady_current();
float cmu_hfxo_get_steady_cap();
float cmu_hfxo_get_pda_current(uint8_t ubTrigger);
float cmu_hfxo_get_pma_current();

void cmu_hf_clock_config(uint32_t ulSource, uint8_t ubPrescaler);
void cmu_hfle_clock_config(uint32_t ulPrescaler);
void cmu_hfbus_clock_config(uint8_t ubPrescaler);
void cmu_hfcore_clock_config(uint8_t ubPrescaler);
void cmu_hfper_clock_config(uint8_t ubEnable, uint8_t ubPERPrescaler, uint8_t ubPERBPrescaler, uint8_t ubPERCPrescaler);
void cmu_hfexp_clock_config(uint8_t ubPrescaler);
void cmu_dbg_clock_config(uint32_t ulSource);
void cmu_qspi_clock_config(uint8_t ubEnable, uint32_t ulSource);
void cmu_sdio_clock_config(uint8_t ubEnable, uint32_t ulSource);
void cmu_usb_clock_config(uint8_t ubEnable, uint32_t ulSource);
void cmu_adc0_clock_config(uint32_t ulSource, uint8_t ubPrescaler, uint8_t ubInvert);
void cmu_adc1_clock_config(uint32_t ulSource, uint8_t ubPrescaler, uint8_t ubInvert);

void cmu_hfbus_clock_gate(uint32_t ulPeripheral, uint8_t ubEnable);
void cmu_hfper0_clock_gate(uint32_t ulPeripheral, uint8_t ubEnable);
void cmu_hfper1_clock_gate(uint32_t ulPeripheral, uint8_t ubEnable);

void cmu_lfrco_config(uint8_t ubEnable, uint32_t ulConfig);

void cmu_lfxo_config(uint8_t ubEnable, uint32_t ulConfig, float fCapacitance, uint32_t ulFrequency);
float cmu_lfxo_get_cap();

void cmu_lfa_clock_config(uint32_t ulSource);
void cmu_lfa_rtc_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfa_lcd_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfa_lesense_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfa_letimer1_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfa_letimer0_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfb_clock_config(uint32_t ulSource);
void cmu_lfb_csen_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfb_systick_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfb_leuart1_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfb_leuart0_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_lfc_clock_config(uint32_t ulSource);
void cmu_lfc_usb_clock_config(uint8_t ubEnable);
void cmu_lfe_clock_config(uint32_t ulSource);
void cmu_lfe_rtcc_clock_config(uint8_t ubEnable, uint32_t ulPrescaler);
void cmu_pcnt0_clock_config(uint8_t ubEnable, uint32_t ulSource);
void cmu_pcnt1_clock_config(uint8_t ubEnable, uint32_t ulSource);
void cmu_pcnt2_clock_config(uint8_t ubEnable, uint32_t ulSource);

#endif  // __CMU_H__
