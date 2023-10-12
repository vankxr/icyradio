#include <sam.h>
#include <stdlib.h>
#include <math.h>
#include "debug_macros.h"
#include "utils.h"
#include "nvic.h"
#include "atomic.h"
#include "systick.h"
#include "sysctrl.h"
#include "gclk.h"
#include "pm.h"
#include "port.h"
#include "nvmctrl.h"
#include "adc.h"
#include "sercom.h"
#include "wdt.h"
#include "lt7182s.h"

// Structs

// Helper macros

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_core_name(char *pszDeviceCoreName, uint32_t ulDeviceCoreNameSize);
static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void wdt_warning_isr();

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
    // rtcc_set_alarm(rtcc_get_time() + 5);

    SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk; // Configure Deep Sleep (EM2/3)

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        // IRQ_CLEAR(RTCC_IRQn);

        __DMB(); // Wait for all memory transactions to finish before memory access
        __DSB(); // Wait for all memory transactions to finish before executing instructions
        __ISB(); // Wait for all memory transactions to finish before fetching instructions
        __SEV(); // Set the event flag to ensure the next WFE will be a NOP
        __WFE(); // NOP and clear the event flag
        __WFE(); // Wait for event
        __NOP(); // Prevent debugger crashes

        // cmu_init();
        // cmu_update_clocks();
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
    uint8_t ubSeries =  (DSU_REGS->DSU_DID & DSU_DID_SERIES_Msk) >> DSU_DID_SERIES_Pos;
    const char* szSeries = "?";

    switch(ubSeries)
    {
        case 0x00: szSeries = "SAMD20"; break;
        case 0x01: szSeries = "SAMD21"; break;
    }

    const char *szFlashSize = "?";

    switch(nvmctrl_get_flash_size() >> 10)
    {
        case  32: szFlashSize = "15"; break;
        case  64: szFlashSize = "16"; break;
        case 128: szFlashSize = "17"; break;
        case 256: szFlashSize = "18"; break;
    }

    uint8_t ubFamily =  (DSU_REGS->DSU_DID & DSU_DID_FAMILY_Msk) >> DSU_DID_FAMILY_Pos;
    char cFamily = '?';

    switch(ubFamily)
    {
        case 0x00: cFamily = 'A'; break;
        case 0x01: cFamily = 'B'; break;
    }

    snprintf(pszDeviceName, ulDeviceNameSize, "AT%sx%s%c", szSeries, szFlashSize, cFamily);
}
uint8_t get_device_revision()
{
    return (DSU_REGS->DSU_DID & DSU_DID_REVISION_Msk) >> DSU_DID_REVISION_Pos;
}

void wdt_warning_isr()
{
    DBGPRINTLN_CTX("Watchdog warning!");
}

