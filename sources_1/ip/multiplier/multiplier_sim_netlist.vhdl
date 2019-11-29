-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Nov 29 13:21:07 2019
-- Host        : LAPTOP-69E4OMV9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top multiplier -prefix
--               multiplier_ mult_gen_0_sim_netlist.vhdl
-- Design      : mult_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DWcsbhhpm5aF+FHHF3jmEMYZOarQGtMyUKLFAe0pFPkQyqaTy/Bpsr1382IGWbJgRUu0J6CtQqo6
WZhTjPkmD1z4CyoaUKkEaoJCyDGB+X3tXSuOHz55TDxkMZicNPSaz0I88hCD33WYvCJU+PW5yvtW
InkB5dmufwd7hfpUqV/0XKY+Pb+rQT3RXiIwcU0sqUrRu0etvcu0StPm7QDivrvX8BOvGQ+TqZCp
YQR30/XYsvz7oCg2ppKnDJWbeghWN4h1i3tuuwpCuUYkvliLoze7ADlAmAGByBrMzhTnx47Poz2B
0Hf/bLc/CuxyVv7ofrbjq9y7igoyFU7d9NfcmA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OSVZkFGC6u/WrU4iTcGTTrEDB94ngVIjwnNDitBqGqjeRoAZaFS1KumsIiBCj7bhNiKXxCDzLxs7
hLjLmEhHSbWm0wdbh+vGjojR+JaHY7Ny1lrs8WmSYvGla5R+Ie2fkL+DLhc7TCWkmQvDzNDR7Vjd
7Jm9Cj9sLOase2BlVEEsiSWnrdGdwyDrEZNq7HcnEcOuMsz+SsnkqqDE43pW0jryBXzQL3BwGeh+
t/wcWeh/xQYZKGM3AX27qeehqyZy3LIpXpfJbDEGdEiSTmfCg4CQh3AKTnYJ9n+XNyACn7B3dwEV
oxpt2LlpfRe8uA3dnYniHvZkpQw6UXkDORa8fw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12480)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multiplier_mult_gen_v12_0_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 23 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of multiplier_mult_gen_v12_0_16 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of multiplier_mult_gen_v12_0_16 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of multiplier_mult_gen_v12_0_16 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of multiplier_mult_gen_v12_0_16 : entity is 8;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of multiplier_mult_gen_v12_0_16 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of multiplier_mult_gen_v12_0_16 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of multiplier_mult_gen_v12_0_16 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of multiplier_mult_gen_v12_0_16 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of multiplier_mult_gen_v12_0_16 : entity is 8;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of multiplier_mult_gen_v12_0_16 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of multiplier_mult_gen_v12_0_16 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multiplier_mult_gen_v12_0_16 : entity is "yes";
end multiplier_mult_gen_v12_0_16;

architecture STRUCTURE of multiplier_mult_gen_v12_0_16 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 24;
  attribute C_B_TYPE of i_mult : label is 1;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 8;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 31;
  attribute C_OUT_LOW of i_mult : label is 8;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.multiplier_mult_gen_v12_0_16_viv
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(7 downto 0) => B(7 downto 0),
      CE => '0',
      CLK => CLK,
      P(23 downto 0) => P(23 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multiplier is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multiplier : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of multiplier : entity is "mult_gen_0,mult_gen_v12_0_16,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of multiplier : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of multiplier : entity is "mult_gen_v12_0_16,Vivado 2019.2";
end multiplier;

architecture STRUCTURE of multiplier is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 8;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 8;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.multiplier_mult_gen_v12_0_16
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(7 downto 0) => B(7 downto 0),
      CE => '1',
      CLK => CLK,
      P(23 downto 0) => P(23 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
