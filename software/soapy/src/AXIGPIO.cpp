#include "AXIGPIO.hpp"

AXIGPIO::AXIGPIO(void *base_address): AXIPeripheral(base_address)
{
    // Nothing to do here
}

void AXIGPIO::setDirection(uint8_t gpio, AXIGPIO::Direction direction)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t reg_val = this->readReg(AXI_GPIO_REG_GPIO_IN_MASK);

    if(direction == AXIGPIO::Direction::INPUT)
        reg_val |= BIT(gpio);
    else
        reg_val &= ~BIT(gpio);

    this->writeReg(AXI_GPIO_REG_GPIO_IN_MASK, reg_val);
}
AXIGPIO::Direction AXIGPIO::getDirection(uint8_t gpio)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->mutex);

    return (this->readReg(AXI_GPIO_REG_GPIO_IN_MASK) & BIT(gpio)) ? AXIGPIO::Direction::INPUT : AXIGPIO::Direction::OUTPUT;
}
void AXIGPIO::setValue(uint8_t gpio, AXIGPIO::Value value)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t reg_val = this->readReg(AXI_GPIO_REG_GPIO_DATA);

    if(value == AXIGPIO::Value::HIGH)
        reg_val |= BIT(gpio);
    else
        reg_val &= ~BIT(gpio);

    this->writeReg(AXI_GPIO_REG_GPIO_DATA, reg_val);
}
AXIGPIO::Value AXIGPIO::getValue(uint8_t gpio)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->mutex);

    return (this->readReg(AXI_GPIO_REG_GPIO_DATA) & BIT(gpio)) ? AXIGPIO::Value::HIGH : AXIGPIO::Value::LOW;
}