#include "AXIGPIO.hpp"

AXIGPIO::AXIGPIO(void *base_address): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI GPIO Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");
}

uint32_t AXIGPIO::getIPVersion()
{
    return this->readReg(AXI_GPIO_REG_VERSION);
}

void AXIGPIO::setDirection(uint8_t gpio, AXIGPIO::Direction direction)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    uint32_t reg;

    if(direction == AXIGPIO::Direction::OUTPUT)
        reg = AXI_GPIO_REG_GPIO_DIR_CLR;
    else
        reg = AXI_GPIO_REG_GPIO_DIR_SET;

    this->writeReg(reg, BIT(gpio));
}
AXIGPIO::Direction AXIGPIO::getDirection(uint8_t gpio)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    return (this->readReg(AXI_GPIO_REG_GPIO_DIR) & BIT(gpio)) ? AXIGPIO::Direction::INPUT : AXIGPIO::Direction::OUTPUT;
}
void AXIGPIO::setValue(uint8_t gpio, AXIGPIO::Value value)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    uint32_t reg;

    if(value == AXIGPIO::Value::LOW)
        reg = AXI_GPIO_REG_GPIO_OUT_CLR;
    else
        reg = AXI_GPIO_REG_GPIO_OUT_SET;

    this->writeReg(reg, BIT(gpio));
}
AXIGPIO::Value AXIGPIO::getValue(uint8_t gpio)
{
    if(gpio > 31)
        throw std::invalid_argument("AXI GPIO: GPIO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t dir = this->readReg(AXI_GPIO_REG_GPIO_DIR);
    uint32_t reg;

    if(dir & BIT(gpio))
        reg = AXI_GPIO_REG_GPIO_IN;
    else
        reg = AXI_GPIO_REG_GPIO_OUT;

    return (this->readReg(reg) & BIT(gpio)) ? AXIGPIO::Value::HIGH : AXIGPIO::Value::LOW;
}