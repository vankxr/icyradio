module fir_decimator
(
    input                       clk,        // Clock
    input                       reset,      // Reset
    input                       in_valid,   // New input sample available
    input   signed [ISZ - 1:0]  in,         // Input data
    output                      out_valid,  // New output sample available
    output  signed [OSZ - 1:0]  out         // Output data (reverse order)
);

localparam ISZ = 16;   // Input word size
localparam OSZ = 16;   // Output word size
localparam PSZ = 8;    // Pointer size
localparam CSZ = 16;   // Coefficient data word size
localparam CLEN = 249; // Coefficient data size
localparam AGRW = 3;   // Accumulator growth

// Write address generator
reg [PSZ:0] w_addr;

always @(posedge clk)
    begin
        if(reset)
            w_addr <= {(PSZ + 1){1'd0}};
        else
            if(in_valid)
                w_addr <= w_addr + 1;
    end

// MAC control state machine
localparam MAC_STATE_WAIT = 3'b000;
localparam MAC_STATE_ACCQ = 3'b001;
localparam MAC_STATE_ACCI = 3'b010;
localparam MAC_STATE_DMPQ = 3'b011;
localparam MAC_STATE_DMPI = 3'b100;

reg [2:0]       state;
reg             mac_en;
reg             dump;
reg [PSZ:0]     r_addr;
reg [PSZ - 1:0] c_addr;

always @(posedge clk)
    begin
        if(reset)
            begin
                state <= MAC_STATE_WAIT;
                mac_en <= 1'b0;
                dump <= 1'b0;
                r_addr <= {(PSZ + 1){1'd0}};
                c_addr <= {PSZ{1'd0}};
            end
        else
            begin
                case(state)
                    MAC_STATE_WAIT:
                        begin
                            // Halt and hold
                            if(w_addr[3:0] == 4'b1111)
                                begin
                                    // Start a MAC sequence every 16 entries (8 samples)
                                    state <= MAC_STATE_ACCQ;
                                    mac_en <= 1'b1;
                                    r_addr <= w_addr;
                                    c_addr <= {PSZ{1'd0}};
                                end
                        end
                    MAC_STATE_ACCQ:
                        begin
                            // Accumulate Q and advance to I
                            state <= MAC_STATE_ACCI;
                            r_addr <= r_addr - 1;
                        end
                    MAC_STATE_ACCI:
                        begin
                            // Accumulate I
                            if(c_addr != CLEN)
                                begin
                                    // Advance to next coeff
                                    state <= MAC_STATE_ACCQ;
                                    r_addr <= r_addr - 1;
                                    c_addr <= c_addr + 1;
                                end
                            else
                                begin
                                    // Finish MAC and advance to dump Q
                                    state <= MAC_STATE_DMPQ;
                                    mac_en <= 1'b0;
                                    dump <= 1'b1;
                                end
                        end
                    MAC_STATE_DMPQ:
                        begin
                            // Advance to dump 1
                            state <= MAC_STATE_DMPI;
                        end
                    MAC_STATE_DMPI:
                        begin
                            // Finish dump and return to wait
                            state <= MAC_STATE_WAIT;
                            dump <= 1'b0;
                        end
                    default:
                        begin
                            state <= MAC_STATE_WAIT;
                            mac_en <= 1'b0;
                            dump <= 1'b0;
                        end
                endcase
            end
    end

// Input buffer memory
reg signed [ISZ - 1:0] buf_mem [0:511];
reg signed [ISZ - 1:0] r_data;

always @(posedge clk)
    begin
        if(in_valid)
            buf_mem[w_addr] <= in;

        r_data <= buf_mem[r_addr];
    end

// Coefficient ROM
reg signed [CSZ - 1:0] coeff_rom [0:255];
reg signed [CSZ - 1:0] c_data;

initial
    $readmemh("./src/fir_coeffs.memh", coeff_rom);

always @(posedge clk)
    c_data <= coeff_rom[c_addr];

// MAC
reg         [2:0]                       mac_en_pipe;
reg         [2:0]                       dump_pipe;
reg  signed [CSZ + ISZ - 1:0]           mult;
reg  signed [CSZ + ISZ + AGRW - 1:0]    acc_a;
reg  signed [CSZ + ISZ + AGRW - 1:0]    acc_b;
wire signed [CSZ + ISZ + AGRW - 1:0]    rnd_const = 1 << (CSZ + 1);
wire signed [OSZ - 1:0]                 out_sat;
reg                                     out_valid;
reg  signed [OSZ - 1:0]                 out;

// Saturate accumulator output
saturator #(
    .ISZ(AGRW + OSZ - 2),
    .OSZ(OSZ)
)
out_saturator
(
    .in(acc_b[CSZ + ISZ + AGRW - 1:CSZ + 2]),
    .out(out_sat)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                mac_en_pipe <= 3'b000;
                dump_pipe <= 3'b000;
                mult <= {(CSZ + ISZ){1'b0}};
                acc_a <= rnd_const;
                acc_b <= rnd_const;
                out_valid <= 1'b0;
                out <= {OSZ{1'b0}};
            end
        else
            begin
                // Shift pipes
                mac_en_pipe <= {mac_en_pipe[1:0], mac_en};
                dump_pipe <= {dump_pipe[1:0], dump};

                // Multiplier always runs
                mult <= r_data * c_data;

                // Accumulator
                if(mac_en_pipe[1] == 1'b1)
                    begin
                        // Two-term accumulate
                        acc_a <= acc_b + {{AGRW{mult[CSZ + ISZ - 1]}}, mult};
                        acc_b <= acc_a;
                    end
                else
                    begin
                        // Clear to round constant
                        acc_a <= rnd_const;
                        acc_b <= acc_a;
                    end

                // Output
                if(dump_pipe[1])
                    out <= out_sat;

                out_valid <= dump_pipe[1];
            end
    end

endmodule

