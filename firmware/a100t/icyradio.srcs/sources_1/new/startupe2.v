`timescale 1ns / 1ps

module startupe2
(
   output cfg_clk,
   output cfg_mclk,
   output eos,
   output preq,
   input pack,
   input usrcclk,
   input usrcclk_oen,
   input usrdone,
   input usrdone_oen
);

STARTUPE2 #(
   .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
   .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation.
)
STARTUPE2_inst
(
   .CFGCLK(cfg_clk),          // 1-bit output: Configuration main clock output
   .CFGMCLK(cfg_mclk),        // 1-bit output: Configuration internal oscillator clock output
   .EOS(eos),                 // 1-bit output: Active high output signal indicating the End Of Startup.
   .PREQ(preq),               // 1-bit output: PROGRAM request to fabric output
   .CLK(1'b0),                // 1-bit input: User start-up clock input
   .GSR(1'b0),                // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   .GTS(1'b0),                // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   .KEYCLEARB(1'b0),          // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
   .PACK(pack),               // 1-bit input: PROGRAM acknowledge input
   .USRCCLKO(usrcclk),        // 1-bit input: User CCLK input
   .USRCCLKTS(usrcclk_oen),   // 1-bit input: User CCLK 3-state enable input
   .USRDONEO(usrdone),        // 1-bit input: User DONE pin output control
   .USRDONETS(usrdone_oen)    // 1-bit input: User DONE 3-state enable output
);

endmodule