`timescale 1ns / 1ps

module test_top();

  localparam LW = 8;
  wire sys_clock;
  wire reset;
  wire [LW-1:0] leds;
  
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(3, dut);
  end  
  
  proj_top #(.LW(LW)) dut (.sys_clock(sys_clock),.reset(reset),.leds(leds));

endmodule