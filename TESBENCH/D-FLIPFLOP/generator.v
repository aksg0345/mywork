class generator;
  
  transaction t;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task gener;
    
    repeat(5)
      begin
        
        t=new();
        t.randomize();
        mail.put(t);
        $display("t is generated");
      #5;
      end
  endtask
endclass
