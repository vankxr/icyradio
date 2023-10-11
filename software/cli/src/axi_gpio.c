#include "axi_gpio.h"

static pthread_mutex_t tMutex[AXI_GPIO_NUM_INSTANCES] = { PTHREAD_MUTEX_INITIALIZER };

static void axi_gpio_reg_write(uint8_t ubInst, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIGPIOBase[ubInst] + ulRegister) = ulValue;
}
static uint32_t axi_gpio_reg_read(uint8_t ubInst, uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIGPIOBase[ubInst] + ulRegister);
}

void axi_gpio_set_direction(uint8_t ubInst, uint8_t ubGPIO, uint8_t ubDirection)
{
    if(ubGPIO > 31)
        return;

    pthread_mutex_lock(&tMutex[ubInst]);

    uint32_t ulRegValue = axi_gpio_reg_read(ubInst, AXI_GPIO_REG_GPIO_IN_MASK);

    if(ubDirection == AXI_GPIO_OUTPUT)
        ulRegValue &= ~BIT(ubGPIO);
    else
        ulRegValue |= BIT(ubGPIO);

    axi_gpio_reg_write(ubInst, AXI_GPIO_REG_GPIO_IN_MASK, ulRegValue);

    pthread_mutex_unlock(&tMutex[ubInst]);
}
uint8_t axi_gpio_get_direction(uint8_t ubInst, uint8_t ubGPIO)
{
    if(ubGPIO > 31)
        return AXI_GPIO_INPUT;

    return axi_gpio_reg_read(ubInst, AXI_GPIO_REG_GPIO_IN_MASK) & BIT(ubGPIO) ? AXI_GPIO_INPUT : AXI_GPIO_OUTPUT;
}
void axi_gpio_set_value(uint8_t ubInst, uint8_t ubGPIO, uint8_t ubValue)
{
    if(ubGPIO > 31)
        return;

    pthread_mutex_lock(&tMutex[ubInst]);

    uint32_t ulRegValue = axi_gpio_reg_read(ubInst, AXI_GPIO_REG_GPIO_DATA);

    if(ubValue)
        ulRegValue |= BIT(ubGPIO);
    else
        ulRegValue &= ~BIT(ubGPIO);

    axi_gpio_reg_write(ubInst, AXI_GPIO_REG_GPIO_DATA, ulRegValue);

    pthread_mutex_unlock(&tMutex[ubInst]);
}
uint8_t axi_gpio_get_value(uint8_t ubInst, uint8_t ubGPIO)
{
    if(ubGPIO > 31)
        return 0;

    return axi_gpio_reg_read(ubInst, AXI_GPIO_REG_GPIO_DATA) & BIT(ubGPIO) ? 1 : 0;
}