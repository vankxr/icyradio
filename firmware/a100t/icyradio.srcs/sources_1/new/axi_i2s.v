`timescale 1ns / 1ps

module axi_i2s
#(
    parameter MCLK_DIV_SZ = 8,
    parameter BCLK_DIV_SZ = 8,
    parameter LRCLK_DIV_SZ = 16,

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

    // Interrupt line
    output irq,

    // Source clock and reset for I2S FSM and AXI-Stream interfaces
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET i2s_src_resetn" *)
    input i2s_src_clk,
    input i2s_src_resetn,

    // Master AXI Stream (Audio samples)
    input         m_axis_tready,
    output        m_axis_tvalid,
    output [31:0] m_axis_tdata,

    // Slave AXI Stream (Audio samples)
    output        s_axis_tready,
    input         s_axis_tvalid,
    input  [31:0] s_axis_tdata,

    // I2S signals
    output i2s_mclk,
    output i2s_bclk,
    output i2s_lrclk,
    output i2s_sdata_out,
    input  i2s_sdata_in
);

localparam S_AXI_ADDR_LSB = 2;
localparam NUM_IRQS = 9;

localparam I2S_FSM_STATE_RESET = 3'd0;
localparam I2S_FSM_STATE_RD_FIRST = 3'd1;
localparam I2S_FSM_STATE_WAIT_LRCLK_SYNC = 3'd2;
localparam I2S_FSM_STATE_WAIT_BCLK_SYNC = 3'd3;
localparam I2S_FSM_STATE_ACTIVE = 3'd4;

wire        m_axis_tready;
reg         m_axis_tvalid;
reg  [31:0] m_axis_tdata;

reg         s_axis_tready;
wire        s_axis_tvalid;
wire [31:0] s_axis_tdata;

reg                       i2s_mclk; // Master clock
reg                       i2s_bclk; // Bit clock
reg                       i2s_lrclk; // Left/right clock (Sample rate)
reg                       i2s_sdata_out; // Serial data out
reg                       i2s_sdata_out_int; // Internal serial data out
wire                      i2s_sdata_in; // Serial data in
reg                       i2s_sdata_in_q; // Registered serial data in
reg                       i2s_sdata_in_int; // Internal serial data in
reg                       i2s_en_a; // Enable I2S Serializer/Deseiralizer (SERDES) (AXI-Lite clock domain)
reg                       i2s_en; // Enable I2S Serializer/Deseiralizer (SERDES)
reg                       i2s_pause_a; // Pause I2S Serializer/Deseiralizer (SERDES) (AXI-Lite clock domain)
reg                       i2s_pause; // Pause I2S Serializer/Deseiralizer (SERDES)
reg                       i2s_paused_a; // I2S Serializer/Deseiralizer (SERDES) paused (AXI-Lite clock domain)
reg                       i2s_paused; // I2S Serializer/Deseiralizer (SERDES) paused
reg                       i2s_lb_en_a; // Enable I2S Loopback (AXI-Lite clock domain)
reg                       i2s_lb_en; // Enable I2S Loopback
reg                 [2:0] i2s_fsm_state; // I2S SERDES FSM state
reg                 [7:0] i2s_chan_en_a; // Bit mask of enabled slots (channels) (AXI-Lite clock domain)
reg                 [7:0] i2s_chan_en; // Bit mask of enabled slots (channels)
reg                 [2:0] i2s_chan_max_a; // Number of channels in the frame - 1 (AXI-Lite clock domain)
reg                 [2:0] i2s_chan_max; // Number of channels in the frame - 1
reg                 [2:0] i2s_chan_cnt; // Current channel
reg                       i2s_chan_bit_sz_a; // Channel bit size (0 = 16 bits, 1 = 32 bits) (AXI-Lite clock domain)
reg                       i2s_chan_bit_sz; // Channel bit size (0 = 16 bits, 1 = 32 bits)
reg                 [5:0] i2s_bit_cnt; // Number of bits shifted in the current channel
reg                 [5:0] i2s_sdata_out_sr_bit_cnt; // Number of bits left in the output shift register
reg                [31:0] i2s_sdata_out_sr; // Serial data out shift register
reg                 [5:0] i2s_sdata_in_sr_bit_cnt; // Number of bits in the input shift register
reg                [31:0] i2s_sdata_in_sr; // Serial data in shift register
reg                       i2s_clk_div_en_a; // Enable I2S clock generation (AXI-Lite clock domain)
reg                       i2s_clk_div_en; // Enable I2S clock generation
reg   [MCLK_DIV_SZ - 1:0] i2s_mclk_div_cnt; // Master clock divider counter
reg   [MCLK_DIV_SZ - 1:0] i2s_mclk_div_a; // Master clock divider ratio (counter top value) (AXI-Lite clock domain)
reg   [MCLK_DIV_SZ - 1:0] i2s_mclk_div; // Master clock divider ratio (counter top value)
wire                      i2s_mclk_toggle = (i2s_mclk_div_cnt == i2s_mclk_div) & i2s_clk_div_en; // Master clock will toggle on next aclk cycle
wire                      i2s_mclk_rising = i2s_mclk_toggle & ~i2s_mclk; // Master clock rising edge will happen on next aclk cycle
wire                      i2s_mclk_falling = i2s_mclk_toggle & i2s_mclk; // Master clock falling edge will happen on next aclk cycle
reg   [BCLK_DIV_SZ - 1:0] i2s_bclk_div_cnt; // Bit clock divider counter
reg   [BCLK_DIV_SZ - 1:0] i2s_bclk_div_a; // Bit clock divider ratio (counter top value) (AXI-Lite clock domain)
reg   [BCLK_DIV_SZ - 1:0] i2s_bclk_div; // Bit clock divider ratio (counter top value)
wire                      i2s_bclk_toggle = (i2s_bclk_div_cnt == i2s_bclk_div) & i2s_clk_div_en; // Bit clock will toggle on next aclk cycle
wire                      i2s_bclk_rising = i2s_bclk_toggle & ~i2s_bclk; // Bit clock rising edge will happen on next aclk cycle
wire                      i2s_bclk_falling = i2s_bclk_toggle & i2s_bclk; // Bit clock falling edge will happen on next aclk cycle
reg  [LRCLK_DIV_SZ - 1:0] i2s_lrclk_div_cnt; // Left/right clock divider counter
reg  [LRCLK_DIV_SZ - 1:0] i2s_lrclk_div_a; // Left/right clock divider ratio (counter top value) (AXI-Lite clock domain)
reg  [LRCLK_DIV_SZ - 1:0] i2s_lrclk_div; // Left/right clock divider ratio (counter top value)
wire                      i2s_lrclk_toggle = (i2s_lrclk_div_cnt == i2s_lrclk_div) & i2s_clk_div_en; // Left/right clock will toggle on next aclk cycle
wire                      i2s_lrclk_rising = i2s_lrclk_toggle & ~i2s_lrclk; // Left/right clock rising edge will happen on next aclk cycle
wire                      i2s_lrclk_falling = i2s_lrclk_toggle & i2s_lrclk; // Left/right clock falling edge will happen on next aclk cycle

reg  i2s_src_resetn_a; // Reset signal for the I2S SERDES and AXI-Stream interfaces (AXI-Lite clock domain)

// Synchronization logic (aclk -> i2s_src_clk)
wire [15 + MCLK_DIV_SZ + BCLK_DIV_SZ + LRCLK_DIV_SZ:0] sync_aclk_to_i2s_src_clk_out;       // Synchtonized signals aclk -> i2s_src_clk output in i2s_src_clk domain
wire [15 + MCLK_DIV_SZ + BCLK_DIV_SZ + LRCLK_DIV_SZ:0] sync_aclk_to_i2s_src_clk_in;        // Synchtonized signals aclk -> i2s_src_clk input in aclk domain
wire                                                   sync_aclk_to_i2s_src_clk_src_done;  // Synchronization done signal for aclk -> i2s_src_clk
reg                                                    sync_aclk_to_i2s_src_clk_src_req;   // Synchronization request signal for aclk -> i2s_src_clk
wire                                                   sync_aclk_to_i2s_src_clk_dst_req;   // Synchronization request signal for aclk -> i2s_src_clk output in i2s_src_clk domain

xpm_cdc_handshake #(
    .DEST_EXT_HSK(0),
    .DEST_SYNC_FF(4),
    .INIT_SYNC_FF(1),
    .SIM_ASSERT_CHK(1),
    .SRC_SYNC_FF(2),
    .WIDTH(16 + MCLK_DIV_SZ + BCLK_DIV_SZ + LRCLK_DIV_SZ)
)
aclk_to_i2s_src_clk_sync
(
    .dest_out(sync_aclk_to_i2s_src_clk_out),
    .dest_req(sync_aclk_to_i2s_src_clk_dst_req),
    .src_rcv(sync_aclk_to_i2s_src_clk_src_done),
    .dest_ack(),
    .dest_clk(i2s_src_clk),
    .src_clk(aclk),
    .src_in(sync_aclk_to_i2s_src_clk_in),
    .src_send(sync_aclk_to_i2s_src_clk_src_req)
);

// Synchronization logic (i2s_src_clk -> aclk)
wire   [1:0] sync_i2s_src_clk_to_aclk_out;       // Synchtonized signals i2s_src_clk -> aclk output in aclk domain
wire   [1:0] sync_i2s_src_clk_to_aclk_in;        // Synchtonized signals i2s_src_clk -> aclk input in i2s_src_clk domain
wire         sync_i2s_src_clk_to_aclk_src_done;  // Synchronization done signal for i2s_src_clk -> aclk
reg          sync_i2s_src_clk_to_aclk_src_req;   // Synchronization request signal for i2s_src_clk -> aclk
wire         sync_i2s_src_clk_to_aclk_dst_req;   // Synchronization request signal for i2s_src_clk -> aclk output in aclk domain

xpm_cdc_handshake #(
    .DEST_EXT_HSK(0),
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(1),
    .SIM_ASSERT_CHK(1),
    .SRC_SYNC_FF(2),
    .WIDTH(2)
)
i2s_src_clk_to_aclk_sync
(
    .dest_out(sync_i2s_src_clk_to_aclk_out),
    .dest_req(sync_i2s_src_clk_to_aclk_dst_req),
    .src_rcv(sync_i2s_src_clk_to_aclk_src_done),
    .dest_ack(),
    .dest_clk(aclk),
    .src_clk(i2s_src_clk),
    .src_in(sync_i2s_src_clk_to_aclk_in),
    .src_send(sync_i2s_src_clk_to_aclk_src_req)
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

// Clock generation
always @(posedge i2s_src_clk)
    begin
        if(!i2s_clk_div_en)
            begin
                i2s_mclk <= 1'b0;
                i2s_bclk <= 1'b0;
                i2s_lrclk <= 1'b0;

                i2s_mclk_div_cnt <= {MCLK_DIV_SZ{1'b0}};
                i2s_bclk_div_cnt <= {BCLK_DIV_SZ{1'b0}};
                i2s_lrclk_div_cnt <= {LRCLK_DIV_SZ{1'b0}};
            end
        else
            begin
                i2s_mclk_div_cnt <= i2s_mclk_div_cnt + 1;
                i2s_bclk_div_cnt <= i2s_bclk_div_cnt + 1;
                i2s_lrclk_div_cnt <= i2s_lrclk_div_cnt + 1;

                if(i2s_mclk_toggle)
                    begin
                        i2s_mclk_div_cnt <= {MCLK_DIV_SZ{1'b0}};
                        i2s_mclk <= ~i2s_mclk;
                    end

                if(i2s_bclk_toggle)
                    begin
                        i2s_bclk_div_cnt <= {BCLK_DIV_SZ{1'b0}};
                        i2s_bclk <= ~i2s_bclk;
                    end

                if(i2s_lrclk_toggle)
                    begin
                        i2s_lrclk_div_cnt <= {LRCLK_DIV_SZ{1'b0}};
                        i2s_lrclk <= ~i2s_lrclk;
                    end
            end
    end

// Async I2S Loopback mux
always @(*)
    begin
        case(i2s_lb_en)
            1'b0: i2s_sdata_out <= i2s_sdata_out_int;
            1'b1: i2s_sdata_out <= i2s_sdata_in;
        endcase
    end

always @(*)
    begin
        case(i2s_lb_en)
            1'b0: i2s_sdata_in_int <= i2s_sdata_in_q;
            1'b1: i2s_sdata_in_int <= i2s_sdata_out_int;
        endcase
    end

// I2S SERDES logic
always @(posedge i2s_src_clk)
    begin
        if(!i2s_en)
            begin
                m_axis_tvalid <= 1'b0;
                m_axis_tdata <= 32'h00000000;

                s_axis_tready <= 1'b0;

                i2s_sdata_out_int <= 1'b0;
                i2s_sdata_in_q <= 1'b0;

                i2s_paused <= i2s_pause;
                i2s_fsm_state <= I2S_FSM_STATE_RD_FIRST;
                i2s_chan_cnt <= 3'd0;
                i2s_bit_cnt <= 6'd0;
                i2s_sdata_out_sr_bit_cnt <= 6'd0;
                i2s_sdata_out_sr <= 32'h00000000;
                i2s_sdata_in_sr_bit_cnt <= 6'd0;
                i2s_sdata_in_sr <= 32'h00000000;
            end
        else
            begin
                i2s_sdata_in_q <= i2s_sdata_in;

                if(s_axis_tready && s_axis_tvalid) // If S-AXIS has data, read it
                    begin
                        s_axis_tready <= 1'b0;

                        i2s_sdata_out_sr <= s_axis_tdata;
                        i2s_sdata_out_sr_bit_cnt <= 6'd32;
                    end

                if(m_axis_tready && m_axis_tvalid) // If M-AXIS has read the data, de-assert valid and set input shift register to empty
                    begin
                        m_axis_tvalid <= 1'b0;

                        i2s_sdata_in_sr_bit_cnt <= 6'd0;
                    end

                case(i2s_fsm_state)
                    I2S_FSM_STATE_RESET:
                        begin
                            m_axis_tvalid <= 1'b0;
                            m_axis_tdata <= 32'h00000000;

                            s_axis_tready <= 1'b0;

                            i2s_sdata_out_int <= 1'b0;

                            i2s_paused <= i2s_pause;
                            i2s_chan_cnt <= 3'd0;
                            i2s_bit_cnt <= 6'd0;
                            i2s_sdata_out_sr_bit_cnt <= 6'd0;
                            i2s_sdata_out_sr <= 32'h00000000;
                            i2s_sdata_in_sr_bit_cnt <= 6'd0;
                            i2s_sdata_in_sr <= 32'h00000000;

                            i2s_fsm_state <= I2S_FSM_STATE_RD_FIRST;
                        end
                    I2S_FSM_STATE_RD_FIRST: // Read first data from S-AXIS
                        begin
                            if(!s_axis_tready && ~|i2s_sdata_out_sr_bit_cnt) // Trigger S-AXIS read if we haven't already and got no data
                                s_axis_tready <= 1'b1;

                            if(m_axis_tready && |i2s_sdata_out_sr_bit_cnt) // If M-AXIS is ready and we have data to TX, move on
                                i2s_fsm_state <= I2S_FSM_STATE_WAIT_LRCLK_SYNC;
                        end
                    I2S_FSM_STATE_WAIT_LRCLK_SYNC: // Wait for sync (LRCLK falling edge and BCLK falling edge at the same time)
                        begin
                            i2s_paused <= i2s_pause;

                            if(!i2s_paused && i2s_lrclk_falling & i2s_bclk_falling)
                                i2s_fsm_state <= I2S_FSM_STATE_WAIT_BCLK_SYNC;
                        end
                    I2S_FSM_STATE_WAIT_BCLK_SYNC: // Wait for first BCLK rising edge where we do nothing
                        begin
                            if(i2s_bclk_rising)
                                i2s_fsm_state <= I2S_FSM_STATE_ACTIVE;
                        end
                    I2S_FSM_STATE_ACTIVE:
                        begin
                            // In this state, the falling edge always happens first, so we can use that to determine what to do
                            if(i2s_bclk_falling) // Setup new data on falling BCLK edge
                                begin
                                    // Current channel incrementation happens at the rising edge, because it comes last

                                    if(i2s_chan_en[i2s_chan_cnt]) // If the channel is enabled
                                        begin
                                            if(|i2s_sdata_out_sr_bit_cnt) // If and we have data left
                                                begin
                                                    {i2s_sdata_out_int, i2s_sdata_out_sr} <= {i2s_sdata_out_sr[31:0], 1'b0};

                                                    i2s_sdata_out_sr_bit_cnt <= i2s_sdata_out_sr_bit_cnt - 1;

                                                    if(~|i2s_sdata_out_sr_bit_cnt[5:1]) // If the shift register is about to be empty
                                                        s_axis_tready <= 1'b1; // Signal S-AXIS that we are ready to accept new data
                                                end
                                            else
                                                begin
                                                    // We lost sync, move back to the first state
                                                    i2s_fsm_state <= I2S_FSM_STATE_RESET;
                                                end
                                        end
                                    else
                                        begin
                                            i2s_sdata_out_int <= 1'b0;
                                        end
                                end

                            if(i2s_bclk_rising) // Read data on rising BCLK edge
                                begin
                                    i2s_bit_cnt <= i2s_bit_cnt + 1;

                                    if((!i2s_chan_bit_sz && &i2s_bit_cnt[3:0]) || (i2s_chan_bit_sz && &i2s_bit_cnt[4:0])) // If we read the last bit of the current channel (16 or 32)
                                        begin
                                            i2s_bit_cnt <= 6'd0;

                                            if(i2s_chan_cnt == i2s_chan_max) // If we are at the last channel
                                                begin
                                                    i2s_chan_cnt <= 3'd0;

                                                    if(i2s_pause)
                                                        begin
                                                            i2s_paused <= 1'b1;

                                                            i2s_fsm_state <= I2S_FSM_STATE_WAIT_LRCLK_SYNC;
                                                        end
                                                end
                                            else
                                                begin
                                                    i2s_chan_cnt <= i2s_chan_cnt + 1;
                                                end
                                        end

                                    if(i2s_chan_en[i2s_chan_cnt]) // If the channel is enabled
                                        begin
                                            if(!i2s_sdata_in_sr_bit_cnt[5]) // If we have space
                                                begin
                                                    i2s_sdata_in_sr_bit_cnt <= i2s_sdata_in_sr_bit_cnt + 1;

                                                    if(&i2s_sdata_in_sr_bit_cnt[4:0]) // If the shift register is about to become full
                                                        begin
                                                            m_axis_tvalid <= 1'b1; // Signal M-AXIS that data is valid
                                                            m_axis_tdata <= {i2s_sdata_in_sr[30:0], i2s_sdata_in_int}; // Write data to M-AXIS

                                                            i2s_sdata_in_sr <= 32'h00000000;
                                                        end
                                                    else
                                                        begin
                                                            i2s_sdata_in_sr <= {i2s_sdata_in_sr[30:0], i2s_sdata_in_int};
                                                        end
                                                end
                                            else
                                                begin
                                                    // We lost sync, move back to the first state
                                                    i2s_fsm_state <= I2S_FSM_STATE_RESET;
                                                end
                                        end
                                end
                        end
                    default: i2s_fsm_state <= I2S_FSM_STATE_RESET;
                endcase
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
                i2s_en_a <= 1'b0;
                i2s_pause_a <= 1'b0;
                i2s_lb_en_a <= 1'b0;
                i2s_chan_en_a <= 8'b00000000;
                i2s_chan_max_a <= 3'd0;
                i2s_chan_bit_sz_a <= 1'b0;

                i2s_clk_div_en_a <= 1'b0;
                i2s_mclk_div_a <= {MCLK_DIV_SZ{1'b0}};
                i2s_bclk_div_a <= {BCLK_DIV_SZ{1'b0}};
                i2s_lrclk_div_a <= {LRCLK_DIV_SZ{1'b0}};

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

                // IRQs for the synchronization handshakers
                if(sync_aclk_to_i2s_src_clk_src_req && sync_aclk_to_i2s_src_clk_src_done)
                    irq_pend[7] <= 1'b1; // IRQ #7 - aclk -> i2s_src_clk synced

                if(sync_i2s_src_clk_to_aclk_dst_req)
                    irq_pend[8] <= 1'b1; // IRQ #8 - i2s_src_clk -> aclk synced

                // Read data
                if(s_axi_rd_en)
                    begin
                        s_axi_rvalid <= 1'b1;
                        s_axi_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_araddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            3'h0:    s_axi_rdata <= {16'd1, 8'd0, 8'd1}; // IP Version
                            3'h1:    s_axi_rdata <= {i2s_src_resetn_a, 10'd0, i2s_chan_bit_sz_a, 1'd0, i2s_chan_max_a, i2s_chan_en_a, 3'd0, i2s_lb_en_a, i2s_paused_a, i2s_pause_a, i2s_en_a, i2s_clk_div_en_a};
                            3'h2:    s_axi_rdata <= {{(S_AXI_DSZ - MCLK_DIV_SZ){1'b0}}, i2s_mclk_div_a};
                            3'h3:    s_axi_rdata <= {{(S_AXI_DSZ - BCLK_DIV_SZ){1'b0}}, i2s_bclk_div_a};
                            3'h4:    s_axi_rdata <= {{(S_AXI_DSZ - LRCLK_DIV_SZ){1'b0}}, i2s_lrclk_div_a};
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
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(!i2s_en_a || !s_axi_wdata[1]) // Clock generation can only be disabled if the I2S serializer/deserializer is disabled
                                                i2s_clk_div_en_a <= s_axi_wdata[0];

                                            if(i2s_clk_div_en_a || s_axi_wdata[0]) // I2S serializer/deserializer can only be enabled if the clock generation is enabled
                                                i2s_en_a <= s_axi_wdata[1];

                                            i2s_pause_a <= s_axi_wdata[2];
                                            // s_axi_wdata[3] is i2s_paused_a
                                            i2s_lb_en_a <= s_axi_wdata[4];
                                        end

                                    if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(!i2s_en_a)
                                                i2s_chan_en_a <= s_axi_wdata[15:8];
                                        end

                                    if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(!i2s_en_a)
                                                begin
                                                    i2s_chan_max_a <= s_axi_wdata[18:16];

                                                    i2s_chan_bit_sz_a <= s_axi_wdata[20];
                                                end
                                        end

                                    if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            // s_axi_wdata[31] is i2s_src_resetn_a
                                        end
                                end
                            3'h2: // Register 2
                                begin
                                    if(!i2s_clk_div_en_a) // Clock divider can only be changed if the clock generation is disabled
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                begin
                                                    if(MCLK_DIV_SZ > 8)
                                                        i2s_mclk_div_a[7:0] <= s_axi_wdata[7:0];
                                                    else
                                                        i2s_mclk_div_a[MCLK_DIV_SZ - 1:0] <= s_axi_wdata[MCLK_DIV_SZ - 1:0];
                                                end

                                            if(MCLK_DIV_SZ > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                begin
                                                    if(MCLK_DIV_SZ > 16)
                                                        i2s_mclk_div_a[15:8] <= s_axi_wdata[15:8];
                                                    else
                                                        i2s_mclk_div_a[MCLK_DIV_SZ - 1:8] <= s_axi_wdata[MCLK_DIV_SZ - 1:8];
                                                end

                                            if(MCLK_DIV_SZ > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                begin
                                                    if(MCLK_DIV_SZ > 24)
                                                        i2s_mclk_div_a[23:16] <= s_axi_wdata[23:16];
                                                    else
                                                        i2s_mclk_div_a[MCLK_DIV_SZ - 1:16] <= s_axi_wdata[MCLK_DIV_SZ - 1:16];
                                                end

                                            if(MCLK_DIV_SZ > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                begin
                                                    i2s_mclk_div_a[MCLK_DIV_SZ - 1:24] <= s_axi_wdata[MCLK_DIV_SZ - 1:24];
                                                end
                                        end
                                end
                            3'h3: // Register 3
                                begin
                                    if(!i2s_clk_div_en_a) // Clock divider can only be changed if the clock generation is disabled
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                begin
                                                    if(BCLK_DIV_SZ > 8)
                                                        i2s_bclk_div_a[7:0] <= s_axi_wdata[7:0];
                                                    else
                                                        i2s_bclk_div_a[BCLK_DIV_SZ - 1:0] <= s_axi_wdata[BCLK_DIV_SZ - 1:0];
                                                end

                                            if(BCLK_DIV_SZ > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                begin
                                                    if(BCLK_DIV_SZ > 16)
                                                        i2s_bclk_div_a[15:8] <= s_axi_wdata[15:8];
                                                    else
                                                        i2s_bclk_div_a[BCLK_DIV_SZ - 1:8] <= s_axi_wdata[BCLK_DIV_SZ - 1:8];
                                                end

                                            if(BCLK_DIV_SZ > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                begin
                                                    if(BCLK_DIV_SZ > 24)
                                                        i2s_bclk_div_a[23:16] <= s_axi_wdata[23:16];
                                                    else
                                                        i2s_bclk_div_a[BCLK_DIV_SZ - 1:16] <= s_axi_wdata[BCLK_DIV_SZ - 1:16];
                                                end

                                            if(BCLK_DIV_SZ > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                begin
                                                    i2s_bclk_div_a[BCLK_DIV_SZ - 1:24] <= s_axi_wdata[BCLK_DIV_SZ - 1:24];
                                                end
                                        end
                                end
                            3'h4: // Register 4
                                begin
                                    if(!i2s_clk_div_en_a) // Clock divider can only be changed if the clock generation is disabled
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                begin
                                                    if(LRCLK_DIV_SZ > 8)
                                                        i2s_lrclk_div_a[7:0] <= s_axi_wdata[7:0];
                                                    else
                                                        i2s_lrclk_div_a[LRCLK_DIV_SZ - 1:0] <= s_axi_wdata[LRCLK_DIV_SZ - 1:0];
                                                end

                                            if(LRCLK_DIV_SZ > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                begin
                                                    if(LRCLK_DIV_SZ > 16)
                                                        i2s_lrclk_div_a[15:8] <= s_axi_wdata[15:8];
                                                    else
                                                        i2s_lrclk_div_a[LRCLK_DIV_SZ - 1:8] <= s_axi_wdata[LRCLK_DIV_SZ - 1:8];
                                                end

                                            if(LRCLK_DIV_SZ > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                begin
                                                    if(LRCLK_DIV_SZ > 24)
                                                        i2s_lrclk_div_a[23:16] <= s_axi_wdata[23:16];
                                                    else
                                                        i2s_lrclk_div_a[LRCLK_DIV_SZ - 1:16] <= s_axi_wdata[LRCLK_DIV_SZ - 1:16];
                                                end

                                            if(LRCLK_DIV_SZ > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                begin
                                                    i2s_lrclk_div_a[LRCLK_DIV_SZ - 1:24] <= s_axi_wdata[LRCLK_DIV_SZ - 1:24];
                                                end
                                        end
                                end
                        endcase
                    end
            end
    end

// Synchronization logic (aclk -> i2s_src_clk)
assign sync_aclk_to_i2s_src_clk_in = {
    i2s_en_a,
    i2s_pause_a,
    i2s_lb_en_a,
    i2s_chan_en_a,
    i2s_chan_max_a,
    i2s_chan_bit_sz_a,
    i2s_clk_div_en_a,
    i2s_mclk_div_a,
    i2s_bclk_div_a,
    i2s_lrclk_div_a
};

always @(posedge aclk)
    sync_aclk_to_i2s_src_clk_src_req <= !sync_aclk_to_i2s_src_clk_src_done;

always @(posedge i2s_src_clk)
    if(sync_aclk_to_i2s_src_clk_dst_req)
        {
            i2s_en,
            i2s_pause,
            i2s_lb_en,
            i2s_chan_en,
            i2s_chan_max,
            i2s_chan_bit_sz,
            i2s_clk_div_en,
            i2s_mclk_div,
            i2s_bclk_div,
            i2s_lrclk_div
        } <= sync_aclk_to_i2s_src_clk_out;

// Synchronization logic (i2s_src_clk -> aclk)
assign sync_i2s_src_clk_to_aclk_in = {
    i2s_paused,
    i2s_src_resetn
};

always @(posedge i2s_src_clk)
    sync_i2s_src_clk_to_aclk_src_req <= !sync_i2s_src_clk_to_aclk_src_done;

always @(posedge aclk)
    if(sync_i2s_src_clk_to_aclk_dst_req)
        {
            i2s_paused_a,
            i2s_src_resetn_a
        } <= sync_i2s_src_clk_to_aclk_out;

endmodule