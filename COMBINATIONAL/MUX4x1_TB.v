`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 11:10:39
// Design Name: 
// Module Name: MUX4x1_TB
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


module MUX4x1_TB;
reg i0,i1,i2,i3;
reg s0,s1;
wire out;
MUX4x1 mux(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));
initial begin
i0=0;i1=1;i2=1;i3=0;
s1=1'b0; s0=1'b0;
#10 s1=1'b0; s0=1'b1;
#10 s1=1'b1; s0=1'b0;
#10 s1=1'b1; s0=1'b1;
#10 $finish;
end
endmodule
