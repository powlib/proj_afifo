-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Jun 29 00:52:34 2018
-- Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_auto_cc_0 -prefix
--               bd_auto_cc_0_ bd_auto_cc_0_sim_netlist.vhdl
-- Design      : bd_auto_cc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio is
  port (
    \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC
  );
end bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio;

architecture STRUCTURE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio is
  signal \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\ : STD_LOGIC;
  signal \gen_sample_cycle.sample_cycle_d_reg\ : STD_LOGIC;
  signal posedge_finder_first : STD_LOGIC;
  signal posedge_finder_second : STD_LOGIC;
  signal slow_aclk_div2 : STD_LOGIC;
  signal slow_aclk_div20 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sample_cycle.slow_aclk_div2_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sample_cycle_d0 : label is "soft_lutpair0";
begin
\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\,
      Q => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      R => '0'
    );
\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sample_cycle.sample_cycle_d_reg\,
      Q => \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\,
      R => '0'
    );
\gen_sample_cycle.posedge_finder_first_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => slow_aclk_div2,
      Q => posedge_finder_first,
      R => '0'
    );
\gen_sample_cycle.posedge_finder_second_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => slow_aclk_div20,
      Q => posedge_finder_second,
      R => '0'
    );
\gen_sample_cycle.slow_aclk_div2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slow_aclk_div2,
      O => slow_aclk_div20
    );
\gen_sample_cycle.slow_aclk_div2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => slow_aclk_div20,
      Q => slow_aclk_div2,
      R => '0'
    );
sample_cycle_d0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => posedge_finder_second,
      I1 => slow_aclk_div2,
      I2 => posedge_finder_first,
      O => \gen_sample_cycle.sample_cycle_d_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 50 downto 0 );
    \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ : in STD_LOGIC
  );
end bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter;

architecture STRUCTURE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter is
  signal \gen_sync_clock_converter.load_payload\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_storage\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_areset_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_storage_r\ : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal \gen_sync_clock_converter.m_valid_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_areset_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_areset_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_ready_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_sync_clock_converter.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 50 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sync_clock_converter.state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_sync_clock_converter.state[1]_i_1\ : label is "soft_lutpair1";
begin
\gen_sync_clock_converter.m_areset_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.s_areset_r_i_1_n_0\,
      Q => \gen_sync_clock_converter.m_areset_r\,
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(0),
      I1 => D(0),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(0)
    );
\gen_sync_clock_converter.m_payload_r[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(10),
      I1 => D(10),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(10)
    );
\gen_sync_clock_converter.m_payload_r[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(11),
      I1 => D(11),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(11)
    );
\gen_sync_clock_converter.m_payload_r[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(12),
      I1 => D(12),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(12)
    );
\gen_sync_clock_converter.m_payload_r[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(13),
      I1 => D(13),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(13)
    );
\gen_sync_clock_converter.m_payload_r[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(14),
      I1 => D(14),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(14)
    );
\gen_sync_clock_converter.m_payload_r[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(15),
      I1 => D(15),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(15)
    );
\gen_sync_clock_converter.m_payload_r[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(16),
      I1 => D(16),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(16)
    );
\gen_sync_clock_converter.m_payload_r[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(17),
      I1 => D(17),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(17)
    );
\gen_sync_clock_converter.m_payload_r[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(18),
      I1 => D(18),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(18)
    );
\gen_sync_clock_converter.m_payload_r[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(19),
      I1 => D(19),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(19)
    );
\gen_sync_clock_converter.m_payload_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(1),
      I1 => D(1),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(1)
    );
\gen_sync_clock_converter.m_payload_r[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(20),
      I1 => D(20),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(20)
    );
\gen_sync_clock_converter.m_payload_r[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(21),
      I1 => D(21),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(21)
    );
\gen_sync_clock_converter.m_payload_r[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(22),
      I1 => D(22),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(22)
    );
\gen_sync_clock_converter.m_payload_r[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(23),
      I1 => D(23),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(23)
    );
