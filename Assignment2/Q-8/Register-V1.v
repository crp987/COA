module inp;
reg [31:0]d;
reg reset, clk;
wire [31:0]q, q1;


register M5(.d(d), .clk(clk), .reset(reset), .q(q), .q1(q1));
initial
begin
    $dumpfile("Register-V1.vcd");
    $dumpvars(0, inp);
    $monitor("@ time=%0t clock=%d  reset=%d ns  d=%d q=%d", $time, clk, reset, d, q);
    
    clk = 0;
    d = 0;
    reset = 0;
end    
    

    always
    begin 
        #10 
        clk = ~clk;
    end

    initial
    begin
    #15   
    d = 2147483647;
    #30
    d = -1;
    #20   
    d = -2147483648;
    #10
    reset = 1;
    #30   
    d = 167462746;
    #20
    reset = 0;
    d = -20593375;
    #15  
    d = 54972792;
    #20
    d = -1024;
    
 
    $finish;
    end


endmodule
