// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun 29 00:52:34 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_auto_cc_0 -prefix
//               bd_auto_cc_0_ bd_auto_cc_0_sim_netlist.v
// Design      : bd_auto_cc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000011111011" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "5" *) (* C_AXIS_TID_WIDTH = "5" *) (* C_AXIS_TUSER_WIDTH = "4" *) 
(* C_FAMILY = "artix7" *) (* C_IS_ACLK_ASYNC = "0" *) (* C_M_AXIS_ACLK_RATIO = "1" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_S_AXIS_ACLK_RATIO = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
(* P_FIFO_DEPTH = "32" *) (* P_FIFO_MODE = "1" *) (* P_INST_FIFO_GEN = "0" *) 
(* P_M_AXIS_ACLK_RATIO = "1" *) (* P_SAMPLE_CYCLE_RATIO = "4" *) (* P_S_AXIS_ACLK_RATIO = "4" *) 
(* P_TPAYLOAD_WIDTH = "51" *) 
module bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter
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
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [4:0]s_axis_tid;
  input [4:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [4:0]m_axis_tid;
  output [4:0]m_axis_tdest;
  output [3:0]m_axis_tuser;

  wire \<const0> ;
  wire \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire [4:0]m_axis_tdest;
  wire [4:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [4:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio \gen_sync_ck_conv.axisc_sample_cycle_ratio_m 
       (.\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg (\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
  bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter \gen_sync_ck_conv.axisc_sync_clock_converter_0 
       (.D({s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tlast,s_axis_tkeep,s_axis_tdata}),
        .Q({m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tlast,m_axis_tkeep,m_axis_tdata}),
        .\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg (\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sample_cycle_ratio
   (\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ,
    m_axis_aclk,
    s_axis_aclk);
  output \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;
  input m_axis_aclk;
  input s_axis_aclk;

  wire \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;
  wire \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ;
  wire \gen_sample_cycle.sample_cycle_d_reg ;
  wire m_axis_aclk;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire s_axis_aclk;
  wire slow_aclk_div2;
  wire slow_aclk_div20;

  FDRE \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ),
        .Q(\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .R(1'b0));
  FDRE \gen_sample_cycle.gen_delay[2].sample_cycle_d_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sample_cycle.sample_cycle_d_reg ),
        .Q(\gen_sample_cycle.gen_delay[2].sample_cycle_d_reg ),
        .R(1'b0));
  FDRE \gen_sample_cycle.posedge_finder_first_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(slow_aclk_div2),
        .Q(posedge_finder_first),
        .R(1'b0));
  FDRE \gen_sample_cycle.posedge_finder_second_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(posedge_finder_second),
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
       (.C(m_axis_aclk),
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

module bd_auto_cc_0_axis_clock_converter_v1_1_16_axisc_sync_clock_converter
   (s_axis_tready,
    m_axis_tvalid,
    Q,
    s_axis_aclk,
    m_axis_aclk,
    s_axis_aresetn,
    m_axis_aresetn,
    s_axis_tvalid,
    m_axis_tready,
    D,
    \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg );
  output s_axis_tready;
  output m_axis_tvalid;
  output [50:0]Q;
  input s_axis_aclk;
  input m_axis_aclk;
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input [50:0]D;
  input \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;

  wire [50:0]D;
  wire [50:0]Q;
  wire \gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ;
  wire \gen_sync_clock_converter.load_payload ;
  wire \gen_sync_clock_converter.load_storage ;
  wire \gen_sync_clock_converter.m_areset_r ;
  wire [50:0]\gen_sync_clock_converter.m_storage_r ;
  wire \gen_sync_clock_converter.m_valid_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_areset_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_ready_r_i_1_n_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire \gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [50:0]p_0_in;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

  FDRE \gen_sync_clock_converter.m_areset_r_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_areset_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_areset_r ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [0]),
        .I1(D[0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[10]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [10]),
        .I1(D[10]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[11]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [11]),
        .I1(D[11]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[12]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [12]),
        .I1(D[12]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[13]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [13]),
        .I1(D[13]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[14]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [14]),
        .I1(D[14]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[15]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [15]),
        .I1(D[15]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[16]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [16]),
        .I1(D[16]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[17]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [17]),
        .I1(D[17]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[18]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [18]),
        .I1(D[18]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[19]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [19]),
        .I1(D[19]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [1]),
        .I1(D[1]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[20]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [20]),
        .I1(D[20]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[21]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [21]),
        .I1(D[21]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[22]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [22]),
        .I1(D[22]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[23]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [23]),
        .I1(D[23]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[24]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [24]),
        .I1(D[24]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[25]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [25]),
        .I1(D[25]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[26]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [26]),
        .I1(D[26]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[27]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [27]),
        .I1(D[27]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[27]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[28]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [28]),
        .I1(D[28]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[28]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[29]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [29]),
        .I1(D[29]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[2]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [2]),
        .I1(D[2]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[30]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [30]),
        .I1(D[30]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_sync_clock_converter.m_payload_r[31]_i_1 
       (.I0(m_axis_tready),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .O(\gen_sync_clock_converter.load_payload ));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[31]_i_2 
       (.I0(\gen_sync_clock_converter.m_storage_r [31]),
        .I1(D[31]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[32]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [32]),
        .I1(D[32]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[32]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[33]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [33]),
        .I1(D[33]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[33]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[34]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [34]),
        .I1(D[34]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[34]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[35]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [35]),
        .I1(D[35]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[35]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[36]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [36]),
        .I1(D[36]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[36]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[37]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [37]),
        .I1(D[37]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[37]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[38]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [38]),
        .I1(D[38]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[38]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[39]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [39]),
        .I1(D[39]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[39]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[3]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [3]),
        .I1(D[3]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[40]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [40]),
        .I1(D[40]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[40]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[41]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [41]),
        .I1(D[41]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[41]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[42]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [42]),
        .I1(D[42]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[42]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[43]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [43]),
        .I1(D[43]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[43]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[44]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [44]),
        .I1(D[44]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[44]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[45]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [45]),
        .I1(D[45]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[45]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[46]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [46]),
        .I1(D[46]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[46]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[47]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [47]),
        .I1(D[47]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[47]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[48]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [48]),
        .I1(D[48]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[48]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[49]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [49]),
        .I1(D[49]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[49]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[4]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [4]),
        .I1(D[4]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[50]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [50]),
        .I1(D[50]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[50]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[5]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [5]),
        .I1(D[5]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[6]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [6]),
        .I1(D[6]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[7]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [7]),
        .I1(D[7]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[8]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [8]),
        .I1(D[8]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hCACCCCCC)) 
    \gen_sync_clock_converter.m_payload_r[9]_i_1 
       (.I0(\gen_sync_clock_converter.m_storage_r [9]),
        .I1(D[9]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(m_axis_tready),
        .O(p_0_in[9]));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[0] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[10] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[11] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[12] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[13] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[14] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[15] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[16] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[17] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[18] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[19] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[1] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[20] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[21] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[22] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[23] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[24] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[25] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[26] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[27] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[28] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[29] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[2] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[30] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[31] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[32] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[33] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[34] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[35] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[36] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[37] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[38] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[39] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[3] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[40] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[41] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[42] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[43] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[44] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[45] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[46] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[47] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[48] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[49] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[4] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[50] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[5] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[6] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[7] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[8] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_payload_r_reg[9] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_payload ),
        .D(p_0_in[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_sync_clock_converter.m_storage_r[50]_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_storage ));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[0] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[0]),
        .Q(\gen_sync_clock_converter.m_storage_r [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[10] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[10]),
        .Q(\gen_sync_clock_converter.m_storage_r [10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[11] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[11]),
        .Q(\gen_sync_clock_converter.m_storage_r [11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[12] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[12]),
        .Q(\gen_sync_clock_converter.m_storage_r [12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[13] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[13]),
        .Q(\gen_sync_clock_converter.m_storage_r [13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[14] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[14]),
        .Q(\gen_sync_clock_converter.m_storage_r [14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[15] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[15]),
        .Q(\gen_sync_clock_converter.m_storage_r [15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[16] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[16]),
        .Q(\gen_sync_clock_converter.m_storage_r [16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[17] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[17]),
        .Q(\gen_sync_clock_converter.m_storage_r [17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[18] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[18]),
        .Q(\gen_sync_clock_converter.m_storage_r [18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[19] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[19]),
        .Q(\gen_sync_clock_converter.m_storage_r [19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[1] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[1]),
        .Q(\gen_sync_clock_converter.m_storage_r [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[20] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[20]),
        .Q(\gen_sync_clock_converter.m_storage_r [20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[21] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[21]),
        .Q(\gen_sync_clock_converter.m_storage_r [21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[22] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[22]),
        .Q(\gen_sync_clock_converter.m_storage_r [22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[23] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[23]),
        .Q(\gen_sync_clock_converter.m_storage_r [23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[24] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[24]),
        .Q(\gen_sync_clock_converter.m_storage_r [24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[25] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[25]),
        .Q(\gen_sync_clock_converter.m_storage_r [25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[26] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[26]),
        .Q(\gen_sync_clock_converter.m_storage_r [26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[27] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[27]),
        .Q(\gen_sync_clock_converter.m_storage_r [27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[28] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[28]),
        .Q(\gen_sync_clock_converter.m_storage_r [28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[29] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[29]),
        .Q(\gen_sync_clock_converter.m_storage_r [29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[2] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[2]),
        .Q(\gen_sync_clock_converter.m_storage_r [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[30] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[30]),
        .Q(\gen_sync_clock_converter.m_storage_r [30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[31] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[31]),
        .Q(\gen_sync_clock_converter.m_storage_r [31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[32] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[32]),
        .Q(\gen_sync_clock_converter.m_storage_r [32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[33] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[33]),
        .Q(\gen_sync_clock_converter.m_storage_r [33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[34] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[34]),
        .Q(\gen_sync_clock_converter.m_storage_r [34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[35] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[35]),
        .Q(\gen_sync_clock_converter.m_storage_r [35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[36] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[36]),
        .Q(\gen_sync_clock_converter.m_storage_r [36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[37] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[37]),
        .Q(\gen_sync_clock_converter.m_storage_r [37]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[38] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[38]),
        .Q(\gen_sync_clock_converter.m_storage_r [38]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[39] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[39]),
        .Q(\gen_sync_clock_converter.m_storage_r [39]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[3] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[3]),
        .Q(\gen_sync_clock_converter.m_storage_r [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[40] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[40]),
        .Q(\gen_sync_clock_converter.m_storage_r [40]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[41] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[41]),
        .Q(\gen_sync_clock_converter.m_storage_r [41]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[42] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[42]),
        .Q(\gen_sync_clock_converter.m_storage_r [42]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[43] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[43]),
        .Q(\gen_sync_clock_converter.m_storage_r [43]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[44] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[44]),
        .Q(\gen_sync_clock_converter.m_storage_r [44]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[45] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[45]),
        .Q(\gen_sync_clock_converter.m_storage_r [45]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[46] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[46]),
        .Q(\gen_sync_clock_converter.m_storage_r [46]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[47] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[47]),
        .Q(\gen_sync_clock_converter.m_storage_r [47]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[48] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[48]),
        .Q(\gen_sync_clock_converter.m_storage_r [48]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[49] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[49]),
        .Q(\gen_sync_clock_converter.m_storage_r [49]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[4] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[4]),
        .Q(\gen_sync_clock_converter.m_storage_r [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[50] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[50]),
        .Q(\gen_sync_clock_converter.m_storage_r [50]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[5] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[5]),
        .Q(\gen_sync_clock_converter.m_storage_r [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[6] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[6]),
        .Q(\gen_sync_clock_converter.m_storage_r [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[7] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[7]),
        .Q(\gen_sync_clock_converter.m_storage_r [7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[8] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[8]),
        .Q(\gen_sync_clock_converter.m_storage_r [8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_storage_r_reg[9] 
       (.C(m_axis_aclk),
        .CE(\gen_sync_clock_converter.load_storage ),
        .D(D[9]),
        .Q(\gen_sync_clock_converter.m_storage_r [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F4CC)) 
    \gen_sync_clock_converter.m_valid_r_i_1 
       (.I0(m_axis_tready),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(s_axis_tvalid),
        .I3(\gen_sync_clock_converter.state [1]),
        .I4(\gen_sync_clock_converter.m_areset_r ),
        .O(\gen_sync_clock_converter.m_valid_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_valid_r_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_valid_r_i_1_n_0 ),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_sync_clock_converter.s_areset_r_i_1 
       (.I0(s_axis_aresetn),
        .I1(m_axis_aresetn),
        .O(\gen_sync_clock_converter.s_areset_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.s_areset_r_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_areset_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_areset_r ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_sync_clock_converter.s_ready_r_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(\gen_sample_cycle.gen_delay[1].sample_cycle_d_reg ),
        .I2(\gen_sync_clock_converter.s_areset_r ),
        .O(\gen_sync_clock_converter.s_ready_r_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.s_ready_r_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_ready_r_i_1_n_0 ),
        .Q(s_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000D8F8)) 
    \gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(s_axis_tvalid),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(m_axis_tready),
        .I4(\gen_sync_clock_converter.m_areset_r ),
        .O(\gen_sync_clock_converter.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FF75)) 
    \gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.state [0]),
        .I1(s_axis_tvalid),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(m_axis_tready),
        .I4(\gen_sync_clock_converter.m_areset_r ),
        .O(\gen_sync_clock_converter.state[1]_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.state_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.state_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bd_auto_cc_0,axis_clock_converter_v1_1_16_axis_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_clock_converter_v1_1_16_axis_clock_converter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bd_auto_cc_0
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input m_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_CLKEN s_axis_aclken" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [4:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDEST" *) input [4:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) input [3:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, ASSOCIATED_CLKEN m_axis_aclken" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [4:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDEST" *) output [4:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) output [3:0]m_axis_tuser;

  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire [4:0]m_axis_tdest;
  wire [4:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [4:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000011111011" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "5" *) 
  (* C_AXIS_TID_WIDTH = "5" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_M_AXIS_ACLK_RATIO = "1" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_S_AXIS_ACLK_RATIO = "4" *) 
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
  (* P_M_AXIS_ACLK_RATIO = "1" *) 
  (* P_SAMPLE_CYCLE_RATIO = "4" *) 
  (* P_S_AXIS_ACLK_RATIO = "4" *) 
  (* P_TPAYLOAD_WIDTH = "51" *) 
  bd_auto_cc_0_axis_clock_converter_v1_1_16_axis_clock_converter inst
       (.m_axis_aclk(m_axis_aclk),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
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
