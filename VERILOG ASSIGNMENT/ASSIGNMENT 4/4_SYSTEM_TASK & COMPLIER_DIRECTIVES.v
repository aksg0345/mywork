4.Display the console output for the following
timescale 10ns/1ns
parameter P=15.5;
reg a;
initial
begin
  $monitor(Stime,"Value of a = %b",a); 
  #P a=1'b1:
 #P a = 1'b0;
end


/answer: p=15;
/at initialy delay 0, a is x;
/ at #15.5, a is 1;
/ at #15.5, 15 value of  a is 0;
