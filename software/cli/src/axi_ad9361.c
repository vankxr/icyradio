#include "axi_ad9361.h"

// Utils
static uint16_t axi_ad9361_to_sif_1_1_14(int32_t lVal) // Fractional part is in micro units
{
    if(lVal < -1999969)
        return 0xFFFF;

    if(lVal > 1999969)
        return 0x7FFF;

    uint32_t ulFrac = (lVal < 0) ? BIT(15) : 0; // Handle sign
    ulFrac |= (ABS(lVal / 1000000L) >= 1) << 14; // Integer part

    uint64_t ullVal = ABS(lVal % 1000000L) << 14;

    return ulFrac | ((ullVal + (1000000UL / 2)) / 1000000UL);
}
static int32_t axi_ad9361_from_sif_1_1_14(uint16_t usVal) // Fractional part is in micro units
{;
    uint16_t usFrac = usVal & 0x3FFF;
    int32_t lVal = (usFrac * 1000000ULL + (0x4000 / 2)) / 0x4000;

    if(usVal & BIT(14))
        lVal += 1000000L;

    if(usVal & BIT(15))
        lVal = -lVal;

    return lVal;
}

// Register access
static void axi_ad9361_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + ulRegister) = ulValue;
}
static uint32_t axi_ad9361_reg_read(uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + ulRegister);
}

static void axi_ad9361_adc_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + AXI_ADC_BASE_OFFSET + ulRegister) = ulValue;
}
static uint32_t axi_ad9361_adc_reg_read(uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + AXI_ADC_BASE_OFFSET + ulRegister);
}

static void axi_ad9361_dac_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + AXI_DAC_BASE_OFFSET + ulRegister) = ulValue;
}
static uint32_t axi_ad9361_dac_reg_read(int32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIAD9361Base + AXI_DAC_BASE_OFFSET + ulRegister);
}

