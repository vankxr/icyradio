module bram
(
    // Clocks
    input                       clk,
    // Address
    input   [(ADDRSIZE - 1):0]  addr,
    // Data
    input   [(WORDSIZE - 1):0]  data_in,
    output  [(WORDSIZE - 1):0]  data_out,
    // Control signals
    input                       we
);

localparam ADDRSIZE = 13; // 2 ^ 13 = 8192
localparam WORDSIZE = 16;

reg [(WORDSIZE - 1):0] mem [0:((1 << ADDRSIZE) - 1)];
reg [(WORDSIZE - 1):0] data_out;

always @(posedge clk)
    begin
        if(we)
            mem[addr] <= data_in;

        data_out <= mem[addr];
    end

endmodule