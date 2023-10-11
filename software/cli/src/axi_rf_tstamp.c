#include "axi_rf_tstamp.h"

static void axi_rf_tstamp_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
        return; // Prevent locking up the AXI bus if the core is in reset

    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister) = ulValue;
}
static void axi_rf_tstamp_reg_write64(uint32_t ulRegister, uint64_t ullValue)
{
    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
        return; // Prevent locking up the AXI bus if the core is in reset

    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister) = ullValue & 0xFFFFFFFF;
    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister + 4) = (ullValue >> 32) & 0xFFFFFFFF;
}
static uint32_t axi_rf_tstamp_reg_read(uint32_t ulRegister)
{
    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
        return 0; // Prevent locking up the AXI bus if the core is in reset

    return *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister);
}
static uint64_t axi_rf_tstamp_reg_read64(uint32_t ulRegister)
{
    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
        return 0; // Prevent locking up the AXI bus if the core is in reset

    uint64_t ullValue = *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister);
    ullValue |= (uint64_t)*(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister + 4) << 32;

    return ullValue;
}

uint8_t axi_rf_tstamp_init()
{
    uint32_t ulVersion = axi_rf_tstamp_get_core_version();

    DBGPRINTLN_CTX("Found AXI RF Timestamping Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    if(AXI_CORE_VERSION_MAJOR(ulVersion) < 1)
    {
        DBGPRINTLN_CTX("AXI RF Timestamping Core v%d.%d.%d is not supported", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

        return 0;
    }

    // DBGPRINTLN_CTX("reg1 = 0x%08X", axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT));
    // DBGPRINTLN_CTX("reg2 = 0x%08X", axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_OVR));
    // DBGPRINTLN_CTX("cnt = 0x%016lX", axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_LOW));

    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN);

    // DBGPRINTLN_CTX("reg1 = 0x%08X", axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT));
    // DBGPRINTLN_CTX("reg2 = 0x%08X", axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_OVR));
    // DBGPRINTLN_CTX("cnt = 0x%016lX", axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_LOW));
    // usleep(1000000);
    // DBGPRINTLN_CTX("cnt = 0x%016lX", axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_LOW));

    return 1;
}

uint32_t axi_rf_tstamp_get_core_version()
{
    return axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_VERSION);
}
