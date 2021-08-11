Program lista1ex6 ;
//feito por Gabril

// Leia ANO de nasc. mostre idade, se pode votar e se pode ter CNH

var nascstr:string[4];
		ano,mes,dia,semana,nascint,idade:integer;
		cnh,voto:boolean;

Begin
	repeat
	writeln('DIGITE ANO NASC->');
	read(nascstr);
	val(nascstr,nascint,idade);
	until idade=0;
	getdate(ano,mes,dia,semana);
	idade:=ano-nascint;

	voto:=false;
	cnh:=false;

	if idade>=16 then
	voto:=true;
	if idade>=18 then
	cnh:=true;

	if cnh then
	writeln('IDADE->',idade,' PODE CNH E VOTAR')
	else if voto then
	writeln('IDADE->',idade,' PODE VOTAR')
	else 
	writeln('IDADE->',idade,' NAO PODE VOTAR NEM CNH');
End.