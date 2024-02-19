`timescale 1ns / 1ps

module axi_gpio
#(
    parameter NUM_GPIOS = 32,
    parameter GPIO_TRI_DEFAULT = 32'hFFFFFFFF,
    parameter GPIO_OUT_DEFAULT = 32'h00000000,
    parameter NUM_CDC_STAGES = 2,

    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 5 // ceil(log2(<number of 32-bit registers>)) + 2
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
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_I" *)
    input  [NUM_GPIOS - 1:0] gpio_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *)
    output [NUM_GPIOS - 1:0] gpio_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *)
    output [NUM_GPIOS - 1:0] gpio_t
);

localparam S_AXI_ADDR_LSB = 2;

wire [NUM_GPIOS - 1:0] gpio_i;
reg  [NUM_GPIOS - 1:0] gpio_o;
reg  [NUM_GPIOS - 1:0] gpio_t;
reg  [NUM_GPIOS - 1:0] gpio_i_sync [NUM_CDC_STAGES - 1:0];

integer i;

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

// IRQ CDC synchronizer
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                for(i = 0; i < NUM_CDC_STAGES; i = i + 1)
                    gpio_i_sync[i] <= 32'd0;
            end
        else
            begin
                gpio_i_sync[0] <= gpio_i;

                for(i = 1; i < NUM_CDC_STAGES; i = i + 1)
                    gpio_i_sync[i] <= gpio_i_sync[i - 1];
            end
    end

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                gpio_t <= GPIO_TRI_DEFAULT;
                gpio_o <= GPIO_OUT_DEFAULT;

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
                            3'h0:    s_axi_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            3'h1:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_t}; // GPIO Direction
                            3'h2:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_t}; // GPIO Direction (write 1 to set as input (set))
                            3'h3:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_t}; // GPIO Direction (write 1 to set as output (clear))
                            3'h4:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_o}; // GPIO Output
                            3'h5:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_o}; // GPIO Output (write 1 to set)
                            3'h6:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_o}; // GPIO Output (write 1 to clear)
                            3'h7:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_GPIOS){1'b0}}, gpio_i_sync[NUM_CDC_STAGES - 1]}; // GPIO Input
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end

                // Write data
                if(s_axi_wr_en)
                    begin
                        s_axi_bvalid <= 1'b1;
                        s_axi_bresp <= 2'b00; // Always respond OKAY

                        case(s_axi_awaddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            3'h0: // Register 0
                                begin
                                    // IP Version is not writable
                                end
                            3'h1: // Register 1
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_t[7:0] <= s_axi_wdata[7:0];
                                            else
                                                gpio_t[NUM_GPIOS - 1:0] <= s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_t[15:8] <= s_axi_wdata[15:8];
                                            else
                                                gpio_t[NUM_GPIOS - 1:8] <= s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_t[23:16] <= s_axi_wdata[23:16];
                                            else
                                                gpio_t[NUM_GPIOS - 1:16] <= s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_t[NUM_GPIOS - 1:24] <= s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h2: // Register 2
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_t[7:0] <= gpio_t[7:0] | s_axi_wdata[7:0];
                                            else
                                                gpio_t[NUM_GPIOS - 1:0] <= gpio_t[NUM_GPIOS - 1:0] | s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_t[15:8] <= gpio_t[15:8] | s_axi_wdata[15:8];
                                            else
                                                gpio_t[NUM_GPIOS - 1:8] <= gpio_t[NUM_GPIOS - 1:8] | s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_t[23:16] <= gpio_t[23:16] | s_axi_wdata[23:16];
                                            else
                                                gpio_t[NUM_GPIOS - 1:16] <= gpio_t[NUM_GPIOS - 1:16] | s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_t[NUM_GPIOS - 1:24] <= gpio_t[NUM_GPIOS - 1:24] | s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h3: // Register 3
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_t[7:0] <= gpio_t[7:0] & ~s_axi_wdata[7:0];
                                            else
                                                gpio_t[NUM_GPIOS - 1:0] <= gpio_t[NUM_GPIOS - 1:0] & ~s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_t[15:8] <= gpio_t[15:8] & ~s_axi_wdata[15:8];
                                            else
                                                gpio_t[NUM_GPIOS - 1:8] <= gpio_t[NUM_GPIOS - 1:8] & ~s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_t[23:16] <= gpio_t[23:16] & ~s_axi_wdata[23:16];
                                            else
                                                gpio_t[NUM_GPIOS - 1:16] <= gpio_t[NUM_GPIOS - 1:16] & ~s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_t[NUM_GPIOS - 1:24] <= gpio_t[NUM_GPIOS - 1:24] & ~s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h4: // Register 4
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_o[7:0] <= s_axi_wdata[7:0];
                                            else
                                                gpio_o[NUM_GPIOS - 1:0] <= s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_o[15:8] <= s_axi_wdata[15:8];
                                            else
                                                gpio_o[NUM_GPIOS - 1:8] <= s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_o[23:16] <= s_axi_wdata[23:16];
                                            else
                                                gpio_o[NUM_GPIOS - 1:16] <= s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_o[NUM_GPIOS - 1:24] <= s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h5: // Register 5
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_o[7:0] <= gpio_o[7:0] | s_axi_wdata[7:0];
                                            else
                                                gpio_o[NUM_GPIOS - 1:0] <= gpio_o[NUM_GPIOS - 1:0] | s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_o[15:8] <= gpio_o[15:8] | s_axi_wdata[15:8];
                                            else
                                                gpio_o[NUM_GPIOS - 1:8] <= gpio_o[NUM_GPIOS - 1:8] | s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_o[23:16] <= gpio_o[23:16] | s_axi_wdata[23:16];
                                            else
                                                gpio_o[NUM_GPIOS - 1:16] <= gpio_o[NUM_GPIOS - 1:16] | s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_o[NUM_GPIOS - 1:24] <= gpio_o[NUM_GPIOS - 1:24] | s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h6: // Register 6
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_GPIOS > 8)
                                                gpio_o[7:0] <= gpio_o[7:0] & ~s_axi_wdata[7:0];
                                            else
                                                gpio_o[NUM_GPIOS - 1:0] <= gpio_o[NUM_GPIOS - 1:0] & ~s_axi_wdata[NUM_GPIOS - 1:0];
                                        end

                                    if(NUM_GPIOS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_GPIOS > 16)
                                                gpio_o[15:8] <= gpio_o[15:8] & ~s_axi_wdata[15:8];
                                            else
                                                gpio_o[NUM_GPIOS - 1:8] <= gpio_o[NUM_GPIOS - 1:8] & ~s_axi_wdata[NUM_GPIOS - 1:8];
                                        end

                                    if(NUM_GPIOS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_GPIOS > 24)
                                                gpio_o[23:16] <= gpio_o[23:16] & ~s_axi_wdata[23:16];
                                            else
                                                gpio_o[NUM_GPIOS - 1:16] <= gpio_o[NUM_GPIOS - 1:16] & ~s_axi_wdata[NUM_GPIOS - 1:16];
                                        end

                                    if(NUM_GPIOS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            gpio_o[NUM_GPIOS - 1:24] <= gpio_o[NUM_GPIOS - 1:24] & ~s_axi_wdata[NUM_GPIOS - 1:24];
                                        end
                                end
                            3'h7: // Register 7
                                begin
                                    // GPIO Input is not writable
                                end
                        endcase
                    end
            end
    end

endmodule