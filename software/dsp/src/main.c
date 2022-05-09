#include <sam.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>
#include <math.h>
#include "FreeRTOS.h"
#include "arm_math.h"
#include "arm_const_structs.h"
#include "dsp.h"
#include "fir.h"
#include "debug_macros.h"
#include "utils.h"
#include "cache.h"
#include "nvic.h"
#include "pmc.h"
#include "rstc.h"
#include "eefc.h"
#include "matrix.h"
#include "xdmac.h"
#include "dbg.h"
#include "wdt.h"
#include "pio.h"
#include "trng.h"
#include "afec.h"
#include "liquid.h"
#include "usb.h"
#include "usb_impl.h"
#include "usb_util.h"
#include "baseband_filter.h"

// Structs

// Helper macros
#define TX_BASEBAND_I2S_DMA_CHANNEL     0
#define RX_BASEBAND_I2S_DMA_CHANNEL     1
#define TX_AUDIO_I2S_DMA_CHANNEL        2
#define RX_AUDIO_I2S_DMA_CHANNEL        3
#define BASEBAND_SAMPLE_BUFFER_SIZE     4096
#define AUDIO_SAMPLE_BUFFER_SIZE        256

#define CTRL_SPI_REGISTER_COUNT             128
#define CTRL_SPI_REGISTER(t, a)             (*(t *)&ubSPIRegister[(a)])
#define CTRL_SPI_REGISTER_DEVICE_ID         0x00 // 8-bit
#define CTRL_SPI_REGISTER_IRQ_STATUS        0x01 // 8-bit
#define CTRL_SPI_REGISTER_IRQ_MASK          0x02 // 8-bit
#define CTRL_SPI_REGISTER_USB_REQUEST       0x50 // 8-bit
#define CTRL_SPI_REGISTER_USB_VALUE         0x51 // 16-bit
#define CTRL_SPI_REGISTER_USB_INDEX         0x53 // 16-bit
#define CTRL_SPI_REGISTER_USB_LENGTH        0x55 // 8-bit
#define CTRL_SPI_REGISTER_USB_DATA          0x56 // 24 * 8-bit
#define CTRL_SPI_REGISTER_SW_VERSION        0x6E // 16-bit
#define CTRL_SPI_REGISTER_DEV_UID0          0x70 // 32-bit
#define CTRL_SPI_REGISTER_DEV_UID1          0x74 // 32-bit
#define CTRL_SPI_REGISTER_DEV_UID2          0x78 // 32-bit
#define CTRL_SPI_REGISTER_DEV_UID3          0x7C // 32-bit

#define USB_CTRL_ENDPOINT   0
#define USB_RX_ENDPOINT     1
#define USB_TX_ENDPOINT     2

// Forward declarations
static void reset() __attribute__((noreturn));
static void sleep();

static uint32_t get_free_ram();

static void get_device_core_name(char *pszDeviceCoreName, uint32_t ulDeviceCoreNameSize);
static void get_device_name(char *pszDeviceName, uint32_t ulDeviceNameSize);
static uint8_t get_device_revision();

static void ITCM_CODE usb_endpoint_ready_isr(uint8_t ubEndpoint);
static uint8_t ITCM_CODE usb_vendor_request_handler(uint8_t ubEndpoint, usb_setup_packet_t *pSetupPacket);

static void load_tx_baseband_buffer(iq16_t *pSamples);
static void load_rx_audio_buffer(int16_t *psLeft, int16_t *psRight);

static void init_baseband_i2s();
static void init_audio_i2s();
static void init_control_spi();
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
fir_interpolator_complex_ctx_t *pTXBasebandFilter = NULL;
fir_decimator_complex_ctx_t *pRXBasebandFilter = NULL;
dsp_agc_t *pTXAudioAGC = NULL;
dsp_agc_t *pRXAudioAGC = NULL;
flexframegen xFrameGen;
volatile uint8_t DTCM_DATA ubSPIRegister[CTRL_SPI_REGISTER_COUNT];
volatile uint8_t DTCM_DATA ubSPIRegisterPointer = 0x00;
volatile uint8_t DTCM_DATA ubSPIStatus = BIT(0);