// Base
uint8_t axi_ad9361_init()
{
    uint32_t ulVersion = axi_ad9361_get_core_version();

    DBGPRINTLN_CTX("Found AXI AD9361 Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    if(AXI_CORE_VERSION_MAJOR(ulVersion) < 10)
    {
        DBGPRINTLN_CTX("AXI AD9361 Core v%d.%d.%d is not supported", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

        return 0;
    }

    uint32_t ulCaps = axi_ad9361_reg_read(AXI_AD9361_REG_CONFIG);

    DBGPRINTLN_CTX("Capabilities:");
    DBGPRINTLN_CTX("  IQ Correction: %s", (ulCaps & AXI_AD9361_REG_CONFIG_IQCORRECTION_DISABLE) ? "Disabled" : "Enabled");
    DBGPRINTLN_CTX("  DC Filter: %s", (ulCaps & AXI_AD9361_REG_CONFIG_DCFILTER_DISABLE) ? "Disabled" : "Enabled");
    DBGPRINTLN_CTX("  Data formatter: %s", (ulCaps & AXI_AD9361_REG_CONFIG_DATAFORMAT_DISABLE) ? "Disabled" : "Enabled");
    DBGPRINTLN_CTX("  User ports: %s", (ulCaps & AXI_AD9361_REG_CONFIG_USERPORTS_DISABLE) ? "Disabled" : "Enabled");
    DBGPRINTLN_CTX("  Forced 1R1T: %s", (ulCaps & AXI_AD9361_REG_CONFIG_MODE_1R1T) ? "Yes" : "No");
    DBGPRINTLN_CTX("  Delay control: %s", (ulCaps & AXI_AD9361_REG_CONFIG_DELAY_CONTROL_DISABLE) ? "Not supported" : "Supported");
    DBGPRINTLN_CTX("  Interface mode: %s", (ulCaps & AXI_AD9361_REG_CONFIG_CMOS_OR_LVDS_N) ? "CMOS" : "LVDS");
    DBGPRINTLN_CTX("  PPS Receiver: %s", (ulCaps & AXI_AD9361_REG_CONFIG_PPS_RECEIVER_ENABLE) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  Scale Correction: %s", (ulCaps & AXI_AD9361_REG_CONFIG_SCALECORRECTION_ONLY) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  External Sync: %s", (ulCaps & AXI_AD9361_REG_CONFIG_EXT_SYNC) ? "Enabled" : "Disabled");
    DBGPRINTLN_CTX("  ADC Raw data read: %s", (ulCaps & AXI_AD9361_REG_CONFIG_RD_RAW_DATA) ? "Supported" : "Not supported");

    DBGPRINTLN_CTX("FPGA Info: 0x%08X", axi_ad9361_reg_read(AXI_AD9361_REG_FPGA_INFO));

    if(!axi_ad9361_adc_init())
    {
        DBGPRINTLN_CTX("Failed to initialize ADC");

        return 0;
    }

    if(!axi_ad9361_dac_init())
    {
        DBGPRINTLN_CTX("Failed to initialize DAC");

        return 0;
    }

    return 1;
}
void axi_ad9361_ch_no_updated() // Called after number of active channels has changed
{
    DBGPRINTLN_CTX("Number of channels: %hhu", axi_ad9361_get_num_channels());

    axi_ad9361_adc_ch_no_updated(); // Update R1_MODE
    axi_ad9361_dac_ch_no_updated(); // Update R1_MODE and RATE
}

uint32_t axi_ad9361_get_core_version()
{
    return axi_ad9361_reg_read(AXI_AD9361_REG_VERSION);
}

uint8_t axi_ad9361_get_num_channels()
{
    return g_pAD9361Phy->pdata->rx2tx2 ? 4 : 2;
}
uint8_t axi_ad9361_get_sampling_freq_ratio()
{
    uint8_t ubRate = (g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE) ? 2 : 1;

    if(g_pAD9361Phy->pdata->rx2tx2)
        ubRate *= 2;

    return ubRate;
}

void axi_ad9361_set_hdl_loopback(uint8_t ubEnable)
{
    static enum axi_ad9361_dac_data_sel eSavedDataSel[256];

    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        if(ubEnable)
        {
            eSavedDataSel[i] = axi_ad9361_dac_get_data_sel(i);

            axi_ad9361_dac_set_data_sel(i, AXI_DAC_DATA_SEL_LOOPBACK);
        }
        else if(axi_ad9361_dac_get_data_sel(i) == AXI_DAC_DATA_SEL_LOOPBACK && eSavedDataSel[i] != AXI_DAC_DATA_SEL_LOOPBACK)
        {
            axi_ad9361_dac_set_data_sel(i, eSavedDataSel[i]);
        }
    }
}
void axi_ad9361_set_dma_loopback(uint8_t ubEnable)
{
    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        if(ubEnable)
            axi_ad9361_adc_set_data_sel(i, AXI_ADC_DATA_SEL_LOOPBACK);
        else
            axi_ad9361_adc_set_data_sel(i, AXI_ADC_DATA_SEL_INPUT_DATA);
    }
}

// ADC
uint8_t axi_ad9361_adc_init()
{
    axi_ad9361_adc_reg_write(AXI_ADC_REG_RSTN, 0);
    axi_ad9361_adc_reg_write(AXI_ADC_REG_RSTN, AXI_ADC_REG_RSTN_MMCM_RSTN | AXI_ADC_REG_RSTN_RSTN);

    uint32_t ulVersion = axi_ad9361_adc_get_core_version();

    DBGPRINTLN_CTX("Found AXI ADC Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    axi_ad9361_adc_reg_write(AXI_ADC_REG_CNTRL, g_pAD9361Phy->pdata->rx2tx2 ? 0 : AXI_ADC_REG_CNTRL_R1_MODE);

    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(i), AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(0)); // DC Offset = 0
        axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(i), (i & 1) ? 0x00004000 : 0x40000000); // I/Q Gain = 1
        axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL(i), AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB | AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_SIGNEXT | AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_ENABLE | AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE);
    }

    usleep(100000);

    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_REG_STATUS);

    if(!ulReg)
    {
        DBGPRINTLN_CTX("Status errors 0x%08X", ulReg);

        return 0;
    }

    return 1;
}
void axi_ad9361_adc_ch_no_updated()
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_REG_CNTRL);

    if(g_pAD9361Phy->pdata->rx2tx2)
        ulReg &= ~AXI_ADC_REG_CNTRL_R1_MODE;
    else
        ulReg |= AXI_ADC_REG_CNTRL_R1_MODE;

    axi_ad9361_adc_reg_write(AXI_ADC_REG_CNTRL, ulReg);
}

