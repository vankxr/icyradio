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
#include "audio_filter.h"
#include "baseband_filter.h"
#include "hilbert_filter.h"

// Structs

// Helper macros
#define BASEBAND_I2S_DMA_CHANNEL        0
#define AUDIO_I2S_DMA_CHANNEL           1
#define CONTROL_SPI_RX_DMA_CHANNEL      2
#define CONTROL_SPI_TX_DMA_CHANNEL      3
#define BASEBAND_SAMPLE_BUFFER_SIZE     4096
#define AUDIO_SAMPLE_BUFFER_SIZE        1024

#define BASEBAND_DELAY_SAMPLES          102 // In theory should be Hilbert filter order / 2, fine tunned to remove unwanted sideband leakage

#define SPI_REG_COUNT                   16
#define SPI_REG_INIT(i, d, m)           pulSPIRegister[(i)] = (d); pulSPIRegisterWriteMask[(i)] = (m);
#define SPI_REG_ID                      0x00
#define SPI_REG_AUDIO_CNTRL             0x00
#define SPI_REG_AUDIO_THRESH            0x00

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void load_baseband_buffer(iq16_t *pSamples);

static void ITCM_CODE irq_update();

static void init_baseband_i2s();
static void init_audio_i2s();
static void init_control_spi();
static void init_dsp_components();

// Variables
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pBasebandDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pAudioDMADescriptor[2];
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pSPIRxDMADescriptor;
xdmac_view3_descriptor_t __attribute__ ((aligned (4))) pSPITxDMADescriptor;
uint32_t *pulBasebandBuffer = NULL;
volatile uint32_t *pulAudioBuffer = NULL;
volatile uint8_t ubAudioReady = 0;
volatile uint8_t ubAudioOverflow = 0;
uint64_t ullProcessingTimeBudget = 0;
uint64_t ullProcessingTimeUsed = 0;
volatile uint8_t *pubSPIRxBuffer = NULL;
uint32_t pulSPIRegister[SPI_REG_COUNT];
uint32_t pulSPIRegisterWriteMask[SPI_REG_COUNT];
volatile uint8_t ubSPIRegisterUpdated = 0;
int16_t sAudioRMS;
uint8_t ubAudioMuted = 0;
uint8_t ubAudioSquelchLevel = 0;
fir_ctx_t *pAudioFilter = NULL;
fir_ctx_t *pHilbertFilter = NULL;
fir_interpolator_ctx_t *pBasebandFilter = NULL;
dsp_quad_oscillator_t *pBasebandOscillator = NULL;

