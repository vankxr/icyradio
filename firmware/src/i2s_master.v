module i2s_master
(
    input              reset,          // Reset
    input              i2s_bclk,       // I2S Bit Clock
    output             i2s_lrclk,      // I2S Word Select
    output             i2s_sdout,      // I2S Data Out
    input              i2s_sdin,       // I2S Data In
    output [DSZ - 1:0] left_data_out,  // Left data paralellized from SDIN
    output [DSZ - 1:0] right_data_out, // Right data paralellized from SDIN
    input  [DSZ - 1:0] left_data_in,   // Left data to serialize on SDOUT
    input  [DSZ - 1:0] right_data_in   // Right data to serialize on SDOUT
);

parameter DSZ = 16; // Channel word size (LRCLK = BCLK / (2 * DSZ))

reg  [3:0]          bit_cnt;               // Bit counter
reg  [DSZ - 1:0]    sdin_shift;            // SDIN shift register
reg  [DSZ:0]        sdout_shift;           // SDOUT shift register
reg  [DSZ - 1:0]    left_data_out;         // Left data from SDIN
reg  [DSZ - 1:0]    right_data_out;        // Right data from SDIN
reg                 i2s_lrclk;             // Left/Right toggle

assign i2s_sdout = sdout_shift[DSZ]; // SDOUT is the MSB of the shift register

// Data sample on rising edge
always @(posedge i2s_bclk)
    begin
        if(reset)
            begin
                bit_cnt <= (DSZ - 2);
                sdin_shift <= {DSZ{1'b0}};
            end
        else
            begin
                bit_cnt <= bit_cnt + 1;

                if(bit_cnt == (DSZ - 1))
                    begin
                        if(i2s_lrclk)
                            left_data_out <= {sdin_shift[DSZ - 2:0], i2s_sdin};
                        else
                            right_data_out <= {sdin_shift[DSZ - 2:0], i2s_sdin};
                    end
                else
                    sdin_shift <= {sdin_shift[DSZ - 2:0], i2s_sdin}; // Shift data in
            end
    end

// Data setup on falling edge
always @(negedge i2s_bclk)
    begin
        if(reset)
            begin
                i2s_lrclk <= 1'b1;
                sdout_shift <= {DSZ{1'b0}};
            end
        else
            begin
                if(bit_cnt == (DSZ - 1)) // Load shift register with next channel data and toggle LRCLK
                    begin
                        if(i2s_lrclk)
                            sdout_shift <= {sdout_shift[DSZ - 1], left_data_in};
                        else
                            sdout_shift <= {sdout_shift[DSZ - 1], right_data_in};

                        i2s_lrclk <= !i2s_lrclk;
                    end
                else
                    sdout_shift <= {sdout_shift[DSZ - 1:0], 1'b0}; // Shift data out
            end
    end
endmodule