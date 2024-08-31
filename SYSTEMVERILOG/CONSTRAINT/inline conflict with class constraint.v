class generator;
  rand bit [5:0] value;
  constraint cons {value <= 20; value > 10;}
endclass

module conflict_with_inline();
  generator gen = new();
  int check;

  initial begin
    for (int i = 1; i <= 8; i++) begin
      check = gen.randomize();
      if (check && gen.randomize() with {value > 15; value < 18;}) begin
        $display("\tRandomization Done \t @ iteration: %0d -----> value: %0d", i, gen.value);
      end else begin
        $display("\tRandomization Failed \t @ iteration: %0d -----> value: %0d", i, gen.value);
      end
    end
  end
endmodule
--------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 	Randomization Done 	 @ iteration: 1 -----> value: 16
# KERNEL: 	Randomization Done 	 @ iteration: 2 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 3 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 4 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 5 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 6 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 7 -----> value: 17
# KERNEL: 	Randomization Done 	 @ iteration: 8 -----> value: 16
