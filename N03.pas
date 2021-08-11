Program N03;

//FUP que leia dia, mês e ano de nascimento (VALIDAR, utilizando a VALIDATA da UNIT EX2MODBIBLIOencaminhada no dia 27/05/2021)
//após leia dia, mês e ano do dia de hoje (VALIDAR, utilizando a VALIDATA da UNIT EX2MODBIBLIO.
//Após calcule e mostre a idade em anos, em meses e em dias. (Ex.:15 anos, 3 meses e 7 dias).

//Leu 20/02/2000 (nascimento) e 28/05/2021 (dia de hoje)
//Anos=anoatual-anonasc=2021-2000 = 21 anoscalc=anos
//Meses= mesatual-mesnasc=05-02 = 03 mesescalc=meses
//Dias=diaatual-dianasc=28-20 = 8, log 21 anos, 3 meses e 8 dias diascalc=dias
//Mostre anoscalc, mesescalc, diascalc

//Leu 10/08/2000 e 28/05/2021
//Anos = 2021-2000 = 21 anoscalc=anos
//Meses=05-08 = -3 mesescalc=meses (negativo ?) mesescalc=meses+12 = 9 e anoscalc=anos – 1 = 20
//Dias=28-10 = 18
//Mostre anoscalc....etc...

//Leu 31/07/2000 e 28/05/2021
//Anos=2021-2000 = 21 anoscalc=anos
//Meses=05-07 = -2 negativo mesescal=meses+12 = 10 e anoscalc=anos-1
//Dias=28-31 = -3 negativo diascalc=dias+30(numero de dias do mês anterior da data atual ---
//mesant=mesatual-1 = 4)=27 e mesescal=mesescal-1 (se der negativo somar 12 e tirar 1 do anoscalc)
//Mostre anoscalc,...etc

//OBSERVAÇÃO 1 use a function diamax da UNIT EX2MODBIBLIO encaminhada no dia 27/05/2021 para
//achar o número de dias máximo do mês anterior da data atual

//OBSERVAÇÃO 2 se a data atual o mês for janeiro(1) o mês anterior é 12.

uses ex2modbiblio;

var dd_nasc,dd_atual,mm_nasc,mm_atual,aa_nasc,aa_atual,diascalc,mesescalc,anoscalc,mesant:integer;

Begin{1}

//===========RECEBE/VALIDA DATA NASC======================
repeat
writeln('Digite o dia de nasc.: ');
read(dd_nasc);
writeln('Digite o mês de nasc.: ');
read(mm_nasc);
writeln('Digite o ano de nasc.: ');
read(aa_nasc);

until (validata(dd_nasc,mm_nasc,aa_nasc)=true);

//===========RECEBE/VALIDA DATA ATUAL======================
repeat
writeln('Digite o dia atual: ');
read(dd_atual);
writeln('Digite o mês atual: ');
read(mm_atual);
writeln('Digite o ano atual: ');
read(aa_atual);

until (validata(dd_nasc,mm_nasc,aa_nasc)=true);

//===========CALCULA IDADE======================

anoscalc:=aa_atual-aa_nasc;
writeln('anoscalc: ',anoscalc);
mesescalc:=mm_atual-mm_nasc;
writeln('mesescalc: ',mesescalc);
	if (mesescalc<0) then
	begin
		mesescalc:=mesescalc+12;
		writeln('mesescalc: ',mesescalc);
		anoscalc:=anoscalc-1;
		writeln('anoscalc: ',anoscalc);
	end;
diascalc:=dd_atual-dd_nasc;
writeln('diascalc: ',diascalc);
	if (diascalc < 0) then
	begin
		if (mm_atual=1) then
			begin
			mesant:=12;
			writeln('mesant: ',mesant);
			end
		else
			begin
			mesant:=mm_atual-1;
			writeln('mesant: ',mesant);
			end;
		diascalc:=diascalc+diamax(aa_atual,mesant:integer);
		writeln('diamax: ',diamax(aa_atual,mesant:integer));
		writeln('diascalc: ',diascalc);
		mesescalc:=mesescalc-1;
		writeln('mesescalc: ',mesescalc);
			if (mesescalc<0) then
			begin
				mesescalc:=mesescalc+12;
				writeln('mesescalc: ',mesescalc);
				anoscalc:=anoscalc-1;
				writeln('anoscalc: ',anoscalc);
			end;
	end;
	
//===========EXIBE O RESULTADO======================	
writeln('Sua idade é de: ',anoscalc,' anos, ',mesescalc,' meses e ',diascalc,' dias.');

//===========PROCEDURE PARA TERMINAR======================

termine;

End.{1}
