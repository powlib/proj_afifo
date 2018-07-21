module proj_lane(genclk,genrst,chkclk,chkrst,errcntr);

  parameter               W        = 16;
  parameter               EW       = 8;
  parameter               X        = 1;
  input     wire          genclk;
  input     wire          genrst;
  input     wire          chkclk;
  input     wire          chkrst;
  output    wire [EW-1:0] errcntr;
            wire          genadv;
            wire          genvld;
            wire          genrdy;
            wire          chkrdy;
            wire          chkvld;
            wire          chkvld0;
            wire          cmpadv;
            wire          erradv;
            wire [W-1:0]  gencntr;
            wire [W-1:0]  chkcntr;
            wire [W-1:0]  chkcntr0;
            wire [W-1:0]  cmpcntr;  

  assign                  genadv   = genrdy;
  assign                  chkrdy   = chkvld;
  assign                  cmpadv   = chkvld0;
  assign                  erradv   = (cmpcntr!=chkcntr0) && (chkvld0==1);
  
  powlib_cntr #(.W(W),.X(X),.ELD(0)) gencntr_inst (
    .cntr(gencntr),
    .adv(genadv),.clr(0),
    .clk(genclk),.rst(genrst));

  powlib_flipflop genvld_inst (
    .d(genadv),.clk(genclk),.rst(genrst),.q(genvld));

  powlib_afifo #(.W(W),.D(D),.EDBG(EDBG),.ID({ID,"_FIFO"})) afifo_inst (
    .wrdata(gencntr),.wrvld(genvld),.wrrdy(genrdy),
    .rddata(chkcntr),.rdvld(chkvld),.rdrdy(chkrdy),
    .wrclk(genclk),.wrrst(genrst),
    .rdclk(chkclk),.rdrst(chkrst));

  powlib_flipflop #(.W(W)) chkcntr0_inst (
    .d(chkcntr),.clk(chkclk),.rst(chkrst),.q(chkcntr0));  

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

endmodule