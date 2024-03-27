`timescale 1 ns/1 ps  // time-unit = 1 ns, precision = 1 ps

module axi_irq_controller_tb;

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

reg [31:0] irq_in;

wire [31:0] cpu_irq_out;
reg  [31:0] cpu_eoi_in;

reg        pcie_msi_enabled;
reg        pcie_msi_granted;
reg  [2:0] pcie_msi_vector_width;
wire       pcie_msi_request;
wire [0:0] pcie_msi_vector;

axi_irq_controller uut
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

    .irq_in(irq_in),

    .cpu_irq_out(cpu_irq_out),
    .cpu_eoi_in(cpu_eoi_in),

    .pcie_msi_enabled(pcie_msi_enabled),
    .pcie_msi_granted(pcie_msi_granted),
    .pcie_msi_vector_width(pcie_msi_vector_width),
    .pcie_msi_request(pcie_msi_request),
    .pcie_msi_vector(pcie_msi_vector)
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
localparam total_sim_periods = 1024;
reg [31:0] sim_periods;

initial
    begin
        // Reset values
        sim_periods = 32'd0;

        aresetn = 1'b0;

        irq_in = 32'h00000000;
        
        cpu_eoi_in = 32'h00000000;
        
        pcie_msi_enabled = 1'b1;
        pcie_msi_granted = 1'b0;
        pcie_msi_vector_width = 3'b001;

        // Give it 4 clock cycles to reset
        #24;
        aresetn = 1'b1;
        #12;

        // Configure registers
        axi_write(32'h80, (1 << 8) | 1); // IRQ 0 to MSI vector 1
        axi_write(32'h84, (1 << 8) | 32); // IRQ 1 to CPU IRQ line 0
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

        if(sim_periods == 500)
            irq_in[0] <= 1'b1;
        else
            irq_in[0] <= 1'b0;
            
        if(sim_periods == 510)
            pcie_msi_granted = 1'b1;
        else
            pcie_msi_granted <= 1'b0;

        if(sim_periods == 520)
            irq_in[1] <= 1'b1;
        else
            irq_in[1] <= 1'b0;
            
        if(sim_periods == 530)
            cpu_eoi_in <= cpu_irq_out;
        else
            cpu_eoi_in <= 32'h00000000;

        if(sim_periods == total_sim_periods)
            $finish;
    end

endmodule