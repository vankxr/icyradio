// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Sep 25 13:08:14 2021
// Host        : jsilva-kubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim {/media/joao/SSD
//               Data/Development/icyradio/firmware/icyradio/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_bram_0/icyradio_axi_bram_ctrl_0_bram_0_sim_netlist.v}
// Design      : icyradio_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

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
