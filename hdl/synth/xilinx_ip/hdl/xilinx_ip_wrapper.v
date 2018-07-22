//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Jul 22 11:43:08 2018
//Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target xilinx_ip_wrapper.bd
//Design      : xilinx_ip_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xilinx_ip_wrapper
   (clk_out1_0,
    clk_out2_0,
    clk_out3_0,
    clk_out4_0,
    peripheral_reset_0,
    reset,
    sys_clock);
  output clk_out1_0;
  output clk_out2_0;
  output clk_out3_0;
  output clk_out4_0;
  output [0:0]peripheral_reset_0;
  input reset;
  input sys_clock;

  wire clk_out1_0;
  wire clk_out2_0;
  wire clk_out3_0;
  wire clk_out4_0;
  wire [0:0]peripheral_reset_0;
  wire reset;
  wire sys_clock;

  xilinx_ip xilinx_ip_i
       (.clk_out1_0(clk_out1_0),
        .clk_out2_0(clk_out2_0),
        .clk_out3_0(clk_out3_0),
        .clk_out4_0(clk_out4_0),
        .peripheral_reset_0(peripheral_reset_0),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
