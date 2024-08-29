class monitor;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  
  function new (virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task moni;
    
    repeat(8)
      begin
        
        pkt=new();
        mail.put(pkt);
        pkt.a=vintf.a;  
        pkt.b=vintf.b;
        pkt.c=vintf.c;
       #5;
       pkt.sum=vintf.sum;
       pkt.carry=vintf.carry;
        
        $display("Packet received from DUT");
        
       // $display("  sum=%b carry=%b",pkt.sum,pkt.carry);
        //#5;
      end
  endtask
endclass
        
