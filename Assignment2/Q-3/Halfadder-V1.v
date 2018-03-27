// testbench for half adder

`timescale 1ns/1ps
module inp;
     reg a,b;
     wire s,c;
     halfadder M(.a(a),.b(b),.s(s),.c(c));
     initial
     begin
               $dumpfile("Halfadder-V1.vcd");
               $dumpvars(0,inp);
               
              
               a=1'b0;
               b=1'b0;
               $monitor("sum = %b carry = %b\n",s,c);
               #1;

               a=1'b0;
               b=1'b1;
               $monitor("sum = %b carry = %b\n",s,c);
               #1;

               a=1'b1;
               b=1'b0;
               $monitor("sum = %b carry = %b\n",s,c);
               #1;
         
               a=1'b1;
               b=1'b1;
               $monitor("sum = %b carry = %b\n",s,c);
     end
     initial #4 $finish;
endmodule
