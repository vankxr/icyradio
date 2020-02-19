module icyradio
(
    // Clock inputs
    input CLK1,
    input CLK2,
    input CLK3,
    input CLK4,
    // Reset
    input RESETn,
    // RGB LED
    output RED_LED,
    output GREEN_LED,
    output BLUE_LED,
    // QSPI Memory
    output QSPI_MEM_SCK,
    output QSPI_MEM_CSn,
    inout QSPI_MEM_IO0,
    inout QSPI_MEM_IO1,
    inout QSPI_MEM_IO2,
    inout QSPI_MEM_IO3,
    // Interrupt Requests
    output SMC_IRQn,
    output DSP_IRQn,
    // ADC Signals
    output ADC_CLK,
    input ADC_D0,
    input ADC_D1,
    input ADC_D2,
    input ADC_D3,
    input ADC_D4,
    input ADC_D5,
    input ADC_D6,
    input ADC_D7,
    input ADC_D8,
    input ADC_D9,
    input ADC_D10,
    input ADC_D11,
    input ADC_D12,
    input ADC_D13,
    input ADC_D14,
    input ADC_D15,
    input ADC_OF,
    output ADC_OEn,
    // DAC Signals
    output DAC_CLK,
    input DAC_DCLK,
    output DAC_D0,
    output DAC_D1,
    output DAC_D2,
    output DAC_D3,
    output DAC_D4,
    output DAC_D5,
    output DAC_D6,
    output DAC_D7,
    output DAC_D8,
    output DAC_D9,
    output DAC_D10,
    output DAC_D11,
    output DAC_D12,
    output DAC_D13,
    // Control SPI slave
    input SPI_SCK,
    input SPI_MOSI,
    output SPI_MISO,
    input SPI_CSn,
    // DSP Baseband I2S
    output BB_I2S_DSP_BCLK,
    output BB_I2S_DSP_LRCLK,
    input BB_I2S_DSP_SDOUT,
    output BB_I2S_DSP_SDIN,
    // DSP Audio I2S
    inout I2S_DSP_MCLK,
    inout I2S_DSP_BCLK,
    inout I2S_DSP_LRCLK,
    input I2S_DSP_SDOUT,
    output I2S_DSP_SDIN,
    // CODEC Audio I2S
    output I2S_CODEC_MCLK,
    output I2S_CODEC_BCLK,
    output I2S_CODEC_LRCLK,
    input I2S_CODEC_SDOUT,
    output I2S_CODEC_SDIN,
    // USB Bridge Audio I2S
    input I2S_BRG_MCLK,
    input I2S_BRG_BCLK,
    input I2S_BRG_LRCLK,
    input I2S_BRG_SDOUT,
    output I2S_BRG_SDIN
);

/// Clocks ///
// Inputs
wire clk1; // Fast clock, feeds the ADC, the DDC and the baseband I2S controller
wire clk2; // Fast clock, feeds the reset generator, control SPI and IRQ controller
wire clk3; // Fast clock, feeds the LED PWM controller
wire clk4;

assign CLK1 = clk1;
assign CLK2 = clk2;
assign CLK3 = clk3;
assign CLK4 = clk4;

/*
SB_PLL40_CORE #(
    .FEEDBACK_PATH("SIMPLE"),
    .DIVR(4'b0100),         // DIVR =  4
    .DIVF(7'b0111111),      // DIVF = 63
    .DIVQ(3'b100),          // DIVQ =  4
    .FILTER_RANGE(3'b001)   // FILTER_RANGE = 1
)
pll_40M
(
    .LOCK(),
    .RESETB(1'b1),
    .BYPASS(1'b0),
    .REFERENCECLK(clk_50M),
    .PLLOUTGLOBAL(clk_40M)
);*/

// Module clocks
wire rst_clk;
wire adc_dpram_rd_clk;
wire adc_dpram_wr_clk;
wire adc_clk;
wire ddc_clk;
wire dac_clk;
wire bb_i2s_clk;
wire audio_i2s_clk;
wire audio_i2s_mclk;
wire qspi_mem_clk;
wire irq_clk;
wire led_clk;
wire cntrl_spi_clk;

assign rst_clk              = clk2; // Reset clock is CLK2
assign adc_dpram_rd_clk     = clk2; // ADC DP RAM read clock is CLK2 (same as the control SPI interface clock)
assign adc_dpram_wr_clk     = clk1; // ADC DP RAM write clock is CLK1 (same as ADC)
assign adc_clk              = clk1; // ADC clock is CLK1
assign ddc_clk              = clk1; // DDC clock is CLK1 (same as the ADC)
assign dac_clk              = clk4; // DAC clock is CLK4
assign bb_i2s_clk           = clk1; // Baseband I2S clock is CLK1 (same as the DDC)
assign audio_i2s_clk        = clk1; // Audio I2S clock is CLK1 (same as the DDC)
assign audio_i2s_mclk       = clk3; // Audio I2S master clock is CLK4
assign qspi_mem_clk         = clk2; // QSPI memory clock is CLK1
assign irq_clk              = clk2; // IRQ clock is CLK2
assign led_clk              = clk2; // LED clock is CLK2
assign cntrl_spi_clk        = clk2; // Control SPI interface clock is CLK2
/// Clocks ///

/// Resets ///
// Inputs
wire nrst;

assign nrst = RESETn;

// Reset tree
reg  [3:0] porst_pipe = 4'b1111;
wire       porst;
reg  [3:0] extrst_pipe = 4'b1111;
wire       extrst;

assign porst  = (|porst_pipe); // Power-on reset
assign extrst = (|extrst_pipe) | porst; // External pin reset

