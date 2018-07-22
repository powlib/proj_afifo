`timescale 1ns / 1ps

module proj_lane(genclk,genrst,chkclk,chkrst,errcntr0,errflg0);

  parameter               W        = 16;
  parameter               D        = 8;
  parameter               EW       = 8;
  parameter               X        = 1;
  parameter               ID       = "LANE";
  parameter               EDBG     = 0;
  input     wire          genclk;
  input     wire          genrst;
  input     wire          chkclk;
  input     wire          chkrst;
  output    wire [EW-1:0] errcntr0;
  output    wire          errflg0;
            wire          genadv;
            wire          genvld0;
            wire          genrdy;
            wire          chkrdy;
            wire          chkvld;
            wire          chkvld0;
            wire          cmpadv;
            wire          erradv;
            wire [W-1:0]  gencntr;
            wire [W-1:0]  gencntr0;
            wire [W-1:0]  chkcntr;
            wire [W-1:0]  chkcntr0;
            wire [W-1:0]  errcntr;
            wire [W-1:0]  cmpcntr;  

  assign                  genadv   = genrdy;
  assign                  chkrdy   = chkvld;
  assign                  cmpadv   = chkvld0;
  assign                  erradv   = (cmpcntr!=chkcntr0) && (chkvld0==1);
  
  powlib_cntr #(.W(W),.X(X),.ELD(0)) gencntr_inst (
    .cntr(gencntr),
    .adv(genadv),.clr(1'd0),
    .clk(genclk),.rst(genrst));

  powlib_flipflop #(.EVLD(1)) genvld0_inst (
    .d(genadv),.clk(genclk),.rst(genrst),.q(genvld0),.vld(genrdy));

  powlib_flipflop #(.W(W),.EVLD(1)) gencntr0_inst (
    .d(gencntr),.clk(genclk),.rst(1'd0),.q(gencntr0),.vld(genrdy));  

  powlib_afifo #(.W(W),.D(D),.EDBG(EDBG),.ID({ID,"_FIFO"})) afifo_inst (
    .wrdata(gencntr0),.wrvld(genvld0),.wrrdy(genrdy),
    .rddata(chkcntr),.rdvld(chkvld),.rdrdy(chkrdy),
    .wrclk(genclk),.wrrst(genrst),
    .rdclk(chkclk),.rdrst(chkrst));

  powlib_flipflop #(.W(W)) chkcntr0_inst (
    .d(chkcntr),.clk(chkclk),.rst(0),.q(chkcntr0));  

  powlib_flipflop chkvld0_inst (
    .d(chkvld),.clk(chkclk),.rst(chkrst),.q(chkvld0));  

  powlib_cntr #(.W(W),.X(X),.ELD(0)) cmpcntr_inst (
    .cntr(cmpcntr),
    .adv(cmpadv),.clr(0),
    .clk(chkclk),.rst(chkrst));

  powlib_cntr #(.W(EW),.X(1),.ELD(0)) errcntr_inst (
    .cntr(errcntr),
    .adv(erradv),.clr(0),
    .clk(chkclk),.rst(chkrst)); 

  powlib_flipflop #(.W(EW)) errcntr0_inst (
    .d(errcntr),.clk(chkclk),.rst(0),.q(errcntr0));    

  powlib_flipflop errflg0_inst (
    .d(errcntr!=0),.clk(chkclk),.rst(chkrst),.q(errflg0)); 

endmodule