`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:39 05/10/2016 
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
module vend( enb,clk,rst,c,n,clk95,clk190,z,x,l,r 
    );

input clk,rst,enb;
output n;
input [1:0]c;
reg n;
reg [1:0]current_state;
reg [1:0]next_state;
parameter s0=2'b00, s5=2'b01, s10=2'b10, s15=2'b11;

output clk95, clk190;
output [3:0]x;
output [6:0]z;
output [3:0]r;
output [3:0]l;

reg [3:0]x;
reg [3:0]y;
reg [6:0]z;
reg [3:0]r;
reg [3:0]l;
reg [19:0] counter;

assign clk95 = counter[19];   //5.2ms
assign clk190 = counter[18];   //2.6ms

always @(posedge clk)
begin
		if (rst == 1)
			counter <= 0;
		else
			counter <= counter + 1;
end

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
	case(current_state)
		 s0:	  if(c==2'b00) next_state<=s0;
			else if(c==2'b01) next_state<=s5;
			else if(c==2'b10) next_state<=s10;
			else next_state<=s0;
		 s5:    if(c==2'b00) next_state<=s5;
			else if(c==2'b01) next_state<=s10;
			else if(c==2'b10) next_state<=s15;
			else next_state<=s5;
		s10:	  if(c==2'b00) next_state<=s10;
			else if(c==2'b01) next_state<=s15;
			else if(c==2'b10) next_state<=s15;
			else next_state<=s10;
		s15:	  next_state<=s15;
		default:next_state<=s0;
	endcase
end
 
always @ (posedge clk)
begin
	case(current_state)
		s15: n<=1;
	default:n<=0;
	endcase
end
	 
always @ (*)
begin
	r=(current_state==s0||current_state==s10)?4'b0000:4'b0101;
	l=(current_state==s10||current_state==s15)?4'b0001:4'b0000;
	case(clk190)
		1: begin x='b1110; y=r; end
		0: begin x='b1101; y=l; end
		default: begin x='b1111; y='b1000; end
	endcase
	
	case(y)
		4'b0000: z='b0000001;
		4'b0001: z='b1001111;
		4'b0010: z='b0010010;
		4'b0011: z='b0000110;
		4'b0100: z='b1001100;
		4'b0101: z='b0100100;
		4'b0110: z='b0100000;
		4'b0111: z='b0001111;
		4'b1000: z='b0000000;
		4'b1001: z='b0000100;
		4'b1010: z='b0001000;
		4'b1011: z='b1100000;
		4'b1100: z='b0110001;
		4'b1101: z='b1000010;
		4'b1110: z='b0110000;
		4'b1111: z='b0111000;
		default: z='b1111111;
	endcase
	
end

endmodule