// Module reset lines
wire adc_dpram_rst;
reg  adc_dpram_soft_rst; // Controlled by host via SPI
wire adc_rst;
reg  adc_soft_rst; // Controlled by host via SPI
wire ddc_rst;
reg  ddc_soft_rst; // Controlled by host via SPI
wire dac_rst;
reg  dac_soft_rst; // Controlled by host via SPI
wire bb_i2s_rst;
reg  bb_i2s_soft_rst; // Controlled by host via SPI
wire audio_i2s_rst;
reg  audio_i2s_soft_rst; // Controlled by host via SPI
wire qspi_mem_rst;
reg  qspi_mem_soft_rst; // Controlled by host via SPI
wire led_rst;
reg  led_soft_rst; // Controlled by host via SPI
wire irq_rst;
wire cntrl_spi_rst;

assign adc_dpram_rst = extrst | adc_dpram_soft_rst; // ADC DP RAM is reset by external pin and software
assign adc_rst       = extrst | adc_soft_rst; // ADC is reset by external pin and software
assign dac_rst       = extrst | dac_soft_rst; // DAC is reset by external pin and software
assign ddc_rst       = extrst | ddc_soft_rst; // DDC is reset by external pin and software
assign bb_i2s_rst    = extrst | bb_i2s_soft_rst; // Baseband I2S is reset by external pin and software
assign audio_i2s_rst = extrst | audio_i2s_soft_rst; // Audio I2S is reset by external pin and software
assign qspi_mem_rst  = extrst | qspi_mem_soft_rst; // QSPI memory is reset by external pin and software
assign led_rst       = extrst | led_soft_rst; // LED driver is reset by external pin and software
assign irq_rst       = extrst; // IRQ is reset by external pin
assign cntrl_spi_rst = extrst; // Control SPI interface is reset by external pin

always @(posedge rst_clk)
    begin
        porst_pipe <= {porst_pipe[2:0], 1'b0};
        extrst_pipe <= {extrst_pipe[2:0], !nrst};
    end
/// Resets ///

/// ADC buffer dual-port RAM ///
// Config
localparam ADC_DPRAM_SIZE = 12; // 2 ^ 12 = 4096 (4K samples)

// Inputs
reg  [ADC_DPRAM_SIZE - 1:0] adc_dpram_rd_addr; // Controlled by host via SPI
reg  [ADC_DPRAM_SIZE - 1:0] adc_dpram_wr_addr;
reg  [16:0]                 adc_dpram_data_in;
wire [16:0]                 adc_dpram_data_out; // Controlled by host via SPI
reg                         adc_dpram_wr_req; // Controlled by host via SPI
reg                         adc_dpram_rd_addr_inc; // Controlled by host via SPI
reg                         adc_dpram_wr_en;

// Module
dpram #(
    .ASZ(ADC_DPRAM_SIZE),
    .DSZ(17)
)
adc_dpram
(
    .rd_clk(adc_dpram_rd_clk),
    .wr_clk(adc_dpram_wr_clk),
    .rd_addr(adc_dpram_rd_addr),
    .wr_addr(adc_dpram_wr_addr),
    .data_in(adc_dpram_data_in),
    .data_out(adc_dpram_data_out),
    .wr_en(adc_dpram_wr_en)
);

