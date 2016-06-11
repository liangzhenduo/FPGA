`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:04 05/04/2016 
// Design Name: 
// Module Name:    lcd 
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
module lcd( a,b,c,d,e,f,g,h,
				x,r,l,z,
				clk95,clk190,clk,clr
    );

input a,b,c,d,e,f,g,h; 
output [3:0]x;
output [6:0]z;
output [3:0]r;
output [3:0]l;

reg [3:0]x;
reg [3:0]y;
reg [6:0]z;
reg [3:0]r;
reg [3:0]l;

input clk, clr;
output clk95, clk190;
	 
reg [19:0] counter;

always @(posedge clk or posedge clr)
begin
		if (clr == 1)
			counter <= 0;
		else
			counter <= counter + 1;
end
	 
assign clk95 = counter[19];   //5.2ms
assign clk190 = counter[18];   //2.6ms

always @*
begin
	r={d,c,b,a};
	l={h,g,f,e};
	case(clk190)
		1: begin x='b1100; y=r; end
		0: begin x='b0011; y=l; end
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
