// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  5 10:10:30 2019
// Host        : DESKTOP-VSQA5BK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/VHDL_Spectrogram/VHDL_Spectrogram.srcs/sources_1/ip/DUAL_PORT_RAM/DUAL_PORT_RAM_stub.v
// Design      : DUAL_PORT_RAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module DUAL_PORT_RAM(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[18:0],dina[6:0],clkb,addrb[18:0],doutb[6:0]" */;
  input clka;
  input [0:0]wea;
  input [18:0]addra;
  input [6:0]dina;
  input clkb;
  input [18:0]addrb;
  output [6:0]doutb;
endmodule
