`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:25:05 05/04/2016
// Design Name:   lcd
// Module Name:   C:/workspace/lcd/lcd_tb.v
// Project Name:  lcd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lcd_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;
	reg g;
	reg h;
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] x;
	wire [3:0] r;
	wire [3:0] l;
	wire [6:0] z;
	wire clk95;
	wire clk190;

	// Instantiate the Unit Under Test (UUT)
	lcd uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.h(h), 
		.x(x), 
		.r(r), 
		.l(l), 
		.z(z), 
		.clk95(clk95), 
		.clk190(clk190), 
		.clk(clk), 
		.clr(clr)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

