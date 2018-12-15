module registrador(clock, valor, funcao, valReg);
input wire clock;
input [3:0]funcao;
input [3:0]valor;
output [3:0]valReg;
/*
always @(posedge clock)begin
	case(funcao)
		4'b0000:begin
			resetar r1(valReg,valReg);
		end
		4'b0001:begin
			setar s1(valor,valReg);
		end
		4'b0010:begin
			
		end
		4'b0011:begin
			divisao2 d1(valReg, valReg);
		end
		default
	endcase
end
*/
endmodule 