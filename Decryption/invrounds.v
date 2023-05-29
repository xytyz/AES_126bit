`timescale 1ns / 1ps

module invrounds(
    input [3:0]rc,
    input [127:0]data,
    input [127:0]keyin,
    output [127:0]keyout,
    output [127:0]rndout
);

wire [127:0] sb,sr,mcl;

invKeyGeneration t0(rc,keyin,keyout);
invshiftrow t2(data,sr);
invsubbytes t1(sr,sb);
invmixcolumn t3(sb,mcl);

assign rndout= keyout^mcl;
endmodule
