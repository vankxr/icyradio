module cic_interpolator
(
    input                           clk,      // Clock
    input                           reset,    // Reset
    input                           out_clk,  // Interpolated output rate
    input   signed [ISZ - 1:0]      in,       // Input data
    output  signed [OSZ - 1:0]      out,      // Output data
);

localparam NUM_STAGES = 4;                        // Stages of int / comb
localparam STG_GSZ = 5;                           // Bit growth per stage -> log2(Interpolation Ratio)
localparam ISZ = 16;                              // Input word size
localparam ASZ = (ISZ + (NUM_STAGES * STG_GSZ));  // Integrator/Adder word size
localparam OSZ = ASZ;                             // Output word size

// Combs
reg signed  [ISZ - 1:0] comb_diff [0:NUM_STAGES];
reg signed  [ISZ - 1:0] comb_dly  [0:NUM_STAGES];

always @(posedge clk)
    begin
        if(reset)
            begin
                comb_diff[0] <= {ISZ{1'b0}};
                comb_dly[0] <= {ISZ{1'b0}};
            end
        else
            begin
                comb_diff[0] <= in;
                comb_dly[0] <= comb_diff[0];
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
                            comb_diff[j] <= {ISZ{1'b0}};
                            comb_dly[j] <= {ISZ{1'b0}};
                        end
                    else
                        begin
                            comb_diff[j] <= comb_diff[j - 1] - comb_dly[j - 1];
                            comb_dly[j] <= comb_diff[j];
                        end
                end
        end
endgenerate

// Input clock edge detector
reg [1:0] clk_ed;

// Integrators
reg signed [ASZ - 1:0] integrator [0:NUM_STAGES - 1];

always @(posedge out_clk)
    begin
        if(reset)
            begin
                clk_ed <= 2'b00;

                integrator[0] <= {ASZ{1'b0}};
            end
        else
            begin
                clk_ed <= {clk_ed[0], clk};

                if(!clk_ed[1] && clk_ed[0])
                    integrator[0] <= integrator[0] + {{(ASZ - ISZ){comb_diff[NUM_STAGES][ISZ - 1]}}, comb_diff[NUM_STAGES]};
            end
    end

generate
    genvar i;

    for(i = 1; i < NUM_STAGES; i = i + 1)
        begin
            always @(posedge out_clk)
                begin
                    if(reset == 1'b1)
                        integrator[i] <= {ASZ{1'b0}};
                    else
                        integrator[i] <= integrator[i] + integrator[i - 1];
                end
        end
endgenerate

// Assign output
assign out = integrator[NUM_STAGES - 1];

endmodule
