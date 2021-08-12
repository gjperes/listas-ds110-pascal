Program lista1ex10;
//feito por Gabriel

//FUP que leia um número (maior que zero e menor que 11 – VALIDAR), após mostre a tabuada do
//número lido. (Ex.: leu 5, mostrar 5x1=5; 5x2=10; etc.)

var strnum:string[2];
		res,intnum,cont,e:integer;

Begin
	
	repeat
	write('DIGITE UM NUM->');
	readln(strnum);
		if length(strnum)<2 then
			insert('0',strnum,1);
		val(strnum,intnum,e); 
	until (intnum>0) and (intnum<11) ;
	
	writeln('================');
	
	for cont:=1 to 10 do
	begin
		res:=intnum*cont;
		writeln(res);
	end;
	  
End.