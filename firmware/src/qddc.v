module qddc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input   signed  [ISZ - 1:0] in,        // Real input
    input           [FSZ - 1:0] lo_freq,   // NCO frequency tuning word
    input                       lo_dir,    // NCO frequency direction
    input                       lo_ns_en,  // NCO noise shaping enable
    input                       iq_swap,   // IQ swap enable
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;   // Input word size
localparam FSZ = 31;   // NCO tuning word size
localparam OSZ = 16;   // Output word size

// CIC clock divider
reg  [6:0]  cic_rate_div;
wire        cic1_in_rate;
wire        cic1_out_rate;

assign cic1_in_rate = &cic_rate_div[0]; // Clock / 2
assign cic1_out_rate = &cic_rate_div[6:0]; // Clock / 128

always @(posedge clk)
    begin
        if(reset)
            cic_rate_div <= 7'b0000000;
        else
            cic_rate_div <= cic_rate_div + 1;
    end

// Tuner
wire signed [ISZ - 1:0] tuner_out_i;
wire signed [ISZ - 1:0] tuner_out_q;

ri_co_tuner in_tuner
(
    .clk(clk),
    .reset(reset),
    .in(in),
    .lo_freq(lo_freq),
    .lo_dir(lo_dir),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_out_i),
    .out_q(tuner_out_q)
);

// CIC stage 1 decimators
wire signed [OSZ - 1:0] cic1_out_i;
wire signed [OSZ - 1:0] cic1_out_q;

cic_decimator #(
    .NUM_STAGES(4),
    .STG_GSZ(6),
    .ISZ(ISZ),
    .OSZ(OSZ)
)
cic1_dec_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic1_out_rate),
    .in(tuner_out_i),
    .out(cic1_out_i)
);

cic_decimator #(
    .NUM_STAGES(4),
    .STG_GSZ(6),
    .ISZ(ISZ),
    .OSZ(OSZ)
)
cic1_dec_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic1_out_rate),
    .in(tuner_out_q),
    .out(cic1_out_q)
);

// Output
reg  signed [OSZ - 1:0] out_i;
reg  signed [OSZ - 1:0] out_q;

always @(posedge clk)
    begin
        if(reset)
            begin
                out_i <= {OSZ{1'b0}};
                out_q <= {OSZ{1'b0}};
            end
        else
            begin
                out_i <= iq_swap ? cic1_out_q : cic1_out_i;
                out_q <= iq_swap ? cic1_out_i : cic1_out_q;
            end
    end

endmodule

