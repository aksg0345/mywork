`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 18:56:10
// Design Name: 
// Module Name: SIN_SOU
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


module SIN_SOU( input clk, rst,si,output  so);
reg [3:0]g;
  always@(posedge clk)begin
    if(rst)begin
      g<=4'b0000;
    end
      else begin
        g=g>>1;
      g[3]=si;
      end
    
  end
  assign so = g[0];
endmodule

