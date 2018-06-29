// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun 29 00:45:22 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /workspace/git_ws/proj_afifo/hdl/bd/ip/bd_auto_cc_3/bd_auto_cc_3_sim_netlist.v
// Design      : bd_auto_cc_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_auto_cc_3,axis_clock_converter_v1_1_16_axis_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_clock_converter_v1_1_16_axis_clock_converter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bd_auto_cc_3
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input m_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_CLKEN s_axis_aclken" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, ASSOCIATED_CLKEN m_axis_aclken" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) output [7:0]m_axis_tdata;

  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_M_AXIS_ACLK_RATIO = "4" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_S_AXIS_ACLK_RATIO = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* P_FIFO_DEPTH = "32" *) 
  (* P_FIFO_MODE = "1" *) 
  (* P_INST_FIFO_GEN = "0" *) 
  (* P_M_AXIS_ACLK_RATIO = "4" *) 
  (* P_SAMPLE_CYCLE_RATIO = "4" *) 
  (* P_S_AXIS_ACLK_RATIO = "1" *) 
  (* P_TPAYLOAD_WIDTH = "8" *) 
  bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter inst
       (.m_axis_aclk(m_axis_aclk),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(1'b1),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_FAMILY = "artix7" *) (* C_IS_ACLK_ASYNC = "0" *) (* C_M_AXIS_ACLK_RATIO = "4" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_S_AXIS_ACLK_RATIO = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
(* ORIG_REF_NAME = "axis_clock_converter_v1_1_16_axis_clock_converter" *) (* P_FIFO_DEPTH = "32" *) (* P_FIFO_MODE = "1" *) 
(* P_INST_FIFO_GEN = "0" *) (* P_M_AXIS_ACLK_RATIO = "4" *) (* P_SAMPLE_CYCLE_RATIO = "4" *) 
(* P_S_AXIS_ACLK_RATIO = "1" *) (* P_TPAYLOAD_WIDTH = "8" *) 
module bd_auto_cc_3_axis_clock_converter_v1_1_16_axis_clock_converter
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclken,
    m_axis_aclken,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclken;
  input m_axis_aclken;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire \<const1> ;
  wire \gen_sync_ck_conv.sample_cycle ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio \gen_sync_ck_conv.axisc_sample_cycle_ratio_m 
       (.\gen_sync_ck_conv.sample_cycle (\gen_sync_ck_conv.sample_cycle ),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
  bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter \gen_sync_ck_conv.axisc_sync_clock_converter_0 
       (.\gen_sync_ck_conv.sample_cycle (\gen_sync_ck_conv.sample_cycle ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio" *) 
module bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio
   (\gen_sync_ck_conv.sample_cycle ,
    s_axis_aclk,
    m_axis_aclk);
  output \gen_sync_ck_conv.sample_cycle ;
  input s_axis_aclk;
  input m_axis_aclk;

  wire \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;
  wire \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ;
  wire \gen_sample_cycle.sample_cycle_d_reg ;
  wire \gen_sync_ck_conv.sample_cycle ;
  wire m_axis_aclk;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire s_axis_aclk;
  wire slow_aclk_div2;
  wire slow_aclk_div20;

  FDRE \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ),
        .Q(\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .R(1'b0));
  FDRE \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sample_cycle.sample_cycle_d_reg ),
        .Q(\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ),
        .R(1'b0));
  FDRE \gen_sample_cycle.posedge_finder_first_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(slow_aclk_div2),
        .Q(posedge_finder_first),
        .R(1'b0));
  FDRE \gen_sample_cycle.posedge_finder_second_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(posedge_finder_second),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_sample_cycle.sample_cycle_r_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .Q(\gen_sync_ck_conv.sample_cycle ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_sample_cycle.slow_aclk_div2_i_1 
       (.I0(slow_aclk_div2),
        .O(slow_aclk_div20));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.slow_aclk_div2_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(slow_aclk_div2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    sample_cycle_d0
       (.I0(posedge_finder_second),
        .I1(slow_aclk_div2),
        .I2(posedge_finder_first),
        .O(\gen_sample_cycle.sample_cycle_d_reg ));
endmodule

(* ORIG_REF_NAME = "axis_clock_converter_v1_1_16_axisc_sync_clock_converter" *) 
module bd_auto_cc_3_axis_clock_converter_v1_1_16_axisc_sync_clock_converter
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_aclk,
    s_axis_aclk,
    s_axis_aresetn,
    m_axis_aresetn,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tdata,
    \gen_sync_ck_conv.sample_cycle );
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  input m_axis_aclk;
  input s_axis_aclk;
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input [7:0]s_axis_tdata;
  input \gen_sync_ck_conv.sample_cycle ;

  wire \gen_sync_ck_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_payload ;
  wire \gen_sync_clock_converter.load_storage ;
  wire \gen_sync_clock_converter.m_areset_r ;
  wire \gen_sync_clock_converter.m_areset_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_ready_hold ;
  wire \gen_sync_clock_converter.m_ready_hold_i_1_n_0 ;
  wire [7:0]\gen_sync_clock_converter.m_storage_r ;
  wire \gen_sync_clock_converter.m_valid_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_ready_r_i_1_n_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire \gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]p_0_in;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  LUT2 #(
    .INIT(4'h7)) 
    \gen_sync_clock_converter.m_areset_r_i_1 
       (.I0(s_axis_aresetn),
        .I1(m_axis_aresetn),
        .O(\gen_sync_clock_converter.m_areset_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_areset_r_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_areset_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_areset_r ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [0]),
        .I1(s_axis_tdata[0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [1]),
        .I1(s_axis_tdata[1]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[2]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [2]),
        .I1(s_axis_tdata[2]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[3]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [3]),
        .I1(s_axis_tdata[3]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[4]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [4]),
        .I1(s_axis_tdata[4]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[5]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [5]),
        .I1(s_axis_tdata[5]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[6]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [6]),
        .I1(s_axis_tdata[6]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_payload_r[7]_i_1 
       (.I0(\gen_sync_clock_converter.m_ready_hold ),
        .I1(m_axis_tready),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(\gen_sync_clock_converter.state [1]),
        .O(\gen_sync_clock_converter.load_payload ));
  LUT6 #(
    .INIT(64'hCACCCACCCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[7]_i_2 
       (.I0(\gen_sync_clock_converter.m_storage_r [7]),
        .I1(s_axis_tdata[7]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.m_ready_hold ),
        .O(p_0_in[7]));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[0] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[1] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[2] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[3] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[4] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[5] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[6] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[7] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_sync_clock_converter.m_ready_hold_i_1 
       (.I0(\gen_sync_clock_converter.m_ready_hold ),
        .I1(m_axis_tready),
        .I2(\gen_sync_ck_conv.sample_cycle ),
        .I3(\gen_sync_clock_converter.m_areset_r ),
        .O(\gen_sync_clock_converter.m_ready_hold_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_ready_hold_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_ready_hold_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_ready_hold ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_sync_clock_converter.m_storage_r[7]_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_storage ));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[0] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[0]),
        .Q(\gen_sync_clock_converter.m_storage_r [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[1] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[1]),
        .Q(\gen_sync_clock_converter.m_storage_r [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[2] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[2]),
        .Q(\gen_sync_clock_converter.m_storage_r [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[3] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[3]),
        .Q(\gen_sync_clock_converter.m_storage_r [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[4] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[4]),
        .Q(\gen_sync_clock_converter.m_storage_r [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[5] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[5]),
        .Q(\gen_sync_clock_converter.m_storage_r [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[6] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[6]),
        .Q(\gen_sync_clock_converter.m_storage_r [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[7] 
       (.C(s_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(s_axis_tdata[7]),
        .Q(\gen_sync_clock_converter.m_storage_r [7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F404)) 
    \gen_sync_clock_converter.m_valid_r_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .I2(\gen_sync_ck_conv.sample_cycle ),
        .I3(\gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .I4(\gen_sync_clock_converter.m_areset_r ),
        .O(\gen_sync_clock_converter.m_valid_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_valid_r_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_valid_r_i_1_n_0 ),
        .Q(m_axis_tvalid),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.s_areset_r_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_areset_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_areset_r ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEFEFFFF)) 
    \gen_sync_clock_converter.s_ready_r_i_1 
       (.I0(\gen_sync_clock_converter.m_ready_hold ),
        .I1(m_axis_tready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(s_axis_tvalid),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(\gen_sync_clock_converter.s_areset_r ),
        .O(\gen_sync_clock_converter.s_ready_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.s_ready_r_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_ready_r_i_1_n_0 ),
        .Q(s_axis_tready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000D8D8D8F8)) 
    \gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(s_axis_tvalid),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(\gen_sync_clock_converter.m_ready_hold ),
        .I4(m_axis_tready),
        .I5(\gen_sync_clock_converter.s_areset_r ),
        .O(\gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF75)) 
    \gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.state [0]),
        .I1(s_axis_tvalid),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(m_axis_tready),
        .I4(\gen_sync_clock_converter.m_ready_hold ),
        .I5(\gen_sync_clock_converter.s_areset_r ),
        .O(\gen_sync_clock_converter.state[1]_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.state_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.state_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
