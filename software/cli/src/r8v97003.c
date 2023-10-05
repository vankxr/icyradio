#include "r8v97003.h"

uint32_t R8V97003_REF_FREQ;
uint32_t R8V97003_REF_MULT_IN_FREQ;
uint32_t R8V97003_REF_RDIV_IN_FREQ;
uint32_t R8V97003_PFD_FREQ;
uint32_t R8V97003_BAND_SEL_CLK_FREQ;
uint64_t R8V97003_VCO_FREQ;
uint64_t R8V97003_FREQ;

static uint32_t r8v97003_get_gcd(uint64_t ullM, uint64_t ullN)
{
    while(ullN)
    {
        uint64_t ullMCopy = ullM;
        ullM = ullN;
        ullN = ullMCopy % ullN;
    }

    return ullM;
}
static void r8v97003_get_mixed_number(uint64_t ullM, uint64_t ullN, r8v97003_mixed_number_t *pMixedNumber) // Transform (m / n) in (a + (b / c)) where (b / c) is irreducible
{
    if(!pMixedNumber)
        return;

    uint32_t ulGCD = r8v97003_get_gcd(ullM, ullN);
    ullM /= ulGCD;
    ullN /= ulGCD;

    pMixedNumber->ulInt = ullM / ullN;
    pMixedNumber->ulNum = ullM % ullN;
    pMixedNumber->ulDen = ullN;
}

static uint8_t r8v97003_read_register(uint8_t ubRegister)
{
    uint8_t ubValue = 0;

    // ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    // {
        axi_quad_spi2_slave_select(BIT(0), 1);

        axi_quad_spi2_write_byte(BIT(7), 0);
        axi_quad_spi2_write_byte(ubRegister, 1);

        ubValue = axi_quad_spi2_transfer_byte(0x00);

        axi_quad_spi2_slave_select(BIT(0), 0);
    // }

    return ubValue;
}
static uint32_t r8v97003_read_register32(uint8_t ubRegister)
{
    uint32_t ulValue = 0;

    // ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    // {
        axi_quad_spi2_slave_select(BIT(0), 1);

        axi_quad_spi2_write_byte(BIT(7), 0);
        axi_quad_spi2_write_byte(ubRegister, 1);

        ulValue |= (uint32_t)axi_quad_spi2_transfer_byte(0x00) << 0;
        ulValue |= (uint32_t)axi_quad_spi2_transfer_byte(0x00) << 8;
        ulValue |= (uint32_t)axi_quad_spi2_transfer_byte(0x00) << 16;
        ulValue |= (uint32_t)axi_quad_spi2_transfer_byte(0x00) << 24;

        axi_quad_spi2_slave_select(BIT(0), 0);
    // }

    return ulValue;
}
static void r8v97003_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    // ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    // {
        axi_quad_spi2_slave_select(BIT(0), 1);

        axi_quad_spi2_write_byte(0x00, 0);
        axi_quad_spi2_write_byte(ubRegister, 0);
        axi_quad_spi2_write_byte(ubValue, 1);

        axi_quad_spi2_slave_select(BIT(0), 0);
    // }
}
static void r8v97003_write_register32(uint8_t ubRegister, uint32_t ulValue)
{
    // ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    // {
        axi_quad_spi2_slave_select(BIT(0), 1);

        axi_quad_spi2_write_byte(0x00, 0);
        axi_quad_spi2_write_byte(ubRegister, 0);
        axi_quad_spi2_write_byte((ulValue >> 0) & 0xFF, 0);
        axi_quad_spi2_write_byte((ulValue >> 8) & 0xFF, 0);
        axi_quad_spi2_write_byte((ulValue >> 16) & 0xFF, 0);
        axi_quad_spi2_write_byte((ulValue >> 24) & 0xFF, 1);

        axi_quad_spi2_slave_select(BIT(0), 0);
    // }
}
static void r8v97003_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    r8v97003_write_register(ubRegister, (r8v97003_read_register(ubRegister) & ubMask) | ubValue);
}

