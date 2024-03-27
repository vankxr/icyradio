#pragma once

#include <cstdint>
#include <vector>
#include <string>
#include <utility>
#include <unistd.h>
#include <mutex>
#include "AXIPeripheral.hpp"
#include "AD9361.hpp"
#include "Utils.hpp"

// Base Registers
#define AXI_AD9361_BASE_OFFSET  0x0000

#define AXI_AD9361_REG_VERSION          0x0000
#define AXI_AD9361_REG_ID               0x0004
#define AXI_AD9361_REG_SCRATCH          0x0008
#define AXI_AD9361_REG_CONFIG           0x000C
#define AXI_AD9361_REG_PPS_IRQ_MASK     0x0010
#define AXI_AD9361_REG_FPGA_INFO        0x0014

//// AXI_AD9361_REG_CONFIG
#define AXI_AD9361_REG_CONFIG_RD_RAW_DATA               BIT(13)
#define AXI_AD9361_REG_CONFIG_EXT_SYNC                  BIT(12)
#define AXI_AD9361_REG_CONFIG_SCALECORRECTION_ONLY      BIT(9)
#define AXI_AD9361_REG_CONFIG_PPS_RECEIVER_ENABLE       BIT(8)
#define AXI_AD9361_REG_CONFIG_CMOS_OR_LVDS_N            BIT(7)
#define AXI_AD9361_REG_CONFIG_DDS_DISABLE               BIT(6)
#define AXI_AD9361_REG_CONFIG_DELAY_CONTROL_DISABLE     BIT(5)
#define AXI_AD9361_REG_CONFIG_MODE_1R1T                 BIT(4)
#define AXI_AD9361_REG_CONFIG_USERPORTS_DISABLE         BIT(3)
#define AXI_AD9361_REG_CONFIG_DATAFORMAT_DISABLE        BIT(2)
#define AXI_AD9361_REG_CONFIG_DCFILTER_DISABLE          BIT(1)
#define AXI_AD9361_REG_CONFIG_IQCORRECTION_DISABLE      BIT(0)

// ADC Common Registers
#define AXI_ADC_BASE_OFFSET     0x0000

#define AXI_ADC_REG_VERSION         0x0000
#define AXI_ADC_REG_RSTN            0x0040
#define AXI_ADC_REG_CNTRL           0x0044
#define AXI_ADC_REG_CNTRL_2         0x0048
#define AXI_ADC_REG_CNTRL_3         0x004C
#define AXI_ADC_REG_CLK_FREQ        0x0054
#define AXI_ADC_REG_CLK_RATIO       0x0058
#define AXI_ADC_REG_STATUS          0x005C
#define AXI_ADC_REG_SYNC_STATUS     0x0068
#define AXI_ADC_REG_DRP_CNTRL       0x0070
#define AXI_ADC_REG_DRP_STATUS      0x0074
#define AXI_ADC_REG_DRP_WDATA       0x0078
#define AXI_ADC_REG_DRP_RDATA       0x007C
#define AXI_ADC_REG_ADC_CONFIG_WR   0x0080
#define AXI_ADC_REG_ADC_CONFIG_RD   0x0084
#define AXI_ADC_REG_UI_STATUS       0x0088
#define AXI_ADC_REG_ADC_CONFIG_CTRL 0x008C
#define AXI_ADC_REG_USR_CNTRL_1     0x00A0
#define AXI_ADC_REG_ADC_START_CODE  0x00A4
#define AXI_ADC_REG_ADC_GPIO_IN     0x00B8
#define AXI_ADC_REG_ADC_GPIO_OUT    0x00BC
#define AXI_ADC_REG_PPS_COUNTER     0x00C0
#define AXI_ADC_REG_PPS_STATUS      0x00C4
#define AXI_ADC_REG_DELAY(l)        (0x0800 + (l) * 0x4) // Undocumented ?

