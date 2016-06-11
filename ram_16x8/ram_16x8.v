`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:49 04/07/2015 
// Design Name: 
// Module Name:    ram_16x8 
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
module ram_16x8(an, a_to_g, rd_addr, wr_addr, btn_addr, wea, clk, clr
    );
	 
	 input clk, clr, wea;
	 input [1:0] btn_addr;      //btn_addr[0]: read enable; btn_addr[1]: write enable
	 output [3:0] rd_addr;
    output [3:0] wr_addr;	 
	 output [3:0] an;
	 output [6:0] a_to_g;
	 
	 wire clk_95HZ;
	 wire [1:0] btn;
	 wire [7:0] output_data;
	 wire [3:0] port_addr;
	 wire [15:0] x;
	 
	 reg [3:0] read;
	 reg [3:0] write;
	 reg [7:0] input_data;
	 
	 assign port_addr = (!wea)? read : write;
	 assign x = {8'b0000_0000, output_data};
	 assign rd_addr = read;
	 assign wr_addr = write;
	 
	 clkdiv U1(.clk_95HZ(clk_95HZ), .clk(clk), .clr(clr));
	 clock_pulse U2( .outp(btn), .inp(btn_addr), .clk(clk_95HZ), .clr(clr));
	 x7seg U3(.a_to_g(a_to_g), .an(an), .x(x), .clk(clk), .clr(clr));
	 ram U4(.clka(clk), .wea(wea), .addra(port_addr), .dina(input_data), .douta(output_data));
	 
	 //¶ÁÆ¬ÄÚRAM
	 always @(posedge clk_95HZ or posedge clr)
	    begin
		    if (clr == 1)
			    read <= 0;
			 else if ((wea == 0) && (btn[0] == 1))
			    read <= read + 1;
			 else
			    read <= read;
		 end
	
   //Ð´Æ¬ÄÚRAM	
	always @(posedge clk_95HZ or posedge clr)
	    begin
		    if (clr == 1)
			    begin
				    write <= 0;
					 input_data <= 0;
				 end
			 else if ((wea == 1) && (btn[1] == 1))
			    begin
				    write <= write + 1;
					 input_data <= input_data + 1;
				 end
			 else
			    begin
				    write <= write;
					 input_data <= input_data;
				 end
		 end


endmodule
