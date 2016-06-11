`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:06 04/22/2013 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv( clk25M, clk, clr
    );
	 
	 input clk, clr;
	 output clk25M;
	 
	 reg [1:0] counter;
	 //reg counter;
	 
	 assign clk25M = counter[1];
	 
	 always @(posedge clk or posedge clr)
		begin
		
			if(clr == 1)
				counter <= 0;
			else
				counter <= counter + 1;
		
		end


endmodule
