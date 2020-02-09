#ifndef __TSCS25XX_H__
#define __TSCS25XX_H__

#include <em_device.h>
#include <stdlib.h>
#include "systick.h"
#include "utils.h"
#include "atomic.h"
#include "gpio.h"
#include "i2c.h"

#define TSCS25XX_I2C_ADDR 0x71

// Registers
#define TSCS25XX_REG_HPVOLL             0x00
#define TSCS25XX_REG_HPVOLR             0x01
#define TSCS25XX_REG_SPKVOLL            0x02
#define TSCS25XX_REG_SPKVOLR            0x03
#define TSCS25XX_REG_DACVOLL            0x04
#define TSCS25XX_REG_DACVOLR            0x05
#define TSCS25XX_REG_ADCVOLL            0x06
#define TSCS25XX_REG_ADCVOLR            0x07
#define TSCS25XX_REG_INVOLL             0x08
#define TSCS25XX_REG_INVOLR             0x09
#define TSCS25XX_REG_VUCTL              0x0A
#define TSCS25XX_REG_INMODE             0x0B
#define TSCS25XX_REG_INSELL             0x0C
#define TSCS25XX_REG_INSELR             0x0D
#define TSCS25XX_REG_ALC0               0x0E
#define TSCS25XX_REG_ALC1               0x0F
#define TSCS25XX_REG_ALC2               0x10
#define TSCS25XX_REG_ALC3               0x11
#define TSCS25XX_REG_NGATE              0x12
#define TSCS25XX_REG_AIC1               0x13
#define TSCS25XX_REG_AIC2               0x14
#define TSCS25XX_REG_AIC3               0x15
#define TSCS25XX_REG_CNVRTR0            0x16
#define TSCS25XX_REG_ADCSR              0x17
#define TSCS25XX_REG_CNVRTR1            0x18
#define TSCS25XX_REG_DACSR              0x19
#define TSCS25XX_REG_PWRM1              0x1A
#define TSCS25XX_REG_PWRM2              0x1B
#define TSCS25XX_REG_CTL                0x1C
#define TSCS25XX_REG_THERMST            0x1D
#define TSCS25XX_REG_THERMSPKR1         0x1E
#define TSCS25XX_REG_CONFIG0            0x1F
#define TSCS25XX_REG_CONFIG1            0x20
#define TSCS25XX_REG_GAINCTL            0x21
#define TSCS25XX_REG_COP1               0x22
#define TSCS25XX_REG_COP2               0x23
#define TSCS25XX_REG_CLECTL             0x25
#define TSCS25XX_REG_MUGAIN             0x26
#define TSCS25XX_REG_COMPTH             0x27
#define TSCS25XX_REG_CMPRAT             0x28
#define TSCS25XX_REG_CATKTCL            0x29
#define TSCS25XX_REG_CATKTCH            0x2A
#define TSCS25XX_REG_CRELTCL            0x2B
#define TSCS25XX_REG_CRELTCH            0x2C
#define TSCS25XX_REG_LIMTH              0x2D
#define TSCS25XX_REG_LIMTGT             0x2E
#define TSCS25XX_REG_LATKTCL            0x2F
#define TSCS25XX_REG_LATKTCH            0x30
#define TSCS25XX_REG_LRELTCL            0x31
#define TSCS25XX_REG_LRELTCH            0x32
#define TSCS25XX_REG_EXPTH              0x33
#define TSCS25XX_REG_EXPRAT             0x34
#define TSCS25XX_REG_XATKTCL            0x35
#define TSCS25XX_REG_XATKTCH            0x36
#define TSCS25XX_REG_XRELTCL            0x37
#define TSCS25XX_REG_XRELTCH            0x38
#define TSCS25XX_REG_FXCTL              0x39
#define TSCS25XX_REG_DACCRWRL           0x3A
#define TSCS25XX_REG_DACCRWRM           0x3B
#define TSCS25XX_REG_DACCRWRH           0x3C
#define TSCS25XX_REG_DACCRRDL           0x3D
#define TSCS25XX_REG_DACCRRDM           0x3E
#define TSCS25XX_REG_DACCRRDH           0x3F
#define TSCS25XX_REG_DACCRADDR          0x40
#define TSCS25XX_REG_DCOFSEL            0x41
#define TSCS25XX_REG_PWM0               0x42
#define TSCS25XX_REG_PWM1               0x43
#define TSCS25XX_REG_PWM2               0x44
#define TSCS25XX_REG_PWM3               0x45
#define TSCS25XX_REG_PLLCTL9            0x4E
#define TSCS25XX_REG_PLLCTLA            0x4F
#define TSCS25XX_REG_PLLCTLB            0x50
#define TSCS25XX_REG_PLLCTLC            0x51
#define TSCS25XX_REG_PLLCTLD            0x52
#define TSCS25XX_REG_PLLCTLE            0x53
#define TSCS25XX_REG_PLLCTLF            0x54
#define TSCS25XX_REG_PLLCTL10           0x55
#define TSCS25XX_REG_PLLCTL11           0x56
#define TSCS25XX_REG_PLLCTL12           0x57
#define TSCS25XX_REG_PLLCTL1B           0x60
#define TSCS25XX_REG_PLLCTL1C           0x61
#define TSCS25XX_REG_TIMEBASE           0x77
#define TSCS25XX_REG_DEVADR             0x7C
#define TSCS25XX_REG_DEVIDL             0x7D
#define TSCS25XX_REG_DEVIDH             0x7E
#define TSCS25XX_REG_REVID              0x7F
#define TSCS25XX_REG_RESET              0x80
#define TSCS25XX_REG_THERMSPKR2         0x88
#define TSCS25XX_REG_COP3               0x89
#define TSCS25XX_REG_DACCRSTAT          0x8A
#define TSCS25XX_REG_HPDETSTAT          0x8B
#define TSCS25XX_REG_PLLCTL0            0x8E
#define TSCS25XX_REG_PLLREFSEL          0x8F
#define TSCS25XX_REG_GPIOCTL1           0xC0
#define TSCS25XX_REG_GPIOCTL2           0xC1
#define TSCS25XX_REG_ADCPCMCTL1         0xC3
#define TSCS25XX_REG_ADCPCMCTL2         0xC4
#define TSCS25XX_REG_DACPCMCTL1         0xC5
#define TSCS25XX_REG_DACPCMCTL2         0xC6
#define TSCS25XX_REG_DACMBCEN           0xC7
#define TSCS25XX_REG_DACMBCCTL          0xC8
#define TSCS25XX_REG_DACMBCMUGn(n)      (0xC9 + (n) * 7)
#define TSCS25XX_REG_DACMBCTHRn(n)      (0xCA + (n) * 7)
#define TSCS25XX_REG_DACMBCRATn(n)      (0xCB + (n) * 7)
#define TSCS25XX_REG_DACMBCATKnL(n)     (0xCC + (n) * 7)
#define TSCS25XX_REG_DACMBCATKnH(n)     (0xCD + (n) * 7)
#define TSCS25XX_REG_DACMBCRELnL(n)     (0xCE + (n) * 7)
#define TSCS25XX_REG_DACMBCRELnH(n)     (0xCF + (n) * 7)




uint8_t tscs25xx_init();

uint16_t tscs25xx_read_device_id();
uint8_t tscs25xx_read_revision_id();

#endif // __TSCS25XX_H__