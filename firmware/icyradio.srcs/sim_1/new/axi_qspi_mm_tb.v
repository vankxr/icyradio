`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module axi_qspi_mm_tb;

reg        aclk;        // Clock
reg        aresetn;     // Reset

reg  [31:0] s_axi_lite_awaddr = 32'd0;
reg   [2:0] s_axi_lite_awprot = 3'd0;
reg         s_axi_lite_awvalid = 1'b0;
wire        s_axi_lite_awready;
reg  [31:0] s_axi_lite_wdata = 32'd0;
reg   [3:0] s_axi_lite_wstrb = 4'd0;
reg         s_axi_lite_wvalid = 1'b0;
wire        s_axi_lite_wready;
wire  [1:0] s_axi_lite_bresp;
wire        s_axi_lite_bvalid;
reg         s_axi_lite_bready = 1'b0;
reg  [31:0] s_axi_lite_araddr = 32'd0;
reg   [2:0] s_axi_lite_arprot = 3'd0;
reg         s_axi_lite_arvalid = 1'b0;
wire        s_axi_lite_arready;
wire [31:0] s_axi_lite_rdata;
wire  [1:0] s_axi_lite_rresp;
wire        s_axi_lite_rvalid;
reg         s_axi_lite_rready = 1'b0;

reg  [23:0] s_axi_full_awaddr = 24'd0;
reg   [7:0] s_axi_full_awlen = 8'd0;
reg   [2:0] s_axi_full_awsize = 3'd0;
reg   [1:0] s_axi_full_awburst = 2'd0;
reg         s_axi_full_awlock = 1'b0;
reg   [3:0] s_axi_full_awcache = 4'd0;
reg   [2:0] s_axi_full_awprot = 3'd0;
reg   [3:0] s_axi_full_awqos = 4'd0;
reg         s_axi_full_awvalid = 1'b0;
wire        s_axi_full_awready;
reg  [31:0] s_axi_full_wdata = 32'd0;
reg   [3:0] s_axi_full_wstrb = 4'd0;
reg         s_axi_full_wlast = 1'b0;
reg         s_axi_full_wvalid = 1'b0;
wire        s_axi_full_wready;
wire  [1:0] s_axi_full_bresp;
wire        s_axi_full_bvalid;
reg         s_axi_full_bready = 1'b0;
reg  [23:0] s_axi_full_araddr = 24'd0;
reg   [7:0] s_axi_full_arlen = 8'd0;
reg   [2:0] s_axi_full_arsize = 3'd0;
reg   [1:0] s_axi_full_arburst = 2'd0;
reg         s_axi_full_arlock = 1'b0;
reg   [3:0] s_axi_full_arcache = 4'd0;
reg   [2:0] s_axi_full_arprot = 3'd0;
reg   [3:0] s_axi_full_arqos = 4'd0;
reg         s_axi_full_arvalid = 1'b0;
wire        s_axi_full_arready;
wire [31:0] s_axi_full_rdata;
wire  [1:0] s_axi_full_rresp;
wire        s_axi_full_rlast;
wire        s_axi_full_rvalid;
reg         s_axi_full_rready = 1'b0;

reg [31:0] dummy;

reg        spi_sck_i;
wire       spi_sck_o;
wire       spi_sck_t;
reg  [0:0] spi_ss_i;
wire [0:0] spi_ss_o;
wire [0:0] spi_ss_t;
reg        spi_io0_i;
wire       spi_io0_o;
wire       spi_io0_t;
reg        spi_io1_i;
wire       spi_io1_o;
wire       spi_io1_t;
reg        spi_io2_i;
wire       spi_io2_o;
wire       spi_io2_t;
reg        spi_io3_i;
wire       spi_io3_o;
wire       spi_io3_t;

axi_qspi_mm uut
(
    .aclk(aclk),
    .aresetn(aresetn),

    .s_axi_lite_awaddr(s_axi_lite_awaddr),
    .s_axi_lite_awprot(s_axi_lite_awprot),
    .s_axi_lite_awvalid(s_axi_lite_awvalid),
    .s_axi_lite_awready(s_axi_lite_awready),
    .s_axi_lite_wdata(s_axi_lite_wdata),
    .s_axi_lite_wstrb(s_axi_lite_wstrb),
    .s_axi_lite_wvalid(s_axi_lite_wvalid),
    .s_axi_lite_wready(s_axi_lite_wready),
    .s_axi_lite_bresp(s_axi_lite_bresp),
    .s_axi_lite_bvalid(s_axi_lite_bvalid),
    .s_axi_lite_bready(s_axi_lite_bready),
    .s_axi_lite_araddr(s_axi_lite_araddr),
    .s_axi_lite_arprot(s_axi_lite_arprot),
    .s_axi_lite_arvalid(s_axi_lite_arvalid),
    .s_axi_lite_arready(s_axi_lite_arready),
    .s_axi_lite_rdata(s_axi_lite_rdata),
    .s_axi_lite_rresp(s_axi_lite_rresp),
    .s_axi_lite_rvalid(s_axi_lite_rvalid),
    .s_axi_lite_rready(s_axi_lite_rready),

    .s_axi_full_awaddr(s_axi_full_awaddr),
    .s_axi_full_awlen(s_axi_full_awlen),
    .s_axi_full_awsize(s_axi_full_awsize),
    .s_axi_full_awburst(s_axi_full_awburst),
    .s_axi_full_awlock(s_axi_full_awlock),
    .s_axi_full_awcache(s_axi_full_awcache),
    .s_axi_full_awprot(s_axi_full_awprot),
    .s_axi_full_awqos(s_axi_full_awqos),
    .s_axi_full_awvalid(s_axi_full_awvalid),
    .s_axi_full_awready(s_axi_full_awready),
    .s_axi_full_wdata(s_axi_full_wdata),
    .s_axi_full_wstrb(s_axi_full_wstrb),
    .s_axi_full_wlast(s_axi_full_wlast),
    .s_axi_full_wvalid(s_axi_full_wvalid),
    .s_axi_full_wready(s_axi_full_wready),
    .s_axi_full_bresp(s_axi_full_bresp),
    .s_axi_full_bvalid(s_axi_full_bvalid),
    .s_axi_full_bready(s_axi_full_bready),
    .s_axi_full_araddr(s_axi_full_araddr),
    .s_axi_full_arlen(s_axi_full_arlen),
    .s_axi_full_arsize(s_axi_full_arsize),
    .s_axi_full_arburst(s_axi_full_arburst),
    .s_axi_full_arlock(s_axi_full_arlock),
    .s_axi_full_arcache(s_axi_full_arcache),
    .s_axi_full_arprot(s_axi_full_arprot),
    .s_axi_full_arqos(s_axi_full_arqos),
    .s_axi_full_arvalid(s_axi_full_arvalid),
    .s_axi_full_arready(s_axi_full_arready),
    .s_axi_full_rdata(s_axi_full_rdata),
    .s_axi_full_rresp(s_axi_full_rresp),
    .s_axi_full_rlast(s_axi_full_rlast),
    .s_axi_full_rvalid(s_axi_full_rvalid),
    .s_axi_full_rready(s_axi_full_rready),

    .spi_sck_i(spi_sck_i),
    .spi_sck_o(spi_sck_o),
    .spi_sck_t(spi_sck_t),
    .spi_ss_i(spi_ss_i),
    .spi_ss_o(spi_ss_o),
    .spi_ss_t(spi_ss_t),
    .spi_io0_i(spi_io0_i),
    .spi_io0_o(spi_io0_o),
    .spi_io0_t(spi_io0_t),
    .spi_io1_i(spi_io1_i),
    .spi_io1_o(spi_io1_o),
    .spi_io1_t(spi_io1_t),
    .spi_io2_i(spi_io2_i),
    .spi_io2_o(spi_io2_o),
    .spi_io2_t(spi_io2_t),
    .spi_io3_i(spi_io3_i),
    .spi_io3_o(spi_io3_o),
    .spi_io3_t(spi_io3_t)
);

task axi_full_read; // Perform AXI Read transaction
	input [31:0] addr;
    input [7:0] len;
    input [2:0] size;

	begin
		s_axi_full_araddr <= addr;
        s_axi_full_arlen <= len;
        s_axi_full_arsize <= size;
		s_axi_full_arvalid <= 1'b1;
		s_axi_full_rready <= 1'b1;

		wait(s_axi_full_arready);
		@(posedge aclk);

        s_axi_full_arvalid <= 1'b0;

		wait(s_axi_full_rvalid && s_axi_full_rlast);
		@(posedge aclk);

		s_axi_full_rready <= 1'b0;
	end
endtask;
task axi_lite_read; // Perform AXI Read transaction (32-bit)
	input [31:0] addr;
	output [31:0] data;

	begin
		s_axi_lite_araddr <= addr;
		s_axi_lite_arvalid <= 1'b1;
		s_axi_lite_rready <= 1'b1;

		wait(s_axi_lite_arready);
		@(posedge aclk);

        s_axi_lite_arvalid <= 1'b0;

		wait(s_axi_lite_rvalid);
		@(posedge aclk);

        data <= s_axi_lite_rdata;
		s_axi_lite_rready <= 1'b0;
	end
endtask;
task axi_lite_write; // Perform AXI Write transaction (32-bit, aka strobe = 4'b1111)
	input [31:0] addr;
	input [31:0] data;

	begin
		s_axi_lite_awaddr <= addr;
		s_axi_lite_wdata <= data;
		s_axi_lite_awvalid <= 1'b1;
		s_axi_lite_wstrb <= 4'b1111;
		s_axi_lite_wvalid <= 1'b1;
		s_axi_lite_bready <= 1'b1;

		wait(s_axi_lite_wready || s_axi_lite_awready);
		@(posedge aclk);

		if(s_axi_lite_wready && s_axi_lite_awready)
            begin
                s_axi_lite_awvalid <= 1'b0;
                s_axi_lite_wvalid <= 1'b0;
            end
		else
            begin
                if(s_axi_lite_wready)
                    begin
 s_axi_lite_wvalid <= 1'b0;
 wait(s_axi_lite_awready);
                    end
                else if(s_axi_lite_awready)
                    begin
 s_axi_lite_awvalid <= 1'b0;
 wait(s_axi_lite_wready);
                    end

                @(posedge aclk);

                s_axi_lite_awvalid <= 1'b0;
                s_axi_lite_wvalid <= 1'b0;
            end

		s_axi_lite_wstrb <= 4'b0000;

		wait(s_axi_lite_bvalid);
		@(posedge aclk);

		s_axi_lite_bready <= 1'b0;
	end
endtask;

///////////////////////////////////////
localparam total_sim_periods = 8192;
reg [31:0] sim_periods;

initial
    begin
        // Reset values
        sim_periods = 32'd0;

        aresetn = 1'b0;

        spi_sck_i = 1'b0;
        spi_ss_i = 1'b0;

        spi_io0_i = 1'b0;
        spi_io1_i = 1'b1;
        spi_io2_i = 1'b1;
        spi_io3_i = 1'b1;

        // Give it 4 clock cycles to reset
        #24;
        aresetn = 1'b1;
        #12;

        // Configure registers
        axi_lite_write(32'h08, 1); // (SCK divider) / 2 - 1
    end

always
    begin
        // Clock
        aclk = 1'b0;
        #3;
        aclk = 1'b1;
        #3;
    end

always @(posedge aclk)
    begin
        sim_periods <= sim_periods + 1;

        if(sim_periods < 5100 && sim_periods % 1000 == 250)
            begin
                // Read to clear FIFO
                axi_lite_read(32'h14, dummy);
                // Write data
                axi_lite_write(32'h10, 32'h000001A5);
            end

        if(sim_periods < 5100 && sim_periods % 1000 == 750)
            begin
                // Request read
                axi_lite_write(32'h10, (1 << 9));
            end



        if(sim_periods == 100)
            begin
                axi_lite_write(32'h04, (0 << 8) | (1 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 1100)
            begin
                axi_lite_write(32'h04, (0 << 8) | (1 << 4) | (1 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 1, enable clock & serdes
            end

        if(sim_periods == 2100)
            begin
                axi_lite_write(32'h04, (0 << 8) | (1 << 4) | (3 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 3, enable clock & serdes
            end

        if(sim_periods == 3100)
            begin
                axi_lite_write(32'h04, (0 << 8) | (2 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Dual IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 4100)
            begin
                axi_lite_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 5100)
            begin
                // Multiple writes no pause
                axi_lite_read(32'h14, dummy);
                axi_lite_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
                axi_lite_write(32'h10, 32'h000001A5);
                axi_lite_write(32'h10, 32'h0000015A);
            end

        if(sim_periods == 5600)
            begin
                // Multiple reads no pause
                axi_lite_read(32'h14, dummy);
                axi_lite_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
                axi_lite_write(32'h10, (1 << 9));
                axi_lite_write(32'h10, (1 << 9));
            end

        if(sim_periods == 6000)
            begin
                axi_lite_write(32'h0C, (4 << 16) | (8'hA0 << 8) | (2 << 4) | (2 << 0)); // 3 address bytes, 2 dummy bytes, Mode A0, 4 CS high cycles
                axi_lite_write(32'h04, (1 << 12) | (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MMIO, MSB first, Quad IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 6050)
            begin
                axi_full_read(32'h00123456, 0, 0); // Read 1 byte (addr, nbeats - 1, nbytes - 1)
            end

        if(sim_periods == 6250)
            begin
                axi_full_read(32'h00123456, 0, 1); // Read 1 short (addr, nbeats - 1, nbytes - 1)
            end

        if(sim_periods == 6500)
            begin
                axi_full_read(32'h00000001, 3, 3); // Read 4 words, unaligned (addr, nbeats - 1, nbytes - 1)
            end

        if(sim_periods == total_sim_periods)
            $finish;
    end

endmodule