always @(posedge adc_dpram_wr_clk)
    begin
        if(adc_dpram_rst)
            begin
                adc_dpram_wr_addr <= {ADC_DPRAM_SIZE{1'b0}};
                adc_dpram_wr_en <= 1'b0;
            end
        else
            begin
                if(!adc_dpram_wr_en)
                    begin
                        if(adc_dpram_wr_req)
                            adc_dpram_wr_en <= 1'b1;

                        adc_dpram_wr_addr <= {ADC_DPRAM_SIZE{1'b0}};
                    end
                else
                    begin
                        if(adc_dpram_wr_addr == ((1 << ADC_DPRAM_SIZE) - 1))
                            adc_dpram_wr_en <= 1'b0;

                        adc_dpram_wr_addr <= adc_dpram_wr_addr + 1;
                    end
            end
    end
/// ADC buffer dual-port RAM ///

/// ADC Interface ///
// Inputs
reg  [15:0] adc_data;
wire [15:0] adc_data_in;
reg         adc_of;
wire        adc_of_in;

assign ADC_CLK = adc_clk && !adc_rst;
assign ADC_D0 = adc_data_in[0];
assign ADC_D1 = adc_data_in[1];
assign ADC_D2 = adc_data_in[2];
assign ADC_D3 = adc_data_in[3];
assign ADC_D4 = adc_data_in[4];
assign ADC_D5 = adc_data_in[5];
assign ADC_D6 = adc_data_in[6];
assign ADC_D7 = adc_data_in[7];
assign ADC_D8 = adc_data_in[8];
assign ADC_D9 = adc_data_in[9];
assign ADC_D10 = adc_data_in[10];
assign ADC_D11 = adc_data_in[11];
assign ADC_D12 = adc_data_in[12];
assign ADC_D13 = adc_data_in[13];
assign ADC_D14 = adc_data_in[14];
assign ADC_D15 = adc_data_in[15];
assign ADC_OF = adc_of_in;
assign ADC_OEn = adc_rst;

always @(posedge adc_clk)
    begin
        if(adc_rst)
            begin
                adc_data <= 16'h00000;
                adc_of <= 1'b0;
                adc_dpram_data_in <= 17'h00000;
            end
        else
            begin
                adc_data <= adc_data_in;
                adc_of <= adc_of_in;
                adc_dpram_data_in <= {adc_of_in, adc_data_in};
            end
    end
/// ADC Interface ///

/// Digital down-converter ///
// Inputs
wire signed [15:0] ddc_i;
wire signed [15:0] ddc_q;
reg         [25:0] ddc_lo_freq; // Controlled by host via SPI
wire               ddc_valid;
reg                ddc_lo_ns_en; // Controlled by host via SPI
reg                ddc_iq_swap; // Controlled by host via SPI

// Module
ddc adc_ddc
(
    .clk(ddc_clk),
    .reset(ddc_rst),
    .in(adc_data),
    .lo_freq(ddc_lo_freq),
    .lo_ns_en(ddc_lo_ns_en),
    .iq_swap(ddc_iq_swap),
    .out_valid(ddc_valid),
    .out_i(ddc_i),
    .out_q(ddc_q)
);
/// Digital down-converter ///

/// DAC Interface ///
// Inputs
reg  [13:0] dac_data_pos;
reg  [13:0] dac_data_neg;

assign DAC_CLK = dac_clk && !dac_rst;

SB_IO #(
    .PIN_TYPE(6'b0100_00),
    .PULLUP(1'b0)
)
dac_data [13:0]
(
    .PACKAGE_PIN({DAC_D13, DAC_D12, DAC_D11, DAC_D10, DAC_D9, DAC_D8, DAC_D7, DAC_D6, DAC_D5, DAC_D4, DAC_D3, DAC_D2, DAC_D1, DAC_D0}),
    .OUTPUT_CLK(dac_clk),
    .D_OUT_0(dac_data_pos),
    .D_OUT_1(dac_data_neg)
);

// Test Sine wave samples
reg signed [15:0] dac_test_rom [0:31];
reg        [4:0]  dac_test_rom_rd_addr;

initial
    $readmemh("./src/dac_sine_test_lut.memh", dac_test_rom);

// TODO: DAC controller

always @(posedge dac_clk)
    begin
        if(dac_rst)
            begin
                dac_data_pos <= 14'h0000; // 2's complement min (14 bit)
                dac_data_neg <= 14'h0000;

                dac_test_rom_rd_addr <= 5'b00000;
            end
        else
            begin
                dac_test_rom_rd_addr <= dac_test_rom_rd_addr + 1;

                dac_data_pos <= dac_test_rom[dac_test_rom_rd_addr + 9][13:0];
                dac_data_neg <= dac_test_rom[dac_test_rom_rd_addr][13:0];
            end
    end
/// DAC Interface ///

/// Baseband I2S ///
// Inputs
wire [15:0] bb_i2s_left_data_out;
wire [15:0] bb_i2s_right_data_out;
reg  [15:0] bb_i2s_left_data_in;
reg  [15:0] bb_i2s_right_data_in;
reg  [2:0]  bb_i2s_clk_sync;
reg  [2:0]  bb_i2s_clk_div;
wire        bb_i2s_bclk;
wire        bb_i2s_lrclk;
wire        bb_i2s_sdout;
wire        bb_i2s_sdin;

assign BB_I2S_DSP_BCLK = bb_i2s_bclk & bb_i2s_clk_sync[2];
assign BB_I2S_DSP_LRCLK = bb_i2s_lrclk;
assign BB_I2S_DSP_SDIN = bb_i2s_sdout;
assign BB_I2S_DSP_SDOUT = bb_i2s_sdin;

assign bb_i2s_bclk = bb_i2s_clk_div[2]; // Bit clock = (ADC_CLK / CIC_DEC / FIR_DEC) * I2S_WS * 2 = ADC_CLK / 8

// Clock divider and data synchronizer
always @(posedge bb_i2s_clk)
    begin
        if(bb_i2s_rst)
            begin
                bb_i2s_clk_div <= 3'b000;
                bb_i2s_clk_sync <= 3'b000;
            end
        else
            begin
                if(!bb_i2s_clk_sync[2])
                    begin
                        bb_i2s_clk_sync <= {bb_i2s_clk_sync[1:0], ddc_valid};

                        if(ddc_valid && bb_i2s_clk_sync == 3'b000)
                            bb_i2s_clk_div <= 3'b100;
                        else
                            bb_i2s_clk_div <= 3'b000;
                    end
                else
                    begin
                        bb_i2s_clk_div <= bb_i2s_clk_div + 1;
                    end
            end
    end

// Module
i2s_master bb_i2s
(
    .reset(!bb_i2s_clk_sync[2]),
    .i2s_bclk(bb_i2s_bclk),
    .i2s_lrclk(bb_i2s_lrclk),
    .i2s_sdout(bb_i2s_sdout),
    .i2s_sdin(bb_i2s_sdin),
    .left_data_out(bb_i2s_left_data_out),
    .right_data_out(bb_i2s_right_data_out),
    .left_data_in(bb_i2s_left_data_in),
    .right_data_in(bb_i2s_right_data_in)
);

always @(posedge bb_i2s_clk)
    begin
        if(bb_i2s_rst)
            begin
                bb_i2s_left_data_in <= 16'h0000;
                bb_i2s_right_data_in <= 16'h0000;
            end
        else
            begin
                if(ddc_valid)
                    begin
                        bb_i2s_left_data_in <= ddc_i;
                        bb_i2s_right_data_in <= ddc_q;
                    end
            end
    end
/// Baseband I2S ///

/// Audio I2S Clock generation ///
// Inputs
wire [15:0] audio_i2s_left_data_out;
wire [15:0] audio_i2s_right_data_out;
reg  [15:0] audio_i2s_left_data_in;
reg  [15:0] audio_i2s_right_data_in;
reg  [9:0]  audio_i2s_clk_div;
wire        audio_i2s_bclk;
wire        audio_i2s_lrclk;
wire        audio_i2s_sdout;
reg         audio_i2s_sdin;

assign audio_i2s_bclk = audio_i2s_clk_div[4]; // Bit clock = (ADC_CLK / CIC_DEC / FIR_DEC / 4) * I2S_WS * 2 = ADC_CLK / 32

// Clock divider
always @(posedge audio_i2s_clk)
    audio_i2s_clk_div <= audio_i2s_clk_div + 1;

// Module
i2s_master audio_i2s
(
    .reset(audio_i2s_rst),
    .i2s_bclk(audio_i2s_bclk),
    .i2s_lrclk(audio_i2s_lrclk),
    .i2s_sdout(audio_i2s_sdout),
    .i2s_sdin(audio_i2s_sdin),
    .left_data_out(audio_i2s_left_data_out),
    .right_data_out(audio_i2s_right_data_out),
    .left_data_in(audio_i2s_left_data_in),
    .right_data_in(audio_i2s_right_data_in)
);

always @(posedge audio_i2s_clk)
    begin
        if(audio_i2s_rst)
            begin
                audio_i2s_left_data_in <= 16'h0000;
                audio_i2s_right_data_in <= 16'h0000;
            end
        else
            begin
            end
    end
/// Audio I2S Clock generation ///

/// Audio I2S multiplexer ///
// Inputs
wire audio_i2s_dsp_clk_oe;
reg  audio_i2s_dsp_mclk_out;
reg  audio_i2s_dsp_bclk_out;
reg  audio_i2s_dsp_lrclk_out;
reg  audio_i2s_dsp_mclk_in;
reg  audio_i2s_dsp_bclk_in;
reg  audio_i2s_dsp_lrclk_in;
reg  audio_i2s_dsp_sdout;
reg  audio_i2s_dsp_sdin;
reg  audio_i2s_codec_mclk_out;
reg  audio_i2s_codec_bclk_out;
reg  audio_i2s_codec_lrclk_out;
reg  audio_i2s_codec_sdout;
reg  audio_i2s_codec_sdin;
reg  audio_i2s_brg_mclk_in;
reg  audio_i2s_brg_bclk_in;
reg  audio_i2s_brg_lrclk_in;
reg  audio_i2s_brg_sdout;
reg  audio_i2s_brg_sdin;

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
audio_i2s_dsp_mclk
(
    .PACKAGE_PIN(I2S_DSP_MCLK),
    .OUTPUT_ENABLE(audio_i2s_dsp_clk_oe),
    .D_OUT_0(audio_i2s_dsp_mclk_out),
    .D_IN_0(audio_i2s_dsp_mclk_in)
);

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
audio_i2s_dsp_bclk
(
    .PACKAGE_PIN(I2S_DSP_BCLK),
    .OUTPUT_ENABLE(audio_i2s_dsp_clk_oe),
    .D_OUT_0(audio_i2s_dsp_bclk_out),
    .D_IN_0(audio_i2s_dsp_bclk_in)
);

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
audio_i2s_dsp_lrclk
(
    .PACKAGE_PIN(I2S_DSP_LRCLK),
    .OUTPUT_ENABLE(audio_i2s_dsp_clk_oe),
    .D_OUT_0(audio_i2s_dsp_lrclk_out),
    .D_IN_0(audio_i2s_dsp_lrclk_in)
);

assign I2S_DSP_SDOUT = audio_i2s_dsp_sdout;
assign I2S_DSP_SDIN = audio_i2s_dsp_sdin;
assign I2S_CODEC_MCLK = audio_i2s_codec_mclk_out;
assign I2S_CODEC_BCLK = audio_i2s_codec_bclk_out;
assign I2S_CODEC_LRCLK = audio_i2s_codec_lrclk_out;
assign I2S_CODEC_SDOUT = audio_i2s_codec_sdout;
assign I2S_CODEC_SDIN = audio_i2s_codec_sdin;
assign I2S_BRG_MCLK = audio_i2s_brg_mclk_in;
assign I2S_BRG_BCLK = audio_i2s_brg_bclk_in;
assign I2S_BRG_LRCLK = audio_i2s_brg_lrclk_in;
assign I2S_BRG_SDOUT = audio_i2s_brg_sdout;
assign I2S_BRG_SDIN = audio_i2s_brg_sdin;

// Clock mux
reg  [1:0] audio_i2s_dsp_clk_sel; // Controlled by host via SPI
reg  [1:0] audio_i2s_codec_clk_sel; // Controlled by host via SPI

assign audio_i2s_dsp_clk_oe = audio_i2s_dsp_clk_sel[1];

always @(*)
    begin
        case(audio_i2s_dsp_clk_sel[0])
            1'b0:
                begin
                    audio_i2s_dsp_mclk_out <= audio_i2s_brg_mclk_in;
                    audio_i2s_dsp_bclk_out <= audio_i2s_brg_bclk_in;
                    audio_i2s_dsp_lrclk_out <= audio_i2s_brg_lrclk_in;
                end
            1'b1:
                begin
                    audio_i2s_dsp_mclk_out <= audio_i2s_mclk & !audio_i2s_rst;
                    audio_i2s_dsp_bclk_out <= audio_i2s_bclk & !audio_i2s_rst;
                    audio_i2s_dsp_lrclk_out <= audio_i2s_lrclk;
                end
        endcase
    end

always @(*)
    begin
        case(audio_i2s_codec_clk_sel)
            2'b00:
                begin
                    audio_i2s_codec_mclk_out <= audio_i2s_dsp_mclk_in;
                    audio_i2s_codec_bclk_out <= audio_i2s_dsp_bclk_in;
                    audio_i2s_codec_lrclk_out <= audio_i2s_dsp_lrclk_in;
                end
            2'b01:
                begin
                    audio_i2s_codec_mclk_out <= 1'b0;
                    audio_i2s_codec_bclk_out <= 1'b0;
                    audio_i2s_codec_lrclk_out <= 1'b0;
                end
            2'b10:
                begin
                    audio_i2s_codec_mclk_out <= audio_i2s_brg_mclk_in;
                    audio_i2s_codec_bclk_out <= audio_i2s_brg_bclk_in;
                    audio_i2s_codec_lrclk_out <= audio_i2s_brg_lrclk_in;
                end
            2'b11:
                begin
                    audio_i2s_codec_mclk_out <= audio_i2s_mclk & !audio_i2s_rst;
                    audio_i2s_codec_bclk_out <= audio_i2s_bclk & !audio_i2s_rst;
                    audio_i2s_codec_lrclk_out <= audio_i2s_lrclk;
                end
        endcase
    end

// Data mux
reg  [1:0] audio_i2s_dsp_sdin_sel; // Controlled by host via SPI
reg  [1:0] audio_i2s_codec_sdin_sel; // Controlled by host via SPI
reg  [1:0] audio_i2s_brg_sdin_sel; // Controlled by host via SPI
reg  [1:0] audio_i2s_sdin_sel; // Controlled by host via SPI

always @(*)
    begin
        case(audio_i2s_dsp_sdin_sel)
            2'b00:
                audio_i2s_dsp_sdin <= audio_i2s_dsp_sdout;
            2'b01:
                audio_i2s_dsp_sdin <= audio_i2s_codec_sdout;
            2'b10:
                audio_i2s_dsp_sdin <= audio_i2s_brg_sdout;
            2'b11:
                audio_i2s_dsp_sdin <= audio_i2s_sdout;
        endcase
    end

always @(*)
    begin
        case(audio_i2s_codec_sdin_sel)
            2'b00:
                audio_i2s_codec_sdin <= audio_i2s_dsp_sdout;
            2'b01:
                audio_i2s_codec_sdin <= audio_i2s_codec_sdout;
            2'b10:
                audio_i2s_codec_sdin <= audio_i2s_brg_sdout;
            2'b11:
                audio_i2s_codec_sdin <= audio_i2s_sdout;
        endcase
    end

always @(*)
    begin
        case(audio_i2s_brg_sdin_sel)
            2'b00:
                audio_i2s_brg_sdin <= audio_i2s_dsp_sdout;
            2'b01:
                audio_i2s_brg_sdin <= audio_i2s_codec_sdout;
            2'b10:
                audio_i2s_brg_sdin <= audio_i2s_brg_sdout;
            2'b11:
                audio_i2s_brg_sdin <= audio_i2s_sdout;
        endcase
    end

always @(*)
    begin
        case(audio_i2s_sdin_sel)
            2'b00:
                audio_i2s_sdin <= audio_i2s_dsp_sdout;
            2'b01:
                audio_i2s_sdin <= audio_i2s_codec_sdout;
            2'b10:
                audio_i2s_sdin <= audio_i2s_brg_sdout;
            2'b11:
                audio_i2s_sdin <= audio_i2s_sdout;
        endcase
    end
/// Audio I2S multiplexer ///

/// QSPI Memory interface ///
// Inputs
reg  [21:0] qspi_mem_start_addr; // Controlled by host via SPI
reg  [21:0] qspi_mem_end_addr; // Controlled by host via SPI
reg  [21:0] qspi_mem_addr;
wire [15:0] qspi_mem_data_out;
reg  [2:0]  qspi_mem_data_in_sel; // Controlled by host via SPI
reg  [15:0] qspi_mem_data_in;
wire        qspi_mem_wr_valid;
reg         qspi_mem_wr_valid_ed;
wire        qspi_mem_rd_valid;
reg         qspi_mem_rd_valid_ed;
reg         qspi_mem_wr_req; // Controlled by host via SPI
reg         qspi_mem_wr_req_q;
reg         qspi_mem_rd_req; // Controlled by host via SPI
reg         qspi_mem_rd_req_q;
reg  [6:0]  qspi_mem_clk_div;
wire        qspi_mem_sck;
wire        qspi_mem_sdata_oe;
wire [3:0]  qspi_mem_sdata_out;
wire [3:0]  qspi_mem_sdata_in;
wire        qspi_mem_ncs;

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
qspi_mem_sdata [3:0]
(
    .PACKAGE_PIN({QSPI_MEM_IO3, QSPI_MEM_IO2, QSPI_MEM_IO1, QSPI_MEM_IO0}),
    .OUTPUT_ENABLE(qspi_mem_sdata_oe),
    .D_OUT_0(qspi_mem_sdata_out),
    .D_IN_0(qspi_mem_sdata_in)
);

assign QSPI_MEM_SCK = qspi_mem_sck & !qspi_mem_ncs & !qspi_mem_rst;
assign QSPI_MEM_CSn = qspi_mem_ncs | qspi_mem_rst;

assign qspi_mem_sck = qspi_mem_clk_div[6]; // Serial clock = ((ADC_CLK / CIC_DEC / FIR_DEC / 4) * I2S_WS * 2) / 4 = ADC_CLK / 128

// Clock divider
always @(posedge qspi_mem_clk)
    qspi_mem_clk_div <= qspi_mem_clk_div + 1;

// Module
qspi_master qspi_mem
(
    .clk(qspi_mem_clk),
    .reset(qspi_mem_rst),
    .qspi_sck(qspi_mem_sck),
    .qspi_data_out_en(qspi_mem_sdata_oe),
    .qspi_data_out(qspi_mem_sdata_out),
    .qspi_data_in(qspi_mem_sdata_in),
    .qspi_ncs(qspi_mem_ncs),
    .addr(qspi_mem_addr),
    .data_out(qspi_mem_data_out),
    .data_in(qspi_mem_data_in),
    .wr_valid(qspi_mem_wr_valid),
    .rd_valid(qspi_mem_rd_valid),
    .wr_req(qspi_mem_wr_req_q),
    .rd_req(qspi_mem_rd_req_q)
);

always @(posedge qspi_mem_clk)
    begin
        if(qspi_mem_rst)
            begin
                qspi_mem_addr <= 22'h000000;
                qspi_mem_data_in <= 16'h0000;

                qspi_mem_wr_valid_ed <= 1'b0;
                qspi_mem_rd_valid_ed <= 1'b0;
                qspi_mem_wr_req_q <= 1'b0;
                qspi_mem_rd_req_q <= 1'b0;
            end
        else
            begin
                qspi_mem_wr_valid_ed <= qspi_mem_wr_valid;
                qspi_mem_rd_valid_ed <= qspi_mem_rd_valid;

                if(qspi_mem_rd_req && !qspi_mem_rd_req_q && !qspi_mem_wr_req && !qspi_mem_wr_req_q)
                    begin
                        qspi_mem_rd_req_q <= 1'b1;

                        qspi_mem_addr <= qspi_mem_start_addr;
                    end

                if(qspi_mem_wr_req && !qspi_mem_wr_req_q && !qspi_mem_rd_req && !qspi_mem_rd_req_q)
                    begin
                        qspi_mem_wr_req_q <= 1'b1;

                        qspi_mem_addr <= qspi_mem_start_addr;
                    end

                if((qspi_mem_wr_valid_ed && !qspi_mem_wr_valid) || (!qspi_mem_rd_valid_ed && qspi_mem_rd_valid))
                    qspi_mem_addr <= qspi_mem_addr + 2;

                if(!qspi_mem_wr_valid_ed && qspi_mem_wr_valid)
                    begin
                        case(qspi_mem_data_in_sel)
                            3'b000:
                                begin
                                    qspi_mem_data_in <= audio_i2s_left_data_out;
                                end
                            3'b001:
                                begin
                                    qspi_mem_data_in <= audio_i2s_right_data_out;
                                end
                            default:
                                begin
                                    qspi_mem_data_in <= 16'hA567;
                                end
                        endcase
                    end

                if(qspi_mem_addr[21:1] == qspi_mem_end_addr[21:1])
                    begin
                        qspi_mem_rd_req_q <= 1'b0;
                        qspi_mem_wr_req_q <= 1'b0;
                    end
            end
    end
/// QSPI Memory interface ///

/// LED ///
// Inputs
reg [11:0] led_cnt;
reg [11:0] led_duty [0:2]; // Controlled by host via SPI
reg [2:0]  led_en; // Controlled by host via SPI
reg [2:0]  led_status;

assign RED_LED = led_status[0] & !led_rst & led_en[0];
assign GREEN_LED = led_status[1] & !led_rst & led_en[1];
assign BLUE_LED = led_status[2] & !led_rst & led_en[2];

always @(posedge led_clk)
    begin
        if(led_rst)
            begin
                led_cnt <= 12'h000;
            end
        else
            begin
                led_cnt <= led_cnt + 1;
            end
    end

generate
    genvar i;

    for(i = 0; i < 3; i = i + 1)
        begin
            always @(posedge led_clk)
                begin
                    if(!led_duty[i])
                        begin
                            led_status[i] <= 1'b0;
                        end
                    else
                        begin
                            if(led_cnt == led_duty[i])
                                led_status[i] <= 1'b0;

                            if(!led_cnt)
                                led_status[i] <= 1'b1;
                        end
                end
        end
endgenerate
/// LED ///

/// Interrupt Request ///
// Config
localparam IRQ_COUNT = 8;

// Inputs
wire [IRQ_COUNT - 1:0] irq_lines;
wire [IRQ_COUNT - 1:0] irq_lines_q;
reg  [IRQ_COUNT - 1:0] irq_lines_ed;
reg  [IRQ_COUNT - 1:0] irq_state;
reg  [IRQ_COUNT - 1:0] irq_mask [0:1]; // Controlled by host via SPI
reg  [IRQ_COUNT - 1:0] irq_clear; // Controlled by host via SPI
reg  [IRQ_COUNT - 1:0] irq_set; // Controlled by host via SPI

assign SMC_IRQn = !(|(irq_state & irq_mask[0]));
assign DSP_IRQn = !(|(irq_state & irq_mask[1]));

// IRQ lines selection
assign irq_lines[0] = adc_dpram_wr_en;
assign irq_lines[1] = !adc_dpram_wr_en;
assign irq_lines[2] = ddc_valid;
assign irq_lines[3] = adc_of;
assign irq_lines[4] = qspi_mem_wr_valid;
assign irq_lines[5] = qspi_mem_rd_valid;
assign irq_lines[6] = 1'b0;
assign irq_lines[7] = 1'b0;

// Synchronizer
synchronizer irq_lines_sync [IRQ_COUNT - 1:0]
(
    .clk(irq_clk),
    .in(irq_lines),
    .out(irq_lines_q)
);

generate
    genvar i;

    for(i = 0; i < IRQ_COUNT; i = i + 1)
        begin
            always @(posedge irq_clk)
                begin
                    if(irq_rst)
                        begin
                            irq_state[i] <= 1'b0;
                            irq_lines_ed[i] <= 1'b0;
                        end
                    else
                        begin
                            irq_lines_ed[i] <= irq_lines_q[i];

                            if(irq_clear[i])
                                irq_state[i] <= 1'b0;

                            if((!irq_lines_ed[i] && irq_lines_q[i]) || irq_set[i])
                                irq_state[i] <= 1'b1;
                        end
                end
        end
endgenerate
/// Interrupt Request ///

/// Control SPI slave interface ///
// Inputs
wire [6:0]  cntrl_spi_addr;
wire [31:0] cntrl_spi_data_out;
reg  [31:0] cntrl_spi_data_in;
wire        cntrl_spi_wr_en;
wire        cntrl_spi_rd_en;
wire        cntrl_spi_sck;
wire        cntrl_spi_mosi;
wire        cntrl_spi_miso;
wire        cntrl_spi_ncs;

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
cntrl_spi_miso_od
(
    .PACKAGE_PIN(SPI_MISO),
    .OUTPUT_ENABLE(!cntrl_spi_ncs),
    .D_OUT_0(cntrl_spi_miso)
);

assign SPI_SCK = cntrl_spi_sck;
assign SPI_MOSI = cntrl_spi_mosi;
assign SPI_CSn = cntrl_spi_ncs;

// Module
spi_slave cntrl_spi
(
    .clk(cntrl_spi_clk),
    .reset(cntrl_spi_rst),
    .spi_sck(cntrl_spi_sck),
    .spi_mosi(cntrl_spi_mosi),
    .spi_miso(cntrl_spi_miso),
    .spi_ncs(cntrl_spi_ncs),
    .addr(cntrl_spi_addr),
    .data_out(cntrl_spi_data_out),
    .data_in(cntrl_spi_data_in),
    .wr_en(cntrl_spi_wr_en),
    .rd_en(cntrl_spi_rd_en)
);

localparam CNTRL_SPI_REG_ID                     = 7'h00;
localparam CNTRL_SPI_REG_RST_CNTRL              = 7'h01;
localparam CNTRL_SPI_REG_IRQ_CNTRL_STATUS       = 7'h02;
localparam CNTRL_SPI_REG_LED_CNTRL              = 7'h10;
localparam CNTRL_SPI_REG_RED_LED_DUTY           = 7'h11;
localparam CNTRL_SPI_REG_GREEN_LED_DUTY         = 7'h12;
localparam CNTRL_SPI_REG_BLUE_LED_DUTY          = 7'h13;
localparam CNTRL_SPI_REG_ADC_DPRAM_CNTRL        = 7'h20;
localparam CNTRL_SPI_REG_ADC_DPRAM_ADDR         = 7'h21;
localparam CNTRL_SPI_REG_ADC_DPRAM_DATA         = 7'h22;
localparam CNTRL_SPI_REG_DDC_CNTRL              = 7'h30;
localparam CNTRL_SPI_REG_DDC_LO_FREQ            = 7'h31;
localparam CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL      = 7'h40;
localparam CNTRL_SPI_REG_QSPI_MEM_CNTRL         = 7'h50;
localparam CNTRL_SPI_REG_QSPI_MEM_ADDR          = 7'h51;
localparam CNTRL_SPI_REG_QSPI_MEM_START_ADDR    = 7'h52;
localparam CNTRL_SPI_REG_QSPI_MEM_END_ADDR      = 7'h53;
localparam CNTRL_SPI_REG_QSPI_MEM_DATA          = 7'h54;

always @(posedge cntrl_spi_clk)
    begin
        if(cntrl_spi_rst) // Register reset values
            begin
                adc_dpram_soft_rst <= 1'b1;
                adc_soft_rst <= 1'b1;
                dac_soft_rst <= 1'b1;
                ddc_soft_rst <= 1'b1;
                bb_i2s_soft_rst <= 1'b1;
                audio_i2s_soft_rst <= 1'b1;
                qspi_mem_soft_rst <= 1'b1;
                led_soft_rst <= 1'b1;

                irq_mask[0] <= {IRQ_COUNT{1'b0}};
                irq_mask[1] <= {IRQ_COUNT{1'b0}};
                irq_clear <= {IRQ_COUNT{1'b0}};
                irq_set <= {IRQ_COUNT{1'b0}};

                led_en <= 3'b000;
                led_duty[0] <= 12'h000;
                led_duty[1] <= 12'h000;
                led_duty[2] <= 12'h000;

                adc_dpram_wr_req <= 1'b0;
                adc_dpram_rd_addr_inc <= 1'b0;

                adc_dpram_rd_addr <= {ADC_DPRAM_SIZE{1'b0}};

                ddc_lo_ns_en <= 1'b0;
                ddc_iq_swap <= 1'b0;

                ddc_lo_freq <= 26'h0000000;

                audio_i2s_dsp_clk_sel <= 2'b00;
                audio_i2s_codec_clk_sel <= 2'b01;
                audio_i2s_dsp_sdin_sel <= 2'b00;
                audio_i2s_codec_sdin_sel <= 2'b01;
                audio_i2s_brg_sdin_sel <= 2'b10;
                audio_i2s_sdin_sel <= 2'b11;

                qspi_mem_wr_req <= 1'b0;
                qspi_mem_rd_req <= 1'b0;
                qspi_mem_data_in_sel <= 3'b000;

                qspi_mem_start_addr <= 22'h000000;

                qspi_mem_end_addr <= 22'h000000;
            end
        else
            begin
                irq_clear <= irq_state & irq_clear; // Remove IRQ clear requests on lines that are already cleared
                irq_set <= ~irq_state & irq_set; // Remove IRQ set requests on lines that are already set

                adc_dpram_wr_req <= ~adc_dpram_wr_en & adc_dpram_wr_req; // Remove ADC DPRAM write request if the write enable strobe is already set

                qspi_mem_wr_req <= ~qspi_mem_wr_req_q & qspi_mem_wr_req; // Remove QSPI write request if the qualified request is already set
                qspi_mem_rd_req <= ~qspi_mem_rd_req_q & qspi_mem_rd_req; // Remove QSPI read request if the qualified request is already set

                if(cntrl_spi_wr_en) // Synchronous writes
                    begin
                        case(cntrl_spi_addr)
                            CNTRL_SPI_REG_ID:
                                begin
                                    // Nothing to do
                                end
                            CNTRL_SPI_REG_RST_CNTRL:
                                begin
                                    adc_dpram_soft_rst <= cntrl_spi_data_out[0];
                                    adc_soft_rst <= cntrl_spi_data_out[1];
                                    ddc_soft_rst <= cntrl_spi_data_out[2];
                                    dac_soft_rst <= cntrl_spi_data_out[3];
                                    bb_i2s_soft_rst <= cntrl_spi_data_out[4];
                                    audio_i2s_soft_rst <= cntrl_spi_data_out[5];
                                    qspi_mem_soft_rst <= cntrl_spi_data_out[6];
                                    led_soft_rst <= cntrl_spi_data_out[7];
                                end
                            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                                begin
                                    irq_mask[0] <= cntrl_spi_data_out[7:0];
                                    irq_mask[1] <= cntrl_spi_data_out[15:8];
                                    irq_clear <= cntrl_spi_data_out[23:16];
                                    irq_set <= cntrl_spi_data_out[31:24];
                                end
                            CNTRL_SPI_REG_LED_CNTRL:
                                begin
                                    led_en <= cntrl_spi_data_out[2:0];
                                end
                            CNTRL_SPI_REG_RED_LED_DUTY:
                                begin
                                    led_duty[0] <= cntrl_spi_data_out[11:0];
                                end
                            CNTRL_SPI_REG_GREEN_LED_DUTY:
                                begin
                                    led_duty[1] <= cntrl_spi_data_out[11:0];
                                end
                            CNTRL_SPI_REG_BLUE_LED_DUTY:
                                begin
                                    led_duty[2] <= cntrl_spi_data_out[11:0];
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                                begin
                                    adc_dpram_wr_req <= cntrl_spi_data_out[0];
                                    adc_dpram_rd_addr_inc <= cntrl_spi_data_out[2];
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_ADDR:
                                begin
                                    adc_dpram_rd_addr <= cntrl_spi_data_out[ADC_DPRAM_SIZE - 1:0];
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_DATA:
                                begin
                                    // Nothing to do
                                end
                            CNTRL_SPI_REG_DDC_CNTRL:
                                begin
                                    ddc_lo_ns_en <= cntrl_spi_data_out[0];
                                    ddc_iq_swap <= cntrl_spi_data_out[1];
                                end
                            CNTRL_SPI_REG_DDC_LO_FREQ:
                                begin
                                    ddc_lo_freq <= cntrl_spi_data_out[25:0];
                                end
                            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                                begin
                                    audio_i2s_dsp_clk_sel <= cntrl_spi_data_out[1:0];
                                    audio_i2s_codec_clk_sel <= cntrl_spi_data_out[3:2];
                                    audio_i2s_dsp_sdin_sel <= cntrl_spi_data_out[9:8];
                                    audio_i2s_codec_sdin_sel <= cntrl_spi_data_out[11:10];
                                    audio_i2s_brg_sdin_sel <= cntrl_spi_data_out[13:12];
                                    audio_i2s_sdin_sel <= cntrl_spi_data_out[15:14];
                                end
                            CNTRL_SPI_REG_QSPI_MEM_CNTRL:
                                begin
                                    qspi_mem_wr_req <= cntrl_spi_data_out[0];
                                    qspi_mem_rd_req <= cntrl_spi_data_out[2];
                                    qspi_mem_data_in_sel <= cntrl_spi_data_out[10:8];
                                end
                            CNTRL_SPI_REG_QSPI_MEM_ADDR:
                                begin
                                    // Nothing to do
                                end
                            CNTRL_SPI_REG_QSPI_MEM_START_ADDR:
                                begin
                                    qspi_mem_start_addr <= cntrl_spi_data_out[21:0];
                                end
                            CNTRL_SPI_REG_QSPI_MEM_END_ADDR:
                                begin
                                    qspi_mem_end_addr <= cntrl_spi_data_out[21:0];
                                end
                            CNTRL_SPI_REG_QSPI_MEM_DATA:
                                begin
                                    // Nothing to do
                                end
                        endcase
                    end

                if(cntrl_spi_rd_en) // Synchronous reads
                    begin
                        case(cntrl_spi_addr)
                            CNTRL_SPI_REG_ID:
                                begin
                                    cntrl_spi_data_in <= {16'hDADC, 16'h0001};
                                end
                            CNTRL_SPI_REG_RST_CNTRL:
                                begin
                                    cntrl_spi_data_in <= {24'd0, led_soft_rst, qspi_mem_soft_rst, audio_i2s_soft_rst, bb_i2s_soft_rst, dac_soft_rst, ddc_soft_rst, adc_soft_rst, adc_dpram_soft_rst};
                                end
                            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                                begin
                                    cntrl_spi_data_in <= {8'd0, irq_state, irq_mask[1], irq_mask[0]};
                                end
                            CNTRL_SPI_REG_LED_CNTRL:
                                begin
                                    cntrl_spi_data_in <= {29'd0, led_en};
                                end
                            CNTRL_SPI_REG_RED_LED_DUTY:
                                begin
                                    cntrl_spi_data_in <= {20'd0, led_duty[0]};
                                end
                            CNTRL_SPI_REG_GREEN_LED_DUTY:
                                begin
                                    cntrl_spi_data_in <= {20'd0, led_duty[1]};
                                end
                            CNTRL_SPI_REG_BLUE_LED_DUTY:
                                begin
                                    cntrl_spi_data_in <= {20'd0, led_duty[2]};
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                                begin
                                    cntrl_spi_data_in <= {29'd0, adc_dpram_rd_addr_inc, adc_dpram_wr_en, adc_dpram_wr_req};
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_ADDR:
                                begin
                                    cntrl_spi_data_in <= {{(16 - ADC_DPRAM_SIZE){1'b0}}, adc_dpram_wr_addr, {(16 - ADC_DPRAM_SIZE){1'b0}}, adc_dpram_rd_addr};
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_DATA:
                                begin
                                    cntrl_spi_data_in <= {15'd0, adc_dpram_data_out};

                                    if(adc_dpram_rd_addr_inc)
                                        adc_dpram_rd_addr <= adc_dpram_rd_addr + 1;
                                end
                            CNTRL_SPI_REG_DDC_CNTRL:
                                begin
                                    cntrl_spi_data_in <= {30'd0, ddc_iq_swap, ddc_lo_ns_en};
                                end
                            CNTRL_SPI_REG_DDC_LO_FREQ:
                                begin
                                    cntrl_spi_data_in <= {6'd0, ddc_lo_freq};
                                end
                            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                                begin
                                    cntrl_spi_data_in <= {16'd0, audio_i2s_sdin_sel, audio_i2s_brg_sdin_sel, audio_i2s_codec_sdin_sel, audio_i2s_dsp_sdin_sel, 4'b0000, audio_i2s_codec_clk_sel, audio_i2s_dsp_clk_sel};
                                end
                            CNTRL_SPI_REG_QSPI_MEM_CNTRL:
                                begin
                                    cntrl_spi_data_in <= {21'd0, qspi_mem_data_in_sel, 4'b0000, qspi_mem_rd_req_q, qspi_mem_rd_req, qspi_mem_wr_req_q, qspi_mem_wr_req};
                                end
                            CNTRL_SPI_REG_QSPI_MEM_ADDR:
                                begin
                                    cntrl_spi_data_in <= {10'd0, qspi_mem_addr};
                                end
                            CNTRL_SPI_REG_QSPI_MEM_START_ADDR:
                                begin
                                    cntrl_spi_data_in <= {10'd0, qspi_mem_start_addr};
                                end
                            CNTRL_SPI_REG_QSPI_MEM_END_ADDR:
                                begin
                                    cntrl_spi_data_in <= {10'd0, qspi_mem_end_addr};
                                end
                            CNTRL_SPI_REG_QSPI_MEM_DATA:
                                begin
                                    cntrl_spi_data_in <= {16'd0, qspi_mem_data_out};
                                end
                            default:
                                begin
                                    cntrl_spi_data_in <= 32'h00000000;
                                end
                        endcase
                    end
            end
    end
/// Control SPI slave interface ///

endmodule