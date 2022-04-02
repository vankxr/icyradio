// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Jan 31 13:09:06 2022
// Host        : xubuntu-dev running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_bram_0/icyradio_axi_bram_ctrl_0_bram_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
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
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
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
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  icyradio_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52896)
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
