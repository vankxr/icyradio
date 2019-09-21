module ddc
(
    input                       clk,       // Clock
    input                       reset,     // Reset
    input           [ISZ - 1:0] in,        // Input data
    input           [FSZ - 1:0] lo_freq,   // NCO tuning word
    input                       lo_ns_en,  // NCO noise shaping enable
    output                      out_valid, // Output valid
    output  signed  [OSZ - 1:0] out_i,     // In-phase output
    output  signed  [OSZ - 1:0] out_q      // Quadrature output
);

localparam ISZ = 16;   // Input word size
localparam FSZ = 26;   // NCO tuning word size
localparam OSZ = 16;   // Output word size
localparam CICSZ = 36; // CIC output word size -> (see cic localparam OSZ)

// Clock divider
reg [4:0]   clkdiv;
reg         cic_en;

always @(posedge clk)
    begin
        if(reset)
            begin
                clkdiv <= 5'b0;
                cic_en <= 1'b0;
            end
        else
            begin
                if(clkdiv == 5'b11111) // Decimation ratio (32) - 1
                    begin
                        cic_en <= 1'b1;
                        clkdiv <= 5'b0;
                    end
                else
                    begin
                        cic_en <= 1'b0;
                        clkdiv <= clkdiv + 1;
                    end
            end
    end

// Convert to signed
reg signed [ISZ - 1:0] in_sig;

always @(posedge clk)
    begin
        if(reset)
            in_sig <= {ISZ{1'b0}};
        else
            in_sig <= in ^ {1'b1, {(ISZ - 1){1'b0}}};
    end

// Tuner
wire signed [ISZ - 1:0] tuner_i;
wire signed [ISZ - 1:0] tuner_q;

tuner in_tuner
(
    .clk(clk),
    .reset(reset),
    .in(in_sig),
    .lo_freq(lo_freq),
    .lo_ns_en(lo_ns_en),
    .out_i(tuner_i),
    .out_q(tuner_q)
);

// CIC decimators
wire                      cic_valid;
wire signed [CICSZ - 1:0] cic_i;
wire signed [CICSZ - 1:0] cic_q;

cic_decimator cic_dec_i
(
    .clk(clk),
    .reset(reset),
    .out_clk(cic_en),
    .in(tuner_i),
    .out(cic_i),
    .out_valid(cic_valid)
);

cic_decimator cic_dec_q
(
    .clk(clk),
    .reset(reset),
    .out_clk(cic_en),
    .in(tuner_q),
    .out(cic_q),
    .out_valid()
);

wire signed [OSZ - 1:0] cic_i_trim = cic_i[(CICSZ - 1):(CICSZ - OSZ)];
wire signed [OSZ - 1:0] cic_q_trim = cic_q[(CICSZ - 1):(CICSZ - OSZ)];

// Multiplex CIC outputs
reg                     prev_cic_valid;
reg                     cic_mux_valid;
reg signed  [OSZ - 1:0] cic_iq_mux;

always @(posedge clk)
    begin
        if(reset)
            begin
                prev_cic_valid <= 1'b0;
                cic_mux_valid <= 1'b0;
                cic_iq_mux <= {OSZ{1'b0}};
            end
        else
            begin
                prev_cic_valid <= cic_valid;

                if((prev_cic_valid == 1'b0) & (cic_valid == 1'b1))
                    begin
                        cic_mux_valid <= 1'b1;
                        cic_iq_mux <= cic_i_trim;
                    end
                else if((prev_cic_valid == 1'b1) & (cic_valid == 1'b0))
                    begin
                        cic_mux_valid <= 1'b1;
                        cic_iq_mux <= cic_q_trim;
                    end
                else
                    cic_mux_valid <= 1'b0;
            end
    end

// FIR decimator
wire                    fir_valid;
wire signed [OSZ - 1:0] fir_qi_mux;

fir_decimator fir_dec
(
    .clk(clk),
    .reset(reset),
    .in_valid(cic_mux_valid),
    .in(cic_iq_mux),
    .out_valid(fir_valid),
    .out(fir_qi_mux)
);

// Demultiplex FIR outputs
reg                    prev_fir_valid;
reg                    out_valid;
reg signed [OSZ - 1:0] out_i;
reg signed [OSZ - 1:0] out_q;

always @(posedge clk)
    begin
        if(reset)
            begin
                prev_fir_valid <= 1'b0;
                out_valid <= 1'b0;
                out_i <= {OSZ{1'b0}};
                out_q <= {OSZ{1'b0}};
            end
        else
            begin
                prev_fir_valid <= fir_valid;

                if((prev_fir_valid == 1'b1) & (fir_valid == 1'b1))
                    out_i <= fir_qi_mux;

                if((prev_fir_valid == 1'b0) & (fir_valid == 1'b1))
                    begin
                        out_q <= fir_qi_mux;
                        out_valid <= 1'b1;
                    end
                else
                    out_valid <= 1'b0;
            end
    end

endmodule

