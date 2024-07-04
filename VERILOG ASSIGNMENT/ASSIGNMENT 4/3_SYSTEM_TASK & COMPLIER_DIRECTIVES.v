3.What values are monitored for the variable b till the end of
simulation time? Display the same.

reg[1:0]b;
initial
begin
Smonitor($time,"b=%d",b);
b=2d0;
b=2dx;
#10;
b=2d2;
#10:
b=2d1;
$monitoroff;
#10;
b=2d2;
Smonitoron;
#10;
#100 $finish;
end


/  ANSWWER: at initial delay #0 ,b is unknowm x;
/ b is x;
/ delay #10 b is 2;
/ delay #20 b is 1;
/ changes are not "monitored when $monitoroff"
/ delay #40 b is 2;
