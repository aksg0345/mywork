`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 14:14:59
// Design Name: 
// Module Name: SR_LATCH
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


module SR_LATCH (input s ,r , en,output reg q);
  always@(s or r or en)begin
    if(en)
      case({s,r})
        2'b00 : q<= q;
        2'b01 : q<= 0;
        2'b10 : q<= 1;
        2'b11 : q<= 1'bx;
      endcase
    else 
          q<=0;
  end
endmodule
