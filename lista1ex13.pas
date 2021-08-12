Program lista1ex13 ;
//feito por Gabriel

//FUP que leia 10 números. Antes de encerrar, mostre a soma dos 10 números lidos.

var num,res,cont:integer;

Begin
	
	for cont:=1 to 10 do
	begin
		write('NUM->');
		readln(num);
		res:=res+num;
  end;
  writeln(res);
	  
End.