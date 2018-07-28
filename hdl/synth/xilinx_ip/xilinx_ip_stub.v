// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Jul 28 10:28:33 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub /workspace/git_ws/proj_afifo/hdl/synth/xilinx_ip/xilinx_ip_stub.v
// Design      : xilinx_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xilinx_ip(clk_out1_0, clk_out2_0, clk_out3_0, clk_out4_0, 
  peripheral_reset_0, reset, sys_clock)
/* synthesis syn_black_box black_box_pad_pin="clk_out1_0,clk_out2_0,clk_out3_0,clk_out4_0,peripheral_reset_0[0:0],reset,sys_clock" */;
  output clk_out1_0;
  output clk_out2_0;
  output clk_out3_0;
  output clk_out4_0;
  output [0:0]peripheral_reset_0;
  input reset;
  input sys_clock;
endmodule
