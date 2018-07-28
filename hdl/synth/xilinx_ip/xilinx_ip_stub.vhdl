-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat Jul 28 10:28:34 2018
-- Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub /workspace/git_ws/proj_afifo/hdl/synth/xilinx_ip/xilinx_ip_stub.vhdl
-- Design      : xilinx_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xilinx_ip is
  Port ( 
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    clk_out3_0 : out STD_LOGIC;
    clk_out4_0 : out STD_LOGIC;
    peripheral_reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );

end xilinx_ip;

architecture stub of xilinx_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1_0,clk_out2_0,clk_out3_0,clk_out4_0,peripheral_reset_0[0:0],reset,sys_clock";
begin
end;
