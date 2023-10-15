#include "SoapyIcyRadio.hpp"

void SoapyIcyRadio::setupMemoryMaps()
{
    if(this->fd < 0)
        throw std::runtime_error("Invalid file descriptor");

    this->mm_axi_flash = new MappedRegion(this->fd, AXI_QUAD_SPI0_XIP_BASE, AXI_QUAD_SPI0_XIP_SIZE);
    this->mm_axi_bram = new MappedRegion(this->fd, AXI_BRAM_BASE, AXI_BRAM_SIZE);
    this->mm_axi_ddr = new MappedRegion(this->fd, AXI_MIG_DDR3_BASE, AXI_MIG_DDR3_SIZE);
    this->mm_axi_periph = new MappedRegion(this->fd, AXI_PERIPH_BASE, AXI_PERIPH_SIZE);

    this->axi_dmac[0] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_DMAC_RF_RX_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[1] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_DMAC_RF_TX_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[0] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_GPIO0_BASE - AXI_PERIPH_BASE)));
    this->axi_iic[0] = new AXIIIC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_IIC0_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[0] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_QUAD_SPI0_BASE - AXI_PERIPH_BASE)));
    //this->axi_pcie = new AXIPCIe(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_PCIE0_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[2] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_DMAC_I2S_RX_BASE - AXI_PERIPH_BASE)));
    this->axi_dmac[3] = new AXIDMAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_DMAC_I2S_TX_BASE - AXI_PERIPH_BASE)));
    this->axi_i2s = new AXII2S(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_I2S_BASE - AXI_PERIPH_BASE)));
    this->axi_xadc = new AXIXADC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_XADC_WIZ_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[1] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_QUAD_SPI1_BASE - AXI_PERIPH_BASE)));
    this->axi_iic[1] = new AXIIIC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_IIC1_BASE - AXI_PERIPH_BASE)));
    this->axi_quad_spi[2] = new AXIQuadSPI(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_QUAD_SPI2_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[1] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_GPIO1_BASE - AXI_PERIPH_BASE)));
    this->axi_gpio[2] = new AXIGPIO(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_GPIO2_BASE - AXI_PERIPH_BASE)));
    this->axi_rf_tstamp = new AXIRFTStamp(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_RF_TSTAMP_BASE - AXI_PERIPH_BASE)));
    this->axi_irq_ctrl = new AXIIRQCtrl(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_IRQ_CTRL_BASE - AXI_PERIPH_BASE)));
    this->axi_dna = new AXIDNA(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_DNA_BASE - AXI_PERIPH_BASE)));

    //this->axi_ad9361 = new AXIAD9361(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(this->mm_axi_periph->get()) + (AXI_AD9361_BASE - AXI_PERIPH_BASE)));

    //this->mm_dma_buffer TODO
}
void SoapyIcyRadio::freeMemoryMaps()
{
    if(this->mm_dma_buffer != nullptr)
    {
        delete this->mm_dma_buffer;

        this->mm_dma_buffer = nullptr;
    }

    // if(this->axi_ad9361 != nullptr)
    // {
    //     delete this->axi_ad9361;

    //     this->axi_ad9361 = nullptr;
    // }

    if(this->axi_dna != nullptr)
    {
        delete this->axi_dna;

        this->axi_dna = nullptr;
    }

    if(this->axi_irq_ctrl != nullptr)
    {
        delete this->axi_irq_ctrl;

        this->axi_irq_ctrl = nullptr;
    }

    if(this->axi_rf_tstamp != nullptr)
    {
        delete this->axi_rf_tstamp;

        this->axi_rf_tstamp = nullptr;
    }

    if(this->axi_gpio[2] != nullptr)
    {
        delete this->axi_gpio[2];

        this->axi_gpio[2] = nullptr;
    }

    if(this->axi_gpio[1] != nullptr)
    {
        delete this->axi_gpio[1];

        this->axi_gpio[1] = nullptr;
    }

    if(this->axi_quad_spi[2] != nullptr)
    {
        delete this->axi_quad_spi[2];

        this->axi_quad_spi[2] = nullptr;
    }

    if(this->axi_iic[1] != nullptr)
    {
        delete this->axi_iic[1];

        this->axi_iic[1] = nullptr;
    }

    if(this->axi_quad_spi[1] != nullptr)
    {
        delete this->axi_quad_spi[1];

        this->axi_quad_spi[1] = nullptr;
    }

    if(this->axi_xadc != nullptr)
    {
        delete this->axi_xadc;

        this->axi_xadc = nullptr;
    }

    if(this->axi_i2s != nullptr)
    {
        delete this->axi_i2s;

        this->axi_i2s = nullptr;
    }

    if(this->axi_dmac[3] != nullptr)
    {
        delete this->axi_dmac[3];

        this->axi_dmac[3] = nullptr;
    }

    if(this->axi_dmac[2] != nullptr)
    {
        delete this->axi_dmac[2];

        this->axi_dmac[2] = nullptr;
    }

    // if(this->axi_pcie != nullptr)
    // {
    //     delete this->axi_pcie;

    //     this->axi_pcie = nullptr;
    // }

    if(this->axi_quad_spi[0] != nullptr)
    {
        delete this->axi_quad_spi[0];

        this->axi_quad_spi[0] = nullptr;
    }

    if(this->axi_iic[0] != nullptr)
    {
        delete this->axi_iic[0];

        this->axi_iic[0] = nullptr;
    }

    if(this->axi_gpio[0] != nullptr)
    {
        delete this->axi_gpio[0];

        this->axi_gpio[0] = nullptr;
    }

    if(this->axi_dmac[1] != nullptr)
    {
        delete this->axi_dmac[1];

        this->axi_dmac[1] = nullptr;
    }

    if(this->axi_dmac[0] != nullptr)
    {
        delete this->axi_dmac[0];

        this->axi_dmac[0] = nullptr;
    }

    if(this->mm_axi_periph != nullptr)
    {
        delete this->mm_axi_periph;

        this->mm_axi_periph = nullptr;
    }

    if(this->mm_axi_ddr != nullptr)
    {
        delete this->mm_axi_ddr;

        this->mm_axi_ddr = nullptr;
    }

    if(this->mm_axi_bram != nullptr)
    {
        delete this->mm_axi_bram;

        this->mm_axi_bram = nullptr;
    }

    if(this->mm_axi_flash != nullptr)
    {
        delete this->mm_axi_flash;

        this->mm_axi_flash = nullptr;
    }
}

