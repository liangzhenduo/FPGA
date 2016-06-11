`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:27 03/13/2013
// Design Name:   gate2
// Module Name:   D:/Work/FPGA/Digital_Logic_Design/Lab1/gate2/gate2_tb.v
// Project Name:  gate2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gate2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gate2_tb;

	// Inputs
	reg a;
	reg b;
	wire [5:0] z;

	// Instantiate the Unit Under Test (UUT)
	gate2 uut (
		.a(a), 
		.b(b), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	   #200
		a = 0;
		b = 0;
		#200
		a = 0;
		b = 1;
		#200
		a = 1;
		b = 0;
		#200
		a = 1;
		b = 1;
	end
      
endmodule

