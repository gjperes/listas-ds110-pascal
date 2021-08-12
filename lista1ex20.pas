Program lista1ex ;
//feito por Gabriel

// FUP que leia uma série de alturas de pessoas, encerrada por uma altura negativa. Antes de terminar o
// programa mostrar: a maior e a menor altura que foi lida.

var altura,max,min:real; e:integer;
		straltura:string[4];

Begin

	repeat
		write('ALTURA ( formato 1.01 ) ->');
		readln(straltura);
			val(straltura,altura,e);
	  if altura>max then
	  	max:=altura;
	  if altura<min and altura>0 then
	  	min:=altura;
	until altura < 0 ;
 
 	writeln;
 	writeln('MAX->',max);
 	writeln('MIN->',min);
 	
End.