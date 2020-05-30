#include <sam.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "arm_math.h"
#include "arm_const_structs.h"
#include "dsp.h"
#include "fir.h"
#include "debug_macros.h"
#include "utils.h"
#include "cache.h"
#include "nvic.h"
#include "atomic.h"
#include "pmc.h"
#include "rstc.h"
#include "eefc.h"
#include "xdmac.h"
#include "systick.h"
#include "dbg.h"
#include "wdt.h"
#include "pio.h"
#include "pilot_filter.h"
#include "stereo_pilot_filter.h"
#include "rds_pilot_filter.h"
#include "stereo_filter.h"
#include "rds_filter.h"
#include "audio_filter.h"

// Structs

// Helper macros
#define BASEBAND_I2S_DMA_CHANNEL        0
#define AUDIO_I2S_DMA_CHANNEL           1
#define BASEBAND_SAMPLE_BUFFER_SIZE     4096
#define AUDIO_SAMPLE_BUFFER_SIZE        1024

// Forward declarations
int16_t fm_demod(iq16_t xSample);

static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void load_audio_buffer(int16_t *psLeft, int16_t *psRight);

static void mpx_extract_pilots(int16_t *psMPX, int16_t *psPilot, int16_t *psStereoPilot, int16_t *psRDSPilot);
static void mpx_stereo_audio_demod(int16_t *psMPX, int16_t *psStereoPilot, int16_t *psLeft, int16_t *psRight);

static void init_baseband_i2s();
static void init_audio_i2s();
static void init_control_spi();
static void init_dsp_components();

// Variables
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pBasebandDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pAudioDMADescriptor[2];
volatile uint32_t *pulBasebandBuffer = NULL;
uint32_t *pulAudioBuffer = NULL;
volatile uint8_t ubBasebandReady = 0;
volatile uint8_t ubBasebandOverflow = 0;
volatile uint8_t pubSPIInput[5];
volatile uint8_t ubSPIInputIndex = 0;
volatile uint8_t ubSPIInputLock = 0;
volatile uint8_t pubSPIOutput[3];
volatile uint8_t ubSPIOutputIndex = 0;
volatile uint8_t ubSPIOutputLock = 0;
volatile uint64_t ullProcessingTimeBudget = 0;
uint64_t ullProcessingTimeUsed = 0;
dsp_fm_demod_ctx_t *pFMDemod = NULL;
fir_ctx_t *pPilotFilter = NULL;
fir_ctx_t *pStereoPilotFilter = NULL;
fir_ctx_t *pRDSPilotFilter = NULL;
fir_ctx_t *pStereoFilter = NULL;
fir_ctx_t *pRDSFilter = NULL;
fir_decimator_ctx_t *pAudioFilter[2] = {NULL, NULL};

