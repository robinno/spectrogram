// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Nov 29 13:21:11 2019
// Host        : LAPTOP-RBTKMPRA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/VHDL_Spectrogram/VHDL_Spectrogram.srcs/sources_1/ip/multiplier/multiplier_sim_netlist.v
// Design      : multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module multiplier
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "8" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "8" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [23:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [23:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "8" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
puHNGCTnbG9W5sC/sjeOKtUUE8QjW9bbrAtQie1cupFSZMchUO7hlMkaiWHMB68rbUQp/nXVJcb8
iOQcrn5Ptw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sOR4MkE30z/iYHGKdVYwl5XxHxhRnTEfTcnkTb2GNSaQVwXVXiQYbV57kdbbMXnDvTqr0wKUiFRJ
nanqBomPa72GmlSxeQcVbWFUdGPjM/ND9RkgtA/AzUBVa+tl/H1BE4eY7nKyq4/HyRLfLhvpINui
iJvzQBix9YlOVYgNT34=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UZ1hRn2jsDW+BiU4Sw0kxaVmHlAJKJVaTh24J1iIAUrxC/Ns9xs9/oNl1wBm4tl4Qp1cCtyQSIve
ZXChJV5rKUAsDmG10V9Ry9qFHEVMCBcZ0D1KWOJ6nbPuiX86FwMa6dzf7yDdn+h9mi00gm6beS3s
EWVXh/qMfN8zvaeckNFyBbz3KBBd4K+mMRvd9lIRw//bQyvJEbX9Qy/UHwXvmecZwxVX6tYqrdQD
eamjYqxqrfyxGwe/T/6/cx5Lx9vrzq6bjgwSU9bGy0oEpQIb5EZvcHJI55EN0B+CglgipJ99RA53
t+10yZIIzFaIE2bTs0wMNFfYi6ZRT4zrCMc48A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nQtbMz1mp1TPlEfnmGLaAaDWUze+U6dUzbQKXBA77BMkWequyeS9Kuu8660Fvl8Uoasb07YBoMOh
AqMWbObeIG6kDMdYUjJEE9ZK8gHDUJI97kqhdEFv9fCxf6DvayMfXzEjlDvAjwyMvS9IglzIYq4x
K79nOt/cr4uFtfxxtQXswsKrgrRLA6ErLyMddybHS6hvRARSsvt8cu5TnEbG4kcA1K35PAZwX/+y
ll7ZKX2KQdnIgznHTNHCSLMdMh49e93HV22Z7gXNU2Xrqn40XQST6iFtluk+DpMh2UklTSThUl8O
cypVSnEF7ZnBat9HIytKyP8egXzvd6ckZbDq8A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ngCuoorgVoSHW5KKs5z/YTV4LPITFbW/RLK/WxvWV9+2Vk1iHoz5GRw23LOmwO3tk2lLkQD17DeQ
FBnsM8S/T+iWt6A/L6fuBGas6bDA6cWbrU6lT0nk7hyMusgRJLtE9Ix3pCaTQCyY8bY1kyWMA9Lu
GhauObqdP1DQ0tTzvHih0xFVwr0jLFY59BRiDB1RPSW0xKEugsj4xYkAYIP+7KFEf+GNyn1hgQfc
ZoyjDlAkhOrassUcvHlfjvSc/xKU3N0VRNYx9FRimgenTo+pQqa+MMOP9B5ElulFs7v1zh1KWg0g
HiZkzZyU/9XEqmAb/b4NGvF3SpVTACWUmRb3uQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TUHHieYJvSUMjJhueNm+L5Op0pePZH/xWUMw20oN1AGTrv+jJRaxxrzp7+D5SAfEAMPvw8+oeb9Y
h7mGBmh61G2RdzrYmeSHGuXj2vFHY+pqNBBje8yEECbYOJ8DHVrETNj7OAA/bi+DmhFsAC4p7j83
U9CdiOJr2GxiwkgJhvE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OuB4RFzcBn718y/PZWLlLMVhXm0KbeaLZbHKM83EsXyF/EpqecxPm147RojJv0LO2afDE2TT4Yw+
z/Vz/Fi0qjCtzJpG3jmMkL7SM/n2KJ+CNKBWI4L8Mi2joM4UcmIjTrgjZOIYqTswCYoa4jDhgsiA
KlAHt6GbzWS1ridMduwCGmtYPysl5TRhFQPgpcXpYmEZhKep8CHNiUO2Qa6RnjKJ44MkQmLLj/qr
2vtKPEkKEwj49aufuP/vIEepw20BSCoOL6qzM9Kx8tTWgF8wqjMriM410qUmVub+Xry80p5MHv3y
siItRewTp1h5c1UqVBhFaE0X43Jv8EcAC2rtGA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uwCLT5pOGGmc5HfT/IoX8WwRuZKNCIUAkoH6GX26S3tQ71PIMYiQ4gHjgUI+G6df4/NZxhWvONMc
59OIsAtkWgdEn5cj+8OQY3tKArLzEQNzYOfPjlkyVbLbUUMelW3vD3dFuq5g0q1wG4Ix6t1SFETs
j4A6eZUJWoOtQ/yPOhfolaJsnjIoFdcw1xg2Zx0zHoX81zVzrW+gsF82HLlqIZvPJ9bcWPez1CCV
NgbJL1nOE6uIg4gCRFB+phXUX0ZO8S4L5kbrmmWWYjlJdKruKbHRYnyeGSFH4i2+Ewz6gbGt8j0Z
HnOGp3gjL1r2EbJa4UjPz1Vj7n+QJ6twqOPKDw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rMe9XGMEOFlBJ6QIuQOeB6I86YDAg7g7GluHeZdETjEPuZu8CjFoOS/uTp3/tfhP+oCh0JCpalcl
jfGN0Xh+f0rGat2Mp+oBYsdEFpk7WCQN15nttpN2yA4fwoQzratty5Bmy7PEFD6JVJ40w4QjOdiq
m7lAA3pI7WWBE5RWZE6IvZv9SkvmURkq34iOdgNj1PCx2yPk8sgObA6YSCKHWZruwUxQtJmimECw
2kpJnaRdeltmV86ks6jpon4CVX2xX48FSwWFgMgxewDP45+vDkZMFm0hjYkG1dkd4t987P5eBqdL
1aumnNLPSH1b1cUmIHaKH5fL4hf9G9BM4Ta59Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfw/Q9vISGT49GzHlf7NLnpWoU4Kt5OQU12qj+QHkoEDAZ778B1A71/DqeylmrjvuvuoIDnRK6GF
ZwOAA+T9pRoVOkD0a3J89ct7TRpdq2aqR8hEp9rfV1edysdJKIgOAjb+bMsuTdBAFS/B7wB8fH2N
4mKcrfBybMdZ4ITSU8iDsrqN81s0iInj+fW4eU4J67bKmdPIXU/5WW8/Dw9zpQOrPV22HJmZi8Mx
10jZKXQlZP9zWikiHyQWBuFwY8cBK/farAdVPMA8k5onWliOEA9C0b2PytqGs76kUd/OqwqKRWBv
cxQpuFIBnu++gZrtrzJWVKKZSvuP+7XnVriXUA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8784)
`pragma protect data_block
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
/bQn1ugM
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
