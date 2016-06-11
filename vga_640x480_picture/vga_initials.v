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
module vga_initials( rom_addr16, red, green, blue, vidon, hc, vc, sprite, sw
    );
	 
	 input vidon;
	 input [9:0] hc, vc;
	 input [7:0] sprite;
	 input [7:0] sw;
	 output [15:0] rom_addr16;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 reg [2:0] red, green;
	 reg [1:0] blue;
	 
	 parameter hbp = 10'b0010010000; //行显示后沿 = 144
	 parameter vbp = 10'b0000011111; //场显示后沿 = 31
	 parameter W = 240;
	 parameter H = 160;
	 
	 wire [10:0] C1, R1, xpix, ypix;
	 wire [16:0] rom_addr1, rom_addr2;
	 reg spriteon, R, G, B;
	 
	 assign C1 = {2'b00, sw[3:0], 5'b00001};
	 assign R1 = {2'b00, sw[7:4], 5'b00001};
	 assign ypix = vc - vbp - R1;
	 assign xpix = hc - hbp -C1;
	 assign rom_addr1 = {ypix, 7'b0000000} + {1'b0, ypix, 6'b000000} + {2'b00, ypix, 5'b00000} + {3'b000, ypix, 4'b0000}; //ypix * 240 = ypix * (128 + 64 + 32 + 16)
	 assign rom_addr2 = rom_addr1 + {8'b00000000, xpix};
	 assign rom_addr16 = rom_addr2[15:0];
	 
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
				
					red = sprite[7 : 5];
					green = sprite[4 : 2];
					blue = sprite[1 : 0];
					/*red = {1'b0, sprite[7 : 6]};
					green = {1'b0, sprite[7 : 6]};
					blue = sprite[7 : 6];*/
				
				end
		
		end

endmodule
