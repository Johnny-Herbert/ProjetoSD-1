module memoria(clock, posicaoMemoria, instrucao, valor);
input wire clock;
input [3:0]posicaoMemoria;
output reg[2:0]instrucao;
output reg[3:0]valor;

wire [3:0]A;
wire [3:0]B;

always @(posedge clock)begin
	case(posicaoMemoria)
		4'b0000:begin
			instrucao = 3'b000;
			valor = A;
		end
		4'b0001:begin
			instrucao = 3'b001;
			valor = B;
		end
		4'b0010:begin
			instrucao = 3'b010;
			valor = 0;
		end
		4'b0011:begin
			instrucao = 3'b011;
			valor = 0;
		end
		4'b0100:begin
			instrucao = 3'b100;
		end
	endcase
end
endmodule 