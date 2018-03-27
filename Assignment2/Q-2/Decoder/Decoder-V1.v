// test bench for 4 to 16 decoder

`timescale 1ns/1ps
module imp;
    reg [3:0]a;  
    reg e;
    wire [15:0]y;
    decoder M1(.a(a),.e(e),.y(y));
    initial
    begin
             $dumpfile("Decoder-V1.vcd");
             $dumpvars(0,imp);
             e=1'b1;
             for(a=0;a<15;a=a+1)
                #1;
    end
    initial
      begin
            $monitor("y = %b",y);
      end
    initial #16 $finish;
endmodule
