// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun 29 00:33:27 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_xbar_2 -prefix
//               bd_xbar_2_ bd_xbar_2_stub.v
// Design      : bd_xbar_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_15_axis_switch,Vivado 2017.4" *)
module bd_xbar_2(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tdata, s_req_suppress, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[2:0],s_axis_tready[2:0],s_axis_tdata[23:0],m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[7:0],s_req_suppress[2:0],s_decode_err[2:0]" */;
  input aclk;
  input aresetn;
  input [2:0]s_axis_tvalid;
  output [2:0]s_axis_tready;
  input [23:0]s_axis_tdata;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [7:0]m_axis_tdata;
  input [2:0]s_req_suppress;
  output [2:0]s_decode_err;
endmodule
