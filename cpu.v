module cpu()
wire clock;
wire rco;
wire [3:0]posicaoMemoria;

wire [2:0]instrucao;
wire valor;
wire saidaUla;

wire [3:0]tx;
wire [3:0]ty;
wire [3:0]tz;
wire [3:0]tula;

reg [3:0]regX;
reg [3:0]regY;
wire [3:0]saidaUla;


contador pc(clock, rco, posicaoMemoria);
memoria M (clock, posicaoMemoria, instrucao, valor);
controle controlador(clock, instrucao, tx, ty, tz, tula);
ula U (tula, regX, regY, saidaUla);
registrador registradorX(clock, valor, tx, regX);
registrador registradorY(clock, saidaUla, ty, regY);
registrador registradorZ(clock, regY, ty, regZ);

endmodule 
