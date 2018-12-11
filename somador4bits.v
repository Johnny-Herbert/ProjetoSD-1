module somador4bits (A, B, Cin , S, C);

input  [3:0]A;
input  [3:0]B; 
input  Cin;
output [3:0]S;
output C;
wire C0, C1, C2;
 
somador U0 (A[0], B[0], Cin, S[0], C0);
somador U1 (A[1], B[1], C0, S[1], C1);
somador U2 (A[2], B[2], C1, S[2], C2);
somador U3 (A[3], B[3], C2,S[3], C);
 
endmodule