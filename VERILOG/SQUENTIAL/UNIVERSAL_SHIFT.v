`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 22:25:33
// Design Name: 
// Module Name: UNIVERSAL_SHIFT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UNIVERSAL_SHIFT(input clk, reset, 
input [1:0] mode, 
input [3:0]parallel_in, 
input serial_right,
input serial_left,
output reg [3:0]parallel_out);


always@(posedge clk or reset)begin
if(reset)begin
   parallel_out<=4'b0000;
 end else begin
   case(mode)
     2'b00: parallel_out<=parallel_out;
     2'b01: parallel_out<={serial_right,parallel_out[3:1]};
     2'b10: parallel_out<={ parallel_out[2:0],serial_left}; // in case parallel_in means it depend only input (1010)
     2'b11: parallel_out<=parallel_in;
     default: parallel_out<=parallel_out;
     endcase
     end
     end

endmodule
