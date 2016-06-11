`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:24 04/22/2013 
// Design Name: 
// Module Name:    vga_stripes 
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
module vga_stripes( red, green, blue, vidon, hc, vc
    );
	 
	 input [9:0] hc, vc;
	 input vidon;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 reg [2:0] red, green;
	 reg [1:0] blue;
	 
	 always @(*)
		begin
		
			red = 0;
			green = 0;
			blue = 0;
			if(vidon == 1)
				begin
				
					red = {vc[4], vc[4], vc[4]};
					green = ~{vc[4], vc[4], vc[4]};
				
				end
		
		end


endmodule