uint32_t axi_ad9361_adc_get_core_version()
{
    return axi_ad9361_adc_reg_read(AXI_ADC_REG_VERSION);
}

uint64_t axi_ad9361_adc_get_interface_freq(uint64_t ullAXIFrequency)
{
    return ((uint64_t)axi_ad9361_adc_reg_read(AXI_ADC_REG_CLK_FREQ) * axi_ad9361_adc_reg_read(AXI_ADC_REG_CLK_RATIO) * ullAXIFrequency) >> 16;
}
uint64_t axi_ad9361_adc_get_sampling_freq(uint64_t ullAXIFrequency)
{
    return axi_ad9361_adc_get_interface_freq(ullAXIFrequency) / axi_ad9361_get_sampling_freq_ratio();
}

void axi_ad9361_adc_set_data_sel(uint8_t ubChannel, enum axi_ad9361_adc_data_sel eDataSel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel));

    ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0);
    ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(eDataSel);

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel), ulReg);
}
enum axi_ad9361_adc_data_sel axi_ad9361_adc_get_data_sel(uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel));

    ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0);
    ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0));

    return (enum axi_ad9361_adc_data_sel)ulReg;
}

void axi_ad9361_adc_set_pn_sel(uint8_t ubChannel, enum axi_ad9361_adc_pn_sel ePNSel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel));

    ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0);
    ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(ePNSel);

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel), ulReg);
}
enum axi_ad9361_adc_pn_sel axi_ad9361_adc_get_pn_sel(uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ubChannel));

    ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0);
    ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0));

    return (enum axi_ad9361_adc_pn_sel)ulReg;
}

static void axi_ad9361_adc_set_calib_phase_scale(uint8_t ubPhase, uint8_t ubChannel, int32_t lVal)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ubChannel));

    if(!((ubChannel + ubPhase) % 2))
    {
        ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0);
        ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(axi_ad9361_to_sif_1_1_14(lVal));
    }
    else
    {
        ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0);
        ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(axi_ad9361_to_sif_1_1_14(lVal));
    }

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ubChannel), ulReg);
}
static int32_t axi_ad9361_adc_get_calib_phase_scale(uint8_t ubPhase, uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ubChannel));

    if(!((ubChannel + ubPhase) % 2))
    {
        ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0);
        ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0));
    }
    else
    {
        ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0);
        ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0));
    }

    return axi_ad9361_from_sif_1_1_14(ulReg);
}
void axi_ad9361_adc_set_calib_enable(uint8_t ubChannel, uint8_t ubEnable)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel));

    if(ubEnable)
        ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB;
    else
        ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB;

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel), ulReg);
}
uint8_t axi_ad9361_adc_get_calib_enable(uint8_t ubChannel)
{
    return !!(axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel)) & AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB);
}
void axi_ad9361_adc_set_calib_phase(uint8_t ubChannel, int32_t lVal)
{
    axi_ad9361_adc_set_calib_phase_scale(1, ubChannel, lVal);
}
int32_t axi_ad9361_adc_get_calib_phase(uint8_t ubChannel)
{
    return axi_ad9361_adc_get_calib_phase_scale(1, ubChannel);
}
void axi_ad9361_adc_set_calib_scale(uint8_t ubChannel, int32_t lVal)
{
    axi_ad9361_adc_set_calib_phase_scale(0, ubChannel, lVal);
}
int32_t axi_ad9361_adc_get_calib_scale(uint8_t ubChannel)
{
    return axi_ad9361_adc_get_calib_phase_scale(0, ubChannel);
}
void axi_ad9361_adc_set_dcoffset(uint8_t ubChannel, int16_t sOffset)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel));

    ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0);
    ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(sOffset);

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel), ulReg);
}
int16_t axi_ad9361_adc_get_dcoffset(uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel));

    ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0);
    ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0));

    return (int16_t)ulReg;
}
void axi_ad9361_adc_set_dcfilt_enable(uint8_t ubChannel, uint8_t ubEnable)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel));

    if(ubEnable)
        ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB;
    else
        ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB;

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel), ulReg);
}
uint8_t axi_ad9361_adc_get_dcfilt_enable(uint8_t ubChannel)
{
    return !!(axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL(ubChannel)) & AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB);
}
void axi_ad9361_adc_set_dcfilt_coef(uint8_t ubChannel, int32_t lVal)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel));

    ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0);
    ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(axi_ad9361_to_sif_1_1_14(lVal));

    axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel), ulReg);
}
int32_t axi_ad9361_adc_get_dcfilt_coef(uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ubChannel));

    ulReg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0);
    ulReg >>= utils_find_first_set_bit(AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0));

    return axi_ad9361_from_sif_1_1_14(ulReg);
}

