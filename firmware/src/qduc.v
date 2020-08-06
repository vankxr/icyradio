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
localparam CICSZ1 = 26; // CIC stage 1 output word size -> (see CIC localparam OSZ)
localparam CICSZ2 = 20; // CIC stage 2 output word size -> (see CIC localparam OSZ)

// CIC clock divider
reg  [6:0]  cic_rate_div;
wire        cic1_in_rate;
wire        cic2_in_rate;

assign cic1_in_rate = &cic_rate_div[6:0]; // One pulse every 128 = Interpolation ratio
assign cic2_in_rate = &cic_rate_div[1:0]; // One pulse every 4 = Interpolation ratio

always @(posedge clk)
    begin
        if(reset)
            cic_rate_div <= 7'b0000000;
        else
            cic_rate_div <= cic_rate_div + 1;
    end

// CIC stage 1 interpolators
wire signed [CICSZ1 - 1:0] cic1_i;
wire signed [CICSZ1 - 1:0] cic1_q;

cic_interpolator #(
    .NUM_STAGES(3),
    .STG_GSZ(5),
    .ISZ(ISZ)
)
cic1_int_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic2_in_rate),
    .in(in_i),
    .out(cic1_i)
);

cic_interpolator #(
    .NUM_STAGES(3),
    .STG_GSZ(5),
    .ISZ(ISZ)
)
cic1_int_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic1_in_rate),
    .out_rate(cic2_in_rate),
    .in(in_q),
    .out(cic1_q)
);

wire signed [ISZ - 1:0] cic1_i_trim = cic1_i[(CICSZ1 - 1):(CICSZ1 - ISZ)];
wire signed [ISZ - 1:0] cic1_q_trim = cic1_q[(CICSZ1 - 1):(CICSZ1 - ISZ)];

// Tuner
wire signed [ISZ - 1:0] tuner_i;
wire signed [ISZ - 1:0] tuner_q;

quadrature_tuner out_tuner
(
    .clk(clk),
    .reset(reset | tuner_byp),
    .in_i(cic1_i_trim),
    .in_q(cic1_q_trim),
    .lo_freq(lo_freq),
    .lo_dir(lo_dir),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_i),
    .out_q(tuner_q)
);

// CIC stage 2 interpolators
wire signed [CICSZ2 - 1:0] cic2_i;
wire signed [CICSZ2 - 1:0] cic2_q;
reg  signed [ISZ - 1:0] cic2_i_in;
reg  signed [ISZ - 1:0] cic2_q_in;

cic_interpolator #(
    .NUM_STAGES(3),
    .STG_GSZ(2),
    .ISZ(ISZ)
)
cic2_int_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(1'b1),
    .in(cic2_i_in),
    .out(cic2_i)
);

cic_interpolator #(
    .NUM_STAGES(3),
    .STG_GSZ(2),
    .ISZ(ISZ)
)
cic2_int_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(cic2_in_rate),
    .out_rate(1'b1),
    .in(cic2_q_in),
    .out(cic2_q)
);

wire signed [OSZ - 1:0] cic2_i_trim = cic2_i[(CICSZ2 - 1):(CICSZ2 - OSZ)];
wire signed [OSZ - 1:0] cic2_q_trim = cic2_q[(CICSZ2 - 1):(CICSZ2 - OSZ)];

always @(posedge clk)
    begin
        if(reset)
            begin
                cic2_i_in <= {ISZ{1'b0}};
                cic2_q_in <= {ISZ{1'b0}};
            end
        else
            begin
                cic2_i_in <= tuner_byp ? cic1_i_trim : tuner_i;
                cic2_q_in <= tuner_byp ? cic1_q_trim : tuner_q;
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
                out_i <= iq_swap ? cic2_q_trim : cic2_i_trim;
                out_q <= iq_swap ? cic2_i_trim : cic2_q_trim;
            end
    end

endmodule