uint8_t r8v97003_init()
{
    axi_gpio1_set_value(AXI_GPIO1_SYNTH_CE_BIT, 1);
    axi_gpio1_set_value(AXI_GPIO1_SYNTH_RESETn_BIT, 0);
    usleep(10000);
    axi_gpio1_set_value(AXI_GPIO1_SYNTH_RESETn_BIT, 1);
    usleep(100000);

    r8v97003_write_register(R8V97003_REG_INTF_CONFIG, R8V97003_REG_INTF_CONFIG_SOFT_RESET | R8V97003_REG_INTF_CONFIG_ADDR_ASC | R8V97003_REG_INTF_CONFIG_SDO_ACTIVE);

    usleep(100000);

    uint16_t usVal = r8v97003_get_chip_type();

    if(usVal != 0x06)
    {
        DBGPRINTLN_CTX("Chip type mismatch (0x%02X != 0x06)", usVal);

        return 0;
    }

    usVal = r8v97003_get_chip_id();

    if(usVal != 0x0001)
    {
        DBGPRINTLN_CTX("Chip ID mismatch (0x%04X != 0x0001)", usVal);

        return 0;
    }

    usVal = r8v97003_get_vendor_id();

    if(usVal != 0x0426)
    {
        DBGPRINTLN_CTX("Chip vendor mismatch (0x%04X != 0x0426)", usVal);

        return 0;
    }

    DBGPRINTLN_CTX("Found 8V97003 Rev %hhu (Opt %hhu)", r8v97003_get_chip_version(), r8v97003_get_chip_option());

    r8v97003_write_register(R8V97003_REG_PWR_CTL, R8V97003_REG_PWR_CTL_ANA_PDOWN);

    return 1;
}

uint8_t r8v97003_get_chip_type()
{
    return r8v97003_read_register(R8V97003_REG_CHIP_TYPE);
}
uint16_t r8v97003_get_chip_id()
{
    return ((uint16_t)r8v97003_read_register(R8V97003_REG_CHIP_ID_HIGH) << 8) | r8v97003_read_register(R8V97003_REG_CHIP_ID_LOW);
}
uint8_t r8v97003_get_chip_version()
{
    return r8v97003_read_register(R8V97003_REG_CHIP_VERSION);
}
uint8_t r8v97003_get_chip_option()
{
    return r8v97003_read_register(R8V97003_REG_CHIP_OPTION);
}
uint16_t r8v97003_get_vendor_id()
{
    return ((uint16_t)r8v97003_read_register(R8V97003_REG_VENDOR_ID_HIGH) << 8) | r8v97003_read_register(R8V97003_REG_VENDOR_ID_LOW);
}

static void r8v97003_transfer_dbuf()
{
    r8v97003_write_register(R8V97003_REG_BUF_TRANSFER, R8V97003_REG_BUF_TRANSFER_TRANSFER_ON);

    while(r8v97003_read_register(R8V97003_REG_BUF_TRANSFER) & R8V97003_REG_BUF_TRANSFER_TRANSFER_ON)
        usleep(0);
}

