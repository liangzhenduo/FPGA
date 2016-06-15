//-----------------------------------------------------------------------------
// axi4lite_0_wrapper.v
//-----------------------------------------------------------------------------

(* x_core_info = "axi_interconnect_v1_02_a" *)
module axi4lite_0_wrapper
  (
    INTERCONNECT_ACLK,
    INTERCONNECT_ARESETN,
    S_AXI_ARESET_OUT_N,
    M_AXI_ARESET_OUT_N,
    IRQ,
    S_AXI_ACLK,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWUSER,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WUSER,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BUSER,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARUSER,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RUSER,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_ACLK,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWREGION,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARREGION,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY
  );
  input INTERCONNECT_ACLK;
  input INTERCONNECT_ARESETN;
  output [0:0] S_AXI_ARESET_OUT_N;
  output [4:0] M_AXI_ARESET_OUT_N;
  output IRQ;
  input [0:0] S_AXI_ACLK;
  input [0:0] S_AXI_AWID;
  input [31:0] S_AXI_AWADDR;
  input [7:0] S_AXI_AWLEN;
  input [2:0] S_AXI_AWSIZE;
  input [1:0] S_AXI_AWBURST;
  input [1:0] S_AXI_AWLOCK;
  input [3:0] S_AXI_AWCACHE;
  input [2:0] S_AXI_AWPROT;
  input [3:0] S_AXI_AWQOS;
  input [0:0] S_AXI_AWUSER;
  input [0:0] S_AXI_AWVALID;
  output [0:0] S_AXI_AWREADY;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input [0:0] S_AXI_WLAST;
  input [0:0] S_AXI_WUSER;
  input [0:0] S_AXI_WVALID;
  output [0:0] S_AXI_WREADY;
  output [0:0] S_AXI_BID;
  output [1:0] S_AXI_BRESP;
  output [0:0] S_AXI_BUSER;
  output [0:0] S_AXI_BVALID;
  input [0:0] S_AXI_BREADY;
  input [0:0] S_AXI_ARID;
  input [31:0] S_AXI_ARADDR;
  input [7:0] S_AXI_ARLEN;
  input [2:0] S_AXI_ARSIZE;
  input [1:0] S_AXI_ARBURST;
  input [1:0] S_AXI_ARLOCK;
  input [3:0] S_AXI_ARCACHE;
  input [2:0] S_AXI_ARPROT;
  input [3:0] S_AXI_ARQOS;
  input [0:0] S_AXI_ARUSER;
  input [0:0] S_AXI_ARVALID;
  output [0:0] S_AXI_ARREADY;
  output [0:0] S_AXI_RID;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output [0:0] S_AXI_RLAST;
  output [0:0] S_AXI_RUSER;
  output [0:0] S_AXI_RVALID;
  input [0:0] S_AXI_RREADY;
  input [4:0] M_AXI_ACLK;
  output [4:0] M_AXI_AWID;
  output [159:0] M_AXI_AWADDR;
  output [39:0] M_AXI_AWLEN;
  output [14:0] M_AXI_AWSIZE;
  output [9:0] M_AXI_AWBURST;
  output [9:0] M_AXI_AWLOCK;
  output [19:0] M_AXI_AWCACHE;
  output [14:0] M_AXI_AWPROT;
  output [19:0] M_AXI_AWREGION;
  output [19:0] M_AXI_AWQOS;
  output [4:0] M_AXI_AWUSER;
  output [4:0] M_AXI_AWVALID;
  input [4:0] M_AXI_AWREADY;
  output [4:0] M_AXI_WID;
  output [159:0] M_AXI_WDATA;
  output [19:0] M_AXI_WSTRB;
  output [4:0] M_AXI_WLAST;
  output [4:0] M_AXI_WUSER;
  output [4:0] M_AXI_WVALID;
  input [4:0] M_AXI_WREADY;
  input [4:0] M_AXI_BID;
  input [9:0] M_AXI_BRESP;
  input [4:0] M_AXI_BUSER;
  input [4:0] M_AXI_BVALID;
  output [4:0] M_AXI_BREADY;
  output [4:0] M_AXI_ARID;
  output [159:0] M_AXI_ARADDR;
  output [39:0] M_AXI_ARLEN;
  output [14:0] M_AXI_ARSIZE;
  output [9:0] M_AXI_ARBURST;
  output [9:0] M_AXI_ARLOCK;
  output [19:0] M_AXI_ARCACHE;
  output [14:0] M_AXI_ARPROT;
  output [19:0] M_AXI_ARREGION;
  output [19:0] M_AXI_ARQOS;
  output [4:0] M_AXI_ARUSER;
  output [4:0] M_AXI_ARVALID;
  input [4:0] M_AXI_ARREADY;
  input [4:0] M_AXI_RID;
  input [159:0] M_AXI_RDATA;
  input [9:0] M_AXI_RRESP;
  input [4:0] M_AXI_RLAST;
  input [4:0] M_AXI_RUSER;
  input [4:0] M_AXI_RVALID;
  output [4:0] M_AXI_RREADY;
  input [31:0] S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0] S_AXI_CTRL_WDATA;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0] S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0] S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0] S_AXI_CTRL_RDATA;
  output [1:0] S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;

  axi_interconnect
    #(
      .C_BASEFAMILY ( "spartan6" ),
      .C_NUM_SLAVE_SLOTS ( 1 ),
      .C_NUM_MASTER_SLOTS ( 5 ),
      .C_AXI_ID_WIDTH ( 1 ),
      .C_AXI_ADDR_WIDTH ( 32 ),
      .C_AXI_DATA_MAX_WIDTH ( 32 ),
      .C_S_AXI_DATA_WIDTH ( 512'h00000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020 ),
      .C_M_AXI_DATA_WIDTH ( 512'h00000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020 ),
      .C_INTERCONNECT_DATA_WIDTH ( 32 ),
      .C_S_AXI_PROTOCOL ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002 ),
      .C_M_AXI_PROTOCOL ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000020000000200000002 ),
      .C_M_AXI_BASE_ADDR ( 16384'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000040000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000040020000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000040040000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000040600000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000074800000 ),
      .C_M_AXI_HIGH_ADDR ( 16384'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004002ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004004ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004060ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007480ffff ),
      .C_S_AXI_BASE_ID ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_S_AXI_THREAD_ID_WIDTH ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_S_AXI_IS_INTERCONNECT ( 16'b0000000000000000 ),
      .C_S_AXI_ACLK_RATIO ( 512'h00000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000105f5e100 ),
      .C_S_AXI_IS_ACLK_ASYNC ( 16'b0000000000000000 ),
      .C_M_AXI_ACLK_RATIO ( 512'h000000010000000100000001000000010000000100000001000000010000000100000001000000010000000102faf08002faf08002faf08002faf08002faf080 ),
      .C_M_AXI_IS_ACLK_ASYNC ( 16'b0000000000000000 ),
      .C_INTERCONNECT_ACLK_RATIO ( 50000000 ),
      .C_S_AXI_SUPPORTS_WRITE ( 16'b1111111111111111 ),
      .C_S_AXI_SUPPORTS_READ ( 16'b1111111111111111 ),
      .C_M_AXI_SUPPORTS_WRITE ( 16'b1111111111111111 ),
      .C_M_AXI_SUPPORTS_READ ( 16'b1111111111111111 ),
      .C_AXI_SUPPORTS_USER_SIGNALS ( 0 ),
      .C_AXI_AWUSER_WIDTH ( 1 ),
      .C_AXI_ARUSER_WIDTH ( 1 ),
      .C_AXI_WUSER_WIDTH ( 1 ),
      .C_AXI_RUSER_WIDTH ( 1 ),
      .C_AXI_BUSER_WIDTH ( 1 ),
      .C_AXI_CONNECTIVITY ( 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ),
      .C_S_AXI_SINGLE_THREAD ( 16'b0000000000000000 ),
      .C_M_AXI_SUPPORTS_REORDERING ( 16'b1111111111111111 ),
      .C_S_AXI_SUPPORTS_NARROW_BURST ( 16'b1111111111111110 ),
      .C_M_AXI_SUPPORTS_NARROW_BURST ( 16'b1111111111111111 ),
      .C_S_AXI_WRITE_ACCEPTANCE ( 512'h00000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001 ),
      .C_S_AXI_READ_ACCEPTANCE ( 512'h00000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001 ),
      .C_M_AXI_WRITE_ISSUING ( 512'h00000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001 ),
      .C_M_AXI_READ_ISSUING ( 512'h00000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001 ),
      .C_S_AXI_ARB_PRIORITY ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_M_AXI_SECURE ( 16'b0000000000000000 ),
      .C_S_AXI_WRITE_FIFO_DEPTH ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_S_AXI_WRITE_FIFO_TYPE ( 16'b1111111111111111 ),
      .C_S_AXI_WRITE_FIFO_DELAY ( 16'b0000000000000000 ),
      .C_S_AXI_READ_FIFO_DEPTH ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_S_AXI_READ_FIFO_TYPE ( 16'b1111111111111111 ),
      .C_S_AXI_READ_FIFO_DELAY ( 16'b0000000000000000 ),
      .C_M_AXI_WRITE_FIFO_DEPTH ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_M_AXI_WRITE_FIFO_TYPE ( 16'b1111111111111111 ),
      .C_M_AXI_WRITE_FIFO_DELAY ( 16'b0000000000000000 ),
      .C_M_AXI_READ_FIFO_DEPTH ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ),
      .C_M_AXI_READ_FIFO_TYPE ( 16'b1111111111111111 ),
      .C_M_AXI_READ_FIFO_DELAY ( 16'b0000000000000000 ),
      .C_S_AXI_AW_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 ),
      .C_S_AXI_AR_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 ),
      .C_S_AXI_W_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 ),
      .C_S_AXI_R_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 ),
      .C_S_AXI_B_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 ),
      .C_M_AXI_AW_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000001 ),
      .C_M_AXI_AR_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000001 ),
      .C_M_AXI_W_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000001 ),
      .C_M_AXI_R_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000001 ),
      .C_M_AXI_B_REGISTER ( 512'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000001 ),
      .C_INTERCONNECT_R_REGISTER ( 0 ),
      .C_INTERCONNECT_CONNECTIVITY_MODE ( 0 ),
      .C_USE_CTRL_PORT ( 0 ),
      .C_USE_INTERRUPT ( 1 ),
      .C_RANGE_CHECK ( 1 ),
      .C_S_AXI_CTRL_ADDR_WIDTH ( 32 ),
      .C_S_AXI_CTRL_DATA_WIDTH ( 32 ),
      .C_DEBUG ( 0 )
    )
    axi4lite_0 (
      .INTERCONNECT_ACLK ( INTERCONNECT_ACLK ),
      .INTERCONNECT_ARESETN ( INTERCONNECT_ARESETN ),
      .S_AXI_ARESET_OUT_N ( S_AXI_ARESET_OUT_N ),
      .M_AXI_ARESET_OUT_N ( M_AXI_ARESET_OUT_N ),
      .IRQ ( IRQ ),
      .S_AXI_ACLK ( S_AXI_ACLK ),
      .S_AXI_AWID ( S_AXI_AWID ),
      .S_AXI_AWADDR ( S_AXI_AWADDR ),
      .S_AXI_AWLEN ( S_AXI_AWLEN ),
      .S_AXI_AWSIZE ( S_AXI_AWSIZE ),
      .S_AXI_AWBURST ( S_AXI_AWBURST ),
      .S_AXI_AWLOCK ( S_AXI_AWLOCK ),
      .S_AXI_AWCACHE ( S_AXI_AWCACHE ),
      .S_AXI_AWPROT ( S_AXI_AWPROT ),
      .S_AXI_AWQOS ( S_AXI_AWQOS ),
      .S_AXI_AWUSER ( S_AXI_AWUSER ),
      .S_AXI_AWVALID ( S_AXI_AWVALID ),
      .S_AXI_AWREADY ( S_AXI_AWREADY ),
      .S_AXI_WDATA ( S_AXI_WDATA ),
      .S_AXI_WSTRB ( S_AXI_WSTRB ),
      .S_AXI_WLAST ( S_AXI_WLAST ),
      .S_AXI_WUSER ( S_AXI_WUSER ),
      .S_AXI_WVALID ( S_AXI_WVALID ),
      .S_AXI_WREADY ( S_AXI_WREADY ),
      .S_AXI_BID ( S_AXI_BID ),
      .S_AXI_BRESP ( S_AXI_BRESP ),
      .S_AXI_BUSER ( S_AXI_BUSER ),
      .S_AXI_BVALID ( S_AXI_BVALID ),
      .S_AXI_BREADY ( S_AXI_BREADY ),
      .S_AXI_ARID ( S_AXI_ARID ),
      .S_AXI_ARADDR ( S_AXI_ARADDR ),
      .S_AXI_ARLEN ( S_AXI_ARLEN ),
      .S_AXI_ARSIZE ( S_AXI_ARSIZE ),
      .S_AXI_ARBURST ( S_AXI_ARBURST ),
      .S_AXI_ARLOCK ( S_AXI_ARLOCK ),
      .S_AXI_ARCACHE ( S_AXI_ARCACHE ),
      .S_AXI_ARPROT ( S_AXI_ARPROT ),
      .S_AXI_ARQOS ( S_AXI_ARQOS ),
      .S_AXI_ARUSER ( S_AXI_ARUSER ),
      .S_AXI_ARVALID ( S_AXI_ARVALID ),
      .S_AXI_ARREADY ( S_AXI_ARREADY ),
      .S_AXI_RID ( S_AXI_RID ),
      .S_AXI_RDATA ( S_AXI_RDATA ),
      .S_AXI_RRESP ( S_AXI_RRESP ),
      .S_AXI_RLAST ( S_AXI_RLAST ),
      .S_AXI_RUSER ( S_AXI_RUSER ),
      .S_AXI_RVALID ( S_AXI_RVALID ),
      .S_AXI_RREADY ( S_AXI_RREADY ),
      .M_AXI_ACLK ( M_AXI_ACLK ),
      .M_AXI_AWID ( M_AXI_AWID ),
      .M_AXI_AWADDR ( M_AXI_AWADDR ),
      .M_AXI_AWLEN ( M_AXI_AWLEN ),
      .M_AXI_AWSIZE ( M_AXI_AWSIZE ),
      .M_AXI_AWBURST ( M_AXI_AWBURST ),
      .M_AXI_AWLOCK ( M_AXI_AWLOCK ),
      .M_AXI_AWCACHE ( M_AXI_AWCACHE ),
      .M_AXI_AWPROT ( M_AXI_AWPROT ),
      .M_AXI_AWREGION ( M_AXI_AWREGION ),
      .M_AXI_AWQOS ( M_AXI_AWQOS ),
      .M_AXI_AWUSER ( M_AXI_AWUSER ),
      .M_AXI_AWVALID ( M_AXI_AWVALID ),
      .M_AXI_AWREADY ( M_AXI_AWREADY ),
      .M_AXI_WID ( M_AXI_WID ),
      .M_AXI_WDATA ( M_AXI_WDATA ),
      .M_AXI_WSTRB ( M_AXI_WSTRB ),
      .M_AXI_WLAST ( M_AXI_WLAST ),
      .M_AXI_WUSER ( M_AXI_WUSER ),
      .M_AXI_WVALID ( M_AXI_WVALID ),
      .M_AXI_WREADY ( M_AXI_WREADY ),
      .M_AXI_BID ( M_AXI_BID ),
      .M_AXI_BRESP ( M_AXI_BRESP ),
      .M_AXI_BUSER ( M_AXI_BUSER ),
      .M_AXI_BVALID ( M_AXI_BVALID ),
      .M_AXI_BREADY ( M_AXI_BREADY ),
      .M_AXI_ARID ( M_AXI_ARID ),
      .M_AXI_ARADDR ( M_AXI_ARADDR ),
      .M_AXI_ARLEN ( M_AXI_ARLEN ),
      .M_AXI_ARSIZE ( M_AXI_ARSIZE ),
      .M_AXI_ARBURST ( M_AXI_ARBURST ),
      .M_AXI_ARLOCK ( M_AXI_ARLOCK ),
      .M_AXI_ARCACHE ( M_AXI_ARCACHE ),
      .M_AXI_ARPROT ( M_AXI_ARPROT ),
      .M_AXI_ARREGION ( M_AXI_ARREGION ),
      .M_AXI_ARQOS ( M_AXI_ARQOS ),
      .M_AXI_ARUSER ( M_AXI_ARUSER ),
      .M_AXI_ARVALID ( M_AXI_ARVALID ),
      .M_AXI_ARREADY ( M_AXI_ARREADY ),
      .M_AXI_RID ( M_AXI_RID ),
      .M_AXI_RDATA ( M_AXI_RDATA ),
      .M_AXI_RRESP ( M_AXI_RRESP ),
      .M_AXI_RLAST ( M_AXI_RLAST ),
      .M_AXI_RUSER ( M_AXI_RUSER ),
      .M_AXI_RVALID ( M_AXI_RVALID ),
      .M_AXI_RREADY ( M_AXI_RREADY ),
      .S_AXI_CTRL_AWADDR ( S_AXI_CTRL_AWADDR ),
      .S_AXI_CTRL_AWVALID ( S_AXI_CTRL_AWVALID ),
      .S_AXI_CTRL_AWREADY ( S_AXI_CTRL_AWREADY ),
      .S_AXI_CTRL_WDATA ( S_AXI_CTRL_WDATA ),
      .S_AXI_CTRL_WVALID ( S_AXI_CTRL_WVALID ),
      .S_AXI_CTRL_WREADY ( S_AXI_CTRL_WREADY ),
      .S_AXI_CTRL_BRESP ( S_AXI_CTRL_BRESP ),
      .S_AXI_CTRL_BVALID ( S_AXI_CTRL_BVALID ),
      .S_AXI_CTRL_BREADY ( S_AXI_CTRL_BREADY ),
      .S_AXI_CTRL_ARADDR ( S_AXI_CTRL_ARADDR ),
      .S_AXI_CTRL_ARVALID ( S_AXI_CTRL_ARVALID ),
      .S_AXI_CTRL_ARREADY ( S_AXI_CTRL_ARREADY ),
      .S_AXI_CTRL_RDATA ( S_AXI_CTRL_RDATA ),
      .S_AXI_CTRL_RRESP ( S_AXI_CTRL_RRESP ),
      .S_AXI_CTRL_RVALID ( S_AXI_CTRL_RVALID ),
      .S_AXI_CTRL_RREADY ( S_AXI_CTRL_RREADY )
    );

endmodule

