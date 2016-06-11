`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:03 04/23/2013 
// Design Name: 
// Module Name:    vga_640x480_sprite_top 
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
module vga_640x480_sprite_top( hsync, vsync, red, green, blue, clk, btn, sw
    );
	 
	 input clk, btn;
	 input [7:0] sw;
	 output hsync, vsync;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 wire clr, clk25M, vidon;
	 wire [9:0] hc, vc;
	 wire [31:0] sprite;
	 wire [3:0] rom_addr4;
	 
	 assign clr = btn;
	 
	 clkdiv U1(.clk25M(clk25M), .clk(clk), .clr(clr));
	 vga_640x480 U2(.hsync(hsync), .vsync(vsync), .hc(hc), .vc(vc), .vidon(vidon), .clk(clk25M), .clr(clr));
	 vga_initials U3(.rom_addr4(rom_addr4), .red(red), .green(green), .blue(blue), .vidon(vidon), .hc(hc), .vc(vc), .sprite(sprite), .sw(sw));
	 sprite U4(.sprite(sprite), .addr(rom_addr4));


endmodule
