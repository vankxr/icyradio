`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module axi_i2s_tb;

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

wire       s_axis_tready;
reg [31:0] s_axis_tdata;

wire        m_axis_tvalid;
wire [31:0] m_axis_tdata;

wire i2s_mclk;
wire i2s_bclk;
wire i2s_lrclk;
wire i2s_sdata_out;
wire i2s_sdata_in = i2s_sdata_out;

axi_i2s uut
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

    .s_axis_tready(s_axis_tready),
    .s_axis_tvalid(1'b1),
    .s_axis_tdata(s_axis_tdata),

    .m_axis_tready(1'b1),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tdata(m_axis_tdata),

    .i2s_mclk(i2s_mclk),
    .i2s_bclk(i2s_bclk),
    .i2s_lrclk(i2s_lrclk),
    .i2s_sdata_out(i2s_sdata_out),
    .i2s_sdata_in(i2s_sdata_in)
);

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
localparam total_sim_periods = 8192;
reg [31:0] sim_periods;

initial
    begin
        // Reset values
        sim_periods = 32'd0;

        aresetn = 1'b0;

        s_axis_tdata = 32'd0;

        // Give it 4 clock cycles to reset
        #24;
        aresetn = 1'b1;
        #12;

        // Configure registers
        axi_write(32'h08, 0); // (MCLK divider) / 2 - 1
        axi_write(32'h0C, 1); // (BCLK divider) / 2 - 1
        axi_write(32'h10, 127); // (LRCLK divider) / 2 - 1
        axi_write(32'h04, (0 << 20) | (3 << 16) | (5 << 8) | (1 << 1) | (1 << 0)); // 16-bit samples, 2 channels, channel 0 and 1 enabled, enable clock & serdes
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

        if(s_axis_tready)
            s_axis_tdata <= sim_periods[23:0] | 32'hAA000000;

        if(sim_periods == total_sim_periods)
            $finish;
    end

endmodule