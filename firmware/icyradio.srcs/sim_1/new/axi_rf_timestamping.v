`timescale 1ns / 1ps

module axi_rf_timestamping
#(
    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 6, // ceil(log2(<number of 32-bit registers>)) + 2
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

    // DMA signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  tx_dma_data_ready,   // TX DMA ready to send data
    (* X_INTERFACE_IGNORE = "true" *)
    input  rx_dma_xfer_req,     // RX DMA ready to receive data

    // TRX signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  tx_data_ready,       // DAC ready to receive data
    (* X_INTERFACE_IGNORE = "true" *)
    input  rx_data_ready,       // ADC ready to send data

    // FIFO signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  tx_fifo_underflow,   // TX FIFO underflow
    (* X_INTERFACE_IGNORE = "true" *)
    input  rx_fifo_overflow,    // RX FIFO overflow

    // TX/RX enable signals
    (* X_INTERFACE_IGNORE = "true" *)
    output tx_enable,           // Use to gate data to TRX, allow data to pass when high
    (* X_INTERFACE_IGNORE = "true" *)
    output rx_enable            // Use to gate data to DMA, allow data to pass when high
);

wire tx_dma_data_ready;
wire rx_dma_xfer_req;
wire tx_data_ready;
wire rx_data_ready;
reg  tx_enable;
reg  rx_enable;

reg  tx_dma_data_ready_stky;    // Sticky TX DMA ready signal (i.e., Once set, it remains set until cleared by a read to the register)
reg  tx_dma_data_ready_ovr_en;  // Override TX DMA ready signal
reg  tx_dma_data_ready_ovr_val; // Value to override TX DMA ready signal with
wire tx_dma_data_ready_ovr = tx_dma_data_ready_ovr_en ? tx_dma_data_ready_ovr_val : tx_dma_data_ready;
reg  rx_dma_xfer_req_stky;      // Sticky RX DMA xfer req signal (i.e., Once set, it remains set until cleared by a read to the register)
reg  rx_dma_xfer_req_ovr_en;    // Override RX DMA xfer req signal
reg  rx_dma_xfer_req_ovr_val;   // Value to override RX DMA xfer req signal with
wire rx_dma_xfer_req_ovr = rx_dma_xfer_req_ovr_en ? rx_dma_xfer_req_ovr_val : rx_dma_xfer_req;
reg  tx_data_ready_stky;        // Sticky TX ready signal (i.e., Once set, it remains set until cleared by a read to the register)
reg  tx_data_ready_ovr_en;      // Override TX ready signal
reg  tx_data_ready_ovr_val;     // Value to override TX ready signal with
wire tx_data_ready_ovr = tx_data_ready_ovr_en ? tx_data_ready_ovr_val : tx_data_ready;
reg  rx_data_ready_stky;        // Sticky RX ready signal (i.e., Once set, it remains set until cleared by a read to the register)
reg  rx_data_ready_ovr_en;      // Override RX ready signal
reg  rx_data_ready_ovr_val;     // Value to override RX ready signal with
wire rx_data_ready_ovr = rx_data_ready_ovr_en ? rx_data_ready_ovr_val : rx_data_ready;
reg  tx_fifo_underflow_stky;    // Sticky TX FIFO underflow signal (i.e., Once set, it remains set until cleared by a read to the register)
reg  rx_fifo_overflow_stky;     // Sticky RX FIFO overflow signal (i.e., Once set, it remains set until cleared by a read to the register)

reg [63:0] cnt;                 // Sample counter
reg [31:0] cnt_rd_buf;          // Buffer to read the counter value from a 32-bit bus
reg [63:0] cnt_latched;         // Latched counter value (represents the timestamp of the first sample to enter the DMA)
reg [63:0] cnt_tx;              // Timestamp for TX start
reg [63:0] cnt_rx;              // Timestamp for RX start
reg        cnt_en;              // Enable counter
reg        cnt_en_q;            // Enable counter (synced to data ready)
reg        cnt_tx_en;           // Enable TX start trigger
reg        cnt_rx_en;           // Enable RX start trigger
reg        cnt_latch_armed;     // Latch arm signal
reg        cnt_latch_arm_req;   // Latch arm request signal
reg        cnt_latch_valid;     // Latch valid signal, indicates that cnt_latched has valid (unread) data

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
                tx_enable <= 1'b0;
                rx_enable <= 1'b0;

                tx_dma_data_ready_ovr_en <= 1'b0;
                tx_dma_data_ready_ovr_val <= 1'b0;
                rx_dma_xfer_req_ovr_en <= 1'b0;
                rx_dma_xfer_req_ovr_val <= 1'b0;
                tx_data_ready_ovr_en <= 1'b0;
                tx_data_ready_ovr_val <= 1'b0;
                rx_data_ready_ovr_en <= 1'b0;
                rx_data_ready_ovr_val <= 1'b0;

                cnt <= 64'd0;
                cnt_tx <= 64'd0;
                cnt_rx <= 64'd0;
                cnt_en <= 1'b0;
                cnt_en_q <= 1'b0;
                cnt_tx_en <= 1'b0;
                cnt_rx_en <= 1'b0;
                cnt_latch_armed <= 1'b0;
                cnt_latch_arm_req <= 1'b0;
            end
        else
            begin
                // Sample counter logic
                if(cnt_en)
                    begin
                        if(cnt_en_q)
                            begin
                                cnt <= cnt + 1;
                            end
                        else
                            begin
                                cnt <= 64'd0;
                                cnt_en_q <= tx_data_ready | rx_data_ready;
                            end
                    end
                else
                    begin
                        cnt <= 64'd0;
                        cnt_en_q <= 1'b0;
                    end

                // Latch arm logic
                if(cnt_latch_valid)
                    begin
                        cnt_latch_armed <= 1'b0;
                    end
                else if(cnt_latch_arm_req && !cnt_latch_valid && (!rx_data_ready_ovr || !rx_dma_xfer_req_ovr || !rx_enable))
                    begin
                        cnt_latch_armed <= 1'b1;
                        cnt_latch_arm_req <= 1'b0;
                    end

                // TX start trigger logic
                if(cnt_tx_en && cnt == cnt_tx)
                    begin
                        tx_enable <= ~tx_enable;
                        cnt_tx_en <= 1'b0;
                    end

                // RX start trigger logic
                if(cnt_rx_en && cnt == cnt_rx)
                    begin
                        rx_enable <= ~rx_enable;
                        cnt_rx_en <= 1'b0;
                    end

                if(s_axi_reg_wren)
                    begin
                        case(s_axi_awaddr_q[ADDR_LSB + OPT_MEM_ADDR_BITS:ADDR_LSB])
                            4'h0: // Register 0
                                begin
                                    // IP Version is not writable
                                end
                            4'h1: // Register 1
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(!cnt_tx_en) // Manual TX control is only available if the automatic TX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                        tx_enable <= 1'b0;
                                                    else if(s_axi_wdata[0])
                                                        tx_enable <= 1'b1;
                                                end

                                            if(!cnt_rx_en) // Manual RX control is only available if the automatic RX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[3]) // Disabling takes priority over enabling
                                                        rx_enable <= 1'b0;
                                                    else if(s_axi_wdata[2])
                                                        rx_enable <= 1'b1;
                                                end

                                            if(s_axi_wdata[5]) // Disabling takes priority over enabling
                                                cnt_tx_en <= 1'b0;
                                            else if(s_axi_wdata[4])
                                                cnt_tx_en <= 1'b1;

                                            if(s_axi_wdata[7]) // Disabling takes priority over enabling
                                                cnt_rx_en <= 1'b0;
                                            else if(s_axi_wdata[6])
                                                cnt_rx_en <= 1'b1;
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                cnt_en <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                cnt_en <= 1'b1;

                                            if(s_axi_wdata[11]) // Disabling takes priority over enabling
                                                cnt_latch_arm_req <= 1'b0;
                                            else if(s_axi_wdata[10])
                                                cnt_latch_arm_req <= 1'b1;
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_enable, Read-only
                                            // s_axi_wdata[17] - rx_enable, Read-only
                                            // s_axi_wdata[18] - cnt_tx_en, Read-only
                                            // s_axi_wdata[19] - cnt_rx_en, Read-only
                                        end

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        begin
                                            // s_axi_wdata[24] - cnt_en, Read-only
                                            // s_axi_wdata[25] - cnt_latch_arm_req, Read-only
                                            // s_axi_wdata[26] - cnt_latch_armed, Read-only
                                            // s_axi_wdata[27] - cnt_latch_valid, Read-only
                                        end
                                end
                            4'h2: // Register 2
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            tx_dma_data_ready_ovr_en <= s_axi_wdata[0];
                                            tx_dma_data_ready_ovr_val <= s_axi_wdata[1];
                                            rx_dma_xfer_req_ovr_en <= s_axi_wdata[2];
                                            rx_dma_xfer_req_ovr_val <= s_axi_wdata[3];
                                            tx_data_ready_ovr_en <= s_axi_wdata[4];
                                            tx_data_ready_ovr_val <= s_axi_wdata[5];
                                            rx_data_ready_ovr_en <= s_axi_wdata[6];
                                            rx_data_ready_ovr_val <= s_axi_wdata[7];
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            // s_axi_wdata[8] - tx_dma_data_ready (not overriden), Read-only
                                            // s_axi_wdata[9] - rx_dma_xfer_req (not overriden), Read-only
                                            // s_axi_wdata[10] - tx_data_ready (not overriden), Read-only
                                            // s_axi_wdata[11] - rx_data_ready (not overriden), Read-only
                                            // s_axi_wdata[12] - tx_dma_data_ready_ovr (overriden), Read-only
                                            // s_axi_wdata[13] - rx_dma_xfer_req_ovr (overriden), Read-only
                                            // s_axi_wdata[14] - tx_data_ready_ovr (overriden), Read-only
                                            // s_axi_wdata[15] - rx_data_ready_ovr (overriden), Read-only
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_dma_data_ready_stky, Read-only, clear on read
                                            // s_axi_wdata[17] - rx_dma_xfer_req_stky, Read-only, clear on read
                                            // s_axi_wdata[18] - tx_data_ready_stky, Read-only, clear on read
                                            // s_axi_wdata[19] - rx_data_ready_stky, Read-only, clear on read
                                        end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h3: // Register 3
                                begin
                                    // if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h4: // Register 4
                                begin
                                    // if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h5: // Register 5
                                begin
                                    // if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h6: // Register 6
                                begin
                                    // if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h7: // Register 7
                                begin
                                    // if(s_axi_wstrb[0] == 1'b1) // s_axi_wdata[7:0]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //
                                    //     end
                                end
                            4'h8: // Register 8
                                begin
                                    if(!cnt_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'h9: // Register 9
                                begin
                                    if(!cnt_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'hA: // Register 10
                                begin
                                    if(!cnt_tx_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'hB: // Register 11
                                begin
                                    if(!cnt_tx_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'hC: // Register 12
                                begin
                                    if(!cnt_rx_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'hD: // Register 13
                                begin
                                    if(!cnt_rx_en)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            4'hE: // Register 14
                                begin
                                    // Latched counter value is not writable
                                end
                            4'hF: // Register 15
                                begin
                                    // Latched counter value is not writable
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

                cnt_rd_buf <= 32'd0;
                cnt_latched <= 64'd0;
                cnt_latch_valid <= 1'b0;

                tx_dma_data_ready_stky <= 1'b0;
                rx_dma_xfer_req_stky <= 1'b0;
                tx_data_ready_stky <= 1'b0;
                rx_data_ready_stky <= 1'b0;
                tx_fifo_underflow_stky <= 1'b0;
                rx_fifo_overflow_stky <= 1'b0;
            end
        else
            begin
                // Counter latching logic
                if(cnt_latch_armed && !cnt_latch_valid && rx_data_ready_ovr && rx_dma_xfer_req_ovr && rx_enable)
                    begin
                        cnt_latched <= cnt;
                        cnt_latch_valid <= 1'b1;
                    end

                // Sticky status bits logic
                if(tx_dma_data_ready_ovr)
                    tx_dma_data_ready_stky <= 1'b1;

                if(rx_dma_xfer_req_ovr)
                    rx_dma_xfer_req_stky <= 1'b1;

                if(tx_data_ready_ovr)
                    tx_data_ready_stky <= 1'b1;

                if(rx_data_ready_ovr)
                    rx_data_ready_stky <= 1'b1;

                if(tx_fifo_underflow)
                    tx_fifo_underflow_stky <= 1'b1;

                if(rx_fifo_overflow)
                    rx_fifo_overflow_stky <= 1'b1;

                if(s_axi_reg_rden)
                    begin
                        case(s_axi_araddr_q[ADDR_LSB + OPT_MEM_ADDR_BITS:ADDR_LSB])
                            4'h0:    s_axi_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            4'h1:    s_axi_rdata <= {4'd0, cnt_latch_valid, cnt_latch_armed, cnt_latch_arm_req, cnt_en, 4'b0, cnt_rx_en, cnt_tx_en, rx_enable, tx_enable, 16'd0};
                            4'h2:    {rx_fifo_overflow_stky, tx_fifo_underflow_stky, rx_data_ready_stky, tx_data_ready_stky, rx_dma_xfer_req_stky, tx_dma_data_ready_stky, s_axi_rdata} <= {16'd0, rx_fifo_overflow_stky, tx_fifo_underflow_stky, rx_data_ready_stky, tx_data_ready_stky, rx_dma_xfer_req_stky, tx_dma_data_ready_stky, rx_data_ready_ovr, tx_data_ready_ovr, rx_dma_xfer_req_ovr, tx_dma_data_ready_ovr, rx_data_ready, tx_data_ready, rx_dma_xfer_req, tx_dma_data_ready, rx_data_ready_ovr_val, rx_data_ready_ovr_en, tx_data_ready_ovr_val, tx_data_ready_ovr_en, rx_dma_xfer_req_ovr_val, rx_dma_xfer_req_ovr_en, tx_dma_data_ready_ovr_val, tx_dma_data_ready_ovr_en};

                            4'h8:    {cnt_rd_buf, s_axi_rdata} <= cnt; // Buffered register low word
                            4'h9:    s_axi_rdata <= cnt_rd_buf; // Buffered register high word (from the buffer)
                            4'hA:    s_axi_rdata <= cnt_tx[31:0];
                            4'hB:    s_axi_rdata <= cnt_tx[63:32];
                            4'hC:    s_axi_rdata <= cnt_rx[31:0];
                            4'hD:    s_axi_rdata <= cnt_rx[63:32];
                            4'hE:    {cnt_latch_valid, s_axi_rdata} <= {1'b0, cnt_latched[31:0]};
                            4'hF:    {cnt_latch_valid, s_axi_rdata} <= {1'b0, cnt_latched[63:32]};
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end
            end
    end

endmodule