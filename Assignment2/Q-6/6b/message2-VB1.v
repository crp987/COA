// 2 node point to point interconnection network (version 2)
      

// Machine A
module MachineA(send, message);
input send;
input [31:0]message;
always @(send)
begin
    if(send == 1)begin
        
        end
end
    receiveFromA m(send, message);
endmodule

// Machine B
module MachineB(send, message, m1, m2, m3, m4);
input send;
input [31:0]message, m1, m2, m3, m4;
    receiveFromB m(send, message, m1, m2, m3, m4);
endmodule


// Machine B detects if message is received from Machine A
module receiveFromA(receive, message);
input receive;
input [31:0]message;

MachineB r1(receive, message, $urandom_range(message), $urandom_range(message), $urandom_range(message), $urandom_range(message));

endmodule    

// Machine A detects if message is received from Machine B
module receiveFromB(receive, message, bMessage1, bMessage2, bMessage3, bMessage4);
input receive;
input [31:0]message, bMessage1, bMessage2, bMessage3, bMessage4;

always @(receive)
begin
    if(receive == 1)begin
         $monitor("@ time %0t ns - A sent message: %0d to B.\n A received messages: %0d, %0d, %0d, %0d from B.", $time, message, bMessage1, bMessage2, bMessage3, bMessage4);
    end
end
endmodule    





