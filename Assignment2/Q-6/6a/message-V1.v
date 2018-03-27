module message_tb;
reg [31:0]aMessage, bMessage;
reg aSend, bSend;


MachineA a(aSend, aMessage);
MachineB b(bSend, bMessage);

initial
begin
    $dumpfile("message-V1.vcd");
    $dumpvars(0, message_tb);
end    
    

    initial
    begin
    aSend = 0; 
    bSend = 0; 
    aMessage = 0;
    bMessage = 0;
    #10
    aSend = 1; 
    bSend = 0; 
    aMessage = 54;
    #10
    aSend = 0; 
    bSend = 1; 
    bMessage = 72;
    #10
    aSend = 1; 
    bSend = 0; 
    aMessage = 19;
    #10
    aSend = 0; 
    bSend = 1; 
    bMessage = 93;
    #10
    aSend = 1; 
    bSend = 0; 
    aMessage = 34;
    #10
    aSend = 0; 
    bSend = 1; 
    bMessage = 79;
    #10
    aSend = 1; 
    bSend = 0; 
    aMessage = 28;
    #10
    aSend = 0; 
    bSend = 1; 
    bMessage = 86;
    #10
    $finish;
    end


endmodule

