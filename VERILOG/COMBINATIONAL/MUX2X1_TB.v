`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 09:31:12
// Design Name: 
// Module Name: MUX2X1_TB
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

module MUX2X1_TB;
reg i0,i1,sel;
wire y;
MUX2x1 mux(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial begin
sel=1'b0;
i0=0; i1=1;
#50 $finish;
end  
always #15 sel=~sel;
endmodule
