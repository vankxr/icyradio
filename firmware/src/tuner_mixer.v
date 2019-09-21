module tuner_mixer
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input                     cos,      // Phase (1 for cos (+90º) 0 for sin)
    input  signed [DSZ - 1:0] in,       // Input data
    input         [PSZ - 1:0] phs,      // Input phase from NCO
    output signed [DSZ - 1:0] out       // Output data
);

localparam DSZ = 16;  // Data word size
localparam PSZ = 12;  // Phase word size

// Split accumulator into quadrant and address and delay sign bit
wire [1:0]       p_quad = phs[PSZ - 1:PSZ - 2] + {1'b0, cos};
reg  [1:0]       quad;
reg  [PSZ - 3:0] addr;
reg              sincos_sign;

always @(posedge clk)
    begin
        if(reset)
            begin
                quad <= 2'b0;
                addr <= 8'b0;
                sincos_sign <= 1'b0;
            end
        else
            begin
                quad <= p_quad;
                addr <= phs[PSZ - 3:0] ^ {(PSZ - 2){p_quad[0]}};
                sincos_sign <= quad[1];
            end
    end

// Look-up table
reg signed [15:0] sine_lut [0:1023];
reg signed [15:0] sincos_raw;

initial
    $readmemh("./src/sine_lut.memh", sine_lut);

always @(posedge clk)
    sincos_raw <= sine_lut[addr];

// Invert sign of lut output and delay to align
reg signed [15:0] sincos_p;
reg signed [15:0] sincos;

always @(posedge clk)
    begin
        if(reset)
            begin
                sincos_p <= 16'h0000;
                sincos <= 16'h0000;
            end
        else
            begin
                sincos_p <= sincos_sign ? -sincos_raw : sincos_raw;
                sincos <= sincos_p;
            end
    end

// Multiply, round and saturate
reg  signed [DSZ + 16 - 1:0] mult;
wire signed [DSZ + 1:0]      out_rnd = mult[DSZ + 16 - 1:14] + 12'd1;
wire signed [DSZ - 1:0]      out_sat;
reg  signed [DSZ - 1:0]      out;

saturator #(
    .ISZ(DSZ + 1),
    .OSZ(DSZ)
)
out_saturator
(
    .in(out_rnd[DSZ + 1:1]),
    .out(out_sat)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                mult <= {(DSZ + 16){1'b0}};
                out <= {DSZ{1'b0}};
            end
        else
            begin
                mult <= in * sincos;
                out <= out_sat;
            end
    end

endmodule

