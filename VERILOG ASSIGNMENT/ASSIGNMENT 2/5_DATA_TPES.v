5.Write an RTL snippet to initialize all the locations of an array of size:10x8
to 0 at Ons. Depth= 10, Width = 8bits



// answer :
module initial array;
  reg[7:0]array[9:0]; // 10x8 array

  initial begin
    integer i;
    for (i=0; i<10; i=i+1)begin
      array[i]=8'b0;
    end
  end
endmodule
