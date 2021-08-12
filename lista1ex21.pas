Program lista1ex ;
//feito por Gabriel

// FUP que informe se um número lido é primo ou não.

var num,e:integer; strnum:string[4];

Begin

	write('NUM->');
	readln(strnum);
	val(strnum,num,e);

	if (num mod 2 <> 0) and (num mod 3 <> 0) and (num mod 5 <> 0) and (num mod 7 <> 0) and (num<>1) then
		writeln('PRIMO')
	else if (num = 2) or (num = 3) or (num = 5) or (num = 7) then
		writeln('PRIMO')
	else
		writeln('NÃO');
		
End.