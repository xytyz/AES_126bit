module subbytes(
input [127:0] data,
output [127:0] subbed
);

     sbox q0( .in(data[127:120]),.out(subbed[127:120]) );
     sbox q1( .in(data[119:112]),.out(subbed[119:112]) );
     sbox q2( .in(data[111:104]),.out(subbed[111:104]) );
     sbox q3( .in(data[103:96]),.out(subbed[103:96]) );
     
     sbox q4( .in(data[95:88]),.out(subbed[95:88]) );
     sbox q5( .in(data[87:80]),.out(subbed[87:80]) );
     sbox q6( .in(data[79:72]),.out(subbed[79:72]) );
     sbox q7( .in(data[71:64]),.out(subbed[71:64]) );
     
     sbox q8( .in(data[63:56]),.out(subbed[63:56]) );
     sbox q9( .in(data[55:48]),.out(subbed[55:48]) );
     sbox q10(.in(data[47:40]),.out(subbed[47:40]) );
     sbox q11(.in(data[39:32]),.out(subbed[39:32]) );
     
     sbox q12(.in(data[31:24]),.out(subbed[31:24]) );
     sbox q13(.in(data[23:16]),.out(subbed[23:16]) );
     sbox q14(.in(data[15:8]),.out(subbed[15:8]) );
     sbox q16(.in(data[7:0]),.out(subbed[7:0]) );
	  
endmodule
