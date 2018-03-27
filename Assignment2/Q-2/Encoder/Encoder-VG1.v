// Gate Flow Modelling

module encoder(a,y);
     input [15:0]a;
     output [3:0]y;       // y[3] is msb & y[0] is lsb
      
     or(y[0],a[1],a[3],a[5],a[7],a[9],a[11],a[13],a[15]);
     or(y[1],a[2],a[3],a[6],a[7],a[10],a[11],a[14],a[15]);
     or(y[2],a[4],a[5],a[6],a[7],a[12],a[13],a[14],a[15]);
     or(y[3],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15]);
endmodule
