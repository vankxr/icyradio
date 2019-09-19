module top
(
    input CLK_50M,
    output LED,
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
    output ADC_OEn
);

/// Clocks ///
wire clk_20M;
wire clk_50M;
wire clk_100M;

SB_GB_IO clk_50M_global_buffer
(
    .PACKAGE_PIN(CLK_50M),
    .GLOBAL_BUFFER_OUTPUT(clk_50M)
);

SB_PLL40_CORE #(
	.FEEDBACK_PATH("SIMPLE"),
	.DIVR(4'b0000),			// DIVR =  0
	.DIVF(7'b0001111),		// DIVF = 15
	.DIVQ(3'b011),			// DIVQ =  3
	.FILTER_RANGE(3'b100)	// FILTER_RANGE = 4
)
pll_100M
(
	.LOCK(),
	.RESETB(1'b1),
	.BYPASS(1'b0),
	.REFERENCECLK(clk_50M),
	.PLLOUTGLOBAL(clk_100M)
);

SB_PLL40_CORE #(
    .FEEDBACK_PATH("SIMPLE"),
    .DIVR(4'b0100),         // DIVR =  4
    .DIVF(7'b0111111),      // DIVF = 63
    .DIVQ(3'b101),          // DIVQ =  5
    .FILTER_RANGE(3'b001)   // FILTER_RANGE = 1
)
pll_20M
(
    .LOCK(),
    .RESETB(1'b1),
    .BYPASS(1'b0),
    .REFERENCECLK(clk_50M),
    .PLLOUTGLOBAL(clk_20M)
);
/// Clocks ///

/// BRAM ///
/*
reg  [12:0] bram_addr;
reg  [15:0] bram_data_in;
wire [15:0] bram_data_out;
reg         bram_we = 1'b0;

bram ram
(
    .clk(clk_100M),
    .addr(bram_addr),
    .data_in(bram_data_in),
    .data_out(bram_data_out),
    .we(bram_we)
);
*/
/// BRAM ///

/// ADC Interface ///
reg  [16:0] adc_data = 16'b0;
wire [15:0] adc_data_in;
wire        adc_of_in;
wire        adc_clk;
reg         adc_clk_en = 1'b1;
reg         adc_noe = 1'b1;

assign adc_clk = clk_50M && adc_clk_en;

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
assign ADC_OEn = adc_noe;

always @(posedge adc_clk)
    begin
        adc_data <= {adc_of_in, adc_data_in};
    end

wire signed [15:0] ddc_i, ddc_q;
wire ddc_v;
ddc theddc
(
    .clk(adc_clk), .reset(1'b0),
    .in(adc_data[15:0]),
    .freq(26'd8388608),
    .ns_en(1'b0),
    .out_valid(ddc_v),
    .out_i(ddc_i), .out_q(ddc_q)
);
assign LED = &ddc_i && &ddc_q && ddc_v;

/// ADC Interface ///

/// LED ///
reg [23:0] led_div = 0;

//assign LED = led_div[23];

always @(posedge clk_50M)
    begin
        led_div <= led_div + 1;
    end
/// LED ///

endmodule