`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 11:09:57
// Design Name: 
// Module Name: MUX4x1
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


module MUX4x1(input i0,i1,i2,i3,s0,s1,output reg out );
always@(i0 or i1 or i2 or i3 or s0 or s1)
begin
if(s1==0 & s0 ==0)
 out=i0;
else if(s1==0 & s0 ==1)
 out=i1;
 else if(s1==1 & s0 ==0)
 out=i2;
 if(s1==1 & s0 ==1)
 out=i3;
 end
endmodule
