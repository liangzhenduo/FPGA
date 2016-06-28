`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:47 04/23/2013 
// Design Name: 
// Module Name:    vga_640x480_picture_top 
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
module vga_640x480_picture_top( hsync, vsync, red, green, blue, clk, btn, sw
    );
	 
	 input clk, btn;
	 input [7:0] sw;
	 output hsync, vsync;
	 output [2:0] red, green;
	 output [1:0] blue;
	 
	 wire clr, clk25M, vidon;
	 wire [9:0] hc, vc;
	 wire [7:0] sprite;

	 wire [15:0] rom_addr16;
	 
	 assign clr = btn;
	 
	 clkdiv U1(.clk25M(clk25M), .clk(clk), .clr(clr));
	 vga_640x480 U2(.hsync(hsync), .vsync(vsync), .hc(hc), .vc(vc), .vidon(vidon), .clk(clk25M), .clr(clr));
	 vga_initials U3(.rom_addr16(rom_addr16), .red(red), .green(green), .blue(blue), .vidon(vidon), .hc(hc), .vc(vc), .sprite(sprite), .sw(sw));
	
	 loons240x160 U40(.clka(clk25M), .addra(rom_addr16-241), .douta(sprite0));
	 loons240x160 U41(.clka(clk25M), .addra(rom_addr16-240), .douta(sprite1));
	 loons240x160 U42(.clka(clk25M), .addra(rom_addr16-239), .douta(sprite2));
	 loons240x160 U43(.clka(clk25M), .addra(rom_addr16-1), .douta(sprite3));
	 
	 loons240x160 U45(.clka(clk25M), .addra(rom_addr16+1), .douta(sprite5));
	 loons240x160 U46(.clka(clk25M), .addra(rom_addr16+239), .douta(sprite6));
	 loons240x160 U47(.clka(clk25M), .addra(rom_addr16+240), .douta(sprite7));
	 loons240x160 U48(.clka(clk25M), .addra(rom_addr16+241), .douta(sprite8));
	 
	 
	 sobel U5(.p0(sprite0), .p1(sprite1), .p2(sprite2), .p3(sprite3), 
	 .p5(sprite5), .p6(sprite6), .p7(sprite7), .p8(sprite8), .out(sprite));


endmodule
