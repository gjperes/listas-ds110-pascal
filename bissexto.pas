Program bissexto ;
//Feito por Gabriel

//tem que ser divisel 4 - mod 0
//não pode ser divisivel por 100 
//seja divisivel por 400
  
var aa:integer;
bissexto:boolean;

Begin
writeln('Insira um ano: ');
readln(aa);
	if (aa mod 4 = 0) and (aa mod 100 <> 0) then //divisivel por 4 mas não por 100
		bissexto:=true
	else if (aa mod 100 = 0) and (aa mod 400 = 0) then
		bissexto:=true
	else    			
		bissexto:=false;
//apresentação dos resultados	 
	if bissexto then
		writeln(aa,' é um ano bissexto')//BISSEXTO
	else
		writeln(aa,' NÃO é um ano bissexto');//NÃO BISSEXTO
End.
