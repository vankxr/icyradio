module qddc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input   signed  [ISZ - 1:0] in,        // Input data
    input           [FSZ - 1:0] lo_freq,   // NCO frequency tuning word
    input                       lo_dir,    // NCO frequency direction
    input                       lo_ns_en,  // NCO noise shaping enable
    input                       iq_swap,   // IQ swap enable
    output                      out_valid, // Output valid
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;   // Input word size
localparam FSZ = 31;   // NCO tuning word size
localparam OSZ = 16;   // Output word size
localparam CICSZ = 37; // CIC output word size -> (see CIC localparam OSZ)

// Tuner
wire signed [ISZ - 1:0] tuner_i;
wire signed [ISZ - 1:0] tuner_q;

tuner in_tuner
(
    .clk(clk),
    .reset(reset),
    .in_i(in),
    .in_q(in),
    .lo_freq(lo_freq),
    .lo_dir(lo_dir),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_i),
    .out_q(tuner_q)
);

// CIC clock divider
reg  [6:0]  cic_rate_div;
wire        cic_out_rate;

assign cic_out_rate = &cic_rate_div[6:0]; // One pulse every 128 = Decimation ratio

always @(posedge clk)
    begin
        if(reset)
            cic_rate_div <= 7'b0000000;
        else
            cic_rate_div <= cic_rate_div + 1;
    end

// CIC decimators
wire                      cic_valid;
wire signed [CICSZ - 1:0] cic_i;
wire signed [CICSZ - 1:0] cic_q;

cic_decimator #(
    .NUM_STAGES(3),
    .STG_GSZ(7),
    .ISZ(ISZ)
)
cic_dec_i
(
    .clk(clk),
    .reset(reset),
    .in_rate(1'b1),
    .out_rate(cic_out_rate),
    .in(tuner_i),
    .out(cic_i),
    .out_valid(cic_valid)
);

cic_decimator #(
    .NUM_STAGES(3),
    .STG_GSZ(7),
    .ISZ(ISZ)
)
cic_dec_q
(
    .clk(clk),
    .reset(reset),
    .in_rate(1'b1),
    .out_rate(cic_out_rate),
    .in(tuner_q),
    .out(cic_q),
    .out_valid()
);

wire signed [OSZ - 1:0] cic_i_trim = cic_i[(CICSZ - 1):(CICSZ - OSZ)];
wire signed [OSZ - 1:0] cic_q_trim = cic_q[(CICSZ - 1):(CICSZ - OSZ)];

// Output
reg                     out_valid;
reg  signed [OSZ - 1:0] out_i;
reg  signed [OSZ - 1:0] out_q;

always @(posedge clk)
    begin
        if(reset)
            begin
                out_valid <= 1'b0;
                out_i <= {OSZ{1'b0}};
                out_q <= {OSZ{1'b0}};
            end
        else
            begin
                out_valid <= cic_valid;
                out_i <= iq_swap ? cic_q_trim : cic_i_trim;
                out_q <= iq_swap ? cic_i_trim : cic_q_trim;
            end
    end

endmodule

