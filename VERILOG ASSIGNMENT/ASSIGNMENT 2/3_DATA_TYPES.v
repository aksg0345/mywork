What value is passed across the port b in the below snippet?
module test(output [32:0]b);
real a=14.5;
assignb- a;
endmodule

// answer: across the port b is 14;
// here real number is truncated into integer part so 14.5 to 14 , binary 1110;