// ISRs
void ITCM_CODE _spi0_isr()
{
    uint32_t ulFlags = SPI0->SPI_SR & SPI0->SPI_IMR;

    if(ulFlags & SPI_SR_NSSR)
    {
        ubSPIStatus = BIT(0);
    }

    if(ulFlags & SPI_SR_RDRF)
    {
        volatile uint8_t ubData = SPI0->SPI_RDR;

        if(ubSPIStatus & BIT(1))
        {
            ubSPIRegister[ubSPIRegisterPointer++] = ubData;

            if(ubSPIRegisterPointer >= CTRL_SPI_REGISTER_COUNT)
                ubSPIRegisterPointer = 0;
        }

        if(ubSPIStatus & BIT(0))
        {
            if(ubData & BIT(7))
            {
                ubSPIStatus |= BIT(1); // Write
            }
            else
            {
                SPI0->SPI_IDR = SPI_IDR_TDRE;
                ubSPIStatus &= ~BIT(1); // Read
            }

            ubSPIStatus &= ~BIT(0);
            ubSPIRegisterPointer = ubData & 0x7F;
        }

        if(!ubSPIStatus)
        {
            if(ubSPIRegisterPointer == CTRL_SPI_REGISTER_IRQ_STATUS) // Clear on read
                DSP_IRQ_DEASSERT();

            SPI0->SPI_TDR = ubSPIRegister[ubSPIRegisterPointer++];

            if(ubSPIRegisterPointer >= CTRL_SPI_REGISTER_COUNT)
                ubSPIRegisterPointer = 0;
        }

        (void)ubData;
    }
}
void ITCM_CODE fpga_isr()
{
    DBGPRINTLN_CTX("FPGA ISR");
}
void ITCM_CODE tx_audio_i2s_dma_isr(uint32_t ulFlags)
{
    if(ulFlags & XDMAC_CIS_BIS)
    {
        static uint64_t ullLastTick = 0;

        ullTXProcessingTimeBudget = (xTaskGetTickCountFromISR() * portTICK_PERIOD_MS) - ullLastTick;

        ullLastTick = (xTaskGetTickCountFromISR() * portTICK_PERIOD_MS);

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

        ullRXProcessingTimeBudget = (xTaskGetTickCountFromISR() * portTICK_PERIOD_MS) - ullLastTick;

        ullLastTick = (xTaskGetTickCountFromISR() * portTICK_PERIOD_MS);

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

// RTOS Hooks
void vAssertCalled(const char *pszFile, uint32_t ulLine)
{
    DBGPRINTLN_CTX("Assertion failed in %s at line %lu", pszFile, ulLine);

    while(1);
}
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName)
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */

	/* Force an assert. */
	configASSERT( ( volatile void * ) NULL );
}
void vApplicationMallocFailedHook()
{
	/* Called if a call to pvPortMalloc() fails because there is insufficient
	free memory available in the FreeRTOS heap.  pvPortMalloc() is called
	internally by FreeRTOS API functions that create tasks, queues, software
	timers, and semaphores.  The size of the FreeRTOS heap is set by the
	configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */

	/* Force an assert. */
	configASSERT( ( volatile void * ) NULL );
}
void vApplicationIdleHook()
{

}

// Newlib replacement hooks
// For external libraries that call assert()
void __assert_func(const char *pszFile, uint32_t ulLine, const char *pszFunction, const char *pszExpression)
{
    DBGPRINTLN_CTX("Assertion failed in %s at line %lu", pszFile, ulLine);
    DBGPRINTLN_CTX("Function: %s", pszFunction);
    DBGPRINTLN_CTX("Expression: %s", pszExpression);

    while(1);
}

// Functions
void reset()
{
    SCB->AIRCR = 0x05FA0000 | SCB_AIRCR_SYSRESETREQ_Msk;

    while(1);
}

