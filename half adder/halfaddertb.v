`timescale 1ns / 1ps
module halfaddertb;
reg a,b;

wire sum, carry;
halfadder u1 (.a(a), .b(b), .sum(sum), .carry(carry));
initial begin
	a=0;
	b=0;
	$dumpfile("hatest.vcd");
	$dumpvars(0,halfaddertb);
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#20 $finish;
end
endmodule
