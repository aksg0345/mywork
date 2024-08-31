          class generator;
            rand bit [2:0] value;
          endclass

          module only_inline();
             generator gen = new();
            initial
            begin
              for(int i=1;i<=8;i++)
              begin
                void'(gen.randomize()with{value==3;});
                #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d",$time,i,gen.value);
              end
            end
          endmodule

--------------------------------------------------------------------------

OUTPUT
# KERNEL: 	[1] @ iteration: 1 -----> value: 3
# KERNEL: 	[2] @ iteration: 2 -----> value: 3
# KERNEL: 	[3] @ iteration: 3 -----> value: 3
# KERNEL: 	[4] @ iteration: 4 -----> value: 3
# KERNEL: 	[5] @ iteration: 5 -----> value: 3
# KERNEL: 	[6] @ iteration: 6 -----> value: 3
# KERNEL: 	[7] @ iteration: 7 -----> value: 3
# KERNEL: 	[8] @ iteration: 8 -----> value: 3