\gen_sync_clock_converter.m_payload_r[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(24),
      I1 => D(24),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(24)
    );
\gen_sync_clock_converter.m_payload_r[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(25),
      I1 => D(25),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(25)
    );
\gen_sync_clock_converter.m_payload_r[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(26),
      I1 => D(26),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(26)
    );
\gen_sync_clock_converter.m_payload_r[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(27),
      I1 => D(27),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(27)
    );
\gen_sync_clock_converter.m_payload_r[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(28),
      I1 => D(28),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(28)
    );
\gen_sync_clock_converter.m_payload_r[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(29),
      I1 => D(29),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(29)
    );
\gen_sync_clock_converter.m_payload_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(2),
      I1 => D(2),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(2)
    );
\gen_sync_clock_converter.m_payload_r[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(30),
      I1 => D(30),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(30)
    );
\gen_sync_clock_converter.m_payload_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \gen_sync_clock_converter.state\(0),
      I2 => \gen_sync_clock_converter.state\(1),
      O => \gen_sync_clock_converter.load_payload\
    );
\gen_sync_clock_converter.m_payload_r[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(31),
      I1 => D(31),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(31)
    );
\gen_sync_clock_converter.m_payload_r[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(32),
      I1 => D(32),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(32)
    );
\gen_sync_clock_converter.m_payload_r[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(33),
      I1 => D(33),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(33)
    );
\gen_sync_clock_converter.m_payload_r[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(34),
      I1 => D(34),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(34)
    );
\gen_sync_clock_converter.m_payload_r[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(35),
      I1 => D(35),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(35)
    );
\gen_sync_clock_converter.m_payload_r[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(36),
      I1 => D(36),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(36)
    );
\gen_sync_clock_converter.m_payload_r[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(37),
      I1 => D(37),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(37)
    );
\gen_sync_clock_converter.m_payload_r[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(38),
      I1 => D(38),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(38)
    );
\gen_sync_clock_converter.m_payload_r[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(39),
      I1 => D(39),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(39)
    );
\gen_sync_clock_converter.m_payload_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(3),
      I1 => D(3),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(3)
    );
\gen_sync_clock_converter.m_payload_r[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(40),
      I1 => D(40),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(40)
    );
\gen_sync_clock_converter.m_payload_r[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(41),
      I1 => D(41),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(41)
    );
\gen_sync_clock_converter.m_payload_r[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(42),
      I1 => D(42),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(42)
    );
\gen_sync_clock_converter.m_payload_r[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(43),
      I1 => D(43),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(43)
    );
\gen_sync_clock_converter.m_payload_r[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(44),
      I1 => D(44),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(44)
    );
\gen_sync_clock_converter.m_payload_r[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(45),
      I1 => D(45),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(45)
    );
\gen_sync_clock_converter.m_payload_r[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(46),
      I1 => D(46),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(46)
    );
\gen_sync_clock_converter.m_payload_r[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(47),
      I1 => D(47),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(47)
    );
\gen_sync_clock_converter.m_payload_r[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(48),
      I1 => D(48),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(48)
    );
\gen_sync_clock_converter.m_payload_r[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(49),
      I1 => D(49),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(49)
    );
\gen_sync_clock_converter.m_payload_r[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(4),
      I1 => D(4),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(4)
    );
\gen_sync_clock_converter.m_payload_r[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(50),
      I1 => D(50),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(50)
    );
\gen_sync_clock_converter.m_payload_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(5),
      I1 => D(5),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(5)
    );
\gen_sync_clock_converter.m_payload_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(6),
      I1 => D(6),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(6)
    );
\gen_sync_clock_converter.m_payload_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(7),
      I1 => D(7),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(7)
    );
\gen_sync_clock_converter.m_payload_r[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(8),
      I1 => D(8),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(8)
    );
\gen_sync_clock_converter.m_payload_r[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(9),
      I1 => D(9),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      O => p_0_in(9)
    );
