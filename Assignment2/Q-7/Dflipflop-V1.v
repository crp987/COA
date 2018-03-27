// testbench for dflipflop

module inp;
     reg d,clk;
     wire q,q1;
     dflipflop M3(.d(d), .clk(clk), .q(q), .q1(q1));
     initial
     begin
             $dumpfile("7-V1.vcd");
             $dumpvars(0,inp);
             $monitor("@time = %0t, clock = %d ns, d = %b ,q = %b ,q1 = %b\n",$time,clk,d,q,q1);
             
    clk = 0;
    d = 0;
end    
    

    always
    begin 
        #10 
        clk = ~clk;
    end

    initial
    begin
    #15   
    d = 1'b1;
    #30
    d = 1'b0;
    #20   
    d = 1'b0;
    #10
    d = 1'b1;
    #30   
    d = 1'b1;
    #20
    d = 1'b1;
    #15  
    d = 1'b0;
    #20
    d = 1'b1;
 
    $finish;
    end


endmodule
