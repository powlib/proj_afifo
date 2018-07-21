`timescale 1ns / 1ps

module test_lane();

  localparam          W    = 16;
  localparam          EW   = 8;
  localparam          D    = 8;
  localparam          EDBG = 0;
  localparam          X    = 2;
  localparam          ID   = "LANE";
  wire                genclk;
  wire                genrst;
  wire                chkclk;
  wire                chkrst;
  wire       [EW-1:0] errcntr;  
  
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(3, dut);
  end  
  
  proj_lane #(.W(W),.D(D),.EW(EW),.EDBG(EDBG),.X(X),.ID(ID)) dut (
    .genclk(genclk),
    .genrst(genrst),
    .chkclk(chkclk),
    .chkrst(chkrst),
    .errcntr(errcntr));

endmodule