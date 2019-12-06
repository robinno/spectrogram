// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Dec  6 13:10:51 2019
// Host        : LAPTOP-RBTKMPRA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/VHDL_Spectrogram/VHDL_Spectrogram.srcs/sources_1/ip/FIFO_1/FIFO_stub.v
// Design      : FIFO
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module FIFO(clka, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[10:0],dina[23:0],clkb,enb,addrb[10:0],doutb[23:0]" */;
  input clka;
  input [0:0]wea;
  input [10:0]addra;
  input [23:0]dina;
  input clkb;
  input enb;
  input [10:0]addrb;
  output [23:0]doutb;
endmodule