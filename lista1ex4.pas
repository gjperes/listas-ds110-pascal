Program lista1ex4 ;
//feito por Gabriel

// Leia 3 números e mostre-os em ordem decrescente.

var num:string[4];
		e,cont:integer;
		num_int:array [1..3] of integer;

Begin

	for cont:=1 to 3 do
	begin
		writeln('Digite um número: ');
		readln(num);
		val(num,num_int[cont],e);
	end;
	//fim leitura dados
	if num_int[1]<num_int[2] then
	begin
		e:=num_int[1];
		num_int[1]:=num_int[2];
		num_int[2]:=e;
	end;
	if num_int[2]<num_int[3] then
	begin
		e:=num_int[2];
		num_int[2]:=num_int[3];
		num_int[3]:=e;
		if num_int[1]<num_int[2] then
			begin
				e:=num_int[1];
				num_int[1]:=num_int[2];
				num_int[2]:=e;
			end;
	end;

	for cont:=1 to 3 do
	writeln('NUM',cont,'->',num_int[cont]);
End.