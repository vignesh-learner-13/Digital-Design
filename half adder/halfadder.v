//Here i used data flow modelling for the design of the half adder
module halfadder(input a,input b,output sum ,output carry);
assign sum=a^b;
assign carry= a&b;
endmodule
