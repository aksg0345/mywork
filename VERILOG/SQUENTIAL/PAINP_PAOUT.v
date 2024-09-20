`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 16:33:49
// Design Name: 
// Module Name: PAINP_PAOUT
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


module PAINP_PAOUT(input clk,load, input [3:0] parallel_in, output reg[3:0] parallel_out );

reg[3:0] shift_reg;


always@(posedge clk)begin
if(load)

 shift_reg<=parallel_in;

 else 
 parallel_out<=shift_reg;
 end
endmodule
