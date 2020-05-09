module qduc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input   signed  [ISZ - 1:0] in_i,      // In-phase input
    input   signed  [ISZ - 1:0] in_q,      // Quadrature input
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;   // Input word size
localparam OSZ = 14;   // Output word size
localparam CICSZ = 32; // CIC output word size -> (see CIC localparam OSZ)

// Clock divider
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
    .out(cic_i),
);

cic_interpolator cic_int_q
(
    .reset(reset),
    .in_clk(cic_in_clk),
    .out_clk(clk),
    .in(in_q),
    .out(cic_q),
);

wire signed [OSZ - 1:0] out_i = cic_i[(CICSZ - 1):(CICSZ - OSZ)];
wire signed [OSZ - 1:0] out_q = cic_q[(CICSZ - 1):(CICSZ - OSZ)];

endmodule

