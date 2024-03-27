#pragma once

#include <cstdint>
#include <mutex>
#include <thread>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_SPI_NUM_INSTANCES 3

#define AXI_SPI_REG_VERSION                 0x00
#define AXI_SPI_REG_CTRL                    0x04
#define AXI_SPI_REG_IRQ_ENABLE              0x08
#define AXI_SPI_REG_IRQ_PENDING             0x0C
#define AXI_SPI_REG_SCK_DIV                 0x10
#define AXI_SPI_REG_CMD                     0x14
#define AXI_SPI_REG_RD_DATA                 0x18
#define AXI_SPI_REG_SR_PEEK                 0x1C
#define AXI_SPI_REG_SLAVE_SEL               0x20
#define AXI_SPI_REG_MMIO_CTRL_1             0x24
#define AXI_SPI_REG_MMIO_CTRL_2             0x28
#define AXI_SPI_REG_MMIO_CTRL_3             0x2C
#define AXI_SPI_REG_MMIO_CS_MASK            0x30
#define AXI_SPI_REG_MMIO_RD_REQ_CNT         0x34
#define AXI_SPI_REG_MMIO_CONT_RD_REQ_CNT    0x38

#define AXI_SPI_REG_CTRL_SCK_DIV_EN                 BIT(0)
#define AXI_SPI_REG_CTRL_SPI_EN                     BIT(1)
#define AXI_SPI_REG_CTRL_CPHA                       BIT(2)
#define AXI_SPI_REG_CTRL_CPOL                       BIT(3)
#define AXI_SPI_REG_CTRL_SPI_MODE(n)                (((uint32_t)(n) & 0x03) << 2)
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

#define AXI_SPI_REG_IRQ_x_IRQ_SPI_IDLE              BIT(0)
#define AXI_SPI_REG_IRQ_x_IRQ_SPI_IN_BUF_VALID      BIT(1)
#define AXI_SPI_REG_IRQ_x_IRQ_SPI_OUT_BUF_NVALID    BIT(2)

#define AXI_SPI_REG_CMD_WR_DATA(n)                  (((uint32_t)(n) & 0xFF) << 0)
#define AXI_SPI_REG_CMD_START_WRITE                 BIT(8)
#define AXI_SPI_REG_CMD_START_READ                  BIT(9)

#define AXI_SPI_REG_RD_DATA_VALID                   BIT(31)

#define AXI_SPI_REG_MMIO_CTRL_1_RD_INSTR(n)         (((uint32_t)(n) & 0xFF) << 0)
#define AXI_SPI_REG_MMIO_CTRL_1_ADDR_SIZE(n)        (((uint32_t)(n) & 0x03) << 8)
#define AXI_SPI_REG_MMIO_CTRL_1_ADDR_REM(r)         (((uint32_t)(r) >> 10) & 0x03)
#define AXI_SPI_REG_MMIO_CTRL_1_DUMMY_SIZE(n)       (((uint32_t)(n) & 0x03) << 12)
#define AXI_SPI_REG_MMIO_CTRL_1_DUMMY_REM(r)        (((uint32_t)(r) >> 14) & 0x03)
#define AXI_SPI_REG_MMIO_CTRL_1_MODE_BITS(n)        (((uint32_t)(n) & 0xFF) << 16)
#define AXI_SPI_REG_MMIO_CTRL_1_MODE_BITS_EN        BIT(24)
#define AXI_SPI_REG_MMIO_CTRL_1_CONT_READ_EN        BIT(25)
#define AXI_SPI_REG_MMIO_CTRL_1_CONT_READ_READY     BIT(26)

