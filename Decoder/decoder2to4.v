`include "decoder.v"
module decoder2to4(a,d);
input [1:0]a;
output[3:0]d;
wire [3:0]w;
decoder u0 (.a(a[0]),.d(w[3:2]));
decoder u1 (.a(a[1]),.d(w[1:0]));
assign d[0]=w[1]&w[3];
assign d[1]=w[1]&w[2];
assign d[2]=w[3]&w[0];
assign d[3]=w[2]&w[0];


    endmodule