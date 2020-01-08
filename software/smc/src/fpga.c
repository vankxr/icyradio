#include "fpga.h"

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize)
{
    if(!pubBitstream || !ulBitstreamSize)
        return 0;

    FPGA_HARD_RESET(); // Reset
    FPGA_SELECT();

    while(FPGA_CFG_DONE()); // CDONE should fall

    delay_ms(10);

    FPGA_HARD_UNRESET(); // Release reset

    delay_ms(10);

    FPGA_UNSELECT();

    usart1_spi_write_byte(0x00, 1); // 8 clocks for internal housekeeping

    FPGA_SELECT();

    usart1_spi_write(pubBitstream, ulBitstreamSize, 1); // Send bitstream

    FPGA_UNSELECT();

    uint8_t i = 0;

    while(!FPGA_CFG_DONE()) // Send clocks until CDONE rises, should take no more than 100 clocks
    {
        if(i >= 100)
            return 0;

        usart1_spi_write_byte(0x00, 1);

        i += 8;
    }

    for(uint8_t i = 0; i < 49; i += 8) // Send ~49 clocks before IOs go into user mode
        usart1_spi_write_byte(0x00, 1);

    return 1;
}
uint8_t fpga_init()
{
    
}