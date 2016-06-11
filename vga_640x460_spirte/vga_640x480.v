`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:03 04/22/2013 
// Design Name: 
// Module Name:    vga_640x480 
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
module vga_640x480( hsync, vsync, hc, vc, vidon, clk, clr
    );
	 
	 input clk, clr;
	 output hsync, vsync, vidon;
	 output [9:0] hc, vc;
	 
	 reg hsync, vsync, vidon;
	 reg [9:0] hc, vc;
	 //reg [10:0] hc, vc;
	 reg vsenable;
	 
	 // 640x480 60MHZ
	 parameter hpixels = 10'b1100100000; //行像素点 = 800
	 parameter vlines = 10'b1000001001; //行数 = 521
	 parameter hbp = 10'b0010010000;   //行显示后沿 = 144
	 parameter hfp = 10'b1100010000;   //行显示前沿 = 784（144+640）
	 parameter vbp = 10'b0000011111;   //场显示后沿 = 31
	 parameter vfp = 10'b0111111111;   //场显示前沿 = 511
	 
	 // 800x600 60MHZ
	 /*parameter hpixels = 11'd1056; //行像素点 = 1056
	 parameter vlines = 11'd628; //行数 = 628
	 parameter hbp = 11'd216;   //行显示后沿 = 216(128+88)
	 parameter hfp = 11'd1016;   //行显示前沿 = 1016（216+800）
	 parameter vbp = 11'd27;   //场显示后沿 = 27(4+23)
	 parameter vfp = 11'd627;   //场显示前沿 = 627(24+3)*/
	 
	 always @(posedge clk or posedge clr)
		begin
		
			if(clr == 1)
				hc <= 0;
			else
				begin
				
					if(hc == hpixels - 1)
						begin
						
							hc <= 0;
							vsenable <= 1;
						
						end
					else
						begin
						
							hc <= hc + 1;
							vsenable <= 0;
						end
				end
		
		end
		
	  always @(*)
		begin
		
			if(hc < 96)
			//if(hc < 128)
				hsync = 0;
			else
				hsync = 1;
		
		end
		
	  always @(posedge clk or posedge clr)
		begin
		
			if(clr == 1)
				vc <= 0;
			else
				begin
				
					if(vsenable == 1)
						begin
						
							if(vc == vlines - 1)
								vc <= 0;
							else
								vc <= vc + 1;
						
						end
				
				end
		
		end
		
	  always @(*)
		begin
		
			if(vc < 2)
			//if(vc < 4)
				vsync = 0;
			else
				vsync = 1;
		
		end
		
	  always @(*)
		begin
		
			if((hc < hfp) && (hc > hbp) && (vc < vfp) && (vc > vbp))
				vidon = 1;
			else
				vidon = 0;
		
	   end


endmodule
