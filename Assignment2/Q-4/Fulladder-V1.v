// testbench for fulladder

`timescale 1ns/1ps
module inp;
      reg x,y,z;
      wire s,c;
      fulladder M1(.x(x),.y(y),.z(z),.s(s),.c(c));
      
      initial
      begin
             $dumpfile("Fulladder-V1.vcd");
             $dumpvars(0,inp);
             
             x=1'b0;
             y=1'b0;
             z=1'b0;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b0;
             y=1'b0;
             z=1'b1;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b0;
             y=1'b1;
             z=1'b0;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b0;
             y=1'b1;
             z=1'b1;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b1;
             y=1'b0;
             z=1'b0;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b1;
             y=1'b0;
             z=1'b1;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b1;
             y=1'b1;
             z=1'b0;
             $monitor("sum = %b carry = %b",s,c);
             #1;

             x=1'b1;
             y=1'b1;
             z=1'b1;
             $monitor("sum = %b carry = %b",s,c);
 
      end
      initial #8 $finish;
endmodule
