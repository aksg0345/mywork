1.What value of a is displayed on the console output? Justify the
same.
regl1:0|a;
initial
begin
$display(Stime,"a=%d",a);
a=2'd3;
#10;
a = 2'd2;
end



/ answer: at initialy a is not decalered 
/so initial  time delay at  0 [a is x], at time delay #10 [a is 3], at time delay #20 [a is 2];
