#include "axi_rf_tstamp.h"

static pthread_mutex_t tRegMutex = PTHREAD_MUTEX_INITIALIZER; // Used internally to ensure register accesses are atomic

static void axi_rf_tstamp_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    pthread_mutex_lock(&tRegMutex);

    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
    {
        pthread_mutex_unlock(&tRegMutex);

        return; // Prevent locking up the AXI bus if the core is in reset
    }

    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister) = ulValue;

    pthread_mutex_unlock(&tRegMutex);
}
static void axi_rf_tstamp_reg_write64(uint32_t ulRegister, uint64_t ullValue)
{
    pthread_mutex_lock(&tRegMutex);

    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
    {
        pthread_mutex_unlock(&tRegMutex);

        return; // Prevent locking up the AXI bus if the core is in reset
    }

    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister) = ullValue & 0xFFFFFFFF;
    *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister + 4) = (ullValue >> 32) & 0xFFFFFFFF;

    pthread_mutex_unlock(&tRegMutex);
}
static uint32_t axi_rf_tstamp_reg_read(uint32_t ulRegister)
{
    pthread_mutex_lock(&tRegMutex);

    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
    {
        pthread_mutex_unlock(&tRegMutex);

        return 0; // Prevent locking up the AXI bus if the core is in reset
    }

    uint32_t ulValue = *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister);

    pthread_mutex_unlock(&tRegMutex);

    return ulValue;
}
static uint64_t axi_rf_tstamp_reg_read64(uint32_t ulRegister)
{
    pthread_mutex_lock(&tRegMutex);

    if(!axi_gpio_get_value(AXI_GPIO_TRX_INST, AXI_GPIO0_RST_AD9361_61M44_PERI_ARESETn_BIT))
    {
        pthread_mutex_unlock(&tRegMutex);

        return 0; // Prevent locking up the AXI bus if the core is in reset
    }

    uint64_t ullValue = *(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister);
    ullValue |= (uint64_t)*(volatile uint32_t *)((uintptr_t)pAXIRFTstampBase + ulRegister + 4) << 32;

    pthread_mutex_unlock(&tRegMutex);

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

    return 1;
}

uint32_t axi_rf_tstamp_get_core_version()
{
    return axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_VERSION);
}

uint8_t axi_rf_tstamp_tx_enable(uint8_t ubEnable)
{
    if(axi_rf_tstamp_cnt_tx_enabled())
        return 0;

    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubEnable ? AXI_RF_TSTAMP_REG_CTL_STAT_TX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_TX_DIS);

    return 1;
}
uint8_t axi_rf_tstamp_tx_enabled()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_TX_STAT);
}
uint8_t axi_rf_tstamp_rx_enable(uint8_t ubEnable)
{
    if(axi_rf_tstamp_cnt_rx_enabled())
        return 0;

    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubEnable ? AXI_RF_TSTAMP_REG_CTL_STAT_RX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_RX_DIS);

    return 1;
}
uint8_t axi_rf_tstamp_rx_enabled()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_RX_STAT);
}

void axi_rf_tstamp_cnt_enable(uint8_t ubEnable)
{
    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubEnable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS);
}
uint8_t axi_rf_tstamp_cnt_enabled()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT);
}
void axi_rf_tstamp_cnt_tx_enable(uint8_t ubEnable)
{
    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubEnable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_DIS);
}
uint8_t axi_rf_tstamp_cnt_tx_enabled()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_STAT);
}
void axi_rf_tstamp_cnt_rx_enable(uint8_t ubEnable)
{
    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubEnable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_DIS);
}
uint8_t axi_rf_tstamp_cnt_rx_enabled()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_STAT);
}
void axi_rf_tstamp_cnt_latch_arm(uint8_t ubReqArm)
{
    axi_rf_tstamp_reg_write(AXI_RF_TSTAMP_REG_CTL_STAT, ubReqArm ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_UNREQ);
}
uint8_t axi_rf_tstamp_cnt_latch_armed()
{
    uint32_t ulCtrl = axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT);

    if(ulCtrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ_STAT) // Arm requested
    {
        if(ulCtrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARMED) // Already armed
            return 2;

        return 1;
    }

    return 0;
}

uint64_t axi_rf_tstamp_get_cnt()
{
    return axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_LOW);
}
uint8_t axi_rf_tstamp_set_cnt(uint64_t ullVal)
{
    if(axi_rf_tstamp_cnt_enabled())
        return 0;

    axi_rf_tstamp_reg_write64(AXI_RF_TSTAMP_REG_CNT_LOW, ullVal);

    return 1;
}
uint64_t axi_rf_tstamp_get_tx_cnt()
{
    return axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_TX_LOW);
}
void axi_rf_tstamp_set_tx_cnt(uint64_t ullVal)
{
    // Checks bypassed for speed, hardware has protections anyway
    axi_rf_tstamp_reg_write64(AXI_RF_TSTAMP_REG_CNT_TX_LOW, ullVal);
}
uint64_t axi_rf_tstamp_get_rx_cnt()
{
    return axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_RX_LOW);
}
void axi_rf_tstamp_set_rx_cnt(uint64_t ullVal)
{
    // Checks bypassed for speed, hardware has protections anyway
    axi_rf_tstamp_reg_write64(AXI_RF_TSTAMP_REG_CNT_RX_LOW, ullVal);
}
uint64_t axi_rf_tstamp_get_cnt_latch()
{
    return axi_rf_tstamp_reg_read64(AXI_RF_TSTAMP_REG_CNT_LATCH_LOW);
}
uint8_t axi_rf_tstamp_get_cnt_latch_valid()
{
    return !!(axi_rf_tstamp_reg_read(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_VALID);
}