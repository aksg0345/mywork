class monitor;
  
  transaction t;
  mailbox mail;
  virtual object vintfob;
  
   
  function new ( virtual object vintfob,mailbox mail);

    this.vintfob=vintfob;
    this.mail=mail;
    
  endfunction
  
   
  task monit;
    
    repeat(5)
      begin
        
        t=new();
        mail.put(t);
//         t.clk=vintfob.clk;
//         t.reset=vintfob.reset;
        t.d=vintfob.d;
        #5;
         vintfob.q=t.q;
        $display("t is recieved from DUT");
      end
  endtask
endclass
