#include "dna.h"

void icyradio_axi_dna_get_design_id(void *pBase, char pszBuf[9])
{
    uint32_t low = ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DESIGN_ID_LOW));
    uint32_t high = ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DESIGN_ID_HIGH));

    for(int i = 0; i < 4; i++)
    {
        pszBuf[i] = (low >> (i * 8)) & 0xFF;
        pszBuf[i + 4] = (high >> (i * 8)) & 0xFF;
    }

    pszBuf[8] = '\0';
}
uint32_t icyradio_axi_dna_get_design_version(void *pBase)
{
    return ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DESIGN_VERSION));
}
uint32_t icyradio_axi_dna_get_device_info(void *pBase)
{
    return ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DEVICE_INFO));
}
uint32_t icyradio_axi_dna_get_usr_access(void *pBase)
{
    return ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_USR_ACCESS));
}
uint32_t icyradio_axi_dna_get_efuse_usr(void *pBase)
{
    return ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_EFUSE_USR));
}
uint8_t icyradio_axi_dna_get_dna_ready(void *pBase)
{
    return !!(ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DNA_HIGH)) & BIT(31));
}
uint64_t icyradio_axi_dna_get_dna(void *pBase)
{
    uint64_t dna = 0x0000000000000000;

    dna |= (uint64_t)ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DNA_LOW)) & 0xFFFFFFFF;
    dna |= (uint64_t)(ioread32(AXI_DNA_OFFSET(pBase, AXI_DNA_REG_DNA_HIGH)) & 0x01FFFFFF) << 32;

    return dna;
}