void axi_ad9361_adc_update_active_channels(uint32_t ulMask)
{
    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        uint32_t ulReg = axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_CNTRL(i));

        if((ulMask & 1) && (ulReg & AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE))
        {
            ulMask >>= 1;
            continue; // Already enabled
        }
        else if(!(ulMask & 1) && !(ulReg & AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE))
        {
            ulMask >>= 1;
            continue; // Already enabled
        }

        if(ulMask & 1)
            ulReg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE;
        else
            ulReg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE;

        axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_CNTRL(i), ulReg);

        ulMask >>= 1;
    }
}

uint8_t axi_ad9361_adc_check_pn(uint8_t ubCheckChan, uint32_t ulDelay)
{
    // Clear flags
    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
        axi_ad9361_adc_reg_write(AXI_ADC_CHAN_REG_CHAN_STATUS(i), AXI_ADC_CHAN_REG_CHAN_STATUS_PN_ERR | AXI_ADC_CHAN_REG_CHAN_STATUS_PN_OOS);

    usleep(ulDelay * 1000);

    if(!ubCheckChan && !(axi_ad9361_adc_reg_read(AXI_ADC_REG_STATUS) & AXI_ADC_REG_STATUS_STATUS))
        return 0; // Failed

    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        if(axi_ad9361_adc_reg_read(AXI_ADC_CHAN_REG_CHAN_STATUS(i)))
            return 0; // Failed
    }

    return 1; // Passed
}

void axi_ad9361_adc_set_lane_delay(uint8_t ubLane, uint8_t ubDelay)
{
    axi_ad9361_adc_reg_write(AXI_ADC_REG_DELAY(ubLane), ubDelay);
}
uint32_t axi_ad9361_adc_get_lane_delay(uint8_t ubLane)
{
    return axi_ad9361_adc_reg_read(AXI_ADC_REG_DELAY(ubLane));
}

