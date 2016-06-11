`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:31 04/07/2015 
// Design Name: 
// Module Name:    debounce2 
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
module debounce2(outp, inp, clk, clr
    );

    input [1:0] inp;
	 //input inp;
	 input clk, clr;
	 output [1:0] outp;
	 //output outp;
	 
	 reg [1:0] delay1, delay2, delay3;
	 //reg delay1, delay2, delay3;
	 
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
	 
	 assign outp = delay1 & delay2 & delay3;

endmodule
