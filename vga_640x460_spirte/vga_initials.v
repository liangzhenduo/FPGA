`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:26 04/23/2013 
// Design Name: 
// Module Name:    vga_initials 
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
module vga_initials( rom_addr4, red, green, blue, vidon, hc, vc, sprite, sw
    );
	 
	 input vidon;
	 input [9:0] hc, vc;
	 input [0:31] sprite;
	 input [7:0] sw;
	 output [3:0] rom_addr4;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 reg [2:0] red, green;
	 reg [1:0] blue;
	 
	 parameter hbp = 10'b0010010000; //行显示后沿 = 144
	 parameter vbp = 10'b0000011111; //场显示后沿 = 31
	 parameter W = 32;
	 parameter H = 16;
	 
	 wire [10:0] C1, R1, rom_addr, rom_pix;
	 reg spriteon, R, G, B;
	 
	 assign C1 = {2'b00, sw[3:0], 5'b00001};
	 assign R1 = {2'b00, sw[7:4], 5'b00001};
	 assign rom_addr = vc - vbp - R1;
	 assign rom_pix = hc - hbp -C1;
	 assign rom_addr4 = rom_addr[3:0];
	 
	 always @(*)
		begin
		
			if((hc >= C1 + hbp) && (hc < C1 + hbp + W) && (vc >= R1 + vbp) && (vc < R1 + vbp + H))
				spriteon = 1;
			else
				spriteon = 0;
		
		end
		
	 always @(*)
		begin
		
			red = 0;
			green = 0;
			blue = 0;
			if((spriteon == 1) && (vidon == 1))
				begin
				
					R = sprite[rom_pix];
					G = sprite[rom_pix];
					B = sprite[rom_pix];
					red = {R, R, R};
					green = {G, G, G};
					blue = {B, B};
				
				end
		
		end

endmodule
