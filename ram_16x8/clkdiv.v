`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:40 04/07/2015 
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
module clkdiv(clk_95HZ, clk, clr
    );

    input clk, clr;
	 output clk_95HZ;
	 
	 reg [19:0] counter;
	 
	 always @(posedge clk or posedge clr)
	 begin
	 
		if (clr == 1)
			counter <= 0;
		else
			counter <= counter + 1;
	 
	 end
	 
	 assign clk_95HZ = counter[19];

endmodule
