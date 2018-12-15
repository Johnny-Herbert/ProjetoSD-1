
module contador(clock, rco, S);
input wire clock;
output reg [3:0]S;
output reg rco;
initial S = 4'b0000;

always @(posedge clock)begin
	if(S == 4'b1111)begin
		S = 4'b0000;
		rco = 1;
	end else begin
		S = S + 1'b1;
		rco = 0;
	end
end
endmodule
