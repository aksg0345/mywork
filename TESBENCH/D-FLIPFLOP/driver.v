class driver;
  
  transaction t;
  mailbox mail;
  virtual object vintfob;
  
  
  function new ( virtual object vintfob,mailbox mail);

    this.vintfob=vintfob;
    this.mail=mail;
    
  endfunction
  
  
  task drive;
    
    repeat(5)
      begin
        
        t=new();
        mail.get(t);
//         vintfob.clk=t.clk;
//         vintfob.reset=t.reset;
        vintfob.d=t.d;
        
        vintfob.q=t.q;
        $display("t is recieved");
      end
  endtask
endclass
        
