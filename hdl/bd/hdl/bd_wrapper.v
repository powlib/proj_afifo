//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Jul  8 18:10:26 2018
//Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target bd_wrapper.bd
//Design      : bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_wrapper
   (M00_AXIS_0_tdata,
    M00_AXIS_0_tdest,
    M00_AXIS_0_tid,
    M00_AXIS_0_tkeep,
    M00_AXIS_0_tlast,
    M00_AXIS_0_tready,
    M00_AXIS_0_tuser,
    M00_AXIS_0_tvalid,
    M01_AXIS_0_tdata,
    M01_AXIS_0_tdest,
    M01_AXIS_0_tid,
    M01_AXIS_0_tkeep,
    M01_AXIS_0_tlast,
    M01_AXIS_0_tready,
    M01_AXIS_0_tuser,
    M01_AXIS_0_tvalid,
    M02_AXIS_0_tdata,
    M02_AXIS_0_tdest,
    M02_AXIS_0_tid,
    M02_AXIS_0_tkeep,
    M02_AXIS_0_tlast,
    M02_AXIS_0_tready,
    M02_AXIS_0_tuser,
    M02_AXIS_0_tvalid,
    S00_AXIS_0_tdata,
    S00_AXIS_0_tready,
    S00_AXIS_0_tvalid,
    S01_AXIS_0_tdata,
    S01_AXIS_0_tready,
    S01_AXIS_0_tvalid,
    S02_AXIS_0_tdata,
    S02_AXIS_0_tready,
    S02_AXIS_0_tvalid,
    clk_out2,
    clk_out3,
    clk_out4,
    reset,
    rst_clk2,
    rst_clk3,
    rst_clk4,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [31:0]M00_AXIS_0_tdata;
  output [4:0]M00_AXIS_0_tdest;
  output [4:0]M00_AXIS_0_tid;
  output [3:0]M00_AXIS_0_tkeep;
  output M00_AXIS_0_tlast;
  input M00_AXIS_0_tready;
  output [3:0]M00_AXIS_0_tuser;
  output M00_AXIS_0_tvalid;
  output [31:0]M01_AXIS_0_tdata;
  output [4:0]M01_AXIS_0_tdest;
  output [4:0]M01_AXIS_0_tid;
  output [3:0]M01_AXIS_0_tkeep;
  output M01_AXIS_0_tlast;
  input M01_AXIS_0_tready;
  output [3:0]M01_AXIS_0_tuser;
  output M01_AXIS_0_tvalid;
  output [31:0]M02_AXIS_0_tdata;
  output [4:0]M02_AXIS_0_tdest;
  output [4:0]M02_AXIS_0_tid;
  output [3:0]M02_AXIS_0_tkeep;
  output M02_AXIS_0_tlast;
  input M02_AXIS_0_tready;
  output [3:0]M02_AXIS_0_tuser;
  output M02_AXIS_0_tvalid;
  input [31:0]S00_AXIS_0_tdata;
  output S00_AXIS_0_tready;
  input S00_AXIS_0_tvalid;
  input [31:0]S01_AXIS_0_tdata;
  output S01_AXIS_0_tready;
  input S01_AXIS_0_tvalid;
  input [31:0]S02_AXIS_0_tdata;
  output S02_AXIS_0_tready;
  input S02_AXIS_0_tvalid;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input reset;
  output [0:0]rst_clk2;
  output [0:0]rst_clk3;
  output [0:0]rst_clk4;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [31:0]M00_AXIS_0_tdata;
  wire [4:0]M00_AXIS_0_tdest;
  wire [4:0]M00_AXIS_0_tid;
  wire [3:0]M00_AXIS_0_tkeep;
  wire M00_AXIS_0_tlast;
  wire M00_AXIS_0_tready;
  wire [3:0]M00_AXIS_0_tuser;
  wire M00_AXIS_0_tvalid;
  wire [31:0]M01_AXIS_0_tdata;
  wire [4:0]M01_AXIS_0_tdest;
  wire [4:0]M01_AXIS_0_tid;
  wire [3:0]M01_AXIS_0_tkeep;
  wire M01_AXIS_0_tlast;
  wire M01_AXIS_0_tready;
  wire [3:0]M01_AXIS_0_tuser;
  wire M01_AXIS_0_tvalid;
  wire [31:0]M02_AXIS_0_tdata;
  wire [4:0]M02_AXIS_0_tdest;
  wire [4:0]M02_AXIS_0_tid;
  wire [3:0]M02_AXIS_0_tkeep;
  wire M02_AXIS_0_tlast;
  wire M02_AXIS_0_tready;
  wire [3:0]M02_AXIS_0_tuser;
  wire M02_AXIS_0_tvalid;
  wire [31:0]S00_AXIS_0_tdata;
  wire S00_AXIS_0_tready;
  wire S00_AXIS_0_tvalid;
  wire [31:0]S01_AXIS_0_tdata;
  wire S01_AXIS_0_tready;
  wire S01_AXIS_0_tvalid;
  wire [31:0]S02_AXIS_0_tdata;
  wire S02_AXIS_0_tready;
  wire S02_AXIS_0_tvalid;
  wire clk_out2;
  wire clk_out3;
  wire clk_out4;
  wire reset;
  wire [0:0]rst_clk2;
  wire [0:0]rst_clk3;
  wire [0:0]rst_clk4;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  bd bd_i
       (.M00_AXIS_0_tdata(M00_AXIS_0_tdata),
        .M00_AXIS_0_tdest(M00_AXIS_0_tdest),
        .M00_AXIS_0_tid(M00_AXIS_0_tid),
        .M00_AXIS_0_tkeep(M00_AXIS_0_tkeep),
        .M00_AXIS_0_tlast(M00_AXIS_0_tlast),
        .M00_AXIS_0_tready(M00_AXIS_0_tready),
        .M00_AXIS_0_tuser(M00_AXIS_0_tuser),
        .M00_AXIS_0_tvalid(M00_AXIS_0_tvalid),
        .M01_AXIS_0_tdata(M01_AXIS_0_tdata),
        .M01_AXIS_0_tdest(M01_AXIS_0_tdest),
        .M01_AXIS_0_tid(M01_AXIS_0_tid),
        .M01_AXIS_0_tkeep(M01_AXIS_0_tkeep),
        .M01_AXIS_0_tlast(M01_AXIS_0_tlast),
        .M01_AXIS_0_tready(M01_AXIS_0_tready),
        .M01_AXIS_0_tuser(M01_AXIS_0_tuser),
        .M01_AXIS_0_tvalid(M01_AXIS_0_tvalid),
        .M02_AXIS_0_tdata(M02_AXIS_0_tdata),
        .M02_AXIS_0_tdest(M02_AXIS_0_tdest),
        .M02_AXIS_0_tid(M02_AXIS_0_tid),
        .M02_AXIS_0_tkeep(M02_AXIS_0_tkeep),
        .M02_AXIS_0_tlast(M02_AXIS_0_tlast),
        .M02_AXIS_0_tready(M02_AXIS_0_tready),
        .M02_AXIS_0_tuser(M02_AXIS_0_tuser),
        .M02_AXIS_0_tvalid(M02_AXIS_0_tvalid),
        .S00_AXIS_0_tdata(S00_AXIS_0_tdata),
        .S00_AXIS_0_tready(S00_AXIS_0_tready),
        .S00_AXIS_0_tvalid(S00_AXIS_0_tvalid),
        .S01_AXIS_0_tdata(S01_AXIS_0_tdata),
        .S01_AXIS_0_tready(S01_AXIS_0_tready),
        .S01_AXIS_0_tvalid(S01_AXIS_0_tvalid),
        .S02_AXIS_0_tdata(S02_AXIS_0_tdata),
        .S02_AXIS_0_tready(S02_AXIS_0_tready),
        .S02_AXIS_0_tvalid(S02_AXIS_0_tvalid),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3),
        .clk_out4(clk_out4),
        .reset(reset),
        .rst_clk2(rst_clk2),
        .rst_clk3(rst_clk3),
        .rst_clk4(rst_clk4),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
