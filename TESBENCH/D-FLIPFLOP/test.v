`include "environment.sv"

class test;
  
  environment envi;
  mailbox mail;
  virtual object vintfob;
  
  function new(virtual object vintfob,mailbox mail);
    
    
    this.vintfob=vintfob;
    this.mail=mail;
    
  endfunction
  
  task memory;
    mail=new();
    envi=new(vintfob,mail);
  endtask
  
  
  task run;
    fork
      
    envi.memory;
    envi.run;
    
    join
       $display("envi in test");
  endtask
endclass
