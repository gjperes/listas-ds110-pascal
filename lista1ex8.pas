Program lista1ex8;
//feito por Gabriel

//FUP que utilizando o IMC (Índice de Massa Corporal) = peso/altura², leia o peso e a altura de um adulto,
//mostre a sua condição segundo a tabela abaixo:

//Abaixo de 18,5 				Abaixo do peso
//Acima de 18,5 e 25 		Peso normal
//Acima de 25 e 30 			Acima do peso
//Acima de 30 					Obeso

var strvar:array [1..2] of string[4];
		arrvar:array[1..3] of real; e,cont:integer; res:string[20];

Begin
	
	write('Digite o peso ( formato: 10.1 ) ->');
	readln(strvar[1]);
	
	write('Digite a altura ( formato: 1.01 ) ->');
	readln(strvar[2]);
	
	for cont:=1 to 2 do
	begin
		while length(strvar[cont])<4 do
			insert('0',strvar[cont],1);	
		val(strvar[cont],arrvar[cont],e);	
	end;
	//arrvar[1] > peso / [2] > altura
	
	if arrvar[2]<>0 then
		arrvar[3]:=arrvar[1]/(arrvar[2]*arrvar[2]);
	
	if ( arrvar[3]<18.5 ) then
		res:='Abaixo do peso'
	else if ( arrvar[3]>=18.5 ) and ( arrvar[3]<25 ) then
	  res:='Peso normal'
	else if ( arrvar[3]>=25 ) and ( arrvar[3]<30 ) then
	 	res:='Acima do peso'
	else if arrvar[3]<=0 then //INVALIDO
		res:='Inválido'
	else
		res:='Obeso';
		
	writeln('RES->',res);
	  
End.