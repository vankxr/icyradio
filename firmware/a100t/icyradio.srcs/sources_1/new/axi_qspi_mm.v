`timescale 1ns / 1ps

module axi_qspi_mm
#(
    parameter NUM_SLAVES = 1,
    parameter SCK_DIV_SZ = 10,

    localparam S_AXI_LITE_DSZ = 32,
    localparam S_AXI_LITE_ASZ = 6, // ceil(log2(<number of 32-bit registers>)) + 2
    localparam S_AXI_FULL_DSZ = 64,
    localparam S_AXI_FULL_ASZ = 24
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

    // Interrupt line
    output irq,

    // Slave AXI (XIP access)
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
    output                             s_axi_full_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WDATA" *)
    input       [S_AXI_FULL_DSZ - 1:0] s_axi_full_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WSTRB" *)
    input [(S_AXI_FULL_DSZ / 8) - 1:0] s_axi_full_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WLAST" *)
    input                              s_axi_full_wlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WVALID" *)
    input                              s_axi_full_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WREADY" *)
    output                             s_axi_full_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *)
    output                       [3:0] s_axi_full_bid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BRESP" *)
    output                       [1:0] s_axi_full_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BVALID" *)
    output                             s_axi_full_bvalid,
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
    output                             s_axi_full_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *)
    output                       [3:0] s_axi_full_rid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *)
    output      [S_AXI_FULL_DSZ - 1:0] s_axi_full_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RRESP" *)
    output                       [1:0] s_axi_full_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RLAST" *)
    output                             s_axi_full_rlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RVALID" *)
    output                             s_axi_full_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RREADY" *)
    input                              s_axi_full_rready,

    // SPI
    (* X_INTERFACE_MODE = "Master" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SCK_I" *)
    input                     spi_sck_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SCK_O" *)
    output                    spi_sck_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SCK_T" *)
    output                    spi_sck_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SS_I" *)
    input  [NUM_SLAVES - 1:0] spi_ss_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SS_O" *)
    output [NUM_SLAVES - 1:0] spi_ss_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SS_T" *)
    output                    spi_ss_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_I" *)
    input                     spi_io0_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *)
    output                    spi_io0_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *)
    output                    spi_io0_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO1_I" *)
    input                     spi_io1_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO1_O" *)
    output                    spi_io1_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO1_T" *)
    output                    spi_io1_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO2_I" *)
    input                     spi_io2_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO2_O" *)
    output                    spi_io2_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO2_T" *)
    output                    spi_io2_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO3_I" *)
    input                     spi_io3_i,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO3_O" *)
    output                    spi_io3_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO3_T" *)
    output                    spi_io3_t
);

localparam S_AXI_LITE_ADDR_LSB = 2;
localparam S_AXI_FULL_ADDR_LSB = 3;
localparam NUM_IRQS = 7;

localparam QSPI_IO_MODE_SINGLE = 3'd1;
localparam QSPI_IO_MODE_DUAL = 3'd2;
localparam QSPI_IO_MODE_QUAD = 3'd4;

localparam SPI_FSM_STATE_WAIT_XFER_REQ = 2'd0;
localparam SPI_FSM_STATE_WAIT_SCK_SYNC = 2'd1;
localparam SPI_FSM_STATE_ACTIVE = 2'd2;

localparam SPI_MMIO_FSM_STATE_READY = 4'd0;
localparam SPI_MMIO_FSM_STATE_RAISE_CS = 4'd1;
localparam SPI_MMIO_FSM_STATE_WAIT_CS = 4'd2;
localparam SPI_MMIO_FSM_STATE_LOWER_CS = 4'd3;
localparam SPI_MMIO_FSM_STATE_XFER_INSTR = 4'd4;
localparam SPI_MMIO_FSM_STATE_XFER_ADDR = 4'd5;
localparam SPI_MMIO_FSM_STATE_XFER_MODE = 4'd6;
localparam SPI_MMIO_FSM_STATE_XFER_DUMMY = 4'd7;
localparam SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_1 = 4'd8;
localparam SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_2 = 4'd9;
localparam SPI_MMIO_FSM_STATE_XFER_DATA = 4'd10;

wire                    spi_sck_i;
wire                    spi_sck_o;
reg                     spi_sck_t = 1'b0;
wire [NUM_SLAVES - 1:0] spi_ss_i;
reg  [NUM_SLAVES - 1:0] spi_ss_o;
reg                     spi_ss_t = 1'b0;
wire                    spi_io0_i;
wire                    spi_io1_i;
wire                    spi_io2_i;
wire                    spi_io3_i;
wire                    spi_io0_o;
wire                    spi_io1_o;
wire                    spi_io2_o;
wire                    spi_io3_o;
wire                    spi_io0_t;
wire                    spi_io1_t;
wire                    spi_io2_t;
wire                    spi_io3_t;
reg               [3:0] spi_io_i;
reg               [3:0] spi_io_o;
reg               [3:0] spi_io_t;
reg               [2:0] spi_io_mode; // SPI IO Mode (Single, Dual, Quad)
reg               [2:0] spi_io_mode_q; // Buffered SPI IO Mode
reg               [1:0] spi_mode; // SPI mode (0, 1, 2, 3)
wire                    spi_cpol = spi_mode[1]; // SPI Clock Polarity
wire                    spi_cpha = spi_mode[0]; // SPI Clock Phase
reg                     spi_lsb_first; // SPI LSB first
reg                     spi_en; // Enable SPI Serializer/Deseiralizer (SERDES)
reg               [1:0] spi_fsm_state; // SPI SERDES FSM state
wire                    spi_idle = (spi_fsm_state == SPI_FSM_STATE_WAIT_XFER_REQ); // SPI SERDES FSM idle
reg                     spi_idle_q; // Buffered SPI SERDES FSM idle
reg                     spi_dir; // SPI SERDES current direction (0 = write, 1 = read)
reg                     spi_rd_req; // Request a SPI read
reg                     spi_rd_req_ack; // SPI read request acknowledge
reg               [4:0] spi_sr_bit_cnt; // Number of bits left in the shift register
reg               [7:0] spi_sr; // SPI shift register
reg                     spi_sr_in_buf_valid; // SPI shift register input buffer data valid
reg                     spi_sr_in_buf_valid_q; // Buffered SPI shift register input buffer data valid
reg                     spi_sr_in_buf_ready; // SPI shift register input buffer data ready (read acknowledge)
reg               [7:0] spi_sr_in_buf; // SPI shift register input buffer
reg                     spi_sr_out_buf_valid; // SPI shift register output buffer data valid
reg                     spi_sr_out_buf_ready; // SPI shift register output buffer data ready (read acknowledge)
reg               [7:0] spi_sr_out_buf; // SPI shift register output buffer
reg                     spi_mmio_en; // Enable AXI-Full control of the SPI SERDES
reg                     spi_mmio_en_req; // Request AXI-Full control of the SPI SERDES (0 = request disable, 1 = request enable)
reg               [3:0] spi_mmio_fsm_state; // AXI-Full FSM state
reg               [3:0] spi_mmio_fsm_state_next; // AXI-Full FSM next state
reg               [2:0] spi_mmio_rd_instr_io_mode; // SPI IO Mode to use during the instruction phase
reg               [7:0] spi_mmio_rd_instr; // Instruction to send to the flash during a read transfer
reg               [2:0] spi_mmio_addr_io_mode; // SPI IO Mode to use during the address phase
reg               [1:0] spi_mmio_addr_size; // Total address transfers (1 transfer = 1 byte)
reg               [1:0] spi_mmio_addr_rem; // Remaining address transfers (1 transfer = 1 byte)
reg               [7:0] spi_mmio_addr_next; // Next address byte to be transferred
reg                     spi_mmio_mode_bits_en; // Send mode bits, otherwise skip straight to the dummy phase
reg               [7:0] spi_mmio_mode_bits; // Data to send out during the mode transfer (usually 0xAx for SPI Flashes)
reg               [2:0] spi_mmio_dummy_io_mode; // SPI IO Mode to use during the dummy phase
reg               [1:0] spi_mmio_dummy_size; // Total dummy cycles (1 cycle = 1 byte)
reg               [1:0] spi_mmio_dummy_rem; // Remaining dummy cycles (1 cycle = 1 byte)
reg               [2:0] spi_mmio_data_io_mode; // SPI IO Mode to use during the data phase
reg  [NUM_SLAVES - 1:0] spi_mmio_cs_mask; // CS mask (1 = CS is enabled, 0 = CS is disabled)
reg               [7:0] spi_mmio_cs_high_wait; // Total CS high cycles before lowering again (1 cycle = 1 aclk cycle)
reg               [7:0] spi_mmio_cs_low_wait; // Total CS low cycles before sending data (1 cycle = 1 aclk cycle)
reg               [7:0] spi_mmio_cs_wait_rem; // Remaining CS wait cycles (1 cycle = 1 aclk cycle)
wire                    spi_mmio_cs_active = !(spi_ss_o & spi_mmio_cs_mask); // CS is active (low)
reg                     spi_mmio_cont_read_en; // Enable continuous read mode (no instruction needs to be sent)
reg                     spi_mmio_cont_read_ready; // Continuous mode is ready, i.e., the flash is expecting no instruction in the next cycle
reg              [31:0] spi_mmio_rd_req_cnt; // Metric counter: Number of read requests
reg              [31:0] spi_mmio_cont_rd_req_cnt; // Metric counter: Number of read requests that did not need to raise CS
reg              [31:0] spi_mmio_cont_rd_req_cnt_buf; // Metric counter: Number of read requests that did not need to raise CS, buffered register
reg                     spi_sck_oe; // SPI SCK output enable
reg                     spi_sck_int; // SPI SCK internal signal (always toggles)
reg                     spi_sck_div_en; // Enable SCK divider
reg  [SCK_DIV_SZ - 1:0] spi_sck_div_cnt; // SCK divider counter
reg  [SCK_DIV_SZ - 1:0] spi_sck_div; // SCK divider ratio (counter top value)
wire                    spi_sck_toggle = (spi_sck_div_cnt == spi_sck_div) & spi_sck_div_en; // SCK will toggle on next aclk cycle
wire                    spi_sck_rising = spi_sck_toggle & ~spi_sck_int; // SCK rising edge will happen on next aclk cycle
wire                    spi_sck_falling = spi_sck_toggle & spi_sck_int; // SCK falling edge will happen on next aclk cycle

assign spi_sck_o = (spi_sck_int & spi_sck_oe) ^ spi_cpol;
assign spi_io0_o = spi_io_o[0];
assign spi_io1_o = spi_io_o[1];
assign spi_io2_o = spi_io_o[2];
assign spi_io3_o = spi_io_o[3];
assign spi_io0_t = spi_io_t[0];
assign spi_io1_t = spi_io_t[1];
assign spi_io2_t = spi_io_t[2];
assign spi_io3_t = spi_io_t[3];

reg  [NUM_IRQS - 1:0] irq_enabled; // Interrupt enable register
reg  [NUM_IRQS - 1:0] irq_pend;    // Interrupt pending register
reg                   irq;         // Interrupt line

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
reg                               s_axi_full_awready;
wire       [S_AXI_FULL_DSZ - 1:0] s_axi_full_wdata;
wire [(S_AXI_FULL_DSZ / 8) - 1:0] s_axi_full_wstrb;
wire                              s_axi_full_wlast;
wire                              s_axi_full_wvalid;
reg                               s_axi_full_wready;
reg                         [3:0] s_axi_full_bid;
reg                         [1:0] s_axi_full_bresp;
reg                               s_axi_full_bvalid;
wire                              s_axi_full_bready;
wire                        [3:0] s_axi_full_arid;
wire       [S_AXI_FULL_ASZ - 1:0] s_axi_full_araddr;
reg        [S_AXI_FULL_ASZ - 1:0] s_axi_full_araddr_q; // Qualified address
wire                        [7:0] s_axi_full_arlen;
reg                         [7:0] s_axi_full_arlen_q; // Qualified length
wire                        [2:0] s_axi_full_arsize;
reg                         [2:0] s_axi_full_arsize_q; // Qualified size
wire                        [1:0] s_axi_full_arburst;
reg                         [1:0] s_axi_full_arburst_q; // Qualified burst type
wire                              s_axi_full_arlock;
wire                        [3:0] s_axi_full_arcache;
wire                        [2:0] s_axi_full_arprot;
wire                        [3:0] s_axi_full_arqos;
wire                              s_axi_full_arvalid;
reg                               s_axi_full_arready;
reg                         [3:0] s_axi_full_rid;
reg        [S_AXI_FULL_DSZ - 1:0] s_axi_full_rdata;
reg                         [1:0] s_axi_full_rresp;
reg                               s_axi_full_rlast;
reg                               s_axi_full_rvalid;
wire                              s_axi_full_rready;
reg                               s_axi_full_read_beat_complete; // Beat complete
reg                               s_axi_full_write_busy; // Write busy

// Clock generation
always @(posedge aclk)
    begin
        if(!spi_sck_div_en)
            begin
                spi_sck_int <= 1'b0;

                spi_sck_div_cnt <= {SCK_DIV_SZ{1'b0}};
            end
        else
            begin
                spi_sck_div_cnt <= spi_sck_div_cnt + 1;

                if(spi_sck_toggle)
                    begin
                        spi_sck_div_cnt <= {SCK_DIV_SZ{1'b0}};
                        spi_sck_int <= ~spi_sck_int;
                    end
            end
    end

// SPI SERDES logic
always @(posedge aclk)
    begin
        if(!spi_en)
            begin
                spi_io_i <= 4'b0000;
                spi_io_o <= 4'b0000;
                spi_io_t <= 4'b1111;

                spi_io_mode_q <= 3'd0;
                spi_fsm_state <= SPI_FSM_STATE_WAIT_XFER_REQ;
                spi_dir <= 1'b0;
                spi_rd_req_ack <= 1'b0;
                spi_sr_bit_cnt <= 4'd0;
                spi_sr <= 8'h00;
                spi_sr_in_buf_valid <= 1'b0;
                spi_sr_in_buf <= 8'h00;
                spi_sr_out_buf_ready <= 1'b0;

                spi_sck_oe <= 1'b0;
            end
        else
            begin
                spi_io_i <= {spi_io3_i, spi_io2_i, spi_io1_i, spi_io0_i};

                if(spi_sr_in_buf_valid && spi_sr_in_buf_ready)
                    spi_sr_in_buf_valid <= 1'b0;

                if(spi_sr_out_buf_ready && spi_sr_out_buf_valid)
                    spi_sr_out_buf_ready <= 1'b0;

                spi_rd_req_ack <= spi_rd_req_ack & spi_rd_req; // Clear the read request acknowledge when the read request is cleared

                case(spi_fsm_state)
                    SPI_FSM_STATE_WAIT_XFER_REQ:
                        begin
                            // Ensure no bus activity
                            spi_sck_oe <= 1'b0;
                            spi_io_t <= 4'b1111;
                            spi_io_o <= 4'b0000;

                            // Wait for a transfer request, which can be a read (spi_rd_req) or a write (spi_sr_out_buf_valid)
                            if(spi_sr_out_buf_valid)
                                begin
                                    // Write request, move the output buffer contents to the SR and move on
                                    spi_sr_out_buf_ready <= 1'b1;

                                    spi_sr <= spi_sr_out_buf;
                                    spi_sr_bit_cnt <= 4'd8;

                                    spi_fsm_state <= SPI_FSM_STATE_WAIT_SCK_SYNC;
                                    spi_dir <= 1'b0; // Write

                                    spi_io_mode_q <= spi_io_mode;
                                end
                            else if(spi_rd_req && !spi_rd_req_ack)
                                begin
                                    // Read request, achnowledge, fill SR with zeros and move on
                                    spi_rd_req_ack <= 1'b1;

                                    spi_sr <= 8'h00;
                                    spi_sr_bit_cnt <= 4'd8;

                                    spi_fsm_state <= SPI_FSM_STATE_WAIT_SCK_SYNC;
                                    spi_dir <= 1'b1; // Read

                                    spi_io_mode_q <= spi_io_mode;
                                end
                        end
                    SPI_FSM_STATE_WAIT_SCK_SYNC: // Wait for sync with SCK
                        begin
                            // Wait for the sampling edge of SCK (polarity is irrelevant here)
                            if((spi_cpha && spi_sck_falling) || (~spi_cpha && spi_sck_rising))
                                spi_fsm_state <= SPI_FSM_STATE_ACTIVE;
                        end
                    SPI_FSM_STATE_ACTIVE:
                        begin
                            // In this state, the setup edge always happens first, so we can use that to determine what to do
                            if((spi_cpha && spi_sck_rising) || (~spi_cpha && spi_sck_falling)) // Setup edge
                                begin
                                    // Allow the clock to propagate to the output
                                    spi_sck_oe <= 1'b1;

                                    // Set IO direction
                                    if(spi_dir) // Read
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_io_t <= 4'b1110; // MOSI is always an output
                                                QSPI_IO_MODE_DUAL:   spi_io_t <= 4'b1111;
                                                QSPI_IO_MODE_QUAD:   spi_io_t <= 4'b1111;
                                                default:             spi_io_t <= 4'b1111;
                                            endcase
                                        end
                                    else // Write
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_io_t <= 4'b1110;
                                                QSPI_IO_MODE_DUAL:   spi_io_t <= 4'b1100;
                                                QSPI_IO_MODE_QUAD:   spi_io_t <= 4'b0000;
                                                default:             spi_io_t <= 4'b1111;
                                            endcase
                                        end

                                    // Current channel incrementation happens at the sample edge, because it comes last
                                    if(|spi_sr_bit_cnt) // If and we have data left
                                        begin
                                            if(spi_lsb_first)
                                                begin
                                                    // IO mode is not relevant here, because IO0 always ends up as the LSB
                                                    spi_io_o <= spi_sr[3:0];
                                                end
                                            else
                                                begin
                                                    case(spi_io_mode_q)
                                                        QSPI_IO_MODE_SINGLE: spi_io_o[0] <= spi_sr[7];
                                                        QSPI_IO_MODE_DUAL:   spi_io_o[1:0] <= spi_sr[7:6];
                                                        QSPI_IO_MODE_QUAD:   spi_io_o[3:0] <= spi_sr[7:4];
                                                        default:             spi_io_o[3:0] <= 4'b0000;
                                                    endcase
                                                end
                                        end
                                    else
                                        begin
                                            // We lost sync, move back to the first state
                                            spi_fsm_state <= SPI_FSM_STATE_WAIT_XFER_REQ;

                                            spi_sck_oe <= 1'b0;
                                            spi_io_t <= 4'b1111;
                                            spi_io_o <= 4'b0000;
                                        end
                                end

                            if((spi_cpha && spi_sck_falling) || (~spi_cpha && spi_sck_rising)) // Sample edge
                                begin
                                    // Bit count is not checked because if it is zero, we never end up here
                                    // We quit the active state when the bit count reaches zero on the setup edge
                                    spi_sr_bit_cnt <= spi_sr_bit_cnt - spi_io_mode_q;

                                    // Always shift the data in, even if we are at end of transfer
                                    if(spi_lsb_first)
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_sr <= {spi_io_i[1], spi_sr[7:1]};
                                                QSPI_IO_MODE_DUAL:   spi_sr <= {spi_io_i[1:0], spi_sr[7:2]};
                                                QSPI_IO_MODE_QUAD:   spi_sr <= {spi_io_i[3:0], spi_sr[7:4]};
                                                default:             spi_sr <= spi_sr;
                                            endcase
                                        end
                                    else
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_sr <= {spi_sr[6:0], spi_io_i[1]};
                                                QSPI_IO_MODE_DUAL:   spi_sr <= {spi_sr[5:0], spi_io_i[1:0]};
                                                QSPI_IO_MODE_QUAD:   spi_sr <= {spi_sr[3:0], spi_io_i[3:0]};
                                                default:             spi_sr <= spi_sr;
                                            endcase
                                        end

                                    if(spi_sr_bit_cnt - spi_io_mode_q == 0) // If we are finishing the transfer, try to load more data
                                        begin
                                            if((spi_dir || spi_io_mode_q == QSPI_IO_MODE_SINGLE) && !spi_sr_in_buf_valid)
                                                begin
                                                    // The input buffer is free, load it with data
                                                    if(spi_lsb_first)
                                                        begin
                                                            case(spi_io_mode_q)
                                                                QSPI_IO_MODE_SINGLE: spi_sr_in_buf <= {spi_io_i[1], spi_sr[7:1]};
                                                                QSPI_IO_MODE_DUAL:   spi_sr_in_buf <= {spi_io_i[1:0], spi_sr[7:2]};
                                                                QSPI_IO_MODE_QUAD:   spi_sr_in_buf <= {spi_io_i[3:0], spi_sr[7:4]};
                                                                default:             spi_sr_in_buf <= spi_sr;
                                                            endcase
                                                        end
                                                    else
                                                        begin
                                                            case(spi_io_mode_q)
                                                                QSPI_IO_MODE_SINGLE: spi_sr_in_buf <= {spi_sr[6:0], spi_io_i[1]};
                                                                QSPI_IO_MODE_DUAL:   spi_sr_in_buf <= {spi_sr[5:0], spi_io_i[1:0]};
                                                                QSPI_IO_MODE_QUAD:   spi_sr_in_buf <= {spi_sr[3:0], spi_io_i[3:0]};
                                                                default:             spi_sr_in_buf <= spi_sr;
                                                            endcase
                                                        end

                                                    spi_sr_in_buf_valid <= 1'b1;
                                                end

                                            if(spi_sr_out_buf_valid)
                                                begin
                                                    // Write request, move the output buffer contents to the SR and move on
                                                    spi_sr_out_buf_ready <= 1'b1;

                                                    spi_sr <= spi_sr_out_buf;
                                                    spi_sr_bit_cnt <= 4'd8;

                                                    spi_dir <= 1'b0; // Write

                                                    spi_io_mode_q <= spi_io_mode;
                                                end
                                            else if(spi_rd_req && !spi_rd_req_ack)
                                                begin
                                                    // Read request, achnowledge, fill SR with zeros and move on
                                                    spi_rd_req_ack <= 1'b1;

                                                    spi_sr <= 8'h00;
                                                    spi_sr_bit_cnt <= 4'd8;

                                                    spi_dir <= 1'b1; // Read

                                                    spi_io_mode_q <= spi_io_mode;
                                                end
                                        end
                                end
                        end
                    default: spi_fsm_state <= SPI_FSM_STATE_WAIT_XFER_REQ;
                endcase
            end
    end

// IRQ line logic
always @(*)
    irq = |(irq_pend & irq_enabled);

// AXI-Lite & Full logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                // SPI signals
                spi_ss_o <= {NUM_SLAVES{1'b1}};

                spi_en <= 1'b0;
                spi_idle_q <= 1'b0;
                spi_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mode <= 2'd0;
                spi_lsb_first <= 1'b0;
                spi_rd_req <= 1'b0;
                spi_sr_in_buf_valid_q <= 1'b0;
                spi_sr_in_buf_ready <= 1'b0;
                spi_sr_out_buf_valid <= 1'b0;
                spi_sr_out_buf <= 8'h00;

                spi_mmio_en <= 1'b0;
                spi_mmio_en_req <= 1'b0;
                spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_READY;
                spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_READY;
                spi_mmio_rd_instr_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mmio_rd_instr <= 8'h00;
                spi_mmio_addr_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mmio_addr_size <= 2'd0;
                spi_mmio_addr_rem <= 2'd0;
                spi_mmio_mode_bits_en <= 1'b0;
                spi_mmio_mode_bits <= 8'h00;
                spi_mmio_dummy_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mmio_dummy_size <= 2'd0;
                spi_mmio_dummy_rem <= 2'd0;
                spi_mmio_data_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mmio_cs_mask <= {NUM_SLAVES{1'b0}};
                spi_mmio_cs_high_wait <= 8'd0;
                spi_mmio_cs_low_wait <= 8'd0;
                spi_mmio_cs_wait_rem <= 8'd0;
                spi_mmio_cont_read_en <= 1'b0;
                spi_mmio_cont_read_ready <= 1'b0;
                spi_mmio_rd_req_cnt <= 32'd0;
                spi_mmio_cont_rd_req_cnt <= 32'd0;
                spi_mmio_cont_rd_req_cnt_buf <= 32'd0;

                spi_sck_div_en <= 1'b0;
                spi_sck_div <= {SCK_DIV_SZ{1'b0}};

                // Interrupts
                irq_enabled <= {NUM_IRQS{1'b0}};
                irq_pend <= {NUM_IRQS{1'b0}};

                // AXI-Lite signals
                s_axi_lite_awready <= 1'b0;
                s_axi_lite_bresp <= 2'b00;
                s_axi_lite_bvalid <= 1'b0;
                s_axi_lite_rdata <= {S_AXI_LITE_DSZ{1'b0}};
                s_axi_lite_rresp <= 2'b00;
                s_axi_lite_rvalid <= 1'b0;

                // AXI-Full signals
                s_axi_full_awready <= 1'b0;
                s_axi_full_wready <= 1'b0;
                s_axi_full_bid <= 4'd0;
                s_axi_full_bresp <= 2'b00;
                s_axi_full_bvalid <= 1'b0;
                s_axi_full_araddr_q <= {S_AXI_FULL_ASZ{1'b0}};
                s_axi_full_arlen_q <= 8'd0;
                s_axi_full_arsize_q <= 3'd0;
                s_axi_full_arburst_q <= 2'd0;
                s_axi_full_arready <= 1'b0;
                s_axi_full_rid <= 4'd0;
                s_axi_full_rdata <= {S_AXI_FULL_DSZ{1'b0}};
                s_axi_full_rresp <= 2'b00;
                s_axi_full_rlast <= 1'b0;
                s_axi_full_rvalid <= 1'b0;
                s_axi_full_write_busy <= 1'b0;
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

                // SPI logic
                if(spi_sr_in_buf_valid && spi_sr_in_buf_ready)
                    spi_sr_in_buf_ready <= 1'b0;

                spi_idle_q <= spi_idle;

                if(!spi_idle_q && spi_idle)
                    irq_pend[0] <= 1'b1; // IRQ #0 - SPI Idle

                spi_sr_in_buf_valid_q <= spi_sr_in_buf_valid;

                if(!spi_sr_in_buf_valid_q && spi_sr_in_buf_valid)
                    irq_pend[1] <= 1'b1; // IRQ #1 - SPI Input Buffer Ready

                // Read data
                if(s_axi_lite_rd_en)
                    begin
                        s_axi_lite_rvalid <= 1'b1;
                        s_axi_lite_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_lite_araddr[S_AXI_LITE_ASZ - 1:S_AXI_LITE_ADDR_LSB])
                            4'h0:    s_axi_lite_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            4'h1:    s_axi_lite_rdata <= {1'd0, spi_io_mode_q, 4'd0, spi_fsm_state, spi_dir, spi_idle, 2'd0, spi_sr_in_buf_valid, spi_sr_out_buf_valid, 2'd0, spi_mmio_en, spi_mmio_en_req, 3'd0, spi_lsb_first, 1'd0, spi_io_mode, spi_mode, spi_en, spi_sck_div_en};
                            4'h2:    s_axi_lite_rdata <= {{(S_AXI_LITE_DSZ - NUM_IRQS){1'b0}}, irq_enabled}; // IRQ Enabled
                            4'h3:    s_axi_lite_rdata <= {{(S_AXI_LITE_DSZ - NUM_IRQS){1'b0}}, irq_pend}; // IRQ Pending
                            4'h4:    s_axi_lite_rdata <= {{(S_AXI_LITE_DSZ - SCK_DIV_SZ){1'b0}}, spi_sck_div};
                            4'h5:    s_axi_lite_rdata <= {22'd0, spi_rd_req, spi_sr_out_buf_valid, spi_sr_out_buf};
                            4'h6:    {spi_sr_in_buf_ready, s_axi_lite_rdata} <= {spi_sr_in_buf_valid & ~spi_mmio_en, spi_sr_in_buf_valid, 23'd0, spi_sr_in_buf};
                            4'h7:    s_axi_lite_rdata <= {24'd0, spi_sr};
                            4'h8:    s_axi_lite_rdata <= {{(S_AXI_LITE_DSZ - NUM_SLAVES){1'b0}}, spi_ss_o};
                            4'h9:    s_axi_lite_rdata <= {5'd0, spi_mmio_cont_read_ready, spi_mmio_cont_read_en, spi_mmio_mode_bits_en, spi_mmio_mode_bits, spi_mmio_dummy_rem, spi_mmio_dummy_size, spi_mmio_addr_rem, spi_mmio_addr_size, spi_mmio_rd_instr};
                            4'hA:    s_axi_lite_rdata <= {spi_mmio_cs_low_wait, spi_mmio_cs_high_wait, 1'b0, spi_mmio_data_io_mode, 1'b0, spi_mmio_dummy_io_mode, 1'b0, spi_mmio_addr_io_mode, 1'b0, spi_mmio_rd_instr_io_mode};
                            4'hB:    s_axi_lite_rdata <= {spi_mmio_fsm_state_next, spi_mmio_fsm_state, 16'd0, spi_mmio_cs_wait_rem};
                            4'hC:    s_axi_lite_rdata <= {{(S_AXI_LITE_DSZ - NUM_SLAVES){1'b0}}, spi_mmio_cs_mask};
                            4'hD:    {spi_mmio_cont_rd_req_cnt, spi_mmio_rd_req_cnt, spi_mmio_cont_rd_req_cnt_buf, s_axi_lite_rdata} <= {32'd0, 32'd0, spi_mmio_cont_rd_req_cnt, spi_mmio_rd_req_cnt};
                            4'hE:    {spi_mmio_cont_rd_req_cnt_buf, s_axi_lite_rdata} <= {32'd0, spi_mmio_cont_rd_req_cnt_buf};
                            default: s_axi_lite_rdata <= {S_AXI_LITE_DSZ{1'b0}};
                        endcase
                    end

                // SPI logic
                if(!spi_en)
                    begin
                        // Reset buffers and read request when SPI is disabled
                        spi_sr_out_buf_valid <= 1'b0;
                        spi_sr_out_buf <= 8'h00;

                        spi_rd_req <= 1'b0;

                        if(spi_sr_out_buf_valid)
                            irq_pend[2] <= 1'b1; // IRQ #2 - SPI Output Buffer not valid (space available)
                    end

                if(spi_sr_out_buf_ready && spi_sr_out_buf_valid)
                    begin
                        spi_sr_out_buf_valid <= 1'b0;

                        irq_pend[2] <= 1'b1; // IRQ #2 - SPI Output Buffer not valid (space available)
                    end

                if(spi_rd_req_ack && spi_rd_req)
                    spi_rd_req <= 1'b0; // Clear the read request when acknowledge is received

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
                            4'h1: // Register 1
                                begin
                                    if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                        begin
                                            if((!spi_en || !s_axi_lite_wdata[1]) && !spi_mmio_en) // Clock generation can only be disabled if the SPI serializer/deserializer is disabled and the AXI-Full control is disabled
                                                spi_sck_div_en <= s_axi_lite_wdata[0];

                                            if((spi_sck_div_en || s_axi_lite_wdata[0]) && !spi_mmio_en) // SPI serializer/deserializer can only be enabled if the clock generation is enabled and can only be disabled if the AXI-Full control is disabled
                                                spi_en <= s_axi_lite_wdata[1];

                                            if(spi_idle && !spi_mmio_en)
                                                spi_mode <= s_axi_lite_wdata[3:2];

                                            if(!spi_mmio_en)
                                                begin
                                                    // IO Mode is allowed to change as long as the MMIO mode is disabled because it is buffered (spi_io_mode_q)
                                                    case(s_axi_lite_wdata[6:4])
                                                        QSPI_IO_MODE_SINGLE: spi_io_mode <= QSPI_IO_MODE_SINGLE;
                                                        QSPI_IO_MODE_DUAL:   spi_io_mode <= QSPI_IO_MODE_DUAL;
                                                        QSPI_IO_MODE_QUAD:   spi_io_mode <= QSPI_IO_MODE_QUAD;
                                                        default:             spi_io_mode <= spi_io_mode;
                                                    endcase
                                                end
                                        end

                                    if(s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                        begin
                                            if(spi_idle && !spi_mmio_en)
                                                spi_lsb_first <= s_axi_lite_wdata[8];

                                            spi_mmio_en_req <= s_axi_lite_wdata[12];
                                            // s_axi_lite_wdata[13] is spi_mmio_en
                                        end

                                    // if(s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                    //     begin
                                    //         // s_axi_lite_wdata[16] is spi_sr_out_buf_valid
                                    //         // s_axi_lite_wdata[17] is spi_sr_in_buf_valid
                                    //         // s_axi_lite_wdata[20] is spi_idle
                                    //         // s_axi_lite_wdata[21] is spi_dir
                                    //         // s_axi_lite_wdata[23:22] is spi_fsm_state
                                    //     end

                                    // if(s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                    //     begin
                                    //         // s_axi_lite_wdata[30:28] is spi_io_mode_q
                                    //     end
                                end
                            4'h2: // Register 2
                                begin
                                    if(s_axi_lite_wstrb[0] == 1'b1) // s_axi_lite_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_enabled[7:0] <= s_axi_lite_wdata[7:0];
                                            else
                                                irq_enabled[NUM_IRQS - 1:0] <= s_axi_lite_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_enabled[15:8] <= s_axi_lite_wdata[15:8];
                                            else
                                                irq_enabled[NUM_IRQS - 1:8] <= s_axi_lite_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_enabled[23:16] <= s_axi_lite_wdata[23:16];
                                            else
                                                irq_enabled[NUM_IRQS - 1:16] <= s_axi_lite_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                        begin
                                            irq_enabled[NUM_IRQS - 1:24] <= s_axi_lite_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            4'h3: // Register 3
                                begin
                                    if(s_axi_lite_wstrb[0] == 1'b1) // s_axi_lite_wdata[7:0]
                                        begin
                                            if(NUM_IRQS > 8)
                                                irq_pend[7:0] <= irq_pend[7:0] & ~s_axi_lite_wdata[7:0];
                                            else
                                                irq_pend[NUM_IRQS - 1:0] <= irq_pend[NUM_IRQS - 1:0] & ~s_axi_lite_wdata[NUM_IRQS - 1:0];
                                        end

                                    if(NUM_IRQS > 8 && s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                        begin
                                            if(NUM_IRQS > 16)
                                                irq_pend[15:8] <= irq_pend[15:8] & ~s_axi_lite_wdata[15:8];
                                            else
                                                irq_pend[NUM_IRQS - 1:8] <= irq_pend[NUM_IRQS - 1:8] & ~s_axi_lite_wdata[NUM_IRQS - 1:8];
                                        end

                                    if(NUM_IRQS > 16 && s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                        begin
                                            if(NUM_IRQS > 24)
                                                irq_pend[23:16] <= irq_pend[23:16] & ~s_axi_lite_wdata[23:16];
                                            else
                                                irq_pend[NUM_IRQS - 1:16] <= irq_pend[NUM_IRQS - 1:16] & ~s_axi_lite_wdata[NUM_IRQS - 1:16];
                                        end

                                    if(NUM_IRQS > 24 && s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                        begin
                                            irq_pend[NUM_IRQS - 1:24] <= irq_pend[NUM_IRQS - 1:24] & ~s_axi_lite_wdata[NUM_IRQS - 1:24];
                                        end
                                end
                            4'h4: // Register 4
                                begin
                                    if(!spi_sck_div_en) // Clock divider can only be changed if the clock generation is disabled
                                        begin
                                            if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                                begin
                                                    if(SCK_DIV_SZ > 8)
                                                        spi_sck_div[7:0] <= s_axi_lite_wdata[7:0];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:0] <= s_axi_lite_wdata[SCK_DIV_SZ - 1:0];
                                                end

                                            if(SCK_DIV_SZ > 8 && s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                                begin
                                                    if(SCK_DIV_SZ > 16)
                                                        spi_sck_div[15:8] <= s_axi_lite_wdata[15:8];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:8] <= s_axi_lite_wdata[SCK_DIV_SZ - 1:8];
                                                end

                                            if(SCK_DIV_SZ > 16 && s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                                begin
                                                    if(SCK_DIV_SZ > 24)
                                                        spi_sck_div[23:16] <= s_axi_lite_wdata[23:16];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:16] <= s_axi_lite_wdata[SCK_DIV_SZ - 1:16];
                                                end

                                            if(SCK_DIV_SZ > 24 && s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                                begin
                                                    spi_sck_div[SCK_DIV_SZ - 1:24] <= s_axi_lite_wdata[SCK_DIV_SZ - 1:24];
                                                end
                                        end
                                end
                            4'h5: // Register 5
                                begin
                                    if(spi_en && !spi_mmio_en)
                                        begin
                                            if(s_axi_lite_wstrb[1:0] == 2'b11) // s_axi_lite_wdata[7:0] and s_axi_lite_wdata[15:8]
                                                begin
                                                    if(s_axi_lite_wdata[8] && !s_axi_lite_wdata[9]) // Write command
                                                        begin
                                                            if(!spi_sr_out_buf_valid)
                                                                begin
                                                                    spi_sr_out_buf <= s_axi_lite_wdata[7:0];
                                                                    spi_sr_out_buf_valid <= 1'b1;
                                                                end
                                                        end
                                                    else if(!s_axi_lite_wdata[8] && s_axi_lite_wdata[9]) // Read command
                                                        begin
                                                            if(!spi_rd_req)
                                                                spi_rd_req <= 1'b1;
                                                        end
                                                end
                                        end
                                end
                            4'h6: // Register 6
                                begin
                                    // RX buffer is not writable
                                end
                            4'h7: // Register 7
                                begin
                                    // SPI Shift register is not writable
                                end
                            4'h8: // Register 8
                                begin
                                    if(!spi_mmio_en)
                                        begin
                                            if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                                begin
                                                    if(NUM_SLAVES > 8)
                                                        spi_ss_o[7:0] <= s_axi_lite_wdata[7:0];
                                                    else
                                                        spi_ss_o[NUM_SLAVES - 1:0] <= s_axi_lite_wdata[NUM_SLAVES - 1:0];
                                                end

                                            if(NUM_SLAVES > 8 && s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                                begin
                                                    if(NUM_SLAVES > 16)
                                                        spi_ss_o[15:8] <= s_axi_lite_wdata[15:8];
                                                    else
                                                        spi_ss_o[NUM_SLAVES - 1:8] <= s_axi_lite_wdata[NUM_SLAVES - 1:8];
                                                end

                                            if(NUM_SLAVES > 16 && s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                                begin
                                                    if(NUM_SLAVES > 24)
                                                        spi_ss_o[23:16] <= s_axi_lite_wdata[23:16];
                                                    else
                                                        spi_ss_o[NUM_SLAVES - 1:16] <= s_axi_lite_wdata[NUM_SLAVES - 1:16];
                                                end

                                            if(NUM_SLAVES > 24 && s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                                begin
                                                    spi_ss_o[NUM_SLAVES - 1:24] <= s_axi_lite_wdata[NUM_SLAVES - 1:24];
                                                end
                                        end
                                end
                            4'h9: // Register 9
                                begin
                                    if(!spi_mmio_en)
                                        begin
                                            if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                                begin
                                                    spi_mmio_rd_instr <= s_axi_lite_wdata[7:0];
                                                end

                                            if(s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                                begin
                                                    spi_mmio_addr_size <= s_axi_lite_wdata[9:8];
                                                    // s_axi_lite_wdata[11:10] is spi_mmio_addr_rem
                                                    spi_mmio_dummy_size <= s_axi_lite_wdata[13:12];
                                                    // s_axi_lite_wdata[15:14] is spi_mmio_dummy_rem
                                                end

                                            if(s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                                begin
                                                    spi_mmio_mode_bits <= s_axi_lite_wdata[23:16];
                                                end

                                            if(s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                                begin
                                                    spi_mmio_mode_bits_en <= s_axi_lite_wdata[24];
                                                    spi_mmio_cont_read_en <= s_axi_lite_wdata[25];
                                                    // s_axi_lite_wdata[26] is spi_mmio_cont_read_ready
                                                end
                                        end
                                end
                            4'hA: // Register 10
                                begin
                                    if(!spi_mmio_en)
                                        begin
                                            if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                                begin
                                                    case(s_axi_lite_wdata[2:0])
                                                        QSPI_IO_MODE_SINGLE: spi_mmio_rd_instr_io_mode <= QSPI_IO_MODE_SINGLE;
                                                        QSPI_IO_MODE_DUAL:   spi_mmio_rd_instr_io_mode <= QSPI_IO_MODE_DUAL;
                                                        QSPI_IO_MODE_QUAD:   spi_mmio_rd_instr_io_mode <= QSPI_IO_MODE_QUAD;
                                                        default:             spi_mmio_rd_instr_io_mode <= spi_mmio_rd_instr_io_mode;
                                                    endcase

                                                    case(s_axi_lite_wdata[6:4])
                                                        QSPI_IO_MODE_SINGLE: spi_mmio_addr_io_mode <= QSPI_IO_MODE_SINGLE;
                                                        QSPI_IO_MODE_DUAL:   spi_mmio_addr_io_mode <= QSPI_IO_MODE_DUAL;
                                                        QSPI_IO_MODE_QUAD:   spi_mmio_addr_io_mode <= QSPI_IO_MODE_QUAD;
                                                        default:             spi_mmio_addr_io_mode <= spi_mmio_addr_io_mode;
                                                    endcase
                                                end

                                            if(s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                                begin
                                                    case(s_axi_lite_wdata[10:8])
                                                        QSPI_IO_MODE_SINGLE: spi_mmio_dummy_io_mode <= QSPI_IO_MODE_SINGLE;
                                                        QSPI_IO_MODE_DUAL:   spi_mmio_dummy_io_mode <= QSPI_IO_MODE_DUAL;
                                                        QSPI_IO_MODE_QUAD:   spi_mmio_dummy_io_mode <= QSPI_IO_MODE_QUAD;
                                                        default:             spi_mmio_dummy_io_mode <= spi_mmio_dummy_io_mode;
                                                    endcase

                                                    case(s_axi_lite_wdata[14:12])
                                                        QSPI_IO_MODE_SINGLE: spi_mmio_data_io_mode <= QSPI_IO_MODE_SINGLE;
                                                        QSPI_IO_MODE_DUAL:   spi_mmio_data_io_mode <= QSPI_IO_MODE_DUAL;
                                                        QSPI_IO_MODE_QUAD:   spi_mmio_data_io_mode <= QSPI_IO_MODE_QUAD;
                                                        default:             spi_mmio_data_io_mode <= spi_mmio_data_io_mode;
                                                    endcase
                                                end

                                            if(s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                                begin
                                                    spi_mmio_cs_high_wait <= s_axi_lite_wdata[23:16];
                                                end

                                            if(s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                                begin
                                                    spi_mmio_cs_low_wait <= s_axi_lite_wdata[31:24];
                                                end
                                        end
                                end
                            4'hB: // Register 11
                                begin
                                    // MMIO FSM state and CS remaining is not writable
                                end
                            4'hC: // Register 12
                                begin
                                    if(!spi_mmio_en)
                                        begin
                                            if(s_axi_lite_wstrb[0]) // s_axi_lite_wdata[7:0]
                                                begin
                                                    if(NUM_SLAVES > 8)
                                                        spi_mmio_cs_mask[7:0] <= s_axi_lite_wdata[7:0];
                                                    else
                                                        spi_mmio_cs_mask[NUM_SLAVES - 1:0] <= s_axi_lite_wdata[NUM_SLAVES - 1:0];
                                                end

                                            if(NUM_SLAVES > 8 && s_axi_lite_wstrb[1]) // s_axi_lite_wdata[15:8]
                                                begin
                                                    if(NUM_SLAVES > 16)
                                                        spi_mmio_cs_mask[15:8] <= s_axi_lite_wdata[15:8];
                                                    else
                                                        spi_mmio_cs_mask[NUM_SLAVES - 1:8] <= s_axi_lite_wdata[NUM_SLAVES - 1:8];
                                                end

                                            if(NUM_SLAVES > 16 && s_axi_lite_wstrb[2]) // s_axi_lite_wdata[23:16]
                                                begin
                                                    if(NUM_SLAVES > 24)
                                                        spi_mmio_cs_mask[23:16] <= s_axi_lite_wdata[23:16];
                                                    else
                                                        spi_mmio_cs_mask[NUM_SLAVES - 1:16] <= s_axi_lite_wdata[NUM_SLAVES - 1:16];
                                                end

                                            if(NUM_SLAVES > 24 && s_axi_lite_wstrb[3]) // s_axi_lite_wdata[31:24]
                                                begin
                                                    spi_mmio_cs_mask[NUM_SLAVES - 1:24] <= s_axi_lite_wdata[NUM_SLAVES - 1:24];
                                                end
                                        end
                                end
                            4'hD: // Register 13
                                begin
                                    // Read request count is not writable
                                end
                            4'hE: // Register 14
                                begin
                                    // Continuous read request count is not writable
                                end
                        endcase
                    end

                // AXI-Full logic
                if(s_axi_full_rready && s_axi_full_rvalid)
                    begin
                        s_axi_full_rvalid <= 1'b0;
                        s_axi_full_rresp <= 2'b00;
                        s_axi_full_rlast <= 1'b0;
                        s_axi_full_rdata <= {S_AXI_FULL_DSZ{1'b0}};
                    end

                case(spi_mmio_fsm_state)
                    SPI_MMIO_FSM_STATE_READY:
                        begin
                            s_axi_full_arready <= !s_axi_full_rvalid || s_axi_full_rready;

                            spi_mmio_en <= spi_mmio_en_req & spi_en; // Enable/disable the AXI-Full control when requested

                            spi_mmio_cont_read_ready <= spi_mmio_cont_read_ready & spi_mmio_en_req & spi_en;

                            if(s_axi_full_arready && s_axi_full_arvalid)
                                begin
                                    s_axi_full_arready <= 1'b0; // Not ready to receive another read address

                                    // Cache the read request
                                    s_axi_full_araddr_q <= s_axi_full_araddr;
                                    s_axi_full_arlen_q <= s_axi_full_arlen;
                                    s_axi_full_arsize_q <= s_axi_full_arsize;
                                    s_axi_full_arburst_q <= s_axi_full_arburst;
                                    s_axi_full_rid <= s_axi_full_arid;

                                    if(s_axi_full_arsize > S_AXI_FULL_ADDR_LSB)
                                        s_axi_full_arsize_q <= S_AXI_FULL_ADDR_LSB;

                                    spi_mmio_addr_rem <= spi_mmio_addr_size;
                                    spi_mmio_dummy_rem <= spi_mmio_dummy_size;

                                    if(spi_mmio_en_req && spi_en)
                                        begin
                                            spi_mmio_rd_req_cnt <= spi_mmio_rd_req_cnt + 1;

                                            // Check if the slave was left selected and the address is continuous
                                            if(spi_mmio_cs_active)
                                                begin
                                                    if(s_axi_full_araddr_q == s_axi_full_araddr)
                                                        begin
                                                            spi_mmio_cont_rd_req_cnt <= spi_mmio_cont_rd_req_cnt + 1;

                                                            spi_io_mode <= spi_mmio_data_io_mode;
                                                            spi_rd_req <= 1'b1;

                                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_DATA;
                                                        end
                                                    else
                                                        begin
                                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_RAISE_CS;
                                                            spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_LOWER_CS;
                                                        end
                                                end
                                            else
                                                begin
                                                    spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_LOWER_CS;
                                                end
                                        end
                                    else
                                        begin
                                            // When MMIO is disabled, jump straight into the data phase, which will send zeros to the master
                                            if(spi_mmio_en)
                                                begin
                                                    // Is MMIO is going to be disabled the next clock cycle
                                                    // send the FSM to raise the CS, and only then move to the XFER_DATA state
                                                    spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_RAISE_CS;
                                                    spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_XFER_DATA;
                                                end
                                            else
                                                begin
                                                    spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_DATA;
                                                end
                                        end
                                end
                            else
                                begin
                                    if(spi_mmio_en && !(spi_mmio_en_req && spi_en))
                                        begin
                                            // Is MMIO is going to be disabled the next clock cycle
                                            // send the FSM to raise the CS, and then come back
                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_RAISE_CS;
                                            spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_READY;

                                            // Also de-assert ARREADY to stall the AXI-Full interface
                                            s_axi_full_arready <= 1'b0;
                                        end
                                end
                        end
                    SPI_MMIO_FSM_STATE_RAISE_CS:
                        begin
                            if(spi_idle)
                                begin
                                    spi_ss_o <= spi_ss_o | spi_mmio_cs_mask;

                                    if(!spi_mmio_cs_high_wait)
                                        begin
                                            spi_mmio_fsm_state <= spi_mmio_fsm_state_next;
                                        end
                                    else
                                        begin
                                            spi_mmio_cs_wait_rem <= spi_mmio_cs_high_wait - 1;

                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_WAIT_CS;
                                        end
                                end
                        end
                    SPI_MMIO_FSM_STATE_WAIT_CS:
                        begin
                            if(spi_mmio_cs_wait_rem)
                                spi_mmio_cs_wait_rem <= spi_mmio_cs_wait_rem - 1;
                            else
                                spi_mmio_fsm_state <= spi_mmio_fsm_state_next;
                    end
                    SPI_MMIO_FSM_STATE_LOWER_CS:
                        begin
                            if(spi_idle)
                                begin
                                    spi_ss_o <= spi_ss_o & ~spi_mmio_cs_mask;

                                    if(!spi_mmio_cs_low_wait)
                                        begin
                                            // If the flash is already in continuous read mode, jump to address phase, otherwise instruction
                                            if(spi_mmio_cont_read_ready)
                                                spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_ADDR;
                                            else
                                                spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_INSTR;
                                        end
                                    else
                                        begin
                                            spi_mmio_cs_wait_rem <= spi_mmio_cs_low_wait - 1;

                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_WAIT_CS;

                                            if(spi_mmio_cont_read_ready)
                                                spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_XFER_ADDR;
                                            else
                                                spi_mmio_fsm_state_next <= SPI_MMIO_FSM_STATE_XFER_INSTR;
                                        end
                                end
                        end
                    SPI_MMIO_FSM_STATE_XFER_INSTR:
                        begin
                            if(!spi_rd_req && !spi_sr_out_buf_valid)
                                begin
                                    spi_io_mode <= spi_mmio_rd_instr_io_mode;
                                    spi_sr_out_buf <= spi_mmio_rd_instr;
                                    spi_sr_out_buf_valid <= 1'b1;

                                    spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_ADDR;
                                end
                        end
                    SPI_MMIO_FSM_STATE_XFER_ADDR:
                        begin
                            if(!spi_rd_req && !spi_sr_out_buf_valid)
                                begin
                                    spi_io_mode <= spi_mmio_addr_io_mode;
                                    spi_sr_out_buf <= spi_mmio_addr_next;
                                    spi_sr_out_buf_valid <= 1'b1;

                                    spi_mmio_addr_rem <= spi_mmio_addr_rem - 1;

                                    if(!spi_mmio_addr_rem)
                                        begin
                                            if(spi_mmio_mode_bits_en)
                                                spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_MODE;
                                            else
                                                spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_DUMMY;
                                        end
                                end
                        end
                    SPI_MMIO_FSM_STATE_XFER_MODE:
                        begin
                            if(!spi_rd_req && !spi_sr_out_buf_valid)
                                begin
                                    spi_sr_out_buf <= spi_mmio_mode_bits;
                                    spi_sr_out_buf_valid <= 1'b1;

                                    spi_mmio_cont_read_ready <= spi_mmio_cont_read_en;

                                    if(!spi_mmio_dummy_rem)
                                        spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_1;
                                    else
                                        spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_DUMMY;
                                end
                        end
                    SPI_MMIO_FSM_STATE_XFER_DUMMY:
                        begin
                            if(!spi_rd_req && !spi_sr_out_buf_valid)
                                begin
                                    spi_io_mode <= spi_mmio_dummy_io_mode;
                                    spi_rd_req <= 1'b1;

                                    spi_mmio_dummy_rem <= spi_mmio_dummy_rem - 1;

                                    if(spi_mmio_dummy_rem == 2'd1)
                                        spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_1;
                                end
                        end
                    SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_1:
                        begin
                            if(spi_sr_in_buf_valid && !spi_sr_in_buf_ready)
                                spi_sr_in_buf_ready <= 1'b1;

                            if(!spi_rd_req && !spi_sr_out_buf_valid)
                                begin
                                    spi_io_mode <= spi_mmio_data_io_mode;
                                    spi_rd_req <= 1'b1;

                                    spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_2;
                                end
                        end
                    SPI_MMIO_FSM_STATE_CLEAR_IN_BUF_2:
                        begin
                            // If the SPI is currently reading (or in single IO mode) set ready to 1 to clear the input buffer when the transaction completes
                            if(spi_dir || spi_io_mode == QSPI_IO_MODE_SINGLE)
                                spi_sr_in_buf_ready <= 1'b1; // Signal ready to receive the next byte

                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_XFER_DATA;
                        end
                    SPI_MMIO_FSM_STATE_XFER_DATA:
                        begin
                            if(spi_mmio_en && !spi_rd_req && (!spi_sr_in_buf_valid || spi_sr_in_buf_ready) && !(s_axi_full_read_beat_complete && !s_axi_full_arlen_q))
                                spi_rd_req <= 1'b1;

                            if(!s_axi_full_rvalid)
                                begin
                                    if(!spi_mmio_en || (spi_sr_in_buf_valid && !spi_sr_in_buf_ready))
                                        begin
                                            if(spi_mmio_en)
                                                begin
                                                    spi_sr_in_buf_ready <= 1'b1;

                                                    case(s_axi_full_araddr_q[S_AXI_FULL_ADDR_LSB - 1:0])
                                                        3'd0: s_axi_full_rdata[7:0] <= spi_sr_in_buf;
                                                        3'd1: s_axi_full_rdata[15:8] <= spi_sr_in_buf;
                                                        3'd2: s_axi_full_rdata[23:16] <= spi_sr_in_buf;
                                                        3'd3: s_axi_full_rdata[31:24] <= spi_sr_in_buf;
                                                        3'd4: s_axi_full_rdata[39:32] <= spi_sr_in_buf;
                                                        3'd5: s_axi_full_rdata[47:40] <= spi_sr_in_buf;
                                                        3'd6: s_axi_full_rdata[55:48] <= spi_sr_in_buf;
                                                        3'd7: s_axi_full_rdata[63:56] <= spi_sr_in_buf;
                                                        // TODO: Add more cases here if the AXI-Full data width is larger
                                                    endcase
                                                end

                                            s_axi_full_araddr_q <= s_axi_full_araddr_q + 1;

                                            // Beat complete
                                            if(s_axi_full_read_beat_complete)
                                                begin
                                                    s_axi_full_rvalid <= 1'b1;
                                                    s_axi_full_rresp <= 2'b00; // Always respond OKAY

                                                    if(!s_axi_full_arlen_q)
                                                        begin
                                                            s_axi_full_rlast <= 1'b1;

                                                            spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_READY;
                                                        end
                                                    else
                                                        begin
                                                            s_axi_full_arlen_q <= s_axi_full_arlen_q - 1;
                                                        end
                                                end
                                        end
                                end
                        end
                    default: spi_mmio_fsm_state <= SPI_MMIO_FSM_STATE_READY;
                endcase

                // Answer all writes with OKAY, but do nothing with the data
                s_axi_full_awready <= ~s_axi_full_write_busy;
                s_axi_full_wready <= s_axi_full_write_busy;
                s_axi_full_bresp <= 2'b00;

                if(s_axi_full_awvalid && s_axi_full_awready)
                    begin
                        s_axi_full_write_busy <= 1'b1;

                        s_axi_full_awready <= 1'b0;
                        s_axi_full_bid <= s_axi_full_awid;
                    end

                if(s_axi_full_wvalid && s_axi_full_wready && s_axi_full_wlast)
                    begin
                        s_axi_full_bvalid <= 1'b1;
                    end
                else if(s_axi_full_bvalid && s_axi_full_bready)
                    begin
                        s_axi_full_write_busy <= 1'b0;

                        s_axi_full_bvalid <= 1'b0;
                    end
            end
    end

// Generate read beat complete signal
always @(*)
    begin
        case(s_axi_full_arsize_q)
            3'b000: s_axi_full_read_beat_complete <= 1'b1;                       // 8 bits, every byte is a beat
            3'b001: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[0:0];  // 16 bits, every 2 bytes is a beat
            3'b010: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[1:0];  // 32 bits, every 4 bytes is a beat
            3'b011: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[2:0];  // 64 bits, every 8 bytes is a beat
            // 3'b100: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[3:0];  // 128 bits, every 16 bytes is a beat
            // 3'b101: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[4:0];  // 256 bits, every 32 bytes is a beat
            // 3'b110: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[5:0];  // 512 bits, every 64 bytes is a beat
            // 3'b111: s_axi_full_read_beat_complete <= &s_axi_full_araddr_q[6:0];  // 1024 bits, every 128 bytes is a beat
            default: s_axi_full_read_beat_complete <= 1'b1;
        endcase
    end

// Generate the next address to be transferred
always @(*)
    begin
        case(spi_mmio_addr_rem)
            2'd0: spi_mmio_addr_next <= s_axi_full_araddr_q[7:0];
            2'd1: spi_mmio_addr_next <= s_axi_full_araddr_q[15:8];
            2'd2: spi_mmio_addr_next <= s_axi_full_araddr_q[23:16];
            // 2'd3: spi_mmio_addr_next <= s_axi_full_araddr_q[31:24];
            default: spi_mmio_addr_next <= 8'h00;
        endcase
    end

endmodule