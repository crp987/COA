// Gate flow modelling

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

module addersubtractor(a,b,m,y);
        parameter n=8;
        input [(n-1):0]a;
        input [(n-1):0]b;
        input m;
        output [n:0]y;
        wire [(n-1):0]w;
        wire [(n-1):0]C;
         
        genvar i;
        generate
            for(i=0;i<n;i=i+1)
               begin
                  xor(w[i],b[i],m);
               end
        endgenerate
        
        fulladder f0(.x(a[0]),.y(w[0]),.z(m),.s(y[0]),.c(C[0]));
        
        generate
            for(i=1;i<n;i=i+1)
               begin
                   fulladder f0(.x(a[i]),.y(w[i]),.z(C[i-1]),.s(y[i]),.c(C[i]));
               end
            
        endgenerate
        assign y[n]=C[n-1];
endmodule
