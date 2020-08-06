module quadrature_mixer
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input  signed [DSZ - 1:0] in_i,     // In-phase input
    input  signed [DSZ - 1:0] in_q,     // Quadrature input
    input  signed [DSZ - 1:0] lo_i,     // LO In-phase input
    input  signed [DSZ - 1:0] lo_q,     // LO Quadrature input
    output signed [DSZ - 1:0] out_i,    // In-phase output
    output signed [DSZ - 1:0] out_q     // Quadrature output
);

localparam DSZ = 16;  // Data word size

// Multiply, round and saturate
reg         [1:0]             state;
reg  signed [DSZ - 1:0]       i_in_buf;
reg  signed [DSZ - 1:0]       q_in_buf;
reg  signed [DSZ - 1:0]       i_lo_buf;
reg  signed [DSZ - 1:0]       q_lo_buf;
reg  signed [DSZ - 1:0]       mult_op [0:1];
reg  signed [DSZ + DSZ - 1:0] mult;
reg  signed [DSZ + 1:0]       mult_rnd;
wire signed [DSZ - 1:0]       mult_sat;
reg  signed [DSZ + 1:0]       i_out_sum;
reg  signed [DSZ + 1:0]       q_out_sum;
wire signed [DSZ - 1:0]       i_out_sat;
wire signed [DSZ - 1:0]       q_out_sat;
reg  signed [DSZ - 1:0]       out_i;
reg  signed [DSZ - 1:0]       out_q;

saturator #(
    .ISZ(DSZ + 1),
    .OSZ(DSZ)
)
mult_saturator
(
    .in(mult_rnd[DSZ + 1:1]),
    .out(mult_sat)
);

saturator #(
    .ISZ(DSZ + 1),
    .OSZ(DSZ)
)
i_out_saturator
(
    .in(i_out_sum[DSZ + 1:1]),
    .out(i_out_sat)
);

saturator #(
    .ISZ(DSZ + 1),
    .OSZ(DSZ)
)
q_out_saturator
(
    .in(q_out_sum[DSZ + 1:1]),
    .out(q_out_sat)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                state <= 2'b00;
                i_in_buf <= {DSZ{1'b0}};
                q_in_buf <= {DSZ{1'b0}};
                i_lo_buf <= {DSZ{1'b0}};
                q_lo_buf <= {DSZ{1'b0}};
                mult <= {(DSZ + DSZ){1'b0}};
                mult_rnd <= {(DSZ + 2){1'b0}};
                i_out_sum <= {(DSZ + 2){1'b0}};
                q_out_sum <= {(DSZ + 2){1'b0}};
                out_i <= {DSZ{1'b0}};
                out_q <= {DSZ{1'b0}};
            end
        else
            begin
                state <= state + 1;

                mult <= mult_op[0] * mult_op[1];
                mult_rnd <= mult[DSZ + DSZ - 1:DSZ - 2] + 1'b1;

                case(state)
                    2'b00:
                        begin
                            i_out_sum <= i_out_sum - mult_sat;

                            mult_op[0] <= i_in_buf;
                            mult_op[1] <= i_lo_buf;
                        end
                    2'b01:
                        begin
                            q_out_sum <= mult_sat;

                            mult_op[0] <= q_in_buf;
                            mult_op[1] <= q_lo_buf;
                        end
                    2'b10:
                        begin
                            q_out_sum <= q_out_sum + mult_sat;

                            mult_op[0] <= i_in_buf;
                            mult_op[1] <= q_lo_buf;
                        end
                    2'b11:
                        begin
                            i_out_sum <= mult_sat;

                            mult_op[0] <= q_in_buf;
                            mult_op[1] <= i_lo_buf;

                            out_i <= i_out_sat;
                            out_q <= q_out_sat;

                            i_in_buf <= in_i;
                            q_in_buf <= in_q;
                            i_lo_buf <= lo_i;
                            q_lo_buf <= lo_q;
                        end
                endcase
            end
    end

endmodule

