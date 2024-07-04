Display the console output for the following.`timescale 10ns/1ns
parameter P = 15.5;
reg a;
initial begin
    $monitor($realtime, " Value of a = %b", a);
    #P a = 1'b1;
    #P a = 1'b0;
end


/ ANSWER :
at delay 0.0 ns Value of a = x;
at dealy 15.5 ns Value of a = 1;
at delay 31.0 ns Value of a = 0;
