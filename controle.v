module controle (A, Op);

input  [3:0]A;
input  [2:0]Op; 
reg overflow;
reg [3:0]Y;
//acumulador
reg [3:0]X;
//entrada
reg [3:0]Z;
//saida
wire [3:0]CX,CY,CZ;
//000 clear
//001 carrega
//010 mantem
//011 add
//100 divisao
//101 display
 
case(Op)
 3'b000:begin
 setar S1 (X,X);
 setar S2 (Y,Y);
 setar S3 (Z,Z);
 end
 3'b001:begin
 restar(CX,X);
 restar(CY,Y);
 end
 3'b010:begin
 overflow = 0;
 end
 3'b011:begin
	somador4bits(X,Y,0,Y,overflow);
 end
 3'b100:begin
	divisao2(X,CX)
end
 3'b101:begin
	overflow = 0;
 end
endcase 
endmodule