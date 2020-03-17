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
wire [1:0]       quad = phs[PSZ - 1:PSZ - 2] + {1'b0, cos};
reg  [1:0]       quad_q;
reg              lo_sign;
reg  [PSZ - 3:0] lut_addr;

always @(posedge clk)
    begin
        if(reset)
            begin
                quad_q <= 2'b0;
                lut_addr <= {PSZ - 3{1'b0}};
                lo_sign <= 1'b0;
            end
        else
            begin
                quad_q <= quad;
                lut_addr <= phs[PSZ - 3:0] ^ {(PSZ - 2){quad[0]}};
                lo_sign <= quad_q[1];
            end
    end

// Look-up table
reg signed [15:0] sine_lut [0:1023];
reg signed [15:0] lo_raw;

initial
    $readmemh("./src/sine_lut.memh", sine_lut);

always @(posedge clk)
    lo_raw <= sine_lut[lut_addr];

// Apply sign to the LUT output and delay to align
reg signed [15:0] lo [0:1];

always @(posedge clk)
    begin
        if(reset)
            begin
                lo[0] <= 16'h0000;
                lo[1] <= 16'h0000;
            end
        else
            begin
                lo[0] <= lo_sign ? -lo_raw : lo_raw;
                lo[1] <= lo[0];
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
                mult <= in * lo[1];
                out <= out_sat;
            end
    end

endmodule

