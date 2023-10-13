#ifndef __AXI_RF_TSTAMP_H__
#define __AXI_RF_TSTAMP_H__

#include <stdint.h>
#include <pthread.h>
#include <unistd.h>
#include "axi.h"
#include "axi_gpio.h"
#include "utils.h"
#include "debug_macros.h"

#define AXI_RF_TSTAMP_REG_VERSION         0x00
#define AXI_RF_TSTAMP_REG_CTL_STAT        0x04
#define AXI_RF_TSTAMP_REG_OVR             0x08
#define AXI_RF_TSTAMP_REG_CNT_LOW         0x20
#define AXI_RF_TSTAMP_REG_CNT_HIGH        0x24
#define AXI_RF_TSTAMP_REG_CNT_TX_LOW      0x28
#define AXI_RF_TSTAMP_REG_CNT_TX_HIGH     0x2C
#define AXI_RF_TSTAMP_REG_CNT_RX_LOW      0x30
#define AXI_RF_TSTAMP_REG_CNT_RX_HIGH     0x34
#define AXI_RF_TSTAMP_REG_CNT_LATCH_LOW   0x38
#define AXI_RF_TSTAMP_REG_CNT_LATCH_HIGH  0x3C

#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_EN                     BIT(0)
#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_DIS                    BIT(1)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_EN                     BIT(2)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_DIS                    BIT(3)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_EN                 BIT(4)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_DIS                BIT(5)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_EN                 BIT(6)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_DIS                BIT(7)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN                    BIT(8)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS                   BIT(9)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ         BIT(10)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_UNREQ       BIT(11)
#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_STAT                   BIT(16)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_STAT                   BIT(17)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_STAT               BIT(18)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_STAT               BIT(19)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT                  BIT(24)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ_STAT    BIT(25)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARMED           BIT(26)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_VALID           BIT(27)

#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR_EN        BIT(0)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR_VAL       BIT(1)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR_EN   BIT(2)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR_VAL  BIT(3)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR_EN       BIT(4)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR_VAL      BIT(5)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR_EN       BIT(6)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR_VAL      BIT(7)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY               BIT(8)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ          BIT(9)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY              BIT(10)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY              BIT(11)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR           BIT(12)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR      BIT(13)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR          BIT(14)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR          BIT(15)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_STKY          BIT(16)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_STKY     BIT(17)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_STKY         BIT(18)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_STKY         BIT(19)
#define AXI_RF_TSTAMP_REG_OVR_TX_FIFO_UNDERFLOW_STKY   BIT(20)
#define AXI_RF_TSTAMP_REG_OVR_RX_FIFO_OVERFLOW_STKY    BIT(21)

extern void *pAXIRFTstampBase;

uint8_t axi_rf_tstamp_init();

uint32_t axi_rf_tstamp_get_core_version();

uint8_t axi_rf_tstamp_tx_enable(uint8_t ubEnable);
uint8_t axi_rf_tstamp_tx_enabled();
uint8_t axi_rf_tstamp_rx_enable(uint8_t ubEnable);
uint8_t axi_rf_tstamp_rx_enabled();

void axi_rf_tstamp_cnt_enable(uint8_t ubEnable);
uint8_t axi_rf_tstamp_cnt_enabled();
void axi_rf_tstamp_cnt_tx_enable(uint8_t ubEnable);
uint8_t axi_rf_tstamp_cnt_tx_enabled();
void axi_rf_tstamp_cnt_rx_enable(uint8_t ubEnable);
uint8_t axi_rf_tstamp_cnt_rx_enabled();
void axi_rf_tstamp_cnt_latch_arm(uint8_t ubReqArm);
uint8_t axi_rf_tstamp_cnt_latch_armed();

uint64_t axi_rf_tstamp_get_cnt();
uint8_t axi_rf_tstamp_set_cnt(uint64_t ullVal);
uint64_t axi_rf_tstamp_get_tx_cnt();
void axi_rf_tstamp_set_tx_cnt(uint64_t ullVal);
uint64_t axi_rf_tstamp_get_rx_cnt();
void axi_rf_tstamp_set_rx_cnt(uint64_t ullVal);
uint64_t axi_rf_tstamp_get_cnt_latch();
uint8_t axi_rf_tstamp_get_cnt_latch_valid();

#endif // __AXI_RF_TSTAMP_H__