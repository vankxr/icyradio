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
#include "matrix.h"
#include "xdmac.h"
#include "systick.h"
#include "dbg.h"
#include "wdt.h"
#include "pio.h"
#include "trng.h"
#include "usb.h"
#include "usb_impl.h"
#include "usb_util.h"
#include "audio_filter.h"
#include "pre_emphasis_filter.h"
#include "baseband_filter.h"
#include "hilbert_filter.h"

// Structs

// Helper macros
#define TX_BASEBAND_I2S_DMA_CHANNEL     0
#define RX_BASEBAND_I2S_DMA_CHANNEL     1
#define TX_AUDIO_I2S_DMA_CHANNEL        2
#define RX_AUDIO_I2S_DMA_CHANNEL        3
#define BASEBAND_SAMPLE_BUFFER_SIZE     4096
#define AUDIO_SAMPLE_BUFFER_SIZE        512

#define HILBERT_DELAY_SAMPLES           200 // In theory should be Hilbert filter order / 2, fine tunned to remove unwanted sideband leakage

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void load_tx_baseband_buffer(iq16_t *pSamples);
static void load_rx_audio_buffer(int16_t *psLeft, int16_t *psRight);

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
float fAudioPower = -120.f;
uint8_t ubAudioMuted = 0;
uint8_t ubAudioSquelchLevel = 0;
fir_ctx_t *pTXAudioFilter = NULL;
fir_ctx_t *pRXAudioFilter = NULL;
fir_ctx_t *pTXPreEmphasisFilter = NULL;
fir_sparse_ctx_t *pTXHilbertFilter = NULL;
fir_sparse_ctx_t *pRXHilbertFilter = NULL;
fir_interpolator_complex_ctx_t *pTXBasebandFilter = NULL;
fir_decimator_complex_ctx_t *pRXBasebandFilter = NULL;
dsp_agc_t *pTXAudioAGC = NULL;
dsp_agc_t *pRXAudioAGC = NULL;

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

    pmc_peripheral_clock_gate(I2SC1_CLOCK_ID, 1); // Enable peripheral clock

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

    pmc_peripheral_clock_gate(I2SC0_CLOCK_ID, 1); // Enable peripheral clock

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
    //// Audio filter
    pTXAudioFilter = fir_init(audio_filter_taps_size, audio_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pTXAudioFilter)
        DBGPRINTLN_CTX("TX - Audio FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio FIR intialization!");

    //// Pre-emphasis filter
    pTXPreEmphasisFilter = fir_init(pre_emphasis_filter_taps_size, pre_emphasis_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pTXPreEmphasisFilter)
        DBGPRINTLN_CTX("TX - Pre-emphasis FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed pre-emphasis FIR intialization!");

    //// Hilbert filter
    pTXHilbertFilter = fir_sparse_init(hilbert_filter_taps_size, hilbert_filter_taps, hilbert_filter_tap_delay, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pTXHilbertFilter)
        DBGPRINTLN_CTX("TX - Hilbert FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed hilbert FIR intialization!");

    //// Baseband interpolating filter
    pTXBasebandFilter = fir_interpolator_complex_init(baseband_filter_taps_size, 8, baseband_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pTXBasebandFilter)
        DBGPRINTLN_CTX("TX - Baseband interpolating FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed baseband interpolating FIR intialization!");

    //// Audio AGC
    pTXAudioAGC = dsp_agc_init(1.f, 1.f, 80.f, 0.001f, 0.005f, 0.92f, 0.98f, 32);

    if(pTXAudioAGC)
        DBGPRINTLN_CTX("TX - Audio AGC intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio AGC intialization!");

    // RX Components
    //// Audio filter
    pRXAudioFilter = fir_init(audio_filter_taps_size, audio_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pRXAudioFilter)
        DBGPRINTLN_CTX("TX - Audio FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio FIR intialization!");

    //// Hilbert filter
    pRXHilbertFilter = fir_sparse_init(hilbert_filter_taps_size, hilbert_filter_taps, hilbert_filter_tap_delay, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pRXHilbertFilter)
        DBGPRINTLN_CTX("TX - Hilbert FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed hilbert FIR intialization!");

    //// Baseband decimating filter
    pRXBasebandFilter = fir_decimator_complex_init(baseband_filter_taps_size, 8, baseband_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pRXBasebandFilter)
        DBGPRINTLN_CTX("TX - Baseband decimating FIR intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed baseband decimating FIR intialization!");

    //// Audio AGC
    pRXAudioAGC = dsp_agc_init(1.f, 1.f, 80.f, 0.001f, 0.005f, 0.92f, 0.98f, 32);

    if(pRXAudioAGC)
        DBGPRINTLN_CTX("TX - Audio AGC intialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio AGC intialization!");
}
int init()
{
    icache_enable();
    dcache_enable();

    rstc_init(1, 0, 0);

    pmc_init();
    pmc_update_clocks();

    matrix_init(); // Init Bus matrix configuration

    eefc_init(); // Init flash controller

    dbg_init(); // Init Debug module
    dbg_swo_config(BIT(0) | BIT(1), 12000000); // Init SWO channels 0 and 1 at 12 MHz

    systick_init(); // Init system tick

    wdt_init(10000); // Init the watchdog timer, 10 s timeout

    pio_init();
    xdmac_init();
    trng_init();
    usb_init(USBHS_DEVCTRL_SPDCONF_NORMAL);
    usb_impl_init();

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

    delay_ms(1000);

    usb_attach();

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
            DBGPRINTLN_CTX("TX audio power: %.2f dBFS", fAudioPower);
            DBGPRINTLN_CTX("TX audio AGC gain: %.2f", pTXAudioAGC->fGain);
            DBGPRINTLN_CTX("TX audio squelch level: %hhu", ubAudioSquelchLevel);
            DBGPRINTLN_CTX("TX audio muted: %s", ubAudioMuted ? "yes" : "no");
            DBGPRINTLN_CTX("RX processing time budget: %llu ms", ullRXProcessingTimeBudget);
            DBGPRINTLN_CTX("RX processing time used: %llu ms", ullRXProcessingTimeUsed);
            DBGPRINTLN_CTX("RX budget used: %.2f %%", (float)ullRXProcessingTimeUsed * 100.f / ullRXProcessingTimeBudget);
            DBGPRINTLN_CTX("RX baseband buffer overflow: %s", ubRXBasebandOverflow ? "yes" : "no");
            //DBGPRINTLN_CTX("RX audio power: %.2f dBFS", fAudioPower);
            DBGPRINTLN_CTX("RX audio AGC gain: %.2f", pRXAudioAGC->fGain);

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
            int16_t psAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
            {
                // Extract left and right channels
                int16_t sLeft = pulAudio[i] & 0xFFFF;
                int16_t sRight = pulAudio[i] >> 16;

                // Mix them
                psAudio[i] = (sLeft >> 1) + (sRight >> 1);
            }

            // Calculate audio power value
            int64_t llAudioPower;

            arm_power_q15(psAudio, AUDIO_SAMPLE_BUFFER_SIZE, &llAudioPower);

            fAudioPower = 10.f * log10f((float)llAudioPower / ((1ULL << 33) - 1));

            // Squelch
            if(fAudioPower < -25.f && ubAudioSquelchLevel > 0)
                ubAudioSquelchLevel -= 1;
            else if(fAudioPower > -20.f && ubAudioSquelchLevel < 10)
                ubAudioSquelchLevel += 3;

            ubAudioMuted = ubAudioSquelchLevel < 1;
            //ubAudioMuted = 0;

            if(ubAudioMuted)
            {
                iq16_t pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

                // Fill dummy baseband buffer with zeros
                arm_fill_q15(0, (int16_t *)pBaseband, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t) / sizeof(int16_t));

                // Load baseband buffer
                load_tx_baseband_buffer(pBaseband);
            }
            else
            {
                // Apply pre-emphasis to the audio
                fir_filter(pTXPreEmphasisFilter, psAudio, NULL);

                // Filter the audio
                fir_filter(pTXAudioFilter, psAudio, NULL);

                // Pass through AGC
                dsp_agc_process(pTXAudioAGC, psAudio, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

                // Generate quadrature with the hilbert transform
                int16_t psHilbertAudio[AUDIO_SAMPLE_BUFFER_SIZE];

                fir_sparse_filter(pTXHilbertFilter, psAudio, psHilbertAudio);

                // Delay real (I) component to match the filter delay and stuff the result in the final IQ pair array
                static int16_t psDelayedAudio[HILBERT_DELAY_SAMPLES];
                iq16_t pAudio[AUDIO_SAMPLE_BUFFER_SIZE];

                for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
                {
                    if(i < HILBERT_DELAY_SAMPLES)
                    {
                        pAudio[i].i = psDelayedAudio[i];
                        psDelayedAudio[i] = psAudio[AUDIO_SAMPLE_BUFFER_SIZE - HILBERT_DELAY_SAMPLES + i];
                    }
                    else
                    {
                        pAudio[i].i = psAudio[i - HILBERT_DELAY_SAMPLES];
                    }

                    pAudio[i].q = psHilbertAudio[i];
                }

                // Interpolate and upsample to baseband rate
                iq16_t pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

                fir_interpolator_complex_filter(pTXBasebandFilter, pAudio, pBaseband);

                // Load baseband buffer
                load_tx_baseband_buffer(pBaseband);
            }

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
                pBaseband[i].q = pulBaseband[i] >> 16;      // Right I2S channel -> Q
            }

            // Decimate
            fir_decimator_complex_filter(pRXBasebandFilter, pBaseband, NULL);

            int16_t psRealAudio[AUDIO_SAMPLE_BUFFER_SIZE];
            int16_t psImagAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
            {
                // Separate IQ components into different buffers
                psRealAudio[i] = pBaseband[i].i;
                psImagAudio[i] = pBaseband[i].q;
            }

            // Apply Hilbert transform to the imaginary (Q) component to generate two opposing (180 degree) signals
            int16_t psHilbertAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            fir_sparse_filter(pRXHilbertFilter, psImagAudio, psHilbertAudio);

            // Delay real (I) component to match the filter delay and combine both of the components to generate a real (dual side-banded) audio signal
            static int16_t psDelayedAudio[HILBERT_DELAY_SAMPLES];
            int16_t psAudio[AUDIO_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < AUDIO_SAMPLE_BUFFER_SIZE; i++)
            {
                if(i < HILBERT_DELAY_SAMPLES)
                {
                    psAudio[i] = psDelayedAudio[i];
                    psDelayedAudio[i] = psRealAudio[AUDIO_SAMPLE_BUFFER_SIZE - HILBERT_DELAY_SAMPLES + i];
                }
                else
                {
                    psAudio[i] = psRealAudio[i - HILBERT_DELAY_SAMPLES];
                }

                int32_t lAudio = psAudio[i] + psHilbertAudio[i]; // Sum yields USB, subtraction yields LSB

                psAudio[i] = lAudio >> 1;
            }

            // Filter the audio
            //fir_filter(pRXAudioFilter, psAudio, NULL);

            // Pass through AGC
            //dsp_agc_process(pRXAudioAGC, psAudio, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

            // Load audio buffer
            load_rx_audio_buffer(psAudio, psAudio);

            // Declare done processing baseband buffer
            ubRXBasebandReady = 0;

            // Stop performance counters
            ullRXProcessingTimeUsed = g_ullSystemTick - ullProcessingStart;
        }
    }

    return 0;
}