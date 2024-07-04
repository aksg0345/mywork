4. Find the value of the variable t at 1ns & 20ns respectively from the
pelow snippet.

time=t;
initial begin
#10 t $time;
#20
end


// answer :  t is unassigned at time #10 time units;
// therfore at 1ns, t is unassigned;
// at 20ns, t is assigned the value "10"
