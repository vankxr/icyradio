#ifndef __AXI_DNA_H__
#define __AXI_DNA_H__

#include <stdint.h>
#include "utils.h"

#define AXI_DNA_REG_DNA_LOW      0x00
#define AXI_DNA_REG_DNA_HIGH     0x04

extern void *pAXIDNABase;

uint8_t axi_dna_ready();
uint64_t axi_dna_read();

#endif // __AXI_DNA_H__