uint8_t r8v97003_pfd_config(uint32_t ulRefFreq, uint8_t ubDiff, uint8_t ubRefDouble, uint8_t ubMult, uint16_t usRDiv)
{
    // DBGPRINTLN_CTX("Ref: %u, Diff: %s, RefDouble: %s, Mult: %hhu, RDiv: %hu", ulRefFreq, ubDiff ? "yes" : "no", ubRefDouble ? "yes" : "no", ubMult, usRDiv);

    if(ubMult < 1 || ubMult == 2 || ubMult > 63)
    {
        DBGPRINTLN_CTX("Invalid multiplier (Valid: 1, 3-63)");

        return 0;
    }

    if(usRDiv < 1 || usRDiv > 1023)
    {
        DBGPRINTLN_CTX("Invalid R divider (Valid: 1-1023)");

        return 0;
    }

    if(ulRefFreq < 10000000UL)
    {
        DBGPRINTLN_CTX("Reference frequency too low (Valid: >= 10 MHz)");

        return 0;
    }

    if(ulRefFreq > (ubRefDouble ? 250000000UL : 1600000000UL))
    {
        DBGPRINTLN_CTX("Reference frequency too high (Valid: <= %u MHz)", ubRefDouble ? 250 : 1600);

        return 0;
    }

    uint32_t ulMultOutFreq = ulRefFreq * (1 + !!ubRefDouble) * ubMult;

    if(ulMultOutFreq < 160000000UL || ulMultOutFreq > 250000000UL)
    {
        DBGPRINTLN_CTX("Multiplier output frequency out of range (Valid: 160-250 MHz)");

        return 0;
    }

    uint32_t ulPFDFrequency = ulMultOutFreq / usRDiv;

    if(ulPFDFrequency > 500000000UL)
    {
        DBGPRINTLN_CTX("PFD frequency too high (Valid: <= 500 MHz)");

        return 0;
    }
    else if(ulPFDFrequency > 250000000UL)
    {
        DBGPRINTLN_CTX("Warning: PFD frequency above 250 MHz, fractional mode will be disabled");
    }

    // Calculate band select clock divider
    uint32_t ulBandSelectClock = ulPFDFrequency / 1;
    uint16_t usBandSelectDivider = 1;

    while(usBandSelectDivider < 8192)
    {
        if(ulBandSelectClock >= 50000UL && ulBandSelectClock <= 100000UL)
            break;

        usBandSelectDivider++;
        ulBandSelectClock = ulPFDFrequency / usBandSelectDivider;
    }

    if(usBandSelectDivider >= 8192)
    {
        DBGPRINTLN_CTX("Coudl not find a suitable band select clock divider");

        return 0;
    }

    // DBGPRINTLN_CTX("PFD: %u Hz, BandSel: %u Hz", ulPFDFrequency, ulBandSelectClock);

    r8v97003_write_register(R8V97003_REG_RDIV_LOW, usRDiv & 0xFF);
    r8v97003_write_register(R8V97003_REG_RDIV_HIGH, ((ulRefFreq < 50000000UL) ? R8V97003_REG_RDIV_HIGH_REF_DBL_DELAY : 0) | (ubDiff ? R8V97003_REG_RDIV_HIGH_INPUT_TYPE : 0) | (ubRefDouble ? R8V97003_REG_RDIV_HIGH_REF_DBL_EN : 0) | ((usRDiv >> 8) & 0x03));
    r8v97003_transfer_dbuf();

    if(ubMult > 1)
    {
        r8v97003_write_register(R8V97003_REG_MULT_CTL0, R8V97003_REG_MULT_CTL0_MULT_EN | R8V97003_REG_MULT_CTL0_MULT_RESET);
        r8v97003_transfer_dbuf();

        r8v97003_write_register(R8V97003_REG_MULT_CTL0, R8V97003_REG_MULT_CTL0_MULT_EN | (ubMult & 0x3F));
        r8v97003_write_register(R8V97003_REG_MULT_CTL1, R8V97003_REG_MULT_CTL1_MULT_MUX_ENA | R8V97003_REG_MULT_CTL1_MULT_D2S_ENA | R8V97003_REG_MULT_CTL1_MULT_CP_ENA | BIT(2));
    }
    else
    {
        r8v97003_write_register(R8V97003_REG_MULT_CTL0, 0);
        r8v97003_write_register(R8V97003_REG_MULT_CTL1, R8V97003_REG_MULT_CTL1_MULT_FORCE_VCLOW | BIT(2));
    }

    r8v97003_transfer_dbuf();

    r8v97003_write_register(R8V97003_REG_BAND_SEL_DIV_LOW, usBandSelectDivider & 0xFF);
    r8v97003_write_register(R8V97003_REG_BAND_SEL_DIV_HIGH, (usBandSelectDivider >> 8) & 0x1F);

    r8v97003_transfer_dbuf();

    R8V97003_REF_FREQ = ulRefFreq;
    R8V97003_REF_MULT_IN_FREQ = ulRefFreq * (1 + !!ubRefDouble);
    R8V97003_REF_RDIV_IN_FREQ = ulMultOutFreq;
    R8V97003_PFD_FREQ = ulPFDFrequency;
    R8V97003_BAND_SEL_CLK_FREQ = ulBandSelectClock;

    return 1;
}