//// AXI_ADC_REG_RSTN
#define AXI_ADC_REG_RSTN_CE_N       BIT(2)
#define AXI_ADC_REG_RSTN_MMCM_RSTN  BIT(1)
#define AXI_ADC_REG_RSTN_RSTN       BIT(0)

//// AXI_ADC_REG_CNTRL
#define AXI_ADC_REG_CNTRL_SDR_DDR_N     BIT(16)
#define AXI_ADC_REG_CNTRL_SYMB_OP       BIT(15)
#define AXI_ADC_REG_CNTRL_SYMB_8_16B    BIT(14)
#define AXI_ADC_REG_CNTRL_NUM_LANES(x)  (((x) & 0x1F) << 8)
#define AXI_ADC_REG_CNTRL_SYNC          BIT(3)
#define AXI_ADC_REG_CNTRL_R1_MODE       BIT(2)
#define AXI_ADC_REG_CNTRL_DDR_EDGESEL   BIT(1)
#define AXI_ADC_REG_CNTRL_PIN_MODE      BIT(0)

//// AXI_ADC_REG_CNTRL_2
#define AXI_ADC_REG_CNTRL_2_MANUAL_SYNC_REQUEST BIT(8)
#define AXI_ADC_REG_CNTRL_2_EXT_SYNC_DISARM     BIT(2)
#define AXI_ADC_REG_CNTRL_2_EXT_SYNC_ARM        BIT(1)

//// AXI_ADC_REG_CNTRL_3
#define AXI_ADC_REG_CNTRL_3_CRC_EN            BIT(8)
#define AXI_ADC_REG_CNTRL_3_CUSTOM_CONTROL(x) (((x) & 0xFF) << 0)

//// AXI_ADC_REG_STATUS
#define AXI_ADC_REG_STATUS_ADC_CTRL_STATUS  BIT(4)
#define AXI_ADC_REG_STATUS_PN_ERR           BIT(3)
#define AXI_ADC_REG_STATUS_PN_OOS           BIT(2)
#define AXI_ADC_REG_STATUS_OVER_RANGE       BIT(1)
#define AXI_ADC_REG_STATUS_STATUS           BIT(0)

//// AXI_ADC_REG_DRP_CNTRL
#define AXI_ADC_REG_DRP_CNTRL_DRP_RWN           BIT(28)
#define AXI_ADC_REG_DRP_CNTRL_DRP_ADDRESS(x)    (((x) & 0xFFF) << 16)

//// AXI_ADC_REG_DRP_STATUS
#define AXI_ADC_REG_DRP_STATUS_DRP_LOCKED   BIT(17)
#define AXI_ADC_REG_DRP_STATUS_DRP_STATUS   BIT(16)

//// AXI_ADC_REG_UI_STATUS
#define AXI_ADC_REG_UI_STATUS_UI_OVF    BIT(2)
#define AXI_ADC_REG_UI_STATUS_UI_UNF    BIT(1)

// ADC Channel Registers
#define AXI_ADC_CHAN_REG_CHAN_CNTRL(c)          (0x0400 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_STATUS(c)         (0x0404 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_RAW_DATA(c)       (0x0408 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_1(c)        (0x0410 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_2(c)        (0x0414 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3(c)        (0x0418 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1(c)    (0x0420 + (c) * 0x40)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_2(c)    (0x0424 + (c) * 0x40)

//// AXI_ADC_CHAN_REG_CHAN_CNTRL
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_ADC_LB_OWR      BIT(11)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_ADC_PN_SEL_OWR  BIT(10)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB       BIT(9)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB      BIT(8)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_SIGNEXT  BIT(6)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_TYPE     BIT(5)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_ENABLE   BIT(4)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_ADC_PN_TYPE_OWR BIT(1)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE          BIT(0)

//// AXI_ADC_CHAN_REG_CHAN_STATUS
#define AXI_ADC_CHAN_REG_CHAN_STATUS_CRC_ERR    BIT(12)
#define AXI_ADC_CHAN_REG_CHAN_STATUS_PN_ERR     BIT(2)
#define AXI_ADC_CHAN_REG_CHAN_STATUS_PN_OOS     BIT(1)
#define AXI_ADC_CHAN_REG_CHAN_STATUS_OVER_RANGE BIT(0)

