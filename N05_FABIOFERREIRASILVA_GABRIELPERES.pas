Program N05_FABIOFERREIRASILVA_GABRIELJPERES;
//Fábio Ferreira da Silva - GRR20193963
//Gabriel Jesus Peres - GRR20204443

//Faça um programa que leia uma série de CPF’s e informe se o CPF lido é válido ou não. CPF
//“00000000000” (onze zeros) encerra o programa.

//Se o dígito J for diferente do décimo dígito do CPF lido, mostrar CPF digitado inválido e o digito J, senão
//Se o dígito K for diferente do décimo primeiro dígito do CPF lido, mostrar CPF lido inválido e o dígito K,
//senão CPF lido Válido.

uses ex2modbiblio;

//PROCEDURE RECEBE CPF[10] OU CPF[11] COMO -> (Y) E RESULTADO DA SOMATÓRIA -> (RESCALC), VALIDA E DEVOLVE COM -> (VALIDO)
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

		writeln('Digite um CPF válido (11 zeros encerra o programa): ');
		read(cpf1);

			while length(cpf1)<11 do
			begin
				writeln('O CPF precisa ter 11 dígitos no mínimo. Digite um CPF válido (11 zeros encerra o programa): ');
				read(cpf1);
			end;

		verencerra:=false;
	
		for cont:=1 to 11 do
		begin
			val(cpf1[cont],cpf[cont],coderro);
			//VERIFICA SE SÃO TODOS 0's
			if (cpf[cont]<>0) then
			verencerra:=true;
		end;

		if (verencerra=true) then
		begin
			//VALIDA J
			soma:=0;
			for cont:=1 to 9 do
				begin
					mult:=11-cont;
					resmult[cont]:=cpf[cont]*mult;
					soma:=soma+resmult[cont];
				end;
			resmod:=soma mod 11;
			prvalido(cpf[10],resmod,valido);
			if valido=false then
				writeln('CPF: ',cpf1,' é inválido. Dígito verificador inválido: ',cpf[10])
			else
			//CASO J = VALIDO -> VALIDA K
				begin
					soma:=0;
					for cont:=1 to 10 do
						begin
							mult:=12-cont;
							resmult[cont]:=cpf[cont]*mult;
							soma:=soma+resmult[cont];	
						end;
					resmod:=soma mod 11;
					prvalido(cpf[11],resmod,valido);
						if valido=false then
							writeln('CPF: ',cpf1,' é inválido. Dígito verificador inválido: ',cpf[11])
						else
							writeln('CPF válido.');
				end;
		end;
	
	until verencerra=false;
	writeln('11 zeros, encerrando o programa!');

End.{0}