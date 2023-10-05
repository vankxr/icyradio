#include "axi_gpio.h"

static void axi_gpio_reg_write(void *pBase, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pBase + ulRegister) = ulValue;
}
static uint32_t axi_gpio_reg_read(void *pBase, uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pBase + ulRegister);
}

void axi_gpio_set_direction(void *pBase, uint8_t ubGPIO, uint8_t ubDirection)
{
    if(ubGPIO > 31)
        return;

    uint32_t ulRegValue = axi_gpio_reg_read(pBase, AXI_GPIO_REG_GPIO_IN_MASK);

    if(ubDirection == AXI_GPIO_OUTPUT)
        ulRegValue &= ~BIT(ubGPIO);
    else
        ulRegValue |= BIT(ubGPIO);

    axi_gpio_reg_write(pBase, AXI_GPIO_REG_GPIO_IN_MASK, ulRegValue);
}
uint8_t axi_gpio_get_direction(void *pBase, uint8_t ubGPIO)
{
    if(ubGPIO > 31)
        return AXI_GPIO_INPUT;

    return axi_gpio_reg_read(pBase, AXI_GPIO_REG_GPIO_IN_MASK) & BIT(ubGPIO) ? AXI_GPIO_INPUT : AXI_GPIO_OUTPUT;
}
void axi_gpio_set_value(void *pBase, uint8_t ubGPIO, uint8_t ubValue)
{
    if(ubGPIO > 31)
        return;

    uint32_t ulRegValue = axi_gpio_reg_read(pBase, AXI_GPIO_REG_GPIO_DATA);

    if(ubValue)
        ulRegValue |= BIT(ubGPIO);
    else
        ulRegValue &= ~BIT(ubGPIO);

    axi_gpio_reg_write(pBase, AXI_GPIO_REG_GPIO_DATA, ulRegValue);
}
uint8_t axi_gpio_get_value(void *pBase, uint8_t ubGPIO)
{
    if(ubGPIO > 31)
        return 0;

    return axi_gpio_reg_read(pBase, AXI_GPIO_REG_GPIO_DATA) & BIT(ubGPIO) ? 1 : 0;
}