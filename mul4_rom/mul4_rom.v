`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:52 04/07/2015 
// Design Name: 
// Module Name:    mul4_rom 
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
module mul4_rom( clk, mul, mul_r
    );
	 
	 input clk;
	 input [7:0] mul;
	 output [7:0] mul_r;
	 
	 rom_256x8 inst_rom_256x8(.clka(clk), .addra(mul), .douta(mul_r));


endmodule