//// AXI_ADC_CHAN_REG_CHAN_CNTRL_1
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(x)     (((x) & 0xFFFF) << 16)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(x)      (((x) & 0xFFFF) << 0)

//// AXI_ADC_CHAN_REG_CHAN_CNTRL_2
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(x)     (((x) & 0xFFFF) << 16)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(x)     (((x) & 0xFFFF) << 0)

//// AXI_ADC_CHAN_REG_CHAN_CNTRL_3
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(x)             (((x) & 0xF) << 16)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN9A           AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(0)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN23A          AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(1)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN7            AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(4)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN15           AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(5)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN23           AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(6)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PN31           AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(7)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_PNX            AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(9)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_NIB_RAMP       AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(10)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL_16B_RAMP       AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(11)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(x)           (((x) & 0xF) << 0)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL_INPUT_DATA   AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(0)
#define AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL_LOOPBACK     AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(1)

//// AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1_USR_DATATYPE_BE               BIT(25)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1_USR_DATATYPE_SIGNED           BIT(24)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1_USR_DATATYPE_SHIFT(x)         (((x) & 0xFF) << 16)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1_USR_DATATYPE_TOTAL_BITS(x)    (((x) & 0xFF) << 8)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_1_USR_DATATYPE_BITS(x)          (((x) & 0xFF) << 0)

//// AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_2
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_2_USR_DECIMATION_M(x)    (((x) & 0xFFFF) << 16)
#define AXI_ADC_CHAN_REG_CHAN_USR_CNTRL_2_USR_DECIMATION_N(x)    (((x) & 0xFFFF) << 0)

// DAC Common Registers
#define AXI_DAC_BASE_OFFSET     0x4000

#define AXI_DAC_REG_VERSION         0x0000
#define AXI_DAC_REG_RSTN            0x0040
#define AXI_DAC_REG_CNTRL_1         0x0044
#define AXI_DAC_REG_CNTRL_2         0x0048
#define AXI_DAC_REG_RATECNTRL       0x004C
#define AXI_DAC_REG_FRAME           0x0050
#define AXI_DAC_REG_CLK_FREQ        0x0054
#define AXI_DAC_REG_CLK_RATIO       0x0058
#define AXI_DAC_REG_STATUS          0x005C
#define AXI_DAC_REG_DAC_CLKSEL      0x0060
#define AXI_DAC_REG_SYNC_STATUS     0x0068
#define AXI_DAC_REG_DRP_CNTRL       0x0070
#define AXI_DAC_REG_DRP_STATUS      0x0074
#define AXI_DAC_REG_DRP_WDATA       0x0078
#define AXI_DAC_REG_DRP_RDATA       0x007C
#define AXI_DAC_REG_DAC_CONFIG_WR   0x0080
#define AXI_DAC_REG_DAC_CONFIG_RD   0x0084
#define AXI_DAC_REG_UI_STATUS       0x0088
#define AXI_DAC_REG_DAC_CONFIG_CTRL 0x008C
#define AXI_DAC_REG_USR_CNTRL_1     0x00A0
#define AXI_DAC_REG_DAC_GPIO_IN     0x00B8
#define AXI_DAC_REG_DAC_GPIO_OUT    0x00BC
#define AXI_DAC_REG_DELAY(l)        (0x0800 + (l) * 0x4) // Undocumented ?

//// AXI_DAC_REG_RSTN
#define AXI_DAC_REG_RSTN_CE_N       BIT(2)
#define AXI_DAC_REG_RSTN_MMCM_RSTN  BIT(1)
#define AXI_DAC_REG_RSTN_RSTN       BIT(0)

