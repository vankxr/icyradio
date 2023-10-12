`timescale 1ns / 1ps

module rst_pulse_gen
(
    input clk,
    input trigger,
    output rst_out
);

parameter N_DELAY = 32; // Number of clock cycles for reset pulse
parameter N_ASSERT = 128; // Number of clock cycles for reset pulse

reg  [1:0] state = 2'd0;
reg [15:0] ctr = 16'd0;
reg        rst_out = 1'b0;

always @(posedge clk)
    begin
        case(state)
            2'd0:
                begin
                    ctr <= 16'd0;
                    rst_out <= 1'b0;

                    if(trigger)
                        state <= 2'd1;
                end
            2'd1:
                begin
                    ctr <= ctr + 1;

                    if(ctr == N_DELAY)
                        begin
                            ctr <= 16'd0;
                            rst_out <= 1'b1;
                            state <= 2'd2;
                        end
                end
            2'd2:
                begin
                    ctr <= ctr + 1;

                    if(ctr == N_ASSERT)
                        begin
                            ctr <= 16'd0;
                            rst_out <= 1'b0;
                            state <= 2'd3;
                        end
                end
            2'd3:
                begin
                    if(!trigger)
                        state <= 2'd0;
                end
        endcase
    end
endmodule