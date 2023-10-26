`timescale 1ns / 1ps

module axi_dna
#(
    parameter DNA_CLK_DIV = 8, // DNA clock divider (max 16)

    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 3, // ceil(log2(<number of 32-bit registers>)) + 2
    localparam ADDR_LSB = (S_AXI_DSZ / 32) + 1,
    localparam OPT_MEM_ADDR_BITS = S_AXI_ASZ - 3
)
(
    input aclk,
    input aresetn,

    // Slave AXI (Register map access)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
    input       [S_AXI_ASZ - 1:0] s_axi_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *)
    input                   [2:0] s_axi_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
    input                         s_axi_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
    output                        s_axi_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
    input       [S_AXI_DSZ - 1:0] s_axi_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
    input [(S_AXI_DSZ / 8) - 1:0] s_axi_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
    input                         s_axi_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
    output                        s_axi_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
    output                  [1:0] s_axi_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
    output                        s_axi_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
    input                         s_axi_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
    input       [S_AXI_ASZ - 1:0] s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *)
    input                   [2:0] s_axi_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
    input                         s_axi_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
    output                        s_axi_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
    output      [S_AXI_DSZ - 1:0] s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
    output                  [1:0] s_axi_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
    output                        s_axi_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
    input                         s_axi_rready,

    // Parallel DNA output
    (* X_INTERFACE_IGNORE = "true" *)
    output [56:0] dna,
    (* X_INTERFACE_IGNORE = "true" *)
    output        dna_ready
);

reg [56:0] dna;
wire       dna_dout;
reg        dna_clk;
reg  [3:0] dna_clk_div_cnt;
wire       dna_clk_toggle = (dna_clk_div_cnt == (DNA_CLK_DIV - 1));
wire       dna_clk_rising = dna_clk_toggle & ~dna_clk;
wire       dna_clk_falling = dna_clk_toggle & dna_clk;
reg  [5:0] dna_shift_cnt;
reg        dna_ready;

DNA_PORT #(
   .SIM_DNA_VALUE(57'h000000000000000)  // Specifies a sample 57-bit DNA value for simulation
)
DNA_PORT_inst
(
   .DOUT(dna_dout),     // 1-bit output: DNA output data.
   .CLK(dna_clk),       // 1-bit input: Clock input.
   .DIN(1'b0),          // 1-bit input: User data input pin.
   .READ(~aresetn),     // 1-bit input: Active high load DNA, active low read input.
   .SHIFT(1'b1)         // 1-bit input: Active high shift enable input.
);

wire       [S_AXI_ASZ - 1:0] s_axi_awaddr;
reg        [S_AXI_ASZ - 1:0] s_axi_awaddr_q;
wire                   [2:0] s_axi_awprot;
wire                         s_axi_awvalid;
reg                          s_axi_awready;
wire       [S_AXI_DSZ - 1:0] s_axi_wdata;
wire [(S_AXI_DSZ / 8) - 1:0] s_axi_wstrb;
wire                         s_axi_wvalid;
reg                          s_axi_wready;
reg                    [1:0] s_axi_bresp;
reg                          s_axi_bvalid;
wire                         s_axi_bready;
wire       [S_AXI_ASZ - 1:0] s_axi_araddr;
reg        [S_AXI_ASZ - 1:0] s_axi_araddr_q;
wire                   [2:0] s_axi_arprot;
wire                         s_axi_arvalid;
reg                          s_axi_arready;
reg        [S_AXI_DSZ - 1:0] s_axi_rdata;
reg                    [1:0] s_axi_rresp;
reg                          s_axi_rvalid;
wire                         s_axi_rready;
reg	                         s_axi_aw_en;
wire	                     s_axi_reg_rden = s_axi_arready & s_axi_arvalid & ~s_axi_rvalid;

integer i;

// Clock generation
always @(posedge aclk)
    begin
        if(!dna_ready)
            begin
                dna_clk_div_cnt = dna_clk_div_cnt + 1;

                if(dna_clk_toggle)
                    begin
                        dna_clk_div_cnt <= 4'd0;
                        dna_clk <= ~dna_clk;
                    end
            end
        else
            begin
                dna_clk_div_cnt <= 4'd0;
                dna_clk <= 1'b0;
            end
    end

// DNA readout logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                dna <= 57'd0;
                dna_shift_cnt <= 6'd0;
                dna_ready <= 1'b0;
            end
        else
            begin
                if(!dna_ready && dna_clk_rising)
                    begin
                        if(dna_shift_cnt < 6'd57)
                            begin
                                dna_shift_cnt <= dna_shift_cnt + 1;
                                dna_ready <= 1'b0;

                                dna <= {dna[55:0], dna_dout};
                            end
                        else
                            begin
                                dna_ready <= 1'b1;
                            end
                    end
            end
    end

//// AXI Memory map register space logic
// Implement AWREADY generation
// AWREADY is asserted for one ACLK clock cycle when both AWVALID and WVALID are asserted.
// AWREADY is de-asserted when reset is low.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_awready <= 1'b0;
                s_axi_aw_en <= 1'b1;
            end
        else
            begin
                if(~s_axi_awready && s_axi_awvalid && s_axi_wvalid && s_axi_aw_en)
                    begin
                        s_axi_awready <= 1'b1;
                        s_axi_aw_en <= 1'b0;
                    end
                else if(s_axi_bready && s_axi_bvalid)
                    begin
                        s_axi_aw_en <= 1'b1;
                        s_axi_awready <= 1'b0;
                    end
                else
                    begin
                        s_axi_awready <= 1'b0;
                    end
            end
    end

// Implement AWADDR latching
// This process is used to latch the address when both AWVALID and WVALID are valid.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_awaddr_q <= {S_AXI_ASZ{1'b0}};
            end
        else
            begin
                if(~s_axi_awready && s_axi_awvalid && s_axi_wvalid && s_axi_aw_en) // Write Address latching
                    s_axi_awaddr_q <= s_axi_awaddr;
            end
    end

// Implement WREADY generation
// WREADY is asserted for one ACLK clock cycle when both AWVALID and WVALID are asserted.
// WREADY is de-asserted when reset is low.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_wready <= 1'b0;
            end
        else
            begin
                if(~s_axi_wready && s_axi_wvalid && s_axi_awvalid && s_axi_aw_en)
                    s_axi_wready <= 1'b1;
                else
                    s_axi_wready <= 1'b0;
            end
    end

// Implement write response logic generation
// The write response and response valid signals are asserted by the slave when WREADY, WVALID, WREADY and WVALID are asserted.
// This marks the acceptance of address and indicates the status of write transaction.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_bvalid <= 1'b0;
                s_axi_bresp <= 2'b00;
            end
        else
            begin
                if(s_axi_awready && s_axi_awvalid && ~s_axi_bvalid && s_axi_wready && s_axi_wvalid)
                    begin
                        s_axi_bvalid <= 1'b1;
                        s_axi_bresp <= 2'b00; // 'OKAY' response
                    end
                else
                    begin
                        if(s_axi_bready && s_axi_bvalid)
                            s_axi_bvalid <= 1'b0;
                    end
            end
    end

// Implement ARREADY generation
// ARREADY is asserted for one aclk clock cycle when ARVALID is asserted.
// AWREADY is de-asserted when reset (active low) is asserted.
// The read address is also latched when ARVALID is asserted.
// ARADDR is reset to zero on reset assertion.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_arready <= 1'b0;
                s_axi_araddr_q <= {S_AXI_ASZ{1'b0}};
            end
        else
            begin
                if(~s_axi_arready && s_axi_arvalid)
                    begin
                        s_axi_arready <= 1'b1;
                        s_axi_araddr_q <= s_axi_araddr;
                    end
                else
                    begin
                        s_axi_arready <= 1'b0;
                    end
            end
    end

// Implement ARVALID generation
// RVALID is asserted for one ACLK clock cycle when both ARVALID and ARREADY are asserted.
// The slave registers data are available on the RDATA bus at this instance.
// The assertion of RVALID marks the validity of read data on the bus and RRESP indicates the status of read transaction.
// RVALID is deasserted on reset (active low).
// RRESP and RDATA are cleared to zero on reset (active low).
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_rvalid <= 0;
                s_axi_rresp <= 2'b00;
            end
        else
            begin
                if(s_axi_arready && s_axi_arvalid && ~s_axi_rvalid)
                    begin
                        s_axi_rvalid <= 1'b1;
                        s_axi_rresp  <= 2'b00; // 'OKAY' response
                    end
                else if(s_axi_rvalid && s_axi_rready)
                    begin
                        s_axi_rvalid <= 1'b0;
                    end
            end
    end

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available and the slave is ready to accept the read address.
// Output register or memory read data
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                s_axi_rdata <= {S_AXI_DSZ{1'b0}};
            end
        else
            begin
                if(s_axi_reg_rden)
                    begin
                        case(s_axi_araddr_q[ADDR_LSB + OPT_MEM_ADDR_BITS:ADDR_LSB])
                            1'h0:    s_axi_rdata <= {dna[31:0]};
                            1'h1:    s_axi_rdata <= {dna_ready, 6'd0, dna[56:32]};
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end
            end
    end

endmodule