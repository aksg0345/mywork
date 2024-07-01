`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 09:30:33
// Design Name: 
// Module Name: PAINP_SEROUP
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


module PAINP_SEROUP(input clk,load, input [3:0]parallel_in,output reg serial_out);


reg[3:0]shift_register;


always@(posedge clk)begin
if(load)begin
  shift_register<=parallel_in;
  end else begin
  serial_out<=shift_register[0];
  shift_register<=shift_register>>1;
  end
end
endmodule
