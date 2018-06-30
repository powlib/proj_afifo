

module top(reset,sys_clock,usb_uart_rxd,usb_uart_txd);
  
  localparam              W   = 32;
  localparam              D   = 16;
  localparam              EAR = 0;
        
  input      wire         reset;
  input      wire         sys_clock;
  input      wire         usb_uart_rxd;
  output     wire         usb_uart_txd;
             wire [W-1:0] wrdata_0, wrdata_1, wrdata_2;
             wire [W-1:0] rddata_0, rddata_1, rddata_2;
             wire         wrvld_0, wrvld_1, wrvld_2;
             wire         wrrdy_0, wrrdy_1, wrrdy_2;
             wire         rrvld_0, rrvld_1, rrvld_2;
             wire         rrrdy_0, rrrdy_1, rrrdy_2;

  powlib_afifo #(.W(W),.D(D),.EAR(EAR),.ID("AFIFO_SLW_TO_FST")) afifo0_inst (
    .wrdata(wrdata_0),.wrvld(wrvld_0),.wrrdy(wrrdy_0),.wrclk(clk_slw),.wrrst(rst_slw),
    .rddata(rddata_0),.rdvld(rdvld_0),.rdrdy(rdrdy_0),.rdclk(clk_fst),.rdrst(rst_fst));

  powlib_afifo #(.W(W),.D(D),.EAR(EAR),.ID("AFIFO_MED_TO_MED")) afifo1_inst (
    .wrdata(wrdata_1),.wrvld(wrvld_1),.wrrdy(wrrdy_1),.wrclk(clk_med),.wrrst(rst_med),
    .rddata(rddata_1),.rdvld(rdvld_1),.rdrdy(rdrdy_1),.rdclk(clk_med),.rdrst(rst_med));

  powlib_afifo #(.W(W),.D(D),.EAR(EAR),.ID("AFIFO_FST_TO_SLW")) afifo2_inst (
    .wrdata(wrdata_2),.wrvld(wrvld_2),.wrrdy(wrrdy_2),.wrclk(clk_fst),.wrrst(rst_slw),
    .rddata(rddata_2),.rdvld(rdvld_2),.rdrdy(rdrdy_2),.rdclk(clk_fst),.rdrst(rst_slw));  

  bd_wrapper bd_inst (
    .M00_AXIS_0_tdata(wrdata_0),.M00_AXIS_0_tready(wrrdy_0),.M00_AXIS_0_tvalid(wrvld_0),
    .M01_AXIS_0_tdata(wrdata_1),.M01_AXIS_0_tready(wrrdy_1),.M01_AXIS_0_tvalid(wrvld_1),
    .M02_AXIS_0_tdata(wrdata_2),.M02_AXIS_0_tready(wrrdy_2),.M02_AXIS_0_tvalid(wrvld_2),
    .S00_AXIS_0_tdata(rddata_0),.S00_AXIS_0_tready(rdrdy_0),.S00_AXIS_0_tvalid(rdvld_0),
    .S01_AXIS_0_tdata(rddata_1),.S01_AXIS_0_tready(rdrdy_1),.S01_AXIS_0_tvalid(rdvld_1),
    .S02_AXIS_0_tdata(rddata_2),.S02_AXIS_0_tready(rdrdy_2),.S02_AXIS_0_tvalid(rdvld_2),
    .clk_out2(clk_slw),.clk_out3(clk_med),.clk_out4(clk_fst),    
    .rst_clk2(rst_slw),.rst_clk3(rst_med),.rst_clk4(rst_fst),
    .sys_clock(sys_clock),.reset(reset),
    .usb_uart_rxd(usb_uart_rxd),.usb_uart_txd(usb_uart_txd));


endmodule
