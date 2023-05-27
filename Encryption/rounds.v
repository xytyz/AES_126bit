module rounds(
    input clk,
    input [3:0]r_count,
    input [127:0]data,
    input [127:0]keyin,
    output [127:0]keyout,
    output [127:0]rndout
);

    wire [127:0] subbed,shifted,mixed;
    
    KeyGeneration t0(r_count,keyin,keyout);
    subbytes t1(data,subbed);
    shiftrow t2(subbed,shifted);
    mixcolumn t3(shifted,mixed);
    
    assign rndout= keyout^mixed;

endmodule
