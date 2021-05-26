Program bissexto ;

  //tem que ser divisel 4 - mod 0
  //não pode ser divisivel por 100
  
  //talvez seja divisivel por 400
  
var aa,aacal:integer;
		bissexto:boolean;

Begin
writeln('Insira um ano: ');
readln(aa);

aacal:=aa MOD 400;

if (aacal=0) then
bissexto:=true

else
	begin
		aacal:=aa MOD 4;
		if (aacal=0) then
		begin
			aacal:=aa mod 100;
			if (aacal<>0) then
			bissexto:=true
			else
			bissexto:=false;
		end
		else
		bissexto:=false;
	 end;
	 
	if (bissexto=true) then
	writeln(aa,' é um ano bissexto')//BISSEXTO
	else
	writeln(aa,' NÃO é um ano bissexto');//NÃO BISSEXTO
End.