Program lista1ex16 ;

var num,chu,cont:integer;

Begin
	cont:=1;  // cont de tentativas
	writeln('Pessoa 1, digite um número: ');
  	readln(num);
  	CLRSCR;  
writeln('Pessoa 2, digite um número de chute: ');
readln(chu);
  	while(num<>chu) do
    		begin
  		if (num>chu) then
  		writeln('O chute foi baixo, tente novamente!');
  		if (num<chu) then
  		writeln('O chute foi alto, tente novamente!');
  		writeln('Pessoa 2, digite um número de chute novamente: ');
  		readln(chu);
  	cont:=cont+1;
  		end;
//apresentação dos resultados
	writeln('Acertou. A resposta é ', num);
	writeln('O número de tentativas foi de ', cont);
//fim do programa	
	writeln('Digite Enter para encerrar');
	readln;

End.
