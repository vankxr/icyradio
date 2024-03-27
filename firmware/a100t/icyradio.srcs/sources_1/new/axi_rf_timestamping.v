`timescale 1ns / 1ps

module axi_rf_timestamping
#(
    localparam S_AXI_DSZ = 32,
    localparam S_AXI_ASZ = 7 // ceil(log2(<number of 32-bit registers>)) + 2
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

    // Interrupt line
    output irq,

    // Source clock and reset for Timestamping
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET ts_resetn" *)
    input ts_clk,
    input ts_resetn,
    output ts_clk_tx_en, // DEBUG
    output ts_clk_rx_en, // DEBUG

    // DMA signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] tx_dma_data_ready,   // TX DMA ready to send data
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] rx_dma_xfer_req,     // RX DMA ready to receive data

    // TRX signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] tx_data_ready,       // DAC ready to receive data
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] rx_data_ready,       // ADC ready to send data

    // FIFO signals
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] tx_fifo_underflow,   // TX FIFO underflow
    (* X_INTERFACE_IGNORE = "true" *)
    input  [1:0] rx_fifo_overflow,    // RX FIFO overflow

    // TX/RX enable signals
    (* X_INTERFACE_IGNORE = "true" *)
    output [1:0] tx_enable,           // Use to gate data to TRX, allow data to pass when high
    (* X_INTERFACE_IGNORE = "true" *)
    output [1:0] rx_enable            // Use to gate data to DMA, allow data to pass when high
);

localparam S_AXI_ADDR_LSB = 2;
localparam NUM_IRQS = 9;

(* X_INTERFACE_IGNORE = "true" *)
reg  ts_clk_tx_en;           // Enable signal for the TX timestamping logic
(* X_INTERFACE_IGNORE = "true" *)
reg  ts_clk_rx_en;           // Enable signal for the RX timestamping logic (and the global counter)
reg  ts_clk_tx_synced_a;     // Whether the TX clock enable signal is synchronized to the data-valid edge (AXI-Lite clock domain)
reg  ts_clk_tx_synced;       // Whether the TX clock enable signal is synchronized to the data-valid edge
reg  ts_clk_rx_synced_a;     // Whether the RX clock enable signal is synchronized to the data-valid edge (AXI-Lite clock domain)
reg  ts_clk_rx_synced;       // Whether the RX clock enable signal is synchronized to the data-valid edge
reg  ts_clk_sync_bypass_a;   // Bypass the synchronization of the timestamping clock, i.e. use the clock directly (AXI-Lite clock domain)
reg  ts_clk_sync_bypass;     // Bypass the synchronization of the timestamping clock, i.e. use the clock directly
reg  ts_clk_resync_req_a;    // Force clock resynchronization (AXI-Lite clock domain)
reg  ts_clk_resync_req;      // Force clock resynchronization

reg  [1:0] tx_dma_data_ready_a;           // TX DMA ready to send data (AXI-Lite clock domain)
reg  [1:0] tx_dma_data_ready_stky_a;      // Sticky TX DMA ready signal (AXI-Lite clock domain)
reg  [1:0] tx_dma_data_ready_ovr_en_a;    // Override TX DMA ready signal (AXI-Lite clock domain)
reg  [1:0] tx_dma_data_ready_ovr_en;      // Override TX DMA ready signal
reg  [1:0] tx_dma_data_ready_ovr_val_a;   // Value to override TX DMA ready signal with (AXI-Lite clock domain)
reg  [1:0] tx_dma_data_ready_ovr_val;     // Value to override TX DMA ready signal with
reg  [1:0] tx_dma_data_ready_ovr_a;       // (AXI-Lite clock domain)
wire [1:0] tx_dma_data_ready_ovr;

assign tx_dma_data_ready_ovr[0] = tx_dma_data_ready_ovr_en[0] ? tx_dma_data_ready_ovr_val[0] : tx_dma_data_ready[0];
assign tx_dma_data_ready_ovr[1] = tx_dma_data_ready_ovr_en[1] ? tx_dma_data_ready_ovr_val[1] : tx_dma_data_ready[1];

reg  [1:0] rx_dma_xfer_req_a;             // RX DMA ready to receive data (AXI-Lite clock domain)
reg  [1:0] rx_dma_xfer_req_stky_a;        // Sticky RX DMA xfer req signal (AXI-Lite clock domain)
reg  [1:0] rx_dma_xfer_req_ovr_en_a;      // Override RX DMA xfer req signal (AXI-Lite clock domain)
reg  [1:0] rx_dma_xfer_req_ovr_en;        // Override RX DMA xfer req signal
reg  [1:0] rx_dma_xfer_req_ovr_val_a;     // Value to override RX DMA xfer req signal with (AXI-Lite clock domain)
reg  [1:0] rx_dma_xfer_req_ovr_val;       // Value to override RX DMA xfer req signal with
reg  [1:0] rx_dma_xfer_req_ovr_a;         // (AXI-Lite clock domain)
wire [1:0] rx_dma_xfer_req_ovr;

assign rx_dma_xfer_req_ovr[0] = rx_dma_xfer_req_ovr_en[0] ? rx_dma_xfer_req_ovr_val[0] : rx_dma_xfer_req[0];
assign rx_dma_xfer_req_ovr[1] = rx_dma_xfer_req_ovr_en[1] ? rx_dma_xfer_req_ovr_val[1] : rx_dma_xfer_req[1];

reg  [1:0] tx_data_ready_a;               // DAC ready to receive data (AXI-Lite clock domain)
reg  [1:0] tx_data_ready_stky_a;          // Sticky TX ready signal (AXI-Lite clock domain)
reg  [1:0] tx_data_ready_ovr_en_a;        // Override TX ready signal (AXI-Lite clock domain)
reg  [1:0] tx_data_ready_ovr_en;          // Override TX ready signal
reg  [1:0] tx_data_ready_ovr_val_a;       // Value to override TX ready signal with (AXI-Lite clock domain)
reg  [1:0] tx_data_ready_ovr_val;         // Value to override TX ready signal with
reg  [1:0] tx_data_ready_ovr_a;           // (AXI-Lite clock domain)
wire [1:0] tx_data_ready_ovr;

assign tx_data_ready_ovr[0] = tx_data_ready_ovr_en[0] ? tx_data_ready_ovr_val[0] : tx_data_ready[0];
assign tx_data_ready_ovr[1] = tx_data_ready_ovr_en[1] ? tx_data_ready_ovr_val[1] : tx_data_ready[1];

reg  [1:0] rx_data_ready_a;               // ADC ready to send data (AXI-Lite clock domain)
reg  [1:0] rx_data_ready_stky_a;          // Sticky RX ready signal (AXI-Lite clock domain)
reg  [1:0] rx_data_ready_ovr_en_a;        // Override RX ready signal (AXI-Lite clock domain)
reg  [1:0] rx_data_ready_ovr_en;          // Override RX ready signal
reg  [1:0] rx_data_ready_ovr_val_a;       // Value to override RX ready signal with (AXI-Lite clock domain)
reg  [1:0] rx_data_ready_ovr_val;         // Value to override RX ready signal with
reg  [1:0] rx_data_ready_ovr_a;           // (AXI-Lite clock domain)
wire [1:0] rx_data_ready_ovr;

assign rx_data_ready_ovr[0] = rx_data_ready_ovr_en[0] ? rx_data_ready_ovr_val[0] : rx_data_ready[0];
assign rx_data_ready_ovr[1] = rx_data_ready_ovr_en[1] ? rx_data_ready_ovr_val[1] : rx_data_ready[1];

reg  [1:0] tx_fifo_underflow_a;           // TX FIFO underflow (AXI-Lite clock domain)
reg  [1:0] tx_fifo_underflow_stky_a;      // Sticky TX FIFO underflow signal (AXI-Lite clock domain)

reg  [1:0] rx_fifo_overflow_a;            // RX FIFO overflow (AXI-Lite clock domain)
reg  [1:0] rx_fifo_overflow_stky_a;       // Sticky RX FIFO overflow signal (AXI-Lite clock domain)

reg  [1:0] tx_enable_a;         // TX enable (AXI-Lite clock domain)
reg  [1:0] tx_enable;           // TX enable
reg  [1:0] tx_enable_man_a;     // Manual TX enable (AXI-Lite clock domain)
reg  [1:0] tx_enable_man;       // Manual TX enable

reg  [1:0] rx_enable_a;         // RX enable (AXI-Lite clock domain)
reg  [1:0] rx_enable;           // RX enable
reg  [1:0] rx_enable_man_a;     // Manual RX enable (AXI-Lite clock domain)
reg  [1:0] rx_enable_man;       // Manual RX enable

reg  [63:0] cnt_wr_a;                // Sample counter write buffer (AXI-Lite clock domain)
reg  [63:0] cnt_wr;                  // Sample counter write buffer
reg  [31:0] cnt_a_rd_buf;            // Buffer to read the counter value from a 32-bit bus (AXI-Lite clock domain)
reg  [63:0] cnt_a;                   // Sample counter (AXI-Lite clock domain)
reg  [63:0] cnt;                     // Sample counter
reg  [31:0] cnt_latched0_a_rd_buf;   // Buffer to read the RX0 latched counter value from a 32-bit bus (AXI-Lite clock domain)
reg  [63:0] cnt_latched0_a;          // RX0 latched counter value (represents the timestamp of the first sample to enter the DMA) (AXI-Lite clock domain)
reg  [63:0] cnt_latched0;            // RX0 latched counter value (represents the timestamp of the first sample to enter the DMA)
reg  [31:0] cnt_latched1_a_rd_buf;   // Buffer to read the RX1 latched counter value from a 32-bit bus (AXI-Lite clock domain)
reg  [63:0] cnt_latched1_a;          // RX1 latched counter value (represents the timestamp of the first sample to enter the DMA) (AXI-Lite clock domain)
reg  [63:0] cnt_latched1;            // RX1 latched counter value (represents the timestamp of the first sample to enter the DMA)
reg  [63:0] cnt_tx0_a;               // Timestamp for TX0 start (AXI-Lite clock domain)
reg  [63:0] cnt_tx0;                 // Timestamp for TX0 start
reg  [63:0] cnt_tx1_a;               // Timestamp for TX1 start (AXI-Lite clock domain)
reg  [63:0] cnt_tx1;                 // Timestamp for TX1 start
reg  [63:0] cnt_rx0_a;               // Timestamp for RX0 start (AXI-Lite clock domain)
reg  [63:0] cnt_rx0;                 // Timestamp for RX0 start
reg  [63:0] cnt_rx1_a;               // Timestamp for RX1 start (AXI-Lite clock domain)
reg  [63:0] cnt_rx1;                 // Timestamp for RX1 start
reg         cnt_wr_req_a;            // Request to write counter value (AXI-Lite clock domain)
reg         cnt_wr_req;              // Request to write counter value
reg         cnt_wr_done_a;           // Confirmation that the counter value has been written (AXI-Lite clock domain)
reg         cnt_wr_done;             // Confirmation that the counter value has been written
reg         cnt_en_a;                // Enable counter (AXI-Lite clock domain)
reg         cnt_en;                  // Enable counter
reg   [1:0] cnt_tx_en_a;             // Enable TX start trigger (AXI-Lite clock domain)
reg   [1:0] cnt_tx_en;               // Enable TX start trigger
reg   [1:0] cnt_tx_done_a;           // Confirmation that the TX start trigger has been issued (AXI-Lite clock domain)
reg   [1:0] cnt_tx_done;             // Confirmation that the TX start trigger has been issued
reg   [1:0] cnt_rx_en_a;             // Enable RX start trigger (AXI-Lite clock domain)
reg   [1:0] cnt_rx_en;               // Enable RX start trigger
reg   [1:0] cnt_rx_done_a;           // Confirmation that the RX start trigger has been issued (AXI-Lite clock domain)
reg   [1:0] cnt_rx_done;             // Confirmation that the RX start trigger has been issued
reg   [1:0] cnt_latch_arm_req_a;     // Latch arm request signal (AXI-Lite clock domain)
reg   [1:0] cnt_latch_arm_req;       // Latch arm request signal
reg   [1:0] cnt_latch_armed_a;       // Latch armed signal (AXI-Lite clock domain)
reg   [1:0] cnt_latch_armed;         // Latch armed signal
reg   [1:0] cnt_latch_valid_a;       // Latch valid signal, indicates that cnt_latched0 has valid (unread) data (AXI-Lite clock domain)
reg   [1:0] cnt_latch_valid;         // Latch valid signal, indicates that cnt_latched0 has valid (unread) data
reg   [1:0] cnt_latch_valid_rd_a;    // Latch invalidation signal, indicates that cnt_latched0 has been read (AXI-Lite clock domain)
reg   [1:0] cnt_latch_valid_rd;      // Latch invalidation signal, indicates that cnt_latched0 has been read

reg  ts_resetn_a; // Timestamping reset (AXI-Lite clock domain)

// Synchronization logic (aclk -> ts_clk)
wire [351:0] sync_aclk_to_ts_clk_out;       // Synchtonized signals aclk -> ts_clk output in ts_clk domain
wire [351:0] sync_aclk_to_ts_clk_in;        // Synchtonized signals aclk -> ts_clk input in aclk domain
wire         sync_aclk_to_ts_clk_src_done;  // Synchronization done signal for aclk -> ts_clk
reg          sync_aclk_to_ts_clk_src_req;   // Synchronization request signal for aclk -> ts_clk
wire         sync_aclk_to_ts_clk_dst_req;   // Synchronization request signal for aclk -> ts_clk output in ts_clk domain

xpm_cdc_handshake #(
    .DEST_EXT_HSK(0),
    .DEST_SYNC_FF(4),
    .INIT_SYNC_FF(1),
    .SIM_ASSERT_CHK(1),
    .SRC_SYNC_FF(2),
    .WIDTH(352)
)
aclk_to_ts_clk_sync
(
    .dest_out(sync_aclk_to_ts_clk_out),
    .dest_req(sync_aclk_to_ts_clk_dst_req),
    .src_rcv(sync_aclk_to_ts_clk_src_done),
    .dest_ack(),
    .dest_clk(ts_clk),
    .src_clk(aclk),
    .src_in(sync_aclk_to_ts_clk_in),
    .src_send(sync_aclk_to_ts_clk_src_req)
);

// Synchronization logic (ts_clk -> aclk)
wire [227:0] sync_ts_clk_to_aclk_out;       // Synchtonized signals ts_clk -> aclk output in aclk domain
wire [227:0] sync_ts_clk_to_aclk_in;        // Synchtonized signals ts_clk -> aclk input in ts_clk domain
wire         sync_ts_clk_to_aclk_src_done;  // Synchronization done signal for ts_clk -> aclk
reg          sync_ts_clk_to_aclk_src_req;   // Synchronization request signal for ts_clk -> aclk
wire         sync_ts_clk_to_aclk_dst_req;   // Synchronization request signal for ts_clk -> aclk output in aclk domain

xpm_cdc_handshake #(
    .DEST_EXT_HSK(0),
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(1),
    .SIM_ASSERT_CHK(1),
    .SRC_SYNC_FF(2),
    .WIDTH(228)
)
ts_clk_to_aclk_sync
(
    .dest_out(sync_ts_clk_to_aclk_out),
    .dest_req(sync_ts_clk_to_aclk_dst_req),
    .src_rcv(sync_ts_clk_to_aclk_src_done),
    .dest_ack(),
    .dest_clk(aclk),
    .src_clk(ts_clk),
    .src_in(sync_ts_clk_to_aclk_in),
    .src_send(sync_ts_clk_to_aclk_src_req)
);

reg  [NUM_IRQS - 1:0] irq_enabled; // Interrupt enable register (AXI-Lite clock domain)
reg  [NUM_IRQS - 1:0] irq_pend;    // Interrupt pending register (AXI-Lite clock domain)
reg                   irq; // Interrupt line

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

// Clock synchronization logic
always @(posedge ts_clk)
    begin
        if(!ts_resetn)
            begin
                ts_clk_tx_en <= 1'b0;
                ts_clk_rx_en <= 1'b0;
                ts_clk_tx_synced <= 1'b0;
                ts_clk_rx_synced <= 1'b0;
            end
        else
            begin
                // TX
                if(!ts_clk_tx_synced)
                    begin
                        ts_clk_tx_en <= 1'b0;

                        if(!ts_clk_resync_req && tx_data_ready)
                            ts_clk_tx_synced <= 1'b1;
                    end
                else
                    begin
                        if(ts_clk_sync_bypass)
                            ts_clk_tx_en <= 1'b1;
                        else
                            ts_clk_tx_en <= ~ts_clk_tx_en;

                        if(ts_clk_resync_req) // Need to resync
                            begin
                                ts_clk_tx_en <= 1'b0;
                                ts_clk_tx_synced <= 1'b0;
                            end
                    end

                // RX
                if(!ts_clk_rx_synced)
                    begin
                        ts_clk_rx_en <= 1'b0;

                        if(!ts_clk_resync_req && rx_data_ready)
                            ts_clk_rx_synced <= 1'b1;
                    end
                else
                    begin
                        if(ts_clk_sync_bypass)
                            ts_clk_rx_en <= 1'b1;
                        else
                            ts_clk_rx_en <= ~ts_clk_rx_en;

                        if(ts_clk_resync_req) // Need to resync
                            begin
                                ts_clk_rx_en <= 1'b0;
                                ts_clk_rx_synced <= 1'b0;
                            end
                    end
            end
    end

// Counter logic
always @(posedge ts_clk)
    begin
        if(!ts_resetn)
            begin
                cnt <= 64'd0;

                cnt_wr_done <= 1'b0;
            end
        else
            begin
                cnt_wr_done <= cnt_wr_done & ~cnt_wr_req;

                if(cnt_en)
                    begin
                        if(ts_clk_rx_en)
                            cnt <= cnt + 1;
                    end
                else if(cnt_wr_req && !cnt_wr_done)
                    begin
                        cnt <= cnt_wr;
                        cnt_wr_done <= 1'b1;
                    end
            end
    end

// Counter latching logic
always @(posedge ts_clk)
    begin
        if(!ts_resetn)
            begin
                cnt_latched0 <= 64'd0;
                cnt_latched1 <= 64'd0;

                cnt_latch_armed <= 2'b00;
                cnt_latch_valid <= 2'b00;
            end
        else
            begin
                // Channel 0
                cnt_latch_valid[0] <= cnt_latch_valid[0] & ~cnt_latch_valid_rd[0];

                if(ts_clk_rx_en)
                    begin
                        if(cnt_latch_arm_req[0] && !cnt_latch_valid[0] && (!rx_data_ready_ovr[0] || !rx_dma_xfer_req_ovr[0] || !rx_enable[0]))
                            begin
                                cnt_latch_armed[0] <= 1'b1;
                            end
                        else
                            begin
                                cnt_latch_armed[0] <= 1'b0;

                                if(cnt_latch_armed[0] && rx_data_ready_ovr[0] && rx_dma_xfer_req_ovr[0] && rx_enable[0])
                                    begin
                                        cnt_latched0 <= cnt;

                                        cnt_latch_valid[0] <= 1'b1;
                                    end
                            end
                    end

                // Channel 1
                cnt_latch_valid[1] <= cnt_latch_valid[1] & ~cnt_latch_valid_rd[1];

                if(ts_clk_rx_en)
                    begin
                        if(cnt_latch_arm_req[1] && !cnt_latch_valid[1] && (!rx_data_ready_ovr[1] || !rx_dma_xfer_req_ovr[1] || !rx_enable[1]))
                            begin
                                cnt_latch_armed[1] <= 1'b1;
                            end
                        else
                            begin
                                cnt_latch_armed[1] <= 1'b0;

                                if(cnt_latch_armed[1] && rx_data_ready_ovr[1] && rx_dma_xfer_req_ovr[1] && rx_enable[1])
                                    begin
                                        cnt_latched1 <= cnt;

                                        cnt_latch_valid[1] <= 1'b1;
                                    end
                            end
                    end
            end
    end

// TX Start trigger logic
always @(posedge ts_clk)
    begin
        if(!ts_resetn)
            begin
                tx_enable <= 2'b00;

                cnt_tx_done <= 2'b00;
            end
        else
            begin
                // Channel 0
                if(cnt_tx_en[0])
                    begin
                        if(!cnt_tx_done[0] && ts_clk_tx_en && cnt == cnt_tx0)
                            begin
                                tx_enable[0] <= ~tx_enable[0];
                                cnt_tx_done[0] <= 1'b1;
                            end
                    end
                else
                    begin
                        tx_enable[0] <= tx_enable_man[0];
                        cnt_tx_done[0] <= 1'b0;
                    end

                // Channel 1
                if(cnt_tx_en[1])
                    begin
                        if(!cnt_tx_done[1] && ts_clk_tx_en && cnt == cnt_tx1)
                            begin
                                tx_enable[1] <= ~tx_enable[1];
                                cnt_tx_done[1] <= 1'b1;
                            end
                    end
                else
                    begin
                        tx_enable[1] <= tx_enable_man[1];
                        cnt_tx_done[1] <= 1'b0;
                    end
            end
    end

// RX Start trigger logic
always @(posedge ts_clk)
    begin
        if(!ts_resetn)
            begin
                rx_enable <= 2'b00;

                cnt_rx_done <= 2'b00;
            end
        else
            begin
                // Channel 0
                if(cnt_rx_en[0])
                    begin
                        if(!cnt_rx_done[0] && ts_clk_rx_en && cnt == cnt_rx0)
                            begin
                                rx_enable[0] <= ~rx_enable[0];
                                cnt_rx_done[0] <= 1'b1;
                            end
                    end
                else
                    begin
                        rx_enable[0] <= rx_enable_man[0];
                        cnt_rx_done[0] <= 1'b0;
                    end

                // Channel 1
                if(cnt_rx_en[1])
                    begin
                        if(!cnt_rx_done[1] && ts_clk_rx_en && cnt == cnt_rx1)
                            begin
                                rx_enable[1] <= ~rx_enable[1];
                                cnt_rx_done[1] <= 1'b1;
                            end
                    end
                else
                    begin
                        rx_enable[1] <= rx_enable_man[1];
                        cnt_rx_done[1] <= 1'b0;
                    end
            end
    end

// IRQ line logic
always @(*)
    irq = |(irq_pend & irq_enabled);

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                ts_clk_sync_bypass_a <= 1'b0;
                ts_clk_resync_req_a <= 1'b0;

                tx_dma_data_ready_stky_a <= 2'b00;
                tx_dma_data_ready_ovr_en_a <= 2'b00;
                tx_dma_data_ready_ovr_val_a <= 2'b00;
                rx_dma_xfer_req_stky_a <= 2'b00;
                rx_dma_xfer_req_ovr_en_a <= 2'b00;
                rx_dma_xfer_req_ovr_val_a <= 2'b00;
                tx_data_ready_stky_a <= 2'b00;
                tx_data_ready_ovr_en_a <= 2'b00;
                tx_data_ready_ovr_val_a <= 2'b00;
                rx_data_ready_stky_a <= 2'b00;
                rx_data_ready_ovr_en_a <= 2'b00;
                rx_data_ready_ovr_val_a <= 2'b00;
                tx_fifo_underflow_stky_a <= 2'b00;
                rx_fifo_overflow_stky_a <= 2'b00;

                tx_enable_man_a <= 2'b00;
                rx_enable_man_a <= 2'b00;

                cnt_wr_a <= 64'd0;
                cnt_a_rd_buf <= 32'd0;
                cnt_latched0_a_rd_buf <= 32'd0;
                cnt_latched1_a_rd_buf <= 32'd0;
                cnt_tx0_a <= 64'd0;
                cnt_tx1_a <= 64'd0;
                cnt_rx0_a <= 64'd0;
                cnt_rx1_a <= 64'd0;
                cnt_wr_req_a <= 1'b0;
                cnt_en_a <= 1'b0;
                cnt_tx_en_a <= 2'b00;
                cnt_rx_en_a <= 2'b00;
                cnt_latch_arm_req_a <= 2'b00;
                cnt_latch_valid_rd_a <= 2'b00;

                // Interrupts
                irq_enabled <= {NUM_IRQS{1'b0}};
                irq_pend <= {NUM_IRQS{1'b0}};

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

                // Sticky status bits logic
                tx_dma_data_ready_stky_a <= tx_dma_data_ready_stky_a | tx_dma_data_ready_a;
                rx_dma_xfer_req_stky_a <= rx_dma_xfer_req_stky_a | rx_dma_xfer_req_a;
                tx_data_ready_stky_a <= tx_data_ready_stky_a | tx_data_ready_a;
                rx_data_ready_stky_a <= rx_data_ready_stky_a | rx_data_ready_a;
                tx_fifo_underflow_stky_a <= tx_fifo_underflow_stky_a | tx_fifo_underflow_a;
                rx_fifo_overflow_stky_a <= rx_fifo_overflow_stky_a | rx_fifo_overflow_a;

                // Clear TX and RX enable bits when a match is registered
                if(cnt_tx_en_a[0] && cnt_tx_done_a[0])
                    begin
                        cnt_tx_en_a[0] <= 1'b0;
                        tx_enable_man_a[0] <= tx_enable_a[0]; // Save the current TX enable state as the manual override

                        irq_pend[0] <= 1'b1; // IRQ #0 - TX0 counter match
                    end
                if(cnt_tx_en_a[1] && cnt_tx_done_a[1])
                    begin
                        cnt_tx_en_a[1] <= 1'b0;
                        tx_enable_man_a[1] <= tx_enable_a[1]; // Save the current TX enable state as the manual override

                        irq_pend[1] <= 1'b1; // IRQ #1 - TX1 counter match
                    end

                if(cnt_rx_en_a[0] && cnt_rx_done_a[0])
                    begin
                        cnt_rx_en_a[0] <= 1'b0;
                        rx_enable_man_a[0] <= rx_enable_a[0]; // Save the current RX enable state as the manual override

                        irq_pend[2] <= 1'b1; // IRQ #2 - RX0 counter match
                    end
                if(cnt_rx_en_a[1] && cnt_rx_done_a[1])
                    begin
                        cnt_rx_en_a[1] <= 1'b0;
                        rx_enable_man_a[1] <= rx_enable_a[1]; // Save the current RX enable state as the manual override

                        irq_pend[3] <= 1'b1; // IRQ #3 - RX1 counter match
                    end

                // Clear latch valid read
                cnt_latch_valid_rd_a <= cnt_latch_valid_rd_a & cnt_latch_valid_a;

                if(cnt_latch_valid_a[0] && !cnt_latch_valid_rd_a[0])
                    irq_pend[4] <= 1'b1; // IRQ #4 - RX0 latched counter valid

                if(cnt_latch_valid_a[1] && !cnt_latch_valid_rd_a[1])
                    irq_pend[5] <= 1'b1; // IRQ #5 - RX1 latched counter valid

                // Clear counter write request
                cnt_wr_req_a <= cnt_wr_req_a & ~cnt_wr_done_a;

                if(cnt_wr_req_a && cnt_wr_done_a)
                    irq_pend[6] <= 1'b1; // IRQ #6 - Counter write done

                // Clear resync request when out of sync
                ts_clk_resync_req_a <= ts_clk_resync_req_a & (ts_clk_tx_synced_a | ts_clk_rx_synced_a);

                // IRQs for the synchronization handshakers
                if(sync_aclk_to_ts_clk_src_req && sync_aclk_to_ts_clk_src_done)
                    irq_pend[7] <= 1'b1; // IRQ #7 - aclk -> ts_clk synced

                if(sync_ts_clk_to_aclk_dst_req)
                    irq_pend[8] <= 1'b1; // IRQ #8 - ts_clk -> aclk synced

                // Read data
                if(s_axi_rd_en)
                    begin
                        s_axi_rvalid <= 1'b1;
                        s_axi_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_araddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            5'h0:    s_axi_rdata <= {16'd1, 8'd1, 8'd0}; // IP Version
                            5'h1:    s_axi_rdata <= {ts_resetn_a, 3'd0, ts_clk_rx_synced_a, ts_clk_tx_synced_a, ts_clk_resync_req_a, ts_clk_sync_bypass_a, 6'd0, cnt_wr_req_a, cnt_en_a, 16'd0};
                            5'h2:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_enabled}; // IRQ Enabled
                            5'h3:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_IRQS){1'b0}}, irq_pend}; // IRQ Pending
                            5'h4:    {cnt_a_rd_buf, s_axi_rdata} <= cnt_a; // Buffered register low word
                            5'h5:    s_axi_rdata <= cnt_a_rd_buf; // Buffered register high word (from the buffer)

                            5'h8:    s_axi_rdata <= {10'd0, |rx_enable_man_a, |tx_enable_man_a, |cnt_rx_en_a, |cnt_tx_en_a, |rx_enable_a, |tx_enable_a, 16'd0}; // Same as write to Registers 16 and 24 simultaneously, reads enable status if either channel is enabled
                            5'h9:    s_axi_rdata <= {S_AXI_DSZ{1'b0}}; // Same as write to Registers 17 and 25 simultaneously, write-only

                            5'h10:   s_axi_rdata <= {4'd0, cnt_latch_valid_rd_a[0], cnt_latch_valid_a[0], cnt_latch_armed_a[0], cnt_latch_arm_req_a[0], 2'b0, rx_enable_man_a[0], tx_enable_man_a[0], cnt_rx_en_a[0], cnt_tx_en_a[0], rx_enable_a[0], tx_enable_a[0], 16'd0};
                            5'h11:   {rx_fifo_overflow_stky_a[0], tx_fifo_underflow_stky_a[0], rx_data_ready_stky_a[0], tx_data_ready_stky_a[0], rx_dma_xfer_req_stky_a[0], tx_dma_data_ready_stky_a[0], s_axi_rdata} <= {16'd0, rx_fifo_overflow_stky_a[0], tx_fifo_underflow_stky_a[0], rx_data_ready_stky_a[0], tx_data_ready_stky_a[0], rx_dma_xfer_req_stky_a[0], tx_dma_data_ready_stky_a[0], rx_data_ready_ovr_a[0], tx_data_ready_ovr_a[0], rx_dma_xfer_req_ovr_a[0], tx_dma_data_ready_ovr_a[0], rx_data_ready_a[0], tx_data_ready_a[0], rx_dma_xfer_req_a[0], tx_dma_data_ready_a[0], rx_data_ready_ovr_val_a[0], rx_data_ready_ovr_en_a[0], tx_data_ready_ovr_val_a[0], tx_data_ready_ovr_en_a[0], rx_dma_xfer_req_ovr_val_a[0], rx_dma_xfer_req_ovr_en_a[0], tx_dma_data_ready_ovr_val_a[0], tx_dma_data_ready_ovr_en_a[0]};
                            5'h12:   s_axi_rdata <= cnt_tx0_a[31:0];
                            5'h13:   s_axi_rdata <= cnt_tx0_a[63:32];
                            5'h14:   s_axi_rdata <= cnt_rx0_a[31:0];
                            5'h15:   s_axi_rdata <= cnt_rx0_a[63:32];
                            5'h16:   {cnt_latch_valid_rd_a[0], cnt_latched0_a_rd_buf, s_axi_rdata} <= {cnt_latch_valid_a[0], cnt_latched0_a};
                            5'h17:   s_axi_rdata <= cnt_latched0_a_rd_buf;

                            5'h18:   s_axi_rdata <= {4'd0, cnt_latch_valid_rd_a[1], cnt_latch_valid_a[1], cnt_latch_armed_a[1], cnt_latch_arm_req_a[1], 2'b0, rx_enable_man_a[1], tx_enable_man_a[1], cnt_rx_en_a[1], cnt_tx_en_a[1], rx_enable_a[1], tx_enable_a[1], 16'd0};
                            5'h19:   {rx_fifo_overflow_stky_a[1], tx_fifo_underflow_stky_a[1], rx_data_ready_stky_a[1], tx_data_ready_stky_a[1], rx_dma_xfer_req_stky_a[1], tx_dma_data_ready_stky_a[1], s_axi_rdata} <= {16'd0, rx_fifo_overflow_stky_a[1], tx_fifo_underflow_stky_a[1], rx_data_ready_stky_a[1], tx_data_ready_stky_a[1], rx_dma_xfer_req_stky_a[1], tx_dma_data_ready_stky_a[1], rx_data_ready_ovr_a[1], tx_data_ready_ovr_a[1], rx_dma_xfer_req_ovr_a[1], tx_dma_data_ready_ovr_a[1], rx_data_ready_a[1], tx_data_ready_a[1], rx_dma_xfer_req_a[1], tx_dma_data_ready_a[1], rx_data_ready_ovr_val_a[1], rx_data_ready_ovr_en_a[1], tx_data_ready_ovr_val_a[1], tx_data_ready_ovr_en_a[1], rx_dma_xfer_req_ovr_val_a[1], rx_dma_xfer_req_ovr_en_a[1], tx_dma_data_ready_ovr_val_a[1], tx_dma_data_ready_ovr_en_a[1]};
                            5'h1A:   s_axi_rdata <= cnt_tx1_a[31:0];
                            5'h1B:   s_axi_rdata <= cnt_tx1_a[63:32];
                            5'h1C:   s_axi_rdata <= cnt_rx1_a[31:0];
                            5'h1D:   s_axi_rdata <= cnt_rx1_a[63:32];
                            5'h1E:   {cnt_latch_valid_rd_a[1], cnt_latched1_a_rd_buf, s_axi_rdata} <= {cnt_latch_valid_a[1], cnt_latched1_a};
                            5'h1F:   s_axi_rdata <= cnt_latched1_a_rd_buf;
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end

                // Write data
                if(s_axi_wr_en)
                    begin
                        s_axi_bvalid <= 1'b1;
                        s_axi_bresp <= 2'b00; // Always respond OKAY

                        case(s_axi_awaddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            5'h0: // Register 0
                                begin
                                    // IP Version is not writable
                                end
                            5'h1: // Register 1
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                cnt_en_a <= 1'b0;
                                            else if(s_axi_wdata[0])
                                                cnt_en_a <= 1'b1;
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                ts_clk_sync_bypass_a <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                ts_clk_sync_bypass_a <= 1'b1;

                                            ts_clk_resync_req_a <= s_axi_wdata[10];
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - cnt_en_a, Read-only
                                            // s_axi_wdata[17] - cnt_wr_req_a, Read-only
                                        end

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        begin
                                            // s_axi_wdata[24] - ts_clk_en_bypass_a, Read-only
                                            // s_axi_wdata[25] - ts_clk_resync_req_a, Read-only
                                            // s_axi_wdata[26] - ts_clk_tx_synced_a, Read-only
                                            // s_axi_wdata[27] - ts_clk_rx_synced_a, Read-only

                                            // s_axi_wdata[31] - ts_resetn_a, Read-only
                                        end
                                end
                            5'h2: // Register 2
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
                            5'h3: // Register 3
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
                            5'h4: // Register 4
                                begin
                                    if(!cnt_en_a && !cnt_wr_req_a && !cnt_wr_done_a)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_wr_a[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_wr_a[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_wr_a[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_wr_a[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h5: // Register 5
                                begin
                                    if(!cnt_en_a && !cnt_wr_req_a && !cnt_wr_done_a)
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_wr_a[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_wr_a[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_wr_a[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_wr_a[63:56] <= s_axi_wdata[31:24];

                                            if(s_axi_wstrb[3]) // Trigger write request on last byte write
                                                cnt_wr_req_a <= 1'b1;
                                        end
                                end

                            5'h8: // Register 8 - Same as write to Registers 16 and 24 simultaneously
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            // Channel 0
                                            if(!cnt_tx_en_a[0]) // Manual TX control is only available if the automatic TX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                        tx_enable_man_a[0] <= 1'b0;
                                                    else if(s_axi_wdata[0])
                                                        tx_enable_man_a[0] <= 1'b1;
                                                end

                                            if(!cnt_rx_en_a[0]) // Manual RX control is only available if the automatic RX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[3]) // Disabling takes priority over enabling
                                                        rx_enable_man_a[0] <= 1'b0;
                                                    else if(s_axi_wdata[2])
                                                        rx_enable_man_a[0] <= 1'b1;
                                                end

                                            if(s_axi_wdata[5]) // Disabling takes priority over enabling
                                                cnt_tx_en_a[0] <= 1'b0;
                                            else if(s_axi_wdata[4] && !cnt_tx_done_a[0])
                                                cnt_tx_en_a[0] <= 1'b1;

                                            if(s_axi_wdata[7]) // Disabling takes priority over enabling
                                                cnt_rx_en_a[0] <= 1'b0;
                                            else if(s_axi_wdata[6] && !cnt_rx_done_a[0])
                                                cnt_rx_en_a[0] <= 1'b1;

                                            // Channel 1
                                            if(!cnt_tx_en_a[1]) // Manual TX control is only available if the automatic TX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                        tx_enable_man_a[1] <= 1'b0;
                                                    else if(s_axi_wdata[0])
                                                        tx_enable_man_a[1] <= 1'b1;
                                                end

                                            if(!cnt_rx_en_a[1]) // Manual RX control is only available if the automatic RX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[3]) // Disabling takes priority over enabling
                                                        rx_enable_man_a[1] <= 1'b0;
                                                    else if(s_axi_wdata[2])
                                                        rx_enable_man_a[1] <= 1'b1;
                                                end

                                            if(s_axi_wdata[5]) // Disabling takes priority over enabling
                                                cnt_tx_en_a[1] <= 1'b0;
                                            else if(s_axi_wdata[4] && !cnt_tx_done_a[1])
                                                cnt_tx_en_a[1] <= 1'b1;

                                            if(s_axi_wdata[7]) // Disabling takes priority over enabling
                                                cnt_rx_en_a[1] <= 1'b0;
                                            else if(s_axi_wdata[6] && !cnt_rx_done_a[1])
                                                cnt_rx_en_a[1] <= 1'b1;
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            // Channel 0
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                cnt_latch_arm_req_a[0] <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                cnt_latch_arm_req_a[0] <= 1'b1;

                                            // Channel 1
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                cnt_latch_arm_req_a[1] <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                cnt_latch_arm_req_a[1] <= 1'b1;
                                        end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //     end
                                end
                            5'h9: // Register 9 - Same as write to Registers 17 and 25 simultaneously
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            // Channel 0
                                            tx_dma_data_ready_ovr_en_a[0] <= s_axi_wdata[0];
                                            tx_dma_data_ready_ovr_val_a[0] <= s_axi_wdata[1];
                                            rx_dma_xfer_req_ovr_en_a[0] <= s_axi_wdata[2];
                                            rx_dma_xfer_req_ovr_val_a[0] <= s_axi_wdata[3];
                                            tx_data_ready_ovr_en_a[0] <= s_axi_wdata[4];
                                            tx_data_ready_ovr_val_a[0] <= s_axi_wdata[5];
                                            rx_data_ready_ovr_en_a[0] <= s_axi_wdata[6];
                                            rx_data_ready_ovr_val_a[0] <= s_axi_wdata[7];

                                            // Channel 1
                                            tx_dma_data_ready_ovr_en_a[1] <= s_axi_wdata[0];
                                            tx_dma_data_ready_ovr_val_a[1] <= s_axi_wdata[1];
                                            rx_dma_xfer_req_ovr_en_a[1] <= s_axi_wdata[2];
                                            rx_dma_xfer_req_ovr_val_a[1] <= s_axi_wdata[3];
                                            tx_data_ready_ovr_en_a[1] <= s_axi_wdata[4];
                                            tx_data_ready_ovr_val_a[1] <= s_axi_wdata[5];
                                            rx_data_ready_ovr_en_a[1] <= s_axi_wdata[6];
                                            rx_data_ready_ovr_val_a[1] <= s_axi_wdata[7];
                                        end

                                    // if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                    //     begin
                                    //     end

                                    // if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                    //     begin
                                    //     end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //     end
                                end

                            5'h10: // Register 16
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(!cnt_tx_en_a[0]) // Manual TX control is only available if the automatic TX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                        tx_enable_man_a[0] <= 1'b0;
                                                    else if(s_axi_wdata[0])
                                                        tx_enable_man_a[0] <= 1'b1;
                                                end

                                            if(!cnt_rx_en_a[0]) // Manual RX control is only available if the automatic RX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[3]) // Disabling takes priority over enabling
                                                        rx_enable_man_a[0] <= 1'b0;
                                                    else if(s_axi_wdata[2])
                                                        rx_enable_man_a[0] <= 1'b1;
                                                end

                                            if(s_axi_wdata[5]) // Disabling takes priority over enabling
                                                cnt_tx_en_a[0] <= 1'b0;
                                            else if(s_axi_wdata[4] && !cnt_tx_done_a[0])
                                                cnt_tx_en_a[0] <= 1'b1;

                                            if(s_axi_wdata[7]) // Disabling takes priority over enabling
                                                cnt_rx_en_a[0] <= 1'b0;
                                            else if(s_axi_wdata[6] && !cnt_rx_done_a[0])
                                                cnt_rx_en_a[0] <= 1'b1;
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                cnt_latch_arm_req_a[0] <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                cnt_latch_arm_req_a[0] <= 1'b1;
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_enable_a[0], Read-only
                                            // s_axi_wdata[17] - rx_enable_a[0], Read-only
                                            // s_axi_wdata[18] - cnt_tx_en_a[0], Read-only
                                            // s_axi_wdata[19] - cnt_rx_en_a[0], Read-only
                                            // s_axi_wdata[20] - tx_enable_man_a[0], Read-only
                                            // s_axi_wdata[21] - rx_enable_man_a[0], Read-only
                                        end

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        begin
                                            // s_axi_wdata[24] - cnt_latch_arm_req_a[0], Read-only
                                            // s_axi_wdata[25] - cnt_latch_armed_a[0], Read-only
                                            // s_axi_wdata[26] - cnt_latch_valid_a[0], Read-only
                                            // s_axi_wdata[27] - cnt_latch_valid_rd_a[0], Read-only
                                        end
                                end
                            5'h11: // Register 17
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            tx_dma_data_ready_ovr_en_a[0] <= s_axi_wdata[0];
                                            tx_dma_data_ready_ovr_val_a[0] <= s_axi_wdata[1];
                                            rx_dma_xfer_req_ovr_en_a[0] <= s_axi_wdata[2];
                                            rx_dma_xfer_req_ovr_val_a[0] <= s_axi_wdata[3];
                                            tx_data_ready_ovr_en_a[0] <= s_axi_wdata[4];
                                            tx_data_ready_ovr_val_a[0] <= s_axi_wdata[5];
                                            rx_data_ready_ovr_en_a[0] <= s_axi_wdata[6];
                                            rx_data_ready_ovr_val_a[0] <= s_axi_wdata[7];
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            // s_axi_wdata[8] - tx_dma_data_ready_a[0] (not overriden), Read-only
                                            // s_axi_wdata[9] - rx_dma_xfer_req_a[0] (not overriden), Read-only
                                            // s_axi_wdata[10] - tx_data_ready_a[0] (not overriden), Read-only
                                            // s_axi_wdata[11] - rx_data_ready_a[0] (not overriden), Read-only
                                            // s_axi_wdata[12] - tx_dma_data_ready_ovr_a[0] (overriden), Read-only
                                            // s_axi_wdata[13] - rx_dma_xfer_req_ovr_a[0] (overriden), Read-only
                                            // s_axi_wdata[14] - tx_data_ready_ovr_a[0] (overriden), Read-only
                                            // s_axi_wdata[15] - rx_data_ready_ovr_a[0] (overriden), Read-only
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_dma_data_ready_stky_a[0], Read-only, clear on read
                                            // s_axi_wdata[17] - rx_dma_xfer_req_stky_a[0], Read-only, clear on read
                                            // s_axi_wdata[18] - tx_data_ready_stky_a[0], Read-only, clear on read
                                            // s_axi_wdata[19] - rx_data_ready_stky_a[0], Read-only, clear on read
                                            // s_axi_wdata[20] - tx_fifo_underflow_stky_a[0], Read-only, clear on read
                                            // s_axi_wdata[21] - rx_fifo_overflow_stky_a[0], Read-only, clear on read
                                        end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //     end
                                end
                            5'h12: // Register 18
                                begin
                                    if(!cnt_tx_en_a[0])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx0_a[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx0_a[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx0_a[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx0_a[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h13: // Register 19
                                begin
                                    if(!cnt_tx_en_a[0])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx0_a[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx0_a[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx0_a[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx0_a[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h14: // Register 20
                                begin
                                    if(!cnt_rx_en_a[0])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx0_a[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx0_a[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx0_a[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx0_a[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h15: // Register 21
                                begin
                                    if(!cnt_rx_en_a[0])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx0_a[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx0_a[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx0_a[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx0_a[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h16: // Register 22
                                begin
                                    // Latched counter value is not writable
                                end
                            5'h17: // Register 23
                                begin
                                    // Latched counter value is not writable
                                end

                            5'h18: // Register 24
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(!cnt_tx_en_a[1]) // Manual TX control is only available if the automatic TX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[1]) // Disabling takes priority over enabling
                                                        tx_enable_man_a[1] <= 1'b0;
                                                    else if(s_axi_wdata[0])
                                                        tx_enable_man_a[1] <= 1'b1;
                                                end

                                            if(!cnt_rx_en_a[1]) // Manual RX control is only available if the automatic RX start trigger is not enabled
                                                begin
                                                    if(s_axi_wdata[3]) // Disabling takes priority over enabling
                                                        rx_enable_man_a[1] <= 1'b0;
                                                    else if(s_axi_wdata[2])
                                                        rx_enable_man_a[1] <= 1'b1;
                                                end

                                            if(s_axi_wdata[5]) // Disabling takes priority over enabling
                                                cnt_tx_en_a[1] <= 1'b0;
                                            else if(s_axi_wdata[4] && !cnt_tx_done_a[1])
                                                cnt_tx_en_a[1] <= 1'b1;

                                            if(s_axi_wdata[7]) // Disabling takes priority over enabling
                                                cnt_rx_en_a[1] <= 1'b0;
                                            else if(s_axi_wdata[6] && !cnt_rx_done_a[1])
                                                cnt_rx_en_a[1] <= 1'b1;
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            if(s_axi_wdata[9]) // Disabling takes priority over enabling
                                                cnt_latch_arm_req_a[1] <= 1'b0;
                                            else if(s_axi_wdata[8])
                                                cnt_latch_arm_req_a[1] <= 1'b1;
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_enable_a[1], Read-only
                                            // s_axi_wdata[17] - rx_enable_a[1], Read-only
                                            // s_axi_wdata[18] - cnt_tx_en_a[1], Read-only
                                            // s_axi_wdata[19] - cnt_rx_en_a[1], Read-only
                                            // s_axi_wdata[20] - tx_enable_man_a[1], Read-only
                                            // s_axi_wdata[21] - rx_enable_man_a[1], Read-only
                                        end

                                    if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                        begin
                                            // s_axi_wdata[24] - cnt_latch_arm_req_a[1], Read-only
                                            // s_axi_wdata[25] - cnt_latch_armed_a[1], Read-only
                                            // s_axi_wdata[26] - cnt_latch_valid_a[1], Read-only
                                            // s_axi_wdata[27] - cnt_latch_valid_rd_a[1], Read-only
                                        end
                                end
                            5'h19: // Register 25
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            tx_dma_data_ready_ovr_en_a[1] <= s_axi_wdata[0];
                                            tx_dma_data_ready_ovr_val_a[1] <= s_axi_wdata[1];
                                            rx_dma_xfer_req_ovr_en_a[1] <= s_axi_wdata[2];
                                            rx_dma_xfer_req_ovr_val_a[1] <= s_axi_wdata[3];
                                            tx_data_ready_ovr_en_a[1] <= s_axi_wdata[4];
                                            tx_data_ready_ovr_val_a[1] <= s_axi_wdata[5];
                                            rx_data_ready_ovr_en_a[1] <= s_axi_wdata[6];
                                            rx_data_ready_ovr_val_a[1] <= s_axi_wdata[7];
                                        end

                                    if(s_axi_wstrb[1] == 1'b1) // s_axi_wdata[15:8]
                                        begin
                                            // s_axi_wdata[8] - tx_dma_data_ready_a[1] (not overriden), Read-only
                                            // s_axi_wdata[9] - rx_dma_xfer_req_a[1] (not overriden), Read-only
                                            // s_axi_wdata[10] - tx_data_ready_a[1] (not overriden), Read-only
                                            // s_axi_wdata[11] - rx_data_ready_a[1] (not overriden), Read-only
                                            // s_axi_wdata[12] - tx_dma_data_ready_ovr_a[1] (overriden), Read-only
                                            // s_axi_wdata[13] - rx_dma_xfer_req_ovr_a[1] (overriden), Read-only
                                            // s_axi_wdata[14] - tx_data_ready_ovr_a[1] (overriden), Read-only
                                            // s_axi_wdata[15] - rx_data_ready_ovr_a[1] (overriden), Read-only
                                        end

                                    if(s_axi_wstrb[2] == 1'b1) // s_axi_wdata[23:16]
                                        begin
                                            // s_axi_wdata[16] - tx_dma_data_ready_stky_a[1], Read-only, clear on read
                                            // s_axi_wdata[17] - rx_dma_xfer_req_stky_a[1], Read-only, clear on read
                                            // s_axi_wdata[18] - tx_data_ready_stky_a[1], Read-only, clear on read
                                            // s_axi_wdata[19] - rx_data_ready_stky_a[1], Read-only, clear on read
                                            // s_axi_wdata[20] - tx_fifo_underflow_stky_a[1], Read-only, clear on read
                                            // s_axi_wdata[21] - rx_fifo_overflow_stky_a[1], Read-only, clear on read
                                        end

                                    // if(s_axi_wstrb[3] == 1'b1) // s_axi_wdata[31:24]
                                    //     begin
                                    //     end
                                end
                            5'h1A: // Register 26
                                begin
                                    if(!cnt_tx_en_a[1])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx1_a[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx1_a[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx1_a[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx1_a[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h1B: // Register 27
                                begin
                                    if(!cnt_tx_en_a[1])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_tx1_a[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_tx1_a[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_tx1_a[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_tx1_a[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h1C: // Register 28
                                begin
                                    if(!cnt_rx_en_a[1])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx1_a[7:0] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx1_a[15:8] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx1_a[23:16] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx1_a[31:24] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h1D: // Register 29
                                begin
                                    if(!cnt_rx_en_a[1])
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                cnt_rx1_a[39:32] <= s_axi_wdata[7:0];

                                            if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                cnt_rx1_a[47:40] <= s_axi_wdata[15:8];

                                            if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                cnt_rx1_a[55:48] <= s_axi_wdata[23:16];

                                            if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                cnt_rx1_a[63:56] <= s_axi_wdata[31:24];
                                        end
                                end
                            5'h1E: // Register 30
                                begin
                                    // Latched counter value is not writable
                                end
                            5'h1F: // Register 31
                                begin
                                    // Latched counter value is not writable
                                end
                        endcase
                    end
            end
    end

// Synchronization logic (aclk -> ts_clk)
assign sync_aclk_to_ts_clk_in = {
    ts_clk_sync_bypass_a,
    ts_clk_resync_req_a,
    tx_dma_data_ready_ovr_en_a,
    tx_dma_data_ready_ovr_val_a,
    rx_dma_xfer_req_ovr_en_a,
    rx_dma_xfer_req_ovr_val_a,
    tx_data_ready_ovr_en_a,
    tx_data_ready_ovr_val_a,
    rx_data_ready_ovr_en_a,
    rx_data_ready_ovr_val_a,
    tx_enable_man_a,
    rx_enable_man_a,
    cnt_wr_a,
    cnt_tx0_a,
    cnt_tx1_a,
    cnt_rx0_a,
    cnt_rx1_a,
    cnt_wr_req_a,
    cnt_en_a,
    cnt_tx_en_a,
    cnt_rx_en_a,
    cnt_latch_arm_req_a,
    cnt_latch_valid_rd_a
};

always @(posedge aclk)
    sync_aclk_to_ts_clk_src_req <= !sync_aclk_to_ts_clk_src_done;

always @(posedge ts_clk)
    if(sync_aclk_to_ts_clk_dst_req)
        {
            ts_clk_sync_bypass,
            ts_clk_resync_req,
            tx_dma_data_ready_ovr_en,
            tx_dma_data_ready_ovr_val,
            rx_dma_xfer_req_ovr_en,
            rx_dma_xfer_req_ovr_val,
            tx_data_ready_ovr_en,
            tx_data_ready_ovr_val,
            rx_data_ready_ovr_en,
            rx_data_ready_ovr_val,
            tx_enable_man,
            rx_enable_man,
            cnt_wr,
            cnt_tx0,
            cnt_tx1,
            cnt_rx0,
            cnt_rx1,
            cnt_wr_req,
            cnt_en,
            cnt_tx_en,
            cnt_rx_en,
            cnt_latch_arm_req,
            cnt_latch_valid_rd
        } <= sync_aclk_to_ts_clk_out;

// Synchronization logic (ts_clk -> aclk)
assign sync_ts_clk_to_aclk_in = {
    ts_clk_tx_synced,
    ts_clk_rx_synced,
    tx_dma_data_ready,
    tx_dma_data_ready_ovr,
    rx_dma_xfer_req,
    rx_dma_xfer_req_ovr,
    tx_data_ready,
    tx_data_ready_ovr,
    rx_data_ready,
    rx_data_ready_ovr,
    tx_fifo_underflow,
    rx_fifo_overflow,
    tx_enable,
    rx_enable,
    cnt,
    cnt_latched0,
    cnt_latched1,
    cnt_wr_done,
    cnt_tx_done,
    cnt_rx_done,
    cnt_latch_armed,
    cnt_latch_valid,
    ts_resetn
};

always @(posedge ts_clk)
    sync_ts_clk_to_aclk_src_req <= !sync_ts_clk_to_aclk_src_done;

always @(posedge aclk)
    if(sync_ts_clk_to_aclk_dst_req)
        {
            ts_clk_tx_synced_a,
            ts_clk_rx_synced_a,
            tx_dma_data_ready_a,
            tx_dma_data_ready_ovr_a,
            rx_dma_xfer_req_a,
            rx_dma_xfer_req_ovr_a,
            tx_data_ready_a,
            tx_data_ready_ovr_a,
            rx_data_ready_a,
            rx_data_ready_ovr_a,
            tx_fifo_underflow_a,
            rx_fifo_overflow_a,
            tx_enable_a,
            rx_enable_a,
            cnt_a,
            cnt_latched0_a,
            cnt_latched1_a,
            cnt_wr_done_a,
            cnt_tx_done_a,
            cnt_rx_done_a,
            cnt_latch_armed_a,
            cnt_latch_valid_a,
            ts_resetn_a
        } <= sync_ts_clk_to_aclk_out;

endmodule