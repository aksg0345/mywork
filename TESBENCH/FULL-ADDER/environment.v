`include "transaction"
`include "generator"
`include "driver"
`include "monitor"

class environment;
  
 
  generator gen;
  driver driv;
  mailbox mail;
  monitor mon;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
   task memory;
    mail = new();
    gen = new(mail);
    driv = new( vintf,mail);
    mon=new(vintf,mail);
   endtask
  
   task run;
   fork
   gen.gene;
   driv.drive;
   mon.moni;
   join
     $display("Packet recieved in environment");
   endtask
endclass
