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
localparam PSZ = 5;    // Pointer size
localparam CSZ = 16;   // Coefficient data word size
localparam CLEN = 32;  // Coefficient data size
localparam AGRW = 3;   // Accumulator growth

reg [PSZ:0]     w_addr;
reg [PSZ:0]     r_addr;
reg [PSZ - 1:0] c_addr;
reg [2:0]       state;
reg             mac_en;
reg             dump_en;

// Write address generator
always @(posedge clk)
    begin
        if(reset)
            w_addr <= {(PSZ + 1){1'b0}};
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

always @(posedge clk)
    begin
        if(reset)
            begin
                state <= MAC_STATE_WAIT;
                mac_en <= 1'b0;
                dump_en <= 1'b0;
                r_addr <= {(PSZ + 1){1'b0}};
                c_addr <= {PSZ{1'b0}};
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
                                    c_addr <= {PSZ{1'b0}};
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
                            if(c_addr != (CLEN - 1))
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
                                    dump_en <= 1'b1;
                                end
                        end
                    MAC_STATE_DMPQ:
                        begin
                            // Advance to dump I
                            state <= MAC_STATE_DMPI;
                        end
                    MAC_STATE_DMPI:
                        begin
                            // Finish dump and return to wait
                            state <= MAC_STATE_WAIT;
                            dump_en <= 1'b0;
                        end
                    default:
                        begin
                            state <= MAC_STATE_WAIT;
                            mac_en <= 1'b0;
                            dump_en <= 1'b0;
                        end
                endcase
            end
    end

// Input buffer memory
reg signed [ISZ - 1:0] buffer_ram [0:(2 * CLEN) - 1];
reg signed [ISZ - 1:0] r_data;

always @(posedge clk)
    begin
        if(in_valid)
            buffer_ram[w_addr] <= in;

        r_data <= buffer_ram[r_addr];
    end

// Coefficient ROM
reg signed [CSZ - 1:0] coeff_rom [0:CLEN - 1];
reg signed [CSZ - 1:0] c_data;

initial
    $readmemh("./src/fir_coeffs.memh", coeff_rom);

always @(posedge clk)
    c_data <= coeff_rom[c_addr];

// MAC
reg         [1:0]                       mac_en_dly;
reg         [1:0]                       dump_en_dly;
reg  signed [CSZ + ISZ - 1:0]           mult;
reg  signed [CSZ + ISZ + AGRW - 1:0]    acc [0:1];
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
    .in(acc[1][CSZ + ISZ + AGRW - 1:CSZ + 2]),
    .out(out_sat)
);

always @(posedge clk)
    begin
        if(reset)
            begin
                mac_en_dly <= 2'b00;
                dump_en_dly <= 2'b00;
                mult <= {(CSZ + ISZ){1'b0}};
                acc[0] <= rnd_const;
                acc[1] <= rnd_const;
                out_valid <= 1'b0;
                out <= {OSZ{1'b0}};
            end
        else
            begin
                // Shift delay registers
                mac_en_dly <= {mac_en_dly[0], mac_en};
                dump_en_dly <= {dump_en_dly[0], dump_en};

                // Multiplier always runs
                mult <= r_data * c_data;

                // Accumulator
                if(mac_en_dly[1] == 1'b1)
                    begin
                        // Delayed accumulator
                        acc[0] <= acc[1] + {{AGRW{mult[CSZ + ISZ - 1]}}, mult};
                        acc[1] <= acc[0];
                    end
                else
                    begin
                        // Clear accumulator
                        acc[0] <= rnd_const;
                        acc[1] <= acc[0];
                    end

                // Output
                if(dump_en_dly[1])
                    out <= out_sat;

                out_valid <= dump_en_dly[1];
            end
    end

endmodule

