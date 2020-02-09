module spi_slave
(
    input              clk,       // Clock
    input              reset,     // Reset
    input              spi_sck,   // SPI Serial Clock
    input              spi_mosi,  // SPI Master Out Slave In
    output             spi_miso,  // SPI Master In Slave Out
    input              spi_ncs,   // SPI Chip Select (Active low)
    output [ASZ - 1:0] addr,      // Address
    output [DSZ - 1:0] data_out,  // Data paralellized from MOSI
    input  [DSZ - 1:0] data_in,   // Data to serialize on MISO
    output             wr_en,     // Write enable
    output             rd_en      // Read enable
);

parameter ASZ = 7; // 2 ^ 7 = 128
parameter DSZ = 32;

reg  [5:0]          bit_cnt;               // Bit counter
reg  [DSZ - 1:0]    mosi_shift;            // MOSI shift register
reg  [DSZ - 1:0]    miso_shift;            // MISO shift register
reg                 rnw;                   // Data direction (1 = read, 0 = write)
reg                 eoa;                   // End of address flag
reg                 eot;                   // End of transfer flag
reg  [ASZ - 1:0]    addr;                  // Address
reg  [DSZ - 1:0]    data_out;              // Data from MOSI
reg                 rd_en;                 // Read strobe
reg                 wr_en;                 // Write strobe
wire                rst = reset | spi_ncs; // Reset line combined with CS

assign spi_miso = miso_shift[DSZ - 1]; // MISO is the MSB of the shift register

// Data sample on rising edge (SPI Mode 0 and 3)
always @(posedge spi_sck or posedge rst)
    begin
        if(rst)
            begin
                bit_cnt <= 6'b000000;
                mosi_shift <= {DSZ{1'b0}};
                eoa <= 1'b0;
                rnw <= 1'b1;
            end
        else
            begin
                bit_cnt <= bit_cnt + 1;

                mosi_shift <= {mosi_shift[DSZ - 2:0], spi_mosi}; // Shift data in

                if(bit_cnt == 0) // First bit is RnW bit (data direction)
                    begin
                        rnw <= spi_mosi;
                        eot <= 1'b0; // Only reset EOT flag here so it has time to sync to the high-speed clock
                    end

                if(bit_cnt == ASZ) // Next 7 bits are address
                    begin
                        addr <= {mosi_shift[ASZ - 2:0], spi_mosi};

                        eoa <= 1'b1;
                    end

                if(bit_cnt == (ASZ + DSZ))
                    begin
                        data_out <= {mosi_shift[DSZ - 2:0], spi_mosi};

                        eot <= 1'b1;
                    end
            end
    end

// Data setup on falling edge (SPI Mode 0 and 3)
always @(negedge spi_sck or posedge rst)
    begin
        if(rst)
            begin
                miso_shift <= {DSZ{1'b0}};
            end
        else
            begin
                if((bit_cnt == (ASZ + 1)) && rnw)
                    miso_shift <= data_in; // Load shift register with outgoing data
                else
                    miso_shift <= {miso_shift[DSZ - 2:0], miso_shift[DSZ - 1]};
            end
    end

// Edge detection on end-of-address and end-of-transfer signals to generate synchronous read and write enables
reg eoa_ed; // EOA edge detector
reg eot_ed; // EOT edge detector

always @(posedge clk)
    begin
        if(rst)
            begin
                eoa_ed <= 1'b0;
                eot_ed <= 1'b0;

                rd_en <= 1'b0;
                wr_en <= 1'b0;
            end
        else
            begin
                eoa_ed <= eoa;
                eot_ed <= eot;

                rd_en <= ~eoa_ed & eoa & rnw;
                wr_en <= ~eot_ed & eot & ~rnw;
            end
    end
endmodule