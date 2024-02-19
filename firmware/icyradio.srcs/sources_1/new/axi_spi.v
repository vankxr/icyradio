`timescale 1ns / 1ps

module axi_spi
#(
    parameter NUM_SLAVES = 1,
    parameter SCK_DIV_SZ = 16,

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
    output                    spi_io1_t
);

localparam S_AXI_ADDR_LSB = 2;

localparam QSPI_IO_MODE_SINGLE = 3'd1;
localparam QSPI_IO_MODE_DUAL = 3'd2;

localparam SPI_FSM_STATE_WAIT_XFER_REQ = 2'd0;
localparam SPI_FSM_STATE_WAIT_SCK_SYNC = 2'd1;
localparam SPI_FSM_STATE_ACTIVE = 2'd2;

wire                    spi_sck_i;
wire                    spi_sck_o;
reg                     spi_sck_t = 1'b0;
wire [NUM_SLAVES - 1:0] spi_ss_i;
reg  [NUM_SLAVES - 1:0] spi_ss_o;
reg                     spi_ss_t = 1'b0;
wire                    spi_io0_i;
wire                    spi_io1_i;
wire                    spi_io0_o;
wire                    spi_io1_o;
wire                    spi_io0_t;
wire                    spi_io1_t;
wire              [3:0] spi_io_i = {2'b00, spi_io1_i, spi_io0_i};
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
reg                     spi_dir; // SPI SERDES current direction (0 = write, 1 = read)
reg                     spi_rd_req; // Request a SPI read
reg                     spi_rd_req_ack; // SPI read request acknowledge
reg               [4:0] spi_sr_bit_cnt; // Number of bits left in the shift register
reg               [7:0] spi_sr; // SPI shift register
reg                     spi_sr_in_buf_valid; // SPI shift register input buffer data valid
reg                     spi_sr_in_buf_ready; // SPI shift register input buffer data ready (read acknowledge)
reg               [7:0] spi_sr_in_buf; // SPI shift register input buffer
reg                     spi_sr_out_buf_valid; // SPI shift register output buffer data valid
reg                     spi_sr_out_buf_ready; // SPI shift register output buffer data ready (read acknowledge)
reg               [7:0] spi_sr_out_buf; // SPI shift register output buffer
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
assign spi_io0_t = spi_io_t[0];
assign spi_io1_t = spi_io_t[1];

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
                                                default:             spi_io_t <= 4'b1111;
                                            endcase
                                        end
                                    else // Write
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_io_t <= 4'b1110;
                                                QSPI_IO_MODE_DUAL:   spi_io_t <= 4'b1100;
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
                                                default:             spi_sr <= spi_sr;
                                            endcase
                                        end
                                    else
                                        begin
                                            case(spi_io_mode_q)
                                                QSPI_IO_MODE_SINGLE: spi_sr <= {spi_sr[6:0], spi_io_i[1]};
                                                QSPI_IO_MODE_DUAL:   spi_sr <= {spi_sr[5:0], spi_io_i[1:0]};
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
                                                                default:             spi_sr_in_buf <= spi_sr;
                                                            endcase
                                                        end
                                                    else
                                                        begin
                                                            case(spi_io_mode_q)
                                                                QSPI_IO_MODE_SINGLE: spi_sr_in_buf <= {spi_sr[6:0], spi_io_i[1]};
                                                                QSPI_IO_MODE_DUAL:   spi_sr_in_buf <= {spi_sr[5:0], spi_io_i[1:0]};
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

// AXI-Lite logic
always @(posedge aclk)
    begin
        if(!aresetn)
            begin
                // SPI signals
                spi_ss_o <= {NUM_SLAVES{1'b1}};

                spi_en <= 1'b0;
                spi_io_mode <= QSPI_IO_MODE_SINGLE;
                spi_mode <= 2'd0;
                spi_lsb_first <= 1'b0;
                spi_rd_req <= 1'b0;
                spi_sr_in_buf_ready <= 1'b0;
                spi_sr_out_buf_valid <= 1'b0;
                spi_sr_out_buf <= 8'h00;

                spi_sck_div_en <= 1'b0;
                spi_sck_div <= {SCK_DIV_SZ{1'b0}};

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

                // SPI logic
                if(spi_sr_in_buf_valid && spi_sr_in_buf_ready)
                    spi_sr_in_buf_ready <= 1'b0;

                // Read data
                if(s_axi_rd_en)
                    begin
                        s_axi_rvalid <= 1'b1;
                        s_axi_rresp <= 2'b00; // Always respond OKAY

                        case(s_axi_araddr[S_AXI_ASZ - 1:S_AXI_ADDR_LSB])
                            3'h0:    s_axi_rdata <= {16'd1, 8'd0, 8'd0}; // IP Version
                            3'h1:    s_axi_rdata <= {1'd0, spi_io_mode_q, 4'd0, spi_fsm_state, spi_dir, spi_idle, 2'd0, spi_sr_in_buf_valid, spi_sr_out_buf_valid, 7'd0, spi_lsb_first, 1'd0, spi_io_mode, spi_mode, spi_en, spi_sck_div_en};
                            3'h2:    s_axi_rdata <= {{(S_AXI_DSZ - SCK_DIV_SZ){1'b0}}, spi_sck_div};

                            3'h4:    s_axi_rdata <= {22'd0, spi_rd_req, spi_sr_out_buf_valid, spi_sr_out_buf};
                            3'h5:    {spi_sr_in_buf_ready, s_axi_rdata} <= {spi_sr_in_buf_valid, spi_sr_in_buf_valid, 23'd0, spi_sr_in_buf};
                            3'h6:    s_axi_rdata <= {24'd0, spi_sr};
                            3'h7:    s_axi_rdata <= {{(S_AXI_DSZ - NUM_SLAVES){1'b0}}, spi_ss_o};
                            default: s_axi_rdata <= {S_AXI_DSZ{1'b0}};
                        endcase
                    end

                // SPI logic
                if(!spi_en)
                    begin
                        // Reset buffers and read request when SPI is disabled
                        spi_sr_out_buf_valid <= 1'b0;
                        spi_sr_out_buf <= 8'h00;

                        spi_rd_req <= 1'b0;
                    end

                if(spi_sr_out_buf_ready && spi_sr_out_buf_valid)
                    spi_sr_out_buf_valid <= 1'b0;

                if(spi_rd_req_ack && spi_rd_req)
                    spi_rd_req <= 1'b0; // Clear the read request when acknowledge is received

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
                                            if(!spi_en || !s_axi_wdata[1]) // Clock generation can only be disabled if the SPI serializer/deserializer is disabled
                                                spi_sck_div_en <= s_axi_wdata[0];

                                            if(spi_sck_div_en || s_axi_wdata[0]) // SPI serializer/deserializer can only be enabled if the clock generation is enabled
                                                spi_en <= s_axi_wdata[1];

                                            if(spi_idle)
                                                spi_mode <= s_axi_wdata[3:2];

                                            // IO Mode is allowed to change at any time because it is buffered (spi_io_mode_q)
                                            case(s_axi_wdata[6:4])
                                                QSPI_IO_MODE_SINGLE: spi_io_mode <= QSPI_IO_MODE_SINGLE;
                                                QSPI_IO_MODE_DUAL:   spi_io_mode <= QSPI_IO_MODE_DUAL;
                                                default:             spi_io_mode <= spi_io_mode;
                                            endcase
                                        end

                                    if(s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(spi_idle)
                                                spi_lsb_first <= s_axi_wdata[8];
                                        end

                                    // if(s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                    //     begin
                                    //         // s_axi_wdata[16] is spi_sr_out_buf_valid
                                    //         // s_axi_wdata[17] is spi_sr_in_buf_valid
                                    //         // s_axi_wdata[20] is spi_idle
                                    //         // s_axi_wdata[21] is spi_dir
                                    //         // s_axi_wdata[23:22] is spi_fsm_state
                                    //     end

                                    // if(s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                    //     begin
                                    //         // s_axi_wdata[30:28] is spi_io_mode_q
                                    //     end
                                end
                            3'h2: // Register 2
                                begin
                                    if(!spi_sck_div_en) // Clock divider can only be changed if the clock generation is disabled
                                        begin
                                            if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                                begin
                                                    if(SCK_DIV_SZ > 8)
                                                        spi_sck_div[7:0] <= s_axi_wdata[7:0];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:0] <= s_axi_wdata[SCK_DIV_SZ - 1:0];
                                                end

                                            if(SCK_DIV_SZ > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                                begin
                                                    if(SCK_DIV_SZ > 16)
                                                        spi_sck_div[15:8] <= s_axi_wdata[15:8];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:8] <= s_axi_wdata[SCK_DIV_SZ - 1:8];
                                                end

                                            if(SCK_DIV_SZ > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                                begin
                                                    if(SCK_DIV_SZ > 24)
                                                        spi_sck_div[23:16] <= s_axi_wdata[23:16];
                                                    else
                                                        spi_sck_div[SCK_DIV_SZ - 1:16] <= s_axi_wdata[SCK_DIV_SZ - 1:16];
                                                end

                                            if(SCK_DIV_SZ > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                                begin
                                                    spi_sck_div[SCK_DIV_SZ - 1:24] <= s_axi_wdata[SCK_DIV_SZ - 1:24];
                                                end
                                        end
                                end
                            3'h3: // Register 3
                                begin
                                    // Reserved
                                end
                            3'h4: // Register 4
                                begin
                                    if(spi_en)
                                        begin
                                            if(s_axi_wstrb[1:0] == 2'b11) // s_axi_wdata[7:0] and s_axi_wdata[15:8]
                                                begin
                                                    if(s_axi_wdata[8] && !s_axi_wdata[9]) // Write command
                                                        begin
                                                            if(!spi_sr_out_buf_valid)
                                                                begin
                                                                    spi_sr_out_buf <= s_axi_wdata[7:0];
                                                                    spi_sr_out_buf_valid <= 1'b1;
                                                                end
                                                        end
                                                    else if(!s_axi_wdata[8] && s_axi_wdata[9]) // Read command
                                                        begin
                                                            if(!spi_rd_req)
                                                                spi_rd_req <= 1'b1;
                                                        end
                                                end
                                        end
                                end
                            3'h5: // Register 5
                                begin
                                    // RX buffer is not writable
                                end
                            3'h6: // Register 6
                                begin
                                    // SPI Shift register is not writable
                                end
                            3'h7: // Register 7
                                begin
                                    if(s_axi_wstrb[0]) // s_axi_wdata[7:0]
                                        begin
                                            if(NUM_SLAVES > 8)
                                                spi_ss_o[7:0] <= s_axi_wdata[7:0];
                                            else
                                                spi_ss_o[NUM_SLAVES - 1:0] <= s_axi_wdata[NUM_SLAVES - 1:0];
                                        end

                                    if(NUM_SLAVES > 8 && s_axi_wstrb[1]) // s_axi_wdata[15:8]
                                        begin
                                            if(NUM_SLAVES > 16)
                                                spi_ss_o[15:8] <= s_axi_wdata[15:8];
                                            else
                                                spi_ss_o[NUM_SLAVES - 1:8] <= s_axi_wdata[NUM_SLAVES - 1:8];
                                        end

                                    if(NUM_SLAVES > 16 && s_axi_wstrb[2]) // s_axi_wdata[23:16]
                                        begin
                                            if(NUM_SLAVES > 24)
                                                spi_ss_o[23:16] <= s_axi_wdata[23:16];
                                            else
                                                spi_ss_o[NUM_SLAVES - 1:16] <= s_axi_wdata[NUM_SLAVES - 1:16];
                                        end

                                    if(NUM_SLAVES > 24 && s_axi_wstrb[3]) // s_axi_wdata[31:24]
                                        begin
                                            spi_ss_o[NUM_SLAVES - 1:24] <= s_axi_wdata[NUM_SLAVES - 1:24];
                                        end
                                end
                        endcase
                    end
            end
    end

endmodule