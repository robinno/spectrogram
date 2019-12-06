// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Dec  5 12:07:02 2019
// Host        : LAPTOP-RBTKMPRA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top clk_wiz_0 -prefix
//               clk_wiz_0_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_96MHz, clk_VGA, clk_FFT, clk_audio, sys_clk)
/* synthesis syn_black_box black_box_pad_pin="clk_96MHz,clk_VGA,clk_FFT,clk_audio,sys_clk" */;
  output clk_96MHz;
  output clk_VGA;
  output clk_FFT;
  output clk_audio;
  input sys_clk;
endmodule