void SoapyIcyRadio::initPeripheralsPreClocks()
{
    this->axi_irq_ctrl->init(this->fd);

    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_RX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_TX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_RX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);
    this->axi_irq_ctrl->configIRQ(AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_TX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), false);

    this->axi_dmac[AXI_DMAC_RF_RX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_RX,
        }
    );
    this->axi_dmac[AXI_DMAC_RF_TX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_RF_TX,
        }
    );
    this->axi_dmac[AXI_DMAC_I2S_RX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_RX,
        }
    );
    this->axi_dmac[AXI_DMAC_I2S_TX_INST]->init(
        {
            .controller = this->axi_irq_ctrl,
            .irq = AXIIRQCtrl::IRQNumber::AXI_DMAC_I2S_TX,
        }
    );

    this->axi_iic[AXI_IIC_CODEC_INST]->init(125000000UL, AXIIIC::Speed::FAST);
    this->axi_iic[AXI_IIC_SYS_INST]->init(125000000UL, AXIIIC::Speed::FAST);
    //this->axi_quad_spi[AXI_QUAD_SPI_FLASH_INST]->init(AXIQuadSPI::Mode::MODE_0, AXIQuadSPI::BitOrder::MSB_FIRST); // Quad SPI 0 is used for flash XIP
    this->axi_quad_spi[AXI_QUAD_SPI_TRX_INST]->init(AXIQuadSPI::Mode::MODE_1, AXIQuadSPI::BitOrder::MSB_FIRST);
    this->axi_quad_spi[AXI_QUAD_SPI_SYNTH_INST]->init(AXIQuadSPI::Mode::MODE_0, AXIQuadSPI::BitOrder::MSB_FIRST);
}
void SoapyIcyRadio::deinitPeripheralsPreClocks()
{

}

