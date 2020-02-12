#include <sam.h>
#include <stdlib.h>
#include <math.h>
#include "debug_macros.h"
#include "utils.h"
#include "cache.h"
#include "nvic.h"
#include "atomic.h"
#include "pmc.h"
#include "rstc.h"
#include "eefc.h"
#include "systick.h"
#include "dbg.h"
#include "wdt.h"
#include "pio.h"
#include "iq.h"

// Structs

// Forward declarations
int16_t fm_demod(iq16_t xSample);

static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void init_baseband();
static void init_audio();

// Variables
volatile iq16_t x[8192];
volatile iq16_t xDemod;
volatile uint32_t cnt = 0;

// ISRs
void _i2sc0_isr()
{
    uint16_t x = xDemod.i;

    if(I2SC0->I2SC_SR & I2SC_SR_TXRDY)
        I2SC0->I2SC_THR = ((uint32_t)x << 16) | x;
}
void _i2sc1_isr()
{
    if(I2SC1->I2SC_SR & I2SC_SR_RXRDY)
    {
        uint32_t ulSample = I2SC1->I2SC_RHR;

        iq16_t xSample = {
            .i = ulSample >> 16,
            .q = ulSample & 0xFFFF
        };

        xSample.i *= 30;
        xSample.q *= 30;

        xDemod.i = fm_demod(xSample);
        xDemod.q = 0;

        if(cnt >= 8192)
            return;

        x[cnt++] = xDemod;
    }
}
void fpga_isr()
{
    DBGPRINTLN_CTX("FPGA ISR");
}

// Functions
uint16_t abs16(int16_t sValue)
{
    uint16_t usSign = sValue >> 15;     // make a mask of the sign bit

    sValue ^= usSign;                   // toggle the bits if value is negative
    sValue += usSign & 1;               // add one if value was negative

    return sValue;
}
int16_t atan2_int16(int16_t y, int16_t x)
{
    uint16_t absx = abs16(x);
    uint16_t absy = abs16(y);

    if(absx > INT16_MAX)
        absx = INT16_MAX;

    if(absy > INT16_MAX)
        absy = INT16_MAX;

    int32_t denominator = absy + absx;

    if (denominator == 0)
        return 0; // avoid DBZ

    int32_t numerator = (int32_t)(TAU / 8) * (int32_t)(absy - absx);

    int16_t theta = ((numerator << 3) / denominator) >> 3;

    if (y >= 0) // Note: Cartesian plane quadrants
    {
        if (x >= 0)
            return (TAU * 1 / 8) + theta; // quadrant I    Theta counts 'towards the y axis',
        else
            return (TAU * 3 / 8) - theta; // quadrant II   So, negate it in quadrants II and IV
    }
    else
    {
        if (x < 0)
            return (TAU * -3 / 8) + theta; // quadrant III. -3/8 = 5/8
        else
            return (TAU * -1 / 8) - theta; // quadrant IV.  -1/8 = 7/8
    }
}

int16_t fm_demod(iq16_t xSample)
{
    static iq16_t xPrevSample = {0, 0}; // Keep the previous sample to calculate angle diff

    // Here we multiply the current sample by the conjugate of the previous to get the angle diff
    // instead of keeping the previous angle and differentiating after arctan
    // this saves us from unwrapping the angle
    iq16_t xDiff = IQ16_PRODUCT(xSample, IQ16_CONJUGATE(xPrevSample));

    xPrevSample = xSample;

    // Demodulate by getting the angle from the diff vector
    return atan2_int16(xDiff.q, xDiff.i);
}

void reset()
{
    SCB->AIRCR = 0x05FA0000 | SCB_AIRCR_SYSRESETREQ_Msk;

    while(1);
}
void sleep()
{
    SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk; // Configure Deep Sleep (EM2/3)

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        __DMB(); // Wait for all memory transactions to finish before memory access
        __DSB(); // Wait for all memory transactions to finish before executing instructions
        __ISB(); // Wait for all memory transactions to finish before fetching instructions
        __SEV(); // Set the event flag to ensure the next WFE will be a NOP
        __WFE(); // NOP and clear the event flag
        __WFE(); // Wait for event
        __NOP(); // Prevent debugger crashes
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

void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize)
{
    uint8_t ubFamily = (CHIPID->CHIPID_CIDR & CHIPID_CIDR_ARCH_Msk) >> CHIPID_CIDR_ARCH_Pos;
    const char* szFamily = "?";

    switch(ubFamily)
    {
        case 0x10: szFamily = "SAME70"; break;
        case 0x11: szFamily = "SAMS70"; break;
        case 0x12: szFamily = "SAMV71"; break;
        case 0x13: szFamily = "SAMV70"; break;
    }

    uint8_t ubPackage = CHIPID->CHIPID_EXID;
    char cPackage = '?';

    if(ubPackage == 2)
        cPackage = 'Q';
    else if(ubPackage == 1)
        cPackage = 'N';
    else if(ubPackage == 0)
        cPackage = 'J';

    uint8_t ubFlashSize = (CHIPID->CHIPID_CIDR & CHIPID_CIDR_NVPSIZ_Msk) >> CHIPID_CIDR_NVPSIZ_Pos;
    const char *szFlashSize = "?";

    switch(ubFlashSize)
    {
        case 0xA: szFlashSize = "19"; break;
        case 0xC: szFlashSize = "20"; break;
        case 0xE: szFlashSize = "21"; break;
    }

    snprintf(pszDeviceName, ulDeviceNameSize, "AT%s%c%s", szFamily, cPackage, szFlashSize);
}
uint8_t get_device_revision()
{
    return (CHIPID->CHIPID_CIDR & CHIPID_CIDR_VERSION_Msk) >> CHIPID_CIDR_VERSION_Pos;
}

