#pragma once

#include <cstdint>
#include <mutex>
#include <unistd.h>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_SPI_NUM_INSTANCES 3

#define AXI_SPI_REG_VERSION     0x00
#define AXI_SPI_REG_CTRL        0x04
#define AXI_SPI_REG_SCK_DIV     0x08
#define AXI_SPI_REG_MMIO_CTRL   0x0C
#define AXI_SPI_REG_CMD         0x10
#define AXI_SPI_REG_RD_DATA     0x14
#define AXI_SPI_REG_SR_PEEK     0x18
#define AXI_SPI_REG_SLAVE_SEL   0x1C

#define AXI_SPI_REG_CTRL_SCK_DIV_EN                 BIT(0)
#define AXI_SPI_REG_CTRL_SPI_EN                     BIT(1)
#define AXI_SPI_REG_CTRL_CPHA                       BIT(2)
#define AXI_SPI_REG_CTRL_CPOL                       BIT(3)
#define AXI_SPI_REG_CTRL_SPI_MODE(n)                (((n) & 0x03) << 2)
#define AXI_SPI_REG_CTRL_IO_MODE_SINGLE             BIT(4)
#define AXI_SPI_REG_CTRL_IO_MODE_DUAL               BIT(5)
#define AXI_SPI_REG_CTRL_IO_MODE_QUAD               BIT(6)
#define AXI_SPI_REG_CTRL_LSB_FIRST                  BIT(8)
#define AXI_SPI_REG_CTRL_MMIO_EN_REQ                BIT(12)
#define AXI_SPI_REG_CTRL_MMIO_EN                    BIT(13)
#define AXI_SPI_REG_CTRL_OUT_BUF_VALID              BIT(16)
#define AXI_SPI_REG_CTRL_IN_BUF_VALID               BIT(17)
#define AXI_SPI_REG_CTRL_SPI_IDLE                   BIT(20)
#define AXI_SPI_REG_CTRL_SPI_DIR                    BIT(21)

#define AXI_SPI_REG_MMIO_CTRL_ADDR_SIZE(n)          ((((n) - 1) & 0x03) << 0)
#define AXI_SPI_REG_MMIO_CTRL_DUMMY_SIZE(n)         (((n) & 0x03) << 4)
#define AXI_SPI_REG_MMIO_CTRL_MODE_BITS(n)          (((n) & 0xFF) << 8)
#define AXI_SPI_REG_MMIO_CTRL_CS_HIGH_WAIT(n)       ((((n) - 1) & 0xFF) << 16)

#define AXI_SPI_REG_CMD_WR_DATA(n)                  (((n) & 0xFF) << 0)
#define AXI_SPI_REG_CMD_START_WRITE                 BIT(8)
#define AXI_SPI_REG_CMD_START_READ                  BIT(9)

#define AXI_SPI_REG_RD_DATA_VALID                   BIT(31)

class AXISPI: public AXIPeripheral
{
public:
    enum BitOrder
    {
        LSB_FIRST = 0,
        MSB_FIRST = 1
    };
    enum Mode : uint8_t
    {
        MODE_0 = 0,
        MODE_1 = 1,
        MODE_2 = 2,
        MODE_3 = 3
    };
    enum IOMode : uint8_t
    {
        SINGLE = 0,
        DUAL = 1,
        QUAD = 2
    };
    struct Capabilities
    {
        bool dual_io_supported;
        bool quad_io_supported;
        bool mmio_supported;
    };

    AXISPI(void *base_address);

    uint32_t getIPVersion();

    void setMode(AXISPI::Mode mode);
    AXISPI::Mode getMode();

    void setBitOrder(AXISPI::BitOrder bit_order);
    AXISPI::BitOrder getBitOrder();

    void setIOMode(AXISPI::IOMode io_mode);
    AXISPI::IOMode getIOMode();

    void configMMIOMode(uint8_t addr_bytes, uint8_t dummy_bytes, uint8_t mode_bits, uint8_t cs_high_wait);

    void configClockDivider(uint64_t sck_div);
    void configClock(uint64_t input_freq, uint64_t sck_freq);

    void enableClock(bool enable = true);
    inline void disableClock()
    {
        this->enableClock(false);
    }
    bool clockEnabled();
    void enable(bool enable = true);
    inline void disable()
    {
        this->enable(false);
    }
    bool enabled();
    void enableMMIO(bool enable = true);
    inline void disableMMIO()
    {
        this->enableMMIO(false);
    }
    bool MMIOenabled();

    void slaveSelect(const uint32_t mask, const bool select);

    uint8_t transfer(const uint8_t data);
    inline void transfer(const uint8_t *src, uint32_t size, uint8_t *dst)
    {
        if(src == nullptr)
            throw std::invalid_argument("AXI SPI: Source buffer cannot be null, use read() if not sending data");

        if(dst == nullptr)
            throw std::invalid_argument("AXI SPI: Destination buffer cannot be null, use write() if not receiving data");

        while(size--)
            *dst++ = this->transfer(*src++);
    }
    void write(const uint8_t data, const bool wait = true);
    inline void write(const uint8_t *src, uint32_t size, const bool wait = true)
    {
        if(src == nullptr)
            throw std::invalid_argument("AXI SPI: Source buffer cannot be null");

        while(size--)
            this->write(*src++, wait && !size);
    }
    uint8_t read();
    inline void read(uint8_t *dst, uint32_t size, uint8_t send_data = 0x00)
    {
        if(dst == nullptr)
            throw std::invalid_argument("AXI SPI: Destination buffer cannot be null");

        while(size--)
            *dst++ = !send_data ? this->read() : this->transfer(send_data);
    }

private:
    std::mutex mutex;
    AXISPI::Capabilities capabilities;
    uint64_t max_sck_div;
    uint32_t ss_mask;
};

// Instance 0 - axi_qspi_mm_0 - QSPI Flash
#define AXI_QUAD_SPI_MM0_FLASH_INST 0

#define AXI_QUAD_SPI_MM0_FLASH_SS BIT(0)

// Instance 1 - axi_spi_0 - Transceiver
#define AXI_SPI_TRX_INST 1

#define AXI_SPI0_TRX_SS BIT(0)

// Instance 2 - axi_spi_1 - mmWave Synthesizer
#define AXI_SPI_SYNTH_INST 2

#define AXI_SPI1_SYNTH_SS BIT(0)