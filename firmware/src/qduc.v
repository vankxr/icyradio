module qduc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input   signed  [ISZ - 1:0] in_i,      // In-phase input
    input   signed  [ISZ - 1:0] in_q,      // Quadrature input
    input           [FSZ - 1:0] lo_freq,   // NCO tuning word
    input                       lo_ns_en,  // NCO noise shaping enable
    input                       iq_swap,   // IQ swap enable
    input                       tuner_byp, // Tuner bypass enable
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;   // Input word size
localparam FSZ = 26;   // NCO tuning word size
localparam OSZ = 14;   // Output word size
localparam CICSZ = 32; // CIC output word size -> (see CIC localparam OSZ)

// CIC clock divider
reg [7:0]   clk_div;
wire        cic_in_clk;

assign cic_in_clk = &clk_div; // One pulse every 256 = Interpolation ratio

always @(posedge clk)
    begin
        if(reset)
            clk_div <= 8'b00000000;
        else
            clk_div <= clk_div + 1;
    end

// CIC interpolators
wire signed [CICSZ - 1:0] cic_i;
wire signed [CICSZ - 1:0] cic_q;

cic_interpolator cic_int_i
(
    .reset(reset),
    .in_clk(cic_in_clk),
    .out_clk(clk),
    .in(in_i),
    .out(cic_i)
);

cic_interpolator cic_int_q
(
    .reset(reset),
    .in_clk(cic_in_clk),
    .out_clk(clk),
    .in(in_q),
    .out(cic_q)
);

wire signed [ISZ - 1:0] cic_i_trim = cic_i[(CICSZ - 1):(CICSZ - ISZ)];
wire signed [ISZ - 1:0] cic_q_trim = cic_q[(CICSZ - 1):(CICSZ - ISZ)];

// Tuner
wire signed [ISZ - 1:0] tuner_i;
wire signed [ISZ - 1:0] tuner_q;

tuner in_tuner
(
    .clk(clk),
    .reset(reset | tuner_byp),
    .in_i(cic_i_trim),
    .in_q(cic_q_trim),
    .lo_freq(lo_freq),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_i),
    .out_q(tuner_q)
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
                if(tuner_byp)
                    begin
                        out_i <= iq_swap ? cic_q_trim[(ISZ - 1):(ISZ - OSZ)] : cic_i_trim[(ISZ - 1):(ISZ - OSZ)];
                        out_q <= iq_swap ? cic_i_trim[(ISZ - 1):(ISZ - OSZ)] : cic_q_trim[(ISZ - 1):(ISZ - OSZ)];
                    end
                else
                    begin
                        out_i <= iq_swap ? tuner_q[(ISZ - 1):(ISZ - OSZ)] : tuner_i[(ISZ - 1):(ISZ - OSZ)];
                        out_q <= iq_swap ? tuner_i[(ISZ - 1):(ISZ - OSZ)] : tuner_q[(ISZ - 1):(ISZ - OSZ)];
                    end
            end
    end

endmodule

