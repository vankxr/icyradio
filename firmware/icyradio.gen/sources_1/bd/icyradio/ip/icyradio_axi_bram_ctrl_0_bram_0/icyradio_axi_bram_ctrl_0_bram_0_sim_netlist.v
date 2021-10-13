// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct 13 13:51:47 2021
// Host        : jsilva-kde running 64-bit KDE neon User Edition 5.22
// Command     : write_verilog -force -mode funcsim
//               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_bram_0/icyradio_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : icyradio_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  icyradio_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33792)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
