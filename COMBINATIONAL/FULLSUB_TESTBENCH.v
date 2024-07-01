`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 17:11:29
// Design Name: 
// Module Name: FULLSUB_TESTBENCH
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


module FULLSUB_TESTBENCH;
reg a,b,cin;
wire D,B;

FULLSUBRACTOR sub(.a(a),.b(b),.cin(cin),.D(D),.B(B));
initial begin
a=0; b=0; cin=0;
a=0; b=0; cin=1; #1;
a=0; b=1; cin=0; #1;
a=0; b=1; cin=1; #1;
a=1; b=0; cin=0; #1;
a=1; b=0; cin=1; #1;
a=1; b=1; cin=0; #1;
a=1; b=1; cin=1; #1;
$finish;
end
always@(a or b or cin)
$display("time=%0t input values: a=%b b=%b cin=%b output values: D=%b B=%b",$time,a,b,cin,D,B);
endmodule
