`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 00:19:49
// Design Name: 
// Module Name: MELAY_OVLAP
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


module MELAY_OVLAP( input clk,input reset,input in, output reg out);

 reg[1:0]current,next;
 parameter s0=3'b00,s1=3'b01,s2=3'b10,s3=3'b11;

 always@(posedge clk or reset)begin
 if(reset)begin
 out<=s0;
 current<=s0;
 next<=s0;
end
 else begin
    current<=next;
    end
   end
  
 always@ (posedge clk) #10 begin
//  out<=1'b0;
 case(current)
 
 s0: begin
  
   if(in) begin
   next=s1;
     end
    else begin
   next=s0; 
    out=1'b0; 
   end
 end
 s1:begin
  
   if(in) begin
   next=s1;
 end
   else begin
   next=s2;
    out=1'b0;
   end
   end

 s2:begin
  
  if(in) begin
  next=s3;
   end
  else begin
  next=s0;
  out=1'b0;
  end
  end
 s3: begin
 
 if(in) begin
 next=s1;
  end
 else begin
 next=s2;
 out=1'b1;
 end
 end

 default: 
 next=s0;

 endcase
 
 
 
 
 
 
 
 
 
 end



endmodule