\gen_sync_clock_converter.m_payload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(0),
      Q => Q(0),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(10),
      Q => Q(10),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(11),
      Q => Q(11),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(12),
      Q => Q(12),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(13),
      Q => Q(13),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(14),
      Q => Q(14),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(15),
      Q => Q(15),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(16),
      Q => Q(16),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(17),
      Q => Q(17),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(18),
      Q => Q(18),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(19),
      Q => Q(19),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(1),
      Q => Q(1),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(20),
      Q => Q(20),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(21),
      Q => Q(21),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(22),
      Q => Q(22),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(23),
      Q => Q(23),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(24),
      Q => Q(24),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(25),
      Q => Q(25),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(26),
      Q => Q(26),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(27),
      Q => Q(27),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(28),
      Q => Q(28),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(29),
      Q => Q(29),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(2),
      Q => Q(2),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(30),
      Q => Q(30),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(31),
      Q => Q(31),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(32),
      Q => Q(32),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(33),
      Q => Q(33),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(34),
      Q => Q(34),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(35),
      Q => Q(35),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(36),
      Q => Q(36),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(37),
      Q => Q(37),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(38),
      Q => Q(38),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(39),
      Q => Q(39),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(3),
      Q => Q(3),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(40),
      Q => Q(40),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(41),
      Q => Q(41),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(42),
      Q => Q(42),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(43),
      Q => Q(43),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(44),
      Q => Q(44),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(45),
      Q => Q(45),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(46),
      Q => Q(46),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(47),
      Q => Q(47),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(48),
      Q => Q(48),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(49),
      Q => Q(49),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(4),
      Q => Q(4),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(50),
      Q => Q(50),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(5),
      Q => Q(5),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(6),
      Q => Q(6),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(7),
      Q => Q(7),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(8),
      Q => Q(8),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(9),
      Q => Q(9),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(1),
      I1 => \gen_sync_clock_converter.state\(0),
      O => \gen_sync_clock_converter.load_storage\
    );