uint32_t get_free_ram()
{
    return 0;
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

void usb_endpoint_ready_isr(uint8_t ubEndpoint)
{
    switch (ubEndpoint)
    {
        case USB_CTRL_ENDPOINT:
        {
            DBGPRINTLN_CTX("USB Attached!");
        }
        break;
        case USB_RX_ENDPOINT:
        {
            DBGPRINTLN_CTX("USB RX Endpoint ready!");
        }
        break;
        case USB_TX_ENDPOINT:
        {
            DBGPRINTLN_CTX("USB TX Endpoint ready!");

            usb_impl_endpoint_buffer_dma_trigger(USB_TX_ENDPOINT, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));
        }
        break;
        default:
            break;
    }
}
uint8_t usb_vendor_request_handler(uint8_t ubEndpoint, usb_setup_packet_t *pSetupPacket)
{
    DBGPRINTLN_CTX("vendor req val%04X idx%04X len%hu avail%hu", pSetupPacket->usValue, pSetupPacket->usIndex, pSetupPacket->usLength, usb_impl_endpoint_buffer_get_used_size(ubEndpoint));

    uint8_t ubBuf[128];

    if(pSetupPacket->ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_D2H)
    {
        memset(ubBuf, 0x5A, 128);

        if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuf, pSetupPacket->usLength) != pSetupPacket->usLength)
            return 1;

        return 0;
    }
    else
    {
        if(usb_impl_endpoint_buffer_read(ubEndpoint, ubBuf, pSetupPacket->usLength) != pSetupPacket->usLength)
            return 1;

        DBGPRINT_CTX("vendor req data [");

        for(uint16_t i = 0; i < pSetupPacket->usLength; i++)
            DBGPRINT("%02X", ubBuf[i]);

        DBGPRINTLN("]");

        return 0;
    }
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
    vPortFreeAligned(pulTXBasebandBuffer);

    pulTXBasebandBuffer = (uint32_t *)pvPortMallocAligned(32, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulTXBasebandBuffer)
        return;

    memset(pulTXBasebandBuffer, 0, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero TX baseband sample buffer

    dcache_addr_clean(pulTXBasebandBuffer, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    vPortFreeAligned((void *)pulRXBasebandBuffer);

    pulRXBasebandBuffer = (volatile uint32_t *)pvPortMallocAligned(32, 2 * BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

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
    vPortFreeAligned((void *)pulTXAudioBuffer);

    pulTXAudioBuffer = (volatile uint32_t *)pvPortMallocAligned(32, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    if(!pulTXAudioBuffer)
        return;

    memset((void *)pulTXAudioBuffer, 0, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t)); // Zero TX audio sample buffer

    dcache_addr_clean((void *)pulTXAudioBuffer, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

    vPortFreeAligned(pulRXAudioBuffer);

    pulRXAudioBuffer = (uint32_t *)pvPortMallocAligned(32, 2 * AUDIO_SAMPLE_BUFFER_SIZE * sizeof(uint32_t));

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
void init_control_spi()
{
    uint32_t ulUniqueID[4];

    eefc_get_unique_id(ulUniqueID);

    CTRL_SPI_REGISTER(uint8_t, CTRL_SPI_REGISTER_DEVICE_ID)         = 0xD5;
    CTRL_SPI_REGISTER(uint16_t, CTRL_SPI_REGISTER_SW_VERSION)       = BUILD_VERSION;
    CTRL_SPI_REGISTER(uint32_t, CTRL_SPI_REGISTER_DEV_UID0)         = ulUniqueID[0];
    CTRL_SPI_REGISTER(uint32_t, CTRL_SPI_REGISTER_DEV_UID1)         = ulUniqueID[1];
    CTRL_SPI_REGISTER(uint32_t, CTRL_SPI_REGISTER_DEV_UID2)         = ulUniqueID[2];
    CTRL_SPI_REGISTER(uint32_t, CTRL_SPI_REGISTER_DEV_UID3)         = ulUniqueID[3];

    pmc_peripheral_clock_gate(SPI0_CLOCK_ID, 1); // Enable peripheral clock

    SPI0->SPI_CR |= SPI_CR_SWRST; // Reset control SPI peripheral
    SPI0->SPI_MR = SPI_MR_MSTR_SLAVE; // Configure control SPI peripheral
    SPI0->SPI_CSR[0] = SPI_CSR_BITS_8_BIT | SPI_CSR_NCPHA_VALID_LEADING_EDGE | SPI_CSR_CPOL_IDLE_LOW; // Configure control SPI peripheral

    IRQ_CLEAR(SPI0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SPI0_IRQn, 6, 0); // Set priority 6,0
    IRQ_ENABLE(SPI0_IRQn); // Enable vector
    SPI0->SPI_IER = SPI_IER_NSSR | SPI_IER_RDRF; // Enable interrupts

    SPI0->SPI_CR = SPI_CR_SPIEN; // Enable SPI
}
void init_dsp_components()
{
    // TX Components
    //// Baseband interpolating filter
    pTXBasebandFilter = fir_interpolator_complex_init(baseband_filter_taps_size, 16, baseband_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pTXBasebandFilter)
        DBGPRINTLN_CTX("TX - Baseband interpolating FIR initialized!");
    else
        DBGPRINTLN_CTX("TX - Failed baseband interpolating FIR initialization!");

    //// Audio AGC
    pTXAudioAGC = dsp_agc_init(1.f, 1.f, 80.f, 0.001f, 0.005f, 0.92f, 0.98f, 32);

    if(pTXAudioAGC)
        DBGPRINTLN_CTX("TX - Audio AGC initialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio AGC initialization!");

    flexframegenprops_s xFrameHeaderProps = {
        .check = LIQUID_CRC_32,
        .fec0 = LIQUID_FEC_SECDED7264,
        .fec1 = LIQUID_FEC_HAMMING84,
        .mod_scheme = LIQUID_MODEM_BPSK,
    };
    flexframegenprops_s xFramePayloadProps = {
        .check = LIQUID_CRC_32,
        .fec0 = LIQUID_FEC_CONV_V29P34,
        .fec1 = LIQUID_FEC_RS_M8,
        .mod_scheme = LIQUID_MODEM_BPSK,
    };

    flexframegen xFrameGen = flexframegen_create(NULL);

    if(xFrameGen)
        DBGPRINTLN_CTX("TX - Frame gemerator initialized!");
    else
        DBGPRINTLN_CTX("TX - Failed frame gemerator initialization!");

    flexframegen_set_header_props(xFrameGen, &xFrameHeaderProps);
    flexframegen_setprops(xFrameGen, &xFramePayloadProps);

    DBGPRINTLN_CTX("Coded payload length: %u bytes", fec_get_enc_msg_length(LIQUID_FEC_CONV_V29P34, fec_get_enc_msg_length(LIQUID_FEC_RS_M8, 219 + 4)));

    // RX Components
    //// Baseband decimating filter
    pRXBasebandFilter = fir_decimator_complex_init(baseband_filter_taps_size, 16, baseband_filter_taps, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

    if(pRXBasebandFilter)
        DBGPRINTLN_CTX("TX - Baseband decimating FIR initialized!");
    else
        DBGPRINTLN_CTX("TX - Failed baseband decimating FIR initialization!");

    //// Audio AGC
    pRXAudioAGC = dsp_agc_init(1.f, 1.f, 80.f, 0.001f, 0.005f, 0.92f, 0.98f, 32);

    if(pRXAudioAGC)
        DBGPRINTLN_CTX("TX - Audio AGC initialized!");
    else
        DBGPRINTLN_CTX("TX - Failed audio AGC initialization!");
}
int init()
{
    //icache_enable();
    //dcache_enable();

    rstc_init(1, 0, 0);

    pmc_init();
    pmc_update_clocks();

    matrix_init(); // Init Bus matrix configuration

    eefc_init(); // Init flash controller

    dbg_init(); // Init Debug module
    dbg_swo_config(BIT(0) | BIT(1), 12000000); // Init SWO channels 0 and 1 at 12 MHz

    //wdt_init(10000); // Init the watchdog timer, 10 s timeout
    WDT->WDT_MR &= ~(WDT_MR_WDRSTEN);

    pio_init();
    xdmac_init();
    trng_init();
    afec_init();

    usb_impl_init();
    usb_impl_set_endpoint_ready_isr(usb_endpoint_ready_isr);
    usb_impl_set_vendor_request_handler(usb_vendor_request_handler);
    usb_init(USBHS_DEVCTRL_SPDCONF_NORMAL);

    char szDeviceCoreName[32];
    char szDeviceName[32];
    uint32_t ulUniqueID[4];

    get_device_core_name(szDeviceCoreName, 32);
    get_device_name(szDeviceName, 32);
    eefc_get_unique_id(ulUniqueID);

    DBGPRINTLN_CTX("IcyRadio DSP v%lu (%s %s)!", BUILD_VERSION, __DATE__, __TIME__);
    DBGPRINTLN_CTX("Core: %s", szDeviceCoreName);
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

    afec_trigger_timer_init(5); // Trigger AFEC conversion every 5 seconds

    // RTOS
    extern void main(void * );
    xTaskCreate(main, "main", 4096, NULL, tskIDLE_PRIORITY + 1, NULL);

    return 0;
}
void main(void *pvParameters)
{
    init_baseband_i2s();
    init_audio_i2s();
    init_control_spi();
    DBGPRINTLN_CTX("Interfaces initialized!");

    //init_dsp_components();
    DBGPRINTLN_CTX("DSP components initialized!");

    DBGPRINTLN_CTX("Free RAM: %lu KiB", xPortGetFreeHeapSize() >> 10);

    while(1)
    {
        wdt_feed();

        // Update IRQ line
        taskENTER_CRITICAL();
        {
            if(CTRL_SPI_REGISTER(uint8_t, CTRL_SPI_REGISTER_IRQ_STATUS) & CTRL_SPI_REGISTER(uint8_t, CTRL_SPI_REGISTER_IRQ_MASK))
                DSP_IRQ_ASSERT();
        }
        taskEXIT_CRITICAL();

        /*
        if(usb_impl_endpoint_buffer_get_used_size(1) == 0)
        {
            static uint8_t num = 0;
            uint8_t ubData[8192];

            for(uint32_t i = 0; i < sizeof(ubData); i++)
                ubData[i] = num++;

            usb_impl_endpoint_buffer_flush(1);
            usb_impl_endpoint_buffer_write(1, ubData, sizeof(ubData));

            usb_impl_endpoint_buffer_dma_trigger(1, sizeof(ubData));
        }

        if(usb_impl_endpoint_buffer_get_used_size(2) > 0)
        {
            uint8_t ubData[4];

            usb_impl_endpoint_buffer_read(2, ubData, sizeof(ubData));
            usb_impl_endpoint_buffer_flush(2);

            usb_impl_endpoint_buffer_dma_trigger(2, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));
        }
        */

        static uint64_t ullLastLEDTick = 0;
        static uint64_t ullLastDiagnosticTick = 0;

        if((xTaskGetTickCount() * portTICK_PERIOD_MS) - ullLastLEDTick > 250)
        {
            ullLastLEDTick = (xTaskGetTickCount() * portTICK_PERIOD_MS);

            LED_TOGGLE();
        }

        if((xTaskGetTickCount() * portTICK_PERIOD_MS) - ullLastDiagnosticTick > 2000)
        {
            ullLastDiagnosticTick = (xTaskGetTickCount() * portTICK_PERIOD_MS);

            DBGPRINTLN_CTX("----------------------------------");
            DBGPRINTLN_CTX("Free RAM: %lu KiB", get_free_ram() >> 10);
            DBGPRINTLN_CTX("Internal Temperature: %.3f C", g_fInternalTemperature);
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

        // DTCM work buffers
        static int16_t DTCM_DATA psAudio[AUDIO_SAMPLE_BUFFER_SIZE];
        static iq16_t DTCM_DATA pBaseband[BASEBAND_SAMPLE_BUFFER_SIZE];

        if(ubTXAudioReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = (xTaskGetTickCount() * portTICK_PERIOD_MS);

            // Figure out which audio buffer has new samples
            volatile uint32_t *pulAudio = pulTXAudioBuffer + (ubTXAudioReady - 1) * AUDIO_SAMPLE_BUFFER_SIZE;

            // Process samples
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
            ubAudioMuted = 0; // Force locally generated samples, aka disable USB

            if(ubAudioMuted)
            {
                // Fill dummy baseband buffer with zeros
                arm_fill_q15(0, (int16_t *)pBaseband, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t) / sizeof(int16_t));

                if(usb_impl_endpoint_buffer_get_used_size(USB_TX_ENDPOINT) >= BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t))
                {
                    usb_impl_endpoint_buffer_read(USB_TX_ENDPOINT, (uint8_t *)pBaseband, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));

                    usb_impl_endpoint_buffer_flush(USB_TX_ENDPOINT);
                    usb_impl_endpoint_buffer_dma_trigger(USB_TX_ENDPOINT, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));
                }

                // Load baseband buffer
                load_tx_baseband_buffer(pBaseband);
            }
            else
            {
                // Pass audio through AGC
                dsp_agc_process(pTXAudioAGC, psAudio, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

                static uint8_t pubHeader[14];
                static uint8_t pubPayload[219];

                static uint8_t do_once = 0;

                if(!do_once)
                {
                    do_once = 1;

                    for(uint32_t i = 0; i < sizeof(pubHeader); i++)
                        pubHeader[i] = trng_pop_random() & 0xFF;

                    for(uint32_t i = 0; i < sizeof(pubPayload); i++)
                        pubPayload[i] = trng_pop_random() & 0xFF;
                }

                if(!flexframegen_is_assembled(xFrameGen))
                    flexframegen_assemble(xFrameGen, pubHeader, pubPayload, 219);

                static liquid_float_complex pcfBasebandPre[AUDIO_SAMPLE_BUFFER_SIZE];
                static iq16_t pBasebandPre[AUDIO_SAMPLE_BUFFER_SIZE];

                flexframegen_write_samples(xFrameGen, pcfBasebandPre, AUDIO_SAMPLE_BUFFER_SIZE);

                arm_float_to_q15((float *)pcfBasebandPre, (int16_t *)pBasebandPre, AUDIO_SAMPLE_BUFFER_SIZE * 2);

                // Interpolate and upsample to baseband rate
                fir_interpolator_complex_filter(pTXBasebandFilter, pBasebandPre, pBaseband);

                // Load baseband buffer
                load_tx_baseband_buffer(pBaseband);
            }

            // Declare done processing audio buffer
            ubTXAudioReady = 0;

            // Stop performance counters
            ullTXProcessingTimeUsed = (xTaskGetTickCount() * portTICK_PERIOD_MS) - ullProcessingStart;
        }

        if(ubRXBasebandReady)
        {
            // Start performance counters
            uint64_t ullProcessingStart = (xTaskGetTickCount() * portTICK_PERIOD_MS);

            // Figure out which baseband buffer has new samples
            volatile uint32_t *pulBaseband = pulRXBasebandBuffer + (ubRXBasebandReady - 1) * BASEBAND_SAMPLE_BUFFER_SIZE;

            // Process samples
            for(uint16_t i = 0; i < BASEBAND_SAMPLE_BUFFER_SIZE; i++)
            {
                // Build IQ pair from 32-bit I2S word
                pBaseband[i].i = pulBaseband[i] & 0xFFFF;   // Left I2S channel  -> I
                pBaseband[i].q = pulBaseband[i] >> 16;      // Right I2S channel -> Q
            }

            if(usb_impl_endpoint_buffer_get_used_size(USB_RX_ENDPOINT) == 0)
            {
                usb_impl_endpoint_buffer_flush(USB_RX_ENDPOINT);
                usb_impl_endpoint_buffer_write(USB_RX_ENDPOINT, (uint8_t *)pBaseband, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));

                usb_impl_endpoint_buffer_dma_trigger(USB_RX_ENDPOINT, BASEBAND_SAMPLE_BUFFER_SIZE * sizeof(iq16_t));
            }

            // Decimate
            fir_decimator_complex_filter(pRXBasebandFilter, pBaseband, NULL);

            // Pass through AGC
            //dsp_agc_process(pRXAudioAGC, psAudio, NULL, AUDIO_SAMPLE_BUFFER_SIZE);

            // Load audio buffer
            //load_rx_audio_buffer(psAudio, psAudio);

            // Declare done processing baseband buffer
            ubRXBasebandReady = 0;

            // Stop performance counters
            ullRXProcessingTimeUsed = (xTaskGetTickCount() * portTICK_PERIOD_MS) - ullProcessingStart;
        }
    }
}