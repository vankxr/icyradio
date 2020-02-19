module synchronizer
(
    input   clk,    // Destination clock
    input   in,     // Input data
    output  out     // Output synchronized data
);

reg [1:0] sync;

assign out = sync[1];

always @(clk)
    sync <= {sync[0], in};

endmodule

