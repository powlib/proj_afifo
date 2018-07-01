-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Jun 29 00:45:21 2018
-- Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_auto_cc_3 -prefix
--               bd_auto_cc_3_ bd_auto_cc_3_sim_netlist.vhdl
-- Design      : bd_auto_cc_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio is
  port (
    \gen_sync_ck_conv.sample_cycle\ : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC
  );
end bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio;

architecture STRUCTURE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio is
  signal \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\ : STD_LOGIC;
  signal \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\ : STD_LOGIC;
  signal \gen_sample_cycle.sample_cycle_d_reg\ : STD_LOGIC;
  signal posedge_finder_first : STD_LOGIC;
  signal posedge_finder_second : STD_LOGIC;
  signal slow_aclk_div2 : STD_LOGIC;
  signal slow_aclk_div20 : STD_LOGIC;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \gen_sample_cycle.sample_cycle_r_reg\ : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sample_cycle.slow_aclk_div2_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sample_cycle_d0 : label is "soft_lutpair0";
begin
\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\,
      Q => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      R => '0'
    );
\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sample_cycle.sample_cycle_d_reg\,
      Q => \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg\,
      R => '0'
    );
\gen_sample_cycle.posedge_finder_first_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => slow_aclk_div2,
      Q => posedge_finder_first,
      R => '0'
    );
\gen_sample_cycle.posedge_finder_second_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => slow_aclk_div20,
      Q => posedge_finder_second,
      R => '0'
    );
\gen_sample_cycle.sample_cycle_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg\,
      Q => \gen_sync_ck_conv.sample_cycle\,
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
      C => s_axis_aclk,
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
entity bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_sync_ck_conv.sample_cycle\ : in STD_LOGIC
  );
end bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter;

architecture STRUCTURE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter is
  signal \gen_sync_clock_converter.load_payload\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_storage\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_areset_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_areset_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_ready_hold\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_ready_hold_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_storage_r\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_sync_clock_converter.m_valid_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_areset_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_ready_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_sync_clock_converter.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
\gen_sync_clock_converter.m_areset_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_aresetn,
      I1 => m_axis_aresetn,
      O => \gen_sync_clock_converter.m_areset_r_i_1_n_0\
    );
\gen_sync_clock_converter.m_areset_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.m_areset_r_i_1_n_0\,
      Q => \gen_sync_clock_converter.m_areset_r\,
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(0),
      I1 => s_axis_tdata(0),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(0)
    );
\gen_sync_clock_converter.m_payload_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(1),
      I1 => s_axis_tdata(1),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(1)
    );
\gen_sync_clock_converter.m_payload_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(2),
      I1 => s_axis_tdata(2),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(2)
    );
\gen_sync_clock_converter.m_payload_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(3),
      I1 => s_axis_tdata(3),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(3)
    );
\gen_sync_clock_converter.m_payload_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(4),
      I1 => s_axis_tdata(4),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(4)
    );
\gen_sync_clock_converter.m_payload_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(5),
      I1 => s_axis_tdata(5),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(5)
    );
\gen_sync_clock_converter.m_payload_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(6),
      I1 => s_axis_tdata(6),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(6)
    );
\gen_sync_clock_converter.m_payload_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_ready_hold\,
      I1 => m_axis_tready,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => \gen_sync_clock_converter.state\(1),
      O => \gen_sync_clock_converter.load_payload\
    );
\gen_sync_clock_converter.m_payload_r[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCACCCACCCCCC"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_storage_r\(7),
      I1 => s_axis_tdata(7),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.m_ready_hold\,
      O => p_0_in(7)
    );
\gen_sync_clock_converter.m_payload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\gen_sync_clock_converter.m_payload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_payload\,
      D => p_0_in(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\gen_sync_clock_converter.m_ready_hold_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_ready_hold\,
      I1 => m_axis_tready,
      I2 => \gen_sync_ck_conv.sample_cycle\,
      I3 => \gen_sync_clock_converter.m_areset_r\,
      O => \gen_sync_clock_converter.m_ready_hold_i_1_n_0\
    );
\gen_sync_clock_converter.m_ready_hold_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.m_ready_hold_i_1_n_0\,
      Q => \gen_sync_clock_converter.m_ready_hold\,
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r[7]_i_1\: unisim.vcomponents.LUT2
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
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(0),
      Q => \gen_sync_clock_converter.m_storage_r\(0),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(1),
      Q => \gen_sync_clock_converter.m_storage_r\(1),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(2),
      Q => \gen_sync_clock_converter.m_storage_r\(2),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(3),
      Q => \gen_sync_clock_converter.m_storage_r\(3),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(4),
      Q => \gen_sync_clock_converter.m_storage_r\(4),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(5),
      Q => \gen_sync_clock_converter.m_storage_r\(5),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(6),
      Q => \gen_sync_clock_converter.m_storage_r\(6),
      R => '0'
    );
