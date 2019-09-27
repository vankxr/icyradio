`include "../src/i2s_master.v"
`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module i2s_master_tb;

reg         reset;          // Reset
reg         i2s_bclk;       // I2S Bit Clock
wire        i2s_lrclk;      // I2S Word Select
wire        i2s_sdout;      // I2S Data Out
reg         i2s_sdin;       // I2S Data In
wire [15:0] left_data_out;  // Left data paralellized from SDIN
wire [15:0] right_data_out; // Right data paralellized from SDIN
reg  [15:0] left_data_in;   // Left data to serialize on SDOUT
reg  [15:0] right_data_in;  // Right data to serialize on SDOUT

i2s_master uut
(
    reset,
    i2s_bclk,
    i2s_lrclk,
    i2s_sdout,
    i2s_sdin,
    left_data_out,
    right_data_out,
    left_data_in,
    right_data_in
);

///////////////////////////////////////
localparam total_sim_periods = 90;
reg [31:0] sim_periods;

initial
    begin
        $dumpfile("sim/i2s_master_tb.vcd");
        $dumpvars(0, i2s_bclk, i2s_lrclk, i2s_sdout);

        sim_periods = 32'd0;

        reset = 1'b1;
    end

always
    begin
        // 6.25 MHz Clock
        i2s_bclk = 1'b0;
        #80;
        i2s_bclk = 1'b1;
        #80;
    end

always @(posedge i2s_bclk)
    begin
        sim_periods <= sim_periods + 1;

        if(sim_periods == 2)
            begin
                left_data_in <= 16'h55AA;
            end

        if(sim_periods == 3)
            begin
                i2s_sdin <= 1'b0;
                reset <= 1'b0;
            end

        if(sim_periods == 17)
            begin
                right_data_in <= 16'hAA55;
            end

        if(sim_periods == 33)
            begin
                left_data_in <= 16'h1111;
            end

        if(sim_periods == 49)
            begin
                right_data_in <= 16'h7777;
            end

        if(sim_periods == 66)
            begin
                reset <= 1'b1;
            end

        if(sim_periods == total_sim_periods)
            $stop;
    end

endmodule