Program lista1ex11;
//feito por Gabriel

//FUP que mostre a tabuada dos números entre 1 e 10.

var num:array[1..3] of integer;
		cont1,cont2:integer;

Begin
	
	for cont1:=1 to 10 do
	begin
    writeln;
		writeln('TABUADA DO ',cont1);
			for cont2:=1 to 10 do
				begin
					num[3]:=cont1*cont2;
			    writeln(num[3]);
		    end;
	end; 
End.