// DAC
uint8_t axi_ad9361_dac_init()
{
    axi_ad9361_dac_reg_write(AXI_DAC_REG_RSTN, 0);
    axi_ad9361_dac_reg_write(AXI_DAC_REG_RSTN, AXI_DAC_REG_RSTN_MMCM_RSTN | AXI_DAC_REG_RSTN_RSTN);

    uint32_t ulVersion = axi_ad9361_dac_get_core_version();

    DBGPRINTLN_CTX("Found AXI DAC Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    axi_ad9361_dac_reg_write(AXI_DAC_REG_CNTRL_2, g_pAD9361Phy->pdata->rx2tx2 ? 0 : AXI_DAC_REG_CNTRL_2_R1_MODE);
    axi_ad9361_dac_reg_write(AXI_DAC_REG_RATECNTRL, axi_ad9361_get_sampling_freq_ratio() - 1);

    usleep(100000);

    uint32_t ulReg = axi_ad9361_dac_reg_read(AXI_DAC_REG_STATUS);

    if(!ulReg)
    {
        DBGPRINTLN_CTX("Status errors 0x%08X", ulReg);

        return 0;
    }

    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_1(i), 0); // Mute tone 1
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_2(i), 1); // Set tone 1 to min frequency
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_3(i), 0); // Mute tone 2
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_4(i), 1); // Set tone 2 to min frequency
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(i), AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_TONE); // Select DDS as data source
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(i), (i & 1) ? 0x00004000 : 0x40000000); // I/Q Gain = 1
        axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(i), AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB);
    }

    axi_ad9361_dac_sync();

    return 1;
}
void axi_ad9361_dac_ch_no_updated()
{
    uint32_t ulReg = axi_ad9361_dac_reg_read(AXI_DAC_REG_CNTRL_2);

    if(g_pAD9361Phy->pdata->rx2tx2)
        ulReg &= ~AXI_DAC_REG_CNTRL_2_R1_MODE;
    else
        ulReg |= AXI_DAC_REG_CNTRL_2_R1_MODE;

    axi_ad9361_dac_reg_write(AXI_DAC_REG_CNTRL_2, ulReg);
    axi_ad9361_dac_reg_write(AXI_DAC_REG_RATECNTRL, axi_ad9361_get_sampling_freq_ratio() - 1);
}

uint32_t axi_ad9361_dac_get_core_version()
{
    return axi_ad9361_dac_reg_read(AXI_DAC_REG_VERSION);
}

uint64_t axi_ad9361_dac_get_interface_freq(uint64_t ullAXIFrequency)
{
    return ((uint64_t)axi_ad9361_dac_reg_read(AXI_DAC_REG_CLK_FREQ) * axi_ad9361_dac_reg_read(AXI_DAC_REG_CLK_RATIO) * ullAXIFrequency) >> 16;
}
uint64_t axi_ad9361_dac_get_sampling_freq(uint64_t ullAXIFrequency)
{
    return axi_ad9361_dac_get_interface_freq(ullAXIFrequency) / axi_ad9361_get_sampling_freq_ratio();
}

void axi_ad9361_dac_set_data_sel(uint8_t ubChannel, enum axi_ad9361_dac_data_sel eDataSel)
{
    axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(ubChannel), AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(eDataSel));
}
enum axi_ad9361_dac_data_sel axi_ad9361_dac_get_data_sel(uint8_t ubChannel)
{
    return (enum axi_ad9361_dac_data_sel)axi_ad9361_dac_reg_read(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(ubChannel));
}

void axi_ad9361_dac_sync()
{
    axi_ad9361_dac_reg_write(AXI_DAC_REG_CNTRL_1, 0);
    axi_ad9361_dac_reg_write(AXI_DAC_REG_CNTRL_1, AXI_DAC_REG_CNTRL_1_SYNC);
}