void SoapyIcyRadio::initPeripheralsPostClocks()
{
    this->axi_i2s->init(
        [this](void) -> bool
        {
            // Prevent locking up the AXI bus if the core is in reset
            return this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH;
        }
    );

    // Init xcvr

    this->axi_rf_tstamp->init(
        [this](void) -> bool
        {
            // Prevent locking up the AXI bus if the core is in reset
            return this->axi_gpio[AXI_GPIO_TRX_INST]->getValue(AXI_GPIO_RST_AD9361_61M44_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH;
        }
    );
}
void SoapyIcyRadio::deinitPeripheralsPostClocks()
{

}

void SoapyIcyRadio::initClocks()
{

}
void SoapyIcyRadio::deinitClocks()
{
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting I2S core...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_FPGA_CLK1_49M152_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    uint32_t timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        throw std::runtime_error("Could not reset I2S core, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "I2S core reset!");

    // DDR3 reset procedure
    // First, reset the DDR3 AXI interface
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting DDR3 AXI interface...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_MIG_166M_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        throw std::runtime_error("Could not reset DDR3 AXI interface, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 AXI interface reset!");

    // Then reset the DDR3 core
    SoapySDR_logf(SOAPY_SDR_DEBUG, "Resetting DDR3 core...");

    this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT, AXIGPIO::Value::HIGH);

    timeout = 2000; // 2 seconds
    while(--timeout && this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        usleep(1000);

    if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT) == AXIGPIO::Value::HIGH)
        throw std::runtime_error("Could not reset DDR3 core, aborting!");

    SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 core reset, DDR3 MMCM is %s!", this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT) == AXIGPIO::Value::HIGH ? "locked (how?)" : "unlocked");

    // Disable clock manager output
    this->axi_iic[AXI_IIC_SYS_INST]->setGPOValue(AXI_IIC_GPO_CLK_MNGR_OEn_BIT, AXIIIC::GPOValue::HIGH);

    SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output disabled, clk_wiz_0 MMCM is %s!", this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT) == AXIGPIO::Value::HIGH ? "locked (how?)" : "unlocked");
}

