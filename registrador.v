module registrador(clock, valor, funcao, valReg);
input wire clock;
input wire [3:0]funcao;
input wire [3:0]valor;
output reg [3:0]valReg;

always @(posedge clock)begin
	case(funcao)
		4'b0000:begin
			resetar R1 (valReg,valReg);
		end
		4'b0001:begin
			setar S1 (valor,valReg);
		end
		4'b0010:begin
			
		end
		4'b0011:begin
			divisao2 D1 (valReg, valReg);
		end
	endcase
end

endmodule 