// Testbench for encoder

`timescale 1ns/1ps
module inp;
   reg [15:0]a;
   wire [3:0]y;
   encoder M(.a(a),.y(y));  // Instance name required
  
   initial
   begin
         $dumpfile("Encoder-V1.vcd");
         $dumpvars(0,inp);
 
         for(a=32768;a>1;a=a/2)
              #1;
   end
      
    initial
      begin
          $monitor("y = %b",y);
      end
     initial #16 $finish;
endmodule
