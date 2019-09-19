module tuner
(
    input                     clk,
    input                     reset,
    input  signed [DSZ - 1:0] in,
    input         [FSZ - 1:0] freq,
    input                     ns_en,
    output signed [DSZ - 1:0] out_i,
    output signed [DSZ - 1:0] out_q
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
            acc <= acc + freq;
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
            ns_acc <= acc + (ns_en ? {{PSZ{res[FSZ - PSZ - 1]}}, res} : 0);
    end

// I tuner slice
tuner_slice i_slice
(
    .clk(clk),
    .reset(reset),
    .shf_90(1'b1),
    .in(in),
    .phs(phs),
    .out(out_i)
);

// I tuner slice
tuner_slice q_slice
(
    .clk(clk),
    .reset(reset),
    .shf_90(1'b0),
    .in(in),
    .phs(phs),
    .out(out_q)
);

endmodule

