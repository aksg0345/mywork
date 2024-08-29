class generator;
  
  transaction pkt;
  
  mailbox mail;
  
  function new(mailbox mail);
    
    this.mail=mail;
    
  endfunction
  
  task gene;
    
    repeat(8)
      begin
        
        pkt=new();
        pkt.randomize();
       // pkt.a=1;
        //pkt.b=0;
        //pkt.c=1;
        mail.put(pkt);
        $display("packet is generated");
       // $monitor(" a=%b b=%b c=%b ",pkt.a,pkt.b,pkt.c);
        #5;
      end
  endtask
endclass
