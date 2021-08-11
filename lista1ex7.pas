Program lista1ex7 ;
//feito por Gabril

// FUP que leia dois números e a operação aritmética desejada (+, –, *, /). 
// Após a leitura (LEIA N1, N2, OP) calcule e mostre a resposta da operação realizada.

var arr_str:array [1..2] of string[6];
		arr_real:array [1..3] of real;
		op:char; e,cont:integer;
		

Begin
	
	writeln('Digite o NUM1->');
	read(arr_str[1]);
	writeln('Digite o NUM2->');
	read(arr_str[2]);
	
	for cont:=1 to 2 do
	begin
		while (length(arr_str[cont])<6) do
			insert('0',arr_str[cont],1);
		val (arr_str[cont],arr_real[cont],e);	
	end;
	
	writeln;
	writeln('Operação aritmética desejada ( + , – (menos) , * , / )');
	writeln('Selecione a OP->');
	read(op);

	case op of
	
	'+': arr_real[3]:= arr_real[1] + arr_real[2];
	'-': arr_real[3]:= arr_real[1] - arr_real[2];
	'*': arr_real[3]:= arr_real[1] * arr_real[2];
	'/': arr_real[3]:= arr_real[1] / arr_real[2];
	
	else
		begin
			clrscr;
			write('op inválida');
		end;
	end;
	
	writeln('OP. SELECIONADA->',op);
	writeln;
	writeln('RESULTADO->',arr_real[3]);

End.