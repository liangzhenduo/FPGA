`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:44 04/04/2015 
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
module seg7_d(
                 input wire [15:0] x,
                 input wire clk,
                 input wire clr,
                 output reg [6:0] a_to_g,
                 output reg [3:0] an,
                 output wire dp
                 );
                 wire  [1:0] s;
                 reg  [3:0] digit;
                 wire [3:0] aen;
                 reg [20:0] clkdiv;

                 assign dp = 0;
                 assign s = clkdiv[20:19];      // count every 5.2 ms
                 assign aen = 4'b1111;         // enable all digits

                 // 4位 4选1 MUX: mux44
                 always @ ( * )
                 case (s)
                    0: digit = x[3:0];
                    1: digit = x[7:4];
						  2: digit = x[11:8];
						  3: digit = x[15:12];
                    default: digit = x[15:0];
                 endcase

                                                 // 7段数码管：hex7seg
                                                 always @ ( * )
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

                                                 // Digit select: ancode
                                                  always @ ( * )
                                                  begin  
                                                  an = 4'b1111;
                                                  if (aen[s] == 1)
                                                  an[s] = 0;
                                                  end

                                                  // 时钟分频器
                                                  always @ (posedge clk or posedge clr)
                                                  begin 
                                                  if (clr == 1)
                                                      clkdiv <= 0;
                                                  else
                                                      clkdiv <= clkdiv + 1;
                                                  end
																  
endmodule