void axi_ad9361_dac_dds_set_frequency(uint8_t ubChannel, uint8_t ubTone, uint64_t ullAXIFrequency, uint32_t ulFrequency)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    uint16_t usIncr = ((uint64_t)ulFrequency << 16) / axi_ad9361_dac_get_sampling_freq(ullAXIFrequency);

    ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0);
    ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(usIncr);

    axi_ad9361_dac_reg_write(ulAddr, ulReg);
    axi_ad9361_dac_sync();
}
uint32_t axi_ad9361_dac_dds_get_frequency(uint8_t ubChannel, uint8_t ubTone, uint64_t ullAXIFrequency)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    ulReg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0);
    ulReg >>= utils_find_first_set_bit(AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0));

    return ((uint64_t)ulReg * axi_ad9361_dac_get_sampling_freq(ullAXIFrequency)) >> 16;
}
void axi_ad9361_dac_dds_set_phase(uint8_t ubChannel, uint8_t ubTone, uint32_t ulPhase)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    uint16_t usInit = ((uint64_t)ulPhase << 16) / 360000;

    ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0);
    ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(usInit);

    axi_ad9361_dac_reg_write(ulAddr, ulReg);
    axi_ad9361_dac_sync();
}
uint32_t axi_ad9361_dac_dds_get_phase(uint8_t ubChannel, uint8_t ubTone)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    ulReg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0);
    ulReg >>= utils_find_first_set_bit(AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0));

    return ((uint64_t)ulReg * 360000) >> 16;
}
void axi_ad9361_dac_dds_set_scale(uint8_t ubChannel, uint8_t ubTone, int32_t lScale)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_1(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_3(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0);
    ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(axi_ad9361_to_sif_1_1_14(lScale));

    axi_ad9361_dac_reg_write(ulAddr, ulReg);
    axi_ad9361_dac_sync();
}
int32_t axi_ad9361_dac_dds_get_scale(uint8_t ubChannel, uint8_t ubTone)
{
    uint32_t ulAddr = (ubTone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_1(ubChannel) : AXI_DAC_CHAN_REG_CHAN_CNTRL_3(ubChannel);
    uint32_t ulReg = axi_ad9361_dac_reg_read(ulAddr);

    ulReg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0);
    ulReg >>= utils_find_first_set_bit(AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0));

    return axi_ad9361_from_sif_1_1_14(ulReg);
}

static void axi_ad9361_dac_set_calib_phase_scale(uint8_t ubPhase, uint8_t ubChannel, int32_t lVal)
{
    uint32_t ulReg = axi_ad9361_dac_reg_read(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(ubChannel));

    if(!((ubChannel + ubPhase) % 2))
    {
        ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0);
        ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(axi_ad9361_to_sif_1_1_14(lVal));
    }
    else
    {
        ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0);
        ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(axi_ad9361_to_sif_1_1_14(lVal));
    }

    axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ubChannel), ulReg);
}
static int32_t axi_ad9361_dac_get_calib_phase_scale(uint8_t ubPhase, uint8_t ubChannel)
{
    uint32_t ulReg = axi_ad9361_dac_reg_read(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(ubChannel));

    if(!((ubChannel + ubPhase) % 2))
    {
        ulReg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0);
        ulReg >>= utils_find_first_set_bit(AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0));
    }
    else
    {
        ulReg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0);
        ulReg >>= utils_find_first_set_bit(AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0));
    }

    return axi_ad9361_from_sif_1_1_14(ulReg);
}
void axi_ad9361_dac_set_calib_enable(uint8_t ubChannel, uint8_t ubEnable)
{
    uint32_t ulReg = axi_ad9361_dac_reg_read(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ubChannel));

    if(ubEnable)
        ulReg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB;
    else
        ulReg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB;

    axi_ad9361_dac_reg_write(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ubChannel), ulReg);
}
uint8_t axi_ad9361_dac_get_calib_enable(uint8_t ubChannel)
{
    return !!(axi_ad9361_dac_reg_read(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ubChannel)) & AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB);
}
void axi_ad9361_dac_set_calib_phase(uint8_t ubChannel, int32_t lVal)
{
    axi_ad9361_dac_set_calib_phase_scale(1, ubChannel, lVal);
}
int32_t axi_ad9361_dac_get_calib_phase(uint8_t ubChannel)
{
    return axi_ad9361_dac_get_calib_phase_scale(1, ubChannel);
}
void axi_ad9361_dac_set_calib_scale(uint8_t ubChannel, int32_t lVal)
{
    axi_ad9361_dac_set_calib_phase_scale(0, ubChannel, lVal);
}
int32_t axi_ad9361_dac_get_calib_scale(uint8_t ubChannel)
{
    return axi_ad9361_dac_get_calib_phase_scale(0, ubChannel);
}

void axi_ad9361_dac_set_lane_delay(uint8_t ubLane, uint8_t ubDelay)
{
    axi_ad9361_dac_reg_write(AXI_DAC_REG_DELAY(ubLane), ubDelay);
}
uint32_t axi_ad9361_dac_get_lane_delay(uint8_t ubLane)
{
    return axi_ad9361_dac_reg_read(AXI_DAC_REG_DELAY(ubLane));
}
