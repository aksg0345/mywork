module randcase_example;
  bit [7:0] random_value;

  initial begin
    // Randomize and select a case based on the given weights
    randcase
      3: random_value = 8'hAA;  // 3/10 chance
      5: random_value = 8'hBB;  // 5/10 chance
      2: random_value = 8'hCC;  // 2/10 chance
    endcase

    $display("Selected value: %h", random_value);
  end
endmodule
-----------------------------------------------------------

OUTPUT:
# KERNEL: Selected value: bb
