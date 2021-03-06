module cic_interpolator
(
    input                           clk,      // Clock
    input                           reset,    // Reset
    input                           in_rate,  // Input rate
    input                           out_rate, // Output rate
    input   signed [ISZ - 1:0]      in,       // Input data
    output  signed [OSZ - 1:0]      out,      // Output data
);

parameter  NUM_STAGES = 3;                              // Stages of int / comb
parameter  STG_GSZ = 8;                                 // Bit growth per stage -> log2(Interpolation Ratio)
parameter  ISZ = 16;                                    // Input word size
parameter  OSZ = 16;                                    // Output word size
localparam ASZ = (ISZ + ((NUM_STAGES - 1) * STG_GSZ));  // Accumulator word size

// Combs
reg         [NUM_STAGES:0]  comb_en;
reg signed  [ASZ - 1:0]     comb_diff [0:NUM_STAGES];
reg signed  [ASZ - 1:0]     comb_dly  [0:NUM_STAGES];

always @(posedge clk)
    begin
        if(reset)
            begin
                comb_en <= {(NUM_STAGES + 1){1'b0}};
                comb_diff[0] <= {ASZ{1'b0}};
                comb_dly[0] <= {ASZ{1'b0}};
            end
        else if(out_rate)
            begin
                if(in_rate)
                    begin
                        comb_diff[0] <= {{(ASZ - ISZ){in[ISZ - 1]}}, in}; // Sign-extended
                        comb_dly[0] <= comb_diff[0];
                    end

                comb_en <= {comb_en[NUM_STAGES - 1:0], in_rate};
            end
    end

generate
    genvar j;

    for(j = 1; j <= NUM_STAGES; j = j + 1)
        begin
            always @(posedge clk)
                begin
                    if(reset)
                        begin
                            comb_diff[j] <= {ASZ{1'b0}};
                            comb_dly[j] <= {ASZ{1'b0}};
                        end
                    else if(comb_en[j - 1] && out_rate)
                        begin
                            comb_diff[j] <= comb_diff[j - 1] - comb_dly[j - 1];
                            comb_dly[j] <= comb_diff[j];
                        end
                end
        end
endgenerate

// Integrators
reg signed [ASZ - 1:0] integrator [0:NUM_STAGES - 1];

always @(posedge clk)
    begin
        if(reset)
            begin
                integrator[0] <= {ASZ{1'b0}};
            end
        else if(out_rate)
            begin
                if(comb_en[NUM_STAGES])
                    integrator[0] <= integrator[0] + comb_diff[NUM_STAGES];
            end
    end

generate
    genvar i;

    for(i = 1; i < NUM_STAGES; i = i + 1)
        begin
            always @(posedge clk)
                begin
                    if(reset)
                        integrator[i] <= {ASZ{1'b0}};
                    else if(out_rate)
                        integrator[i] <= integrator[i] + integrator[i - 1];
                end
        end
endgenerate

// Output
reg signed  [OSZ - 1:0] out;

always @(posedge clk)
    begin
        if(reset)
            begin
                out <= {OSZ{1'b0}};
            end
        else if(out_rate)
            begin
                out <= integrator[NUM_STAGES - 1][(ASZ - 1):(ASZ - OSZ)];
            end
    end

endmodule
