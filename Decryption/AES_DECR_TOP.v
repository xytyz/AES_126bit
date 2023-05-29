`timescale 1ns / 1ps


module AES_DECR_TOP(
    output [127:0] decrout);

wire [127:0] tempout,datain,key;

assign datain=128'h d09c51c6a5452975a73ee9bba9eadd36; //answer should be ascii: 1234567812345678
assign key=128'h 30313032303330343035303630373038; //ascii: 0102030405060708

aesdecrcipher u1(.datain(datain),.key(key),.dataout(tempout));

assign decrout = tempout[127:0];

endmodule