double r8v97003_get_cp_pmos_current()
{
    uint8_t ubValue = r8v97003_read_register(R8V97003_REG_ICP_PMOS);

    return ((double)ubValue + 1) / 6.0;
}
double r8v97003_get_cp_nmos_current()
{
    uint8_t ubValue = r8v97003_read_register(R8V97003_REG_ICP_NMOS);

    return ((double)ubValue + 1) / 6.0;
}
double r8v97003_get_cp_bleeder_current()
{
    uint8_t ubValue = r8v97003_read_register(R8V97003_REG_ICP_BLEEDER) & 0x7F;

    return (double)ubValue * 0.02;
}
uint8_t r8v97003_set_cp_current(double dPMOS, double dNMOS, double dBleeder)
{
    if(dPMOS < 0 || dNMOS < 0 || dBleeder < 0)
        return 0;

    uint8_t ubPMOS = (uint8_t)(dPMOS * 6.0 - 1);
    uint8_t ubNMOS = (uint8_t)(dNMOS * 6.0 - 1);
    uint8_t ubBleeder = (uint8_t)(dBleeder / 0.02);

    if(ubPMOS > 0x3F)
        ubPMOS = 0x3F;

    if(ubNMOS > 0x3F)
        ubNMOS = 0x3F;

    if(ubBleeder > 0x7F)
        ubBleeder = 0x7F;

    r8v97003_write_register(R8V97003_REG_ICP_PMOS, ubPMOS);
    r8v97003_write_register(R8V97003_REG_ICP_NMOS, ubNMOS);
    r8v97003_rmw_register(R8V97003_REG_ICP_BLEEDER, R8V97003_REG_ICP_BLEEDER_CP_HIZ, ubBleeder);

    return 1;
}

