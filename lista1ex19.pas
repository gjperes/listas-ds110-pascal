Program lista1ex ;
//feito por Gabriel

//  FUP que simule uma contagem regressiva de 10 minutos, ou seja, mostre 10:00, 9:59, 9:58, 9:57, até 0:0.

var min,seg:integer;

Begin

		for min:=10 downto 0 do 
			for seg:=60 downto 0 do
				begin
					writeln(min,':',seg);
	    	end;
End.