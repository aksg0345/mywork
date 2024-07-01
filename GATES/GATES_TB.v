`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 08:52:03
// Design Name: 
// Module Name: GATES_TB
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


module GATES_TB;
reg A,B;
wire Y1,Y2,Y3,Y4,Y5,Y6;
 GATES gatev(.A(A),.B(B),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6));
 initial begin
 A= 1'b0; B=1'b0;
 #10 A=1'b0; B=1'b1;
 #10 A=1'b1; B=1'b1;
 #10 A=1'b1; B=1'b0;
 #10 A=1'b0; B=1'b0;
 #60 $finish;
 end
 always @(Y1,Y2,Y3,Y4,Y5,Y6)
 $display("time=%0t\t input values:\t A=%b B=%b \toutput value Y =%b",$time,A,B,Y1,Y2,Y3,Y4,Y5,Y6);
 endmodule