\gen_sync_clock_converter.m_storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(0),
      Q => \gen_sync_clock_converter.m_storage_r\(0),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(10),
      Q => \gen_sync_clock_converter.m_storage_r\(10),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(11),
      Q => \gen_sync_clock_converter.m_storage_r\(11),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(12),
      Q => \gen_sync_clock_converter.m_storage_r\(12),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(13),
      Q => \gen_sync_clock_converter.m_storage_r\(13),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(14),
      Q => \gen_sync_clock_converter.m_storage_r\(14),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(15),
      Q => \gen_sync_clock_converter.m_storage_r\(15),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(16),
      Q => \gen_sync_clock_converter.m_storage_r\(16),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(17),
      Q => \gen_sync_clock_converter.m_storage_r\(17),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(18),
      Q => \gen_sync_clock_converter.m_storage_r\(18),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(19),
      Q => \gen_sync_clock_converter.m_storage_r\(19),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(1),
      Q => \gen_sync_clock_converter.m_storage_r\(1),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(20),
      Q => \gen_sync_clock_converter.m_storage_r\(20),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(21),
      Q => \gen_sync_clock_converter.m_storage_r\(21),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(22),
      Q => \gen_sync_clock_converter.m_storage_r\(22),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(23),
      Q => \gen_sync_clock_converter.m_storage_r\(23),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(24),
      Q => \gen_sync_clock_converter.m_storage_r\(24),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(25),
      Q => \gen_sync_clock_converter.m_storage_r\(25),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(26),
      Q => \gen_sync_clock_converter.m_storage_r\(26),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(27),
      Q => \gen_sync_clock_converter.m_storage_r\(27),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(28),
      Q => \gen_sync_clock_converter.m_storage_r\(28),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(29),
      Q => \gen_sync_clock_converter.m_storage_r\(29),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(2),
      Q => \gen_sync_clock_converter.m_storage_r\(2),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(30),
      Q => \gen_sync_clock_converter.m_storage_r\(30),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(31),
      Q => \gen_sync_clock_converter.m_storage_r\(31),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(32),
      Q => \gen_sync_clock_converter.m_storage_r\(32),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(33),
      Q => \gen_sync_clock_converter.m_storage_r\(33),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(34),
      Q => \gen_sync_clock_converter.m_storage_r\(34),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(35),
      Q => \gen_sync_clock_converter.m_storage_r\(35),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(36),
      Q => \gen_sync_clock_converter.m_storage_r\(36),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(37),
      Q => \gen_sync_clock_converter.m_storage_r\(37),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(38),
      Q => \gen_sync_clock_converter.m_storage_r\(38),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(39),
      Q => \gen_sync_clock_converter.m_storage_r\(39),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(3),
      Q => \gen_sync_clock_converter.m_storage_r\(3),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(40),
      Q => \gen_sync_clock_converter.m_storage_r\(40),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(41),
      Q => \gen_sync_clock_converter.m_storage_r\(41),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(42),
      Q => \gen_sync_clock_converter.m_storage_r\(42),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(43),
      Q => \gen_sync_clock_converter.m_storage_r\(43),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(44),
      Q => \gen_sync_clock_converter.m_storage_r\(44),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(45),
      Q => \gen_sync_clock_converter.m_storage_r\(45),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(46),
      Q => \gen_sync_clock_converter.m_storage_r\(46),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(47),
      Q => \gen_sync_clock_converter.m_storage_r\(47),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(48),
      Q => \gen_sync_clock_converter.m_storage_r\(48),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(49),
      Q => \gen_sync_clock_converter.m_storage_r\(49),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(4),
      Q => \gen_sync_clock_converter.m_storage_r\(4),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(50),
      Q => \gen_sync_clock_converter.m_storage_r\(50),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(5),
      Q => \gen_sync_clock_converter.m_storage_r\(5),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(6),
      Q => \gen_sync_clock_converter.m_storage_r\(6),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(7),
      Q => \gen_sync_clock_converter.m_storage_r\(7),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(8),
      Q => \gen_sync_clock_converter.m_storage_r\(8),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => D(9),
      Q => \gen_sync_clock_converter.m_storage_r\(9),
      R => '0'
    );
\gen_sync_clock_converter.m_valid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F4CC"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \gen_sync_clock_converter.state\(0),
      I2 => s_axis_tvalid,
      I3 => \gen_sync_clock_converter.state\(1),
      I4 => \gen_sync_clock_converter.m_areset_r\,
      O => \gen_sync_clock_converter.m_valid_r_i_1_n_0\
    );
\gen_sync_clock_converter.m_valid_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.m_valid_r_i_1_n_0\,
      Q => m_axis_tvalid,
      R => '0'
    );
\gen_sync_clock_converter.s_areset_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_aresetn,
      I1 => m_axis_aresetn,
      O => \gen_sync_clock_converter.s_areset_r_i_1_n_0\
    );
\gen_sync_clock_converter.s_areset_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.s_areset_r_i_1_n_0\,
      Q => \gen_sync_clock_converter.s_areset_r\,
      R => '0'
    );
\gen_sync_clock_converter.s_ready_r_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(1),
      I1 => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      I2 => \gen_sync_clock_converter.s_areset_r\,
      O => \gen_sync_clock_converter.s_ready_r_i_1_n_0\
    );
\gen_sync_clock_converter.s_ready_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.s_ready_r_i_1_n_0\,
      Q => s_axis_tready,
      R => '0'
    );
\gen_sync_clock_converter.state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D8F8"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(1),
      I1 => s_axis_tvalid,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => m_axis_tready,
      I4 => \gen_sync_clock_converter.m_areset_r\,
      O => \gen_sync_clock_converter.state[0]_i_1_n_0\
    );
\gen_sync_clock_converter.state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF75"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(0),
      I1 => s_axis_tvalid,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => m_axis_tready,
      I4 => \gen_sync_clock_converter.m_areset_r\,
      O => \gen_sync_clock_converter.state[1]_i_1_n_0\
    );
\gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.state[0]_i_1_n_0\,
      Q => \gen_sync_clock_converter.state\(0),
      R => '0'
    );
\gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.state[1]_i_1_n_0\,
      Q => \gen_sync_clock_converter.state\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclken : in STD_LOGIC;
    m_axis_aclken : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "32'b00000000000000000000000011111011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "artix7";
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute C_S_AXIS_ACLK_RATIO : integer;
  attribute C_S_AXIS_ACLK_RATIO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute P_FIFO_DEPTH : integer;
  attribute P_FIFO_DEPTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute P_FIFO_MODE : integer;
  attribute P_FIFO_MODE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_INST_FIFO_GEN : integer;
  attribute P_INST_FIFO_GEN of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute P_M_AXIS_ACLK_RATIO : integer;
  attribute P_M_AXIS_ACLK_RATIO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 51;
end bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter;

architecture STRUCTURE of bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ : STD_LOGIC;
begin
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_sync_ck_conv.axisc_sample_cycle_ratio_m\: entity work.bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio
     port map (
      \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      m_axis_aclk => m_axis_aclk,
      s_axis_aclk => s_axis_aclk
    );
\gen_sync_ck_conv.axisc_sync_clock_converter_0\: entity work.bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter
     port map (
      D(50 downto 47) => s_axis_tuser(3 downto 0),
      D(46 downto 42) => s_axis_tdest(4 downto 0),
      D(41 downto 37) => s_axis_tid(4 downto 0),
      D(36) => s_axis_tlast,
      D(35 downto 32) => s_axis_tkeep(3 downto 0),
      D(31 downto 0) => s_axis_tdata(31 downto 0),
      Q(50 downto 47) => m_axis_tuser(3 downto 0),
      Q(46 downto 42) => m_axis_tdest(4 downto 0),
      Q(41 downto 37) => m_axis_tid(4 downto 0),
      Q(36) => m_axis_tlast,
      Q(35 downto 32) => m_axis_tkeep(3 downto 0),
      Q(31 downto 0) => m_axis_tdata(31 downto 0),
      \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_auto_cc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_auto_cc_0 : entity is "bd_auto_cc_0,axis_clock_converter_v1_1_16_axis_clock_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_auto_cc_0 : entity is "axis_clock_converter_v1_1_16_axis_clock_converter,Vivado 2017.4";
end bd_auto_cc_0;

architecture STRUCTURE of bd_auto_cc_0 is
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000011111011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 5;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 5;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of inst : label is 1;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 2;
  attribute C_S_AXIS_ACLK_RATIO : integer;
  attribute C_S_AXIS_ACLK_RATIO of inst : label is 4;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute P_FIFO_DEPTH : integer;
  attribute P_FIFO_DEPTH of inst : label is 32;
  attribute P_FIFO_MODE : integer;
  attribute P_FIFO_MODE of inst : label is 1;
  attribute P_INST_FIFO_GEN : integer;
  attribute P_INST_FIFO_GEN of inst : label is 0;
  attribute P_M_AXIS_ACLK_RATIO : integer;
  attribute P_M_AXIS_ACLK_RATIO of inst : label is 1;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of inst : label is 4;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of inst : label is 4;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 51;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_CLKIF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, ASSOCIATED_CLKEN m_axis_aclken";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_RSTIF RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_CLKEN s_axis_aclken";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDEST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDEST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
begin
inst: entity work.bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter
     port map (
      m_axis_aclk => m_axis_aclk,
      m_axis_aclken => '1',
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(4 downto 0) => m_axis_tdest(4 downto 0),
      m_axis_tid(4 downto 0) => m_axis_tid(4 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => m_axis_tuser(3 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aclken => '1',
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(4 downto 0) => s_axis_tdest(4 downto 0),
      s_axis_tid(4 downto 0) => s_axis_tid(4 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
