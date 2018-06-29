-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Jun 29 00:50:41 2018
-- Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /workspace/git_ws/proj_afifo/hdl/bd/ip/bd_auto_cc_1/bd_auto_cc_1_sim_netlist.vhdl
-- Design      : bd_auto_cc_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of bd_auto_cc_1_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of bd_auto_cc_1_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of bd_auto_cc_1_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of bd_auto_cc_1_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of bd_auto_cc_1_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of bd_auto_cc_1_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of bd_auto_cc_1_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of bd_auto_cc_1_xpm_cdc_async_rst : entity is "ASYNC_RST";
end bd_auto_cc_1_xpm_cdc_async_rst;

architecture STRUCTURE of bd_auto_cc_1_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_auto_cc_1_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \bd_auto_cc_1_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \bd_auto_cc_1_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \bd_auto_cc_1_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of bd_auto_cc_1_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of bd_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of bd_auto_cc_1_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of bd_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of bd_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of bd_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of bd_auto_cc_1_xpm_cdc_gray : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of bd_auto_cc_1_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of bd_auto_cc_1_xpm_cdc_gray : entity is "GRAY";
end bd_auto_cc_1_xpm_cdc_gray;

architecture STRUCTURE of bd_auto_cc_1_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair3";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(3),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_auto_cc_1_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \bd_auto_cc_1_xpm_cdc_gray__1\ : entity is "GRAY";
end \bd_auto_cc_1_xpm_cdc_gray__1\;

architecture STRUCTURE of \bd_auto_cc_1_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(3),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of bd_auto_cc_1_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of bd_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of bd_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of bd_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of bd_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of bd_auto_cc_1_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of bd_auto_cc_1_xpm_cdc_single : entity is "SINGLE";
end bd_auto_cc_1_xpm_cdc_single;

architecture STRUCTURE of bd_auto_cc_1_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_auto_cc_1_xpm_cdc_single__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \bd_auto_cc_1_xpm_cdc_single__1\ : entity is "SINGLE";
end \bd_auto_cc_1_xpm_cdc_single__1\;

architecture STRUCTURE of \bd_auto_cc_1_xpm_cdc_single__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of bd_auto_cc_1_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of bd_auto_cc_1_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of bd_auto_cc_1_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of bd_auto_cc_1_xpm_cdc_sync_rst : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of bd_auto_cc_1_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of bd_auto_cc_1_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of bd_auto_cc_1_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of bd_auto_cc_1_xpm_cdc_sync_rst : entity is "SYNC_RST";
end bd_auto_cc_1_xpm_cdc_sync_rst;

architecture STRUCTURE of bd_auto_cc_1_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 50 downto 0 );
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 50 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gic0.gc0.count_d2_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_dmem : entity is "dmem";
end bd_auto_cc_1_dmem;

