`timescale 1ns/1ns
`include "decoder.v"
module decoder1to2tb;
reg a;
wire [1:0] d;
decoder uut(a,d);
initial begin


    $dumpfile("decoder1to2tb.vcd");
    $dumpvars(0,decoder1to2tb);
    a=0;#20;
    a=1;#20
    $display("eot");

    end
endmodule