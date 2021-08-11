Program N05;

//Faça um programa que leia uma série de CPF’s e informe se o CPF lido é válido ou não. CPF
//“00000000000” (onze zeros) encerra o programa.

//Se o dígito J for diferente do décimo dígito do CPF lido, mostrar CPF digitado inválido e o digito J, senão
//Se o dígito K for diferente do décimo primeiro dígito do CPF lido, mostrar CPF lido inválido e o dígito K,
//senão CPF lido Válido.

uses ex2modbiblio;

//PROCEDURE RECEBE CPF[10] OU CPF[11] COMO -> (Y) E RESULTADO DA SOMATÓRIA -> (RESCALC), VALIDA E DEVOLVE COM -> (PRVAL)
procedure prvalido (y,rescalc:integer; var prval:boolean);
	
var x:integer;
	begin
		if (rescalc=0) or (rescalc=1) and (y = 0) then
			prval:=true
		else if (rescalc>1) and (rescalc<=10) then
			begin
			x:=11-rescalc;
				if (y=x) then
				prval:=true;
			end
		else
			prval:=false;
	end;

// INICIO DO PROGRAMA

var cpf1:string[11];
	cpf,resmult:array[1..11] of integer;
	soma, cont, mult, resmod, coderro:integer;
	valido,verencerra:boolean;

Begin{0}
	
repeat
writeln;
	//RECEBE OS DADOS
		writeln('Digite um CPF (11 zeros encerra o programa): ');
		read(cpf1);
		//VALIDA O TAMANHO DO CPF
			while length(cpf1)<11 do //enquanto não for 11 dígitos, inválido.
			begin
				writeln('O CPF precisa ter 11 dígitos. Digite um CPF (11 zeros encerra o programa): ');
				read(cpf1);
			end;

//CONVERTE OS STRINGS EM INT
		for cont:=1 to 11 do
		begin
			val(cpf1[cont],cpf[cont],coderro);
			//VERIFICA SE HÁ ALGUM ERRO (SEM ERROS=0)
			if (coderro<>0) then
				verencerra:=true;
		end;

if not verencerra then
begin{1}
//VALIDA J
	soma:=0;
	for cont:=1 to 9 do //CALCULA MULTIPLOS DE A -> I
	begin{2}
		mult:=11-cont;
		resmult[cont]:=cpf[cont]*mult;
		soma:=soma+resmult[cont];
	end;{2}
	resmod:=soma mod 11; //RESTO DO RESULTADO DA SOMATÓRIA DOS MULT. DE A -> I
	prvalido(cpf[10],resmod,valido);//PROCEDURE QUE VALIDA O DIGITO [J]
		if valido=false then
			writeln('ATENÇÃO! -> CPF: ',cpf1,' é INVÁLIDO. Dígito verificador inválido: I - ',cpf[10])
		else //CASO J = VALIDO -> VALIDA K
		begin{3}
			soma:=0;
			for cont:=1 to 10 do //CALCULA MULTIPLOS DE A -> J
				begin{4}
					mult:=12-cont;
					resmult[cont]:=cpf[cont]*mult;
					soma:=soma+resmult[cont];	
				end;{4}
			resmod:=soma mod 11;//RESTO DO RESULTADO DA SOMATÓRIA DOS MULT. DE A -> J
			prvalido(cpf[11],resmod,valido);//PROCEDURE QUE VALIDA O DIGITO [K]
			if valido=false then
				writeln('ATENÇÃO! -> CPF: ',cpf1,' é INVÁLIDO. Dígito verificador inválido: J - ',cpf[11])
			else
				writeln('CPF VÁLIDO!');
		end;{3}
end{1}
else
	writeln('CPF com Caracteres Inválidos!');

until cpf1='00000000000';
writeln('11 zeros, encerrando o programa!');

End.{0}
