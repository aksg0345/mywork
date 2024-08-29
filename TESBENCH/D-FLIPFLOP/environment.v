`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  
  transaction trans;
  generator gene;
  driver driv;
  monitor moni;
  mailbox mail;
  virtual object vintfob;
  
  function new(virtual object vintfob,mailbox mail);
    
    
    this.vintfob=vintfob;
    this.mail=mail;
    
  endfunction
  
  
  task memory;
    
    mail=new();
    gene=new(mail);
    driv=new(vintfob,mail);
    moni=new(vintfob,mail);
  endtask
  
  task run;
    fork
      gene.gener;
      driv.drive;
      moni.monit;
    join
    $display("Packet recieved in environment");
   endtask
endclass
  
