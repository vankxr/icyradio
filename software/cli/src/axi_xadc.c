#include "axi_xadc.h"

static void axi_xadc_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIXADCBase + ulRegister) = ulValue;
}
static uint32_t axi_xadc_reg_read(uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIXADCBase + ulRegister);
}

static double axi_xadc_to_temperature(uint16_t usADCCode)
{
    return (double)usADCCode * 503.975 / 4096.0 - 273.15;
}
static uint16_t axi_xadc_from_temperature(double dTemperature)
{
    return (dTemperature + 273.15) * 4096.0 / 503.975;
}
static double axi_xadc_to_voltage(uint16_t usADCCode)
{
    return (double)usADCCode * 3.0 / 4096.0;
}
static uint16_t axi_xadc_from_voltage(double dVoltage)
{
    return dVoltage * 4096.0 / 3.0;
}

uint8_t axi_xadc_init()
{
    // TODO: Configure things

    return 1;
}

double axi_xadc_read_temperature()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_TEMP);

    return axi_xadc_to_temperature(usCode >> 4);
}
double axi_xadc_read_vccint()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_VCCINT);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_vccaux()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_VCCAUX);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_vbram()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_VBRAM);

    return axi_xadc_to_voltage(usCode >> 4);
}

double axi_xadc_read_max_temperature()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MAX_TEMP);

    return axi_xadc_to_temperature(usCode >> 4);
}
double axi_xadc_read_max_vccint()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MAX_VCCINT);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_max_vccaux()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MAX_VCCAUX);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_max_vbram()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MAX_VBRAM);

    return axi_xadc_to_voltage(usCode >> 4);
}

double axi_xadc_read_min_temperature()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MIN_TEMP);

    return axi_xadc_to_temperature(usCode >> 4);
}
double axi_xadc_read_min_vccint()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MIN_VCCINT);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_min_vccaux()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MIN_VCCAUX);

    return axi_xadc_to_voltage(usCode >> 4);
}
double axi_xadc_read_min_vbram()
{
    uint16_t usCode = axi_xadc_reg_read(AXI_XADC_REG_MIN_VBRAM);

    return axi_xadc_to_voltage(usCode >> 4);
}