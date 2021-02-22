#ifndef __PIO_H__
#define __PIO_H__

#include <sam.h>
#include "pmc.h"
#include "systick.h"
#include "utils.h"
#include "nvic.h"

// GPIO Helper macros
#define PIO_PERI_MUX_SELECT(p, i, n)                                                    \
    (p)->PIO_ABCDSR[0] = ((p)->PIO_ABCDSR[0] & ~BIT(i)) | (!!((n) & BIT(0)) << (i));    \
    (p)->PIO_ABCDSR[1] = ((p)->PIO_ABCDSR[1] & ~BIT(i)) | (!!((n) & BIT(1)) << (i));

// LED MACROS
#define LED_HIGH()          PIOB->PIO_SODR = PIO_SODR_P4
#define LED_LOW()           PIOB->PIO_CODR = PIO_CODR_P4
#define LED_TOGGLE()        if(PIOB->PIO_ODSR & BIT(4)) LED_LOW(); else LED_HIGH();

// IRQ MACROS
#define DSP_IRQ_ASSERT()    PIOA->PIO_CODR = PIO_CODR_P4
#define DSP_IRQ_DEASSERT()  PIOA->PIO_SODR = PIO_SODR_P4

// CONTROL SPI MACROS
#define CONTROL_SPI_CS_ACTIVE()     !(PIOB->PIO_PDSR & BIT(2))

void pio_init();

#endif  // __PIO_H__
