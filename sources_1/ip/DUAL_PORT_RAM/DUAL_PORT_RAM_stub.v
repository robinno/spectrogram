// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Dec  5 12:09:00 2019
// Host        : LAPTOP-RBTKMPRA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top DUAL_PORT_RAM -prefix
//               DUAL_PORT_RAM_ DUAL_PORT_RAM_stub.v
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
