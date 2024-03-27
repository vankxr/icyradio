#ifndef __DNA_H__
#define __DNA_H__

#include <asm/io.h>

#define AXI_DNA_BASE            0x01100000
#define AXI_DNA_OFFSET(b, o)    ((void *)((uintptr_t)(b) + (o)))

#define AXI_DNA_REG_DESIGN_ID_LOW       0x00
#define AXI_DNA_REG_DESIGN_ID_HIGH      0x04
#define AXI_DNA_REG_DESIGN_VERSION      0x08
#define AXI_DNA_REG_DEVICE_INFO         0x0C
#define AXI_DNA_REG_USR_ACCESS          0x10
#define AXI_DNA_REG_EFUSE_USR           0x14
#define AXI_DNA_REG_DNA_LOW             0x18
#define AXI_DNA_REG_DNA_HIGH            0x1C

#define AXI_DNA_DESIGN_VERSION(maj, min, patch)   (((maj) << 16) | ((min) << 8) | (patch))
#define AXI_DNA_DESIGN_VERSION_MAJOR(v)           ((v) >> 16)
#define AXI_DNA_DESIGN_VERSION_MINOR(v)           (((v) >> 8) & 0xFF)
#define AXI_DNA_DESIGN_VERSION_PATCH(v)           ((v) & 0xFF)

void icyradio_axi_dna_get_design_id(void *pBase, char pszBuf[9]);
uint32_t icyradio_axi_dna_get_design_version(void *pBase);
uint32_t icyradio_axi_dna_get_device_info(void *pBase);
uint32_t icyradio_axi_dna_get_usr_access(void *pBase);
uint32_t icyradio_axi_dna_get_efuse_usr(void *pBase);
uint8_t icyradio_axi_dna_get_dna_ready(void *pBase);
uint64_t icyradio_axi_dna_get_dna(void *pBase);

#endif