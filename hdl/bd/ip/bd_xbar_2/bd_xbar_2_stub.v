// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jul  9 00:08:27 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub /workspace/git_ws/proj_afifo/hdl/bd/ip/bd_xbar_2/bd_xbar_2_stub.v
// Design      : bd_xbar_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_15_axis_switch,Vivado 2017.4" *)
module bd_xbar_2(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, 
  s_req_suppress, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[2:0],s_axis_tready[2:0],s_axis_tdata[95:0],s_axis_tlast[2:0],m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[31:0],m_axis_tlast[0:0],s_req_suppress[2:0],s_decode_err[2:0]" */;
  input aclk;
  input aresetn;
  input [2:0]s_axis_tvalid;
  output [2:0]s_axis_tready;
  input [95:0]s_axis_tdata;
  input [2:0]s_axis_tlast;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  input [2:0]s_req_suppress;
  output [2:0]s_decode_err;
endmodule
