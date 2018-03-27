//gate model


//Gate modelling of Half Adder

module halfadder(a,b,s,c);
	input a,b;
	output s,c;
	
	xor(s,a,b);
	and(c,a,b);
	
endmodule

module fulladder(x,y,z,s,c);
	input x,y,z;
	output s,c;
	wire s1,c1,c2;
	
	halfadder HA1(.a(x),.b(y),.s(s1),.c(c1));
	halfadder HA2(.a(s1),.b(z),.s(s),.c(c2));
	or (c,c1,c2);
endmodule


