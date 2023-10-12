`timescale 1ns / 1ps

module axi_gpio
#(
    parameter GPIO_IN_MASK_DEFAULT = 32'hFFFFFFFF,
    parameter GPIO_OUT_DEFAULT = 32'h00000000,
    parameter NUM_CDC_STAGES = 2,

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

    // GPIO
    output [31:0] gpio_out,
    input  [31:0] gpio_in
);

reg [31:0] gpio_out;
reg [31:0] gpio_in_mask;
reg [31:0] gpio_in_sync [NUM_CDC_STAGES - 1:0];

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
wire	                     s_axi_reg_wren = s_axi_wready & s_axi_wvalid & s_axi_awready & s_axi_awvalid;

integer i;

// IRQ CDC synchronizer
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                for(i = 0; i < NUM_CDC_STAGES; i = i + 1)
                    gpio_in_sync[i] <= 32'd0;
            end
        else
            begin
                gpio_in_sync[0] <= gpio_in;

                for(i = 1; i < NUM_CDC_STAGES; i = i + 1)
                    gpio_in_sync[i] <= gpio_in_sync[i - 1];
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

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when AWREADY, WVALID, WREADY and WVALID are asserted.
// Write strobes are used to select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available and the slave is ready to accept the write address and write data.
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                gpio_in_mask <= GPIO_IN_MASK_DEFAULT;
                gpio_out <= GPIO_OUT_DEFAULT & ~GPIO_IN_MASK_DEFAULT;
            end
        else
            begin
                if(s_axi_reg_wren)
                    begin
                        case(s_axi_awaddr_q[ADDR_LSB + OPT_MEM_ADDR_BITS:ADDR_LSB])
                            1'h0: // Register 0 - Output Data
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        gpio_out[7:0] <= s_axi_wdata[7:0] & ~gpio_in_mask[7:0];

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        gpio_out[15:8] <= s_axi_wdata[15:8] & ~gpio_in_mask[15:8];

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        gpio_out[23:16] <= s_axi_wdata[23:16] & ~gpio_in_mask[23:16];

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        gpio_out[31:24] <= s_axi_wdata[31:24] & ~gpio_in_mask[31:24];
                                end
                            1'h1: // Register 1 - Input Mask
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        gpio_in_mask[7:0] <= s_axi_wdata[7:0];

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        gpio_in_mask[15:8] <= s_axi_wdata[15:8];

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        gpio_in_mask[23:16] <= s_axi_wdata[23:16];

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        gpio_in_mask[31:24] <= s_axi_wdata[31:24];
                                end
                        endcase
                    end
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
                            1'h0:    s_axi_rdata <= {(gpio_in_sync[NUM_CDC_STAGES - 1] & gpio_in_mask) | (gpio_out & ~gpio_in_mask)};
                            1'h1:    s_axi_rdata <= {gpio_in_mask};
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end
            end
    end

endmodule