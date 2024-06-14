//2 to 4 line decoder 
module decoder(a,d);



input a;
output [1:0] d;
assign d[0]=~a;
assign d[1]=a;

endmodule
