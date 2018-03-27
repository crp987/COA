
//  TestBench  2 node point to point interconnection network (version 2)
      

module message2_tb;
reg [31:0]aMessage;
reg aSend;

integer random = 1;

MachineA a(aSend, aMessage);

initial
begin
    $dumpfile("message2.vcd");
    $dumpvars(0, message2_tb);
end    
    

    initial
    begin
    aSend = 1;
    aMessage = 73;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 54;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 75;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 14;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 86;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 36;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 93;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 27;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 68;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #random
    aSend = 1;
    aMessage = 35;
    random = $urandom_range(5-0)*10;
    
    #10
    aSend = 0;
    
    #1
    $finish;
    end


endmodule

