module qduc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input   signed  [ISZ - 1:0] in_i,      // In-phase input
    input   signed  [ISZ - 1:0] in_q,      // Quadrature input
    input           [FSZ - 1:0] lo_freq,   // NCO frequency tuning word
    input                       lo_dir,    // NCO frequency direction
    input                       lo_ns_en,  // NCO noise shaping enable
    input                       iq_swap,   // IQ swap enable
    input                       tuner_byp, // Tuner bypass enable
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;    // Input word size
localparam FSZ = 31;    // NCO tuning word size
localparam OSZ = 14;    // Output word size

// CIC clock divider
reg  [5:0]  cic_rate_div;
wire        cic1_in_rate;
wire        cic1_out_rate;
wire        cic2_in_rate;
wire        cic2_out_rate;

assign cic1_in_rate = &cic_rate_div[5:0]; // Clock / 64
assign cic1_out_rate = &cic_rate_div[1:0]; // Clock / 4
assign cic2_in_rate = &cic_rate_div[1:0]; // Clock / 4
assign cic2_out_rate = 1'b1; // Clock / 1

always @(posedge clk)
    begin
        if(reset)
            cic_rate_div <= 6'b000000;
        else
            cic_rate_div <= cic_rate_div + 1;
    end

// CIC stage 1 interpolators
wire signed [ISZ - 1:0] cic1_out_i;
wire signed [ISZ - 1:0] cic1_out_q;

cic_interpolator #(
    .NUM_STAGES(4),
    .STG_GSZ(4),
    .ISZ(ISZ),
    .OSZ(ISZ)
)
cic1_int_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic1_out_rate),
    .in(in_i),
    .out(cic1_out_i)
);

cic_interpolator #(
    .NUM_STAGES(4),
    .STG_GSZ(4),
    .ISZ(ISZ),
    .OSZ(ISZ)
)
cic1_int_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic1_out_rate),
    .in(in_q),
    .out(cic1_out_q)
);

// Tuner
wire signed [ISZ - 1:0] tuner_out_i;
wire signed [ISZ - 1:0] tuner_out_q;

ci_co_tuner out_tuner
(
    .clk(clk),
    .reset(reset | tuner_byp),
    .in_i(cic1_out_i),
    .in_q(cic1_out_q),
    .lo_freq(lo_freq),
    .lo_dir(lo_dir),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_out_i),
    .out_q(tuner_out_q)
);

// CIC stage 2 interpolators
wire signed [OSZ - 1:0] cic2_out_i;
wire signed [OSZ - 1:0] cic2_out_q;
reg  signed [ISZ - 1:0] cic2_in_i;
reg  signed [ISZ - 1:0] cic2_in_q;

cic_interpolator #(
    .NUM_STAGES(4),
    .STG_GSZ(2),
    .ISZ(ISZ),
    .OSZ(OSZ)
)
cic2_int_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(cic2_out_rate),
    .in(cic2_in_i),
    .out(cic2_out_i)
);

cic_interpolator #(
    .NUM_STAGES(4),
    .STG_GSZ(2),
    .ISZ(ISZ),
    .OSZ(OSZ)
)
cic2_int_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(cic2_out_rate),
    .in(cic2_in_q),
    .out(cic2_out_q)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                cic2_in_i <= {ISZ{1'b0}};
                cic2_in_q <= {ISZ{1'b0}};
            end
        else
            begin
                cic2_in_i <= tuner_byp ? cic1_out_i : tuner_out_i;
                cic2_in_q <= tuner_byp ? cic1_out_q : tuner_out_q;
            end
    end

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
                out_i <= iq_swap ? cic2_out_q : cic2_out_i;
                out_q <= iq_swap ? cic2_out_i : cic2_out_q;
            end
    end

endmodule

