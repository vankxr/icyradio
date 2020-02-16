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

reg  [3:0]       cycle_cnt;
reg              init_done;
reg              data_phase;
reg  [DSZ - 1:0] qspi_data_in_shift;
reg  [DSZ - 1:0] qspi_data_out_shift;
reg              qspi_data_out_en_int;
reg              qspi_ncs;
reg  [DSZ - 1:0] data_out;
reg              rd_valid_int;
wire             invalid_req;
wire             any_req;

assign invalid_req = wr_req & rd_req;
assign any_req = wr_req | rd_req;

assign qspi_data_out = qspi_data_out_shift[DSZ - 1:DSZ - 4]; // QSPI data out are the MSBs of the shift register
assign qspi_data_out_en = qspi_data_out_en_int & !qspi_ncs; // Output enable gated by Chip Select
assign wr_valid = data_phase & wr_req & !rd_req & (cycle_cnt[1:0] == 2'b00);
assign rd_valid = data_phase & rd_req & !wr_req & rd_valid_int;

always @(posedge qspi_sck)
    begin
        if(reset)
            begin
                cycle_cnt <= 4'b0000;
                init_done <= 1'b0;
                data_phase <= 1'b0;
                qspi_data_in_shift <= {DSZ{1'b0}};
                qspi_data_out_en_int <= 1'b0;
                qspi_ncs <= 1'b1;
                rd_valid_int <= 1'b0;
            end
        else if(!init_done)
            begin
                if(qspi_ncs)
                    begin
                        cycle_cnt <= 4'b0000;
                        data_phase <= 1'b0;

                        qspi_data_out_en_int <= 1'b1;

                        qspi_ncs <= 1'b0;
                    end
                else
                    begin
                        cycle_cnt <= cycle_cnt + 1;

                        if(cycle_cnt == 4'b1000)
                            begin
                                qspi_ncs <= 1'b1;

                                init_done <= 1'b1;
                            end
                    end
            end
        else
            begin
                if(qspi_ncs)
                    begin
                        cycle_cnt <= 4'b0000;
                        data_phase <= 1'b0;

                        qspi_data_out_en_int <= 1'b1;

                        if(any_req)
                            qspi_ncs <= invalid_req;
                    end
                else
                    begin
                        cycle_cnt <= cycle_cnt + 1;

                        if(!any_req)
                            qspi_ncs <= 1'b1;

                        if(invalid_req)
                            qspi_ncs <= 1'b1;

                        if(wr_req)
                            begin
                                if(cycle_cnt == 4'b0111)
                                    begin
                                        cycle_cnt <= 4'b0000;
                                        data_phase <= 1'b1;
                                    end
                            end

                        if(rd_req)
                            begin
                                if(!data_phase)
                                    begin
                                        if(cycle_cnt == 4'b1000)
                                            qspi_data_out_en_int <= invalid_req;

                                        if(cycle_cnt == 4'b1101)
                                            begin
                                                cycle_cnt <= 4'b0000;
                                                data_phase <= 1'b1;

                                                rd_valid_int <= 1'b0;
                                            end
                                    end
                                else
                                    begin
                                        qspi_data_in_shift <= {qspi_data_in_shift[DSZ - 5:0], qspi_data_in};

                                        rd_valid_int <= 1'b0;

                                        if(cycle_cnt[1:0] == 2'b11)
                                            begin
                                                data_out <= {qspi_data_in_shift[DSZ - 5:0], qspi_data_in};

                                                rd_valid_int <= 1'b1;
                                            end
                                    end
                            end
                    end
            end
    end

always @(negedge qspi_sck)
    begin
        if(reset || qspi_ncs)
            begin
                qspi_data_out_shift <= {DSZ{1'b0}};
            end
        else if(!init_done)
            begin
                qspi_data_out_shift <= {qspi_data_out_shift[DSZ - 2:0], 1'b0};

                if(cycle_cnt == 4'b0000)
                    qspi_data_out_shift <= {3'b000, 8'h35, {(DSZ - 11){1'b0}}};
            end
        else
            begin
                qspi_data_out_shift <= {qspi_data_out_shift[DSZ - 5:0], 4'b0000};

                if(cycle_cnt[1:0] == 2'b00)
                    begin
                        if(!data_phase)
                            begin
                                if(cycle_cnt[3:2] == 2'b00)
                                    begin
                                        if(rd_req)
                                            qspi_data_out_shift <= {8'hEB, {(24 - ASZ){1'b0}}, addr[ASZ - 1:16]};
                                        else if(wr_req)
                                            qspi_data_out_shift <= {8'h38, {(24 - ASZ){1'b0}}, addr[ASZ - 1:16]};
                                    end
                                else if(cycle_cnt[3:2] == 2'b01)
                                    qspi_data_out_shift <= addr[15:0];
                            end
                        else
                            begin
                                if(wr_req)
                                    qspi_data_out_shift <= data_in;
                            end
                    end
            end
    end

endmodule