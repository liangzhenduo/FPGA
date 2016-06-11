`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:51 04/08/2015 
// Design Name: 
// Module Name:    PSRAM_asyn 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PSRAM_asyn(clk, clr, we_en, clk_out, oe, we, adv, ce, ub, lb, cre, addr, data, a_to_g, an, dp
    );
	 
	 //PSRAM管脚
	 input clk, clr, we_en;
	 output clk_out;
	 output [22:0] addr;
	 output oe, we, adv, ce, ub, lb, cre;
	 inout [15:0] data; //PSRAM数据端口是双向端口
	 
	 //7段数码管管脚
	 output [6:0] a_to_g;
	 output [3:0] an;
	 output dp;
	 
	 //内部寄存器
	 reg [22:0] reg_addr_write; //向PSRAM写入数据的地址
	 reg [22:0] reg_addr_read; //从PSRAM读出数据的地址
	 reg [15:0] reg_data;      //向PSRAM写入的数据
	 reg [2:0] write_delay;    //写入延迟
	 reg [26:0] read_delay;    //读出延迟
	 reg sdlink;               //三态门控制
	 
	 //PSRAM异步工作模式
	 assign oe = 0;      //PSRAM的OE信号置"0"
	 assign ce = 0;      //PSRAM的CE信号置"0"
	 assign clk_out = 0; //PSRAM的CLK信号置"0"
	 assign cre = 0;     //PSRAM的CRE信号置"0"
	 assign ub = 0;      //PSRAM的UB信号置"0"
	 assign lb = 0;      //PSRAM的LB信号置"0"
	 assign adv = 0;     //PSRAM的ADV信号置"0"
	 assign addr = (we == 0)? reg_addr_write : reg_addr_read;  //由WE信号决定PSRAM的ADDR是写地址还是读地址
	 assign data = (sdlink == 1)? reg_data : 16'hzzzz;         //由sdlink三态门控制信号决定当前是写入数据还是读出数据
	 assign we = we_en;  //由slide switch置PSRAM的WE信号
	 
	 always @(posedge clk or posedge clr)
	 begin
	 
		if(clr == 1)
		begin
		
			reg_addr_write <= 0;
			reg_addr_read <= 0;
			reg_data <= 16'hAB03;
		
		end
		else
		begin
		/*****************每隔80ns向PSRAM写入一个数据*******************/
			if(we == 0)
			begin
			
				sdlink <= 1;
				if(write_delay == 3'b111)
				begin
				
					reg_addr_write <= reg_addr_write + 1;
					reg_data <= reg_data + 1;
				
				end
			
			end
		/*********************************************************/
			else
			begin
		/*****************每隔1s左右从PSRAM读出一个数据*******************/
				sdlink <= 0;
				if(read_delay == 27'hfffffff)
					reg_addr_read <= reg_addr_read + 1;
			
			end
		/***********************************************************/	
		end
	 
	 end
	 
	 /*****************写入延迟*******************/
	 always @(posedge clk or posedge clr)
	 begin
	 
		if(clr == 1)
			write_delay <= 0;
		else if (we == 1)
		   write_delay <= 0;
		else
			write_delay <= write_delay + 1;
	 
	 end
	 /******************************************/
	 
	 /*****************读出延迟******************/
	 always @(posedge clk or posedge clr)
	 begin
	 
		if(clr == 1)
			read_delay <= 0;
		else if (we == 0)
		   read_delay <= 0;
		else
			read_delay <= read_delay + 1;
	 
	 end
	 /******************************************/
	 
	 seg7_d uut( .a_to_g(a_to_g), .an(an), .x(data), .clk(clk), .clr(clr), .dp(dp));


endmodule
