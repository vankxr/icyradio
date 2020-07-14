module dpram
(
    input                   rd_clk,      // Read clock
    input                   wr_clk,      // Write clock
    input   [ASZ - 1:0]     rd_addr,     // Read address
    input   [ASZ - 1:0]     wr_addr,     // Write address
    output  [DSZ - 1:0]     data_out,    // Read data
    input   [DSZ - 1:0]     data_in,     // Write data
    input                   wr_en        // Write enable
);

parameter ASZ = 10; // 2 ^ 10 = 1024
parameter DSZ = 16;

reg [DSZ - 1:0] mem [0:(1 << ASZ) - 1];
reg [DSZ - 1:0] data_out;

always @(posedge rd_clk)
    data_out <= mem[rd_addr];

always @(posedge wr_clk)
    if(wr_en)
        mem[wr_addr] <= data_in;

endmodule