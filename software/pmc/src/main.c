#include <sam.h>
#include <stdlib.h>
#include <math.h>
#include "debug_macros.h"
#include "utils.h"
#include "nvic.h"
#include "atomic.h"
#include "systick.h"
// #include "rmu.h"
// #include "emu.h"
// #include "cmu.h"
#include "port.h"
// #include "msc.h"
// #include "rtcc.h"
// #include "adc.h"
// #include "crc.h"
#include "sercom.h"
// #include "wdog.h"

// Structs

// Helper macros

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

// static void get_device_core_name(char *pszDeviceCoreName, uint32_t ulDeviceCoreNameSize);
// static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
// static uint16_t get_device_revision();

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

int init()
{
    SYSCTRL_REGS->SYSCTRL_OSC8M &= ~SYSCTRL_OSC8M_PRESC_Msk; // Set OSC8M prescaler to 1
    // rmu_init(RMU_CTRL_PINRMODE_FULL, RMU_CTRL_SYSRMODE_EXTENDED, RMU_CTRL_LOCKUPRMODE_EXTENDED, RMU_CTRL_WDOGRMODE_EXTENDED); // Init RMU and set reset modes

    // emu_init(1); // Init EMU, ignore DCDC and switch digital power immediatly to DVDD

    // cmu_init(); // Init Clocks

    // msc_init(); // Init Flash, RAM and caches

    systick_init(); // Init system tick

    // wdog_init((8 <<_WDOG_CTRL_PERSEL_SHIFT) | (3 << _WDOG_CTRL_WARNSEL_SHIFT)); // Init the watchdog timer, 2049 ms timeout, 75% warning
    // wdog_set_warning_isr(wdog_warning_isr);

    port_init(); // Init GPIOs
    // ldma_init(); // Init LDMA
    // rtcc_init(); // Init RTCC
    // crc_init(); // Init CRC calculation unit
    // adc_init(); // Init ADCs

    // float fAVDDHighThresh, fAVDDLowThresh;
    // float fDVDDHighThresh, fDVDDLowThresh;
    // float fIOVDDHighThresh, fIOVDDLowThresh;

    // emu_vmon_avdd_config(1, 2.8f, &fAVDDLowThresh, 2.92f, &fAVDDHighThresh); // Enable AVDD monitor
    // emu_vmon_dvdd_config(1, 2.8f, &fDVDDLowThresh); // Enable DVDD monitor
    // emu_vmon_iovdd_config(1, 2.85f, &fIOVDDLowThresh); // Enable IOVDD monitor

    // fDVDDHighThresh = fDVDDLowThresh + 0.026f; // Hysteresis from datasheet
    // fIOVDDHighThresh = fIOVDDLowThresh + 0.026f; // Hysteresis from datasheet
    PM_REGS->PM_APBCMASK |= PM_APBCMASK_SERCOM0_Msk;
    GCLK_REGS->GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN_Msk | GCLK_CLKCTRL_GEN_GCLK0 | GCLK_CLKCTRL_ID_SERCOM0_CORE;
    sercom0_init(1000000, 0, SERCOM_SPI_MSB_FIRST, 0, 2);
    PM_REGS->PM_APBCMASK |= PM_APBCMASK_SERCOM1_Msk;
    GCLK_REGS->GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN_Msk | GCLK_CLKCTRL_GEN_GCLK0 | GCLK_CLKCTRL_ID_SERCOM1_CORE;
    GCLK_REGS->GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN_Msk | GCLK_CLKCTRL_GEN_GCLK2 | GCLK_CLKCTRL_ID_SERCOMX_SLOW;
    sercom1_init(SERCOM_I2C_FAST);
    PM_REGS->PM_APBCMASK |= PM_APBCMASK_SERCOM3_Msk;
    GCLK_REGS->GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN_Msk | GCLK_CLKCTRL_GEN_GCLK0 | GCLK_CLKCTRL_ID_SERCOM3_CORE;
    sercom3_init(115200, SERCOM_USART_INT_CTRLA_DORD_LSB | SERCOM_USART_INT_CTRLA_FORM_USART_FRAME_NO_PARITY | SERCOM_USART_INT_CTRLB_SBMODE_1_BIT | SERCOM_SPIM_CTRLB_CHSIZE_8_BIT, 0, 1);

    // i2c0_init(I2C_SLAVE_ADDRESS, 4, 4);
    // i2c0_set_slave_addr_isr(i2c_slave_addr_isr);
    // i2c0_set_slave_tx_data_isr(i2c_slave_tx_data_isr);
    // i2c0_set_slave_rx_data_isr(i2c_slave_rx_data_isr);

    // char szDeviceCoreName[32];
    // char szDeviceName[32];

    // get_device_core_name(szDeviceCoreName, 32);
    // get_device_name(szDeviceName, 32);

    printf("\x1B[2J\x1B[2J\x1B[2J\x1B[2J"); // Clear the screen
    printf("\x1B[H"); // Move cursor to top left corner

    DBGPRINTLN_CTX("IcyRadio PMU v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    // DBGPRINTLN_CTX("Core: %s", szDeviceCoreName);
    // DBGPRINTLN_CTX("Device: %s", szDeviceName);
    // DBGPRINTLN_CTX("Device Revision: 0x%04X", get_device_revision());
    // DBGPRINTLN_CTX("Calibration temperature: %hhu C", (DEVINFO->CAL & _DEVINFO_CAL_TEMP_MASK) >> _DEVINFO_CAL_TEMP_SHIFT);
    DBGPRINTLN_CTX("Flash Size: %hu kB", FLASH_SIZE >> 10);
    DBGPRINTLN_CTX("RAM Size: %hu kB", HRAMC0_SIZE >> 10);
    DBGPRINTLN_CTX("Free RAM: %lu B", get_free_ram());
    // DBGPRINTLN_CTX("Unique ID: %08X-%08X", DEVINFO->UNIQUEH, DEVINFO->UNIQUEL);

    // DBGPRINTLN_CTX("RMU - Reset cause: %hhu", rmu_get_reset_reason());
    // DBGPRINTLN_CTX("RMU - Reset state: %hhu", rmu_get_reset_state());

    // rmu_clear_reset_reason();

    // DBGPRINTLN_CTX("EMU - AVDD Fall Threshold: %.2f mV!", fAVDDLowThresh * 1000);
    // DBGPRINTLN_CTX("EMU - AVDD Rise Threshold: %.2f mV!", fAVDDHighThresh * 1000);
    // DBGPRINTLN_CTX("EMU - AVDD Voltage: %.2f mV", adc_get_avdd());
    // DBGPRINTLN_CTX("EMU - AVDD Status: %s", g_ubAVDDLow ? "LOW" : "OK");
    // DBGPRINTLN_CTX("EMU - DVDD Fall Threshold: %.2f mV!", fDVDDLowThresh * 1000);
    // DBGPRINTLN_CTX("EMU - DVDD Rise Threshold: %.2f mV!", fDVDDHighThresh * 1000);
    // DBGPRINTLN_CTX("EMU - DVDD Voltage: %.2f mV", adc_get_dvdd());
    // DBGPRINTLN_CTX("EMU - DVDD Status: %s", g_ubDVDDLow ? "LOW" : "OK");
    // DBGPRINTLN_CTX("EMU - IOVDD Fall Threshold: %.2f mV!", fIOVDDLowThresh * 1000);
    // DBGPRINTLN_CTX("EMU - IOVDD Rise Threshold: %.2f mV!", fIOVDDHighThresh * 1000);
    // DBGPRINTLN_CTX("EMU - IOVDD Voltage: %.2f mV", adc_get_iovdd());
    // DBGPRINTLN_CTX("EMU - IOVDD Status: %s", g_ubIOVDDLow ? "LOW" : "OK");
    // DBGPRINTLN_CTX("EMU - Core Voltage: %.2f mV", adc_get_corevdd());

    // DBGPRINTLN_CTX("CMU - HFXO Oscillator: %.3f MHz", (float)HFXO_OSC_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFRCO Oscillator: %.3f MHz", (float)HFRCO_OSC_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - AUXHFRCO Oscillator: %.3f MHz", (float)AUXHFRCO_OSC_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - LFXO Oscillator: %.3f kHz", (float)LFXO_OSC_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LFRCO Oscillator: %.3f kHz", (float)LFRCO_OSC_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - ULFRCO Oscillator: %.3f kHz", (float)ULFRCO_OSC_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - HFSRC Clock: %.3f MHz", (float)HFSRC_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HF Clock: %.3f MHz", (float)HF_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFBUS Clock: %.3f MHz", (float)HFBUS_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFCORE Clock: %.3f MHz", (float)HFCORE_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFEXP Clock: %.3f MHz", (float)HFEXP_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFPER Clock: %.3f MHz", (float)HFPER_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFPERB Clock: %.3f MHz", (float)HFPERB_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFPERC Clock: %.3f MHz", (float)HFPERC_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - HFLE Clock: %.3f MHz", (float)HFLE_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - ADC0 Clock: %.3f MHz", (float)ADC0_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - DBG Clock: %.3f MHz", (float)DBG_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - AUX Clock: %.3f MHz", (float)AUX_CLOCK_FREQ / 1000000);
    // DBGPRINTLN_CTX("CMU - LFA Clock: %.3f kHz", (float)LFA_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LESENSE Clock: %.3f kHz", (float)LESENSE_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LETIMER0 Clock: %.3f kHz", (float)LETIMER0_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LFB Clock: %.3f kHz", (float)LFB_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LEUART0 Clock: %.3f kHz", (float)LEUART0_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - SYSTICK Clock: %.3f kHz", (float)SYSTICK_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - CSEN Clock: %.3f kHz", (float)CSEN_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - LFE Clock: %.3f kHz", (float)LFE_CLOCK_FREQ / 1000);
    // DBGPRINTLN_CTX("CMU - RTCC Clock: %.3f kHz", (float)RTCC_CLOCK_FREQ / 1000);

    // DBGPRINTLN_CTX("WDOG - Timeout period: %.3f ms", wdog_get_timeout_period());
    // DBGPRINTLN_CTX("WDOG - Warning period: %.3f ms", wdog_get_warning_period());

    DBGPRINTLN_CTX("Scanning I2C bus 1...");

    for(uint8_t a = 0x08; a < 0x78; a++)
        if(sercom1_i2c_write(a, NULL, 0, SERCOM_I2C_STOP))
            DBGPRINTLN_CTX("  Address 0x%02X ACKed!", a);

    return 0;
}
int main()
{
    uint8_t buf[8];

    UPD350_SELECT();

    sercom0_spi_write_byte(0x0B, 0);

    sercom0_spi_write_byte(0x00, 0);
    sercom0_spi_write_byte(0x00, 0);

    sercom0_spi_write_byte(0x00, 1);

    sercom0_spi_read(buf, 8, 0x00);

    UPD350_UNSELECT();

    DBGPRINTLN_CTX("UPD350 ID: 0x%08X", *(uint32_t *)buf);
    DBGPRINTLN_CTX("UPD350 USB Vendor ID: 0x%04X", *(uint16_t *)(buf + 4));
    DBGPRINTLN_CTX("UPD350 USB Product ID: 0x%04X", *(uint16_t *)(buf + 6));

    while(1)
    {
        static uint64_t ullLastHeartBeat = 0;

        if((g_ullSystemTick > 0 && ullLastHeartBeat == 0) || g_ullSystemTick - ullLastHeartBeat > 2000)
        {
            ullLastHeartBeat = g_ullSystemTick;

            LED_TOGGLE();

            if(LED_STATUS())
                ullLastHeartBeat -= 1900;
        }
    }

    return 0;
}