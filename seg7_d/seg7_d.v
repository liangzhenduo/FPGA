`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:45 05/03/2015 
// Design Name: 
// Module Name:    seg7_d 
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
module seg7_d( a_to_g, an, clk, rst, btn
    );
	 
	 input clk, rst;
	 input [7:0] btn;
	 output [6:0] a_to_g;
	 output [3:0] an;
	 
	 reg [6:0] a_to_g;
	 reg [3:0] an;
	 reg [18:0] clk_div;
	 reg [1:0] an_sel;
	 reg [3:0] digit;
	 
	 always @(posedge clk) begin
	    if(rst == 1)
		    clk_div <= 0;
		 else
		    clk_div <= clk_div + 1;
	 end
	 
	 always @(*)
		case (digit)
			0: a_to_g = 7'b0000001;
			1: a_to_g = 7'b1001111;
			2: a_to_g = 7'b0010010;
			3: a_to_g = 7'b0000110;
			4: a_to_g = 7'b1001100;
			5: a_to_g = 7'b0100100;
			6: a_to_g = 7'b0100000;
			7: a_to_g = 7'b0001111;
			8: a_to_g = 7'b0000000;
			9: a_to_g = 7'b0000100;
			'hA: a_to_g = 7'b0001000;
			'hB: a_to_g = 7'b1100000;
			'hC: a_to_g = 7'b0110001;
			'hD: a_to_g = 7'b1000010;
			'hE: a_to_g = 7'b0110000;
			'hF: a_to_g = 7'b0111000;
			default: a_to_g = 7'b0000001;  // 0
		endcase
		
		always @(posedge clk_div[18]) begin
		
			if(rst == 1)
		      an_sel <= 0;
			else begin
		      case(an_sel)
			      0: begin
				      an <= 4'b1110;
				      digit <= btn[7:4];
				   end
				   1:begin
				      an <= 4'b1101;
				      digit <= btn[3:0];
				   end
				   2:begin
				      an <= 4'b1011;
				      digit <= btn[7:4];
				   end
				   3:begin
				      an <= 4'b0111;
				      digit <= btn[3:0];
				   end
			   endcase
			   an_sel <= an_sel + 1;
			end
		end
	 
	 /*always @(posedge clk) begin
	    case(clk_div[19:18])
		    0: an <= 4'b0111;
			 1: an <= 4'b1011;
			 2: an <= 4'b1101;
			 3: an <= 4'b1110;
		 endcase	 
	 end
	 
	 always @(posedge clk) begin
	    case(clk_div[19:18])
		    0: digit <= btn[7:4];
			 1: digit <= btn[3:0];
			 2: digit <= btn[7:4];
			 3: digit <= btn[3:0];
		 endcase	 
	 end*/


endmodule
