module shiftrow(
    input [127:0] subbed,
    output [127:0] shifted
 );

    assign shifted[127:120] = subbed[127:120];  
    assign shifted[119:112] = subbed[87:80];
    assign shifted[111:104] = subbed[47:40];
    assign shifted[103:96]  = subbed[7:0];
    assign shifted[95:88]  = subbed[95:88];
    assign shifted[87:80]  = subbed[55:48];
    assign shifted[79:72]  = subbed[15:8];
    assign shifted[71:64]  = subbed[103:96];
    assign shifted[63:56]  = subbed[63:56];
    assign shifted[55:48]  = subbed[23:16];
    assign shifted[47:40]  = subbed[111:104];
    assign shifted[39:32]  = subbed[71:64];
    assign shifted[31:24]  = subbed[31:24];
    assign shifted[23:16]  = subbed[119:112];
    assign shifted[15:8]   = subbed[79:72];
    assign shifted[7:0]    = subbed[39:32]; 
    
endmodule
