#ifndef __AXI_DMAC_H__
#define __AXI_DMAC_H__

#include <stdint.h>
#include <unistd.h>
#include "axi.h"
#include "axi_irq_ctrl.h"
#include "utils.h"
#include "debug_macros.h"

#define AXI_DMAC_NUM_INSTANCES 4
#define AXI_DMAC_NUM_TRANSFERS 4

#define AXI_DMAC_REG_VERSION                0x000
#define AXI_DMAC_REG_PERI_ID                0x004
#define AXI_DMAC_REG_SCRATCH                0x008
#define AXI_DMAC_REG_ID                     0x00C
#define AXI_DMAC_REG_INTF_DESC              0x010
#define AXI_DMAC_REG_IRQ_MASK               0x080
#define AXI_DMAC_REG_IRQ_PENDING            0x084
#define AXI_DMAC_REG_IRQ_SOURCE             0x088
#define AXI_DMAC_REG_CONTROL                0x400
#define AXI_DMAC_REG_XFER_ID                0x404
#define AXI_DMAC_REG_XFER_SUBMIT            0x408
#define AXI_DMAC_REG_FLAGS                  0x40C
#define AXI_DMAC_REG_DEST_ADDRESS           0x410
#define AXI_DMAC_REG_SRC_ADDRESS            0x414
#define AXI_DMAC_REG_X_LENGTH               0x418
#define AXI_DMAC_REG_Y_LENGTH               0x41C
#define AXI_DMAC_REG_DEST_STRIDE            0x420
#define AXI_DMAC_REG_SRC_STRIDE             0x424
#define AXI_DMAC_REG_XFER_DONE              0x428
#define AXI_DMAC_REG_ACT_XFER_ID            0x42C
#define AXI_DMAC_REG_STATUS                 0x430
#define AXI_DMAC_REG_CUR_DEST_ADDRESS       0x434
#define AXI_DMAC_REG_CUR_SRC_ADDRESS        0x438
#define AXI_DMAC_REG_XFER_PROGRESS          0x448
#define AXI_DMAC_REG_PARTIAL_LENGTH         0x44C
#define AXI_DMAC_REG_PARTIAL_ID             0x450
#define AXI_DMAC_REG_DEST_ADDRESS_HIGH      0x490
#define AXI_DMAC_REG_SRC_ADDRESS_HIGH       0x494
#define AXI_DMAC_REG_CUR_DEST_ADDRESS_HIGH  0x498
#define AXI_DMAC_REG_CUR_SRC_ADDRESS_HIGH   0x49C

// AXI_DMAC_REG_IRQ_MASK/PENDING/SOURCE
#define AXI_DMAC_REG_IRQ_x_IRQ_XFER_QUEUED    BIT(0)
#define AXI_DMAC_REG_IRQ_x_IRQ_XFER_COMPLETED BIT(1)

// AXI_DMAC_REG_CONTROL
#define AXI_DMAC_REG_CONTROL_ENABLE BIT(0)
#define AXI_DMAC_REG_CONTROL_PAUSE  BIT(1)

// AXI_DMAC_REG_FLAGS
#define AXI_DMAC_REG_FLAGS_CYCLIC               BIT(0)
#define AXI_DMAC_REG_FLAGS_TLAST                BIT(1)
#define AXI_DMAC_REG_FLAGS_PARTIAL_REPORTING_EN BIT(2)

// AXI_DMAC_REG_XFER_DONE
#define AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(n)       BIT(n)
#define AXI_DMAC_REG_XFER_DONE_PARTIAL_XFER_DONE    BIT(31)

enum axi_dmac_flags
{
    AXI_DMAC_FLAGS_CYCLIC = AXI_DMAC_REG_FLAGS_CYCLIC,
    AXI_DMAC_FLAGS_TLAST = AXI_DMAC_REG_FLAGS_TLAST,
    AXI_DMAC_FLAGS_PARTIAL_REPORTING_EN = AXI_DMAC_REG_FLAGS_PARTIAL_REPORTING_EN,
};

enum axi_dmac_interface_type
{
    AXI_DMAC_INTF_TYPE_AXI_MM = 0,
    AXI_DMAC_INTF_TYPE_AXI_STREAM = 1,
    AXI_DMAC_INTF_TYPE_FIFO = 2,
};

enum axi_dmac_transfer_mode
{
    AXI_DMAC_MODE_DEV_TO_DEV = 0,
    AXI_DMAC_MODE_DEV_TO_MEM = 1,
    AXI_DMAC_MODE_MEM_TO_DEV = 2,
    AXI_DMAC_MODE_MEM_TO_MEM = 3,
};

typedef void (* axi_dmac_transfer_cb_t)(void *);
typedef struct axi_dmac_transfer_t axi_dmac_transfer_t;
struct axi_dmac_transfer_t
{
    volatile uint8_t ubDone;

    uint32_t ulSize;
    enum axi_dmac_flags eFlags;
    uint32_t ulSrcAddress;
    uint32_t ulDestAddress;

    axi_dmac_transfer_cb_t pfCallback;
    void *pCallbackArg;
};

typedef struct axi_dmac_caps_t axi_dmac_caps_t;
struct axi_dmac_caps_t
{
    uint32_t ulDestDataWidth;
    enum axi_dmac_interface_type eDestInterface;
    uint32_t ulSrcDataWidth;
    enum axi_dmac_interface_type eSrcInterface;
    uint16_t usBytesPerBurst;
    uint8_t ubCyclicSupport;
    uint32_t ulMaxTransferSize;
    uint32_t ulDestAddressMask;
    uint32_t ulSrcAddressMask;
    enum axi_dmac_transfer_mode eTransferMode;
};

extern void *pAXIDMACBase[AXI_DMAC_NUM_INSTANCES];

uint8_t axi_dmac_init(uint8_t ubInst);

uint32_t axi_dmac_get_core_version(uint8_t ubInst);
axi_dmac_caps_t axi_dmac_get_capabilities(uint8_t ubInst);

uint8_t axi_dmac_enable(uint8_t ubInst, uint8_t ubEnable);
uint8_t axi_dmac_enabled(uint8_t ubInst);
uint8_t axi_dmac_pause(uint8_t ubInst, uint8_t ubPause);
uint8_t axi_dmac_paused(uint8_t ubInst);
uint8_t axi_dmac_idle(uint8_t ubInst);

int8_t axi_dmac_transfer_submit(uint8_t ubInst, axi_dmac_transfer_t *pTransfer);
uint8_t axi_dmac_transfer_wait_completion(uint8_t ubInst, uint8_t ubTransferID, uint32_t ulTimeoutMs);

// Instance 0 - axi_dmac_rf_rx - AXI DMA Controller for RF RX
#define AXI_DMAC_RF_RX_INST 0

// Instance 1 - axi_dmac_rf_tx - AXI DMA Controller for RF TX
#define AXI_DMAC_RF_TX_INST 1

// Instance 2 - axi_dmac_i2s_rx - AXI DMA Controller for I2S RX
#define AXI_DMAC_I2S_RX_INST 2

// Instance 3 - axi_dmac_i2s_tx - AXI DMA Controller for I2S TX
#define AXI_DMAC_I2S_TX_INST 3

#endif // __AXI_DMAC_H__
