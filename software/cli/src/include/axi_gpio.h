#ifndef __AXI_GPIO_H__
#define __AXI_GPIO_H__

#include <stdint.h>
#include "utils.h"

#define AXI_GPIO_NUM_INSTANCES 2

#define AXI_GPIO_REG_GPIO_DATA   0x000
#define AXI_GPIO_REG_GPIO_TRI    0x004
#define AXI_GPIO_REG_GPIO2_DATA  0x008
#define AXI_GPIO_REG_GPIO2_TRI   0x00C
#define AXI_GPIO_REG_GIER        0x11C
#define AXI_GPIO_REG_IPISR       0x120
#define AXI_GPIO_REG_IPIER       0x128

#define AXI_GPIO_REG_DGIER_GIE   BIT(31)

#define AXI_GPIO_REG_IPISR_CH0   BIT(0)
#define AXI_GPIO_REG_IPISR_CH1   BIT(1)

#define AXI_GPIO_REG_IPIER_CH0   BIT(0)
#define AXI_GPIO_REG_IPIER_CH1   BIT(1)

#define AXI_GPIO_OUTPUT 0
#define AXI_GPIO_INPUT  1

extern void *pAXIGPIOBase[AXI_GPIO_NUM_INSTANCES];

void axi_gpio_set_direction(void *pBase, uint8_t ubGPIO, uint8_t ubDirection);
uint8_t axi_gpio_get_direction(void *pBase, uint8_t ubGPIO);
void axi_gpio_set_value(void *pBase, uint8_t ubGPIO, uint8_t ubValue);
uint8_t axi_gpio_get_value(void *pBase, uint8_t ubGPIO);

static inline void axi_gpio0_set_direction(uint8_t ubGPIO, uint8_t ubDirection)
{
    axi_gpio_set_direction(pAXIGPIOBase[0], ubGPIO, ubDirection);
}
static inline uint8_t axi_gpio0_get_direction(uint8_t ubGPIO)
{
    return axi_gpio_get_direction(pAXIGPIOBase[0], ubGPIO);
}
static inline void axi_gpio0_set_value(uint8_t ubGPIO, uint8_t ubValue)
{
    axi_gpio_set_value(pAXIGPIOBase[0], ubGPIO, ubValue);
}
static inline uint8_t axi_gpio0_get_value(uint8_t ubGPIO)
{
    return axi_gpio_get_value(pAXIGPIOBase[0], ubGPIO);
}

static inline void axi_gpio1_set_direction(uint8_t ubGPIO, uint8_t ubDirection)
{
    axi_gpio_set_direction(pAXIGPIOBase[1], ubGPIO, ubDirection);
}
static inline uint8_t axi_gpio1_get_direction(uint8_t ubGPIO)
{
    return axi_gpio_get_direction(pAXIGPIOBase[1], ubGPIO);
}
static inline void axi_gpio1_set_value(uint8_t ubGPIO, uint8_t ubValue)
{
    axi_gpio_set_value(pAXIGPIOBase[1], ubGPIO, ubValue);
}
static inline uint8_t axi_gpio1_get_value(uint8_t ubGPIO)
{
    return axi_gpio_get_value(pAXIGPIOBase[1], ubGPIO);
}

#endif // __AXI_GPIO_H__