//// AXI_DAC_REG_CNTRL_1
#define AXI_DAC_REG_CNTRL_1_MANUAL_SYNC_REQUEST     BIT(8)
#define AXI_DAC_REG_CNTRL_1_EXT_SYNC_DISARM         BIT(2)
#define AXI_DAC_REG_CNTRL_1_EXT_SYNC_ARM            BIT(1)
#define AXI_DAC_REG_CNTRL_1_SYNC                    BIT(0)

//// AXI_DAC_REG_CNTRL_2
#define AXI_DAC_REG_CNTRL_2_SDR_DDR_N     BIT(16)
#define AXI_DAC_REG_CNTRL_2_SYMB_OP       BIT(15)
#define AXI_DAC_REG_CNTRL_2_SYMB_8_16B    BIT(14)
#define AXI_DAC_REG_CNTRL_2_NUM_LANES(x)  (((x) & 0x1F) << 8)
#define AXI_DAC_REG_CNTRL_2_PAR_TYPE      BIT(7)
#define AXI_DAC_REG_CNTRL_2_PAR_ENB       BIT(6)
#define AXI_DAC_REG_CNTRL_2_R1_MODE       BIT(5)
#define AXI_DAC_REG_CNTRL_2_DATA_FORMAT   BIT(4)

//// AXI_DAC_REG_STATUS
#define AXI_DAC_REG_STATUS_STATUS         BIT(0)

//// AXI_DAC_REG_DRP_CNTRL
#define AXI_DAC_REG_DRP_CNTRL_DRP_RWN           BIT(28)
#define AXI_DAC_REG_DRP_CNTRL_DRP_ADDRESS(x)    (((x) & 0xFFF) << 16)

//// AXI_DAC_REG_DRP_STATUS
#define AXI_DAC_REG_DRP_STATUS_DRP_LOCKED   BIT(17)
#define AXI_DAC_REG_DRP_STATUS_DRP_STATUS   BIT(16)

//// AXI_DAC_REG_UI_STATUS
#define AXI_DAC_REG_UI_STATUS_IF_BUSY   BIT(4)
#define AXI_DAC_REG_UI_STATUS_UI_OVF    BIT(1)
#define AXI_DAC_REG_UI_STATUS_UI_UNF    BIT(0)

