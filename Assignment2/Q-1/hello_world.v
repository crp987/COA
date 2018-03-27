module Hello;
integer i;
initial
begin
    for(i=0;i<10;i=i+1) 
    begin
    #10 $monitor("Time=%d,Hello World",$time);
    end
    #100 $finish;
end
endmodule
