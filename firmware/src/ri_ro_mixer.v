module ri_ro_mixer
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input  signed [DSZ - 1:0] in,       // Input
    input  signed [DSZ - 1:0] lo,       // LO
    output signed [DSZ - 1:0] out       // Output
);

localparam DSZ = 16;  // Data word size

// Multiply, round and saturate
reg  signed [DSZ + DSZ - 1:0] mult;
reg  signed [DSZ + 1:0]       mult_rnd;
wire signed [DSZ - 1:0]       mult_sat;
reg  signed [DSZ - 1:0]       out;

saturator #(
    .ISZ(DSZ + 1),
    .OSZ(DSZ)
)
mult_saturator
(
    .in(mult_rnd[DSZ + 1:1]),
    .out(mult_sat)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                mult <= {(DSZ + DSZ){1'b0}};
                mult_rnd <= {(DSZ + 2){1'b0}};
                out <= {DSZ{1'b0}};
            end
        else
            begin
                mult <= in * lo;
                mult_rnd <= mult[DSZ + DSZ - 1:DSZ - 2] + 1'b1;
                out <= mult_sat;
            end
    end

endmodule