// DAC Channel Registers
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_1(c)        (0x0400 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_2(c)        (0x0404 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_3(c)        (0x0408 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_4(c)        (0x040C + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_5(c)        (0x0410 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_6(c)        (0x0414 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7(c)        (0x0418 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_8(c)        (0x041C + (c) * 0x40)
#define AXI_DAC_CHAN_REG_USR_CNTRL_3(c)         (0x0420 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_USR_CNTRL_4(c)         (0x0424 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_USR_CNTRL_5(c)         (0x0428 + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_9(c)        (0x042C + (c) * 0x40)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_10(c)       (0x0430 + (c) * 0x40)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_1
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_PHASE_DW(x)    (((x) & 0x3F) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(x)     (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_2
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(x)      (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(x)      (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_3
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_3_DDS_SCALE_2(x)     (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_4
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_4_DDS_INIT_2(x)      (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_4_DDS_INCR_2(x)      (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_5
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_5_DDS_PATT_2(x)      (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_5_DDS_PATT_1(x)      (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_6
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB     BIT(2)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_6_DAC_LB_OWR    BIT(1)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_6_DAC_PN_OWR    BIT(0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_7
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(x)            (((x) & 0xF) << 0)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_TONE          AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(0)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_PATTERN       AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(1)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_DMA           AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(2)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_ZERO          AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(3)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_INV_PN7       AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(4)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_INV_PN15      AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(5)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_PN7           AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(6)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_PN15          AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(7)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_LOOPBACK      AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(8)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_PNX           AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(9)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_NIB_RAMP      AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(10)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_16B_RAMP      AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(11)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_8
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(x)     (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(x)     (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3_USR_DATATYPE_BE               BIT(25)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3_USR_DATATYPE_SIGNED           BIT(24)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3_USR_DATATYPE_SHIFT(x)         (((x) & 0xFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3_USR_DATATYPE_TOTAL_BITS(x)    (((x) & 0xFF) << 8)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_3_USR_DATATYPE_BITS(x)          (((x) & 0xFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_4
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_4_USR_INTERPOLATION_M(x)    (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_4_USR_INTERPOLATION_N(x)    (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_5
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_5_DAC_IQ_SWAP   BIT(1)
#define AXI_DAC_CHAN_REG_CHAN_USR_CNTRL_5_DAC_IQ_MODE   BIT(0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_9
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_9_DDS_INIT_1_EXTENDED(x)    (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_9_DDS_INCR_1_EXTENDED(x)    (((x) & 0xFFFF) << 0)

//// AXI_DAC_CHAN_REG_CHAN_CNTRL_10
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_10_DDS_INIT_2_EXTENDED(x)    (((x) & 0xFFFF) << 16)
#define AXI_DAC_CHAN_REG_CHAN_CNTRL_10_DDS_INCR_2_EXTENDED(x)    (((x) & 0xFFFF) << 0)

class AXIAD9361: public AXIPeripheral
{
public:
    class ADC: public AXIPeripheral
    {
        friend class AXIAD9361;

    public:
        enum Channel : uint8_t
        {
            CH0 = 0,
            CH1 = 1,
            CH2 = 2,
            CH3 = 3,
            CH_MAX,
            // Named aliases
            RX1_I = 0,
            RX1_Q = 1,
            RX2_I = 2,
            RX2_Q = 3
        };
        enum PNSource
        {
            PN9A = 0,
            PN23A = 1,
            PN7 = 4,
            PN15 = 5,
            PN23 = 6,
            PN31 = 7,
            PNX = 9,
            PN_NIB_RAMP = 10,
            PN_16B_RAMP = 11,
            PN_MAX,
        };
        enum DataSource
        {
            DATA_SRC_INPUT_DATA = 0,
            DATA_SRC_LOOPBACK = 1,
            DATA_SRC_MAX,
        };

    private:
        ADC(void *base_address, AXIAD9361 *parent);

    public:
        ~ADC();

    private:
        void setCalibrationPhaseScale(AXIAD9361::ADC::Channel ch, double val, bool is_phase);
        double getCalibrationPhaseScale(AXIAD9361::ADC::Channel ch, bool is_phase);

    public:
        void init();
        void deinit();

        uint32_t getIPVersion();

        uint64_t getInterfaceClockFrequency(uint64_t input_freq);
        uint64_t getSamplingFrequency(uint64_t input_freq);

        void updateActiveChannels();

        void enableChannel(AXIAD9361::ADC::Channel ch, bool enable = true);
        inline void disableChannel(AXIAD9361::ADC::Channel ch)
        {
            this->enableChannel(ch, false);
        }

        void setDataSource(AXIAD9361::ADC::Channel ch, AXIAD9361::ADC::DataSource src);
        AXIAD9361::ADC::DataSource getDataSource(AXIAD9361::ADC::Channel ch);

        void setPNSource(AXIAD9361::ADC::Channel ch, AXIAD9361::ADC::PNSource src);
        AXIAD9361::ADC::PNSource getPNSource(AXIAD9361::ADC::Channel ch);

        void enableCalibration(AXIAD9361::ADC::Channel ch, bool enable = true);
        inline void disableCalibration(AXIAD9361::ADC::Channel ch)
        {
            this->enableCalibration(ch, false);
        }
        bool isCalibrationEnabled(AXIAD9361::ADC::Channel ch);
        inline void setCalibrationPhase(AXIAD9361::ADC::Channel ch, double val)
        {
            this->setCalibrationPhaseScale(ch, val, true);
        }
        inline double getCalibrationPhase(AXIAD9361::ADC::Channel ch)
        {
            return this->getCalibrationPhaseScale(ch, true);
        }
        inline void setCalibrationScale(AXIAD9361::ADC::Channel ch, double val)
        {
            this->setCalibrationPhaseScale(ch, val, false);
        }
        inline double getCalibrationScale(AXIAD9361::ADC::Channel ch)
        {
            return this->getCalibrationPhaseScale(ch, false);
        }

        void enableDCFilter(AXIAD9361::ADC::Channel ch, bool enable = true);
        inline void disableDCFilter(AXIAD9361::ADC::Channel ch)
        {
            this->enableDCFilter(ch, false);
        }
        bool isDCFilterEnabled(AXIAD9361::ADC::Channel ch);
        void setDCFilterCoefficient(AXIAD9361::ADC::Channel ch, double val);
        double getDCFilterCoefficient(AXIAD9361::ADC::Channel ch);

        void setDCOffset(AXIAD9361::ADC::Channel ch, double offset);
        double getDCOffset(AXIAD9361::ADC::Channel ch);

        bool checkPN(bool check_channels, uint32_t delay);

        void setLaneDelay(uint8_t lane, uint8_t delay); // Lane 0-6 for AD9361, Delay 0-31
        uint32_t getLaneDelay(uint8_t lane); // Lane 0-6 for AD9361

    private:
        AXIAD9361 *parent;
    };

    friend class AXIAD9361::ADC;

    class DAC: public AXIPeripheral
    {
        friend class AXIAD9361;

    public:
        enum Channel : uint8_t
        {
            CH0 = 0,
            CH1 = 1,
            CH2 = 2,
            CH3 = 3,
            CH_MAX,
            // Named aliases
            TX1_I = 0,
            TX1_Q = 1,
            TX2_I = 2,
            TX2_Q = 3
        };
        enum Tone : uint8_t
        {
            TONE1 = 0,
            TONE2 = 1,
            TONE_MAX,
        };
        enum DataSource
        {
            DATA_SRC_DDS = 0,
            DATA_SRC_SED = 1,
            DATA_SRC_DMA = 2,
            DATA_SRC_ZERO = 3,
            DATA_SRC_INV_PN7 = 4,
            DATA_SRC_INV_PN15 = 5,
            DATA_SRC_PN7 = 6,
            DATA_SRC_PN15 = 7,
            DATA_SRC_LOOPBACK = 8,
            DATA_SRC_PNX = 9,
            DATA_SRC_NIB_RAMP = 10,
            DATA_SRC_16B_RAMP = 11,
            DATA_SRC_MAX,
        };

    private:
        DAC(void *base_address, AXIAD9361 *parent);

    public:
        ~DAC();

    private:
        void setCalibrationPhaseScale(AXIAD9361::DAC::Channel ch, double val, bool is_phase);
        double getCalibrationPhaseScale(AXIAD9361::DAC::Channel ch, bool is_phase);

    public:
        void init();
        void deinit();

        uint32_t getIPVersion();

        uint64_t getInterfaceClockFrequency(uint64_t input_freq);
        uint64_t getSamplingFrequency(uint64_t input_freq);

        void updateActiveChannels();
        void sync();

        void setDataSource(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::DataSource src);
        AXIAD9361::DAC::DataSource getDataSource(AXIAD9361::DAC::Channel ch);

        void enableCalibration(AXIAD9361::DAC::Channel ch, bool enable = true);
        inline void disableCalibration(AXIAD9361::DAC::Channel ch)
        {
            this->enableCalibration(ch, false);
        }
        bool isCalibrationEnabled(AXIAD9361::DAC::Channel ch);
        inline void setCalibrationPhase(AXIAD9361::DAC::Channel ch, double val)
        {
            this->setCalibrationPhaseScale(ch, val, true);
        }
        inline double getCalibrationPhase(AXIAD9361::DAC::Channel ch)
        {
            return this->getCalibrationPhaseScale(ch, true);
        }
        inline void setCalibrationScale(AXIAD9361::DAC::Channel ch, double val)
        {
            this->setCalibrationPhaseScale(ch, val, false);
        }
        inline double getCalibrationScale(AXIAD9361::DAC::Channel ch)
        {
            return this->getCalibrationPhaseScale(ch, false);
        }

        void setDDSToneFrequency(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, uint64_t input_freq, uint32_t freq);
        uint32_t getDDSToneFrequency(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, uint64_t input_freq);
        void setDDSTonePhase(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, double phase);
        double getDDSTonePhase(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone);
        void setDDSToneScale(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, double scale);
        double getDDSToneScale(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone);

        void setLaneDelay(uint8_t lane, uint8_t delay); // Lane 0-6 for AD9361, Delay 0-31
        uint32_t getLaneDelay(uint8_t lane); // Lane 0-6 for AD9361

    private:
        AXIAD9361 *parent;
    };

    friend class AXIAD9361::DAC;

public:
    enum InterfaceTuneFlags : uint32_t
    {
        DO_HDL_RX_ADC = BIT(0),
        DO_HDL_TX_DAC = BIT(1),
        DO_CHIP_RX = BIT(2),
        DO_CHIP_TX = BIT(3),

        DONT_CHANGE_CLK = BIT(30),
        RESTORE_PREVIOUS = BIT(31),
    };

private:
    void setHDLIODelay(bool adc, bool dac, uint8_t val);

    std::vector<std::pair<std::string, uint8_t>> tuneHDLTiming(bool dac, std::vector<uint32_t> &freqs, bool restore = false);
    inline std::vector<std::pair<std::string, uint8_t>> tuneADCTiming(std::vector<uint32_t> &freqs, bool restore = false)
    {
        return this->tuneHDLTiming(false, freqs, restore);
    }
    inline std::vector<std::pair<std::string, uint8_t>> tuneDACTiming(std::vector<uint32_t> &freqs, bool restore = false)
    {
        return this->tuneHDLTiming(true, freqs, restore);
    }
    std::vector<std::pair<std::string, uint8_t>> tuneChipTiming(bool tx, std::vector<uint32_t> &freqs, bool restore = false);
    inline std::vector<std::pair<std::string, uint8_t>> tuneChipTXTiming(std::vector<uint32_t> &freqs, bool restore = false)
    {
        return this->tuneChipTiming(true, freqs, restore);
    }
    inline std::vector<std::pair<std::string, uint8_t>> tuneChipRXTiming(std::vector<uint32_t> &freqs, bool restore = false)
    {
        return this->tuneChipTiming(false, freqs, restore);
    }
public:
    AXIAD9361(void *base_address, AD9361 *phy = nullptr);
    ~AXIAD9361();

    void init(AD9361 *phy = nullptr);
    void deinit();

    uint32_t getIPVersion();

    uint8_t getChannelCount();
    uint8_t getSamplingFrequencyRatio();

    void updateActiveChannels();

    void enableHDLLoopback(bool enable = true); // Phy RX port -> HDL -> Phy TX port
    inline void disableHDLLoopback()
    {
        this->enableHDLLoopback(false);
    }
    void enableDMALoopback(bool enable = true); // TX DMA -> HDL -> RX DMA
    inline void disableDMALoopback()
    {
        this->enableDMALoopback(false);
    }

    std::string analyzeInterfaceTiming();
    std::vector<std::pair<std::string, uint8_t>> tuneInterfaceTiming(AXIAD9361::InterfaceTuneFlags flags, std::vector<uint32_t> freqs = {});
    inline std::vector<std::pair<std::string, uint8_t>> tuneInterfaceTiming(uint32_t flags, std::vector<uint32_t> freqs = {})
    {
        return this->tuneInterfaceTiming((AXIAD9361::InterfaceTuneFlags)flags, freqs);
    }

public:
    AXIAD9361::ADC *adc;
    AXIAD9361::DAC *dac;

private:
    std::recursive_mutex mutex;

    AD9361 *phy;

    AXIAD9361::ADC::DataSource prev_adc_data_src[AXIAD9361::ADC::CH_MAX];
    AXIAD9361::DAC::DataSource prev_dac_data_src[AXIAD9361::DAC::CH_MAX];

    bool is_cmos_interface;
};