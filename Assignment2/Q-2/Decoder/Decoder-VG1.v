//Gate modelling for 4 to 16 Decoder

module decoder(a,e,y);
	input [3:0]a;               //a[3] is msb & a[0] is lsb
	input e;
	output [15:0]y;             //y[15] is msb & y[0] is lsb
	
	not(a0,a[0]);
	not(a1,a[1]);
	not(a2,a[2]);
	not(a3,a[3]);
	
	and(y[0],a3,a2,a1,a0,e);
	and(y[1],a3,a2,a1,a[0],e);
	and(y[2],a3,a2,a[1],a0,e);
	and(y[3],a3,a2,a[1],a[0],e);
	and(y[4],a3,a[2],a1,a0,e);
	and(y[5],a3,a[2],a1,a[0],e);
	and(y[6],a3,a[2],a[1],a0,e);
	and(y[7],a3,a[2],a[1],a[0],e);
	and(y[8],a[3],a2,a1,a0,e);
	and(y[9],a[3],a2,a1,a[0],e);
	and(y[10],a[3],a2,a[1],a0,e);
	and(y[11],a[3],a2,a[1],a[0],e);
	and(y[12],a[3],a[2],a1,a0,e);
	and(y[13],a[3],a[2],a1,a[0],e);
	and(y[14],a[3],a[2],a[1],a0,e);
	and(y[15],a[3],a[2],a[1],a[0],e);
	
endmodule
