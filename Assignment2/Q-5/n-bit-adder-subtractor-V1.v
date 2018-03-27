//testbench
//subtracting A from B


`timescale 1ns/10ps

module inp;
	parameter n=8;
	addersubtractor  M5(.a(a),.b(b),.m(m),.y(y));
	wire [n:0]y;
	reg m;
	reg [(n-1):0]a;
	reg [(n-1):0]b;
	initial 
	begin
		
		$dumpfile("n-bit-adder-subtractor-V1.vcd");
		$dumpvars(0,inp);
		
		m=1'b0;
		a=2;
                b=4;
                $monitor("y = %b\n",y);
		#10;
		
		m=1'b1;
		a=4;
                b=2;
		$monitor("y = %b\n",y);
				
		
	end
        
        initial #20 $finish;
endmodule