architecture STRUCTURE of bd_auto_cc_1_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_50_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_48_50_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_50_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_30_35 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_36_41 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_42_47 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_48_50 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(1 downto 0),
      DIB(1 downto 0) => DI(3 downto 2),
      DIC(1 downto 0) => DI(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(13 downto 12),
      DIB(1 downto 0) => DI(15 downto 14),
      DIC(1 downto 0) => DI(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(19 downto 18),
      DIB(1 downto 0) => DI(21 downto 20),
      DIC(1 downto 0) => DI(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(25 downto 24),
      DIB(1 downto 0) => DI(27 downto 26),
      DIC(1 downto 0) => DI(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1 downto 0) => p_0_out(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(31 downto 30),
      DIB(1 downto 0) => DI(33 downto 32),
      DIC(1 downto 0) => DI(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(31 downto 30),
      DOB(1 downto 0) => p_0_out(33 downto 32),
      DOC(1 downto 0) => p_0_out(35 downto 34),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(37 downto 36),
      DIB(1 downto 0) => DI(39 downto 38),
      DIC(1 downto 0) => DI(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(37 downto 36),
      DOB(1 downto 0) => p_0_out(39 downto 38),
      DOC(1 downto 0) => p_0_out(41 downto 40),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(43 downto 42),
      DIB(1 downto 0) => DI(45 downto 44),
      DIC(1 downto 0) => DI(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(43 downto 42),
      DOB(1 downto 0) => p_0_out(45 downto 44),
      DOC(1 downto 0) => p_0_out(47 downto 46),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_48_50: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(49 downto 48),
      DIB(1) => '0',
      DIB(0) => DI(50),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(49 downto 48),
      DOB(1) => NLW_RAM_reg_0_31_48_50_DOB_UNCONNECTED(1),
      DOB(0) => p_0_out(50),
      DOC(1 downto 0) => NLW_RAM_reg_0_31_48_50_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_48_50_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      DIA(1 downto 0) => DI(7 downto 6),
      DIB(1 downto 0) => DI(9 downto 8),
      DIC(1 downto 0) => DI(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(29),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(30),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(31),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(32),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(33),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(34),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(35),
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(36),
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(37),
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(38),
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(39),
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(40),
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(41),
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(42),
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(43),
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(44),
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(45),
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(46),
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(47),
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(48),
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(49),
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(50),
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \src_gray_ff_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_rd_bin_cntr : entity is "rd_bin_cntr";
end bd_auto_cc_1_rd_bin_cntr;

architecture STRUCTURE of bd_auto_cc_1_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^src_gray_ff_reg[4]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair4";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \src_gray_ff_reg[4]\(4 downto 0) <= \^src_gray_ff_reg[4]\(4 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__0\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__0\(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \plusOp__0\(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(0),
      Q => \^src_gray_ff_reg[4]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(1),
      Q => \^src_gray_ff_reg[4]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(2),
      Q => \^src_gray_ff_reg[4]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(3),
      Q => \^src_gray_ff_reg[4]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(4),
      Q => \^src_gray_ff_reg[4]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(3),
      Q => \^q\(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(4),
      Q => \^q\(4)
    );
ram_empty_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^src_gray_ff_reg[4]\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^src_gray_ff_reg[4]\(1),
      I3 => WR_PNTR_RD(1),
      I4 => WR_PNTR_RD(0),
      I5 => \^src_gray_ff_reg[4]\(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_rd_fwft is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[50]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_rd_fwft : entity is "rd_fwft";
end bd_auto_cc_1_rd_fwft;

architecture STRUCTURE of bd_auto_cc_1_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8E0C0F0"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \out\,
      I2 => aempty_fwft_fb_i,
      I3 => curr_fwft_state(1),
      I4 => curr_fwft_state(0),
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88EA"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(0),
      I2 => m_axis_tready,
      I3 => curr_fwft_state(1),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88EA"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(0),
      I2 => m_axis_tready,
      I3 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_i
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axis_tready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axis_tready,
      O => \goreg_dm.dout_i_reg[50]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axis_tready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axis_tready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axis_tvalid
    );
ram_empty_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axis_tready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[0]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_rd_status_flags_as : entity is "rd_status_flags_as";
end bd_auto_cc_1_rd_status_flags_as;

architecture STRUCTURE of bd_auto_cc_1_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[0]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[0]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    \src_gray_ff_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \dest_out_bin_ff_reg[3]\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_wr_bin_cntr : entity is "wr_bin_cntr";
end bd_auto_cc_1_wr_bin_cntr;

architecture STRUCTURE of bd_auto_cc_1_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ram_full_i_i_4 : label is "soft_lutpair7";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => plusOp(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => \^q\(0),
      O => plusOp(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_pntr_plus2(0),
      I2 => \^q\(1),
      O => plusOp(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_pntr_plus2(0),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => plusOp(3)
    );
\gic0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => wr_pntr_plus2(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => plusOp(4)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(4)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \src_gray_ff_reg[4]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \src_gray_ff_reg[4]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \src_gray_ff_reg[4]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \src_gray_ff_reg[4]\(3)
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(4),
      Q => \src_gray_ff_reg[4]\(4)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(0),
      Q => wr_pntr_plus2(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(1),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(4),
      Q => \^q\(3)
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \dest_out_bin_ff_reg[3]\,
      I1 => ram_full_fb_i_reg,
      I2 => ram_full_i_i_4_n_0,
      I3 => ram_full_i_i_5_n_0,
      I4 => ram_full_i_i_6_n_0,
      I5 => ram_full_i_i_7_n_0,
      O => ram_full_i_reg
    );
ram_full_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => RD_PNTR_WR(0),
      I2 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_i_4_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_14_out(4),
      I1 => RD_PNTR_WR(4),
      I2 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(0),
      I1 => RD_PNTR_WR(0),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      O => ram_full_i_i_6_n_0
    );
ram_full_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(3),
      I3 => RD_PNTR_WR(3),
      O => ram_full_i_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_wr_status_flags_as is
  port (
    ram_full_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    \dest_out_bin_ff_reg[3]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_wr_status_flags_as : entity is "wr_status_flags_as";
end bd_auto_cc_1_wr_status_flags_as;

architecture STRUCTURE of bd_auto_cc_1_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[3]\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axis_tvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[3]\,
      PRE => \out\,
      Q => ram_full_i
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_clk_x_pntrs is
  port (
    ram_full_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_clk_x_pntrs : entity is "clk_x_pntrs";
end bd_auto_cc_1_clk_x_pntrs;

architecture STRUCTURE of bd_auto_cc_1_clk_x_pntrs is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 5;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(4 downto 0) <= \^rd_pntr_wr\(4 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF900090009000"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => \gc0.count_reg[3]\(0),
      I2 => \gpregsm1.curr_fwft_state_reg[1]\,
      I3 => ram_empty_i_i_3_n_0,
      I4 => ram_empty_i_i_4_n_0,
      I5 => \gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_reg
    );
ram_empty_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_24_out(3),
      I1 => \gc0.count_reg[3]\(3),
      I2 => \^wr_pntr_rd\(2),
      I3 => \gc0.count_reg[3]\(2),
      I4 => \gc0.count_reg[3]\(1),
      I5 => \^wr_pntr_rd\(1),
      O => ram_empty_i_i_3_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(3),
      I1 => \gc0.count_d1_reg[4]\(3),
      I2 => \^wr_pntr_rd\(3),
      I3 => \gc0.count_d1_reg[4]\(4),
      O => ram_empty_i_i_4_n_0
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(3),
      I1 => Q(2),
      I2 => \^rd_pntr_wr\(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^rd_pntr_wr\(1),
      O => ram_full_i_reg
    );
rd_pntr_cdc_inst: entity work.bd_auto_cc_1_xpm_cdc_gray
     port map (
      dest_clk => s_aclk,
      dest_out_bin(4 downto 0) => \^rd_pntr_wr\(4 downto 0),
      src_clk => m_aclk,
      src_in_bin(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0)
    );
wr_pntr_cdc_inst: entity work.\bd_auto_cc_1_xpm_cdc_gray__1\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(4) => \^wr_pntr_rd\(3),
      dest_out_bin(3) => p_24_out(3),
      dest_out_bin(2 downto 0) => \^wr_pntr_rd\(2 downto 0),
      src_clk => s_aclk,
      src_in_bin(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_memory is
  port (
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 50 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gic0.gc0.count_d2_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_memory : entity is "memory";
end bd_auto_cc_1_memory;

architecture STRUCTURE of bd_auto_cc_1_memory is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.bd_auto_cc_1_dmem
     port map (
      DI(50 downto 0) => DI(50 downto 0),
      dout_i(50) => \gdm.dm_gen.dm_n_0\,
      dout_i(49) => \gdm.dm_gen.dm_n_1\,
      dout_i(48) => \gdm.dm_gen.dm_n_2\,
      dout_i(47) => \gdm.dm_gen.dm_n_3\,
      dout_i(46) => \gdm.dm_gen.dm_n_4\,
      dout_i(45) => \gdm.dm_gen.dm_n_5\,
      dout_i(44) => \gdm.dm_gen.dm_n_6\,
      dout_i(43) => \gdm.dm_gen.dm_n_7\,
      dout_i(42) => \gdm.dm_gen.dm_n_8\,
      dout_i(41) => \gdm.dm_gen.dm_n_9\,
      dout_i(40) => \gdm.dm_gen.dm_n_10\,
      dout_i(39) => \gdm.dm_gen.dm_n_11\,
      dout_i(38) => \gdm.dm_gen.dm_n_12\,
      dout_i(37) => \gdm.dm_gen.dm_n_13\,
      dout_i(36) => \gdm.dm_gen.dm_n_14\,
      dout_i(35) => \gdm.dm_gen.dm_n_15\,
      dout_i(34) => \gdm.dm_gen.dm_n_16\,
      dout_i(33) => \gdm.dm_gen.dm_n_17\,
      dout_i(32) => \gdm.dm_gen.dm_n_18\,
      dout_i(31) => \gdm.dm_gen.dm_n_19\,
      dout_i(30) => \gdm.dm_gen.dm_n_20\,
      dout_i(29) => \gdm.dm_gen.dm_n_21\,
      dout_i(28) => \gdm.dm_gen.dm_n_22\,
      dout_i(27) => \gdm.dm_gen.dm_n_23\,
      dout_i(26) => \gdm.dm_gen.dm_n_24\,
      dout_i(25) => \gdm.dm_gen.dm_n_25\,
      dout_i(24) => \gdm.dm_gen.dm_n_26\,
      dout_i(23) => \gdm.dm_gen.dm_n_27\,
      dout_i(22) => \gdm.dm_gen.dm_n_28\,
      dout_i(21) => \gdm.dm_gen.dm_n_29\,
      dout_i(20) => \gdm.dm_gen.dm_n_30\,
      dout_i(19) => \gdm.dm_gen.dm_n_31\,
      dout_i(18) => \gdm.dm_gen.dm_n_32\,
      dout_i(17) => \gdm.dm_gen.dm_n_33\,
      dout_i(16) => \gdm.dm_gen.dm_n_34\,
      dout_i(15) => \gdm.dm_gen.dm_n_35\,
      dout_i(14) => \gdm.dm_gen.dm_n_36\,
      dout_i(13) => \gdm.dm_gen.dm_n_37\,
      dout_i(12) => \gdm.dm_gen.dm_n_38\,
      dout_i(11) => \gdm.dm_gen.dm_n_39\,
      dout_i(10) => \gdm.dm_gen.dm_n_40\,
      dout_i(9) => \gdm.dm_gen.dm_n_41\,
      dout_i(8) => \gdm.dm_gen.dm_n_42\,
      dout_i(7) => \gdm.dm_gen.dm_n_43\,
      dout_i(6) => \gdm.dm_gen.dm_n_44\,
      dout_i(5) => \gdm.dm_gen.dm_n_45\,
      dout_i(4) => \gdm.dm_gen.dm_n_46\,
      dout_i(3) => \gdm.dm_gen.dm_n_47\,
      dout_i(2) => \gdm.dm_gen.dm_n_48\,
      dout_i(1) => \gdm.dm_gen.dm_n_49\,
      dout_i(0) => \gdm.dm_gen.dm_n_50\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gic0.gc0.count_d2_reg[4]\(4 downto 0) => \gic0.gc0.count_d2_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      m_aclk => m_aclk,
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => Q(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => Q(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => Q(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => Q(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => Q(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => Q(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => Q(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => Q(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => Q(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => Q(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => Q(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => Q(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => Q(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => Q(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => Q(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => Q(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => Q(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => Q(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => Q(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => Q(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => Q(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => Q(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => Q(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => Q(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => Q(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => Q(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => Q(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => Q(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => Q(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => Q(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => Q(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => Q(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => Q(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => Q(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => Q(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => Q(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => Q(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => Q(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => Q(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => Q(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => Q(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => Q(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => Q(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => Q(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => Q(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => Q(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => Q(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => Q(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => Q(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => Q(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_rd_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[50]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \src_gray_ff_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    \dest_out_bin_ff_reg[0]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_rd_logic : entity is "rd_logic";
end bd_auto_cc_1_rd_logic;

architecture STRUCTURE of bd_auto_cc_1_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.bd_auto_cc_1_rd_fwft
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(4),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \goreg_dm.dout_i_reg[50]\(0) => \goreg_dm.dout_i_reg[50]\(0),
      m_aclk => m_aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg
    );
\gras.rsts\: entity work.bd_auto_cc_1_rd_status_flags_as
     port map (
      \dest_out_bin_ff_reg[0]\ => \dest_out_bin_ff_reg[0]\,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out
    );
rpntr: entity work.bd_auto_cc_1_rd_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(4) => rd_pntr_plus1(4),
      Q(3 downto 0) => Q(3 downto 0),
      WR_PNTR_RD(2 downto 0) => WR_PNTR_RD(2 downto 0),
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg_0,
      \src_gray_ff_reg[4]\(4 downto 0) => \src_gray_ff_reg[4]\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_reset_blk_ramfifo is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end bd_auto_cc_1_reset_blk_ramfifo;

architecture STRUCTURE of bd_auto_cc_1_reset_blk_ramfifo is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "false";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "false";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "false";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "false";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "false";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "false";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \out\ <= rst_d2;
  ram_full_i_reg <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.bd_auto_cc_1_xpm_cdc_async_rst
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => inverted_reset
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => wr_rst_rd_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20AAAA"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => rd_rst_wr_ext(2),
      I4 => rd_rst_wr_ext(3),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => wr_rst_rd_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.bd_auto_cc_1_xpm_cdc_single
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\bd_auto_cc_1_xpm_cdc_single__1\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\bd_auto_cc_1_xpm_cdc_async_rst__1\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => inverted_reset
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => inverted_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_wr_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    \src_gray_ff_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[3]\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_wr_logic : entity is "wr_logic";
end bd_auto_cc_1_wr_logic;

architecture STRUCTURE of bd_auto_cc_1_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.bd_auto_cc_1_wr_status_flags_as
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(4),
      RD_PNTR_WR(0) => RD_PNTR_WR(4),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_4,
      \out\ => \out\,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      s_aclk => s_aclk,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
wpntr: entity work.bd_auto_cc_1_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(4),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(4 downto 0) => RD_PNTR_WR(4 downto 0),
      \dest_out_bin_ff_reg[3]\ => \dest_out_bin_ff_reg[3]\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      ram_full_fb_i_reg => \gwas.wsts_n_0\,
      ram_full_i_reg => wpntr_n_4,
      s_aclk => s_aclk,
      \src_gray_ff_reg[4]\(4 downto 0) => \src_gray_ff_reg[4]\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_fifo_generator_ramfifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end bd_auto_cc_1_fifo_generator_ramfifo;

architecture STRUCTURE of bd_auto_cc_1_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_7\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.bd_auto_cc_1_clk_x_pntrs
     port map (
      Q(2 downto 0) => wr_pntr_plus2(3 downto 1),
      RD_PNTR_WR(4 downto 0) => p_25_out(4 downto 0),
      WR_PNTR_RD(3) => p_24_out(4),
      WR_PNTR_RD(2 downto 0) => p_24_out(2 downto 0),
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_7\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      \gic0.gc0.count_d2_reg[4]\(4 downto 0) => p_13_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_4\,
      m_aclk => m_aclk,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_6\,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.bd_auto_cc_1_rd_logic
     port map (
      E(0) => ram_rd_en_i,
      Q(3 downto 0) => rd_pntr_plus1(3 downto 0),
      WR_PNTR_RD(3) => p_24_out(4),
      WR_PNTR_RD(2 downto 0) => p_24_out(2 downto 0),
      \dest_out_bin_ff_reg[0]\ => \gntv_or_sync_fifo.gcx.clkx_n_6\,
      \goreg_dm.dout_i_reg[50]\(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      m_aclk => m_aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_empty_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.rd_n_7\,
      \src_gray_ff_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.bd_auto_cc_1_wr_logic
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(3 downto 1),
      RD_PNTR_WR(4 downto 0) => p_25_out(4 downto 0),
      \dest_out_bin_ff_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      \src_gray_ff_reg[4]\(4 downto 0) => p_13_out(4 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.bd_auto_cc_1_memory
     port map (
      DI(50 downto 0) => DI(50 downto 0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      Q(50 downto 0) => Q(50 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gic0.gc0.count_d2_reg[4]\(4 downto 0) => p_13_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      ram_full_fb_i_reg(0) => p_20_out,
      s_aclk => s_aclk
    );
rstblk: entity work.bd_auto_cc_1_reset_blk_ramfifo
     port map (
      AR(0) => rstblk_n_0,
      m_aclk => m_aclk,
      \out\ => rst_full_ff_i,
      ram_full_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      \syncstages_ff_reg[0]\ => rstblk_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_fifo_generator_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_fifo_generator_top : entity is "fifo_generator_top";
end bd_auto_cc_1_fifo_generator_top;

architecture STRUCTURE of bd_auto_cc_1_fifo_generator_top is
begin
\grf.rf\: entity work.bd_auto_cc_1_fifo_generator_ramfifo
     port map (
      DI(50 downto 0) => DI(50 downto 0),
      Q(50 downto 0) => Q(50 downto 0),
      m_aclk => m_aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_fifo_generator_v13_2_1_synth is
  port (
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 50 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_fifo_generator_v13_2_1_synth : entity is "fifo_generator_v13_2_1_synth";
end bd_auto_cc_1_fifo_generator_v13_2_1_synth;

architecture STRUCTURE of bd_auto_cc_1_fifo_generator_v13_2_1_synth is
begin
\gaxis_fifo.gaxisf.axisf\: entity work.bd_auto_cc_1_fifo_generator_top
     port map (
      DI(50 downto 0) => DI(50 downto 0),
      Q(50 downto 0) => Q(50 downto 0),
      m_aclk => m_aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_fifo_generator_v13_2_1 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 5;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 5;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 51;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 32;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 5;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_fifo_generator_v13_2_1 : entity is "fifo_generator_v13_2_1";
end bd_auto_cc_1_fifo_generator_v13_2_1;

architecture STRUCTURE of bd_auto_cc_1_fifo_generator_v13_2_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.bd_auto_cc_1_fifo_generator_v13_2_1_synth
     port map (
      DI(50 downto 19) => s_axis_tdata(31 downto 0),
      DI(18 downto 15) => s_axis_tkeep(3 downto 0),
      DI(14 downto 10) => s_axis_tid(4 downto 0),
      DI(9 downto 5) => s_axis_tdest(4 downto 0),
      DI(4 downto 1) => s_axis_tuser(3 downto 0),
      DI(0) => s_axis_tlast,
      Q(50 downto 19) => m_axis_tdata(31 downto 0),
      Q(18 downto 15) => m_axis_tkeep(3 downto 0),
      Q(14 downto 10) => m_axis_tid(4 downto 0),
      Q(9 downto 5) => m_axis_tdest(4 downto 0),
      Q(4 downto 1) => m_axis_tuser(3 downto 0),
      Q(0) => m_axis_tlast,
      m_aclk => m_aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_axis_data_fifo_v1_1_16_axis_data_fifo is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_axis_data_fifo_v1_1_16_axis_data_fifo : entity is "axis_data_fifo_v1_1_16_axis_data_fifo";
end bd_auto_cc_1_axis_data_fifo_v1_1_16_axis_data_fifo;

architecture STRUCTURE of bd_auto_cc_1_axis_data_fifo_v1_1_16_axis_data_fifo is
  signal \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst_i_1_n_0\ : STD_LOGIC;
  signal \gen_async_clock_and_reset.m_aresetn_i\ : STD_LOGIC;
  signal \gen_async_clock_and_reset.s_and_m_aresetn_r_i_1_n_0\ : STD_LOGIC;
  signal s_and_m_aresetn_i : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of s_and_m_aresetn_i : signal is "true";
  signal \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\ : label is "TRUE";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 5;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 5;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \gen_fifo_generator.fifo_generator_inst\ : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 51;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \gen_fifo_generator.fifo_generator_inst\ : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \gen_fifo_generator.fifo_generator_inst\ : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \gen_fifo_generator.fifo_generator_inst\ : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \gen_fifo_generator.fifo_generator_inst\ : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \gen_fifo_generator.fifo_generator_inst\ : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \gen_fifo_generator.fifo_generator_inst\ : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 32;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \gen_fifo_generator.fifo_generator_inst\ : label is 5;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \gen_fifo_generator.fifo_generator_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \gen_fifo_generator.fifo_generator_inst\ : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \gen_fifo_generator.fifo_generator_inst\ : label is 1;
begin
\gen_async_clock_and_reset.inst_xpm_cdc_sync_rst\: entity work.bd_auto_cc_1_xpm_cdc_sync_rst
     port map (
      dest_clk => s_axis_aclk,
      dest_rst => \gen_async_clock_and_reset.m_aresetn_i\,
      src_rst => \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst_i_1_n_0\
    );
\gen_async_clock_and_reset.inst_xpm_cdc_sync_rst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_aresetn,
      O => \gen_async_clock_and_reset.inst_xpm_cdc_sync_rst_i_1_n_0\
    );
\gen_async_clock_and_reset.s_and_m_aresetn_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_aresetn,
      I1 => \gen_async_clock_and_reset.m_aresetn_i\,
      O => \gen_async_clock_and_reset.s_and_m_aresetn_r_i_1_n_0\
    );
\gen_async_clock_and_reset.s_and_m_aresetn_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => \gen_async_clock_and_reset.s_and_m_aresetn_r_i_1_n_0\,
      Q => s_and_m_aresetn_i,
      R => '0'
    );
\gen_fifo_generator.fifo_generator_inst\: entity work.bd_auto_cc_1_fifo_generator_v13_2_1
     port map (
      almost_empty => \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED\,
      axi_ar_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED\(4 downto 0),
      axi_ar_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED\,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED\,
      axi_ar_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED\,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED\,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_ar_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED\,
      axi_ar_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED\,
      axi_ar_wr_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED\,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED\,
      axi_aw_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED\,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED\,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED\,
      axi_aw_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED\,
      axi_aw_wr_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_b_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED\(4 downto 0),
      axi_b_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED\,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED\,
      axi_b_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED\,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED\,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_b_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED\,
      axi_b_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED\,
      axi_b_wr_data_count(4 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_r_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED\(10 downto 0),
      axi_r_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED\,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED\,
      axi_r_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED\,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED\,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED\(10 downto 0),
      axi_r_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED\,
      axi_r_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED\,
      axi_r_wr_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED\(10 downto 0),
      axi_w_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED\(10 downto 0),
      axi_w_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED\,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED\,
      axi_w_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED\,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED\,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED\(10 downto 0),
      axi_w_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED\,
      axi_w_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED\,
      axi_w_wr_data_count(10 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED\(10 downto 0),
      axis_data_count(5 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axis_data_count_UNCONNECTED\(5 downto 0),
      axis_dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED\,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED\,
      axis_prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED\,
      axis_prog_empty_thresh(4 downto 0) => B"00000",
      axis_prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED\,
      axis_prog_full_thresh(4 downto 0) => B"00000",
      axis_rd_data_count(5 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED\(5 downto 0),
      axis_sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED\,
      axis_underflow => \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED\,
      axis_wr_data_count(5 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED\(5 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED\(9 downto 0),
      dbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED\,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED\(17 downto 0),
      empty => \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED\,
      full => \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => m_axis_aclk,
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED\(31 downto 0),
      m_axi_arburst(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED\(1 downto 0),
      m_axi_arcache(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED\(3 downto 0),
      m_axi_arid(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED\(3 downto 0),
      m_axi_arlen(7 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED\(7 downto 0),
      m_axi_arlock(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED\(1 downto 0),
      m_axi_arprot(2 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED\(2 downto 0),
      m_axi_arqos(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED\(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED\(3 downto 0),
      m_axi_arsize(2 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED\(2 downto 0),
      m_axi_aruser(0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED\(0),
      m_axi_arvalid => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED\,
      m_axi_awaddr(31 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED\(31 downto 0),
      m_axi_awburst(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED\(1 downto 0),
      m_axi_awcache(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED\(3 downto 0),
      m_axi_awid(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED\(3 downto 0),
      m_axi_awlen(7 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED\(7 downto 0),
      m_axi_awlock(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED\(1 downto 0),
      m_axi_awprot(2 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED\(2 downto 0),
      m_axi_awqos(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED\(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED\(3 downto 0),
      m_axi_awsize(2 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED\(2 downto 0),
      m_axi_awuser(0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED\(0),
      m_axi_awvalid => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED\,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED\,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED\,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED\(63 downto 0),
      m_axi_wid(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED\(3 downto 0),
      m_axi_wlast => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED\,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED\(7 downto 0),
      m_axi_wuser(0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED\(0),
      m_axi_wvalid => \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED\,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(4 downto 0) => m_axis_tdest(4 downto 0),
      m_axis_tid(4 downto 0) => m_axis_tid(4 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tstrb_UNCONNECTED\(3 downto 0),
      m_axis_tuser(3 downto 0) => m_axis_tuser(3 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      overflow => \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED\,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED\,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED\(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED\,
      rst => '0',
      s_aclk => s_axis_aclk,
      s_aclk_en => '0',
      s_aresetn => s_and_m_aresetn_i,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED\,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED\,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED\(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED\(1 downto 0),
      s_axi_buser(0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED\(0),
      s_axi_bvalid => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED\,
      s_axi_rdata(63 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED\(63 downto 0),
      s_axi_rid(3 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED\(3 downto 0),
      s_axi_rlast => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED\,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED\(1 downto 0),
      s_axi_ruser(0) => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED\(0),
      s_axi_rvalid => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED\,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED\,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(4 downto 0) => s_axis_tdest(4 downto 0),
      s_axis_tid(4 downto 0) => s_axis_tid(4 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      sbiterr => \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      srst => '0',
      underflow => \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED\,
      valid => \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED\,
      wr_ack => \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED\,
      wr_clk => '0',
      wr_data_count(9 downto 0) => \NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED\(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter is
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
  attribute C_ACLKEN_CONV_MODE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "32'b00000000000000000000000011111011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "artix7";
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute C_S_AXIS_ACLK_RATIO : integer;
  attribute C_S_AXIS_ACLK_RATIO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is "axis_clock_converter_v1_1_16_axis_clock_converter";
  attribute P_FIFO_DEPTH : integer;
  attribute P_FIFO_DEPTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 32;
  attribute P_FIFO_MODE : integer;
  attribute P_FIFO_MODE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_INST_FIFO_GEN : integer;
  attribute P_INST_FIFO_GEN of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_M_AXIS_ACLK_RATIO : integer;
  attribute P_M_AXIS_ACLK_RATIO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 2;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter : entity is 51;
end bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter;

architecture STRUCTURE of bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fifo_gen_ck_conv.axis_data_fifo_0\: entity work.bd_auto_cc_1_axis_data_fifo_v1_1_16_axis_data_fifo
     port map (
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(4 downto 0) => m_axis_tdest(4 downto 0),
      m_axis_tid(4 downto 0) => m_axis_tid(4 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser(3 downto 0) => m_axis_tuser(3 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(4 downto 0) => s_axis_tdest(4 downto 0),
      s_axis_tid(4 downto 0) => s_axis_tid(4 downto 0),
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_auto_cc_1 is
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
  attribute NotValidForBitStream of bd_auto_cc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_auto_cc_1 : entity is "bd_auto_cc_1,axis_clock_converter_v1_1_16_axis_clock_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_auto_cc_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_auto_cc_1 : entity is "axis_clock_converter_v1_1_16_axis_clock_converter,Vivado 2017.4";
end bd_auto_cc_1;

architecture STRUCTURE of bd_auto_cc_1 is
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
  attribute C_IS_ACLK_ASYNC of inst : label is 1;
  attribute C_M_AXIS_ACLK_RATIO : integer;
  attribute C_M_AXIS_ACLK_RATIO of inst : label is 2;
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
  attribute P_INST_FIFO_GEN of inst : label is 1;
  attribute P_M_AXIS_ACLK_RATIO : integer;
  attribute P_M_AXIS_ACLK_RATIO of inst : label is 2;
  attribute P_SAMPLE_CYCLE_RATIO : integer;
  attribute P_SAMPLE_CYCLE_RATIO of inst : label is 2;
  attribute P_S_AXIS_ACLK_RATIO : integer;
  attribute P_S_AXIS_ACLK_RATIO of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 51;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_CLKIF, FREQ_HZ 75000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, ASSOCIATED_CLKEN m_axis_aclken";
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
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 75000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDEST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef";
begin
inst: entity work.bd_auto_cc_1_axis_clock_converter_v1_1_16_axis_clock_converter
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