#define AXI_SPI_REG_MMIO_CTRL_2_RD_INSTR_IO_MODE_SINGLE     BIT(0)
#define AXI_SPI_REG_MMIO_CTRL_2_RD_INSTR_IO_MODE_DUAL       BIT(1)
#define AXI_SPI_REG_MMIO_CTRL_2_RD_INSTR_IO_MODE_QUAD       BIT(2)
#define AXI_SPI_REG_MMIO_CTRL_2_ADDR_IO_MODE_SINGLE         BIT(4)
#define AXI_SPI_REG_MMIO_CTRL_2_ADDR_IO_MODE_DUAL           BIT(5)
#define AXI_SPI_REG_MMIO_CTRL_2_ADDR_IO_MODE_QUAD           BIT(6)
#define AXI_SPI_REG_MMIO_CTRL_2_DUMMY_IO_MODE_SINGLE        BIT(8)
#define AXI_SPI_REG_MMIO_CTRL_2_DUMMY_IO_MODE_DUAL          BIT(9)
#define AXI_SPI_REG_MMIO_CTRL_2_DUMMY_IO_MODE_QUAD          BIT(10)
#define AXI_SPI_REG_MMIO_CTRL_2_DATA_IO_MODE_SINGLE         BIT(12)
#define AXI_SPI_REG_MMIO_CTRL_2_DATA_IO_MODE_DUAL           BIT(13)
#define AXI_SPI_REG_MMIO_CTRL_2_DATA_IO_MODE_QUAD           BIT(14)
#define AXI_SPI_REG_MMIO_CTRL_2_CS_HIGH_WAIT(n)             (((uint32_t)(n) & 0xFF) << 16)
#define AXI_SPI_REG_MMIO_CTRL_2_CS_LOW_WAIT(n)              (((uint32_t)(n) & 0xFF) << 24)

#define AXI_SPI_REG_MMIO_CTRL_3_CS_WAIT_REM(r)              (((uint32_t)(r) >> 0) & 0xFF)
#define AXI_SPI_REG_MMIO_CTRL_3_SPI_MMIO_FSM_STATE(r)       (((uint32_t)(r) >> 24) & 0x0F)
#define AXI_SPI_REG_MMIO_CTRL_3_SPI_MMIO_FSM_STATE_NEXT(r)  (((uint32_t)(r) >> 28) & 0x0F)

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
    struct MMIOConfig
    {
        AXISPI::IOMode rd_instr_io_mode; // IO mode to use during the read instruction phase
        uint8_t rd_instr; // Read instruction
        AXISPI::IOMode addr_io_mode; // IO mode to use during the address phase (+ mode bits)
        uint8_t addr_bytes; // Number of address bytes (1-4)
        uint8_t mode_bits; // Mode bits to use
        bool mode_bits_en; // Enable mode bits
        bool cont_read_en; // Enable continuous read mode (Note: mode bits should be correctly configured)
        AXISPI::IOMode dummy_io_mode; // IO mode to use during the dummy phase
        uint8_t dummy_bytes; // Number of dummy bytes (0-3)
        AXISPI::IOMode data_io_mode; // IO mode to use during the data phase
        uint8_t cs_high_wait; // ACLK cycles to wait after CS goes high, before lowering again
        uint8_t cs_low_wait; // ACLK cycles to wait after CS goes low, before sending data
        uint32_t cs_mask; // Chip select mask
    };
    struct MMIOStats
    {
        uint32_t rd_req_cnt;
        uint32_t cont_rd_req_cnt;
    };

    AXISPI(void *base_address);

    uint32_t getIPVersion();

    AXISPI::Capabilities getCapabilities();

    void setMode(AXISPI::Mode mode);
    AXISPI::Mode getMode();

    void setBitOrder(AXISPI::BitOrder bit_order);
    AXISPI::BitOrder getBitOrder();

    void setIOMode(AXISPI::IOMode io_mode);
    AXISPI::IOMode getIOMode();

    void configMMIOMode(AXISPI::MMIOConfig &config);
    AXISPI::MMIOStats getMMIOStats();

    void setClockDivider(uint64_t sck_div);
    uint64_t getClockDivider();
    void setClockFrequency(uint64_t input_freq, uint64_t sck_freq);
    uint64_t getClockFrequency(uint64_t input_freq);

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
    bool idle();
    void enableMMIO(bool enable = true);
    inline void disableMMIO()
    {
        this->enableMMIO(false);
    }
    bool MMIOenabled();

    void selectSlave(const uint32_t mask, const bool select = true);
    inline void deselectSlave(const uint32_t mask)
    {
        this->selectSlave(mask, false);
    }
    uint32_t getSelectedSlaveMask();
    inline bool isAnySlaveSelected()
    {
        return this->getSelectedSlaveMask() != this->ss_mask;
    }

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