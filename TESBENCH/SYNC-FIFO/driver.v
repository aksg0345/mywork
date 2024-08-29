 class driver;
  
  transaction t;
  mailbox mail;
  virtual object vintfob;
   
  function new(  virtual object vintfob,mailbox mail);
    this.vintfob=vintfob;
    this.mail=mail;
  endfunction
  
  
  task data;
    
   
     @(posedge vintfob.clk );
     
      vintfob.rst=1'b1;
      @(posedge vintfob.clk );
    
     vintfob. wr_en=1'b0;
     vintfob. rd_en=1'b0;
      vintfob.data_in=1'b0;
    vintfob.data_out=1'b0;
      $display("reset condition");
    
  endtask
   
   
   task name;
   
    
     @(posedge vintfob.clk );
    
     vintfob.rst=1'b0;
        
      //@(posedge vintfob.clk );
      vintfob. wr_en=1'b1;
      vintfob.rd_en=1'b0;
       vintfob.data_in=t.data_in;
    
      $display("write condition");
  
  
      @(posedge vintfob.clk );
    
       vintfob.rst=1'b0;
     // @(posedge vintfob.clk );
      
      vintfob.wr_en=1'b0;
      vintfob.rd_en=1'b1;
      vintfob.data_out=t.data_in;
      $display("read condition");
    
  endtask

  
  task driv;
    
    repeat(1)
      begin
        
        t=new();
        mail.get(t);
        data;
        name;
        $display("t data in driver");
        #10;
      end
  endtask
endclass
