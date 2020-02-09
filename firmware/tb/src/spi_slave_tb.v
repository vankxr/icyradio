`include "../src/spi_slave.v"
`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module spi_slave_tb;

reg         clk;       // Clock
reg         reset;     // Reset
reg         spi_sck;   // SPI Serial Clock
reg         spi_mosi;  // SPI Master Out Slave In
wire        spi_miso;  // SPI Master In Slave Out
reg         spi_ncs;   // SPI Chip Select (Active low)
wire [6:0]  addr;      // Address
wire [31:0] data_out;  // Data paralellized from MOSI
reg  [31:0] data_in;   // Data to serialize on MISO
wire        wr_en;     // Write Enable
wire        rd_en;     // Read enable

spi_slave uut
(
    clk,
    reset,
    spi_sck,
    spi_mosi,
    spi_miso,
    spi_ncs,
    addr,
    data_out,
    data_in,
    wr_en,
    rd_en
);

///////////////////////////////////////
localparam total_sim_periods = 100;
reg [31:0] sim_periods;
reg [31:0] bs_cnt;

initial
    begin
        $dumpfile("sim/spi_slave_tb.vcd");
        //$dumpvars(0, spi_sck, spi_mosi, spi_miso, spi_ncs);
        $dumpvars;

        sim_periods = 32'd0;
        bs_cnt = 32'd0;

        reset = 1'b1;
    end

always
    begin
        // 20 MHz Clock
        clk = 1'b0;
        #25;
        clk = 1'b1;
        #25;
    end

always
    begin
        // 5 MHz Clock
        spi_sck = 1'b0;
        #100;
        spi_sck = 1'b1;
        #100;
    end

always @(negedge spi_sck)
    begin
        sim_periods <= sim_periods + 1;

        if(sim_periods == 2)
            begin
                reset <= 1'b0;

                data_in <= 32'd0;

                spi_ncs <= 1'b1;
                spi_mosi <= 1'b0;
            end

        if(sim_periods > 2 && sim_periods < 43)
            begin
                spi_ncs <= 1'b0;

                spi_mosi <= (40'h9200000000 >> (42 - sim_periods));
            end
        else
            begin
                spi_ncs <= 1'b1;

                spi_mosi <= 1'b0;
            end

        if(sim_periods == total_sim_periods)
            $stop;
    end

localparam CNTRL_SPI_REG_ID                 = 7'h00;
localparam CNTRL_SPI_REG_RST_CNTRL          = 7'h01;
localparam CNTRL_SPI_REG_IRQ_CNTRL_STATUS   = 7'h02;
localparam CNTRL_SPI_REG_LED_CNTRL          = 7'h03;
localparam CNTRL_SPI_REG_ADC_DPRAM_CNTRL    = 7'h10;
localparam CNTRL_SPI_REG_ADC_DPRAM_ADDR     = 7'h11;
localparam CNTRL_SPI_REG_ADC_DPRAM_DATA     = 7'h12;
localparam CNTRL_SPI_REG_DDC_CNTRL          = 7'h20;
localparam CNTRL_SPI_REG_DDC_LO_FREQ        = 7'h21;
localparam CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL  = 7'h30;

always @(*)
    begin
        case(addr)
            CNTRL_SPI_REG_RST_CNTRL:
                data_in = 0;
            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                data_in = 0;
            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                data_in = 0;
            CNTRL_SPI_REG_ADC_DPRAM_ADDR:
                data_in = 0;
            CNTRL_SPI_REG_ADC_DPRAM_DATA:
                data_in = 32'hADC05A5A;
            CNTRL_SPI_REG_DDC_CNTRL:
                data_in = 32'hDDC0AA0C;
            CNTRL_SPI_REG_DDC_LO_FREQ:
                data_in = 0;
            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                data_in = 0;
            default:
                data_in = 32'h00000000;
        endcase
    end

endmodule