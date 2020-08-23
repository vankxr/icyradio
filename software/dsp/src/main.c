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
#include "trng.h"
#include "baseband_filter.h"
#include "pilot_filter.h"
#include "stereo_pilot_filter.h"
#include "rds_pilot_filter.h"
#include "stereo_filter.h"
#include "rds_filter.h"
#include "audio_filter.h"

// Structs

// Helper macros
#define TX_BASEBAND_I2S_DMA_CHANNEL     0
#define RX_BASEBAND_I2S_DMA_CHANNEL     1
#define TX_AUDIO_I2S_DMA_CHANNEL        2
#define RX_AUDIO_I2S_DMA_CHANNEL        3
#define BASEBAND_SAMPLE_BUFFER_SIZE     4096
#define FM_BASEBAND_SAMPLE_BUFFER_SIZE  2048
#define AUDIO_SAMPLE_BUFFER_SIZE        512

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void load_tx_baseband_buffer(iq16_t *pSamples);
static void load_rx_audio_buffer(int16_t *psLeft, int16_t *psRight);

static void mpx_extract_pilots(int16_t *psMPX, int16_t *psPilot, int16_t *psStereoPilot, int16_t *psRDSPilot);
static void mpx_stereo_audio_demod(int16_t *psMPX, int16_t *psStereoPilot, int16_t *psLeft, int16_t *psRight);

static void init_baseband_i2s();
static void init_audio_i2s();
static void init_dsp_components();

// Variables
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pTXBasebandDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pRXBasebandDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pTXAudioDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pRXAudioDMADescriptor[2];
uint32_t *pulTXBasebandBuffer = NULL;
volatile uint32_t *pulRXBasebandBuffer = NULL;
uint32_t *pulRXAudioBuffer = NULL;
volatile uint32_t *pulTXAudioBuffer = NULL;
volatile uint8_t ubTXAudioReady = 0;
volatile uint8_t ubTXAudioOverflow = 0;
volatile uint8_t ubRXBasebandReady = 0;
volatile uint8_t ubRXBasebandOverflow = 0;
volatile uint64_t ullTXProcessingTimeBudget = 0;
uint64_t ullTXProcessingTimeUsed = 0;
volatile uint64_t ullRXProcessingTimeBudget = 0;
uint64_t ullRXProcessingTimeUsed = 0;
dsp_fm_demod_ctx_t *pRXFMDemod = NULL;
fir_decimator_complex_ctx_t *pRXBasebandFilter = NULL;
fir_ctx_t *pRXPilotFilter = NULL;
fir_ctx_t *pRXStereoPilotFilter = NULL;
fir_ctx_t *pRXRDSPilotFilter = NULL;
fir_ctx_t *pRXStereoFilter = NULL;
fir_ctx_t *pRXRDSFilter = NULL;
fir_decimator_ctx_t *pRXAudioFilter[2] = {NULL, NULL};

