// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun 29 00:25:31 2018
// Host        : andrewandrepowell-desktop running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /workspace/git_ws/proj_afifo/hdl/bd/ip/bd_xbar_1/bd_xbar_1_sim_netlist.v
// Design      : bd_xbar_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_xbar_1,axis_switch_v1_1_15_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_15_axis_switch,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module bd_xbar_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input [0:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output [0:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input [0:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID" *) input [4:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST" *) input [4:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) input [3:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2]" *) output [2:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2]" *) input [2:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64]" *) output [95:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8]" *) output [11:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2]" *) output [2:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [4:0] [4:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [4:0] [9:5], xilinx.com:interface:axis:1.0 M02_AXIS TID [4:0] [14:10]" *) output [14:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [4:0] [4:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [4:0] [9:5], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [4:0] [14:10]" *) output [14:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TUSER [3:0] [11:8]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) output [11:0]m_axis_tuser;
  output [0:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [95:0]m_axis_tdata;
  wire [14:0]m_axis_tdest;
  wire [14:0]m_axis_tid;
  wire [11:0]m_axis_tkeep;
  wire [2:0]m_axis_tlast;
  wire [2:0]m_axis_tready;
  wire [11:0]m_axis_tuser;
  wire [2:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [4:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [14:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [2:0]NLW_inst_arb_done_UNCONNECTED;
  wire [14:0]NLW_inst_arb_id_UNCONNECTED;
  wire [2:0]NLW_inst_arb_last_UNCONNECTED;
  wire [2:0]NLW_inst_arb_req_UNCONNECTED;
  wire [11:0]NLW_inst_arb_user_UNCONNECTED;
  wire [11:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "251" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "5" *) 
  (* C_AXIS_TID_WIDTH = "5" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "1" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "15'b000100000100000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "3'b111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "15'b000100000100000" *) 
  (* C_NUM_MI_SLOTS = "3" *) 
  (* C_NUM_SI_SLOTS = "1" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
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
  (* LP_CTRL_REG_WIDTH = "20" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "3'b111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "3'b111" *) 
  (* P_TPAYLOAD_WIDTH = "51" *) 
  bd_xbar_1_axis_switch_v1_1_15_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[14:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[2:0]),
        .arb_gnt({1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[14:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[2:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[2:0]),
        .arb_sel({1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[11:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[11:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_15_axisc_register_slice" *) 
module bd_xbar_1_axis_register_slice_v1_1_15_axisc_register_slice
   (\s_axis_tready[0] ,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    areset_r,
    aclk,
    \gen_tdest_routing.tready_or_decode_err__0 ,
    aclken,
    s_axis_tvalid,
    D);
  output \s_axis_tready[0] ;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [4:0]m_axis_tid;
  output [4:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input areset_r;
  input aclk;
  input \gen_tdest_routing.tready_or_decode_err__0 ;
  input aclken;
  input [0:0]s_axis_tvalid;
  input [50:0]D;

  wire [50:0]D;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [50:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a[50]_i_1_n_0 ;
  wire [50:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[0] ;
  wire \gen_tdest_routing.tready_or_decode_err__0 ;
  wire [31:0]m_axis_tdata;
  wire [4:0]m_axis_tdest;
  wire [4:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [3:0]m_axis_tuser;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[50]_i_1 
       (.I0(\s_axis_tready[0] ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_a [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_a [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_a [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_a [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_a [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_a [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_a [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_a [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_a [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_a [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_a [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[50]_i_1_n_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[50]_i_1 
       (.I0(\s_axis_tready[0] ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_b [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_b [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_b [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_b [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_b [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_b [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_b [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_b [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_b [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_b [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_b [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset_r));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(aclken),
        .I1(\s_axis_tready[0] ),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset_r));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFA70F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(s_axis_tvalid),
        .I4(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFF8A8A)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(aclken),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(s_axis_tvalid),
        .I4(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\s_axis_tready[0] ),
        .R(areset_r));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.payload_a [0]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.payload_a [10]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.payload_a [11]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.payload_a [12]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.payload_a [13]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.payload_a [14]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.payload_a [15]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.payload_a [16]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.payload_a [17]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.payload_a [18]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.payload_a [19]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.payload_a [1]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.payload_a [20]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.payload_a [21]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.payload_a [22]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.payload_a [23]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.payload_a [24]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.payload_a [25]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.payload_a [26]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.payload_a [27]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.payload_a [28]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.payload_a [29]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.payload_a [2]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.payload_a [30]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.payload_a [31]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.payload_a [3]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.payload_a [4]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.payload_a [5]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.payload_a [6]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.payload_a [7]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.payload_a [8]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.payload_a [9]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [42]),
        .I1(\gen_AB_reg_slice.payload_a [42]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdest[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [43]),
        .I1(\gen_AB_reg_slice.payload_a [43]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdest[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [44]),
        .I1(\gen_AB_reg_slice.payload_a [44]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdest[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [45]),
        .I1(\gen_AB_reg_slice.payload_a [45]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdest[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [46]),
        .I1(\gen_AB_reg_slice.payload_a [46]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tdest[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.payload_a [37]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tid[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.payload_a [38]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tid[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.payload_a [39]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tid[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [40]),
        .I1(\gen_AB_reg_slice.payload_a [40]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tid[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [41]),
        .I1(\gen_AB_reg_slice.payload_a [41]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tid[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.payload_a [32]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.payload_a [33]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.payload_a [34]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.payload_a [35]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tkeep[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.payload_a [36]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [47]),
        .I1(\gen_AB_reg_slice.payload_a [47]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tuser[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [48]),
        .I1(\gen_AB_reg_slice.payload_a [48]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tuser[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [49]),
        .I1(\gen_AB_reg_slice.payload_a [49]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tuser[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [50]),
        .I1(\gen_AB_reg_slice.payload_a [50]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(m_axis_tuser[3]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_15_axisc_register_slice" *) 
module bd_xbar_1_axis_register_slice_v1_1_15_axisc_register_slice__parameterized0
   (\gen_tdest_routing.decode_err_r_reg ,
    m_axis_tvalid,
    \gen_tdest_routing.tready_or_decode_err__0 ,
    areset_r,
    aclk,
    aclken,
    s_decode_err,
    s_axis_tvalid,
    m_axis_tready,
    D);
  output \gen_tdest_routing.decode_err_r_reg ;
  output [2:0]m_axis_tvalid;
  output \gen_tdest_routing.tready_or_decode_err__0 ;
  input areset_r;
  input aclk;
  input aclken;
  input [0:0]s_decode_err;
  input [0:0]s_axis_tvalid;
  input [2:0]m_axis_tready;
  input [4:0]D;

  wire [4:0]D;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.payload_a[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[2]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[2]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[1] ;
  wire [2:0]\gen_tdest_routing.arb_req_ns ;
  wire \gen_tdest_routing.decode_err_r_reg ;
  wire \gen_tdest_routing.m_axis_tvalid_req ;
  wire [2:2]\gen_tdest_routing.m_tready_from_decoded_slave0__2 ;
  wire \gen_tdest_routing.tready_or_decode_err__0 ;
  wire [2:0]m_axis_tready;
  wire [2:0]m_axis_tvalid;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT6 #(
    .INIT(64'hFFFFBAFF00008A00)) 
    \gen_AB_reg_slice.payload_a[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_AB_reg_slice.payload_a[0]_i_2 
       (.I0(D[4]),
        .I1(D[3]),
        .I2(D[0]),
        .I3(s_axis_tvalid),
        .I4(D[2]),
        .I5(D[1]),
        .O(\gen_tdest_routing.arb_req_ns [0]));
  LUT6 #(
    .INIT(64'hFFFFBAFF00008A00)) 
    \gen_AB_reg_slice.payload_a[1]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [1]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_a[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gen_AB_reg_slice.payload_a[1]_i_2 
       (.I0(D[4]),
        .I1(D[3]),
        .I2(D[0]),
        .I3(s_axis_tvalid),
        .I4(D[2]),
        .I5(D[1]),
        .O(\gen_tdest_routing.arb_req_ns [1]));
  LUT6 #(
    .INIT(64'hFFFFBAFF00008A00)) 
    \gen_AB_reg_slice.payload_a[2]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [2]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_a[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gen_AB_reg_slice.payload_a[2]_i_2 
       (.I0(D[4]),
        .I1(D[3]),
        .I2(D[1]),
        .I3(s_axis_tvalid),
        .I4(D[2]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [2]));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[2]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBAFFFFFF8A000000)) 
    \gen_AB_reg_slice.payload_b[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFFFFF8A000000)) 
    \gen_AB_reg_slice.payload_b[1]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [1]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_b[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFFFFF8A000000)) 
    \gen_AB_reg_slice.payload_b[2]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [2]),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel_wr ),
        .I5(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b[2]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[2]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset_r));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset_r));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFA70F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hDFFF8A8A)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(aclken),
        .I1(\gen_tdest_routing.tready_or_decode_err__0 ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(m_axis_tready[0]),
        .I1(m_axis_tvalid[0]),
        .I2(\gen_tdest_routing.m_tready_from_decoded_slave0__2 ),
        .I3(m_axis_tvalid[1]),
        .I4(m_axis_tready[1]),
        .I5(s_decode_err),
        .O(\gen_tdest_routing.tready_or_decode_err__0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(m_axis_tready[2]),
        .O(\gen_tdest_routing.m_tready_from_decoded_slave0__2 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.m_axis_tvalid_req ),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .R(areset_r));
  LUT6 #(
    .INIT(64'h0000FFFF00020000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(m_axis_tvalid[1]),
        .I2(m_axis_tvalid[2]),
        .I3(m_axis_tvalid[0]),
        .I4(aclken),
        .I5(s_decode_err),
        .O(\gen_tdest_routing.decode_err_r_reg ));
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .O(m_axis_tvalid[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .O(m_axis_tvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .O(m_axis_tvalid[2]));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "251" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "5" *) (* C_AXIS_TID_WIDTH = "5" *) (* C_AXIS_TUSER_WIDTH = "4" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "artix7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "15'b000100000100000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "3'b111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "15'b000100000100000" *) (* C_NUM_MI_SLOTS = "3" *) 
(* C_NUM_SI_SLOTS = "1" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "20" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_15_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "3'b111" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "3'b111" *) (* P_TPAYLOAD_WIDTH = "51" *) 
module bd_xbar_1_axis_switch_v1_1_15_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input [0:0]s_axis_tlast;
  input [4:0]s_axis_tid;
  input [4:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [2:0]m_axis_tvalid;
  input [2:0]m_axis_tready;
  output [95:0]m_axis_tdata;
  output [11:0]m_axis_tstrb;
  output [11:0]m_axis_tkeep;
  output [2:0]m_axis_tlast;
  output [14:0]m_axis_tid;
  output [14:0]m_axis_tdest;
  output [11:0]m_axis_tuser;
  output [2:0]arb_req;
  output [2:0]arb_done;
  input [2:0]arb_gnt;
  input [2:0]arb_sel;
  output [2:0]arb_last;
  output [14:0]arb_id;
  output [14:0]arb_dest;
  output [11:0]arb_user;
  input [0:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire areset_r_i_1_n_0;
  wire aresetn;
  wire [95:64]\^m_axis_tdata ;
  wire [14:10]\^m_axis_tdest ;
  wire [14:10]\^m_axis_tid ;
  wire [11:8]\^m_axis_tkeep ;
  wire [2:2]\^m_axis_tlast ;
  wire [2:0]m_axis_tready;
  wire [11:8]\^m_axis_tuser ;
  wire [2:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [4:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[14] = \<const0> ;
  assign arb_id[13] = \<const0> ;
  assign arb_id[12] = \<const0> ;
  assign arb_id[11] = \<const0> ;
  assign arb_id[10] = \<const0> ;
  assign arb_id[9] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tdata[95:64] = \^m_axis_tdata [95:64];
  assign m_axis_tdata[63:32] = \^m_axis_tdata [95:64];
  assign m_axis_tdata[31:0] = \^m_axis_tdata [95:64];
  assign m_axis_tdest[14:10] = \^m_axis_tdest [14:10];
  assign m_axis_tdest[9:5] = \^m_axis_tdest [14:10];
  assign m_axis_tdest[4:0] = \^m_axis_tdest [14:10];
  assign m_axis_tid[14:10] = \^m_axis_tid [14:10];
  assign m_axis_tid[9:5] = \^m_axis_tid [14:10];
  assign m_axis_tid[4:0] = \^m_axis_tid [14:10];
  assign m_axis_tkeep[11:8] = \^m_axis_tkeep [11:8];
  assign m_axis_tkeep[7:4] = \^m_axis_tkeep [11:8];
  assign m_axis_tkeep[3:0] = \^m_axis_tkeep [11:8];
  assign m_axis_tlast[2] = \^m_axis_tlast [2];
  assign m_axis_tlast[1] = \^m_axis_tlast [2];
  assign m_axis_tlast[0] = \^m_axis_tlast [2];
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[11:8] = \^m_axis_tuser [11:8];
  assign m_axis_tuser[7:4] = \^m_axis_tuser [11:8];
  assign m_axis_tuser[3:0] = \^m_axis_tuser [11:8];
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(areset_r_i_1_n_0));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_i_1_n_0),
        .Q(areset_r),
        .R(1'b0));
  bd_xbar_1_axis_switch_v1_1_15_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tlast,s_axis_tkeep,s_axis_tdata}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tdest(\^m_axis_tdest ),
        .m_axis_tid(\^m_axis_tid ),
        .m_axis_tkeep(\^m_axis_tkeep ),
        .m_axis_tlast(\^m_axis_tlast ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(\^m_axis_tuser ),
        .m_axis_tvalid(m_axis_tvalid),
        .\s_axis_tready[0] (s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_15_axisc_decoder" *) 
module bd_xbar_1_axis_switch_v1_1_15_axisc_decoder
   (s_decode_err,
    m_axis_tvalid,
    \s_axis_tready[0] ,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    areset_r,
    aclk,
    aclken,
    s_axis_tvalid,
    D,
    m_axis_tready);
  output [0:0]s_decode_err;
  output [2:0]m_axis_tvalid;
  output \s_axis_tready[0] ;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [4:0]m_axis_tid;
  output [4:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input areset_r;
  input aclk;
  input aclken;
  input [0:0]s_axis_tvalid;
  input [50:0]D;
  input [2:0]m_axis_tready;

  wire [50:0]D;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ;
  wire \gen_tdest_routing.tready_or_decode_err__0 ;
  wire [31:0]m_axis_tdata;
  wire [4:0]m_axis_tdest;
  wire [4:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire [2:0]m_axis_tvalid;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ),
        .Q(s_decode_err),
        .R(areset_r));
  bd_xbar_1_axis_register_slice_v1_1_15_axisc_register_slice \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0 
       (.D(D),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_tdest_routing.tready_or_decode_err__0 (\gen_tdest_routing.tready_or_decode_err__0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .\s_axis_tready[0] (\s_axis_tready[0] ),
        .s_axis_tvalid(s_axis_tvalid));
  bd_xbar_1_axis_register_slice_v1_1_15_axisc_register_slice__parameterized0 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1 
       (.D(D[46:42]),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_tdest_routing.decode_err_r_reg (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ),
        .\gen_tdest_routing.tready_or_decode_err__0 (\gen_tdest_routing.tready_or_decode_err__0 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
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