#include "axi_dna.h"

static uint32_t axi_dna_reg_read(uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIDNABase + ulRegister);
}

uint8_t axi_dna_ready()
{
    return !!(axi_dna_reg_read(AXI_DNA_REG_DNA_HIGH) & BIT(31));
}
uint64_t axi_dna_read()
{
    uint64_t ullDNA = 0;

    ullDNA |= (uint64_t)(axi_dna_reg_read(AXI_DNA_REG_DNA_HIGH) & 0x01FFFFFF) << 32; // DNA is 57 bits wide
    ullDNA |= (uint64_t)axi_dna_reg_read(AXI_DNA_REG_DNA_LOW);

    return ullDNA;
}