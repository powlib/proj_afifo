// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun 29 00:43:39 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_auto_ss_u_0 -prefix
//               bd_auto_ss_u_0_ bd_auto_ss_u_0_stub.v
// Design      : bd_auto_ss_u_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_bd_auto_ss_u_0,Vivado 2017.4" *)
module bd_auto_ss_u_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tid, s_axis_tdest, m_axis_tvalid, 
  m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tid, m_axis_tdest, 
  m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tlast,s_axis_tid[4:0],s_axis_tdest[4:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tlast,m_axis_tid[4:0],m_axis_tdest[4:0],m_axis_tuser[3:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [4:0]s_axis_tid;
  input [4:0]s_axis_tdest;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [4:0]m_axis_tid;
  output [4:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
endmodule
