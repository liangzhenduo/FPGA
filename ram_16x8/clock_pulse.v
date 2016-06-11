`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:22 04/07/2015 
// Design Name: 
// Module Name:    clock_pulse 
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
module clock_pulse( outp, inp, clk, clr
    );

    input [1:0] inp;
	 input clk, clr;
	 output [1:0] outp;
	 
	 reg [1:0]delay1, delay2, delay3;

    always @(posedge clk or posedge clr)
	 begin
	 
		if (clr == 1)
			begin
			
				delay1 <= 0;
				delay2 <= 0;
				delay3 <= 0;
			
			end
		else
			begin
			
				delay1 <= inp;
				delay2 <= delay1;
				delay3 <= delay2;
			
			end
	 end
	 
	 assign outp = delay1 & delay2 & ~delay3;

endmodule
