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
localparam CICSZ = 31; // CIC output word size -> (see CIC localparam OSZ)

// Clock divider
reg [4:0]   clk_div;
reg         cic_in_clk;

always @(posedge clk)
    begin
        if(reset)
            begin
                clk_div <= 5'b00000;
                cic_in_clk <= 1'b0;
            end
        else
            begin
                if(&clk_div) // Interpolation ratio (32) - 1
                    begin
                        cic_in_clk <= 1'b1;
                        clk_div <= 5'b00000;
                    end
                else
                    begin
                        cic_in_clk <= 1'b0;
                        clk_div <= clk_div + 1;
                    end
            end
    end

// CIC interpolators
wire                      cic_valid;
wire signed [CICSZ - 1:0] cic_i;
wire signed [CICSZ - 1:0] cic_q;

cic_interpolator cic_int_i
(
    .clk(cic_in_clk),
    .reset(reset),
    .out_clk(clk),
    .in(in_i),
    .out(cic_i),
);

cic_interpolator cic_int_q
(
    .clk(cic_in_clk),
    .reset(reset),
    .out_clk(clk),
    .in(in_q),
    .out(cic_q),
);

wire signed [OSZ - 1:0] out_i = cic_i[(CICSZ - 1):(CICSZ - OSZ)];
wire signed [OSZ - 1:0] out_q = cic_q[(CICSZ - 1):(CICSZ - OSZ)];

endmodule

