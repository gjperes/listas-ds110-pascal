Program FUP23 ;

//23 - FUP que leia dia, mês e ano e informe se a data lida é válida ou não.

var aa,mm,dd,aacal:integer;
		bissexto,verif:boolean;

Begin
 
	writeln('Insira um ano: ');
  readln(aa);
		if (aa<=1900) then
			verif:=false
		else
		begin//ano válido	 
//PROG BISSEXTO			
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
//FIM VALIDAÇÃO BISSEXTO				                                                                                                          
  writeln('Insira um mês: ');
  readln(mm);
    if (mm<1) or (mm>12) then
    verif:=false
		else
			begin
  			writeln('Insira um dia: ');
 				readln(dd);
					if (dd>31) or (dd<1) then
						verif:=false
    			else
  					if (mm=2) then
  						begin
								if (dd>28) and (bissexto=false) then
									verif:=false
								else if (dd>29) and (bissexto=true) then
				  				verif:=false
								else
									verif:=true;
							end
					else if (dd>30) and (mm=4) or (mm=6) or (mm=9) or (mm=11) then
						verif:=true
    			else
      			verif:=true;
			end;//mes válido
		end;//ano válido
//MENSAGEM FINAL
	if (verif=true) then
		writeln('Data válida: ', dd, '/', mm, '/', aa)
	else
		writeln('Data inválida.');
End.
  