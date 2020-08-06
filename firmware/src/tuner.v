module tuner
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input  signed [DSZ - 1:0] in_i,     // In-phase input
    input  signed [DSZ - 1:0] in_q,     // Quadrature input
    input         [FSZ - 1:0] lo_freq,  // NCO frequency tuning word
    input                     lo_dir,   // NCO frequency direction
    input                     lo_ns_en, // NCO noise shaping enable
    output signed [DSZ - 1:0] out_i,    // In-phase output
    output signed [DSZ - 1:0] out_q     // Quadrature output
);

localparam DSZ = 16;  // Data word size
localparam FSZ = 31;  // Tuning word size

// Local Oscillator
wire signed [DSZ - 1:0] lo_raw_i;
wire signed [DSZ - 1:0] lo_raw_q;
reg  signed [DSZ - 1:0] lo_i;
reg  signed [DSZ - 1:0] lo_q;

nco tuner_lo
(
    .clk(clk),
    .reset(reset),
    .freq(lo_freq),
    .ns_en(lo_ns_en),
    .out_i(lo_raw_i),
    .out_q(lo_raw_q)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                lo_i <= {DSZ{1'b0}};
                lo_q <= {DSZ{1'b0}};
            end
        else
            begin
                lo_i <= lo_dir ? lo_raw_q : lo_raw_i;
                lo_q <= lo_dir ? lo_raw_i : lo_raw_q;
            end
    end


// I mixer
wire signed [DSZ - 1:0] out_i;

mixer tuner_i_mixer
(
    .clk(clk),
    .reset(reset),
    .in(in_i),
    .lo(lo_i),
    .out(out_i)
);

// Q mixer
wire signed [DSZ - 1:0] out_q;

mixer tuner_q_mixer
(
    .clk(clk),
    .reset(reset),
    .in(in_q),
    .lo(lo_q),
    .out(out_q)
);

endmodule

