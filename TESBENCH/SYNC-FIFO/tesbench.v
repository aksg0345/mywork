`include "interface.sv"
`include "test.sv"

module syn_fifotest;
  
  test tes;
  mailbox mail;
  object interfac();
  
  SYN_FIFO insta(.clk(interfac.clk),
                 .rst(interfac.rst),
                 .wr_en(interfac.wr_en),
                 .rd_en(interfac.rd_en),
                 .data_in(interfac.data_in),
                 .data_out(interfac.data_out),
                 .full(interfac.full),
                 .empty(interfac.empty)
                );
                
                
                
  initial begin
    mail=new();
    tes=new(interfac,mail);
    fork
      tes.memory;
      tes.run;
      
    join
  end
  
  initial begin
    interfac.clk=0;
    
    forever #6 interfac.clk=~interfac.clk;
    
  end
  
//  initial begin
//     interfac.rst=0;
//     #10; 
//     interfac.rst=1;
// //     interfac.rd_en=0;
// //     interfac.wr_en=1;
//     #20; 
//     interfac.rst=0;
// //     interfac.rd_en=1;
// //     interfac.wr_en=0;
//     #30;
//     interfac.rst=0;
// //     interfac.rd_en=0;
// //     interfac.wr_en=1;
//   end
  
  initial begin
    $monitor("clk = %b, rst = %b, wr_en = %b, rd_en = %b,data_in=%b, data_out=%b, full=%b, empty=%b", interfac.clk, interfac.rst, interfac.wr_en, interfac.rd_en,interfac.data_in,interfac.data_out,interfac.full,interfac.empty);
    #100
    $finish;
  end
endmodule 

  
  
  
    
