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
