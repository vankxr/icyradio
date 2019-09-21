module tuner
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input  signed [DSZ - 1:0] in,       // Input data
    input         [FSZ - 1:0] lo_freq,  // NCO Frequency tuning word
    input                     lo_ns_en, // NCO noise shaping enable
    output signed [DSZ - 1:0] out_i,    // In-phase output
    output signed [DSZ - 1:0] out_q     // Quadrature output
);

localparam DSZ = 16;  // Data word size
localparam FSZ = 26;  // NCO tuning word size
localparam PSZ = 12;  // Phase word size

// Phase accumulator
reg [FSZ - 1:0] acc;

always @(posedge clk)
    begin
        if(reset)
            acc <= {FSZ{1'b0}};
        else
            acc <= acc + lo_freq;
    end

// Noise shaping
reg  [FSZ - 1:0] ns_acc;
wire [PSZ - 1:0] phs = ns_acc[FSZ - 1:FSZ - PSZ];
wire [FSZ - 1:0] res = ns_acc[FSZ - PSZ - 1:0];

always @(posedge clk)
    begin
        if(reset == 1'b1)
            ns_acc <= {FSZ{1'b0}};
        else
            ns_acc <= acc + (lo_ns_en ? {{PSZ{res[FSZ - PSZ - 1]}}, res} : 0);
    end

// I tuner slice
tuner_mixer i_mixer
(
    .clk(clk),
    .reset(reset),
    .cos(1'b1),
    .in(in),
    .phs(phs),
    .out(out_i)
);

// Q tuner slice
tuner_mixer q_mixer
(
    .clk(clk),
    .reset(reset),
    .cos(1'b0),
    .in(in),
    .phs(phs),
    .out(out_q)
);

endmodule

