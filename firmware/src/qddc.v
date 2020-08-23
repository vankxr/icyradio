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
localparam CICSZ1 = 19; // CIC output word size -> (see CIC localparam OSZ)
localparam CICSZ2 = 34; // CIC output word size -> (see CIC localparam OSZ)

// CIC clock divider
reg  [6:0]  cic_rate_div;
wire        cic1_in_rate;
wire        cic1_out_rate;
wire        cic2_in_rate;
wire        cic2_out_rate;

assign cic1_in_rate = 1'b1; // Clock / 1
assign cic1_out_rate = &cic_rate_div[0]; // Clock / 2
assign cic2_in_rate = &cic_rate_div[0]; // Clock / 2
assign cic2_out_rate = &cic_rate_div[6:0]; // Clock / 128

always @(posedge clk)
    begin
        if(reset)
            cic_rate_div <= 7'b0000000;
        else
            cic_rate_div <= cic_rate_div + 1;
    end

// CIC stage 1 decimators
wire signed [CICSZ1 - 1:0] cic1_out;

cic_decimator #(
    .NUM_STAGES(3),
    .STG_GSZ(1),
    .ISZ(ISZ)
)
cic1_dec
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic1_out_rate),
    .in(in),
    .out(cic1_out)
);

wire signed [ISZ - 1:0] cic1_out_trim = cic1_out[(CICSZ1 - 1):(CICSZ1 - ISZ)];

// Tuner
wire signed [ISZ - 1:0] tuner_out_i;
wire signed [ISZ - 1:0] tuner_out_q;

ri_co_tuner in_tuner
(
    .clk(clk),
    .reset(reset),
    .in(cic1_out_trim),
    .lo_freq(lo_freq),
    .lo_dir(lo_dir),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_out_i),
    .out_q(tuner_out_q)
);

// CIC stage 2 decimators
wire signed [CICSZ2 - 1:0] cic2_out_i;
wire signed [CICSZ2 - 1:0] cic2_out_q;

cic_decimator #(
    .NUM_STAGES(3),
    .STG_GSZ(6),
    .ISZ(ISZ)
)
cic2_dec_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(cic2_out_rate),
    .in(tuner_out_i),
    .out(cic2_out_i)
);

cic_decimator #(
    .NUM_STAGES(3),
    .STG_GSZ(6),
    .ISZ(ISZ)
)
cic2_dec_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(cic2_out_rate),
    .in(tuner_out_q),
    .out(cic2_out_q)
);

wire signed [OSZ - 1:0] cic2_out_i_trim = cic2_out_i[(CICSZ2 - 1):(CICSZ2 - OSZ)];
wire signed [OSZ - 1:0] cic2_out_q_trim = cic2_out_q[(CICSZ2 - 1):(CICSZ2 - OSZ)];

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
                out_i <= iq_swap ? cic2_out_q_trim : cic2_out_i_trim;
                out_q <= iq_swap ? cic2_out_i_trim : cic2_out_q_trim;
            end
    end

endmodule

