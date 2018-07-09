-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun Jul  8 18:15:21 2018
-- Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub /workspace/git_ws/proj_afifo/hdl/bd/ip/bd_xbar_0/bd_xbar_0_stub.vhdl
-- Design      : bd_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end bd_xbar_0;

architecture stub of bd_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[17:0],s_axi_awaddr[191:0],s_axi_awlen[47:0],s_axi_awsize[17:0],s_axi_awburst[11:0],s_axi_awlock[5:0],s_axi_awcache[23:0],s_axi_awprot[17:0],s_axi_awqos[23:0],s_axi_awuser[23:0],s_axi_awvalid[5:0],s_axi_awready[5:0],s_axi_wdata[191:0],s_axi_wstrb[23:0],s_axi_wlast[5:0],s_axi_wvalid[5:0],s_axi_wready[5:0],s_axi_bid[17:0],s_axi_bresp[11:0],s_axi_bvalid[5:0],s_axi_bready[5:0],s_axi_arid[17:0],s_axi_araddr[191:0],s_axi_arlen[47:0],s_axi_arsize[17:0],s_axi_arburst[11:0],s_axi_arlock[5:0],s_axi_arcache[23:0],s_axi_arprot[17:0],s_axi_arqos[23:0],s_axi_aruser[23:0],s_axi_arvalid[5:0],s_axi_arready[5:0],s_axi_rid[17:0],s_axi_rdata[191:0],s_axi_rresp[11:0],s_axi_rlast[5:0],s_axi_rvalid[5:0],s_axi_rready[5:0],m_axi_awid[11:0],m_axi_awaddr[127:0],m_axi_awlen[31:0],m_axi_awsize[11:0],m_axi_awburst[7:0],m_axi_awlock[3:0],m_axi_awcache[15:0],m_axi_awprot[11:0],m_axi_awregion[15:0],m_axi_awqos[15:0],m_axi_awuser[15:0],m_axi_awvalid[3:0],m_axi_awready[3:0],m_axi_wdata[127:0],m_axi_wstrb[15:0],m_axi_wlast[3:0],m_axi_wvalid[3:0],m_axi_wready[3:0],m_axi_bid[11:0],m_axi_bresp[7:0],m_axi_bvalid[3:0],m_axi_bready[3:0],m_axi_arid[11:0],m_axi_araddr[127:0],m_axi_arlen[31:0],m_axi_arsize[11:0],m_axi_arburst[7:0],m_axi_arlock[3:0],m_axi_arcache[15:0],m_axi_arprot[11:0],m_axi_arregion[15:0],m_axi_arqos[15:0],m_axi_aruser[15:0],m_axi_arvalid[3:0],m_axi_arready[3:0],m_axi_rid[11:0],m_axi_rdata[127:0],m_axi_rresp[7:0],m_axi_rlast[3:0],m_axi_rvalid[3:0],m_axi_rready[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_16_axi_crossbar,Vivado 2017.4";
begin
end;
