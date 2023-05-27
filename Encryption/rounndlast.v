`timescale 1ns / 1ps

module rounndlast(
    input clk,
    input [3:0]r_count,
    input [127:0]rin,
    input [127:0]keylastin,
    output [127:0]fout
);

wire [127:0] subbed,shifted,mixed,keyout;

KeyGeneration t0(r_count,keylastin,keyout);
subbytes t1(rin,subbed);
shiftrow t2(subbed,shifted);
assign fout= keyout^shifted;

endmodule
