Program lista1ex14 ;
//feito por Gabriel

// FUP que leia 50 notas. Antes de encerrar, mostre a média das notas lidas.

var cont,res,nota,e:integer;
		strnota:string[3]; med:real;

Begin

	for cont:=1 to 50 do
	begin
		write('NOTA->');
		readln(strnota);	
			while length(strnota)<3 do
				insert('0',strnota,1);
		 	val(strnota,nota,e);
		res:=res+nota;
  end;
  
	med:=res/50;
	writeln;
  writeln(med);
	  
End.