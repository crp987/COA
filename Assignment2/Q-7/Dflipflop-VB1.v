module srlatch(r,s,q,q1);
     input r,s;
     output q,q1;
     reg q,q1;
     initial
       begin
             q=1'b0;
             q1=1'b1;
       end
       always@(s,r)
        begin
             case({s,r})
                 {1'b0,1'b0}: begin q=q; q1=q1; end
                 {1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
                 {1'b1,1'b0}: begin q=1'b1; q1=1'b0; end
                 {1'b1,1'b1}: begin q=1'bx; q1=1'bx; end
             endcase
        end
endmodule

module dlatch(d,clk,q,q1);
     input d,clk;
     output q,q1;
     reg r, s;
     always @(clk, d)
     begin
       r = ~d & clk;
       s = d & clk;
       
     end
     srlatch M(r, s, q, q1);
endmodule

module dflipflop(d, clk, q, q1);
    input d, clk;
    output q, q1;
    wire qm, qm1;
    dlatch M1(d, ~clk, qm, qm1);
    dlatch M2(qm, clk, q, q1);
endmodule
