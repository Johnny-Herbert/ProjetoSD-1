module controle (clock, Op, tx, ty, tz, tula);

input wire [2:0]Op; 
input wire clock;

output reg[3:0]tx;
output reg[3:0]ty;
output reg[3:0]tz;
output reg[3:0]tula;

//000 CLEARLD [1,0,0,x]
//001 ADDLD   [1,1,2,0]
//010 ADD     [0,1,2,0]
//011 SHIFTR  [2,3,2,x]
//100 DISPLAY [2,0,1,X]

 always @(posedge clock)begin
case(Op)

  3'b000:begin		//CLEARLD  X=A  y=-  Z=-
	tx = 4'b0001;
	ty = 4'b0000;
	tz = 4'b0000;
	tula = 1'b0;
 end
 
   3'b001:begin		//ADDLD    X=B  y=A  Z=0
	tx = 4'b0001;
	ty = 4'b0001;
	tz = 4'b0010;
	tula = 1'b0;
 end
 
   3'b010:begin        //ADD     X=0  y=A+B  Z=0
	tx = 4'b0000;
	ty = 4'b0001;
	tz = 4'b0010;
	tula = 1'b0;
 end
 3'b011:begin    //SHIFTR   X=0  Y=A+B/2  Z=0
	tx = 4'b0010;
	ty = 4'b0011;
	tz = 4'b0010;
	tula = 1'b0;
 end
 
  3'b100:begin		//DISPLAY X=0  Y=0  Z=a+b/2;
	tx = 4'b0010;
	ty = 4'b0000;
	tz = 4'b0001;
	tula = 1'b0;
 end
endcase 
end

endmodule 
	