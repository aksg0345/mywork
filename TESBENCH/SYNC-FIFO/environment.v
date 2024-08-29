`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  
  transaction trans;
  generator gen;
  driver drive;
  monitor monit;
  mailbox mail;
  virtual object vintfob;
  
  function new(  virtual object vintfob,mailbox mail);
    this.vintfob=vintfob;
    this.mail=mail;
  endfunction
  
  task memory;
    mail=new();
    gen=new(mail);
    drive=new(vintfob,mail);
    monit=new(vintfob,mail);
  endtask
  
  task run;
    fork
    gen.gene;
    drive.driv;
    monit.moni;
    join
    $display("Packet recieved in environment");
  endtask
endclass
    
