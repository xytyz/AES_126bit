`timescale 1ns / 1ps

module AES_TOP(
    input clk,
    output [127:0] aesout);

wire [127:0] tempout,datain,key;

assign datain=128'h 31323334353637383132333435363738; //ascii: 1234567812345678
assign key=128'h 30313032303330343035303630373038; //ascii: 0102030405060708

aescipher u1(.clk(clk),.datain(datain),.key(key),.dataout(tempout));

assign aesout = tempout[127:0];

endmodule