void SoapyIcyRadio::resetSystem()
{
    AXIIIC::GPOValue clk_mngr_oen = this->axi_iic[AXI_IIC_SYS_INST]->getGPOValue(AXI_IIC_GPO_CLK_MNGR_OEn_BIT);
    AXIGPIO::Value clk_wiz_0_locked = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_CLK_WIZ0_LOCKED_BIT);
    AXIGPIO::Value ddr_resetn = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT);
    AXIGPIO::Value mig_mmcm_locked = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_MIG_MMCM_LOCKED_BIT);
    AXIGPIO::Value ddr_axi_resetn = this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT);

    if(clk_mngr_oen == AXIIIC::GPOValue::LOW) // Clock manager OE enabled
    {
        SoapySDR_logf(SOAPY_SDR_DEBUG, "Clock manager global output is enabled");

        if(clk_wiz_0_locked == AXIGPIO::Value::HIGH && ddr_resetn == AXIGPIO::Value::HIGH && mig_mmcm_locked == AXIGPIO::Value::HIGH && ddr_axi_resetn == AXIGPIO::Value::HIGH)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 is properly out of reset, looks like the system was left initialized");

            this->deinitClocks(); // Will throw if it fails

            SoapySDR_logf(SOAPY_SDR_DEBUG, "Initiating system reset...");

            // This will clear the two DDR3 reset bits set previously!
            this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_SYS_AUX_RESET_BIT, AXIGPIO::Value::HIGH);
            usleep(100000); // Do not access anything while it's resetting, otherwise the ENTIRE SYSTEM will hang! TODO: mutex

            if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_MIG_166M_AUX_RESET_IN_BIT) || this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT))
                throw std::runtime_error("DDR3 reset bits did not de-assert (how?), system reset failed");
        }
        else if(mig_mmcm_locked == AXIGPIO::Value::LOW && ddr_axi_resetn == AXIGPIO::Value::HIGH) // AXI reset is de-asserted, but clocks are not locked, may cause lockups
        {
            throw std::runtime_error(std::string("DDR3 is not correctly out of reset, ") +
                                     std::string("looks like the system was left in an invalid state ") +
                                     std::string("(clk_mngr_oe: ") + std::string(clk_mngr_oen == AXIIIC::GPOValue::LOW ? "enabled" : "disabled") +
                                     std::string(", clk_wiz_0: ") + std::string(clk_wiz_0_locked == AXIGPIO::Value::HIGH ? "locked" : "unlocked") +
                                     std::string(", rst_clk_wiz_0_250M: ") + std::string(ddr_resetn == AXIGPIO::Value::HIGH ? "de-asserted" : "asserted") +
                                     std::string(", mig_mmcm: ") + std::string(mig_mmcm_locked == AXIGPIO::Value::HIGH ? "locked" : "unlocked") +
                                     std::string(", rst_mig_166M: ") + std::string(ddr_axi_resetn == AXIGPIO::Value::HIGH ? "de-asserted" : "asserted") +
                                     std::string("). Please perform a power cycle to properly reset the system"));
        }
    }
    else // Clock manager OE disabled
    {
        if(clk_wiz_0_locked == AXIGPIO::Value::LOW && ddr_resetn == AXIGPIO::Value::LOW && mig_mmcm_locked == AXIGPIO::Value::LOW && ddr_axi_resetn == AXIGPIO::Value::LOW)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "DDR3 is properly reset, looks like the system was left uninitialized");
            SoapySDR_logf(SOAPY_SDR_DEBUG, "Initiating system reset...");

            this->axi_gpio[AXI_GPIO_SYS_INST]->setValue(AXI_GPIO_SYS_AUX_RESET_BIT, AXIGPIO::Value::HIGH);
            usleep(100000); // Do not access anything while it's resetting, otherwise the ENTIRE SYSTEM will hang! TODO: mutex

            if(this->axi_gpio[AXI_GPIO_SYS_INST]->getValue(AXI_GPIO_SYS_AUX_RESET_BIT))
                throw std::runtime_error("System reset bit did not de-assert (how?), system reset failed");
        }
        else if(mig_mmcm_locked == AXIGPIO::Value::LOW && ddr_axi_resetn == AXIGPIO::Value::HIGH) // AXI reset is de-asserted, but clocks are not locked, may cause lockups
        {
            throw std::runtime_error(std::string("DDR3 clocks are not locked and resets are not properly asserted, ") +
                                     std::string("looks like the system was left in an invalid state ") +
                                     std::string("(clk_mngr_oe: ") + std::string(clk_mngr_oen == AXIIIC::GPOValue::LOW ? "enabled" : "disabled") +
                                     std::string(", clk_wiz_0: ") + std::string(clk_wiz_0_locked == AXIGPIO::Value::HIGH ? "locked" : "unlocked") +
                                     std::string(", rst_clk_wiz_0_250M: ") + std::string(ddr_resetn == AXIGPIO::Value::HIGH ? "de-asserted" : "asserted") +
                                     std::string(", mig_mmcm: ") + std::string(mig_mmcm_locked == AXIGPIO::Value::HIGH ? "locked" : "unlocked") +
                                     std::string(", rst_mig_166M: ") + std::string(ddr_axi_resetn == AXIGPIO::Value::HIGH ? "de-asserted" : "asserted") +
                                     std::string("). Please perform a power cycle to properly reset the system"));
        }
    }
}