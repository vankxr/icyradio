module top
(
    // Clock inputs
    input DDC_CLK,
    input GP_CLK1,
    input GP_CLK2,
    // Reset
    input RESETn,
    // LED
    output LED,
    // Interrupt Request
    output IRQn,
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
    // Control SPI slave
    input SPI_SCK,
    input SPI_MOSI,
    output SPI_MISO,
    input SPI_CSn,
    // Baseband I2S
    output BB_I2S_BCLK,
    output BB_I2S_LRCLK,
    input BB_I2S_MCU_SDOUT,
    output BB_I2S_MCU_SDIN,
    // MCU Audio I2S
    inout I2S_MCU_MCLK,
    inout I2S_MCU_BCLK,
    inout I2S_MCU_LRCLK,
    input I2S_MCU_SDOUT,
    output I2S_MCU_SDIN,
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
wire ddc_clk;
wire gp_clk1;
wire gp_clk2;

assign DDC_CLK = ddc_clk;
assign GP_CLK1 = gp_clk1;
assign GP_CLK2 = gp_clk2;

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
wire adc_clk;
reg  adc_clk_en; // Controlled by host via SPI
wire adc_dpram_clk;
reg  adc_dpram_clk_en; // Controlled by host via SPI
wire irq_clk;
wire led_clk;
wire cntrl_spi_clk;

assign adc_clk = ddc_clk && adc_clk_en; // ADC clock is gated from the DDC
assign adc_dpram_clk = ddc_clk && adc_dpram_clk_en; // ADC DP RAM clock is gated from the DDC
assign irq_clk = gp_clk1; // IRQ clock the general purpose 1 clock
assign led_clk = gp_clk2; // LED clock the general purpose 2 clock
assign cntrl_spi_clk = gp_clk1; // Control SPI interface clock the general purpose 1 clock
/// Clocks ///

/// Resets ///
// Inputs
wire nreset;
reg  soft_reset; // Controlled by host via SPI

assign nreset = RESETn;

// Reset tree
reg  [3:0] porst_pipe = 4'b1111;
wire       porst;
reg  [3:0] extrst_pipe = 4'b1111;
wire       extrst;
reg  [3:0] sftrst_pipe = 4'b1111;
wire       sftrst;

assign porst  = (|porst_pipe); // Power-on reset
assign extrst = (|extrst_pipe) || porst; // External pin reset
assign sftrst = (|sftrst_pipe) || extrst || porst; // Software reset

// Module reset lines
wire ddc_rst;
wire adc_rst;
wire adc_dpram_rst;
wire irq_rst;
wire cntrl_spi_rst;

assign ddc_rst       = sftrst; // DDC is reset by software
assign adc_rst       = extrst; // ADC is reset by external pin
assign adc_dpram_rst = sftrst; // ADC DP RAM is reset by software
assign irq_rst       = extrst; // IRQ is reset by external pin
assign cntrl_spi_rst = extrst; // Control SPI interface is reset by external pin

always @(posedge gp_clk1)
    begin
        porst_pipe <= {porst_pipe[2:0], 1'b0};
        extrst_pipe <= {extrst_pipe[2:0], !nreset};
        sftrst_pipe <= {sftrst_pipe[2:0], soft_reset};
    end
/// Resets ///

/// ADC buffer dual-port RAM ///
localparam ADC_DPRAM_SIZE = 12; // 2 ^ 10 = 1024 (1K samples)

reg  [ADC_DPRAM_SIZE - 1:0]  adc_dpram_rd_addr; // Controlled by host via SPI
reg  [ADC_DPRAM_SIZE - 1:0]  adc_dpram_wr_addr;
reg  [16:0] adc_dpram_data_in;
wire [16:0] adc_dpram_data_out; // Controlled by host via SPI
reg  [2:0]  adc_dpram_trig_sync;
reg         adc_dpram_trig; // Controlled by host via SPI
reg         adc_dpram_rd_addr_inc; // Controlled by host via SPI
reg         adc_dpram_wr_en;

dpram #(
    .ASZ(ADC_DPRAM_SIZE),
    .DSZ(17)
)
adc_dpram
(
    .rd_clk(cntrl_spi_clk),
    .wr_clk(adc_dpram_clk),
    .rd_addr(adc_dpram_rd_addr),
    .wr_addr(adc_dpram_wr_addr),
    .data_in(adc_dpram_data_in),
    .data_out(adc_dpram_data_out),
    .wr_en(adc_dpram_wr_en)
);

always @(posedge adc_dpram_clk)
    begin
        if(adc_dpram_rst)
            begin
                adc_dpram_wr_addr <= {ADC_DPRAM_SIZE{1'b0}};
                adc_dpram_trig_sync <= 3'b000;
                adc_dpram_wr_en <= 1'b0;
            end
        else
            begin
                adc_dpram_trig_sync <= {adc_dpram_trig_sync[1:0], adc_dpram_trig};

                if(!adc_dpram_wr_en)
                    begin
                        if(adc_dpram_trig_sync[2])
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
reg  [15:0] adc_data;
wire [15:0] adc_data_in;
wire        adc_of_in;

assign ADC_CLK = adc_clk;
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
                adc_dpram_data_in <= 17'h00000;
            end
        else
            begin
                adc_data <= adc_data_in;
                adc_dpram_data_in <= {adc_of_in, adc_data_in};
            end
    end
/// ADC Interface ///

/// Digital down-converter ///
wire signed [15:0] ddc_i;
wire signed [15:0] ddc_q;
reg         [25:0] ddc_lo_freq; // Controlled by host via SPI
wire               ddc_valid;
reg                ddc_lo_ns_en; // Controlled by host via SPI

ddc adc_ddc
(
    .clk(ddc_clk),
    .reset(ddc_rst),
    .in(adc_data),
    .lo_freq(ddc_lo_freq),
    .lo_ns_en(ddc_lo_ns_en),
    .out_valid(ddc_valid),
    .out_i(ddc_i),
    .out_q(ddc_q)
);

assign LED = &ddc_i && &ddc_q && ddc_valid; // TODO: Remove
/// Digital down-converter ///

/// Baseband I2S ///
/// Baseband I2S ///

/// Audio I2S multiplexer ///
// Inputs
wire audio_i2s_mcu_clk_oe;
reg  audio_i2s_mcu_mclk_out;
reg  audio_i2s_mcu_bclk_out;
reg  audio_i2s_mcu_lrclk_out;
reg  audio_i2s_mcu_mclk_in;
reg  audio_i2s_mcu_bclk_in;
reg  audio_i2s_mcu_lrclk_in;
reg  audio_i2s_mcu_sdout;
reg  audio_i2s_mcu_sdin;
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
audio_i2s_mcu_mclk
(
    .PACKAGE_PIN(I2S_MCU_MCLK),
    .OUTPUT_ENABLE(audio_i2s_mcu_clk_oe),
    .D_OUT_0(audio_i2s_mcu_mclk_out),
    .D_IN_0(audio_i2s_mcu_mclk_in)
);

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
audio_i2s_mcu_bclk
(
    .PACKAGE_PIN(I2S_MCU_BCLK),
    .OUTPUT_ENABLE(audio_i2s_mcu_clk_oe),
    .D_OUT_0(audio_i2s_mcu_bclk_out),
    .D_IN_0(audio_i2s_mcu_bclk_in)
);

SB_IO #(
    .PIN_TYPE(6'b1010_01),
    .PULLUP(1'b0)
)
audio_i2s_mcu_lrclk
(
    .PACKAGE_PIN(I2S_MCU_LRCLK),
    .OUTPUT_ENABLE(audio_i2s_mcu_clk_oe),
    .D_OUT_0(audio_i2s_mcu_lrclk_out),
    .D_IN_0(audio_i2s_mcu_lrclk_in)
);

assign I2S_MCU_SDOUT = audio_i2s_mcu_sdout;
assign I2S_MCU_SDIN = audio_i2s_mcu_sdin;
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
reg  [1:0] audio_i2s_mcu_clk_sel;
reg  [1:0] audio_i2s_codec_clk_sel;

assign audio_i2s_mcu_clk_oe = audio_i2s_mcu_clk_sel[1];

always @(*)
    begin
        case(audio_i2s_mcu_clk_sel[0])
            1'b0:
                begin
                    audio_i2s_mcu_mclk_out = audio_i2s_brg_mclk_in;
                    audio_i2s_mcu_bclk_out = audio_i2s_brg_bclk_in;
                    audio_i2s_mcu_lrclk_out = audio_i2s_brg_lrclk_in;
                end
            1'b1:
                begin
                    audio_i2s_mcu_mclk_out = 1'b0; // TODO: Clock from FPGA
                    audio_i2s_mcu_bclk_out = 1'b0;
                    audio_i2s_mcu_lrclk_out = 1'b0;
                end
        endcase
    end

always @(*)
    begin
        case(audio_i2s_codec_clk_sel)
            2'b00:
                begin
                    audio_i2s_codec_mclk_out = audio_i2s_brg_mclk_in;
                    audio_i2s_codec_bclk_out = audio_i2s_brg_bclk_in;
                    audio_i2s_codec_lrclk_out = audio_i2s_brg_lrclk_in;
                end
            2'b01:
                begin
                    audio_i2s_codec_mclk_out = 1'b0; // TODO: Clock from FPGA
                    audio_i2s_codec_bclk_out = 1'b0;
                    audio_i2s_codec_lrclk_out = 1'b0;
                end
            2'b10:
                begin
                    audio_i2s_codec_mclk_out = audio_i2s_mcu_mclk_in;
                    audio_i2s_codec_bclk_out = audio_i2s_mcu_bclk_in;
                    audio_i2s_codec_lrclk_out = audio_i2s_mcu_lrclk_in;
                end
            2'b11:
                begin
                    audio_i2s_codec_mclk_out = 1'b0;
                    audio_i2s_codec_bclk_out = 1'b0;
                    audio_i2s_codec_lrclk_out = 1'b0;
                end
        endcase
    end

// Data mux
reg audio_i2s_mcu_sdin_sel;
reg audio_i2s_codec_sdin_sel;
reg audio_i2s_brg_sdin_sel;

always @(*)
    begin
        case(audio_i2s_mcu_sdin_sel)
            1'b0:
                audio_i2s_mcu_sdin = audio_i2s_brg_sdout;
            1'b1:
                audio_i2s_mcu_sdin = audio_i2s_codec_sdout;
        endcase
    end

always @(*)
    begin
        case(audio_i2s_codec_sdin_sel)
            1'b0:
                audio_i2s_codec_sdin = audio_i2s_brg_sdout;
            1'b1:
                audio_i2s_codec_sdin = audio_i2s_mcu_sdout;
        endcase
    end

always @(*)
    begin
        case(audio_i2s_brg_sdin_sel)
            1'b0:
                audio_i2s_brg_sdin = audio_i2s_codec_sdout;
            1'b1:
                audio_i2s_brg_sdin = audio_i2s_mcu_sdout;
        endcase
    end
/// Audio I2S multiplexer ///

/// Interrupt Request ///
localparam IRQ_COUNT = 8;

wire [IRQ_COUNT - 1:0] irq_lines;
reg  [2:0] irq_lines_ed [0:IRQ_COUNT - 1]; // IRQ lines edge detector
reg  [IRQ_COUNT - 1:0] irq_mask;
reg  [IRQ_COUNT - 1:0] irq_state;
reg  [IRQ_COUNT - 1:0] irq_clear;
reg  [IRQ_COUNT - 1:0] irq_set;

assign IRQn = !(|(irq_state & irq_mask));

assign irq_lines[0] = adc_dpram_wr_en;
assign irq_lines[1] = !adc_dpram_wr_en;
assign irq_lines[2] = 1'b0;
assign irq_lines[3] = 1'b0;
assign irq_lines[4] = 1'b0;
assign irq_lines[5] = 1'b0;
assign irq_lines[6] = 1'b0;
assign irq_lines[7] = 1'b0;

generate
    genvar i;

    for(i = 0; i < IRQ_COUNT; i = i + 1)
        begin
            always @(posedge irq_clk)
                begin
                    if(irq_rst)
                        begin
                            irq_state[i] <= 1'b0;
                        end
                    else
                        begin
                            irq_lines_ed[i] <= {irq_lines_ed[i][1:0], irq_lines[i]};

                            if(irq_clear[i])
                                irq_state[i] <= 1'b0;

                            if((!irq_lines_ed[i][2] && irq_lines_ed[i][1]) || irq_set[i])
                                irq_state[i] <= 1'b1;
                        end
                end
        end
endgenerate
/// Interrupt Request ///

/// LED ///
reg [11:0] led_cnt;
reg [11:0] led_on_cmp;
reg [11:0] led_off_cmp;
reg        led_en;
reg        led_status;

//assign LED = led_status; TODO: uncomment

always @(posedge led_clk)
    begin
        if(!led_en || !led_on_cmp || !led_off_cmp)
            begin
                led_cnt <= 12'h000;
                led_status <= 1'b0;
            end
        else
            begin
                if(led_status && (led_cnt == led_off_cmp))
                    begin
                        led_status <= 1'b0;
                        led_cnt <= 12'h000;
                    end
                else if(!led_status && (led_cnt == led_on_cmp))
                    begin
                        led_status <= 1'b1;
                         led_cnt <= 12'h000;
                    end
                else
                    begin
                        led_cnt <= led_cnt + 1;
                    end
            end
    end
/// LED ///

/// Control SPI slave interface ///
// Inputs
wire cntrl_spi_sck;
wire cntrl_spi_mosi;
wire cntrl_spi_miso;
wire cntrl_spi_ncs;

assign SPI_SCK = cntrl_spi_sck;
assign SPI_MOSI = cntrl_spi_mosi;
assign SPI_MISO = cntrl_spi_miso;
assign SPI_CSn = cntrl_spi_ncs;

// Module
wire [6:0]  cntrl_spi_addr;
wire [31:0] cntrl_spi_data_out;
reg  [31:0] cntrl_spi_data_in;
wire        cntrl_spi_wr_en;
wire        cntrl_spi_rd_en;

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
    .rd_en(cntrl_spi_rd_en),
);

localparam CNTRL_SPI_REG_ID                 = 7'h00;
localparam CNTRL_SPI_REG_RST_CLK_CNTRL      = 7'h01;
localparam CNTRL_SPI_REG_IRQ_CNTRL_STATUS   = 7'h02;
localparam CNTRL_SPI_REG_LED_CNTRL          = 7'h03;
localparam CNTRL_SPI_REG_ADC_DPRAM_CNTRL    = 7'h10;
localparam CNTRL_SPI_REG_ADC_DPRAM_ADDR     = 7'h11;
localparam CNTRL_SPI_REG_ADC_DPRAM_DATA     = 7'h12;
localparam CNTRL_SPI_REG_DDC_CNTRL          = 7'h20;
localparam CNTRL_SPI_REG_DDC_LO_FREQ        = 7'h21;
localparam CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL  = 7'h30;

always @(posedge cntrl_spi_clk)
    begin
        if(cntrl_spi_rst) // Register reset values
            begin
                adc_clk_en <= 1'b0;
                adc_dpram_clk_en <= 1'b0;
                soft_reset <= 1'b1;

                irq_mask <= {IRQ_COUNT{1'b0}};
                irq_clear <= {IRQ_COUNT{1'b0}};
                irq_set <= {IRQ_COUNT{1'b0}};

                led_en <= 1'b0;
                led_on_cmp <= 12'hFFF;
                led_off_cmp <= 12'hFFF;

                adc_dpram_trig <= 1'b0;
                adc_dpram_rd_addr_inc <= 1'b0;

                adc_dpram_rd_addr <= {ADC_DPRAM_SIZE{1'b0}};

                ddc_lo_ns_en <= 1'b0;

                ddc_lo_freq <= 26'h0000000;

                audio_i2s_mcu_clk_sel <= 2'b01;
                audio_i2s_codec_clk_sel <= 2'b01;
                audio_i2s_mcu_sdin_sel <= 1'b0;
                audio_i2s_codec_sdin_sel <= 1'b0;
                audio_i2s_brg_sdin_sel <= 1'b0;
            end
        else
            begin
                if(cntrl_spi_wr_en)
                    begin
                        case(cntrl_spi_addr)
                            CNTRL_SPI_REG_RST_CLK_CNTRL:
                                begin
                                    adc_clk_en <= cntrl_spi_data_out[0];
                                    adc_dpram_clk_en <= cntrl_spi_data_out[1];
                                    soft_reset <= cntrl_spi_data_out[8];
                                end
                            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                                begin
                                    irq_mask <= cntrl_spi_data_out[7:0];
                                    irq_clear <= cntrl_spi_data_out[15:8];
                                    irq_set <= cntrl_spi_data_out[23:16];
                                end
                            CNTRL_SPI_REG_LED_CNTRL:
                                begin
                                    led_en <= cntrl_spi_data_out[0];
                                    led_on_cmp <= cntrl_spi_data_out[19:8];
                                    led_off_cmp <= cntrl_spi_data_out[31:20];
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                                begin
                                    adc_dpram_trig <= cntrl_spi_data_out[0];
                                    adc_dpram_rd_addr_inc <= cntrl_spi_data_out[1];
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
                                end
                            CNTRL_SPI_REG_DDC_LO_FREQ:
                                begin
                                    ddc_lo_freq <= cntrl_spi_data_out[25:0];
                                end
                            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                                begin
                                    audio_i2s_mcu_clk_sel <= cntrl_spi_data_out[1:0];
                                    audio_i2s_codec_clk_sel <= cntrl_spi_data_out[3:2];
                                    audio_i2s_mcu_sdin_sel <= cntrl_spi_data_out[8];
                                    audio_i2s_codec_sdin_sel <= cntrl_spi_data_out[9];
                                    audio_i2s_brg_sdin_sel <= cntrl_spi_data_out[10];
                                end
                        endcase
                    end

                if(cntrl_spi_rd_en) // Synchronous reads
                    begin
                        case(cntrl_spi_addr)
                            CNTRL_SPI_REG_RST_CLK_CNTRL:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_LED_CNTRL:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_ADDR:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_ADC_DPRAM_DATA:
                                begin
                                    // Read is done asynchronously

                                    if(adc_dpram_rd_addr_inc)
                                        adc_dpram_rd_addr <= adc_dpram_rd_addr + 1;
                                end
                            CNTRL_SPI_REG_DDC_CNTRL:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_DDC_LO_FREQ:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                                begin
                                    // Nothing to do (read is done asynchronously)
                                end
                        endcase
                    end
            end
    end

always @(*)
    begin
        case(cntrl_spi_addr)
            CNTRL_SPI_REG_RST_CLK_CNTRL:
                    cntrl_spi_data_in = {23'd0, soft_reset, 6'b000000, adc_dpram_clk_en, adc_clk_en};
            CNTRL_SPI_REG_IRQ_CNTRL_STATUS:
                    cntrl_spi_data_in = {16'd0, irq_state, irq_mask};
            CNTRL_SPI_REG_ADC_DPRAM_CNTRL:
                    cntrl_spi_data_in = {29'd0, adc_dpram_wr_en, adc_dpram_rd_addr_inc, adc_dpram_trig};
            CNTRL_SPI_REG_ADC_DPRAM_ADDR:
                    cntrl_spi_data_in = {{(16 - ADC_DPRAM_SIZE){1'b0}}, adc_dpram_wr_addr, {(16 - ADC_DPRAM_SIZE){1'b0}}, adc_dpram_rd_addr};
            CNTRL_SPI_REG_ADC_DPRAM_DATA:
                    cntrl_spi_data_in = {15'd0, adc_dpram_data_out};
            CNTRL_SPI_REG_DDC_CNTRL:
                    cntrl_spi_data_in = {31'd0, ddc_lo_ns_en};
            CNTRL_SPI_REG_DDC_LO_FREQ:
                    cntrl_spi_data_in = {6'd0, ddc_lo_freq};
            CNTRL_SPI_REG_AUDIO_I2S_MUX_SEL:
                    cntrl_spi_data_in = {20'd0, audio_i2s_brg_sdin_sel, audio_i2s_codec_sdin_sel, audio_i2s_mcu_sdin_sel, 4'b0000, audio_i2s_codec_clk_sel, audio_i2s_mcu_clk_sel};
            default:
                    cntrl_spi_data_in = 32'h00000000;
        endcase
    end
/// Control SPI slave interface ///

endmodule