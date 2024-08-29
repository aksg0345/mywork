`include "interface.sv"
`include "test.sv"

module dflipfloptest;
  test tes;
  mailbox mail;
  object interfac();  
  
  // Instantiate the D flip-flop with asynchronous reset module
  DFLIPFLOP_ASY inst(
    .clk(interfac.clk),
    .d(interfac.d),
    .reset(interfac.reset),
    .q(interfac.q)
  );
  
  initial begin
    mail = new();
    tes = new(interfac, mail);
    fork
      tes.memory; 
      tes.run;     
    join
  end
  
  
  initial begin
    interfac.clk = 0;
    interfac.reset = 0;
    forever #5 interfac.clk = ~interfac.clk;
  end

  initial begin
    interfac.reset = 0;
    #10 interfac.reset = 1;
    #20 interfac.reset = 0;
  end
  
  // Monitor statement to display signal values
  initial begin
    $monitor("clk = %b, d = %b, reset = %b, q = %b", interfac.clk, interfac.d, interfac.reset, interfac.q);
    #50;  
    $finish;
  end

endmodule

