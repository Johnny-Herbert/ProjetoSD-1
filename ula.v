module ula(tula, regX, regY, valorReg);
input wire tula;
input [3:0]regX;
input [3:0]regY;
output [3:0]valorReg;
reg overflow;

case(tula)
	1'b0:begin
		somador4bits s1(regX, regY, 0, valorReg, overflow);
	end
endcase

endmodule 