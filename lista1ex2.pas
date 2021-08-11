Program lista1ex2 ;
//feito por Gabriel

//FUP para calcular as raízes de uma equação do 2º grau. Classificar e 
//mostrar as raízes calculadas. 

var	a,b,c:integer;
		res1,res2,delt:real;

Begin
	writeln('Digite o coef. de A: ');
	readln(a); 
	writeln('Digite o coef. de B: ');
	readln(b);
	writeln('Digite o coef. de C: ');
	readln(c);
//fim recebimento de dados
	delt:=(b*b)-(4*a*c);
	writeln('delt:',delt);
		if (delt<0) then
			writeln('Eq. Imaginária.')
		else
			begin
				delt:=sqrt(delt);
				writeln('raiz de delta: ',delt); //comando para testar
				res1:=(-1);
				res1:=b*res1;
				res2:=res1;
				res1:=res1+delt;
				res1:=res1/(2*a);
				writeln('res1: ',res1);  //comando para testar
				res2:=res2-delt;
				res2:=res2/(2*a);
				writeln('res2: ',res2);  //comando para testar
			end;
	writeln('Aperte Enter para finalizar.');
	readln;	 
End.