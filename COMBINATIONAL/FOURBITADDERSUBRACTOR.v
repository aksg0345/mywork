`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 11:00:05
// Design Name: 
// Module Name: FOURBITADDERSUBRACTOR
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


module FOURBITADDERSUBRACTOR(input a,b,cin, output sum,cout );
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule


module ripplecarryaddsub #(parameter SIZE = 4)(input [SIZE-1:0] a,b, input ctrl, output [SIZE-1:0] sum, cout);
reg [SIZE-1:0] ci;
genvar g;

always @(*) begin
ci[0]=b[0]^ctrl;
end

FOURBITADDERSUBRACTOR addsub1(a[0],ci[0],ctrl,sum[0],cout[0]);
generate 
for(g=1; g<SIZE; g=g+1)begin
always@(*) begin
 ci[g]=b[g]^ctrl;
end
FOURBITADDERSUBRACTOR addsub2 (a[g],ci[g],cout[g-1],sum[g],cout[g]);
end
endgenerate
endmodule
