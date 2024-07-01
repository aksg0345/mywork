`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 15:43:10
// Design Name: 
// Module Name: SR_LATCH_TB
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


module SR_LATCH_TB;
reg s,r,en;
  wire q;
 
 SR_LATCH  latch (s,r,en,q);
 
 
 initial begin
          $monitor("input values : s = %b,r = %b;en =%b, output values : q = %b",s,r,en,q);
 
          #10 en =1; s= 1;r = 1;
          #10 en = 1; s = 0 ; r = 1;
          #10 en = 0; s = 1; r= 0;
          #10 en = 1; s = 1;  r=1;
          
          $stop;
       end
          endmodule
    


