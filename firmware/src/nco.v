module nco
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input         [FSZ - 1:0] freq,     // Frequency tuning word
    input                     ns_en,    // Noise shaping enable
    output signed [DSZ - 1:0] out_i,    // In-phase output
    output signed [DSZ - 1:0] out_q     // Quadrature output
);

localparam DSZ = 16;  // Data word size
localparam FSZ = 31;  // Tuning word size
localparam PSZ = 11;  // Phase word size

// Phase accumulator
reg [FSZ - 1:0] acc;

always @(posedge clk)
    begin
        if(reset)
            acc <= {FSZ{1'b0}};
        else
            acc <= acc + freq;
    end

// Noise shaping
reg  [FSZ - 1:0] ns_acc;
wire [PSZ - 1:0] phs = ns_acc[FSZ - 1:FSZ - PSZ];
wire [FSZ - 1:0] res = ns_acc[FSZ - PSZ - 1:0];

always @(posedge clk)
    begin
        if(reset)
            ns_acc <= {FSZ{1'b0}};
        else
            ns_acc <= acc + (ns_en ? {{PSZ{res[FSZ - PSZ - 1]}}, res} : 0);
    end

// Split accumulator into quadrant and address and delay sign bit
wire [1:0]       i_quad = phs[PSZ - 1:PSZ - 2] + 2'b01; // Cosine (+90 deg)
wire [1:0]       q_quad = phs[PSZ - 1:PSZ - 2] + 2'b00; // Sine (+0 deg)
reg  [1:0]       i_sign;
reg  [1:0]       q_sign;
reg  [PSZ - 3:0] i_lut_addr;
reg  [PSZ - 3:0] q_lut_addr;

always @(posedge clk)
    begin
        if(reset)
            begin
                i_lut_addr <= {(PSZ - 3){1'b0}};
                q_lut_addr <= {(PSZ - 3){1'b0}};
                i_sign <= 2'b00;
                q_sign <= 2'b00;
            end
        else
            begin
                i_lut_addr <= phs[PSZ - 3:0] ^ {(PSZ - 2){i_quad[0]}};
                q_lut_addr <= phs[PSZ - 3:0] ^ {(PSZ - 2){q_quad[0]}};
                i_sign <= {i_sign[0], i_quad[1]};
                q_sign <= {q_sign[0], q_quad[1]};
            end
    end

// Look-up table
reg signed [DSZ - 1:0] i_sine_lut [0:511];
reg signed [DSZ - 1:0] q_sine_lut [0:511];
reg signed [DSZ - 1:0] i_raw;
reg signed [DSZ - 1:0] q_raw;

initial
    begin
        $readmemh("./src/sine_lut.memh", i_sine_lut);
        $readmemh("./src/sine_lut.memh", q_sine_lut);
    end

always @(posedge clk)
    begin
        i_raw <= i_sine_lut[i_lut_addr];
        q_raw <= q_sine_lut[q_lut_addr];
    end

// Apply sign to the LUT output and delay to align
reg signed [DSZ - 1:0] out_i;
reg signed [DSZ - 1:0] out_q;

always @(posedge clk)
    begin
        if(reset)
            begin
                out_i <= {DSZ{1'b0}};
                out_q <= {DSZ{1'b0}};
            end
        else
            begin
                out_i <= i_sign[1] ? -i_raw : i_raw;
                out_q <= q_sign[1] ? -q_raw : q_raw;
            end
    end

endmodule

