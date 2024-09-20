`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 17:15:01
// Design Name: 
// Module Name: RIPPLECARRYADDER
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


module RIPPLECARRYADDER(input a,b,cin, output sum,cout);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule


module carryadder #(parameter size = 4)(input [size-1:0]a,b, input cin, output [size-1:0]sum,cout);
genvar g;
RIPPLECARRYADDER rpl0(a[0],b[0],cin,sum[0],cout[0]);
generate
for (g=1; g<size; g=g+1) begin
RIPPLECARRYADDER rpl(a[g],b[g],cout[g-1],sum[g],cout[g]);
end
endgenerate
endmodule