// ISRs
void _spi0_isr()
{
    uint32_t ulFlags = SPI0->SPI_SR;

    if(ulFlags & SPI_SR_RDRF)
    {
        if(!ubSPIInputLock && ubSPIInputIndex < 5)
            pubSPIInput[ubSPIInputIndex++] = SPI0->SPI_RDR;
        else
            REG_DISCARD(&SPI0->SPI_RDR);
    }

    if(ulFlags & SPI_SR_NSSR)
    {
        DSP_IRQ_DEASSERT();

        if(!ubSPIInputLock)
        {
            if(ubSPIInputIndex == 1 || ubSPIInputIndex == 5)
                ubSPIInputLock = 1;
            else
                ubSPIInputIndex = 0;
        }
    }
}
void _i2sc1_isr()
{
    if(I2SC1->I2SC_SR & I2SC_SR_TXRDY)
    {
        static uint32_t ulCount = 0;
        static uint32_t pulBuffer[2];
        static uint8_t ubBufferInit = 0;

        if(!ubBufferInit)
        {
            for(uint32_t i = 0; i < 2; i++)
            {
                iq16_t xSample = {
                    .i = arm_cos_q15(INT16_MAX * (float)i / 2),
                    .q = arm_sin_q15(INT16_MAX * (float)i / 2)
                };

                pulBuffer[i] = (((uint32_t)xSample.q & 0xFFFF) << 16) | (((uint32_t)xSample.i & 0xFFFF) << 0);

                DBGPRINTLN_CTX("TX Sample #%hhu %08X", i, pulBuffer[i]);
            }

            ubBufferInit = 1;
        }

        I2SC1->I2SC_THR = pulBuffer[ulCount++];

        if(ulCount >= 2)
            ulCount = 0;
    }
}
void fpga_isr()
{
    DBGPRINTLN_CTX("FPGA ISR");
}
void baseband_i2s_dma_isr(uint32_t ulFlags)
{
    if(ulFlags & XDMAC_CIS_BIS)
    {
        static uint64_t ullLastTick = 0;

        ullProcessingTimeBudget = g_ullSystemTick - ullLastTick;

        ullLastTick = g_ullSystemTick;

        if(ubBasebandReady) // Overflow - processing not complete
        {
            ubBasebandOverflow = 1;

            return;
        }

        volatile uint32_t *pulNextDestAddress = (volatile uint32_t *)xdmac_ch_get_next_dst_addr(BASEBAND_I2S_DMA_CHANNEL);

        if(pulNextDestAddress < pulBasebandBuffer || pulNextDestAddress > pulBasebandBuffer + 2 * BASEBAND_SAMPLE_BUFFER_SIZE) // Address out of bounds
            return;

        if(pulNextDestAddress >= pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE)
        {
            dcache_addr_invalidate((uint32_t *)pulBasebandBuffer, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubBasebandReady = 1;
        }
        else
        {
            dcache_addr_invalidate((uint32_t *)pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubBasebandReady = 2;
        }
    }
}

// Functions
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

void load_audio_buffer(int16_t *psLeft, int16_t *psRight)
{
    if(!psLeft)
        return;

    if(!psRight)
        return;

    uint32_t *pulNextAudioSrcAddress = (uint32_t *)xdmac_ch_get_next_src_addr(AUDIO_I2S_DMA_CHANNEL);

    if(pulNextAudioSrcAddress < pulAudioBuffer || pulNextAudioSrcAddress > pulAudioBuffer + 2 * AUDIO_SAMPLE_BUFFER_SIZE) // Address out of bounds
        return;

    uint32_t *pulAudioDestAddress = NULL;

    if(pulNextAudioSrcAddress >= pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE)
        pulAudioDestAddress = pulAudioBuffer;
    else
        pulAudioDestAddress = pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;

    for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
        pulAudioDestAddress[i] = (((uint32_t)psRight[i] & 0xFFFF) << 16) | (((uint32_t)psLeft[i] & 0xFFFF) << 0);

    dcache_addr_clean(pulAudioDestAddress, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));
}

void mpx_extract_pilots(int16_t *psMPX, int16_t *psPilot, int16_t *psStereoPilot, int16_t *psRDSPilot)
{
    if(!psMPX)
        return;

    if(!psPilot)
        return;

    fir_filter(pPilotFilter, psMPX, psPilot);

    arm_scale_q15(psPilot, 0.625f * INT16_MAX, 4, psPilot, BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (0.625 * 2⁴ = 10)

    // Stereo Pilot
    if(psStereoPilot)
    {
        // 19 ^ 2 = 38, HPF to remove uwanted spectrum
        memcpy(psStereoPilot, psPilot, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(int16_t));

        for(uint8_t i = 0; i < 1; i++) // if taking x^n, then loop until i < n - 1
            arm_mult_q15(psStereoPilot, psPilot, psStereoPilot, BASEBAND_SAMPLE_BUFFER_SIZE);

        fir_filter(pStereoPilotFilter, psStereoPilot, NULL);

        arm_scale_q15(psStereoPilot, 1 * INT16_MAX, 2, psStereoPilot, BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (1 * 2² = 4)
    }

    // RDS Pilot
    if(psRDSPilot)
    {
        // 19 ^ 3 = 57, HPF to remove unwanted spectrum
        memcpy(psRDSPilot, psPilot, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(int16_t));

        for(uint8_t i = 0; i < 2; i++) // if taking x^n, then loop until i < n - 1
            arm_mult_q15(psRDSPilot, psPilot, psRDSPilot, BASEBAND_SAMPLE_BUFFER_SIZE);

        fir_filter(pRDSPilotFilter, psRDSPilot, NULL);

        arm_scale_q15(psRDSPilot, 1 * INT16_MAX, 2, psRDSPilot, BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (1 * 2² = 4)
    }
}
void mpx_stereo_audio_demod(int16_t *psMPX, int16_t *psStereoPilot, int16_t *psLeft, int16_t *psRight)
{
    if(!psMPX)
        return;

    if(!psStereoPilot)
        return;

    if(!psLeft)
        return;

    if(!psRight)
        return;

    // Mono audio (Left + Right)
    int16_t psMonoAudio[AUDIO_SAMPLE_BUFFER_SIZE];

    fir_decimator_filter(pAudioFilter[0], psMPX, psMonoAudio);

    arm_scale_q15(psMonoAudio, 0.5f * INT16_MAX, 0, psMonoAudio, AUDIO_SAMPLE_BUFFER_SIZE); // Attenuate to increase stereo ratio (TODO: AGC) (0.5 * 2⁰ = 0.5)

    // Stereo audio (Left - Right)
    int16_t psStereoAudio[BASEBAND_SAMPLE_BUFFER_SIZE];

    fir_filter(pStereoFilter, psMPX, psStereoAudio); // Bandpass the L-R (38k) subcarrier

    arm_mult_q15(psStereoAudio, psStereoPilot, psStereoAudio, BASEBAND_SAMPLE_BUFFER_SIZE); // Bring it to baseband

    fir_decimator_filter(pAudioFilter[1], psStereoAudio, NULL);

    // Mix audio channels
    arm_add_q15(psMonoAudio, psStereoAudio, psLeft, AUDIO_SAMPLE_BUFFER_SIZE);  // (L + R) + (L - R) = L + R + L - R = 2L
    arm_sub_q15(psMonoAudio, psStereoAudio, psRight, AUDIO_SAMPLE_BUFFER_SIZE); // (L + R) - (L - R) = L + R - L + R = 2R
}

void init_baseband_i2s()
{
    free((void *)pulBasebandBuffer);

    pulBasebandBuffer = (volatile uint32_t *)malloc(2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulBasebandBuffer)
        return;

    memset((void *)pulBasebandBuffer, 0, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero baseband sample buffer

    dcache_addr_clean(pulAudioBuffer, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC1_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC1->I2SC_CR |= I2SC_CR_SWRST; // Reset baseband I2S peripheral
    I2SC1->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure baseband I2S peripheral

    xdmac_ch_disable(BASEBAND_I2S_DMA_CHANNEL);

    xdmac_ch_set_isr(BASEBAND_I2S_DMA_CHANNEL, baseband_i2s_dma_isr);

    pBasebandDMADescriptor[0].NDA = &pBasebandDMADescriptor[1];
    pBasebandDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[0].SA = (void *)&(I2SC1->I2SC_RHR);
    pBasebandDMADescriptor[0].DA = pulBasebandBuffer;
    pBasebandDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC1_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pBasebandDMADescriptor[0].BC = 0;
    pBasebandDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pBasebandDMADescriptor[0].SUS = 0x000000;
    pBasebandDMADescriptor[0].DUS = 0x000000;

    pBasebandDMADescriptor[1].NDA = &pBasebandDMADescriptor[0];
    pBasebandDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[1].SA = (void *)&(I2SC1->I2SC_RHR);
    pBasebandDMADescriptor[1].DA = pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC1_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pBasebandDMADescriptor[1].BC = 0;
    pBasebandDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pBasebandDMADescriptor[1].SUS = 0x000000;
    pBasebandDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pBasebandDMADescriptor, sizeof(pBasebandDMADescriptor));

    xdmac_ch_load(BASEBAND_I2S_DMA_CHANNEL, pBasebandDMADescriptor, 3, 0);
    xdmac_ch_enable(BASEBAND_I2S_DMA_CHANNEL);

    I2SC1->I2SC_SCR = I2SC_SCR_MASK; // Clear all interrupts
    IRQ_CLEAR(I2SC1_IRQn); // Clear pending vector
    IRQ_SET_PRIO(I2SC1_IRQn, 3, 0); // Set priority 3,0
    IRQ_ENABLE(I2SC1_IRQn); // Enable vector
    I2SC1->I2SC_IER = I2SC_IER_RXRDY | I2SC_IER_TXRDY; // Enable TX & RX interrupt requests

    I2SC1->I2SC_CR = I2SC_CR_TXEN | I2SC_CR_RXEN; // Enable TX & RX
}
void init_audio_i2s()
{
    free(pulAudioBuffer);

    pulAudioBuffer = (uint32_t *)malloc(2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulAudioBuffer)
        return;

    memset(pulAudioBuffer, 0, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero audio sample buffer

    dcache_addr_clean(pulAudioBuffer, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC0->I2SC_CR |= I2SC_CR_SWRST; // Reset audio I2S peripheral
    I2SC0->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure audio I2S peripheral

    xdmac_ch_disable(AUDIO_I2S_DMA_CHANNEL);

    pAudioDMADescriptor[0].NDA = &pAudioDMADescriptor[1];
    pAudioDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[0].SA = pulAudioBuffer;
    pAudioDMADescriptor[0].DA = (void *)&(I2SC0->I2SC_THR);
    pAudioDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC0_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pAudioDMADescriptor[0].BC = 0;
    pAudioDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pAudioDMADescriptor[0].SUS = 0x000000;
    pAudioDMADescriptor[0].DUS = 0x000000;

    pAudioDMADescriptor[1].NDA = &pAudioDMADescriptor[0];
    pAudioDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[1].SA = pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[1].DA = (void *)&(I2SC0->I2SC_THR);
    pAudioDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC0_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pAudioDMADescriptor[1].BC = 0;
    pAudioDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pAudioDMADescriptor[1].SUS = 0x000000;
    pAudioDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pAudioDMADescriptor, sizeof(pAudioDMADescriptor));

    xdmac_ch_load(AUDIO_I2S_DMA_CHANNEL, pAudioDMADescriptor, 3, 0);
    xdmac_ch_enable(AUDIO_I2S_DMA_CHANNEL);

    I2SC0->I2SC_CR = I2SC_CR_TXEN; // Enable TX
}
void init_control_spi()
{
    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (SPI0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    SPI0->SPI_CR |= SPI_CR_SWRST; // Reset control SPI peripheral
    SPI0->SPI_MR = SPI_MR_MSTR_SLAVE; // Configure control SPI peripheral
    SPI0->SPI_CSR[0] = SPI_CSR_BITS_8_BIT | SPI_CSR_NCPHA_VALID_LEADING_EDGE | SPI_CSR_CPOL_IDLE_LOW; // Configure control SPI peripheral

    IRQ_CLEAR(SPI0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SPI0_IRQn, 2, 0); // Set priority 2,0
    IRQ_ENABLE(SPI0_IRQn); // Enable vector
    SPI0->SPI_IER = SPI_IER_NSSR | SPI_IER_RDRF; // Enable interrupts

    SPI0->SPI_CR = SPI_CR_SPIEN; // Enable SPI
}
void init_dsp_components()
{
    // FM Demodulator
    pFMDemod = dsp_fm_demod_init();

    if(pFMDemod)
        DBGPRINTLN_CTX("FM Demodulator intialized!");
    else
        DBGPRINTLN_CTX("Failed FM Demodulator intialization!");

    // 19 kHz pilot band-pass filter
    pPilotFilter = fir_init(pilot_filter_taps_size, pilot_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pPilotFilter)
        DBGPRINTLN_CTX("19 kHz pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed 19 kHz pilot FIR intialization!");

    // 38 kHz stereo pilot high-pass filter
    pStereoPilotFilter = fir_init(stereo_pilot_filter_taps_size, stereo_pilot_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pStereoPilotFilter)
        DBGPRINTLN_CTX("Stereo pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed Stereo pilot FIR intialization!");

    // 57 kHz RDS pilot high-pass filter
    pRDSPilotFilter = fir_init(rds_pilot_filter_taps_size, rds_pilot_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRDSPilotFilter)
        DBGPRINTLN_CTX("RDS pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed RDS pilot FIR intialization!");

    // Stereo band-pass filter
    pStereoFilter = fir_init(stereo_filter_taps_size, stereo_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pStereoFilter)
        DBGPRINTLN_CTX("Stereo FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed Stereo FIR intialization!");

    // RDS band-pass filter
    pRDSFilter = fir_init(rds_filter_taps_size, rds_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRDSFilter)
        DBGPRINTLN_CTX("RDS FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed RDS FIR intialization!");

    // Final audio filters
    pAudioFilter[0] = fir_decimator_init(audio_filter_taps_size, 4, audio_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pAudioFilter[0])
        DBGPRINTLN_CTX("Mono audio FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed Mono audio FIR intialization!");

    pAudioFilter[1] = fir_decimator_init(audio_filter_taps_size, 4, audio_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pAudioFilter[1])
        DBGPRINTLN_CTX("Stereo audio FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed Stereo audio FIR intialization!");
}
int init()
{
    icache_enable();
    dcache_enable();

    rstc_init(1, 0, 0);

    pmc_init();
    pmc_update_clocks();

    eefc_init(); // Init flash controller

    dbg_init(); // Init Debug module
    dbg_swo_config(BIT(0) | BIT(1), 12000000); // Init SWO channels 0 and 1 at 12 MHz

    systick_init(); // Init system tick

    wdt_init(10000); // Init the watchdog timer, 10 s timeout

    pio_init();
    xdmac_init();

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
    init_baseband_i2s();
    init_audio_i2s();
    init_control_spi();
    DBGPRINTLN_CTX("Interfaces initialized!");

    init_dsp_components();
    DBGPRINTLN_CTX("DSP components initialized!");

    DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);

    while(1)
    {
        wdt_feed();

        static uint64_t ullLastLEDTick = 0;
        static uint64_t ullLastDiagnosticTick = 0;

        if(g_ullSystemTick - ullLastLEDTick > 250)
        {
            ullLastLEDTick = g_ullSystemTick;

            LED_TOGGLE();
        }

        if(g_ullSystemTick - ullLastDiagnosticTick > 2000)
        {
            ullLastDiagnosticTick = g_ullSystemTick;

            DBGPRINTLN_CTX("----------------------------------");
            DBGPRINTLN_CTX("Processing time budget: %llu ms", ullProcessingTimeBudget);
            DBGPRINTLN_CTX("Processing time used: %llu ms", ullProcessingTimeUsed);
            DBGPRINTLN_CTX("Budget used: %.2f %%", (float)ullProcessingTimeUsed * 100.f / ullProcessingTimeBudget);
            DBGPRINTLN_CTX("Baseband buffer overflow: %s", ubBasebandOverflow ? "yes" : "no");
            DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);

            if(ubSPIInputLock)
            {
                DBGPRINT_CTX("SPI Data [");

                for(uint8_t i = 0; i < ubSPIInputIndex; i++)
                    DBGPRINT("%02X", pubSPIInput[i]);

                DBGPRINTLN("]");

                if(ubSPIInputIndex == 1)
                {
                    //SPI0->SPI_TDR   = 0xBB;
                    pubSPIOutput[0] = 0xCC;
                    pubSPIOutput[1] = 0xDD;
                    pubSPIOutput[2] = 0xEE;

                    ubSPIOutputIndex = 0;
                    ubSPIOutputLock = 1;

                    DSP_IRQ_ASSERT();
                }

                ubSPIInputIndex = 0;
                ubSPIInputLock = 0;
            }

            ubBasebandOverflow = 0;
        }

        if(ubBasebandReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = g_ullSystemTick;

            // Figure out which baseband buffer has new samples
            volatile uint32_t *pulBaseband = pulBasebandBuffer + (ubBasebandReady - 1) * BASEBAND_SAMPLE_BUFFER_SIZE;

            // Process samples
            int16_t psMPX[BASEBAND_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
            {
                // Build IQ pair from 32-bit I2S word
                iq16_t xSample = {
                    .i = pulBaseband[i] & 0xFFFF,   // Left I2S channel  -> I
                    .q = pulBaseband[i] >> 16       // Right I2S channel -> Q
                };

                xSample.i *= 10; // TODO: AGC
                xSample.q *= 10;

                // FM Demodulate
                psMPX[i] = dsp_fm_demod(pFMDemod, xSample);
            }

            // Extract pilots
            int16_t psPilot[BASEBAND_SAMPLE_BUFFER_SIZE];
            int16_t psStereoPilot[BASEBAND_SAMPLE_BUFFER_SIZE];
            //int16_t psRDSPilot[BASEBAND_SAMPLE_BUFFER_SIZE];

            mpx_extract_pilots(psMPX, psPilot, psStereoPilot, NULL);

            // Stereo audio
            int16_t psLeftAudio[AUDIO_SAMPLE_BUFFER_SIZE];
            int16_t psRightAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            mpx_stereo_audio_demod(psMPX, psStereoPilot, psLeftAudio, psRightAudio);

            // Load audio buffer
            load_audio_buffer(psLeftAudio, psRightAudio);

            // Declare done processing baseband buffer
            ubBasebandReady = 0;

            // Stop performance counters
            ullProcessingTimeUsed = g_ullSystemTick - ullProcessingStart;
        }
    }

    return 0;
}