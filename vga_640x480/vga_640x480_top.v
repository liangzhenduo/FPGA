`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:46 04/22/2013 
// Design Name: 
// Module Name:    vga_640x480_top 
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
module vga_640x480_top( hsync, vsync, red, green, blue, clk, btn
    );
	 
	 input clk, btn;
	 output hsync, vsync;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 wire clk25M, clr, vidon;
	 wire [9:0] hc, vc;
	 
	 assign clr = btn;
	 
	 clkdiv U1(.clk25M(clk25M), .clk(clk), .clr(clr));
	 vga_640x480 U2(.hsync(hsync), .vsync(vsync), .hc(hc), .vc(vc), .vidon(vidon), .clk(clk25M), .clr(clr));
	 vga_stripes U3(.red(red), .green(green), .blue(blue), .hc(hc), .vc(vc), .vidon(vidon));


endmodule
