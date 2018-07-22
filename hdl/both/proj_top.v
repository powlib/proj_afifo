`timescale 1ns / 1ps

module proj_top(sys_clock,reset,leds);

  parameter LW = 8;
  input wire sys_clock;
  input wire reset;
  output wire [LW-1:0] leds;

  wire clk0, clk1, clk2, clk3;
  wire prst;
  wire [LW-1:0] errflgs;
  assign leds = ~errflgs;

  xilinx_ip_wrapper xil_inst (
    .clk_out1_0(clk0),.clk_out2_0(clk1),.clk_out3_0(clk2),.clk_out4_0(clk3),
    .peripheral_reset_0(prst),
    .reset(reset),.sys_clock(sys_clock));

  proj_lane #(.W(16),.D(8),.X(3),.ID("L0"),.EDBG(0)) l0_inst (
    .genclk(clk0),.genrst(prst),.chkclk(clk3),.chkrst(prst),.errflg0(errflgs[0]));

  proj_lane #(.W(7),.D(16),.X(1),.ID("L1"),.EDBG(0)) l1_inst (
    .genclk(clk0),.genrst(prst),.chkclk(clk3),.chkrst(prst),.errflg0(errflgs[1]));  

  proj_lane #(.W(10),.D(32),.X(3),.ID("L2"),.EDBG(0)) l2_inst (
    .genclk(clk1),.genrst(prst),.chkclk(clk2),.chkrst(prst),.errflg0(errflgs[2]));    

  proj_lane #(.W(68),.D(64),.X(3),.ID("L3"),.EDBG(0)) l3_inst (
    .genclk(clk3),.genrst(prst),.chkclk(clk1),.chkrst(prst),.errflg0(errflgs[3]));    

  proj_lane #(.W(15),.D(4),.X(-2),.ID("L4"),.EDBG(0)) l4_inst (
    .genclk(clk2),.genrst(prst),.chkclk(clk3),.chkrst(prst),.errflg0(errflgs[4]));  

  proj_lane #(.W(23),.D(128),.X(-5),.ID("L5"),.EDBG(0)) l5_inst (
    .genclk(clk1),.genrst(prst),.chkclk(clk0),.chkrst(prst),.errflg0(errflgs[5]));    

  proj_lane #(.W(5),.D(32),.X(-7),.ID("L6"),.EDBG(0)) l6_inst (
    .genclk(clk1),.genrst(prst),.chkclk(clk0),.chkrst(prst),.errflg0(errflgs[6]));   

  proj_lane #(.W(11),.D(32),.X(-3),.ID("L7"),.EDBG(0)) l7_inst (
    .genclk(clk2),.genrst(prst),.chkclk(clk2),.chkrst(prst),.errflg0(errflgs[7]));    

endmodule