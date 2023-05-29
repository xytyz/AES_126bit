
  module invmixcolumn (
  input [127:0] in,
  output reg [127:0] out_data
);
  
  // Define the inverse MixColumns matrix
    wire [7:0] inv_mix_column [3:0][3:0];
    assign inv_mix_column[0][0] = 8'h0e;
    assign inv_mix_column[0][1] = 8'h0b;
    assign inv_mix_column[0][2] = 8'h0d;
    assign inv_mix_column[0][3] = 8'h09;
     
    assign inv_mix_column[1][0] = 8'h09;
    assign inv_mix_column[1][1] = 8'h0e;
    assign inv_mix_column[1][2] = 8'h0b;
    assign inv_mix_column[1][3] = 8'h0d;
     
    assign inv_mix_column[2][0] = 8'h0d;
    assign inv_mix_column[2][1] = 8'h09;
    assign inv_mix_column[2][2] = 8'h0e;
    assign inv_mix_column[2][3] = 8'h0b;
     
    assign inv_mix_column[3][0] = 8'h0b;
    assign inv_mix_column[3][1] = 8'h0d;
    assign inv_mix_column[3][2] = 8'h09;
    assign inv_mix_column[3][3] = 8'h0e;
    
    wire [7:0] in_data [3:0] [3:0];
    assign    in_data[0][0] = in[127:120];
    assign    in_data[0][1] = in[119:112];
    assign    in_data[0][2] = in[111:104];
    assign    in_data[0][3] = in[103:96];
    
    assign    in_data[1][0] = in[95:88];
    assign    in_data[1][1] = in[86:80];
    assign    in_data[1][2] = in[79:72];
    assign    in_data[1][3] = in[71:64];
    
    assign    in_data[2][0] = in[63:56];
    assign    in_data[2][1] = in[55:48];
    assign    in_data[2][2] = in[47:40];
    assign    in_data[2][3] = in[39:32];
    
    assign    in_data[3][0] = in[31:24];
    assign    in_data[3][1] = in[23:16];
    assign    in_data[3][2] = in[15:8];
    assign    in_data[3][3] = in[7:0];

 
  // Perform the inverse MixColumns operation
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin
      always @* begin
        out_data[i*32+31:i*32] = 
          (inv_mix_column[0][i] & in_data[i][0]) ^
          (inv_mix_column[1][i] & in_data[i][1])  ^
          (inv_mix_column[2][i] & in_data[i][2])  ^
          (inv_mix_column[3][i] & in_data[i][3]);
      end
    end
  endgenerate
    
endmodule

