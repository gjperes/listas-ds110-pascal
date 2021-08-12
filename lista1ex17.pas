Program lista1ex17 ;
//feito por Gabriel

//FUP para apurar o resultado de uma eleição entre três candidatos (A, B, C). 
// A entrada é encerrada quando for lido o caractere *. 
// válidos: entrada A, B ou C, votos em um dos candidatos. 
// “Espaço”, considerar voto em branco. 
// Qualquer outro caractere de entrada considerar voto inválido. 
// Antes de encerrar o programa, calcular a 
// porcentagem de votos para cada candidato, 
// porcentagem de votos brancos e 
// porcentagem de votos inválidos. 
// Mostrar a quantidade de votos e respectivas porcentagens para cada caso.

const nome:array [1..5] of string[6] = ('CAND A','CAND B','CAND C','VTNULO','INVALI');

var voto:char; cont:integer;
		qtd:array[1..6] of integer;
		porcentagem:array [1..6] of real;

Begin

	while voto<>'*' do
	begin
	
		write('VOTO->');
		readln(voto);
		voto:=upcase(voto);
		qtd[6]:=qtd[6]+1; // [6] = cont votos totais
		
		case voto of
		
			'A':qtd[1]:=qtd[1]+1;
			'B':qtd[2]:=qtd[2]+1;
			'C':qtd[3]:=qtd[3]+1;
			' ':qtd[4]:=qtd[4]+1;
		
		else
			qtd[5]:=qtd[5]+1;
		
		end;
		
	end;
  
  for cont:=1 to 6 do
  	porcentagem[cont]:=(100*qtd[cont])/qtd[6];
  	
  clrscr;
  writeln('TOTAL DE VOTOS->',qtd[6],' -- ',porcentagem[6],'%');
	writeln;
	
	for cont:=1 to 5 do
	begin
  	writeln('TOTAL DE VOTOS ',nome[cont],' -> ',qtd[cont],' -- ',porcentagem[cont],'%');
		writeln;
	end;  
End.