Program lista1ex15 ;
//feito por Gabriel

// FUP que leia uma série de notas. A leitura termina quando for lida uma nota negativa. Antes de encerrar
// o programa, mostrar o total de notas lidas e a média das notas.

var cont,res,nota,e:integer;
		strnota:string[3]; med:real;

Begin

	repeat
		cont:=cont+1;
		write('NOTA->');
		readln(strnota);	
			while length(strnota)<3 do
				insert('0',strnota,1);
		 	val(strnota,nota,e);
		res:=res+nota;
  until nota<0 ;
  
  if cont>0 then
		med:=res/cont;
	writeln;
  writeln('total lido -> ',cont,' -- média -> ',med);
	  
End.