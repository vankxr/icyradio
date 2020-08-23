module ri_co_mixer
(
    input                     clk,      // Clock
    input                     reset,    // Reset
    input  signed [DSZ - 1:0] in,       // Real input
    input  signed [DSZ - 1:0] lo_i,     // LO In-phase input
    input  signed [DSZ - 1:0] lo_q,     // LO Quadrature input
    output signed [DSZ - 1:0] out_i,    // In-phase output
    output signed [DSZ - 1:0] out_q     // Quadrature output
);

localparam DSZ = 16;  // Data word size

// Multiply, round and saturate
reg                           state;
reg  signed [DSZ - 1:0]       in_buf;
reg  signed [DSZ - 1:0]       i_lo_buf;
reg  signed [DSZ - 1:0]       q_lo_buf;
reg  signed [DSZ - 1:0]       mult_op;
reg  signed [DSZ + DSZ - 1:0] mult;
reg  signed [DSZ + 1:0]       mult_rnd;
wire signed [DSZ - 1:0]       mult_sat;
reg  signed [DSZ - 1:0]       i_out_sat;
reg  signed [DSZ - 1:0]       q_out_sat;
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

always @(posedge clk)
    begin
        if(reset)
            begin
                state <= 1'b0;
                in_buf <= {DSZ{1'b0}};
                i_lo_buf <= {DSZ{1'b0}};
                q_lo_buf <= {DSZ{1'b0}};
                mult_op <= {DSZ{1'b0}};
                mult <= {(DSZ + DSZ){1'b0}};
                mult_rnd <= {(DSZ + 2){1'b0}};
                i_out_sat <= {DSZ{1'b0}};
                q_out_sat <= {DSZ{1'b0}};
                out_i <= {DSZ{1'b0}};
                out_q <= {DSZ{1'b0}};
            end
        else
            begin
                state <= state + 1;

                mult <= in_buf * mult_op;
                mult_rnd <= mult[DSZ + DSZ - 1:DSZ - 2] + 1'b1;

                case(state)
                    1'b0:
                        begin
                            q_out_sat <= mult_sat;

                            mult_op <= i_lo_buf;

                            in_buf <= in;
                            i_lo_buf <= lo_i;
                            q_lo_buf <= lo_q;
                        end
                    1'b1:
                        begin
                            i_out_sat <= mult_sat;

                            mult_op <= q_lo_buf;

                            out_i <= i_out_sat;
                            out_q <= q_out_sat;
                        end
                endcase
            end
    end

endmodule