void init_baseband()
{
    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC1_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC1->I2SC_CR |= I2SC_CR_SWRST; // Reset baseband I2S peripheral
    I2SC1->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure baseband I2S peripheral

    I2SC1->I2SC_SCR = I2SC_SCR_MASK; // Clear all interrupts
    IRQ_CLEAR(I2SC1_IRQn); // Clear pending vector
    IRQ_SET_PRIO(I2SC1_IRQn, 3, 0); // Set priority 3,0
    IRQ_ENABLE(I2SC1_IRQn); // Enable vector
    I2SC1->I2SC_IER = I2SC_IER_RXRDY; // Enable TX & RX interrupt requests

    I2SC1->I2SC_CR = I2SC_CR_RXEN; // Enable TX & RX
}
void init_audio()
{
    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC0->I2SC_CR |= I2SC_CR_SWRST; // Reset baseband I2S peripheral
    I2SC0->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure baseband I2S peripheral

    I2SC0->I2SC_SCR = I2SC_SCR_MASK; // Clear all interrupts
    IRQ_CLEAR(I2SC0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(I2SC0_IRQn, 3, 0); // Set priority 3,0
    IRQ_ENABLE(I2SC0_IRQn); // Enable vector
    I2SC0->I2SC_IER = I2SC_IER_TXRDY; // Enable TX & RX interrupt requests

    I2SC0->I2SC_CR = I2SC_CR_TXEN; // Enable TX & RX
}
int init()
{
    icache_enable();
    //dcache_enable(); TODO: data cache management

    rstc_init(1, 0, 0);

    pmc_init();
    pmc_update_clocks();

    eefc_init(); // Init flash controller

    dbg_init(); // Init Debug module
    dbg_swo_config(BIT(0) | BIT(1), 6000000); // Init SWO channels 0 and 1 at 6 MHz

    systick_init(); // Init system tick

    wdt_init(10000); // Init the watchdog timer, 10 s timeout

    pio_init();

    char szDeviceName[32];
    uint32_t ulUniqueID[4];

    get_device_name(szDeviceName, 32);
    eefc_get_unique_id(ulUniqueID);

    DBGPRINTLN_CTX("IcyRadio DSP v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    DBGPRINTLN_CTX("Device: %s", szDeviceName);
    DBGPRINTLN_CTX("Device Revision: %hhu", get_device_revision());
    DBGPRINTLN_CTX("Flash Size: %hu KiB", eefc_get_flash_size() >> 10);
    DBGPRINTLN_CTX("ITCM Size: %hu KiB", eefc_get_tcm_size() >> 10);
    DBGPRINTLN_CTX("DTCM Size: %hu KiB", eefc_get_tcm_size() >> 10);
    DBGPRINTLN_CTX("RAM Size: %hu KiB", eefc_get_sram_size() >> 10);
    DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);
    DBGPRINTLN_CTX("Unique ID: %08X-%08X-%08X-%08X", ulUniqueID[0], ulUniqueID[1], ulUniqueID[2], ulUniqueID[3]);

    DBGPRINTLN_CTX("RSTC - Reset cause: %hhu", rstc_get_reset_reason());

    DBGPRINTLN_CTX("PMC - MAINXO Oscillator: %.1f MHz", (float)MAINXO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - MAINRCO Oscillator: %.1f MHz", (float)MAINRCO_OSC_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - SLOWXO Oscillator: %.1f kHz", (float)SLOWXO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("PMC - SLOWRCO Oscillator: %.1f kHz", (float)SLOWRCO_OSC_FREQ / 1000);
    DBGPRINTLN_CTX("PMC - MAINCK Clock: %.1f MHz", (float)MAINCK_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - SLCK Clock: %.1f kHz", (float)SLCK_CLOCK_FREQ / 1000);
    DBGPRINTLN_CTX("PMC - PLLACK Clock: %.1f MHz", (float)PLLACK_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - UPLLCK Clock: %.1f MHz", (float)UPLLCK_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - MCK Clock: %.1f MHz", (float)MCK_CLOCK_FREQ / 1000000);
    DBGPRINTLN_CTX("PMC - FCLK Clock: %.1f MHz", (float)FCLK_CLOCK_FREQ / 1000000);

    delay_ms(100);

    return 0;
}
int main()
{
    init_baseband();
    init_audio();

    while(1)
    {
        wdt_feed();

        static uint8_t done = 0;

        if(cnt >= 8192 && !done)
        {
            done = 1;

            DBGPRINTLN_CTX("REAL");

            for(uint32_t i = 0; i < cnt; i++)
            {
                DBGPRINTLN_CTX("%.6f\t%.6f", (float)x[i].i / INT16_MAX, (float)x[i].q / INT16_MAX);

                if(!(i % 20))
                    delay_ms(10);

                wdt_feed();
            }
        }

        delay_ms(500);
        LED_TOGGLE();
    }

    return 0;
}