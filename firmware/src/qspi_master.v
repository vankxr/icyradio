module qspi_master
(
    input              clk,                 // Clock
    input              reset,               // Reset
    input              qspi_sck,            // QSPI Serial Clock
    output             qspi_data_out_en,    // QSPI Data Output Enable
    output [3:0]       qspi_data_out,       // QSPI Data Output
    input  [3:0]       qspi_data_in,        // QSPI Data Input
    output             qspi_ncs,            // QSPI Chip Select (Active low)
    input  [ASZ - 1:0] addr,                // Address
    output [DSZ - 1:0] data_out,            // Data paralellized
    input  [DSZ - 1:0] data_in,             // Data to serialize
    output             wr_valid,            // Write data being consumed
    output             rd_valid,            // Read data valid flag
    input              wr_req,              // Write request
    input              rd_req               // Read request
);

parameter ASZ = 22;
parameter DSZ = 16;

reg  [3:0]       cycle_cnt;             // Cycle counter (each cycle is 4 bits in Quad mode)
reg              init_done;             // Initialization done flag
reg              data_phase;            // Command/Address or Data phase flag
reg  [DSZ - 1:0] qspi_data_in_shift;    // Input shift register
reg  [DSZ - 1:0] qspi_data_out_shift;   // Output shift register
reg              qspi_data_out_en_int;  // Pad output enable
reg              qspi_ncs;              // Chip select
reg  [DSZ - 1:0] data_out;              // Output data paralellized
reg              wr_valid;              // Internal write data being consumed flag
reg              rd_valid;              // Internal read data valid flag
reg              wr_req_q;              // Latched write request flag
reg              rd_req_q;              // Latched read request flag
wire [1:0]       req;                   // Combined request flags
wire [1:0]       req_q;                 // Coombined latched request flags

assign req = {wr_req, rd_req};
assign req_q = {wr_req_q, rd_req_q};

assign qspi_data_out = qspi_data_out_shift[DSZ - 1:DSZ - 4]; // QSPI data out are the MSBs of the shift register
assign qspi_data_out_en = qspi_data_out_en_int & !qspi_ncs; // Output enable gated by Chip Select

always @(posedge qspi_sck)
    begin
        if(reset || !init_done || qspi_ncs)
            begin
                data_phase <= 1'b0;
                qspi_data_in_shift <= {DSZ{1'b0}};
                wr_valid <= 1'b0;
                rd_valid <= 1'b0;
            end
        else
            begin
                qspi_data_in_shift <= {qspi_data_in_shift[DSZ - 5:0], qspi_data_in};

                if(req == req_q)
                    begin
                        if(!data_phase)
                            begin
                                if(cycle_cnt[2:0] == 3'b111 && wr_req_q)
                                    begin
                                        data_phase <= 1'b1;

                                        wr_valid <= 1'b1;
                                    end

                                if(cycle_cnt == 4'b1101 && rd_req_q)
                                    data_phase <= 1'b1;
                            end
                        else
                            begin
                                if(wr_req_q)
                                    begin
                                        wr_valid <= 1'b0;

                                        if(cycle_cnt[1:0] == 2'b11)
                                            wr_valid <= 1'b1;
                                    end

                                if(rd_req_q)
                                    begin
                                        rd_valid <= 1'b0;

                                        if(cycle_cnt[1:0] == 2'b01)
                                            begin
                                                data_out <= {qspi_data_in_shift[DSZ - 5:0], qspi_data_in};

                                                rd_valid <= 1'b1;
                                            end
                                    end
                            end
                    end
            end
    end

always @(negedge qspi_sck)
    begin
        if(reset)
            begin
                cycle_cnt <= 4'b0000;
                init_done <= 1'b0;
                qspi_data_out_shift <= {DSZ{1'b0}};
                qspi_data_out_en_int <= 1'b0;
                qspi_ncs <= 1'b1;
                wr_req_q <= 1'b0;
                rd_req_q <= 1'b0;
            end
        else if(!init_done)
            begin
                qspi_data_out_shift <= {qspi_data_out_shift[DSZ - 2:0], 1'b0};

                if(qspi_ncs)
                    begin
                        cycle_cnt <= 4'b0000;

                        qspi_data_out_shift <= {3'b000, 8'h35, {(DSZ - 11){1'b0}}}; // 0x35 - Enter quad mode
                        qspi_data_out_en_int <= 1'b1;

                        qspi_ncs <= 1'b0;
                    end
                else
                    begin
                        cycle_cnt <= cycle_cnt + 1;

                        if(cycle_cnt[2:0] == 3'b111)
                            begin
                                qspi_ncs <= 1'b1;

                                init_done <= 1'b1;
                            end
                    end
            end
        else
            begin
                qspi_data_out_shift <= {qspi_data_out_shift[DSZ - 5:0], 4'b0000};

                if(qspi_ncs)
                    begin
                        cycle_cnt <= 4'b0000;

                        if(|req & !&req)
                            begin
                                wr_req_q <= wr_req;
                                rd_req_q <= rd_req;

                                if(rd_req)
                                    qspi_data_out_shift <= {8'hEB, {(24 - ASZ){1'b0}}, addr[ASZ - 1:16]}; // 0xEB - Quad read
                                else if(wr_req)
                                    qspi_data_out_shift <= {8'h38, {(24 - ASZ){1'b0}}, addr[ASZ - 1:16]}; // 0x38 - Quad write

                                qspi_data_out_en_int <= 1'b1;

                                qspi_ncs <= 1'b0;
                            end
                    end
                else
                    begin
                        cycle_cnt <= cycle_cnt + 1;

                        if(req != req_q)
                            begin
                                qspi_ncs <= 1'b1;
                            end
                        else
                            begin
                                if(!data_phase)
                                    begin
                                        if(cycle_cnt[1:0] == 2'b11)
                                            qspi_data_out_shift <= addr[15:0];
                                    end
                                else
                                    begin
                                        if(rd_req_q)
                                            qspi_data_out_en_int <= 1'b0;

                                        if(wr_req_q)
                                            begin
                                                if(cycle_cnt[1:0] == 2'b11)
                                                    qspi_data_out_shift <= data_in;
                                            end
                                    end
                            end
                    end
            end
    end

endmodule