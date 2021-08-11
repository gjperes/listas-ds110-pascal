Program lista1ex3 ;
//feito por Gabril
{
FUP que, tendo como entrada o preço e o código de origem de um produto, 
mostre o preço junto com a sua procedência. !!!!!Caso o código não seja nenhum dos especificados, 
indicar que o produto é !!!!!importado!!!!. Use a tabela abaixo:
1 	Sul 
Maior que 1 e menor que 5 	Norte 
Maior que 4 e menor que 10 	Sudeste 
Maior que 9 e menor que 14 	    Nordeste 
Maior que 14 	Outra Região 
}

var strcod:string[2]; cod,e:integer;
		preco:real;
		origem:string[10]; 

Begin
	
	writeln('Digite o cód. do produto: ');
	readln(strcod);
		if length(strcod)<2 then
	  	insert('0',strcod,1);
		val(strcod,cod,e);
	writeln('Digite o preço: ');
	readln(preco);
//fim leitura dados
	if cod=1 then
	origem:='SUL'
	else if (cod>1) and (cod<5) then
	origem:='NORTE'
	else if (cod>4) and (cod<10) then
	origem:='SUDESTE'
	else if (cod>9) and (cod<14) then
	origem:='NORDESTE'
	else if cod>14 then
	origem:='OUTRA REGIÃO'
	else
	origem:='IMPORTADO';
//fim def. de origem
	writeln('PREÇO->',preco,' ORIGEM->',origem);
  
End.