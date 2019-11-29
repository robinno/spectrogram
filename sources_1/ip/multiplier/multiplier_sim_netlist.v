// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov 29 13:21:07 2019
// Host        : LAPTOP-69E4OMV9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top multiplier -prefix
//               multiplier_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
NTPKAzqVDAvSjEqH9A7UJlEEXMf+J5k/6EbaeMlrbr2/+ngDY1zE7TqqY90yicrKGhsDYC9AfseQ
HtmEkSgEa+ifc+uDhHYhOEPqymdMWtzLbFe8G5PpF9FkbVYphKAu9kiEzEsQrtp6OPxJwxWrSXIc
8c00o81wRNi8kMkvc4gNE+oD3Y12HnDc4x3XVI9QRvRHox5AgIxkxoGZtFz/lfwKYGGHonnbiXkT
W9Vxgc29P/Tzm0N2vDh5/vpuXNmCLZh7Tcn77dKFUhMLg4Exz+umCABnyZGlLOC0TatyMnxyiUPr
7AD7yRNp5pOtbvbZSOJJUSPmPYBvSP0UbgfE4Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CMitq3ujnbbc0qxLwsei/RsnyeCRcry9LGrmv+CX7XOPofJ1Sxtc6vNHJ9oVNYH77Zt4TDe6XutZ
e8LAmCICiQZStR4ZaNKVE5s/U3S4ASYOULaemI7ZDG4XOFGhJEEdt15btNPXDf3kBLh/ZqPgU8XZ
QS5zSnkkhg1s48NzKm0iUnl6NW378bRh5/69PV+2ProtVMVOQtMzzTTrcZ6dbeLzJdLjm2JHmFaw
pH56u/uiC/zsLh0Upqt3fgSS3y2cAi5J2P05t4P6JxaFHB85CIlKvPIPP3d13kjc1mTRFlFS8/tb
LvI+uk+AOiV/j9TOwQ7Rbvww6vqjgg35bNBeUw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8800)
`pragma protect data_block
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
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
