#ifndef __AXI_XADC_H__
#define __AXI_XADC_H__

#include <stdint.h>
#include <unistd.h>
#include "utils.h"

extern void *pAXIXADCBase;

#define AXI_XADC_REG_SRR        0x000
#define AXI_XADC_REG_SR         0x004
#define AXI_XADC_REG_AOSR       0x008
#define AXI_XADC_REG_CONVSTR    0x00C
#define AXI_XADC_REG_SYSMONRR   0x010
#define AXI_XADC_REG_GIER       0x05C
#define AXI_XADC_REG_IPISR      0x060
#define AXI_XADC_REG_IPIER      0x068
#define AXI_XADC_REG_TEMP       0x200
#define AXI_XADC_REG_VCCINT     0x204
#define AXI_XADC_REG_VCCAUX     0x208
#define AXI_XADC_REG_VP_VN      0x20C
#define AXI_XADC_REG_VREFP      0x210
#define AXI_XADC_REG_VREFN      0x214
#define AXI_XADC_REG_VBRAM      0x218
#define AXI_XADC_REG_SUP_OFFSET 0x220
#define AXI_XADC_REG_ADC_OFFSET 0x224
#define AXI_XADC_REG_GAIN_ERR   0x228
#define AXI_XADC_REG_VAUX(n)    (0x240 + (n) * 4)
#define AXI_XADC_REG_MAX_TEMP   0x280
#define AXI_XADC_REG_MAX_VCCINT 0x284
#define AXI_XADC_REG_MAX_VCCAUX 0x288
#define AXI_XADC_REG_MAX_VBRAM  0x28C
#define AXI_XADC_REG_MIN_TEMP   0x290
#define AXI_XADC_REG_MIN_VCCINT 0x294
#define AXI_XADC_REG_MIN_VCCAUX 0x298
#define AXI_XADC_REG_MIN_VBRAM  0x29C
#define AXI_XADC_REG_FLAG       0x2FC
#define AXI_XADC_REG_CONF_0     0x300
#define AXI_XADC_REG_CONF_1     0x304
#define AXI_XADC_REG_CONF_2     0x308
#define AXI_XADC_REG_SEQ(n)     (0x320 + (n) * 4)
#define AXI_XADC_REG_ALARM(n)   (0x340 + (n) * 4)

#define AXI_XADC_REG_SRR_RESET_VALUE 0x0A

#define AXI_XADC_REG_SR_CHAN(r)         ((r) & 0x1F)
#define AXI_XADC_REG_SR_EOC             BIT(5)
#define AXI_XADC_REG_SR_EOS             BIT(6)
#define AXI_XADC_REG_SR_BUSY            BIT(7)
#define AXI_XADC_REG_SR_JTAG_LOCKED     BIT(8)
#define AXI_XADC_REG_SR_JTAG_MODIFIED   BIT(9)
#define AXI_XADC_REG_SR_JTAG_BUSY       BIT(10)

#define AXI_XADC_REG_AOSR_OT            BIT(0)
#define AXI_XADC_REG_AOSR_ALM(n)        BIT(1 + (n))

#define AXI_XADC_REG_CONVSTR_CONVST                 BIT(0)
#define AXI_XADC_REG_CONVSTR_TEMP_BUS_UPDATE        BIT(1)
#define AXI_XADC_REG_CONVSTR_TEMP_RD_WAIT_CYCLE(x)  (((x) & 0xFFFF) << 2)

#define AXI_XADC_REG_SYSMONRR_RESET     BIT(0)

#define AXI_XADC_REG_GIER_GIE           BIT(0)

#define AXI_XADC_REG_IPIxR_OT               BIT(0)
#define AXI_XADC_REG_IPIxR_ALM(n)           BIT((((n) > 2) ? 7 : 1) + (n))
#define AXI_XADC_REG_IPIxR_EOS              BIT(4)
#define AXI_XADC_REG_IPIxR_EOC              BIT(5)
#define AXI_XADC_REG_IPIxR_JTAG_LOCKED      BIT(6)
#define AXI_XADC_REG_IPIxR_JTAG_MODIFIED    BIT(7)
#define AXI_XADC_REG_IPIxR_OT_DEACT         BIT(8)
#define AXI_XADC_REG_IPIxR_ALM0_DEACT       BIT(9)

uint8_t axi_xadc_init();

double axi_xadc_read_temperature();
double axi_xadc_read_vccint();
double axi_xadc_read_vccaux();
double axi_xadc_read_vbram();

double axi_xadc_read_max_temperature();
double axi_xadc_read_max_vccint();
double axi_xadc_read_max_vccaux();
double axi_xadc_read_max_vbram();

double axi_xadc_read_min_temperature();
double axi_xadc_read_min_vccint();
double axi_xadc_read_min_vccaux();
double axi_xadc_read_min_vbram();

#endif // __AXI_XADC_H__