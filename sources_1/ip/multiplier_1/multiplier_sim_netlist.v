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
