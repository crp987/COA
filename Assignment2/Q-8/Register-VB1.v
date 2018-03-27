module srlatch(r,s,reset,q,q1);
     input r,s,reset;
     output q,q1;
     reg q,q1;
     initial
       begin
             q=1'b0;
             q1=1'b1;
       end
       always@(reset,s,r)
        begin
             case({reset,s,r})
                 {1'b1, 1'b1, 1'b0}: begin q=1'b0; q1=1'b1; end
                 {1'b0,1'b0,1'b0}: begin q=q; q1=q1; end
                 {1'b0,1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
                 {1'b0,1'b1,1'b0}: begin q=1'b1; q1=1'b0; end
                 {1'b0,1'b1,1'b1}: begin q=1'bx; q1=1'bx; end
             endcase
        end
endmodule

module dlatch(d,clk,reset,q,q1);
     input d,clk,reset;
     output q,q1;
     reg r, s;
     always @(clk, d, reset)
     begin
       r = ~d & clk;
       s = d & clk;
       
     end
     srlatch M(r, s, reset, q, q1);
endmodule

module dflipflop(d, clk, reset, q, q1);
    input d, clk, reset;
    output q, q1;
    wire qm, qm1;
    dlatch M1(d, ~clk, reset, qm, qm1);
    dlatch M2(qm, clk, reset, q, q1);
endmodule

module register(d,clk,reset,q,q1);
    input [31:0]d;
    input clk,reset;
    output [31:0]q;
    output [31:0]q1;
    genvar i;
    
    generate
    for (i = 0; i < 32; i = i + 1) 
           begin
               dflipflop M3(d[i], clk, reset, q[i], q1[i]); 
           end
    endgenerate
endmodule
