8.Draw the waveform for the below snippet

  [ initial begin
    #5 clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    repeat (3) @(negedge clk);
    rst = 0;
end

   /answer : Time:  0   5  10  15  20  25  30  35  40  45  50
             clk :  -   0   1   0   1   0   1   0   1   0   1
The clock starts with an initial delay of 5 time units and then toggles every 5 time unit;

  
Time:  0   5  10  15  20  25  30  35  40  45  50
rst :  1   1   1   1   1   1   0   0   0   0   0

  here at negegde 10,20,30 after 30 the rst will be 0;
