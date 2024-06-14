`timescale 1ns/1ns

`include "decoder2to4.v"
module decoder2to4tb;
reg [1:0]a;
wire [3:0] d;
decoder2to4 uut(a,d);
initial begin


    $dumpfile("decoder2to4tb.vcd");
    $dumpvars(0,decoder2to4tb);
    a=2'b00 ;#20;
     a=2'b01 ;#20;
      a=2'b10 ;#20;
       a=2'b11 ;#20;
    $display("eot");

    end
endmodule