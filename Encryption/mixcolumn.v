module mixcolumn(
    input [127:0] shifted,
    output [127:0] mixed
);

    assign mixed[127:120]= mixcolumn32 (shifted[127:120],shifted[119:112],shifted[111:104],shifted[103:96]);
    assign mixed[119:112]= mixcolumn32 (shifted[119:112],shifted[111:104],shifted[103:96],shifted[127:120]);
    assign mixed[111:104]= mixcolumn32 (shifted[111:104],shifted[103:96],shifted[127:120],shifted[119:112]);
    assign mixed[103:96]= mixcolumn32 (shifted[103:96],shifted[127:120],shifted[119:112],shifted[111:104]);
    
    assign mixed[95:88]= mixcolumn32 (shifted[95:88],shifted[87:80],shifted[79:72],shifted[71:64]);
    assign mixed[87:80]= mixcolumn32 (shifted[87:80],shifted[79:72],shifted[71:64],shifted[95:88]);
    assign mixed[79:72]= mixcolumn32 (shifted[79:72],shifted[71:64],shifted[95:88],shifted[87:80]);
    assign mixed[71:64]= mixcolumn32 (shifted[71:64],shifted[95:88],shifted[87:80],shifted[79:72]);
    
    assign mixed[63:56]= mixcolumn32 (shifted[63:56],shifted[55:48],shifted[47:40],shifted[39:32]);
    assign mixed[55:48]= mixcolumn32 (shifted[55:48],shifted[47:40],shifted[39:32],shifted[63:56]);
    assign mixed[47:40]= mixcolumn32 (shifted[47:40],shifted[39:32],shifted[63:56],shifted[55:48]);
    assign mixed[39:32]= mixcolumn32 (shifted[39:32],shifted[63:56],shifted[55:48],shifted[47:40]);
    
    assign mixed[31:24]= mixcolumn32 (shifted[31:24],shifted[23:16],shifted[15:8],shifted[7:0]);
    assign mixed[23:16]= mixcolumn32 (shifted[23:16],shifted[15:8],shifted[7:0],shifted[31:24]);
    assign mixed[15:8]= mixcolumn32 (shifted[15:8],shifted[7:0],shifted[31:24],shifted[23:16]);
    assign mixed[7:0]= mixcolumn32 (shifted[7:0],shifted[31:24],shifted[23:16],shifted[15:8]);
    
    
    function [7:0] mixcolumn32;
        input [7:0] i1,i2,i3,i4;
        begin
            mixcolumn32[7]= i1[6] ^ i2[6] ^ i2[7] ^ i3[7] ^ i4[7];
            mixcolumn32[6]= i1[5] ^ i2[5] ^ i2[6] ^ i3[6] ^ i4[6];
            mixcolumn32[5]= i1[4] ^ i2[4] ^ i2[5] ^ i3[5] ^ i4[5];
            mixcolumn32[4]= i1[3] ^ i1[7] ^ i2[3] ^ i2[4] ^ i2[7] ^ i3[4] ^ i4[4];
            mixcolumn32[3]= i1[2] ^ i1[7] ^ i2[2] ^ i2[3] ^ i2[7] ^ i3[3] ^ i4[3];
            mixcolumn32[2]= i1[1] ^ i2[1] ^ i2[2] ^ i3[2] ^ i4[2];
            mixcolumn32[1]= i1[0] ^ i1[7] ^ i2[0] ^ i2[1] ^ i2[7] ^ i3[1] ^ i4[1];
            mixcolumn32[0]= i1[7] ^ i2[7] ^ i2[0] ^ i3[0] ^ i4[0];
        end
    endfunction
endmodule
