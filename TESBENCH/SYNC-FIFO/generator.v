class generator;
  
  transaction t;
  mailbox mail;
  
  function new (mailbox mail);
    this.mail=mail;
  endfunction
  
  task gene;
    
    repeat(1);
    begin
      
      t=new();
      t.randomize();
      mail.put(t);
      $display("packet is generated %0d",t.data_in);
      #5;
    end
  endtask
endclass
