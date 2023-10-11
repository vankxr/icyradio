#include "axi_i2s.h"

static void axi_i2s_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        return; // Prevent locking up the AXI bus if the core is in reset

    *(volatile uint32_t *)((uintptr_t)pAXII2SBase + ulRegister) = ulValue;
}
static uint32_t axi_i2s_reg_read(uint32_t ulRegister)
{
    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        return 0; // Prevent locking up the AXI bus if the core is in reset

    return *(volatile uint32_t *)((uintptr_t)pAXII2SBase + ulRegister);
}

uint8_t axi_i2s_init()
{
    uint32_t ulVersion = axi_i2s_get_core_version();

    DBGPRINTLN_CTX("Found AXI I2S Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    if(AXI_CORE_VERSION_MAJOR(ulVersion) < 1)
    {
        DBGPRINTLN_CTX("AXI I2S Core v%d.%d.%d is not supported", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

        return 0;
    }

    return 1;
}

uint32_t axi_i2s_get_core_version()
{
    return axi_i2s_reg_read(AXI_I2S_REG_VERSION);
}