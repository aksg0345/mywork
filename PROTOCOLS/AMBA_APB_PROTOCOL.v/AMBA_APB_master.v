`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 12:41:22
// Design Name: 
// Module Name: APB_MASTER
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


module APB_MASTER(
input  pclk,prst,pread_write,ptransfer,pready,
input  [7:0]apb_write_paddr,
input [7:0]apb_read_paddr,
input [7:0]apb_write_data,
input [7:0]prdata,

output reg psel,penable,pwrite,
output reg [7:0]pwdata,
output reg [7:0]paddr,
output reg[7:0]apb_read_out_data );

reg [1:0] current, next ;

parameter idle = 2'b00;
parameter setup = 2'b01;
parameter access = 2'b10;

always@(posedge pclk )begin
  pwrite = pread_write;
if(prst)begin
 current <= idle;
 next <= idle;
 end
 else begin
 current <= next;
 end
 end
 
 always@(current,ptransfer,pready)begin
 
 case(current)
 idle:begin

    //if(psel == 0 && penable == 0)begin
    if( ptransfer== 0)begin
       next = idle;
       end
    else begin
       if(ptransfer == 1)
       next =  setup;
       end
       end
       
 setup: begin
 

    // if(!psel == 0 && penable == 0)begin
       if(ptransfer == 1)begin
         next = access;
        end
     else begin
        if (ptransfer == 0)
         next = idle;
         end
         end
         
  access : begin
 
      // if(psel == 1&& penable == 1)begin
        if( ptransfer == 1 && pready==1)begin
            next = setup;
            end
     //  else if(psel == 1&& penable == 1 ) begin
             else if( ptransfer == 1 && pready==0)begin
            next = access;
            end
       else  begin
          if( ptransfer == 0 && pready==1)
            next = idle;
            end
            end
            
            
 default:   next= idle;
   
   endcase
   end
   
   
always@(current)begin
case(current)
  
  idle: begin
    psel = 0;
    penable =0;
  
   if(pread_write==0)begin
             paddr=0;
             end
          else begin      
              paddr=0;
              pwdata=0;
              end
              end
  
  setup:  begin
              psel = 1 ;
              penable = 0;
         if(pread_write==0)begin
               paddr=apb_read_paddr;
               end
          else begin
               paddr=apb_write_paddr;
               pwdata=apb_write_data;
               end
               end
  
  access:begin
  
           psel = 1 ;
           penable = 1;
        if(pready==0)begin
  
          if(pread_write==0)begin
               paddr=apb_read_paddr;
               end
               
          else  begin
               paddr=apb_write_paddr;
               pwdata=apb_write_data;
               end
               end
               
          else
              apb_read_out_data=prdata;
              end
              
     default:   apb_read_out_data=0;
      
    endcase
    end

endmodule
