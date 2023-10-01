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
    if(ubGPIO > 63)
        return;

    uint32_t ulReg = ubGPIO > 31 ? AXI_GPIO_REG_GPIO2_TRI : AXI_GPIO_REG_GPIO_TRI;

    uint32_t ulRegValue = axi_gpio_reg_read(pBase, ulReg);

    if(ubDirection == AXI_GPIO_OUTPUT)
        ulRegValue &= ~BIT(ubGPIO % 32);
    else
        ulRegValue |= BIT(ubGPIO % 32);

    axi_gpio_reg_write(pBase, ulReg, ulRegValue);
}
uint8_t axi_gpio_get_direction(void *pBase, uint8_t ubGPIO)
{
    if(ubGPIO > 63)
        return AXI_GPIO_INPUT;

    uint32_t ulReg = ubGPIO > 31 ? AXI_GPIO_REG_GPIO2_TRI : AXI_GPIO_REG_GPIO_TRI;

    return axi_gpio_reg_read(pBase, ulReg) & BIT(ubGPIO % 32) ? AXI_GPIO_INPUT : AXI_GPIO_OUTPUT;
}
void axi_gpio_set_value(void *pBase, uint8_t ubGPIO, uint8_t ubValue)
{
    if(ubGPIO > 63)
        return;

    uint32_t ulReg = ubGPIO > 31 ? AXI_GPIO_REG_GPIO2_DATA : AXI_GPIO_REG_GPIO_DATA;

    uint32_t ulRegValue = axi_gpio_reg_read(pBase, ulReg);

    if(ubValue)
        ulRegValue |= BIT(ubGPIO % 32);
    else
        ulRegValue &= ~BIT(ubGPIO % 32);

    axi_gpio_reg_write(pBase, ulReg, ulRegValue);
}
uint8_t axi_gpio_get_value(void *pBase, uint8_t ubGPIO)
{
    if(ubGPIO > 63)
        return 0;

    uint32_t ulReg = ubGPIO > 31 ? AXI_GPIO_REG_GPIO2_DATA : AXI_GPIO_REG_GPIO_DATA;

    return axi_gpio_reg_read(pBase, ulReg) & BIT(ubGPIO % 32) ? 1 : 0;
}