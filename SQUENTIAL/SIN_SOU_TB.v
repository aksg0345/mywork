`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 19:02:15
// Design Name: 
// Module Name: SIN_SOU_TB
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


module SIN_SOU_TB;
 reg clk,rst,si;
  wire so;
  
  SIN_SOU sinou (.clk(clk),.rst(rst),.si(si),.so(so));
  
   initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  
  
  initial begin
  
  $monitor("time=%b; clk=%b; rst=%b; si=%b; s0=%b",$time,clk,rst,si,so);
     rst=1;
     si=0; #10;
            
    rst =0;
     si=0;#10;
    si=1;#10;
    si=1;#10;
    si=1;#10;
    #30 $finish; 
  end
    
  
endmodule