// ISRs
void ITCM_CODE _spi0_isr()
{
    uint32_t ulFlags = SPI0->SPI_SR;

    if(ulFlags & SPI_SR_NSSR)
    {
        xdmac_ch_disable(CONTROL_SPI_TX_DMA_CHANNEL);
        xdmac_ch_disable(CONTROL_SPI_RX_DMA_CHANNEL);

        uint16_t usRemainingXfers = xdmac_ch_get_remaining_xfers(CONTROL_SPI_RX_DMA_CHANNEL);

        dcache_addr_clean(pulSPIRegister, SPI_REG_COUNT * sizeof(uint32_t));

        xdmac_ch_load(CONTROL_SPI_TX_DMA_CHANNEL, &pSPITxDMADescriptor, 3, 0);
        xdmac_ch_enable(CONTROL_SPI_TX_DMA_CHANNEL);
        xdmac_ch_load(CONTROL_SPI_RX_DMA_CHANNEL, &pSPIRxDMADescriptor, 3, 0);
        xdmac_ch_enable(CONTROL_SPI_RX_DMA_CHANNEL);

        dcache_addr_invalidate((void *)pubSPIRxBuffer, SPI_REG_COUNT * sizeof(uint32_t) + 1);

        uint32_t ulReadSize = SPI_REG_COUNT * sizeof(uint32_t) - usRemainingXfers;

        if(!ulReadSize)
            return;

        if(ulReadSize % sizeof(uint32_t))
            return;

        uint8_t ubRegister = pubSPIRxBuffer[0];

        if(ubRegister & 0x80)
            return;

        ubRegister &= 0x7F;

        if(ubRegister >= SPI_REG_COUNT)
            return;

        volatile uint32_t *pulSPIRxBuffer = (volatile uint32_t *)&pubSPIRxBuffer[1];
        uint32_t ulWriteSize = SPI_REG_COUNT - ubRegister;
        ulReadSize /= sizeof(uint32_t);

        for(uint32_t i = 0; i < ulReadSize; i++)
        {
            if(i < ulWriteSize)
                pulSPIRegister[ubRegister + i] = (pulSPIRegister[ubRegister + i] & ~pulSPIRegisterWriteMask[ubRegister + i]) | (pulSPIRxBuffer[i] & pulSPIRegisterWriteMask[ubRegister + i]);
            else
                pulSPIRegister[i - ulWriteSize] = (pulSPIRegister[i - ulWriteSize] & ~pulSPIRegisterWriteMask[ubRegister + i]) | (pulSPIRxBuffer[i] & pulSPIRegisterWriteMask[i - ulWriteSize]);
        }

        dcache_addr_clean(pulSPIRegister, SPI_REG_COUNT * sizeof(uint32_t));

        ubSPIRegisterUpdated = 0;
    }
}
void fpga_isr()
{
    DBGPRINTLN_CTX("FPGA ISR");
}
void audio_i2s_dma_isr(uint32_t ulFlags)
{
    if(ulFlags & XDMAC_CIS_BIS)
    {
        static uint64_t ullLastTick = 0;

        ullProcessingTimeBudget = g_ullSystemTick - ullLastTick;

        ullLastTick = g_ullSystemTick;

        if(ubAudioReady) // Overflow - processing not complete
        {
            ubAudioOverflow = 1;

            return;
        }

        volatile uint32_t *pulNextDestAddress = (volatile uint32_t *)xdmac_ch_get_next_dst_addr(AUDIO_I2S_DMA_CHANNEL);

        if(pulNextDestAddress < pulAudioBuffer || pulNextDestAddress > pulAudioBuffer + 2 * AUDIO_SAMPLE_BUFFER_SIZE) // Address out of bounds
            return;

        if(pulNextDestAddress >= pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE)
        {
            dcache_addr_invalidate((uint32_t *)pulAudioBuffer, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubAudioReady = 1;
        }
        else
        {
            dcache_addr_invalidate((uint32_t *)pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

            ubAudioReady = 2;
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

void load_baseband_buffer(iq16_t *pSamples)
{
    if(!pSamples)
        return;

    uint32_t *pulNextSrcAddress = (uint32_t *)xdmac_ch_get_next_src_addr(BASEBAND_I2S_DMA_CHANNEL);

    if(pulNextSrcAddress < pulBasebandBuffer || pulNextSrcAddress > pulBasebandBuffer + 2 * BASEBAND_SAMPLE_BUFFER_SIZE) // Address out of bounds
        return;

    uint32_t *pulDestAddress = NULL;

    if(pulNextSrcAddress >= pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE)
        pulDestAddress = pulBasebandBuffer;
    else
        pulDestAddress = pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;

    for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
        pulDestAddress[i] = (((uint32_t)pSamples[i].q & 0xFFFF) << 16) | (((uint32_t)pSamples[i].i & 0xFFFF) << 0);

    dcache_addr_clean(pulDestAddress, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));
}

void irq_update()
{

}

void init_baseband_i2s()
{
    free(pulBasebandBuffer);

    pulBasebandBuffer = (uint32_t *)malloc(2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulBasebandBuffer)
        return;

    memset(pulBasebandBuffer, 0, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero baseband sample buffer

    dcache_addr_clean(pulBasebandBuffer, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC1_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC1->I2SC_CR |= I2SC_CR_SWRST; // Reset baseband I2S peripheral
    I2SC1->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure baseband I2S peripheral

    xdmac_ch_disable(BASEBAND_I2S_DMA_CHANNEL);

    pBasebandDMADescriptor[0].NDA = &pBasebandDMADescriptor[1];
    pBasebandDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[0].SA = pulBasebandBuffer;
    pBasebandDMADescriptor[0].DA = (void *)&(I2SC1->I2SC_THR);
    pBasebandDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC1_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pBasebandDMADescriptor[0].BC = 0;
    pBasebandDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pBasebandDMADescriptor[0].SUS = 0x000000;
    pBasebandDMADescriptor[0].DUS = 0x000000;

    pBasebandDMADescriptor[1].NDA = &pBasebandDMADescriptor[0];
    pBasebandDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[1].SA = pulBasebandBuffer + BASEBAND_SAMPLE_BUFFER_SIZE;
    pBasebandDMADescriptor[1].DA = (void *)&(I2SC1->I2SC_THR);
    pBasebandDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC1_TX_LEFT | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pBasebandDMADescriptor[1].BC = 0;
    pBasebandDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pBasebandDMADescriptor[1].SUS = 0x000000;
    pBasebandDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pBasebandDMADescriptor, sizeof(pBasebandDMADescriptor));

    xdmac_ch_load(BASEBAND_I2S_DMA_CHANNEL, pBasebandDMADescriptor, 3, 0);
    xdmac_ch_enable(BASEBAND_I2S_DMA_CHANNEL);

    I2SC1->I2SC_CR = I2SC_CR_TXEN | I2SC_CR_RXEN; // Enable TX & RX
}
void init_audio_i2s()
{
    free((void *)pulAudioBuffer);

    pulAudioBuffer = (volatile uint32_t *)malloc(2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulAudioBuffer)
        return;

    memset((void *)pulAudioBuffer, 0xAB, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero audio sample buffer

    dcache_addr_clean((void *)pulAudioBuffer, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (I2SC0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    I2SC0->I2SC_CR |= I2SC_CR_SWRST; // Reset audio I2S peripheral
    I2SC0->I2SC_MR = I2SC_MR_DATALENGTH_16_BITS_COMPACT | I2SC_MR_MODE_SLAVE; // Configure audio I2S peripheral

    xdmac_ch_disable(AUDIO_I2S_DMA_CHANNEL);

    xdmac_ch_set_isr(AUDIO_I2S_DMA_CHANNEL, audio_i2s_dma_isr);

    pAudioDMADescriptor[0].NDA = &pAudioDMADescriptor[1];
    pAudioDMADescriptor[0].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[0].SA = (void *)&(I2SC0->I2SC_RHR);
    pAudioDMADescriptor[0].DA = pulAudioBuffer;
    pAudioDMADescriptor[0].CFG = XDMAC_CC_PERID_I2SC0_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pAudioDMADescriptor[0].BC = 0;
    pAudioDMADescriptor[0].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pAudioDMADescriptor[0].SUS = 0x000000;
    pAudioDMADescriptor[0].DUS = 0x000000;

    pAudioDMADescriptor[1].NDA = &pAudioDMADescriptor[0];
    pAudioDMADescriptor[1].UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[1].SA = (void *)&(I2SC0->I2SC_RHR);
    pAudioDMADescriptor[1].DA = pulAudioBuffer + AUDIO_SAMPLE_BUFFER_SIZE;
    pAudioDMADescriptor[1].CFG = XDMAC_CC_PERID_I2SC0_RX_LEFT | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_WORD | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pAudioDMADescriptor[1].BC = 0;
    pAudioDMADescriptor[1].DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pAudioDMADescriptor[1].SUS = 0x000000;
    pAudioDMADescriptor[1].DUS = 0x000000;

    dcache_addr_clean(pAudioDMADescriptor, sizeof(pAudioDMADescriptor));

    xdmac_ch_load(AUDIO_I2S_DMA_CHANNEL, pAudioDMADescriptor, 3, 0);
    xdmac_ch_enable(AUDIO_I2S_DMA_CHANNEL);

    I2SC0->I2SC_CR = I2SC_CR_TXEN | I2SC_CR_RXEN; // Enable TX & RX
}
void init_control_spi()
{
    // Init registers and masks
    memset(pulSPIRegister, 0, sizeof(pulSPIRegister));
    memset(pulSPIRegisterWriteMask, 0, sizeof(pulSPIRegisterWriteMask));

    SPI_REG_INIT(SPI_REG_ID,            0x0D570000 | (BUILD_VERSION & 0xFFFF), 0x00000000);

    dcache_addr_clean((void *)pulSPIRegister, SPI_REG_COUNT * sizeof(uint32_t));

    // Init interface
    free((void *)pubSPIRxBuffer);

    pubSPIRxBuffer = (uint8_t *)malloc(SPI_REG_COUNT * sizeof(uint32_t) + 1);

    if(!pubSPIRxBuffer)
        return;

    memset((void *)pubSPIRxBuffer, 0, SPI_REG_COUNT * sizeof(uint32_t) + 1); // Zero SPI RX buffer

    dcache_addr_clean((void *)pubSPIRxBuffer, SPI_REG_COUNT * sizeof(uint32_t) + 1);

    PMC->PMC_PCR = PMC_PCR_EN | PMC_PCR_CMD | (SPI0_CLOCK_ID << PMC_PCR_PID_Pos); // Enable peripheral clock

    SPI0->SPI_CR |= SPI_CR_SWRST; // Reset control SPI peripheral
    SPI0->SPI_MR = SPI_MR_MSTR_SLAVE; // Configure control SPI peripheral
    SPI0->SPI_CSR[0] = SPI_CSR_BITS_8_BIT | SPI_CSR_NCPHA_VALID_LEADING_EDGE | SPI_CSR_CPOL_IDLE_LOW; // Configure control SPI peripheral

    xdmac_ch_disable(CONTROL_SPI_RX_DMA_CHANNEL);

    pSPIRxDMADescriptor.NDA = &pSPIRxDMADescriptor;
    pSPIRxDMADescriptor.UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | (SPI_REG_COUNT * sizeof(uint32_t) + 1);
    pSPIRxDMADescriptor.SA = (void *)&(SPI0->SPI_RDR);
    pSPIRxDMADescriptor.DA = pubSPIRxBuffer;
    pSPIRxDMADescriptor.CFG = XDMAC_CC_PERID_SPI0_RX | XDMAC_CC_DAM_INCREMENTED_AM | XDMAC_CC_SAM_FIXED_AM | XDMAC_CC_DIF_AHB_IF0 | XDMAC_CC_SIF_AHB_IF1 | XDMAC_CC_DWIDTH_BYTE | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_PER2MEM | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pSPIRxDMADescriptor.BC = 0;
    pSPIRxDMADescriptor.DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pSPIRxDMADescriptor.SUS = 0x000000;
    pSPIRxDMADescriptor.DUS = 0x000000;

    dcache_addr_clean(&pSPIRxDMADescriptor, sizeof(pSPIRxDMADescriptor));

    xdmac_ch_load(CONTROL_SPI_RX_DMA_CHANNEL, &pSPIRxDMADescriptor, 3, 0);
    xdmac_ch_enable(CONTROL_SPI_RX_DMA_CHANNEL);

    xdmac_ch_disable(CONTROL_SPI_TX_DMA_CHANNEL);

    pSPITxDMADescriptor.NDA = &pSPITxDMADescriptor;
    pSPITxDMADescriptor.UBC = (3 << 27) | BIT(26) | BIT(25) | BIT(24) | (SPI_REG_COUNT * sizeof(uint32_t));
    pSPITxDMADescriptor.SA = pulSPIRegister;
    pSPITxDMADescriptor.DA = (void *)&(SPI0->SPI_TDR);
    pSPITxDMADescriptor.CFG = XDMAC_CC_PERID_SPI0_TX | XDMAC_CC_DAM_FIXED_AM | XDMAC_CC_SAM_INCREMENTED_AM | XDMAC_CC_DIF_AHB_IF1 | XDMAC_CC_SIF_AHB_IF0 | XDMAC_CC_DWIDTH_BYTE | XDMAC_CC_CSIZE_CHK_1 | XDMAC_CC_MEMSET_NORMAL_MODE | XDMAC_CC_SWREQ_HWR_CONNECTED | XDMAC_CC_DSYNC_MEM2PER | XDMAC_CC_MBSIZE_SINGLE | XDMAC_CC_TYPE_PER_TRAN;
    pSPITxDMADescriptor.BC = 0;
    pSPITxDMADescriptor.DS = (0x0000 << XDMAC_CDS_MSP_DDS_MSP_Pos) | (0x0000 << XDMAC_CDS_MSP_SDS_MSP_Pos);
    pSPITxDMADescriptor.SUS = 0x000000;
    pSPITxDMADescriptor.DUS = 0x000000;

    dcache_addr_clean(&pSPITxDMADescriptor, sizeof(pSPITxDMADescriptor));

    xdmac_ch_load(CONTROL_SPI_TX_DMA_CHANNEL, &pSPITxDMADescriptor, 3, 0);
    xdmac_ch_enable(CONTROL_SPI_TX_DMA_CHANNEL);

    IRQ_CLEAR(SPI0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SPI0_IRQn, 3, 0); // Set priority 3,0
    IRQ_ENABLE(SPI0_IRQn); // Enable vector
    SPI0->SPI_IER = SPI_IER_NSSR; // Enable interrupts

    SPI0->SPI_CR = SPI_CR_SPIEN; // Enable SPI
}
void init_dsp_components()
{
    // Audio filter
    pAudioFilter = fir_init(audio_filter_taps_size, audio_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pAudioFilter)
        DBGPRINTLN_CTX("Audio FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed audio FIR intialization!");

    // Baseband interpolating filter
    pBasebandFilter = fir_interpolator_init(baseband_filter_taps_size, 4, baseband_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pBasebandFilter)
        DBGPRINTLN_CTX("Baseband interpolating FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed baseband interpolating FIR intialization!");

    // Hilbert filter
    pHilbertFilter = fir_init(hilbert_fir_taps_size, hilbert_fir_taps, NULL, BASEBAND_SAMPLE_BUFFER_SIZE);

    if(pHilbertFilter)
        DBGPRINTLN_CTX("Hilbert FIR intialized!");
    else
        DBGPRINTLN_CTX("Failed hilbert FIR intialization!");

    // Baseband oscillator
    pBasebandOscillator = dsp_quad_oscillator_init(192000, 4800);

    if(pBasebandOscillator)
        DBGPRINTLN_CTX("Baseband oscillator intialized!");
    else
        DBGPRINTLN_CTX("Failed baseband oscillator intialization!");
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

        if(!ubSPIRegisterUpdated && (PIOB->PIO_PDSR & BIT(2))) // Clean register cache if SPI_CS is high
        {
            ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
            {
                dcache_addr_clean(pulSPIRegister, SPI_REG_COUNT * sizeof(uint32_t));

                xdmac_ch_disable(CONTROL_SPI_TX_DMA_CHANNEL);
                xdmac_ch_load(CONTROL_SPI_TX_DMA_CHANNEL, &pSPITxDMADescriptor, 3, 0);
                xdmac_ch_enable(CONTROL_SPI_TX_DMA_CHANNEL);

                ubSPIRegisterUpdated = 1;
            }
        }

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
            DBGPRINTLN_CTX("Audio buffer overflow: %s", ubAudioOverflow ? "yes" : "no");
            DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);
            DBGPRINTLN_CTX("Audio power: %.2f dBFS", 10.f * log10f((float)sAudioRMS / INT16_MAX));
            DBGPRINTLN_CTX("Audio squelch level: %hhu", ubAudioSquelchLevel);
            DBGPRINTLN_CTX("Audio muted: %s", ubAudioMuted ? "yes" : "no");

            ubAudioOverflow = 0;
        }

        if(ubAudioReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = g_ullSystemTick;

            // Figure out which audio buffer has new samples
            volatile uint32_t *pulAudio = pulAudioBuffer + (ubAudioReady - 1) * AUDIO_SAMPLE_BUFFER_SIZE;

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

            // Calculate audio RMS value for later processing
            arm_rms_q15(psAudio, AUDIO_SAMPLE_BUFFER_SIZE, &sAudioRMS);

            if(sAudioRMS < 800 && ubAudioSquelchLevel > 0)
                ubAudioSquelchLevel -= 1;
            else if(sAudioRMS > 1200 && ubAudioSquelchLevel < 100)
                ubAudioSquelchLevel += 5;

            ubAudioMuted = ubAudioSquelchLevel < 1;

            if(ubAudioMuted)
                memset(psAudio, 0, AUDIO_SAMPLE_BUFFER_SIZE * sizeof(int16_t));

            // Filter the audio
            fir_filter(pAudioFilter, psAudio, psAudio);

            // Interpolate and upsample to baseband rate
            int16_t psBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

            fir_interpolator_filter(pBasebandFilter, psAudio, psBaseband);

            // Generate quadrature with the hilbert transform
            int16_t psHilbertBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

            fir_filter(pHilbertFilter, psBaseband, psHilbertBaseband);

            // Delay real baseband component to match the filter delay and stuff the result in the final baseband IQ pair array
            static int16_t psDelayedBaseband[BASEBAND_DELAY_SAMPLES];
            iq16_t pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

            for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
            {
                if(i < BASEBAND_DELAY_SAMPLES)
                {
                    pBaseband[i].i = psDelayedBaseband[i];
                    psDelayedBaseband[i] = psBaseband[BASEBAND_SAMPLE_BUFFER_SIZE - BASEBAND_DELAY_SAMPLES + i];
                }
                else
                {
                    pBaseband[i].i = psBaseband[i - BASEBAND_DELAY_SAMPLES];
                }

                pBaseband[i].q = psHilbertBaseband[i];
            }

            // Mix with oscillator to move the spectrum up
            //dsp_quad_oscillator_mix(pBasebandOscillator, pBaseband, NULL, BASEBAND_SAMPLE_BUFFER_SIZE, 0);

            // Load baseband buffer
            load_baseband_buffer(pBaseband);

            // Declare done processing audio buffer
            ubAudioReady = 0;

            // Stop performance counters
            ullProcessingTimeUsed = g_ullSystemTick - ullProcessingStart;
        }
    }

    return 0;
}