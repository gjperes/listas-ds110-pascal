Program lista1ex ;
//feito por Gabriel

// FUP que efetue a soma de todos os números inteiros ímpares que são múltiplos de 3 e que se
// encontram no conjunto dos números de 1 até 500.

var num,res:integer;

Begin
	
	for num:=1 to 500 do
		if ( num mod 3 = 0 ) and ( num mod 2 <> 0 ) then 
  		res:=res+num;
 
 	writeln(res);
  
End.