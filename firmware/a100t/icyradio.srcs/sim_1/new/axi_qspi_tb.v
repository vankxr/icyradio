`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module axi_qspi_tb;

reg        aclk;        // Clock
reg        aresetn;     // Reset

reg  [31:0] s_axi_awaddr = 32'd0;
reg   [2:0] s_axi_awprot = 3'd0;
reg         s_axi_awvalid = 1'b0;
wire        s_axi_awready;
reg  [31:0] s_axi_wdata = 32'd0;
reg   [3:0] s_axi_wstrb = 4'd0;
reg         s_axi_wvalid = 1'b0;
wire        s_axi_wready;
wire  [1:0] s_axi_bresp;
wire        s_axi_bvalid;
reg         s_axi_bready = 1'b0;
reg  [31:0] s_axi_araddr = 32'd0;
reg   [2:0] s_axi_arprot = 3'd0;
reg         s_axi_arvalid = 1'b0;
wire        s_axi_arready;
wire [31:0] s_axi_rdata;
wire  [1:0] s_axi_rresp;
wire        s_axi_rvalid;
reg         s_axi_rready = 1'b0;

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
wire       spi_io1_i;
wire       spi_io1_o;
wire       spi_io1_t;
reg        spi_io2_i;
wire       spi_io2_o;
wire       spi_io2_t;
reg        spi_io3_i;
wire       spi_io3_o;
wire       spi_io3_t;

assign spi_io1_i = spi_io0_o;

axi_qspi uut
(
    .aclk(aclk),
    .aresetn(aresetn),

    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),

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


task axi_read; // Perform AXI Read transaction (32-bit)
	input [31:0] addr;
	output [31:0] data;

	begin
		s_axi_araddr <= addr;
		s_axi_arvalid <= 1'b1;
		s_axi_rready <= 1'b1;

		wait(s_axi_arready);
		@(posedge aclk);

        s_axi_arvalid <= 1'b0;

		wait(s_axi_rvalid);
		@(posedge aclk);

        data <= s_axi_rdata;
		s_axi_rready <= 1'b0;
	end
endtask;
task axi_write; // Perform AXI Write transaction (32-bit, aka strobe = 4'b1111)
	input [31:0] addr;
	input [31:0] data;

	begin
		s_axi_awaddr <= addr;
		s_axi_wdata <= data;
		s_axi_awvalid <= 1'b1;
		s_axi_wstrb <= 4'b1111;
		s_axi_wvalid <= 1'b1;
		s_axi_bready <= 1'b1;

		wait(s_axi_wready || s_axi_awready);
		@(posedge aclk);

		if(s_axi_wready && s_axi_awready)
            begin
                s_axi_awvalid <= 1'b0;
                s_axi_wvalid <= 1'b0;
            end
		else
            begin
                if(s_axi_wready)
                    begin
                        s_axi_wvalid <= 1'b0;
                        wait(s_axi_awready);
                    end
                else if(s_axi_awready)
                    begin
                        s_axi_awvalid <= 1'b0;
                        wait(s_axi_wready);
                    end

                @(posedge aclk);

                s_axi_awvalid <= 1'b0;
                s_axi_wvalid <= 1'b0;
            end

		s_axi_wstrb <= 4'b0000;

		wait(s_axi_bvalid);
		@(posedge aclk);

		s_axi_bready <= 1'b0;
	end
endtask;

///////////////////////////////////////
localparam total_sim_periods = 6144;
reg [31:0] sim_periods;

initial
    begin
        // Reset values
        sim_periods = 32'd0;

        aresetn = 1'b0;

        spi_sck_i = 1'b0;
        spi_ss_i = 1'b0;

        spi_io0_i = 1'b0;
        // spi_io1_i = 1'b1;
        spi_io2_i = 1'b1;
        spi_io3_i = 1'b1;

        // Give it 4 clock cycles to reset
        #24;
        aresetn = 1'b1;
        #12;

        // Configure registers
        axi_write(32'h10, 3); // (SCK divider) / 2 - 1
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
                axi_read(32'h18, dummy);
                // Write data
                axi_write(32'h14, 32'h000001A5);
            end

        if(sim_periods < 5100 && sim_periods % 1000 == 750)
            begin
                // Request read
                axi_write(32'h14, (1 << 9));
            end



        if(sim_periods == 100)
            begin
                axi_write(32'h04, (0 << 8) | (1 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 1100)
            begin
                axi_write(32'h04, (0 << 8) | (1 << 4) | (1 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 1, enable clock & serdes
            end

        if(sim_periods == 2100)
            begin
                axi_write(32'h04, (0 << 8) | (1 << 4) | (3 << 2) | (1 << 1) | (1 << 0)); // MSB first, Single IO, Mode 3, enable clock & serdes
            end

        if(sim_periods == 3100)
            begin
                axi_write(32'h04, (0 << 8) | (2 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Dual IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 4100)
            begin
                axi_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
            end

        if(sim_periods == 5100)
            begin
                // Multiple writes no pause
                axi_read(32'h18, dummy);
                axi_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
                axi_write(32'h14, 32'h000001A5);
                axi_write(32'h14, 32'h0000015A);
            end

        if(sim_periods == 5600)
            begin
                // Multiple reads no pause
                axi_read(32'h18, dummy);
                axi_write(32'h04, (0 << 8) | (4 << 4) | (0 << 2) | (1 << 1) | (1 << 0)); // MSB first, Quad IO, Mode 0, enable clock & serdes
                axi_write(32'h14, (1 << 9));
                axi_write(32'h14, (1 << 9));
            end

        if(sim_periods == total_sim_periods)
            $finish;
    end

endmodule