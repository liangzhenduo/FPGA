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
	 
	 //PSRAM�ܽ�
	 input clk, clr, we_en;
	 output clk_out;
	 output [22:0] addr;
	 output oe, we, adv, ce, ub, lb, cre;
	 inout [15:0] data; //PSRAM���ݶ˿���˫��˿�
	 
	 //7������ܹܽ�
	 output [6:0] a_to_g;
	 output [3:0] an;
	 output dp;
	 
	 //�ڲ��Ĵ���
	 reg [22:0] reg_addr_write; //��PSRAMд�����ݵĵ�ַ
	 reg [22:0] reg_addr_read; //��PSRAM�������ݵĵ�ַ
	 reg [15:0] reg_data;      //��PSRAMд�������
	 reg [2:0] write_delay;    //д���ӳ�
	 reg [26:0] read_delay;    //�����ӳ�
	 reg sdlink;               //��̬�ſ���
	 
	 //PSRAM�첽����ģʽ
	 assign oe = 0;      //PSRAM��OE�ź���"0"
	 assign ce = 0;      //PSRAM��CE�ź���"0"
	 assign clk_out = 0; //PSRAM��CLK�ź���"0"
	 assign cre = 0;     //PSRAM��CRE�ź���"0"
	 assign ub = 0;      //PSRAM��UB�ź���"0"
	 assign lb = 0;      //PSRAM��LB�ź���"0"
	 assign adv = 0;     //PSRAM��ADV�ź���"0"
	 assign addr = (we == 0)? reg_addr_write : reg_addr_read;  //��WE�źž���PSRAM��ADDR��д��ַ���Ƕ���ַ
	 assign data = (sdlink == 1)? reg_data : 16'hzzzz;         //��sdlink��̬�ſ����źž�����ǰ��д�����ݻ��Ƕ�������
	 assign we = we_en;  //��slide switch��PSRAM��WE�ź�
	 
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
		/*****************ÿ��80ns��PSRAMд��һ������*******************/
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
		/*****************ÿ��1s���Ҵ�PSRAM����һ������*******************/
				sdlink <= 0;
				if(read_delay == 27'hfffffff)
					reg_addr_read <= reg_addr_read + 1;
			
			end
		/***********************************************************/	
		end
	 
	 end
	 
	 /*****************д���ӳ�*******************/
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
	 
	 /*****************�����ӳ�******************/
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
