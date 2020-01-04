#include "fpga.h"

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize)
{
    if(!pubBitstream || !ulBitstreamSize)
        return 0;

    FPGA_HARD_RESET();
    FPGA_SELECT();

    //while(FPGA_CFG_DONE());

    delay_ms(10);

    FPGA_HARD_UNRESET();

    delay_ms(10);

    FPGA_UNSELECT();

    usart1_spi_write_byte(0x00, 1);

    FPGA_SELECT();

    usart1_spi_write(pubBitstream, ulBitstreamSize, 1);

    FPGA_UNSELECT();

    for(uint8_t i = 0; i < 100; i += 8)
        usart1_spi_write_byte(0x00, 1);

    if(!FPGA_CFG_DONE())
        return 0;

    for(uint8_t i = 0; i < 49; i += 8)
        usart1_spi_write_byte(0x00, 1);

    return 1;
}
uint8_t fpga_init()
{
    
}