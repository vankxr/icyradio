`timescale 1ns / 1ps

module axi_traffic_meter
#(
    localparam S_AXI_LITE_DSZ = 32,
    localparam S_AXI_LITE_ASZ = 6, // ceil(log2(<number of 32-bit registers>)) + 2
    localparam S_AXI_FULL_DSZ = 64,
    localparam S_AXI_FULL_ASZ = 32
)
(
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi_lite:s_axi_full, ASSOCIATED_RESET aresetn" *)
    input aclk,
    input aresetn,

    // Slave AXI (Register map access)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
    input       [S_AXI_LITE_ASZ - 1:0] s_axi_lite_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT" *)
    input                        [2:0] s_axi_lite_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *)
    input                              s_axi_lite_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *)
    output                             s_axi_lite_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *)
    input       [S_AXI_LITE_DSZ - 1:0] s_axi_lite_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *)
    input [(S_AXI_LITE_DSZ / 8) - 1:0] s_axi_lite_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *)
    input                              s_axi_lite_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *)
    output                             s_axi_lite_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *)
    output                       [1:0] s_axi_lite_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *)
    output                             s_axi_lite_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *)
    input                              s_axi_lite_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *)
    input       [S_AXI_LITE_ASZ - 1:0] s_axi_lite_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT" *)
    input                        [2:0] s_axi_lite_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *)
    input                              s_axi_lite_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *)
    output                             s_axi_lite_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *)
    output      [S_AXI_LITE_DSZ - 1:0] s_axi_lite_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *)
    output                       [1:0] s_axi_lite_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *)
    output                             s_axi_lite_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *)
    input                              s_axi_lite_rready,

    // Monitor AXI
    (* X_INTERFACE_MODE = "Monitor" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWID" *)
    input                        [3:0] s_axi_full_awid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWADDR" *)
    input       [S_AXI_FULL_ASZ - 1:0] s_axi_full_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWLEN" *)
    input                        [7:0] s_axi_full_awlen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWSIZE" *)
    input                        [2:0] s_axi_full_awsize,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWBURST" *)
    input                        [1:0] s_axi_full_awburst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWLOCK" *)
    input                              s_axi_full_awlock,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWCACHE" *)
    input                        [3:0] s_axi_full_awcache,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWPROT" *)
    input                        [2:0] s_axi_full_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWQOS" *)
    input                        [3:0] s_axi_full_awqos,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWVALID" *)
    input                              s_axi_full_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY" *)
    input                              s_axi_full_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WDATA" *)
    input       [S_AXI_FULL_DSZ - 1:0] s_axi_full_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WSTRB" *)
    input [(S_AXI_FULL_DSZ / 8) - 1:0] s_axi_full_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WLAST" *)
    input                              s_axi_full_wlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WVALID" *)
    input                              s_axi_full_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WREADY" *)
    input                              s_axi_full_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *)
    input                        [3:0] s_axi_full_bid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BRESP" *)
    input                        [1:0] s_axi_full_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BVALID" *)
    input                              s_axi_full_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BREADY" *)
    input                              s_axi_full_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARID" *)
    input                        [3:0] s_axi_full_arid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARADDR" *)
    input       [S_AXI_FULL_ASZ - 1:0] s_axi_full_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARLEN" *)
    input                        [7:0] s_axi_full_arlen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARSIZE" *)
    input                        [2:0] s_axi_full_arsize,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARBURST" *)
    input                        [1:0] s_axi_full_arburst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARLOCK" *)
    input                              s_axi_full_arlock,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARCACHE" *)
    input                        [3:0] s_axi_full_arcache,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARPROT" *)
    input                        [2:0] s_axi_full_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARQOS" *)
    input                        [3:0] s_axi_full_arqos,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARVALID" *)
    input                              s_axi_full_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY" *)
    input                              s_axi_full_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *)
    input                        [3:0] s_axi_full_rid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *)
    input       [S_AXI_FULL_DSZ - 1:0] s_axi_full_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RRESP" *)
    input                        [1:0] s_axi_full_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RLAST" *)
    input                              s_axi_full_rlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RVALID" *)
    input                              s_axi_full_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RREADY" *)
    input                              s_axi_full_rready
);

localparam S_AXI_LITE_ADDR_LSB = 2;
localparam S_AXI_FULL_ADDR_LSB = 3;

wire       [S_AXI_LITE_ASZ - 1:0] s_axi_lite_awaddr;
wire                        [2:0] s_axi_lite_awprot;
wire                              s_axi_lite_awvalid;
reg                               s_axi_lite_awready;
wire       [S_AXI_LITE_DSZ - 1:0] s_axi_lite_wdata;
wire [(S_AXI_LITE_DSZ / 8) - 1:0] s_axi_lite_wstrb;
wire                              s_axi_lite_wvalid;
wire                              s_axi_lite_wready;
reg                         [1:0] s_axi_lite_bresp;
reg                               s_axi_lite_bvalid;
wire                              s_axi_lite_bready;
wire       [S_AXI_LITE_ASZ - 1:0] s_axi_lite_araddr;
wire                        [2:0] s_axi_lite_arprot;
wire                              s_axi_lite_arvalid;
wire                              s_axi_lite_arready;
reg        [S_AXI_LITE_DSZ - 1:0] s_axi_lite_rdata;
reg                         [1:0] s_axi_lite_rresp;
reg                               s_axi_lite_rvalid;
wire                              s_axi_lite_rready;
wire                              s_axi_lite_wr_en; // Internal write enable
wire                              s_axi_lite_rd_en; // Internal read enable

assign s_axi_lite_wready = s_axi_lite_awready;
assign s_axi_lite_arready = !s_axi_lite_rvalid;
assign s_axi_lite_wr_en = s_axi_lite_awready;
assign s_axi_lite_rd_en = s_axi_lite_arready && s_axi_lite_arvalid;

wire                        [3:0] s_axi_full_awid;
wire       [S_AXI_FULL_ASZ - 1:0] s_axi_full_awaddr;
wire                        [7:0] s_axi_full_awlen;
wire                        [2:0] s_axi_full_awsize;
wire                        [1:0] s_axi_full_awburst;
wire                              s_axi_full_awlock;
wire                        [3:0] s_axi_full_awcache;
wire                        [2:0] s_axi_full_awprot;
wire                        [3:0] s_axi_full_awqos;
wire                              s_axi_full_awvalid;
wire                              s_axi_full_awready;
wire       [S_AXI_FULL_DSZ - 1:0] s_axi_full_wdata;
wire [(S_AXI_FULL_DSZ / 8) - 1:0] s_axi_full_wstrb;
wire                              s_axi_full_wlast;
wire                              s_axi_full_wvalid;
wire                              s_axi_full_wready;
wire                        [3:0] s_axi_full_bid;
wire                        [1:0] s_axi_full_bresp;
wire                              s_axi_full_bvalid;
wire                              s_axi_full_bready;
wire                        [3:0] s_axi_full_arid;
wire       [S_AXI_FULL_ASZ - 1:0] s_axi_full_araddr;
wire                        [7:0] s_axi_full_arlen;
wire                        [2:0] s_axi_full_arsize;
wire                        [1:0] s_axi_full_arburst;
wire                              s_axi_full_arlock;
wire                        [3:0] s_axi_full_arcache;
wire                        [2:0] s_axi_full_arprot;
wire                        [3:0] s_axi_full_arqos;
wire                              s_axi_full_arvalid;
wire                              s_axi_full_arready;
wire                        [3:0] s_axi_full_rid;
wire       [S_AXI_FULL_DSZ - 1:0] s_axi_full_rdata;
wire                        [1:0] s_axi_full_rresp;
wire                              s_axi_full_rlast;
wire                              s_axi_full_rvalid;
wire                              s_axi_full_rready;

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                // AXI-Lite signals
                s_axi_lite_awready <= 1'b0;
                s_axi_lite_bresp <= 2'b00;
                s_axi_lite_bvalid <= 1'b0;
                s_axi_lite_rdata <= {S_AXI_LITE_DSZ{1'b0}};
                s_axi_lite_rresp <= 2'b00;
                s_axi_lite_rvalid <= 1'b0;
            end
        else
            begin
                // Write address ready generation
                s_axi_lite_awready <= !s_axi_lite_awready && (s_axi_lite_awvalid && s_axi_lite_wvalid) && (!s_axi_lite_bvalid || s_axi_lite_bready);

                // Clear the write response valid when the master acknowledges it
                if(s_axi_lite_bready)
                    begin
                        s_axi_lite_bvalid <= 1'b0;
                        s_axi_lite_bresp <= 2'b00;
                    end

                // Clear the read data valid when the master acknowledges it
                if(s_axi_lite_rready)
                    begin
                        s_axi_lite_rvalid <= 1'b0;
                        s_axi_lite_rresp <= 2'b00;
                        s_axi_lite_rdata <= {S_AXI_LITE_DSZ{1'b0}};
                    end

                // Read data
                if(s_axi_lite_rd_en)
                    begin
                        s_axi_lite_rvalid <= 1'b1;
                        s_axi_lite_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_lite_araddr[S_AXI_LITE_ASZ - 1:S_AXI_LITE_ADDR_LSB])
                            4'h0:    s_axi_lite_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            default: s_axi_lite_rdata <= {S_AXI_LITE_DSZ{1'b0}};
                        endcase
                    end

                // Write data
                if(s_axi_lite_wr_en)
                    begin
                        s_axi_lite_bvalid <= 1'b1;
                        s_axi_lite_bresp <= 2'b00; // Always respond OKAY

                        case(s_axi_lite_awaddr[S_AXI_LITE_ASZ - 1:S_AXI_LITE_ADDR_LSB])
                            4'h0: // Register 0
                                begin
                                    // IP Version is not writable
                                end
                        endcase
                    end
            end
    end

endmodule