uint8_t r8v97003_set_frequency(uint64_t ullFrequency)
{
    // DBGPRINTLN_CTX("Freq: %llu Hz", ullFrequency);

    if(ullFrequency < 171875000ULL)
    {
        DBGPRINTLN_CTX("Frequency too low (Valid: >= 171.875 MHz)");

        return 0;
    }

    if(ullFrequency > 18000000000ULL)
    {
        DBGPRINTLN_CTX("Frequency too high (Valid: <= 18 GHz)");

        return 0;
    }

    // VCO works from 5.5 GHz to 11 GHz
    // For frequencies below 5.5 GHz, the VCO divider must be used
    // For frequencies above 11 GHz, the VCO doubler must be used
    uint8_t ubM0 = 0;
    uint8_t ubDoubler = 0;
    uint64_t ullVCOFrequency;

    if(ullFrequency < 5500000000ULL)
    {
        for(uint8_t i = 1; i < 6; i++)
        {
            ullVCOFrequency = ullFrequency << i;

            if(ullVCOFrequency >= 5500000000ULL && ullVCOFrequency <= 11000000000ULL) // VCO operating range
            {
                ubM0 = i;

                break;
            }
        }

        if(!ubM0)
        {
            DBGPRINTLN_CTX("Coudl not find a suitable output divider");

            return 0;
        }

        // DBGPRINTLN_CTX("VCO: %llu Hz, M0: %hhu", ullVCOFrequency, BIT(ubM0));
    }
    else if(ullFrequency > 11000000000ULL)
    {
        ullVCOFrequency = ullFrequency / 2;
        ubDoubler = 1;

        // DBGPRINTLN_CTX("VCO: %llu Hz", ullVCOFrequency);
    }
    else
    {
        ullVCOFrequency = ullFrequency;

        // DBGPRINTLN_CTX("VCO: %llu Hz", ullVCOFrequency);
    }

    r8v97003_mixed_number_t xMult;

    memset(&xMult, 0, sizeof(r8v97003_mixed_number_t));

    r8v97003_get_mixed_number(ullVCOFrequency, R8V97003_PFD_FREQ, &xMult);

    if(!xMult.ulDen) // Division by zero, should never happen, unless the previous function failed
    {
        DBGPRINTLN_CTX("Division by zero");

        return 0;
    }

    if(xMult.ulNum > 0 && R8V97003_PFD_FREQ > 250000000UL)
    {
        DBGPRINTLN_CTX("Fractional mode not supported with PFD above 250 MHz");

        return 0;
    }

    if(xMult.ulInt > (BIT(16) - 1) || xMult.ulInt < 12) // Integer limits (min 12, 16-bit wide)
    {
        DBGPRINTLN_CTX("Integer part out of range (%u, Valid: 12-65535)", xMult.ulInt);

        return 0;
    }

    if(xMult.ulNum >= xMult.ulDen)
    {
        DBGPRINTLN_CTX("Fractional part out of range (%u / %u, Valid: < 1)", xMult.ulNum, xMult.ulDen);

        return 0;
    }

    double dFrac = (double)xMult.ulNum / (double)xMult.ulDen;

    if(dFrac < 0.01)
        DBGPRINTLN_CTX("Warning: PLL operating close to integer-boundary mode (%u / %u = %f)", xMult.ulNum, xMult.ulDen, dFrac);

    while(xMult.ulDen < BIT(31) - 1) // Maximise MOD and FRAC to improve phase noise
    {
        xMult.ulDen <<= 1;
        xMult.ulNum <<= 1;
    }

    uint8_t ulManCtlReg = R8V97003_REG_MANUAL_CTL_FORCE_RELOCK;

    r8v97003_write_register(R8V97003_REG_NINT_LOW, xMult.ulInt & 0xFF);
    r8v97003_write_register(R8V97003_REG_NINT_HIGH, (xMult.ulInt >> 8) & 0xFF);

    if(xMult.ulNum > 0)
    {
        r8v97003_write_register32(R8V97003_REG_NMOD_LOW, xMult.ulDen);
        r8v97003_write_register32(R8V97003_REG_NFRAC_LOW, xMult.ulNum);

        // Re-calculate the phase word since it depends and is limited by MOD
        uint32_t ulPrevDen = r8v97003_read_register32(R8V97003_REG_NMOD_LOW);
        uint32_t ulPhase = r8v97003_read_register32(R8V97003_REG_PHASE_LOW);

        ulPhase *= ((double)xMult.ulDen / ulPrevDen);

        if(ulPhase >= xMult.ulDen)
            ulPhase = xMult.ulDen - 1;

        r8v97003_write_register32(R8V97003_REG_PHASE_LOW, ulPhase);

        ulManCtlReg |= R8V97003_REG_MANUAL_CTL_PH_ADJ;
    }

    r8v97003_transfer_dbuf();

    r8v97003_rmw_register(R8V97003_REG_DSM_CTL, ~0x70, xMult.ulNum > 0 ? R8V97003_REG_DSM_CTL_DSM_ORDER_3RD : R8V97003_REG_DSM_CTL_DSM_ORDER_OFF);
    r8v97003_write_register(R8V97003_REG_OUT_DIV_DBL, (ubDoubler ? R8V97003_REG_OUT_DIV_DBL_OUT_DBL_ENA : 0) | (ubM0 > 0 ? R8V97003_REG_OUT_DIV_DBL_OUT_DIV_ENA : 0) | (ullVCOFrequency < 7000000000ULL ? R8V97003_REG_OUT_DIV_DBL_OUT_DBL_FREQ : 0) | (ubM0 & 0x07));

    r8v97003_write_register(R8V97003_REG_MANUAL_CTL, ulManCtlReg);

    R8V97003_VCO_FREQ = (uint64_t)R8V97003_PFD_FREQ * xMult.ulInt + (((uint64_t)R8V97003_PFD_FREQ * xMult.ulNum) / xMult.ulDen);
    R8V97003_FREQ = (R8V97003_VCO_FREQ >> ubM0) * (ubDoubler + 1);

    // while(!TXPLL_LOCKED());

    return 1;
}