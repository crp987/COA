module receiveFromA(receive, message);
input receive;
input [31:0]message;
always @(receive)
begin
    if(receive == 1)begin
        $monitor("@ time %0t ns - B received message: %d from A.", $time, message);
        end
end
endmodule    

module receiveFromB(receive, message);
input receive;
input [31:0]message;

always @(receive)
begin
    if(receive == 1)begin
         $monitor("@ time %0t ns - A received message: %d from B.", $time, message);
        end
end

endmodule    


module MachineA(send, message);
input send;
input [31:0]message;
    receiveFromA m(send, message);
endmodule

module MachineB(send, message);
input send;
input [31:0]message;
    receiveFromB m(send, message);
endmodule
