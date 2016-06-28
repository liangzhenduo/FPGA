`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:39 06/23/2016 
// Design Name: 
// Module Name:    vend 
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
module vend( enb,clk,rst,c,n
    );

input clk,rst,enb;
output n;
input [7:0]c;
reg n;
reg current_state;
reg next_state;
reg sum;
parameter s0=1'b0, s1=1'b1;


always @ (posedge clk)
begin
	if(!rst)
		current_state <= next_state;
	else
		current_state <= s0;
end
 
always @ (posedge enb)
begin
	//next_state<=s0;
	sum=c[0]+c[1]+c[2]+c[3]+c[4]+c[5]+c[6]+c[7];
	case(current_state)
		 s0:	  if((sum&1)==0) next_state<=s0;
			else if((sum&1)==1) next_state<=s1;
			else next_state<=s0;
		 s1:    if((sum&1)==0) next_state<=s0;
			else if((sum&1)==1) next_state<=s1;
			else next_state<=s1;
		default:next_state<=s0;
	endcase
end
 
always @ (posedge clk)
begin
	case(current_state)
		s0: n<=1;
	default:n<=0;
	endcase
end


endmodule