int init()
{
    nvmctrl_init(); // Init NVMCTRL

    sysctrl_init(); // Init Oscillators
    gclk_init(); // Init GCLKs
    pm_init(); // Init System clock tree

    systick_init(); // Init system tick

    wdt_init(WDT_CONFIG_PER_16K, WDT_EWCTRL_EWOFFSET_4K); // Init the watchdog time (500 ms timeout, 125 ms warning, typical)
    wdt_set_warning_isr(wdt_warning_isr);

    port_init(); // Init GPIOs
    adc_init(); // Init ADC

    sercom0_init(1000000, 0, SERCOM_SPI_MSB_FIRST, 0, 2);
    sercom1_init(SERCOM_I2C_FAST);
    sercom3_init(115200, SERCOM_USART_INT_CTRLA_DORD_LSB | SERCOM_USART_INT_CTRLA_FORM_USART_FRAME_NO_PARITY | SERCOM_USART_INT_CTRLB_SBMODE_1_BIT | SERCOM_SPIM_CTRLB_CHSIZE_8_BIT, 0, 1);

    // i2c0_init(I2C_SLAVE_ADDRESS, 4, 4);
    // i2c0_set_slave_addr_isr(i2c_slave_addr_isr);
    // i2c0_set_slave_tx_data_isr(i2c_slave_tx_data_isr);
    // i2c0_set_slave_rx_data_isr(i2c_slave_rx_data_isr);

    char szDeviceCoreName[32];
    char szDeviceName[32];
    uint32_t ulUniqueID[4];

    get_device_core_name(szDeviceCoreName, 32);
    get_device_name(szDeviceName, 32);
    nvmctrl_get_unique_id(ulUniqueID);

    printf("\x1B[2J\x1B[2J\x1B[2J\x1B[2J"); // Clear the screen
    printf("\x1B[H"); // Move cursor to top left corner

    DBGPRINTLN_CTX("IcyRadio PMU v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    DBGPRINTLN_CTX("Core: %s", szDeviceCoreName);
    DBGPRINTLN_CTX("Device: %s", szDeviceName);
    DBGPRINTLN_CTX("Device Revision: %hhu", get_device_revision());
    DBGPRINTLN_CTX("Calibration temperature: %hhu.%hhu C", (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_INT_Pos, (TEMP_LOG_FUSES_REGS->FUSES_TEMP_LOG_WORD_0 & FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Msk) >> FUSES_TEMP_LOG_WORD_0_NVMCTRL_ROOM_TEMP_VAL_DEC_Pos);
    DBGPRINTLN_CTX("Flash Size: %hu kB", nvmctrl_get_flash_size() >> 10);
    DBGPRINTLN_CTX("RAM Size: %hu kB", HRAMC0_SIZE >> 10);
    DBGPRINTLN_CTX("Free RAM: %lu B", get_free_ram());
    DBGPRINTLN_CTX("Unique ID: %08X-%08X-%08X-%08X", ulUniqueID[0], ulUniqueID[1], ulUniqueID[2], ulUniqueID[3]);

    DBGPRINTLN_CTX("RMU - Reset cause: %hhu", pm_get_reset_reason());

    DBGPRINTLN_CTX("ADC - IOVDD Voltage: %.2f mV", adc_get_iovdd());
    DBGPRINTLN_CTX("ADC - Core Voltage: %.2f mV", adc_get_corevdd());
    DBGPRINTLN_CTX("ADC - VBUS Voltage: %.2f mV", adc_get_vbus());
    DBGPRINTLN_CTX("ADC - VIN Voltage: %.2f mV", adc_get_vin());
    DBGPRINTLN_CTX("ADC - 12V0 Voltage: %.2f mV", adc_get_12v0());
    DBGPRINTLN_CTX("ADC - VEXT Voltage: %.2f mV", adc_get_vext());
    DBGPRINTLN_CTX("ADC - Temperature: %.2f C", adc_get_temperature());

    nvmctrl_config_waitstates(PM_CPU_CLOCK_FREQ, adc_get_iovdd()); // Optimize flash wait states for frequency and voltage

    DBGPRINTLN_CTX("SYSCTRL - XOSC Oscillator: %.3f MHz", (float)SYSCTRL_XOSC_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("SYSCTRL - OSC8M Oscillator: %.3f MHz", (float)SYSCTRL_OSC8M_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("SYSCTRL - DFLL48M Clock: %.3f MHz", (float)SYSCTRL_DFLL48M_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - MAIN Clock: %.3f MHz", (float)PM_MAIN_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - CPU Clock: %.3f MHz", (float)PM_CPU_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - AHB Clock: %.3f MHz", (float)PM_AHB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - APBA Clock: %.3f MHz", (float)PM_APBA_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - APBB Clock: %.3f MHz", (float)PM_APBB_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PM - APBC Clock: %.3f MHz", (float)PM_APBC_CLOCK_FREQ / 1000000);

    DBGPRINTLN_CTX("WDT - Timeout period: %.3f ms", wdt_get_timeout_period());
    DBGPRINTLN_CTX("WDT - Warning period: %.3f ms", wdt_get_warning_period());

    DBGPRINTLN_CTX("Scanning I2C bus 1...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(sercom1_i2c_write(a, NULL, 0, SERCOM_I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    if(lt7182s_init())
        DBGPRINTLN_CTX("LT7182S init OK!");
    else
        DBGPRINTLN_CTX("LT7182S init NOK!");

    return 0;
}
int main()
{
    char szMFRBuf[8];
    uint8_t ubMFRBuf[16];
    uint8_t ubMFRLen = 0;

    if(!lt7182s_read_mfr_id(szMFRBuf, sizeof(szMFRBuf)))
        DBGPRINTLN_CTX("Failed to read LT7182S manufacturer IF!");
    else
        DBGPRINTLN_CTX("LT7182S MFR ID: %s", szMFRBuf);

    if(!lt7182s_read_mfr_model(szMFRBuf, sizeof(szMFRBuf)))
        DBGPRINTLN_CTX("Failed to read LT7182S manufacturer model!");
    else
        DBGPRINTLN_CTX("LT7182S MFR Model: %s", szMFRBuf);

    if(!(ubMFRLen = lt7182s_read_mfr_revision(ubMFRBuf, sizeof(ubMFRBuf))))
    {
        DBGPRINTLN_CTX("Failed to read LT7182S manufacturer revision!");
    }
    else
    {
        DBGPRINT_CTX("LT7182S MFR Revision: ");

        for(uint8_t i = 0; i < ubMFRLen; i++)
            DBGPRINT("%02X", ubMFRBuf[i]);

        DBGPRINTLN("");
    }

    if(!(ubMFRLen = lt7182s_read_mfr_serial(ubMFRBuf, sizeof(ubMFRBuf))))
    {
        DBGPRINTLN_CTX("Failed to read LT7182S manufacturer serial!");
    }
    else
    {
        DBGPRINT_CTX("LT7182S MFR Serial: ");

        for(uint8_t i = 0; i < ubMFRLen; i++)
            DBGPRINT("%02X", ubMFRBuf[i]);

        DBGPRINTLN("");
    }

    DBGPRINTLN_CTX("LT7182S MFR Special ID: 0x%04X", lt7182s_read_mfr_special_id());

    DBGPRINTLN_CTX("LT7182S Channel #0 VIN: %.3f V (Peak: %.3f V)", lt7182s_read_vin(0), lt7182s_read_vin_peak(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VIN ON Voltage: %.3f V", lt7182s_get_vin_on(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VIN OFF Voltage: %.3f V", lt7182s_get_vin_off(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VIN UV Warning Voltage: %.3f V", lt7182s_get_vin_uv_warn(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 IIN: %.3f A", lt7182s_read_iin(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 IIN OC Warning Current: %.3f A", lt7182s_get_iin_oc_warn(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT: %.3f V (Set: %.3f V, Peak: %.3f V)", lt7182s_read_vout(0), lt7182s_get_vout(0), lt7182s_read_vout_peak(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 Maximum VOUT: %.3f V", lt7182s_get_vout_max(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 Margin High VOUT: %.3f V", lt7182s_get_vout_margin_high(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 Margin Low VOUT: %.3f V", lt7182s_get_vout_margin_low(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT Transition Rate: %.3f V/ms", lt7182s_get_vout_transition_rate(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT OV Fault Voltage: %.3f V", lt7182s_get_vout_ov_fault(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT OV Warning Voltage: %.3f V", lt7182s_get_vout_ov_warn(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT UV Fault Voltage: %.3f V", lt7182s_get_vout_uv_fault(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 VOUT UV Warning Voltage: %.3f V", lt7182s_get_vout_uv_warn(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 IOUT: %.3f A (Peak: %.3f A)", lt7182s_read_iout(0), lt7182s_read_iout_peak(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 IOUT OC Warning Current: %.3f A", lt7182s_get_iout_oc_warn(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 FREQ: %.3f kHz", lt7182s_read_freq(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 POUT: %.3f W", lt7182s_read_pout(0));
    DBGPRINTLN_CTX("LT7182S Channel #0 ITH Voltage: %.3f V", lt7182s_read_ith(0));

    uint16_t usPWMConfig = lt7182s_get_pwm_config(0);

    DBGPRINTLN_CTX("LT7182S Channel #0 PWM Config:");
    DBGPRINTLN_CTX("  LT7182S Channel #0 GMEA: %.3f uS", l17182s_pwm_config_parse_gmea(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #0 Positive ILIM: %.3f A", l17182s_pwm_config_parse_pos_ilim(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #0 Negative ILIM: %.3f A", l17182s_pwm_config_parse_neg_ilim(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #0 CITH: %.3f pF", l17182s_pwm_config_parse_cith(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #0 RITH: %.3f kOhm", l17182s_pwm_config_parse_rith(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #0 Pulse Skipping: %s", l17182s_pwm_config_parse_pulse_skipping(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #0 FCM at TOFF: %s", l17182s_pwm_config_parse_fcm_at_toff(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #0 Low VOUT Mode: %s", l17182s_pwm_config_parse_low_vout_mode(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #0 PWM Phase: %hu deg", lt7182s_get_pwm_phase(0));
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("LT7182S Channel #1 VIN: %.3f V (Peak: %.3f V)", lt7182s_read_vin(1), lt7182s_read_vin_peak(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VIN ON Voltage: %.3f V", lt7182s_get_vin_on(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VIN OFF Voltage: %.3f V", lt7182s_get_vin_off(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VIN UV Warning Voltage: %.3f V", lt7182s_get_vin_uv_warn(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 IIN: %.3f A", lt7182s_read_iin(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 IIN OC Warning Current: %.3f A", lt7182s_get_iin_oc_warn(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT: %.3f V (Set: %.3f V, Peak: %.3f V)", lt7182s_read_vout(1), lt7182s_get_vout(1), lt7182s_read_vout_peak(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 Maximum VOUT: %.3f V", lt7182s_get_vout_max(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 Margin High VOUT: %.3f V", lt7182s_get_vout_margin_high(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 Margin Low VOUT: %.3f V", lt7182s_get_vout_margin_low(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT Transition Rate: %.3f V/ms", lt7182s_get_vout_transition_rate(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT OV Fault Voltage: %.3f V", lt7182s_get_vout_ov_fault(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT OV Warning Voltage: %.3f V", lt7182s_get_vout_ov_warn(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT UV Fault Voltage: %.3f V", lt7182s_get_vout_uv_fault(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 VOUT UV Warning Voltage: %.3f V", lt7182s_get_vout_uv_warn(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 IOUT: %.3f A (Peak: %.3f A)", lt7182s_read_iout(1), lt7182s_read_iout_peak(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 IOUT OC Warning Current: %.3f A", lt7182s_get_iout_oc_warn(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 FREQ: %.3f kHz", lt7182s_read_freq(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 POUT: %.3f W", lt7182s_read_pout(1));
    DBGPRINTLN_CTX("LT7182S Channel #1 ITH Voltage: %.3f V", lt7182s_read_ith(1));

    usPWMConfig = lt7182s_get_pwm_config(1);

    DBGPRINTLN_CTX("LT7182S Channel #1 PWM Config:");
    DBGPRINTLN_CTX("  LT7182S Channel #1 GMEA: %.3f uS", l17182s_pwm_config_parse_gmea(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #1 Positive ILIM: %.3f A", l17182s_pwm_config_parse_pos_ilim(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #1 Negative ILIM: %.3f A", l17182s_pwm_config_parse_neg_ilim(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #1 CITH: %.3f pF", l17182s_pwm_config_parse_cith(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #1 RITH: %.3f kOhm", l17182s_pwm_config_parse_rith(usPWMConfig));
    DBGPRINTLN_CTX("  LT7182S Channel #1 Pulse Skipping: %s", l17182s_pwm_config_parse_pulse_skipping(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #1 FCM at TOFF: %s", l17182s_pwm_config_parse_fcm_at_toff(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #1 Low VOUT Mode: %s", l17182s_pwm_config_parse_low_vout_mode(usPWMConfig) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  LT7182S Channel #1 PWM Phase: %hu deg", lt7182s_get_pwm_phase(1));
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("LT7182S EXTVCC Voltage: %.3f V", lt7182s_read_extvcc());
    DBGPRINTLN_CTX("LT7182S Temperature: %.3f C (Peak: %.3f C)", lt7182s_read_temperature(), lt7182s_read_temperature_peak());
    DBGPRINTLN_CTX("LT7182S OT Fault Temperature: %.3f C", lt7182s_get_ot_fault());
    DBGPRINTLN_CTX("LT7182S OT Warning Temperature: %.3f C", lt7182s_get_ot_warn());
    DBGPRINTLN_CTX("LT7182S Frequency: %.3f kHz", lt7182s_get_freq());

    volatile uint64_t x = g_ullSystemTick;
    for(uint32_t i = 0; i < 1000; i++)
        (void)adc_get_vbus();
    volatile uint64_t y = g_ullSystemTick;

    DBGPRINTLN_CTX("Sample rate: %.3f Hz", 1000.0 / ((float)(y - x) / 1000.0));

    x = g_ullSystemTick;
    for(uint32_t i = 0; i < 1000; i++)
        (void)adc_get_iovdd();
    y = g_ullSystemTick;

    DBGPRINTLN_CTX("Sample rate: %.3f Hz", 1000.0 / ((float)(y - x) / 1000.0));

    // UPD350_SELECT();
    // delay_ms(50);
    // UPD350_UNSELECT();
    // delay_ms(500);

    // uint8_t buf[8];

    // UPD350_SELECT();

    // sercom0_spi_write_byte(0x0B, 0);

    // sercom0_spi_write_byte(0x00, 0);
    // sercom0_spi_write_byte(0x00, 0);

    // sercom0_spi_write_byte(0x00, 1);

    // sercom0_spi_read(buf, 8, 0x00);

    // UPD350_UNSELECT();

    // DBGPRINTLN_CTX("UPD350 ID: 0x%08X", *(uint32_t *)buf);
    // DBGPRINTLN_CTX("UPD350 USB Vendor ID: 0x%04X", *(uint16_t *)(buf + 4));
    // DBGPRINTLN_CTX("UPD350 USB Product ID: 0x%04X", *(uint16_t *)(buf + 6));

    // DBGPRINTLN_CTX("Enabling VEXT in 2 seconds...");
    // delay_ms(2000);

    // VBUS_SNK_DISABLE();
    // PCIE_12V0_DISABLE();
    // VEXT_ENABLE();

    // delay_ms(100);

    // lt7182s_set_operation(1, LT7182S_OPERATION_ON);
    // lt7182s_set_operation(0, LT7182S_OPERATION_ON);

    // DBGPRINTLN_CTX("Configuring FPGA in 500 ms...");
    // delay_ms(500);

    // FPGA_INIT_DEASSERT();
    // delay_ms(50);
    // FPGA_INIT_ASSERT();
    // delay_ms(50);
    // FPGA_INIT_DEASSERT();

    // DBGPRINTLN_CTX("Turning CM4 ON in 2 seconds...");
    // delay_ms(2000);

    // //CM4_USB_OTG_DEVICE();
    // //CM4_BTLDR_ENABLE();
    // CM4_GLOBAL_ENABLE();

    wdt_enable();

    while(1)
    {
        wdt_feed();

        static uint64_t ullLastHeartBeat = 0;
        static uint64_t ullLastTelemetryUpdate = 0;

        if((g_ullSystemTick > 0 && ullLastHeartBeat == 0) || g_ullSystemTick - ullLastHeartBeat > 2000)
        {
            ullLastHeartBeat = g_ullSystemTick;

            LED_TOGGLE();

            if(LED_STATUS())
                ullLastHeartBeat -= 1900;
        }

        if((g_ullSystemTick > 0 && ullLastTelemetryUpdate == 0) || g_ullSystemTick - ullLastTelemetryUpdate > 5000)
        {
            ullLastTelemetryUpdate = g_ullSystemTick;

            // DBGPRINTLN_CTX("------------------------------");
            // DBGPRINTLN_CTX("LT7182S Channel #0 VIN: %.3f V (Peak: %.3f V)", lt7182s_read_vin(0), lt7182s_read_vin_peak(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 IIN: %.3f A", lt7182s_read_iin(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 VOUT: %.3f V (Set: %.3f V, Peak: %.3f V)", lt7182s_read_vout(0), lt7182s_get_vout(0), lt7182s_read_vout_peak(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 IOUT: %.3f A (Peak: %.3f A)", lt7182s_read_iout(0), lt7182s_read_iout_peak(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 FREQ: %.3f kHz", lt7182s_read_freq(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 POUT: %.3f W", lt7182s_read_pout(0));
            // DBGPRINTLN_CTX("LT7182S Channel #0 ITH Voltage: %.3f V", lt7182s_read_ith(0));
            // DBGPRINTLN_CTX("------------------------------");
            // DBGPRINTLN_CTX("LT7182S Channel #1 VIN: %.3f V (Peak: %.3f V)", lt7182s_read_vin(1), lt7182s_read_vin_peak(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 IIN: %.3f A", lt7182s_read_iin(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 VOUT: %.3f V (Set: %.3f V, Peak: %.3f V)", lt7182s_read_vout(1), lt7182s_get_vout(1), lt7182s_read_vout_peak(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 IOUT: %.3f A (Peak: %.3f A)", lt7182s_read_iout(1), lt7182s_read_iout_peak(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 FREQ: %.3f kHz", lt7182s_read_freq(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 POUT: %.3f W", lt7182s_read_pout(1));
            // DBGPRINTLN_CTX("LT7182S Channel #1 ITH Voltage: %.3f V", lt7182s_read_ith(1));
            // DBGPRINTLN_CTX("------------------------------");
            // DBGPRINTLN_CTX("LT7182S EXTVCC Voltage: %.3f V", lt7182s_read_extvcc());
            // DBGPRINTLN_CTX("LT7182S Temperature: %.3f C (Peak: %.3f C)", lt7182s_read_temperature(), lt7182s_read_temperature_peak());
            DBGPRINTLN_CTX("------------------------------");
            DBGPRINTLN_CTX("RPi CM4 State: %s", CM4_RUNNING() ? "Running" : "OFF");

            static uint8_t ubLastRPiState = 0;

            if(ubLastRPiState != CM4_RUNNING())
            {
                ubLastRPiState = CM4_RUNNING();
            }
            else if(!CM4_RUNNING() && !ubLastRPiState)
            {
                DBGPRINTLN_CTX("RPi CM4 is OFF, restarting...");

                CM4_GLOBAL_DISABLE();
                delay_ms(50);
                CM4_GLOBAL_ENABLE();
            }
        }
    }

    return 0;
}