////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.40d
//  \   \         Application: netgen
//  /   /         Filename: gate2_timesim.v
// /___/   /\     Timestamp: Wed Apr 27 09:41:01 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf gate2.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim gate2.ncd gate2_timesim.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.17 2011-02-03)
// Input file	: gate2.ncd
// Output file	: D:\Work\FPGA\VLSI\gate2\netgen\par\gate2_timesim.v
// # of Modules	: 1
// Design Name	: gate2
// Xilinx        : D:\FPGA\Xilinx\13.1\ISE_DS\ISE\
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

module gate2 (
  a, b, z
);
  input a;
  input b;
  output [5 : 0] z;
  wire z_2_OBUF_41;
  wire a_IBUF_0;
  wire b_IBUF_0;
  wire z_0_OBUF_0;
  wire z_1_OBUF_46;
  wire z_4_OBUF_0;
  wire z_5_OBUF_48;
  wire z_3_OBUF_0;
  wire a_IBUF_13;
  wire b_IBUF_16;
  wire z_4_OBUF_19;
  wire z_3_OBUF_25;
  wire z_0_OBUF_30;
  wire \NlwBufferSignal_z_0_OBUF/I ;
  wire \NlwBufferSignal_z_1_OBUF/I ;
  wire \NlwBufferSignal_z_2_OBUF/I ;
  wire \NlwBufferSignal_z_3_OBUF/I ;
  wire \NlwBufferSignal_z_4_OBUF/I ;
  wire \NlwBufferSignal_z_5_OBUF/I ;
  initial $sdf_annotate("netgen/par/gate2_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD157" ))
  \z<0>  (
    .PAD(z[0])
  );
  X_OBUF #(
    .LOC ( "PAD157" ))
  z_0_OBUF (
    .I(\NlwBufferSignal_z_0_OBUF/I ),
    .O(z[0])
  );
  X_OPAD #(
    .LOC ( "PAD158" ))
  \z<1>  (
    .PAD(z[1])
  );
  X_OBUF #(
    .LOC ( "PAD158" ))
  z_1_OBUF (
    .I(\NlwBufferSignal_z_1_OBUF/I ),
    .O(z[1])
  );
  X_OPAD #(
    .LOC ( "PAD159" ))
  \z<2>  (
    .PAD(z[2])
  );
  X_OBUF #(
    .LOC ( "PAD159" ))
  z_2_OBUF (
    .I(\NlwBufferSignal_z_2_OBUF/I ),
    .O(z[2])
  );
  X_OPAD #(
    .LOC ( "PAD160" ))
  \z<3>  (
    .PAD(z[3])
  );
  X_OBUF #(
    .LOC ( "PAD160" ))
  z_3_OBUF (
    .I(\NlwBufferSignal_z_3_OBUF/I ),
    .O(z[3])
  );
  X_OPAD #(
    .LOC ( "PAD161" ))
  \z<4>  (
    .PAD(z[4])
  );
  X_OBUF #(
    .LOC ( "PAD161" ))
  z_4_OBUF (
    .I(\NlwBufferSignal_z_4_OBUF/I ),
    .O(z[4])
  );
  X_OPAD #(
    .LOC ( "PAD162" ))
  \z<5>  (
    .PAD(z[5])
  );
  X_OBUF #(
    .LOC ( "PAD162" ))
  z_5_OBUF (
    .I(\NlwBufferSignal_z_5_OBUF/I ),
    .O(z[5])
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  a_22 (
    .PAD(a)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  a_IBUF (
    .O(a_IBUF_13),
    .I(a)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp4.IMUX  (
    .I(a_IBUF_13),
    .O(a_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  b_26 (
    .PAD(b)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  b_IBUF (
    .O(b_IBUF_16),
    .I(b)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp4.IMUX.1  (
    .I(b_IBUF_16),
    .O(b_IBUF_0)
  );
  X_BUF   \z_1_OBUF/z_1_OBUF_DMUX_Delay  (
    .I(z_4_OBUF_19),
    .O(z_4_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y0" ),
    .INIT ( 64'h3C3C3C3C3C3C3C3C ))
  \z<1>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(a_IBUF_0),
    .ADR2(b_IBUF_0),
    .ADR5(1'b1),
    .O(z_1_OBUF_46)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y0" ),
    .INIT ( 32'h3F3F3F3F ))
  \z<4>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(a_IBUF_0),
    .ADR2(b_IBUF_0),
    .O(z_4_OBUF_19)
  );
  X_BUF   \z_5_OBUF/z_5_OBUF_AMUX_Delay  (
    .I(z_3_OBUF_25),
    .O(z_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y1" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \z<5>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(a_IBUF_0),
    .ADR4(b_IBUF_0),
    .ADR5(1'b1),
    .O(z_5_OBUF_48)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y1" ),
    .INIT ( 32'hFFFFF0F0 ))
  \z<3>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(a_IBUF_0),
    .ADR4(b_IBUF_0),
    .O(z_3_OBUF_25)
  );
  X_BUF   \z_2_OBUF/z_2_OBUF_AMUX_Delay  (
    .I(z_0_OBUF_30),
    .O(z_0_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y2" ),
    .INIT ( 64'h00000F0F00000F0F ))
  \z<2>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(a_IBUF_0),
    .ADR2(b_IBUF_0),
    .ADR5(1'b1),
    .O(z_2_OBUF_41)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y2" ),
    .INIT ( 32'hF0F00F0F ))
  \z<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(a_IBUF_0),
    .ADR2(b_IBUF_0),
    .O(z_0_OBUF_30)
  );
  X_BUF   \NlwBufferBlock_z_0_OBUF/I  (
    .I(z_0_OBUF_0),
    .O(\NlwBufferSignal_z_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_1_OBUF/I  (
    .I(z_1_OBUF_46),
    .O(\NlwBufferSignal_z_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_2_OBUF/I  (
    .I(z_2_OBUF_41),
    .O(\NlwBufferSignal_z_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_3_OBUF/I  (
    .I(z_3_OBUF_0),
    .O(\NlwBufferSignal_z_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_4_OBUF/I  (
    .I(z_4_OBUF_0),
    .O(\NlwBufferSignal_z_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_5_OBUF/I  (
    .I(z_5_OBUF_48),
    .O(\NlwBufferSignal_z_5_OBUF/I )
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

