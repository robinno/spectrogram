// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov 29 13:21:07 2019
// Host        : LAPTOP-69E4OMV9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Ing/Master
//               1sem/Digitale/VHDL_Spectrogram/VHDL_Spectrogram.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v}
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_16 U0
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
module mult_gen_0_mult_gen_v12_0_16
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
  mult_gen_0_mult_gen_v12_0_16_viv i_mult
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
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MDRXQ2Db3Oc/+yS6yEvlKC/9ixuNz44MXFkb2ApwuqdNdy5xRqBKKKGeTr/4DwZv/gYXcjutt5z2
4hVA5Cgo4kQ94kDCGPc8fqUjIWwOuG65QAdZT/CQL5LBX2/jKatlglJCUpIFC1egSx/6pT5V3Z5F
EYoRBszBp1Ak79Ce0cXoTOG+WIKm8oA8QDnJuXIXGq5wal5GrsLLtufaajWvK+wD+XBZQAZuqWuQ
maRXwB4BfOT58b7cRTf24y0pULvNW3qhrny0Ue/33pM+UEqq4TUg/yNsGOF/oE8Vr35CGyGLjA1B
1/4XcQOhqWTHxtuVKOO4Q9G9VTMElDE/r2hNww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gFTEbKzaFChDB7FqaRaPsQRUoHVo38TP2Tidi9ot7WT4Qjtulo/pyRl/Gz15uI33/o3oSsAceUH9
/q/VoI2P5A5XZeR8WxiJLrM/qMBiB6UCdrIundW+owCHcUjHYoDLZ4rNtsgsmeKz9DPX7dZrBO/Q
H+s0LvVtpGvSCpg3AP2cnoeEFPC5iTdagBftgLcTMY7no86FByb6aivqUn4Scug6kx4otszLUaFz
SpwzjrJJZe53TDYxlW0OhVfbWagbONU4HIAiEK49DQMIwleCYCN6w71WreDO/IRtxe6KP8OAUsVl
OAzis2XWZTHn/QjtyNzVGoi2XQlI1sdSmlIUhQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8784)
`pragma protect data_block
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
nizW+3gm
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
