class monitor;
  
  transaction t;
  mailbox mail;
  virtual object vintfob;
  
  function new(  virtual object vintfob,mailbox mail);
    this.vintfob=vintfob;
    this.mail=mail;
  endfunction
  
  task moni;
    
    repeat(1)
      begin
        
        t=new();
        @(posedge vintfob.clk);
        t.wr_en=vintfob.wr_en;
        t.rd_en=vintfob.rd_en;
        t.data_in=vintfob.data_in;
        #5; 
       // @(posedge vintfob.clk);
	    t.data_out = vintfob.data_out;
        mail.put(t);
       
        #12;
        
        $display("t is recieved from DUT");
        
      end
  endtask
endclass
  
