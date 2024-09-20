`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 20:45:09
// Design Name: 
// Module Name: FOUR_BIT_SY_UPDOWN_TB
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


module FOUR_BIT_SY_UPDOWN_TB;
  reg clk,rst,up_down;
  wire [3:0] count;
 
 FOUR_BIT_SY_UPDOWN counter  (.clk(clk),.rst(rst),.up_down(up_down),.count(count));

  initial begin
    clk=0;
    forever #5 clk=~clk;
    
  end

  initial begin
      $monitor("input values :clk:%b,rst:%b,up_down:%b, output values: count:%b",clk,rst,up_down,count);
    rst=1;
   #10 up_down=1;
   #10 rst =0;
    #30 up_down=0;
   # 30 up_down=1;
   # 30 up_down =0;
   #100  $finish; 
    

  end
endmodule
