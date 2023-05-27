module KeyGeneration(rc,key,keyout);
    
   input [3:0] rc;
   input [127:0]key;
   output [127:0] keyout;
   
    wire [31:0] w0,w1,w2,w3,temp;
         
               
       assign w0 = key[127:96];
       assign w1 = key[95:64];
       assign w2 = key[63:32];
       assign w3 = key[31:0];
       
       
       assign keyout[127:96]= w0 ^ temp ^ rcon(rc);
       assign keyout[95:64] = w0 ^ temp ^ rcon(rc)^ w1;
       assign keyout[63:32] = w0 ^ temp ^ rcon(rc)^ w1 ^ w2;
       assign keyout[31:0]  = w0 ^ temp ^ rcon(rc)^ w1 ^ w2 ^ w3;
       
       
    sbox s1(.in(w3[23:16]),.out(temp[31:24]));
    sbox s2(.in(w3[15:8]),.out(temp[23:16]));
    sbox s3(.in(w3[7:0]),.out(temp[15:8]));
    sbox s4(.in(w3[31:24]),.out(temp[7:0]));
       
       
       
     function [31:0]	rcon;
      input	[3:0]	rc;
      case(rc)	
         4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
         default: rcon=32'h00_00_00_00;
       endcase

     endfunction

endmodule
