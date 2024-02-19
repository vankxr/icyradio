`timescale 1ns / 1ps

module axi_irq_controller
#(
    parameter PCIE_MSI_VEC_SIZE = 1,
    parameter PCIE_MSI_REQ_FIFO_DEPTH_W = 5, // log2(<number of PCIe MSI request FIFO entries>)
    parameter NUM_IRQS = 32, // Max: 32
    parameter NUM_CDC_STAGES = 2,

    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 8 // ceil(log2(<number of 32-bit registers>)) + 2
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

    // Async IRQ signals
    input [NUM_IRQS - 1:0] irq_in,

    // CPU signals
    output [31:0] cpu_irq_out,
    input  [31:0] cpu_eoi_in,

    // PCIe signals
    input                            pcie_msi_enabled,
    input                            pcie_msi_granted,
    input                      [2:0] pcie_msi_vector_width,
    output                           pcie_msi_request,
    output [PCIE_MSI_VEC_SIZE - 1:0] pcie_msi_vector
);

localparam S_AXI_ADDR_LSB = 2;

localparam NUM_IRQ_DESTS_W = 6; // log2(<max IRQ destinations>) - 32 MSI interrupts + 32 CPU interrupts (Max: 8 = 256 destinations)
localparam PCIE_MSI_REQ_FIFO_DEPTH = 1 << PCIE_MSI_REQ_FIFO_DEPTH_W;

wire        [NUM_IRQS - 1:0] irq_in;
reg         [NUM_IRQS - 1:0] irq_in_sync [NUM_CDC_STAGES - 1:0];
reg         [NUM_IRQS - 1:0] irq_in_q;
reg         [NUM_IRQS - 1:0] irq_in_rising;
reg         [NUM_IRQS - 1:0] irq_in_falling;
reg         [NUM_IRQS - 1:0] irq_pend;
reg         [NUM_IRQS - 1:0] irq_ack;
reg         [NUM_IRQS - 1:0] irq_enabled;
reg         [NUM_IRQS - 1:0] irq_inv; // 0 = normal, 1 = inverted
reg         [NUM_IRQS - 1:0] irq_mode; // 0 = level, 1 = edge
reg  [NUM_IRQ_DESTS_W - 1:0] irq_dest [NUM_IRQS - 1:0];

reg  [31:0] cpu_irq_out;
wire [31:0] cpu_eoi_in;

wire                                   pcie_msi_enabled;
wire                                   pcie_msi_granted;
wire                             [2:0] pcie_msi_vector_width;
reg                              [5:0] pcie_msi_vector_width_s;
reg                                    pcie_msi_request;
reg          [PCIE_MSI_VEC_SIZE - 1:0] pcie_msi_vector;
reg                              [2:0] pcie_msi_fsm_state;
reg          [PCIE_MSI_VEC_SIZE - 1:0] pcie_msi_req_fifo [PCIE_MSI_REQ_FIFO_DEPTH - 1:0]; // Hopefully inferred as Block RAM
reg  [PCIE_MSI_REQ_FIFO_DEPTH_W - 1:0] pcie_msi_req_fifo_wr_ptr;
reg          [PCIE_MSI_VEC_SIZE - 1:0] pcie_msi_req_fifo_wr_data;
reg                                    pcie_msi_req_fifo_wr_en;
reg  [PCIE_MSI_REQ_FIFO_DEPTH_W - 1:0] pcie_msi_req_fifo_rd_ptr;
reg          [PCIE_MSI_VEC_SIZE - 1:0] pcie_msi_req_fifo_rd_data;
reg                                    pcie_msi_req_fifo_rd_en;
reg                                    pcie_msi_req_fifo_rd_valid;
reg      [PCIE_MSI_REQ_FIFO_DEPTH_W:0] pcie_msi_req_fifo_count;
wire                                   pcie_msi_req_fifo_empty = ~|pcie_msi_req_fifo_count;
wire                                   pcie_msi_req_fifo_full = pcie_msi_req_fifo_count[PCIE_MSI_REQ_FIFO_DEPTH_W];

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
                    irq_in_sync[i] <= {NUM_IRQS{1'b0}};
            end
        else
            begin
                irq_in_sync[0] <= irq_in;

                for(i = 1; i < NUM_CDC_STAGES; i = i + 1)
                    irq_in_sync[i] <= irq_in_sync[i - 1];
            end
    end

// IRQ edge detector
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                irq_in_q <= {NUM_IRQS{1'b0}};

                irq_in_rising <= {NUM_IRQS{1'b0}};
                irq_in_falling <= {NUM_IRQS{1'b0}};
            end
        else
            begin
                irq_in_q <= irq_in_sync[NUM_CDC_STAGES - 1];

                irq_in_rising <= irq_in_sync[NUM_CDC_STAGES - 1] & ~irq_in_q;
                irq_in_falling <= ~irq_in_sync[NUM_CDC_STAGES - 1] & irq_in_q;
            end
    end

// PCIe MSI vector width shifter
always @(posedge aclk)
    begin
        case(pcie_msi_vector_width)
            3'b000:
                pcie_msi_vector_width_s <= 6'd1;
            3'b001:
                pcie_msi_vector_width_s <= 6'd2;
            3'b010:
                pcie_msi_vector_width_s <= 6'd4;
            3'b011:
                pcie_msi_vector_width_s <= 6'd8;
            3'b100:
                pcie_msi_vector_width_s <= 6'd16;
            3'b101:
                pcie_msi_vector_width_s <= 6'd32;
        endcase
    end

//// PCIe MSI request FIFO logic
// Read channel
always @(posedge aclk)
    begin
        if(pcie_msi_req_fifo_rd_en)
            pcie_msi_req_fifo_rd_data <= pcie_msi_req_fifo[pcie_msi_req_fifo_rd_ptr];
    end

// Write channel
always @(posedge aclk)
    begin
        if(pcie_msi_req_fifo_wr_en)
            pcie_msi_req_fifo[pcie_msi_req_fifo_wr_ptr] <= pcie_msi_req_fifo_wr_data;
    end

// Pointer logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                pcie_msi_req_fifo_wr_ptr <= {PCIE_MSI_REQ_FIFO_DEPTH_W{1'b0}};
                pcie_msi_req_fifo_rd_ptr <= {PCIE_MSI_REQ_FIFO_DEPTH_W{1'b0}};
                pcie_msi_req_fifo_count <= {(PCIE_MSI_REQ_FIFO_DEPTH_W + 1){1'b0}};

                pcie_msi_req_fifo_rd_valid <= 1'b0;
            end
        else
            begin
                pcie_msi_req_fifo_rd_valid <= pcie_msi_req_fifo_rd_en;

                if(pcie_msi_req_fifo_wr_en)
                    begin
                        pcie_msi_req_fifo_wr_ptr <= pcie_msi_req_fifo_wr_ptr + 1;
                        pcie_msi_req_fifo_count <= pcie_msi_req_fifo_count + 1;
                    end

                if(pcie_msi_req_fifo_rd_en)
                    begin
                        pcie_msi_req_fifo_rd_ptr <= pcie_msi_req_fifo_rd_ptr + 1;
                        pcie_msi_req_fifo_count <= pcie_msi_req_fifo_count - 1;
                    end

                if(pcie_msi_req_fifo_wr_en && pcie_msi_req_fifo_rd_en)
                    pcie_msi_req_fifo_count <= pcie_msi_req_fifo_count;
            end
    end

// PCIe MSI generation logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                pcie_msi_request <= 1'b0;
                pcie_msi_vector <= {PCIE_MSI_VEC_SIZE{1'b0}};

                pcie_msi_fsm_state <= 3'b000;

                pcie_msi_req_fifo_rd_en <= 1'b0;
            end
        else
            begin
                pcie_msi_request <= 1'b0;
                pcie_msi_vector <= {PCIE_MSI_VEC_SIZE{1'b0}};

                pcie_msi_req_fifo_rd_en <= 1'b0;

                case(pcie_msi_fsm_state)
                    2'b00: // Idle
                        begin
                            if(pcie_msi_enabled && !pcie_msi_req_fifo_empty)
                                begin
                                    pcie_msi_req_fifo_rd_en <= 1'b1;

                                    pcie_msi_fsm_state <= 2'b01;
                                end
                        end
                    2'b01: // Wait for FIFO read
                        begin
                            if(pcie_msi_req_fifo_rd_valid)
                                begin
                                    if(pcie_msi_enabled && pcie_msi_req_fifo_rd_data < pcie_msi_vector_width_s)
                                        begin
                                            pcie_msi_vector <= pcie_msi_req_fifo_rd_data;
                                            pcie_msi_request <= 1'b1;

                                            pcie_msi_fsm_state <= 2'b10;
                                        end
                                    else
                                        begin
                                            pcie_msi_fsm_state <= 2'b00;
                                        end
                                end
                        end
                    2'b10: // Wait for MSI grant
                        if(!pcie_msi_enabled || pcie_msi_granted)
                            pcie_msi_fsm_state <= 2'b00;
                    default:
                        pcie_msi_fsm_state <= 2'b00;
                endcase
            end
    end

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                irq_pend <= {NUM_IRQS{1'b0}};
                irq_ack <= {NUM_IRQS{1'b0}};
                irq_enabled <= {NUM_IRQS{1'b0}};
                irq_inv <= {NUM_IRQS{1'b0}};
                irq_mode <= {NUM_IRQS{1'b0}};

                cpu_irq_out <= 32'h00000000;

                pcie_msi_req_fifo_wr_en <= 1'b0;
                pcie_msi_req_fifo_wr_data <= {PCIE_MSI_VEC_SIZE{1'b0}};

                for(i = 0; i < NUM_IRQS; i = i + 1)
                    irq_dest[i] <= {NUM_IRQ_DESTS_W{1'b0}};

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
                            6'h0:    s_axi_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            6'h1:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_enabled}; // IRQ Enabled
                            6'h2:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_enabled}; // IRQ Enabled (write 1 to enable)
                            6'h3:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_enabled}; // IRQ Enabled (write 1 to disable)
                            6'h4:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_pend}; // IRQ Pending
                            6'h5:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_pend}; // IRQ Pending (write 1 to set)
                            6'h6:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_pend}; // IRQ Pending (write 1 to clear)
                            6'h7:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_ack}; // IRQ Acknowledged

                            6'h10:   s_axi_rdata <= {22'd0, pcie_msi_req_fifo_full, pcie_msi_req_fifo_empty, 4'd0, pcie_msi_vector_width, pcie_msi_enabled};
                            6'h11:   s_axi_rdata <= {{S_AXI_DSZ - PCIE_MSI_REQ_FIFO_DEPTH_W}, pcie_msi_req_fifo_wr_ptr};
                            6'h12:   s_axi_rdata <= {{S_AXI_DSZ - PCIE_MSI_REQ_FIFO_DEPTH_W}, pcie_msi_req_fifo_rd_ptr};
                            6'h13:   s_axi_rdata <= {{S_AXI_DSZ - PCIE_MSI_REQ_FIFO_DEPTH_W - 1}, pcie_msi_req_fifo_count};

                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase

                        for(i = 0; i < NUM_IRQS; i = i + 1)
                            begin
                                // Registers for this interrupt
                                if(s_axi_araddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB + 5] == {{(S_AXI_ASZ - S_AXI_ADDR_LSB - 5 - 1){1'b0}}, 1'b1})
                                    if(s_axi_araddr[S_AXI_ADDR_LSB + 4:S_AXI_ADDR_LSB] == i)
                                        s_axi_rdata <= {20'd0, irq_mode[i], irq_inv[i], irq_pend[i], irq_enabled[i], {(8 - NUM_IRQ_DESTS_W){1'b0}}, irq_dest[i]};
                            end
                    end

                // IRQ logic
                irq_ack <= irq_ack & irq_pend; // Unacknowledge interrupts that are no longer pending
                cpu_irq_out <= cpu_irq_out & ~cpu_eoi_in; // De-assert CPU interrupts that have been acknowledged
                pcie_msi_req_fifo_wr_en <= 1'b0;

                for(i = 0; i < NUM_IRQS; i = i + 1)
                    begin
                        case({irq_mode[i], irq_inv[i]})
                            2'b00: irq_pend[i] <= irq_pend[i] | irq_in_q[i]; // High level
                            2'b01: irq_pend[i] <= irq_pend[i] | ~irq_in_q[i]; // Low level
                            2'b10: irq_pend[i] <= irq_pend[i] | irq_in_rising[i]; // Rising edge
                            2'b11: irq_pend[i] <= irq_pend[i] | irq_in_falling[i]; // Falling edge
                        endcase

                        if(irq_pend[i] && irq_enabled[i] && !irq_ack[i])
                            begin
                                if(irq_dest[i] < 32) // To PCIe MSI
                                    begin
                                        if(pcie_msi_enabled && !pcie_msi_req_fifo_full && irq_dest[i] < pcie_msi_vector_width_s)
                                            begin
                                                irq_ack[i] <= 1'b1;

                                                pcie_msi_req_fifo_wr_en <= 1'b1;
                                                pcie_msi_req_fifo_wr_data <= irq_dest[i][PCIE_MSI_VEC_SIZE - 1:0];
                                            end
                                    end
                                else if(irq_dest[i] < 64) // To CPU
                                    begin
                                        if(!cpu_irq_out[irq_dest[i][4:0]])
                                            begin
                                                irq_ack[i] <= 1'b1;

                                                cpu_irq_out[irq_dest[i][4:0]] <= 1'b1;
                                            end
                                    end
                                else // Reserved
                                    begin
                                        irq_ack[i] <= 1'b1;
                                    end
                            end
                    end

                // Write data
                if(s_axi_wr_en)
                    begin
                        s_axi_bvalid <= 1'b1;
                        s_axi_bresp <= 2'b00; // Always respond OKAY

                        case(s_axi_awaddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            6'h0: // Register 0
                                begin
                                    // IP Version is not writable
                                end
                            6'h1: // Register 1
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_enabled[7:0] <= s_axi_wdata[7:0];
                                            else
                                                irq_enabled[NUM_IRQS - 1:0] <= s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_enabled[15:8] <= s_axi_wdata[15:8];
                                            else
                                                irq_enabled[NUM_IRQS - 1:8] <= s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_enabled[23:16] <= s_axi_wdata[23:16];
                                            else
                                                irq_enabled[NUM_IRQS - 1:16] <= s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_enabled[NUM_IRQS - 1:24] <= s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            6'h2: // Register 2
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_enabled[7:0] <= irq_enabled[7:0] | s_axi_wdata[7:0];
                                            else
                                                irq_enabled[NUM_IRQS - 1:0] <= irq_enabled[NUM_IRQS - 1:0] | s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_enabled[15:8] <= irq_enabled[15:8] | s_axi_wdata[15:8];
                                            else
                                                irq_enabled[NUM_IRQS - 1:8] <= irq_enabled[NUM_IRQS - 1:8] | s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_enabled[23:16] <= irq_enabled[23:16] | s_axi_wdata[23:16];
                                            else
                                                irq_enabled[NUM_IRQS - 1:16] <= irq_enabled[NUM_IRQS - 1:16] | s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_enabled[NUM_IRQS - 1:24] <= irq_enabled[NUM_IRQS - 1:24] | s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            6'h3: // Register 3
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_enabled[7:0] <= irq_enabled[7:0] & ~s_axi_wdata[7:0];
                                            else
                                                irq_enabled[NUM_IRQS - 1:0] <= irq_enabled[NUM_IRQS - 1:0] & ~s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_enabled[15:8] <= irq_enabled[15:8] & ~s_axi_wdata[15:8];
                                            else
                                                irq_enabled[NUM_IRQS - 1:8] <= irq_enabled[NUM_IRQS - 1:8] & ~s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_enabled[23:16] <= irq_enabled[23:16] & ~s_axi_wdata[23:16];
                                            else
                                                irq_enabled[NUM_IRQS - 1:16] <= irq_enabled[NUM_IRQS - 1:16] & ~s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_enabled[NUM_IRQS - 1:24] <= irq_enabled[NUM_IRQS - 1:24] & ~s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            6'h4: // Register 4
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_pend[7:0] <= s_axi_wdata[7:0];
                                            else
                                                irq_pend[NUM_IRQS - 1:0] <= s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_pend[15:8] <= s_axi_wdata[15:8];
                                            else
                                                irq_pend[NUM_IRQS - 1:8] <= s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_pend[23:16] <= s_axi_wdata[23:16];
                                            else
                                                irq_pend[NUM_IRQS - 1:16] <= s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_pend[NUM_IRQS - 1:24] <= s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            6'h5: // Register 5
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_pend[7:0] <= irq_pend[7:0] | s_axi_wdata[7:0];
                                            else
                                                irq_pend[NUM_IRQS - 1:0] <= irq_pend[NUM_IRQS - 1:0] | s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_pend[15:8] <= irq_pend[15:8] | s_axi_wdata[15:8];
                                            else
                                                irq_pend[NUM_IRQS - 1:8] <= irq_pend[NUM_IRQS - 1:8] | s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_pend[23:16] <= irq_pend[23:16] | s_axi_wdata[23:16];
                                            else
                                                irq_pend[NUM_IRQS - 1:16] <= irq_pend[NUM_IRQS - 1:16] | s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_pend[NUM_IRQS - 1:24] <= irq_pend[NUM_IRQS - 1:24] | s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            6'h6: // Register 6
                                begin
                                    if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_pend[7:0] <= irq_pend[7:0] & ~s_axi_wdata[7:0];
                                            else
                                                irq_pend[NUM_IRQS - 1:0] <= irq_pend[NUM_IRQS - 1:0] & ~s_axi_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_pend[15:8] <= irq_pend[15:8] & ~s_axi_wdata[15:8];
                                            else
                                                irq_pend[NUM_IRQS - 1:8] <= irq_pend[NUM_IRQS - 1:8] & ~s_axi_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_pend[23:16] <= irq_pend[23:16] & ~s_axi_wdata[23:16];
                                            else
                                                irq_pend[NUM_IRQS - 1:16] <= irq_pend[NUM_IRQS - 1:16] & ~s_axi_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            irq_pend[NUM_IRQS - 1:24] <= irq_pend[NUM_IRQS - 1:24] & ~s_axi_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                        endcase

                        for(i = 0; i < NUM_IRQS; i = i + 1)
                            begin
                                // Registers for this interrupt
                                if(s_axi_awaddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB + 5] == {{(S_AXI_ASZ - S_AXI_ADDR_LSB - 5 - 1){1'b0}}, 1'b1})
                                    begin
                                        if(s_axi_awaddr[S_AXI_ADDR_LSB + 4:S_AXI_ADDR_LSB] == i)
                                            begin
                                                if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                                    begin
                                                        irq_dest[i] <= s_axi_wdata[NUM_IRQ_DESTS_W - 1:0];
                                                    end

                                                if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                                    begin
                                                        irq_enabled[i] <= s_axi_wdata[8];
                                                        irq_pend[i] <= s_axi_wdata[9];
                                                        irq_inv[i] <= s_axi_wdata[10];
                                                        irq_mode[i] <= s_axi_wdata[11];
                                                    end

                                                // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                                //     begin

                                                //     end

                                                // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                                //     begin

                                                //     end
                                            end
                                    end
                            end
                    end
            end
    end

endmodule