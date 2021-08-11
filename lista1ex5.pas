Program lista1ex5 ;
//feito por Gabriel

// Leia 3 nomes string de 30 e mostre em ordem alfabética

var nome:array [1..3] of string[30];
		tamanho,cont:integer;
		aj:string[30];

Begin

	for cont:=1 to 3 do
	begin
		writeln('Digite um nome: ');
		readln(nome[cont]);
		nome[cont]:=upcase(nome[cont]);
		tamanho:=length(nome[cont])+1;
		while length(nome[cont])<30 do
		begin
			insert(' ',nome[cont],tamanho);
			tamanho:=tamanho+1;
		end;
	end;
	//fim leitura dados
	if nome[1]>nome[2] then
	begin
		aj:=nome[1];
		nome[1]:=nome[2];
		nome[2]:=aj;
	end;
	if nome[2]>nome[3] then
	begin
		aj:=nome[2];
		nome[2]:=nome[3];
		nome[3]:=aj;
		if nome[1]>nome[2] then
			begin
				aj:=nome[1];
				nome[1]:=nome[2];
				nome[2]:=aj;
			end;
	end;

	for cont:=1 to 3 do
	writeln('NUM',cont,'->',nome[cont]);
End.