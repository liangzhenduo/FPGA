////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: lcd_timesim.v
// /___/   /\     Timestamp: Wed May 04 13:30:13 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf lcd.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim lcd.ncd lcd_timesim.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: lcd.ncd
// Output file	: C:\workspace\lcd\netgen\par\lcd_timesim.v
// # of Modules	: 1
// Design Name	: lcd
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module lcd (
  a, b, c, d, e, f, g, h, clk, clr, clk95, clk190, x, r, l, z
);
  input a;
  input b;
  input c;
  input d;
  input e;
  input f;
  input g;
  input h;
  input clk;
  input clr;
  output clk95;
  output clk190;
  output [3 : 0] x;
  output [3 : 0] r;
  output [3 : 0] l;
  output [6 : 0] z;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT;
  wire a_IBUF_0;
  wire e_IBUF_0;
  wire d_IBUF_0;
  wire h_IBUF_0;
  wire b_IBUF_0;
  wire f_IBUF_0;
  wire clk_BUFGP;
  wire \Mcount_counter_cy[3] ;
  wire clr_IBUF_0;
  wire \Mcount_counter_cy[7] ;
  wire \Mcount_counter_cy[11] ;
  wire \Mcount_counter_cy[15] ;
  wire counter_18_1_417;
  wire \Result<18>_0 ;
  wire r_2_420;
  wire g_IBUF_0;
  wire r_3_422;
  wire \clk_BUFGP/IBUFG_0 ;
  wire x_0_2_424;
  wire x_0_1_425;
  wire \x<1>_inv ;
  wire l_0_427;
  wire l_1_428;
  wire l_2_429;
  wire l_3_430;
  wire z_0_431;
  wire z_1_432;
  wire z_2_433;
  wire z_3_434;
  wire z_4_435;
  wire z_5_436;
  wire z_6_437;
  wire r_0_438;
  wire c_IBUF_0;
  wire r_1_440;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT1;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT2;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT3;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT4;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT5;
  wire Mram_clk190_GND_1_o_wide_mux_6_OUT6;
  wire x_0_447;
  wire e_IBUF_direct;
  wire f_IBUF_direct;
  wire g_IBUF_direct;
  wire h_IBUF_direct;
  wire a_IBUF_direct;
  wire b_IBUF_direct;
  wire \counter<3>_rt_16 ;
  wire \ProtoComp1.CYINITGND.0 ;
  wire \counter<1>_rt_5 ;
  wire \counter<2>_rt_1 ;
  wire \counter<6>_rt_51 ;
  wire \counter<4>_rt_47 ;
  wire \counter<5>_rt_40 ;
  wire \counter<7>_rt_38 ;
  wire \counter<10>_rt_79 ;
  wire \counter<8>_rt_75 ;
  wire \counter<9>_rt_68 ;
  wire \counter<11>_rt_66 ;
  wire \counter<14>_rt_107 ;
  wire \counter<12>_rt_103 ;
  wire \counter<13>_rt_96 ;
  wire \counter<15>_rt_94 ;
  wire \counter<16>_rt_131 ;
  wire \counter<17>_rt_128 ;
  wire counter_18_1_rt_123;
  wire \counter<19>_rt_114 ;
  wire e_IBUF_139;
  wire f_IBUF_144;
  wire g_IBUF_147;
  wire h_IBUF_152;
  wire \clk_BUFGP/IBUFG_155 ;
  wire clr_IBUF_160;
  wire a_IBUF_195;
  wire b_IBUF_200;
  wire c_IBUF_203;
  wire d_IBUF_208;
  wire \ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \f_IBUF/ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \f_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \g_IBUF/ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \g_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \h_IBUF/ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \h_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \a_IBUF/ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \a_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \b_IBUF/ProtoComp6.D2OBYPSEL_GND.0 ;
  wire \b_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ;
  wire \clk190_h_wide_mux_5_OUT<3>_pack_9 ;
  wire \NlwBufferSignal_counter_3/CLK ;
  wire \NlwBufferSignal_counter_2/CLK ;
  wire \NlwBufferSignal_counter_1/CLK ;
  wire \NlwBufferSignal_counter_0/CLK ;
  wire \NlwBufferSignal_counter_7/CLK ;
  wire \NlwBufferSignal_counter_6/CLK ;
  wire \NlwBufferSignal_counter_5/CLK ;
  wire \NlwBufferSignal_counter_4/CLK ;
  wire \NlwBufferSignal_counter_11/CLK ;
  wire \NlwBufferSignal_counter_10/CLK ;
  wire \NlwBufferSignal_counter_9/CLK ;
  wire \NlwBufferSignal_counter_8/CLK ;
  wire \NlwBufferSignal_counter_15/CLK ;
  wire \NlwBufferSignal_counter_14/CLK ;
  wire \NlwBufferSignal_counter_13/CLK ;
  wire \NlwBufferSignal_counter_12/CLK ;
  wire \NlwBufferSignal_counter_19/CLK ;
  wire \NlwBufferSignal_counter_18/CLK ;
  wire \NlwBufferSignal_counter_17/CLK ;
  wire \NlwBufferSignal_counter_16/CLK ;
  wire \NlwBufferSignal_r_2_OBUF/I ;
  wire \NlwBufferSignal_r_3_OBUF/I ;
  wire \NlwBufferSignal_clk95_OBUF/I ;
  wire \NlwBufferSignal_x_0_OBUF/I ;
  wire \NlwBufferSignal_x_1_OBUF/I ;
  wire \NlwBufferSignal_x_2_OBUF/I ;
  wire \NlwBufferSignal_clk190_OBUF/I ;
  wire \NlwBufferSignal_l_0_OBUF/I ;
  wire \NlwBufferSignal_x_3_OBUF/I ;
  wire \NlwBufferSignal_l_1_OBUF/I ;
  wire \NlwBufferSignal_l_2_OBUF/I ;
  wire \NlwBufferSignal_l_3_OBUF/I ;
  wire \NlwBufferSignal_z_0_OBUF/I ;
  wire \NlwBufferSignal_z_1_OBUF/I ;
  wire \NlwBufferSignal_z_2_OBUF/I ;
  wire \NlwBufferSignal_z_3_OBUF/I ;
  wire \NlwBufferSignal_z_4_OBUF/I ;
  wire \NlwBufferSignal_z_5_OBUF/I ;
  wire \NlwBufferSignal_z_6_OBUF/I ;
  wire \NlwBufferSignal_r_0_OBUF/I ;
  wire \NlwBufferSignal_r_1_OBUF/I ;
  wire \NlwBufferSignal_l_0/CLK ;
  wire \NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC/INA ;
  wire \NlwBufferSignal_ProtoComp6.D2OBYP_SRC/INA ;
  wire \NlwBufferSignal_r_2/CLK ;
  wire \NlwBufferSignal_r_2/IN ;
  wire \NlwBufferSignal_l_1/CLK ;
  wire \NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.1/INA ;
  wire \NlwBufferSignal_ProtoComp6.D2OBYP_SRC.1/INA ;
  wire \NlwBufferSignal_l_2/CLK ;
  wire \NlwBufferSignal_r_3/CLK ;
  wire \NlwBufferSignal_r_3/IN ;
  wire \NlwBufferSignal_l_3/CLK ;
  wire \NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.3/INA ;
  wire \NlwBufferSignal_ProtoComp6.D2OBYP_SRC.3/INA ;
  wire \NlwBufferSignal_x_0_2/CLK ;
  wire \NlwBufferSignal_x_0_2/IN ;
  wire \NlwBufferSignal_x_0_1/CLK ;
  wire \NlwBufferSignal_x_0_1/IN ;
  wire \NlwBufferSignal_z_0/CLK ;
  wire \NlwBufferSignal_z_0/IN ;
  wire \NlwBufferSignal_z_1/CLK ;
  wire \NlwBufferSignal_z_1/IN ;
  wire \NlwBufferSignal_z_2/CLK ;
  wire \NlwBufferSignal_z_2/IN ;
  wire \NlwBufferSignal_z_3/CLK ;
  wire \NlwBufferSignal_z_3/IN ;
  wire \NlwBufferSignal_z_4/CLK ;
  wire \NlwBufferSignal_z_4/IN ;
  wire \NlwBufferSignal_z_5/CLK ;
  wire \NlwBufferSignal_z_5/IN ;
  wire \NlwBufferSignal_z_6/CLK ;
  wire \NlwBufferSignal_z_6/IN ;
  wire \NlwBufferSignal_r_0/CLK ;
  wire \NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.4/INA ;
  wire \NlwBufferSignal_ProtoComp6.D2OBYP_SRC.4/INA ;
  wire \NlwBufferSignal_r_1/CLK ;
  wire \NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.5/INA ;
  wire \NlwBufferSignal_ProtoComp6.D2OBYP_SRC.5/INA ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_counter_18_1/CLK ;
  wire \NlwBufferSignal_counter_18_1/IN ;
  wire \NlwBufferSignal_x_0/CLK ;
  wire \NlwBufferSignal_x_0/IN ;
  wire VCC;
  wire GND;
  wire \NLW_N1_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_17.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_counter_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_16.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_15.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_counter_xor<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_counter_xor<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_counter_xor<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_counter_xor<19>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_counter_xor<19>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_20.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_19.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_18.A5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC.1_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC.1_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC.2_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC.2_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC.3_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC.3_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC.4_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC.4_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OFFBYP_SRC.5_IB_UNCONNECTED ;
  wire \NLW_ProtoComp6.D2OBYP_SRC.5_IB_UNCONNECTED ;
  wire [3 : 1] clk190_h_wide_mux_5_OUT;
  wire [19 : 0] counter;
  wire [19 : 0] Result;
  wire [0 : 0] Mcount_counter_lut;
  initial $sdf_annotate("netgen/par/lcd_timesim.sdf");
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b0 ))
  counter_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_3/CLK ),
    .I(Result[3]),
    .O(counter[3]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[3]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<3>_rt_16 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_5.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y7" ))
  \ProtoComp1.CYINITGND  (
    .O(\ProtoComp1.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b0 ))
  counter_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_2/CLK ),
    .I(Result[2]),
    .O(counter[2]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X28Y7" ))
  \Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp1.CYINITGND.0 ),
    .CO({\Mcount_counter_cy[3] , \NLW_Mcount_counter_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_counter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\counter<3>_rt_16 , \counter<2>_rt_1 , \counter<1>_rt_5 , Mcount_counter_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<2>_rt_1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_4.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b0 ))
  counter_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_1/CLK ),
    .I(Result[1]),
    .O(counter[1]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<1>_rt_5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_3.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b0 ))
  counter_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_0/CLK ),
    .I(Result[0]),
    .O(counter[0]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_counter_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[0]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(Mcount_counter_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  counter_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_7/CLK ),
    .I(Result[7]),
    .O(counter[7]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[7]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<7>_rt_38 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_9.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  counter_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_6/CLK ),
    .I(Result[6]),
    .O(counter[6]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X28Y8" ))
  \Mcount_counter_cy<7>  (
    .CI(\Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_counter_cy[7] , \NLW_Mcount_counter_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_counter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\counter<7>_rt_38 , \counter<6>_rt_51 , \counter<5>_rt_40 , \counter<4>_rt_47 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<6>_rt_51 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_8.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  counter_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_5/CLK ),
    .I(Result[5]),
    .O(counter[5]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<5>_rt_40 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_7.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  counter_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_4/CLK ),
    .I(Result[4]),
    .O(counter[4]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[4]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<4>_rt_47 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_6.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 1'b0 ))
  counter_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_11/CLK ),
    .I(Result[11]),
    .O(counter[11]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[11]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<11>_rt_66 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_13.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 1'b0 ))
  counter_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_10/CLK ),
    .I(Result[10]),
    .O(counter[10]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X28Y9" ))
  \Mcount_counter_cy<11>  (
    .CI(\Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Mcount_counter_cy[11] , \NLW_Mcount_counter_cy<11>_CO[2]_UNCONNECTED , \NLW_Mcount_counter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_counter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\counter<11>_rt_66 , \counter<10>_rt_79 , \counter<9>_rt_68 , \counter<8>_rt_75 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<10>_rt_79 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_12.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 1'b0 ))
  counter_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_9/CLK ),
    .I(Result[9]),
    .O(counter[9]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<9>_rt_68 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_11.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 1'b0 ))
  counter_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_8/CLK ),
    .I(Result[8]),
    .O(counter[8]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[8]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<8>_rt_75 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_10.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 1'b0 ))
  counter_15 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_15/CLK ),
    .I(Result[15]),
    .O(counter[15]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[15]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<15>_rt_94 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 32'h00000000 ))
  \N1_17.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_17.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 1'b0 ))
  counter_14 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_14/CLK ),
    .I(Result[14]),
    .O(counter[14]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X28Y10" ))
  \Mcount_counter_cy<15>  (
    .CI(\Mcount_counter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Mcount_counter_cy[15] , \NLW_Mcount_counter_cy<15>_CO[2]_UNCONNECTED , \NLW_Mcount_counter_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Mcount_counter_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\counter<15>_rt_94 , \counter<14>_rt_107 , \counter<13>_rt_96 , \counter<12>_rt_103 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[14]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<14>_rt_107 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 32'h00000000 ))
  \N1_16.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_16.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 1'b0 ))
  counter_13 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_13/CLK ),
    .I(Result[13]),
    .O(counter[13]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[13]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<13>_rt_96 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 32'h00000000 ))
  \N1_15.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_15.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 1'b0 ))
  counter_12 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_12/CLK ),
    .I(Result[12]),
    .O(counter[12]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[12]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<12>_rt_103 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y10" ),
    .INIT ( 32'h00000000 ))
  \N1_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_14.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \counter<19>/counter<19>_CMUX_Delay  (
    .I(Result[18]),
    .O(\Result<18>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 1'b0 ))
  counter_19 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_19/CLK ),
    .I(Result[19]),
    .O(counter[19]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \counter<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(counter[19]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\counter<19>_rt_114 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 1'b0 ))
  counter_18 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_18/CLK ),
    .I(Result[18]),
    .O(counter[18]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X28Y11" ))
  \Mcount_counter_xor<19>  (
    .CI(\Mcount_counter_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_counter_xor<19>_CO[3]_UNCONNECTED , \NLW_Mcount_counter_xor<19>_CO[2]_UNCONNECTED , 
\NLW_Mcount_counter_xor<19>_CO[1]_UNCONNECTED , \NLW_Mcount_counter_xor<19>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_counter_xor<19>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({Result[19], Result[18], Result[17], Result[16]}),
    .S({\counter<19>_rt_114 , counter_18_1_rt_123, \counter<17>_rt_128 , \counter<16>_rt_131 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  counter_18_1_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(counter_18_1_417),
    .ADR5(1'b1),
    .O(counter_18_1_rt_123)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 32'h00000000 ))
  \N1_20.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_20.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 1'b0 ))
  counter_17 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_17/CLK ),
    .I(Result[17]),
    .O(counter[17]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[17]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<17>_rt_128 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 32'h00000000 ))
  \N1_19.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_19.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 1'b0 ))
  counter_16 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_16/CLK ),
    .I(Result[16]),
    .O(counter[16]),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \counter<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(counter[16]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\counter<16>_rt_131 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 32'h00000000 ))
  \N1_18.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_18.A5LUT_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  e_74 (
    .PAD(e)
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  e_IBUF (
    .O(e_IBUF_139),
    .I(e)
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp4.IMUX  (
    .I(e_IBUF_139),
    .O(e_IBUF_direct)
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \r<2>  (
    .PAD(r[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  r_2_OBUF (
    .I(\NlwBufferSignal_r_2_OBUF/I ),
    .O(r[2])
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  f_81 (
    .PAD(f)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  f_IBUF (
    .O(f_IBUF_144),
    .I(f)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp4.IMUX.1  (
    .I(f_IBUF_144),
    .O(f_IBUF_direct)
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  g_85 (
    .PAD(g)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  g_IBUF (
    .O(g_IBUF_147),
    .I(g)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp4.IMUX.2  (
    .I(g_IBUF_147),
    .O(g_IBUF_direct)
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \r<3>  (
    .PAD(r[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  r_3_OBUF (
    .I(\NlwBufferSignal_r_3_OBUF/I ),
    .O(r[3])
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  h_92 (
    .PAD(h)
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  h_IBUF (
    .O(h_IBUF_152),
    .I(h)
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \ProtoComp4.IMUX.3  (
    .I(h_IBUF_152),
    .O(h_IBUF_direct)
  );
  X_IPAD #(
    .LOC ( "PAD216" ))
  clk_96 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_155 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \ProtoComp4.IMUX.4  (
    .I(\clk_BUFGP/IBUFG_155 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD123" ))
  clk95_99 (
    .PAD(clk95)
  );
  X_OBUF #(
    .LOC ( "PAD123" ))
  clk95_OBUF (
    .I(\NlwBufferSignal_clk95_OBUF/I ),
    .O(clk95)
  );
  X_IPAD #(
    .LOC ( "PAD127" ))
  clr_103 (
    .PAD(clr)
  );
  X_BUF #(
    .LOC ( "PAD127" ))
  clr_IBUF (
    .O(clr_IBUF_160),
    .I(clr)
  );
  X_BUF #(
    .LOC ( "PAD127" ))
  \ProtoComp4.IMUX.5  (
    .I(clr_IBUF_160),
    .O(clr_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD112" ))
  \x<0>  (
    .PAD(x[0])
  );
  X_OBUF #(
    .LOC ( "PAD112" ))
  x_0_OBUF (
    .I(\NlwBufferSignal_x_0_OBUF/I ),
    .O(x[0])
  );
  X_OPAD #(
    .LOC ( "PAD111" ))
  \x<1>  (
    .PAD(x[1])
  );
  X_OBUF #(
    .LOC ( "PAD111" ))
  x_1_OBUF (
    .I(\NlwBufferSignal_x_1_OBUF/I ),
    .O(x[1])
  );
  X_OPAD #(
    .LOC ( "PAD110" ))
  \x<2>  (
    .PAD(x[2])
  );
  X_OBUF #(
    .LOC ( "PAD110" ))
  x_2_OBUF (
    .I(\NlwBufferSignal_x_2_OBUF/I ),
    .O(x[2])
  );
  X_OPAD #(
    .LOC ( "PAD124" ))
  clk190_115 (
    .PAD(clk190)
  );
  X_OBUF #(
    .LOC ( "PAD124" ))
  clk190_OBUF (
    .I(\NlwBufferSignal_clk190_OBUF/I ),
    .O(clk190)
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \l<0>  (
    .PAD(l[0])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  l_0_OBUF (
    .I(\NlwBufferSignal_l_0_OBUF/I ),
    .O(l[0])
  );
  X_OPAD #(
    .LOC ( "PAD109" ))
  \x<3>  (
    .PAD(x[3])
  );
  X_OBUF #(
    .LOC ( "PAD109" ))
  x_3_OBUF (
    .I(\NlwBufferSignal_x_3_OBUF/I ),
    .O(x[3])
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  \l<1>  (
    .PAD(l[1])
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  l_1_OBUF (
    .I(\NlwBufferSignal_l_1_OBUF/I ),
    .O(l[1])
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  \l<2>  (
    .PAD(l[2])
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  l_2_OBUF (
    .I(\NlwBufferSignal_l_2_OBUF/I ),
    .O(l[2])
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  \l<3>  (
    .PAD(l[3])
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  l_3_OBUF (
    .I(\NlwBufferSignal_l_3_OBUF/I ),
    .O(l[3])
  );
  X_OPAD #(
    .LOC ( "PAD119" ))
  \z<0>  (
    .PAD(z[0])
  );
  X_OBUF #(
    .LOC ( "PAD119" ))
  z_0_OBUF (
    .I(\NlwBufferSignal_z_0_OBUF/I ),
    .O(z[0])
  );
  X_OPAD #(
    .LOC ( "PAD118" ))
  \z<1>  (
    .PAD(z[1])
  );
  X_OBUF #(
    .LOC ( "PAD118" ))
  z_1_OBUF (
    .I(\NlwBufferSignal_z_1_OBUF/I ),
    .O(z[1])
  );
  X_OPAD #(
    .LOC ( "PAD117" ))
  \z<2>  (
    .PAD(z[2])
  );
  X_OBUF #(
    .LOC ( "PAD117" ))
  z_2_OBUF (
    .I(\NlwBufferSignal_z_2_OBUF/I ),
    .O(z[2])
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \z<3>  (
    .PAD(z[3])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  z_3_OBUF (
    .I(\NlwBufferSignal_z_3_OBUF/I ),
    .O(z[3])
  );
  X_OPAD #(
    .LOC ( "PAD115" ))
  \z<4>  (
    .PAD(z[4])
  );
  X_OBUF #(
    .LOC ( "PAD115" ))
  z_4_OBUF (
    .I(\NlwBufferSignal_z_4_OBUF/I ),
    .O(z[4])
  );
  X_OPAD #(
    .LOC ( "PAD114" ))
  \z<5>  (
    .PAD(z[5])
  );
  X_OBUF #(
    .LOC ( "PAD114" ))
  z_5_OBUF (
    .I(\NlwBufferSignal_z_5_OBUF/I ),
    .O(z[5])
  );
  X_OPAD #(
    .LOC ( "PAD113" ))
  \z<6>  (
    .PAD(z[6])
  );
  X_OBUF #(
    .LOC ( "PAD113" ))
  z_6_OBUF (
    .I(\NlwBufferSignal_z_6_OBUF/I ),
    .O(z[6])
  );
  X_IPAD #(
    .LOC ( "PAD154" ))
  a_155 (
    .PAD(a)
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  a_IBUF (
    .O(a_IBUF_195),
    .I(a)
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  \ProtoComp4.IMUX.6  (
    .I(a_IBUF_195),
    .O(a_IBUF_direct)
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \r<0>  (
    .PAD(r[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  r_0_OBUF (
    .I(\NlwBufferSignal_r_0_OBUF/I ),
    .O(r[0])
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  b_162 (
    .PAD(b)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  b_IBUF (
    .O(b_IBUF_200),
    .I(b)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp4.IMUX.7  (
    .I(b_IBUF_200),
    .O(b_IBUF_direct)
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  c_166 (
    .PAD(c)
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  c_IBUF (
    .O(c_IBUF_203),
    .I(c)
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \ProtoComp4.IMUX.8  (
    .I(c_IBUF_203),
    .O(c_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \r<1>  (
    .PAD(r[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  r_1_OBUF (
    .I(\NlwBufferSignal_r_1_OBUF/I ),
    .O(r[1])
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  d_173 (
    .PAD(d)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  d_IBUF (
    .O(d_IBUF_208),
    .I(d)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp4.IMUX.9  (
    .I(d_IBUF_208),
    .O(d_IBUF_0)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y0" ),
    .INIT ( 1'b0 ))
  l_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_l_0/CLK ),
    .I(\ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(l_0_427),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y0" ))
  \ProtoComp6.D2OFFBYP_SRC  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC/INA ),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC_IB_UNCONNECTED ),
    .O(\ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y0" ))
  \ProtoComp6.D2OBYP_SRC  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC/INA ),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC_IB_UNCONNECTED ),
    .O(e_IBUF_0),
    .SEL(\ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y0" ))
  \ProtoComp6.D2OBYPSEL_GND  (
    .O(\ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "OLOGIC_X16Y3" ),
    .INIT ( 1'b0 ))
  r_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_r_2/CLK ),
    .I(\NlwBufferSignal_r_2/IN ),
    .O(r_2_420),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y3" ),
    .INIT ( 1'b0 ))
  l_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_l_1/CLK ),
    .I(\f_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(l_1_428),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y3" ))
  \ProtoComp6.D2OFFBYP_SRC.1  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.1/INA ),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC.1_IB_UNCONNECTED ),
    .O(\f_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\f_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y3" ))
  \ProtoComp6.D2OBYP_SRC.1  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.1/INA ),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC.1_IB_UNCONNECTED ),
    .O(f_IBUF_0),
    .SEL(\f_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y3" ))
  \ProtoComp6.D2OBYPSEL_GND.1  (
    .O(\f_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X7Y2" ),
    .INIT ( 1'b0 ))
  l_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_l_2/CLK ),
    .I(\g_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(l_2_429),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y2" ))
  \ProtoComp6.D2OFFBYP_SRC.2  (
    .IA(g_IBUF_direct),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC.2_IB_UNCONNECTED ),
    .O(\g_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\g_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X7Y2" ))
  \ProtoComp6.D2OBYP_SRC.2  (
    .IA(g_IBUF_direct),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC.2_IB_UNCONNECTED ),
    .O(g_IBUF_0),
    .SEL(\g_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X7Y2" ))
  \ProtoComp6.D2OBYPSEL_GND.2  (
    .O(\g_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "OLOGIC_X16Y2" ),
    .INIT ( 1'b0 ))
  r_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_r_3/CLK ),
    .I(\NlwBufferSignal_r_3/IN ),
    .O(r_3_422),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X3Y0" ),
    .INIT ( 1'b0 ))
  l_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_l_3/CLK ),
    .I(\h_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(l_3_430),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X3Y0" ))
  \ProtoComp6.D2OFFBYP_SRC.3  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.3/INA ),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC.3_IB_UNCONNECTED ),
    .O(\h_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\h_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X3Y0" ))
  \ProtoComp6.D2OBYP_SRC.3  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.3/INA ),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC.3_IB_UNCONNECTED ),
    .O(h_IBUF_0),
    .SEL(\h_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X3Y0" ))
  \ProtoComp6.D2OBYPSEL_GND.3  (
    .O(\h_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y14" ),
    .INIT ( 1'b0 ))
  x_0_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_0_2/CLK ),
    .I(\NlwBufferSignal_x_0_2/IN ),
    .O(x_0_2_424),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y15" ),
    .INIT ( 1'b0 ))
  x_0_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_0_1/CLK ),
    .I(\NlwBufferSignal_x_0_1/IN ),
    .O(x_0_1_425),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y7" ),
    .INIT ( 1'b0 ))
  z_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_0/CLK ),
    .I(\NlwBufferSignal_z_0/IN ),
    .O(z_0_431),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y8" ),
    .INIT ( 1'b0 ))
  z_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_1/CLK ),
    .I(\NlwBufferSignal_z_1/IN ),
    .O(z_1_432),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y9" ),
    .INIT ( 1'b0 ))
  z_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_2/CLK ),
    .I(\NlwBufferSignal_z_2/IN ),
    .O(z_2_433),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y10" ),
    .INIT ( 1'b0 ))
  z_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_3/CLK ),
    .I(\NlwBufferSignal_z_3/IN ),
    .O(z_3_434),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y11" ),
    .INIT ( 1'b0 ))
  z_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_4/CLK ),
    .I(\NlwBufferSignal_z_4/IN ),
    .O(z_4_435),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y12" ),
    .INIT ( 1'b0 ))
  z_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_5/CLK ),
    .I(\NlwBufferSignal_z_5/IN ),
    .O(z_5_436),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X18Y13" ),
    .INIT ( 1'b0 ))
  z_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_6/CLK ),
    .I(\NlwBufferSignal_z_6/IN ),
    .O(z_6_437),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X9Y0" ),
    .INIT ( 1'b0 ))
  r_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_r_0/CLK ),
    .I(\a_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(r_0_438),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X9Y0" ))
  \ProtoComp6.D2OFFBYP_SRC.4  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.4/INA ),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC.4_IB_UNCONNECTED ),
    .O(\a_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\a_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X9Y0" ))
  \ProtoComp6.D2OBYP_SRC.4  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.4/INA ),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC.4_IB_UNCONNECTED ),
    .O(a_IBUF_0),
    .SEL(\a_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X9Y0" ))
  \ProtoComp6.D2OBYPSEL_GND.4  (
    .O(\a_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X8Y3" ),
    .INIT ( 1'b0 ))
  r_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_r_1/CLK ),
    .I(\b_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .O(r_1_440),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X8Y3" ))
  \ProtoComp6.D2OFFBYP_SRC.5  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.5/INA ),
    .IB(\NLW_ProtoComp6.D2OFFBYP_SRC.5_IB_UNCONNECTED ),
    .O(\b_IBUF/ProtoComp6.D2OFFBYP_SRC.OUT ),
    .SEL(\b_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X8Y3" ))
  \ProtoComp6.D2OBYP_SRC.5  (
    .IA(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.5/INA ),
    .IB(\NLW_ProtoComp6.D2OBYP_SRC.5_IB_UNCONNECTED ),
    .O(b_IBUF_0),
    .SEL(\b_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X8Y3" ))
  \ProtoComp6.D2OBYPSEL_GND.5  (
    .O(\b_IBUF/ProtoComp6.D2OBYPSEL_GND.0 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_BUF   \clk190_h_wide_mux_5_OUT<2>/clk190_h_wide_mux_5_OUT<2>_BMUX_Delay  (
    .I(\clk190_h_wide_mux_5_OUT<3>_pack_9 ),
    .O(clk190_h_wide_mux_5_OUT[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y1" ),
    .INIT ( 64'hF0F0FF00F0F0FF00 ))
  \Mmux_clk190_h_wide_mux_5_OUT<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(counter[18]),
    .ADR3(c_IBUF_0),
    .ADR2(g_IBUF_0),
    .O(clk190_h_wide_mux_5_OUT[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y1" ),
    .INIT ( 64'hFA50FC3050A030C0 ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT51 (
    .ADR3(clk190_h_wide_mux_5_OUT[1]),
    .ADR5(clk190_h_wide_mux_5_OUT[3]),
    .ADR4(counter[18]),
    .ADR0(e_IBUF_0),
    .ADR1(a_IBUF_0),
    .ADR2(clk190_h_wide_mux_5_OUT[2]),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y1" ),
    .INIT ( 64'hFF55AA00FF55AA00 ))
  \Mmux_clk190_h_wide_mux_5_OUT<1>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(counter[18]),
    .ADR4(b_IBUF_0),
    .ADR3(f_IBUF_0),
    .ADR5(1'b1),
    .O(clk190_h_wide_mux_5_OUT[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y1" ),
    .INIT ( 32'hE4E4E4E4 ))
  \Mmux_clk190_h_wide_mux_5_OUT<3>11  (
    .ADR1(d_IBUF_0),
    .ADR2(h_IBUF_0),
    .ADR0(counter[18]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\clk190_h_wide_mux_5_OUT<3>_pack_9 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y1" ),
    .INIT ( 64'h0D08207000000F0F ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT12 (
    .ADR5(clk190_h_wide_mux_5_OUT[2]),
    .ADR4(clk190_h_wide_mux_5_OUT[1]),
    .ADR2(clk190_h_wide_mux_5_OUT[3]),
    .ADR3(a_IBUF_0),
    .ADR0(counter[18]),
    .ADR1(e_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y4" ),
    .INIT ( 64'h550044445F505C5C ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT21 (
    .ADR5(clk190_h_wide_mux_5_OUT[1]),
    .ADR2(clk190_h_wide_mux_5_OUT[2]),
    .ADR0(clk190_h_wide_mux_5_OUT[3]),
    .ADR1(a_IBUF_0),
    .ADR4(counter[18]),
    .ADR3(e_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y4" ),
    .INIT ( 64'h0D08D0800F0F0D08 ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT111 (
    .ADR4(clk190_h_wide_mux_5_OUT[1]),
    .ADR5(clk190_h_wide_mux_5_OUT[2]),
    .ADR2(clk190_h_wide_mux_5_OUT[3]),
    .ADR3(a_IBUF_0),
    .ADR0(counter[18]),
    .ADR1(e_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 64'hAA052681892405A0 ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT31 (
    .ADR0(clk190_h_wide_mux_5_OUT[1]),
    .ADR2(clk190_h_wide_mux_5_OUT[3]),
    .ADR3(clk190_h_wide_mux_5_OUT[2]),
    .ADR1(counter[18]),
    .ADR4(e_IBUF_0),
    .ADR5(a_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 64'h000099C388C02230 ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT61 (
    .ADR4(clk190_h_wide_mux_5_OUT[1]),
    .ADR5(clk190_h_wide_mux_5_OUT[2]),
    .ADR1(clk190_h_wide_mux_5_OUT[3]),
    .ADR2(a_IBUF_0),
    .ADR3(counter[18]),
    .ADR0(e_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y5" ),
    .INIT ( 64'hBBAF00000000220A ))
  Mram_clk190_GND_1_o_wide_mux_6_OUT41 (
    .ADR0(clk190_h_wide_mux_5_OUT[1]),
    .ADR4(clk190_h_wide_mux_5_OUT[2]),
    .ADR5(clk190_h_wide_mux_5_OUT[3]),
    .ADR3(counter[18]),
    .ADR1(e_IBUF_0),
    .ADR2(a_IBUF_0),
    .O(Mram_clk190_GND_1_o_wide_mux_6_OUT4)
  );
  X_FF #(
    .LOC ( "SLICE_X29Y11" ),
    .INIT ( 1'b0 ))
  counter_18_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_18_1/CLK ),
    .I(\NlwBufferSignal_counter_18_1/IN ),
    .O(counter_18_1_417),
    .RST(clr_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y14" ),
    .INIT ( 64'h3333333333333333 ))
  \x<1>_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(x_0_447),
    .O(\x<1>_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X37Y14" ),
    .INIT ( 1'b0 ))
  x_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_0/CLK ),
    .I(\NlwBufferSignal_x_0/IN ),
    .O(x_0_447),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \NlwBufferBlock_counter_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_7/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_6/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_11/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_10/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_9/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_8/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_15/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_14/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_13/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_12/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_19/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_18/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_17/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_16/CLK )
  );
  X_BUF   \NlwBufferBlock_r_2_OBUF/I  (
    .I(r_2_420),
    .O(\NlwBufferSignal_r_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_r_3_OBUF/I  (
    .I(r_3_422),
    .O(\NlwBufferSignal_r_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk95_OBUF/I  (
    .I(counter[19]),
    .O(\NlwBufferSignal_clk95_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_x_0_OBUF/I  (
    .I(x_0_2_424),
    .O(\NlwBufferSignal_x_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_x_1_OBUF/I  (
    .I(x_0_1_425),
    .O(\NlwBufferSignal_x_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_x_2_OBUF/I  (
    .I(\x<1>_inv ),
    .O(\NlwBufferSignal_x_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk190_OBUF/I  (
    .I(counter[18]),
    .O(\NlwBufferSignal_clk190_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_l_0_OBUF/I  (
    .I(l_0_427),
    .O(\NlwBufferSignal_l_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_x_3_OBUF/I  (
    .I(\x<1>_inv ),
    .O(\NlwBufferSignal_x_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_l_1_OBUF/I  (
    .I(l_1_428),
    .O(\NlwBufferSignal_l_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_l_2_OBUF/I  (
    .I(l_2_429),
    .O(\NlwBufferSignal_l_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_l_3_OBUF/I  (
    .I(l_3_430),
    .O(\NlwBufferSignal_l_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_0_OBUF/I  (
    .I(z_0_431),
    .O(\NlwBufferSignal_z_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_1_OBUF/I  (
    .I(z_1_432),
    .O(\NlwBufferSignal_z_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_2_OBUF/I  (
    .I(z_2_433),
    .O(\NlwBufferSignal_z_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_3_OBUF/I  (
    .I(z_3_434),
    .O(\NlwBufferSignal_z_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_4_OBUF/I  (
    .I(z_4_435),
    .O(\NlwBufferSignal_z_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_5_OBUF/I  (
    .I(z_5_436),
    .O(\NlwBufferSignal_z_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_6_OBUF/I  (
    .I(z_6_437),
    .O(\NlwBufferSignal_z_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_r_0_OBUF/I  (
    .I(r_0_438),
    .O(\NlwBufferSignal_r_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_r_1_OBUF/I  (
    .I(r_1_440),
    .O(\NlwBufferSignal_r_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_l_0/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_l_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OFFBYP_SRC/INA  (
    .I(e_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC/INA )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OBYP_SRC/INA  (
    .I(e_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC/INA )
  );
  X_BUF   \NlwBufferBlock_r_2/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_r_2/CLK )
  );
  X_BUF   \NlwBufferBlock_r_2/IN  (
    .I(c_IBUF_0),
    .O(\NlwBufferSignal_r_2/IN )
  );
  X_BUF   \NlwBufferBlock_l_1/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_l_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OFFBYP_SRC.1/INA  (
    .I(f_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.1/INA )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OBYP_SRC.1/INA  (
    .I(f_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.1/INA )
  );
  X_BUF   \NlwBufferBlock_l_2/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_l_2/CLK )
  );
  X_BUF   \NlwBufferBlock_r_3/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_r_3/CLK )
  );
  X_BUF   \NlwBufferBlock_r_3/IN  (
    .I(d_IBUF_0),
    .O(\NlwBufferSignal_r_3/IN )
  );
  X_BUF   \NlwBufferBlock_l_3/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_l_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OFFBYP_SRC.3/INA  (
    .I(h_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.3/INA )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OBYP_SRC.3/INA  (
    .I(h_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.3/INA )
  );
  X_BUF   \NlwBufferBlock_x_0_2/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0_2/CLK )
  );
  X_BUF   \NlwBufferBlock_x_0_2/IN  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0_2/IN )
  );
  X_BUF   \NlwBufferBlock_x_0_1/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0_1/CLK )
  );
  X_BUF   \NlwBufferBlock_x_0_1/IN  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0_1/IN )
  );
  X_BUF   \NlwBufferBlock_z_0/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_0/CLK )
  );
  X_BUF   \NlwBufferBlock_z_0/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT),
    .O(\NlwBufferSignal_z_0/IN )
  );
  X_BUF   \NlwBufferBlock_z_1/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_1/CLK )
  );
  X_BUF   \NlwBufferBlock_z_1/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT1),
    .O(\NlwBufferSignal_z_1/IN )
  );
  X_BUF   \NlwBufferBlock_z_2/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_2/CLK )
  );
  X_BUF   \NlwBufferBlock_z_2/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT2),
    .O(\NlwBufferSignal_z_2/IN )
  );
  X_BUF   \NlwBufferBlock_z_3/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_3/CLK )
  );
  X_BUF   \NlwBufferBlock_z_3/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT3),
    .O(\NlwBufferSignal_z_3/IN )
  );
  X_BUF   \NlwBufferBlock_z_4/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_4/CLK )
  );
  X_BUF   \NlwBufferBlock_z_4/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT4),
    .O(\NlwBufferSignal_z_4/IN )
  );
  X_BUF   \NlwBufferBlock_z_5/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_5/CLK )
  );
  X_BUF   \NlwBufferBlock_z_5/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT5),
    .O(\NlwBufferSignal_z_5/IN )
  );
  X_BUF   \NlwBufferBlock_z_6/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_z_6/CLK )
  );
  X_BUF   \NlwBufferBlock_z_6/IN  (
    .I(Mram_clk190_GND_1_o_wide_mux_6_OUT6),
    .O(\NlwBufferSignal_z_6/IN )
  );
  X_BUF   \NlwBufferBlock_r_0/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OFFBYP_SRC.4/INA  (
    .I(a_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.4/INA )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OBYP_SRC.4/INA  (
    .I(a_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.4/INA )
  );
  X_BUF   \NlwBufferBlock_r_1/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OFFBYP_SRC.5/INA  (
    .I(b_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OFFBYP_SRC.5/INA )
  );
  X_BUF   \NlwBufferBlock_ProtoComp6.D2OBYP_SRC.5/INA  (
    .I(b_IBUF_direct),
    .O(\NlwBufferSignal_ProtoComp6.D2OBYP_SRC.5/INA )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_counter_18_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_18_1/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_18_1/IN  (
    .I(\Result<18>_0 ),
    .O(\NlwBufferSignal_counter_18_1/IN )
  );
  X_BUF   \NlwBufferBlock_x_0/CLK  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0/CLK )
  );
  X_BUF   \NlwBufferBlock_x_0/IN  (
    .I(counter[18]),
    .O(\NlwBufferSignal_x_0/IN )
  );
  X_ONE   NlwBlock_lcd_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_lcd_GND (
    .O(GND)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