\gen_sync_clock_converter.m_storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \gen_sync_clock_converter.load_storage\,
      D => s_axis_tdata(7),
      Q => \gen_sync_clock_converter.m_storage_r\(7),
      R => '0'
    );
\gen_sync_clock_converter.m_valid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F404"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid\,
      I2 => \gen_sync_ck_conv.sample_cycle\,
      I3 => \gen_sync_clock_converter.state[0]_i_1_n_0\,
      I4 => \gen_sync_clock_converter.m_areset_r\,
      O => \gen_sync_clock_converter.m_valid_r_i_1_n_0\
    );
\gen_sync_clock_converter.m_valid_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.m_valid_r_i_1_n_0\,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\gen_sync_clock_converter.s_areset_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.m_areset_r_i_1_n_0\,
      Q => \gen_sync_clock_converter.s_areset_r\,
      R => '0'
    );
\gen_sync_clock_converter.s_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFEFFFF"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_ready_hold\,
      I1 => m_axis_tready,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => s_axis_tvalid,
      I4 => \gen_sync_clock_converter.state\(0),
      I5 => \gen_sync_clock_converter.s_areset_r\,
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
\gen_sync_clock_converter.state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D8D8D8F8"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(1),
      I1 => s_axis_tvalid,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => \gen_sync_clock_converter.m_ready_hold\,
      I4 => m_axis_tready,
      I5 => \gen_sync_clock_converter.s_areset_r\,
      O => \gen_sync_clock_converter.state[0]_i_1_n_0\
    );
\gen_sync_clock_converter.state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF75"
    )
        port map (
      I0 => \gen_sync_clock_converter.state\(0),
      I1 => s_axis_tvalid,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => m_axis_tready,
      I4 => \gen_sync_clock_converter.m_ready_hold\,
      I5 => \gen_sync_clock_converter.s_areset_r\,
      O => \gen_sync_clock_converter.state[1]_i_1_n_0\
    );
\gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_sync_clock_converter.state[0]_i_1_n_0\,
      Q => \gen_sync_clock_converter.state\(0),
      R => '0'
    );
\gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
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
entity bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclken : in STD_LOGIC;
    m_axis_aclken : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "artix7";
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute C_S_AXIS_ACLK_RATIO : integer;
  attribute C_S_AXIS_ACLK_RATIO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute P_FIFO_DEPTH : integer;
  attribute P_FIFO_DEPTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute P_FIFO_MODE : integer;
  attribute P_FIFO_MODE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_INST_FIFO_GEN : integer;
  attribute P_INST_FIFO_GEN of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute P_M_AXIS_ACLK_RATIO : integer;
  attribute P_M_AXIS_ACLK_RATIO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 8;
end bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter;

architecture STRUCTURE of bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \gen_sync_ck_conv.sample_cycle\ : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const1>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_sync_ck_conv.axisc_sample_cycle_ratio_m\: entity work.bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio
     port map (
      \gen_sync_ck_conv.sample_cycle\ => \gen_sync_ck_conv.sample_cycle\,
      m_axis_aclk => m_axis_aclk,
      s_axis_aclk => s_axis_aclk
    );
\gen_sync_ck_conv.axisc_sync_clock_converter_0\: entity work.bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter
     port map (
      \gen_sync_ck_conv.sample_cycle\ => \gen_sync_ck_conv.sample_cycle\,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_3 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_auto_cc_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_auto_cc_3 : entity is "bd_auto_cc_3,axis_clock_converter_v1_1_16_axis_clock_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_auto_cc_3 : entity is "axis_clock_converter_v1_1_16_axis_clock_converter,Vivado 2017.4";
end bd_auto_cc_3;

architecture STRUCTURE of bd_auto_cc_3 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of inst : label is 4;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 2;
  attribute C_S_AXIS_ACLK_RATIO : integer;
  attribute C_S_AXIS_ACLK_RATIO of inst : label is 1;
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
  attribute P_M_AXIS_ACLK_RATIO of inst : label is 4;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of inst : label is 4;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 8;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_CLKIF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, ASSOCIATED_CLKEN m_axis_aclken";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_RSTIF RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_CLKEN s_axis_aclken";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
begin
inst: entity work.bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter
     port map (
      m_axis_aclk => m_axis_aclk,
      m_axis_aclken => '1',
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_inst_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(0) => NLW_inst_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aclken => '1',
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '1',
      s_axis_tlast => '1',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(0) => '1',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
