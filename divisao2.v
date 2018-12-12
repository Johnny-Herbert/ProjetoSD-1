module divisao2 (A, S);

input  [3:0]A;
output [3:0]S;
 
assign S[0] = A[1];
assign S[1] = A[2];
assign S[2] = A[3];
assign S[3] = 0;
 
endmodule