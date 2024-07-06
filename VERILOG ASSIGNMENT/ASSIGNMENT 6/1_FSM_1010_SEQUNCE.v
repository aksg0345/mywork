 1. module MOORE_NONOV(input clk,input reset,input in, output reg out );

 reg[3:0]current,next;
 parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
 
 always@(posedge clk or posedge reset)begin
   
 if(reset)
   begin
 current<=s0;
 next<=s0;
 end
   
 else 
   begin
    current<=next;
   end
  end
   
 always@(current,in)begin
   
 case(current)
 s0: begin
     if(in)
     next=s1;
     else
     next=s0;  
     end
 
 s1:begin
    if(in)
    next=s1;
    else
    next=s2;
    end

 s2:begin
  
    if(in)
    next=s3;
    else
    next=s0;
    end
 
 s3: begin
  
     if(in)
     next=s1;
     else
     next=s4;
 end

 s4:  begin

      if(in)
      next=s3;
      else
      next=s0;
       end

 default: 
 next=s0;

 endcase
 end
   
 
   always@(current) begin
     case(current)
       s1: out=0;
       s2: out=0;
       s3: out=0;
       s4: out=1;
 default : out=0;
     endcase
   end 
 endmodule
