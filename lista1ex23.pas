Program FUP23 ;

//23 - FUP que leia dia, mês e ano e informe se a data lida é válida ou não.

var aa,mm,dd:integer;
		bissexto,verif:boolean;

Begin
  
	writeln('Insira um dia: ');
 	readln(dd);
 	writeln('Insira um mês: ');
  readln(mm);
	writeln('Insira um ano: ');
  readln(aa);
//BISSEXTO			
		if (aa mod 4 = 0) and (aa mod 100 <> 0) then //divisivel por 4 mas não por 100
		bissexto:=true
		else if (aa mod 100 = 0) and (aa mod 400 = 0) then
		bissexto:=true
		else    			
		bissexto:=false;
//FIM VALIDAÇÃO BISSEXTO	
		
		if (aa<=1900) then
			verif:=false
		else if (mm<1) or (mm>12) then
    	verif:=false
		else
			begin//mes válido
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
//MENSAGEM FINAL
	if (verif=true) then
		writeln('Data válida: ', dd, '/', mm, '/', aa)
	else
		writeln('Data inválida.');
End.