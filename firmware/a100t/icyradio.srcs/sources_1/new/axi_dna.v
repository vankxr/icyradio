`timescale 1ns / 1ps

module axi_dna
#(
    parameter DNA_CLK_DIV = 8, // DNA clock divider (max 16)

    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 5 // ceil(log2(<number of 32-bit registers>)) + 2
)
(
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn" *)
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
    output        dna_ready,

    // User eFUSE register
    (* X_INTERFACE_IGNORE = "true" *)
    output [31:0] efuse_usr,

    // User access register
    (* X_INTERFACE_IGNORE = "true" *)
    output [31:0] usr_access
);

localparam S_AXI_ADDR_LSB = 2;

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

wire [31:0] efuse_usr;

EFUSE_USR #(
   .SIM_EFUSE_VALUE(32'h00000000) // Value of the 32-bit non-volatile value used in simulation
)
EFUSE_USR_inst
(
   .EFUSEUSR(efuse_usr)            // 32-bit output: User eFUSE register value output
);

wire [31:0] usr_access_r;
reg  [31:0] usr_access;
reg         usr_access_ready;
wire        usr_access_valid;

USR_ACCESSE2 USR_ACCESSE2_inst (
   .CFGCLK(),                    // 1-bit output: Configuration Clock
   .DATA(usr_access_r),            // 32-bit output: Configuration Data reflecting the contents of the AXSS register
   .DATAVALID(usr_access_valid)  // 1-bit output: Active-High Data Valid
);

wire       [S_AXI_ASZ - 1:0] s_axi_awaddr;
wire                   [2:0] s_axi_awprot;
wire                         s_axi_awvalid;
reg                          s_axi_awready;
wire       [S_AXI_DSZ - 1:0] s_axi_wdata;
wire [(S_AXI_DSZ / 8) - 1:0] s_axi_wstrb;
wire                         s_axi_wvalid;
wire                         s_axi_wready;
reg                    [1:0] s_axi_bresp;
reg                          s_axi_bvalid;
wire                         s_axi_bready;
wire       [S_AXI_ASZ - 1:0] s_axi_araddr;
wire                   [2:0] s_axi_arprot;
wire                         s_axi_arvalid;
wire                         s_axi_arready;
reg        [S_AXI_DSZ - 1:0] s_axi_rdata;
reg                    [1:0] s_axi_rresp;
reg                          s_axi_rvalid;
wire                         s_axi_rready;
wire                         s_axi_wr_en; // Internal write enable
wire                         s_axi_rd_en; // Internal read enable

assign s_axi_wready = s_axi_awready;
assign s_axi_arready = !s_axi_rvalid;
assign s_axi_wr_en = s_axi_awready;
assign s_axi_rd_en = s_axi_arready && s_axi_arvalid;

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

// usr_access_r register latching logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                usr_access <= 32'h00000000;
                usr_access_ready <= 1'b0;
            end
        else
            begin
                usr_access_ready <= 1'b1;

                if(!usr_access_ready || usr_access_valid)
                    usr_access <= usr_access_r;
            end
    end

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                // AXI-Lite signals
                s_axi_awready <= 1'b0;
                s_axi_bresp <= 2'b00;
                s_axi_bvalid <= 1'b0;
                s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                s_axi_rresp <= 2'b00;
                s_axi_rvalid <= 1'b0;
            end
        else
            begin
                // Write address ready generation
                s_axi_awready <= !s_axi_awready && (s_axi_awvalid && s_axi_wvalid) && (!s_axi_bvalid || s_axi_bready);

                // Clear the write response valid when the master acknowledges it
                if(s_axi_bready)
                    begin
                        s_axi_bvalid <= 1'b0;
                        s_axi_bresp <= 2'b00;
                    end

                // Clear the read data valid when the master acknowledges it
                if(s_axi_rready)
                    begin
                        s_axi_rvalid <= 1'b0;
                        s_axi_rresp <= 2'b00;
                        s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                    end

                // Read data
                if(s_axi_rd_en)
                    begin
                        s_axi_rvalid <= 1'b1;
                        s_axi_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_araddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            3'h0:    s_axi_rdata <= 32'h52594349; // "RYCI" - ICYRADIO ASCII
                            3'h1:    s_axi_rdata <= 32'h4F494441; // "OIDA" - ICYRADIO ASCII
                            3'h2:    s_axi_rdata <= {16'd1, 8'd0, 8'd0}; // v1.0.0
                            3'h3:    s_axi_rdata <= {8'h41, 16'd100, 8'd2}; // Artix 100T - Speed grade 2
                            3'h4:    s_axi_rdata <= usr_access;
                            3'h5:    s_axi_rdata <= efuse_usr;
                            3'h6:    s_axi_rdata <= {dna[31:0]};
                            3'h7:    s_axi_rdata <= {dna_ready, 6'd0, dna[56:32]};
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end

                // Write data
                if(s_axi_wr_en)
                    begin
                        s_axi_bvalid <= 1'b1;
                        s_axi_bresp <= 2'b10; // Always respond SLVERR

                        // case(s_axi_awaddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])

                        // endcase
                    end
            end
    end

endmodule