// ISRs
void ITCM_CODE fpga_isr()
{
    DBGPRINTLN_CTX("FPGA ISR");
}
void ITCM_CODE tx_audio_i2s_dma_isr(uint32_t ulFlags)
{
    if(ulFlags & XDMAC_CIS_BIS)
    {
        static uint64_t ullLastTick = 0;

        ullTXProcessingTimeBudget = g_ullSystemTick - ullLastTick;

        ullLastTick = g_ullSystemTick;

        if(ubTXAudioReady) // Overflow - processing not complete
        {
            ubTXAudioOverflow = 1;

            return;
        }

        volatile uint32_t *pulNextDestAddress = (volatile uint32_t *)xdmac_ch_get_next_dst_addr(TX_AUDIO_I2S_DMA_CHANNEL);

        if(pulNextDestAddress < pulTXAudioBuffer || pulNextDestAddress > pulTXAudioBuffer + 2 * AUDIO_SAMPLE_BUFFER_SIZE) // Address out of bounds
            return;

        if(pulNextDestAddress >= pulTXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE)
        {
            dcache_addr_invalidate((uint32_t *)pulTXAudioBuffer, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubTXAudioReady = 1;
        }
        else
        {
            dcache_addr_invalidate((uint32_t *)pulTXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubTXAudioReady = 2;
        }
    }
}
void ITCM_CODE rx_baseband_i2s_dma_isr(uint32_t ulFlags)
{
    if(ulFlags & XDMAC_CIS_BIS)
    {
        static uint64_t ullLastTick = 0;

        ullRXProcessingTimeBudget = g_ullSystemTick - ullLastTick;

        ullLastTick = g_ullSystemTick;

        if(ubRXBasebandReady) // Overflow - processing not complete
        {
            ubRXBasebandReady = 1;

            return;
        }

        volatile uint32_t *pulNextDestAddress = (volatile uint32_t *)xdmac_ch_get_next_dst_addr(RX_BASEBAND_I2S_DMA_CHANNEL);

        if(pulNextDestAddress < pulRXBasebandBuffer || pulNextDestAddress > pulRXBasebandBuffer + 2 * BASEBAND_SAMPLE_BUFFER_SIZE) // Address out of bounds
            return;

        if(pulNextDestAddress >= pulRXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE)
        {
            dcache_addr_invalidate((uint32_t *)pulRXBasebandBuffer, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubRXBasebandReady = 1;
        }
        else
        {
            dcache_addr_invalidate((uint32_t *)pulRXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubRXBasebandReady = 2;
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

void load_tx_baseband_buffer(iq16_t *pSamples)
{
    if(!pSamples)
        return;

    uint32_t *pulNextSrcAddress = (uint32_t *)xdmac_ch_get_next_src_addr(TX_BASEBAND_I2S_DMA_CHANNEL);

    if(pulNextSrcAddress < pulTXBasebandBuffer || pulNextSrcAddress > pulTXBasebandBuffer + 2 * BASEBAND_SAMPLE_BUFFER_SIZE) // Address out of bounds
        return;

    uint32_t *pulDestAddress = NULL;

    if(pulNextSrcAddress >= pulTXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE)
        pulDestAddress = pulTXBasebandBuffer;
    else
        pulDestAddress = pulTXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;

    for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
        pulDestAddress[i] = (((uint32_t)pSamples[i].q & 0xFFFF) << 16) | (((uint32_t)pSamples[i].i & 0xFFFF) << 0);

    dcache_addr_clean(pulDestAddress, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));
}
void load_rx_audio_buffer(int16_t *psLeft, int16_t *psRight)
{
    if(!psLeft)
        return;

    if(!psRight)
        return;

    uint32_t *pulNextSrcAddress = (uint32_t *)xdmac_ch_get_next_src_addr(RX_AUDIO_I2S_DMA_CHANNEL);

    if(pulNextSrcAddress < pulRXAudioBuffer || pulNextSrcAddress > pulRXAudioBuffer + 2 * AUDIO_SAMPLE_BUFFER_SIZE) // Address out of bounds
        return;

    uint32_t *pulDestAddress = NULL;

    if(pulNextSrcAddress >= pulRXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE)
        pulDestAddress = pulRXAudioBuffer;
    else
        pulDestAddress = pulRXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;

    for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
        pulDestAddress[i] = (((uint32_t)psRight[i] & 0xFFFF) << 16) | (((uint32_t)psLeft[i] & 0xFFFF) << 0);

    dcache_addr_clean(pulDestAddress, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));
}

void mpx_extract_pilots(int16_t *psMPX, int16_t *psPilot, int16_t *psStereoPilot, int16_t *psRDSPilot)
{
    if(!psMPX)
        return;

    if(!psPilot)
        return;

    fir_filter(pRXPilotFilter, psMPX, psPilot);

    arm_scale_q15(psPilot, 0.625f * INT16_MAX, 4, psPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (0.625 * 2⁴ = 10)

    // Stereo Pilot
    if(psStereoPilot)
    {
        // 19 ^ 2 = 38, HPF to remove uwanted spectrum
        arm_copy_q15(psPilot, psStereoPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

        for(uint8_t i = 0; i < 1; i++) // if taking x^n, then loop until i < n - 1
            arm_mult_q15(psStereoPilot, psPilot, psStereoPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

        fir_filter(pRXStereoPilotFilter, psStereoPilot, NULL);

        arm_scale_q15(psStereoPilot, 1 * INT16_MAX, 2, psStereoPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (1 * 2² = 4)
    }

    // RDS Pilot
    if(psRDSPilot)
    {
        // 19 ^ 3 = 57, HPF to remove unwanted spectrum
        arm_copy_q15(psPilot, psRDSPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

        for(uint8_t i = 0; i < 2; i++) // if taking x^n, then loop until i < n - 1
            arm_mult_q15(psRDSPilot, psPilot, psRDSPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

        fir_filter(pRXRDSPilotFilter, psRDSPilot, NULL);

        arm_scale_q15(psRDSPilot, 1 * INT16_MAX, 2, psRDSPilot, FM_BASEBAND_SAMPLE_BUFFER_SIZE); // Apply some gain (1 * 2² = 4)
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

    fir_decimator_filter(pRXAudioFilter[0], psMPX, psMonoAudio);

    arm_scale_q15(psMonoAudio, 0.5f * INT16_MAX, 0, psMonoAudio, AUDIO_SAMPLE_BUFFER_SIZE); // Attenuate to increase stereo ratio (TODO: AGC) (0.5 * 2⁰ = 0.5)

    // Stereo audio (Left - Right)
    int16_t psStereoAudio[FM_BASEBAND_SAMPLE_BUFFER_SIZE];

    fir_filter(pRXStereoFilter, psMPX, psStereoAudio); // Bandpass the L-R (38k) subcarrier

    arm_mult_q15(psStereoAudio, psStereoPilot, psStereoAudio, FM_BASEBAND_SAMPLE_BUFFER_SIZE); // Bring it to baseband

    fir_decimator_filter(pRXAudioFilter[1], psStereoAudio, NULL);

    // Mix audio channels
    arm_add_q15(psMonoAudio, psStereoAudio, psLeft, AUDIO_SAMPLE_BUFFER_SIZE);  // (L + R) + (L - R) = L + R + L - R = 2L
    arm_sub_q15(psMonoAudio, psStereoAudio, psRight, AUDIO_SAMPLE_BUFFER_SIZE); // (L + R) - (L - R) = L + R - L + R = 2R
}

void init_baseband_i2s()
{
    free(pulTXBasebandBuffer);

    pulTXBasebandBuffer = (uint32_t *)malloc(2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulTXBasebandBuffer)
        return;

    memset(pulTXBasebandBuffer, 0, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero TX baseband sample buffer

    dcache_addr_clean(pulTXBasebandBuffer, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    free((void *)pulRXBasebandBuffer);

    pulRXBasebandBuffer = (volatile uint32_t *)malloc(2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulRXBasebandBuffer)
        return;

    memset((void *)pulRXBasebandBuffer, 0, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero RX baseband sample buffer

    dcache_addr_clean((void *)pulRXBasebandBuffer, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC1_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC1->I2SC_CR |= I2SC_CR_SWRST; // Reset baseband I2S peripheral
    I2SC1->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure baseband I2S peripheral

    xdmac_ch_disable(TX_BASEBAND_I2S_DMA_CHANNEL);

    pTXBasebandDMADescriptor[0].NDA = &pTXBasebandDMADescriptor[1];
    pTXBasebandDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pTXBasebandDMADescriptor[0].SA = pulTXBasebandBuffer;
    pTXBasebandDMADescriptor[0].DA = (void *)&(I2SC1->I2SC_THR);
    pTXBasebandDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC1_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pTXBasebandDMADescriptor[0].BC = 0;
    pTXBasebandDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pTXBasebandDMADescriptor[0].SUS = 0x000000;
    pTXBasebandDMADescriptor[0].DUS = 0x000000;

    pTXBasebandDMADescriptor[1].NDA = &pTXBasebandDMADescriptor[0];
    pTXBasebandDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pTXBasebandDMADescriptor[1].SA = pulTXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;
    pTXBasebandDMADescriptor[1].DA = (void *)&(I2SC1->I2SC_THR);
    pTXBasebandDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC1_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pTXBasebandDMADescriptor[1].BC = 0;
    pTXBasebandDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pTXBasebandDMADescriptor[1].SUS = 0x000000;
    pTXBasebandDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pTXBasebandDMADescriptor, sizeof(pTXBasebandDMADescriptor));

    xdmac_ch_load(TX_BASEBAND_I2S_DMA_CHANNEL, pTXBasebandDMADescriptor, 3, 0);
    xdmac_ch_enable(TX_BASEBAND_I2S_DMA_CHANNEL);

    xdmac_ch_disable(RX_BASEBAND_I2S_DMA_CHANNEL);

    xdmac_ch_set_isr(RX_BASEBAND_I2S_DMA_CHANNEL, rx_baseband_i2s_dma_isr);

    pRXBasebandDMADescriptor[0].NDA = &pRXBasebandDMADescriptor[1];
    pRXBasebandDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pRXBasebandDMADescriptor[0].SA = (void *)&(I2SC1->I2SC_RHR);
    pRXBasebandDMADescriptor[0].DA = pulRXBasebandBuffer;
    pRXBasebandDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC1_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pRXBasebandDMADescriptor[0].BC = 0;
    pRXBasebandDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pRXBasebandDMADescriptor[0].SUS = 0x000000;
    pRXBasebandDMADescriptor[0].DUS = 0x000000;

    pRXBasebandDMADescriptor[1].NDA = &pRXBasebandDMADescriptor[0];
    pRXBasebandDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pRXBasebandDMADescriptor[1].SA = (void *)&(I2SC1->I2SC_RHR);
    pRXBasebandDMADescriptor[1].DA = pulRXBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;
    pRXBasebandDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC1_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pRXBasebandDMADescriptor[1].BC = 0;
    pRXBasebandDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pRXBasebandDMADescriptor[1].SUS = 0x000000;
    pRXBasebandDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pRXBasebandDMADescriptor, sizeof(pRXBasebandDMADescriptor));

    xdmac_ch_load(RX_BASEBAND_I2S_DMA_CHANNEL, pRXBasebandDMADescriptor, 3, 0);
    xdmac_ch_enable(RX_BASEBAND_I2S_DMA_CHANNEL);

    I2SC1->I2SC_CR = I2SC_CR_TXEN | I2SC_CR_RXEN; // Enable TX & RX
}
void init_audio_i2s()
{
    free((void *)pulTXAudioBuffer);

    pulTXAudioBuffer = (volatile uint32_t *)malloc(2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulTXAudioBuffer)
        return;

    memset((void *)pulTXAudioBuffer, 0, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero TX audio sample buffer

    dcache_addr_clean((void *)pulTXAudioBuffer, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    free(pulRXAudioBuffer);

    pulRXAudioBuffer = (uint32_t *)malloc(2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulRXAudioBuffer)
        return;

    memset(pulRXAudioBuffer, 0, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero TX audio sample buffer

    dcache_addr_clean(pulRXAudioBuffer, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC0->I2SC_CR |= I2SC_CR_SWRST; // Reset audio I2S peripheral
    I2SC0->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure audio I2S peripheral

    xdmac_ch_disable(TX_AUDIO_I2S_DMA_CHANNEL);

    xdmac_ch_set_isr(TX_AUDIO_I2S_DMA_CHANNEL, tx_audio_i2s_dma_isr);

    pTXAudioDMADescriptor[0].NDA = &pTXAudioDMADescriptor[1];
    pTXAudioDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pTXAudioDMADescriptor[0].SA = (void *)&(I2SC0->I2SC_RHR);
    pTXAudioDMADescriptor[0].DA = pulTXAudioBuffer;
    pTXAudioDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC0_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pTXAudioDMADescriptor[0].BC = 0;
    pTXAudioDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pTXAudioDMADescriptor[0].SUS = 0x000000;
    pTXAudioDMADescriptor[0].DUS = 0x000000;

    pTXAudioDMADescriptor[1].NDA = &pTXAudioDMADescriptor[0];
    pTXAudioDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pTXAudioDMADescriptor[1].SA = (void *)&(I2SC0->I2SC_RHR);
    pTXAudioDMADescriptor[1].DA = pulTXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;
    pTXAudioDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC0_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pTXAudioDMADescriptor[1].BC = 0;
    pTXAudioDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pTXAudioDMADescriptor[1].SUS = 0x000000;
    pTXAudioDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pTXAudioDMADescriptor, sizeof(pTXAudioDMADescriptor));

    xdmac_ch_load(TX_AUDIO_I2S_DMA_CHANNEL, pTXAudioDMADescriptor, 3, 0);
    xdmac_ch_enable(TX_AUDIO_I2S_DMA_CHANNEL);

    xdmac_ch_disable(RX_AUDIO_I2S_DMA_CHANNEL);

    pRXAudioDMADescriptor[0].NDA = &pRXAudioDMADescriptor[1];
    pRXAudioDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pRXAudioDMADescriptor[0].SA = pulRXAudioBuffer;
    pRXAudioDMADescriptor[0].DA = (void *)&(I2SC0->I2SC_THR);
    pRXAudioDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC0_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pRXAudioDMADescriptor[0].BC = 0;
    pRXAudioDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pRXAudioDMADescriptor[0].SUS = 0x000000;
    pRXAudioDMADescriptor[0].DUS = 0x000000;

    pRXAudioDMADescriptor[1].NDA = &pRXAudioDMADescriptor[0];
    pRXAudioDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pRXAudioDMADescriptor[1].SA = pulRXAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;
    pRXAudioDMADescriptor[1].DA = (void *)&(I2SC0->I2SC_THR);
    pRXAudioDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC0_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pRXAudioDMADescriptor[1].BC = 0;
    pRXAudioDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pRXAudioDMADescriptor[1].SUS = 0x000000;
    pRXAudioDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pRXAudioDMADescriptor, sizeof(pRXAudioDMADescriptor));

    xdmac_ch_load(RX_AUDIO_I2S_DMA_CHANNEL, pRXAudioDMADescriptor, 3, 0);
    xdmac_ch_enable(RX_AUDIO_I2S_DMA_CHANNEL);

    I2SC0->I2SC_CR = I2SC_CR_TXEN | I2SC_CR_RXEN; // Enable TX & RX
}
void init_dsp_components()
{
    // TX Components

    // RX Components
    //// FM Demodulator
    pRXFMDemod = dsp_fm_demod_init();

    if(pRXFMDemod)
        DBGPRINTLN_CTX("RX - FM Demodulator intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed FM Demodulator intialization!");

    //// Baseband decimator filter
    pRXBasebandFilter = fir_decimator_complex_init(baseband_filter_taps_size, 2, baseband_filter_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXBasebandFilter)
        DBGPRINTLN_CTX("RX - Baseband FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed baseband FIR intialization!");

    //// 19 kHz pilot band-pass filter
    pRXPilotFilter = fir_init(pilot_filter_taps_size, pilot_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXPilotFilter)
        DBGPRINTLN_CTX("RX - 19 kHz pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed 19 kHz pilot FIR intialization!");

    //// 38 kHz stereo pilot high-pass filter
    pRXStereoPilotFilter = fir_init(stereo_pilot_filter_taps_size, stereo_pilot_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXStereoPilotFilter)
        DBGPRINTLN_CTX("RX - Stereo pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed Stereo pilot FIR intialization!");

    //// 57 kHz RDS pilot high-pass filter
    pRXRDSPilotFilter = fir_init(rds_pilot_filter_taps_size, rds_pilot_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXRDSPilotFilter)
        DBGPRINTLN_CTX("RX - RDS pilot FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed RDS pilot FIR intialization!");

    //// Stereo band-pass filter
    pRXStereoFilter = fir_init(stereo_filter_taps_size, stereo_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXStereoFilter)
        DBGPRINTLN_CTX("RX - Stereo FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed Stereo FIR intialization!");

    //// RDS band-pass filter
    pRXRDSFilter = fir_init(rds_filter_taps_size, rds_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXRDSFilter)
        DBGPRINTLN_CTX("RX - RDS FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed RDS FIR intialization!");

    //// Final audio filters
    pRXAudioFilter[0] = fir_decimator_init(audio_filter_taps_size, 4, audio_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXAudioFilter[0])
        DBGPRINTLN_CTX("RX - Mono audio FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed Mono audio FIR intialization!");

    pRXAudioFilter[1] = fir_decimator_init(audio_filter_taps_size, 4, audio_filter_taps, NULL, FM_BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pRXAudioFilter[1])
        DBGPRINTLN_CTX("RX - Stereo audio FIR intialized!");
    else
        DBGPRINTLN_CTX("RX - Failed Stereo audio FIR intialization!");
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
    trng_init();

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

    return 0;
}
int main()
{
    init_baseband_i2s();
    init_audio_i2s();
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
            DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);
            DBGPRINTLN_CTX("TX processing time budget: %llu ms", ullTXProcessingTimeBudget);
            DBGPRINTLN_CTX("TX processing time used: %llu ms", ullTXProcessingTimeUsed);
            DBGPRINTLN_CTX("TX budget used: %.2f %%", (float)ullTXProcessingTimeUsed * 100.f / ullTXProcessingTimeBudget);
            DBGPRINTLN_CTX("TX audio buffer overflow: %s", ubTXAudioOverflow ? "yes" : "no");
            DBGPRINTLN_CTX("RX processing time budget: %llu ms", ullRXProcessingTimeBudget);
            DBGPRINTLN_CTX("RX processing time used: %llu ms", ullRXProcessingTimeUsed);
            DBGPRINTLN_CTX("RX budget used: %.2f %%", (float)ullRXProcessingTimeUsed * 100.f / ullRXProcessingTimeBudget);
            DBGPRINTLN_CTX("RX baseband buffer overflow: %s", ubRXBasebandOverflow ? "yes" : "no");

            ubTXAudioOverflow = 0;
            ubRXBasebandOverflow = 0;
        }

        if(ubTXAudioReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = g_ullSystemTick;

            // Figure out which audio buffer has new samples
            volatile uint32_t *pulAudio = pulTXAudioBuffer + (ubTXAudioReady - 1) * AUDIO_SAMPLE_BUFFER_SIZE;

            // Process samples
            iq16_t pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

            // Fill dummy baseband buffer with zeros
            arm_fill_q15(0, (int16_t *)pBaseband, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t) / sizeof(int16_t));

            // Load baseband buffer
            load_tx_baseband_buffer(pBaseband);

            // Declare done processing audio buffer
            ubTXAudioReady = 0;

            // Stop performance counters
            ullTXProcessingTimeUsed = g_ullSystemTick - ullProcessingStart;
        }

        if(ubRXBasebandReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = g_ullSystemTick;

            // Figure out which baseband buffer has new samples
            volatile uint32_t *pulBaseband = pulRXBasebandBuffer + (ubRXBasebandReady - 1) * BASEBAND_SAMPLE_BUFFER_SIZE;

            // Process samples
            iq16_t pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
            {
                // Build IQ pair from 32-bit I2S word
                pBaseband[i].i = pulBaseband[i] & 0xFFFF;   // Left I2S channel  -> I
                pBaseband[i].q = pulBaseband[i] >> 16;       // Right I2S channel -> Q

                pBaseband[i].i *= 10; // TODO: AGC
                pBaseband[i] .q *= 10;
            }

            // Decimate
            fir_decimator_complex_filter(pRXBasebandFilter, pBaseband, NULL);

            // FM Demodulate
            int16_t psMPX[FM_BASEBAND_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < FM_BASEBAND_SAMPLE_BUFFER_SIZE; i++)
                psMPX[i] = dsp_fm_demod(pRXFMDemod, pBaseband[i]);

            // Extract pilots
            int16_t psPilot[FM_BASEBAND_SAMPLE_BUFFER_SIZE];
            int16_t psStereoPilot[FM_BASEBAND_SAMPLE_BUFFER_SIZE];
            //int16_t psRDSPilot[FM_BASEBAND_SAMPLE_BUFFER_SIZE];

            mpx_extract_pilots(psMPX, psPilot, psStereoPilot, NULL);

            // Stereo audio
            int16_t psLeftAudio[AUDIO_SAMPLE_BUFFER_SIZE];
            int16_t psRightAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            mpx_stereo_audio_demod(psMPX, psStereoPilot, psLeftAudio, psRightAudio);

            // Load audio buffer
            load_rx_audio_buffer(psLeftAudio, psRightAudio);

            // Declare done processing baseband buffer
            ubRXBasebandReady = 0;

            // Stop performance counters
            ullRXProcessingTimeUsed = g_ullSystemTick - ullProcessingStart;
        }
    }

    return 0;
}