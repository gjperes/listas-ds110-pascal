Program N06;

//Faça um programa que leia uma série de no máximo 40 nomes (30 caracteres),
//encerrada por nome igual a “FIM”, colocando-os em um vetor. Após o encerramento
//da leitura, mostrar os nomes lidos menores ou iguais a LUIZ SALGADO, em
//ordem alfabética crescente (A ? L) e os nomes maiores que LUIZ SALGADO, em
//ordem alfabética decrescente (Z ? M).

uses ex2modbiblio;

procedure tamanho_certo(nome:string[30]); //procedure recebe o nome e devolve nele mesmo, com os espaços se necessário
	var tamanho,auxiliar:integer;
begin
	tamanho:=length(nome);
	for auxiliar:=tamanho to 30 do
		insert(' ',nome,tamanho+1);
end;

var nome:array[1..40] of string[30];
	nome_aux:string[30];
	cont1,qtd_nomes,cont_aux,feito,tam:integer;
	chave:boolean;

Begin

qtd_nomes:=0;
//RECEBE NOMES
	repeat
	qtd_nomes:=qtd_nomes+1;
	writeln('Digite um nome: ');
	read(nome[qtd_nomes]);//LE NOME
	nome[qtd_nomes]:=upcase(nome[qtd_nomes]);//UPCASE NOME
		if nome[qtd_nomes]='FIM' then
			chave:=true;
	tamanho_certo(nome[qtd_nomes]);//ADICIONA ESPAÇOS SE NECESSÁRIO
	until (chave) or (qtd_nomes>40);

	if qtd_nomes=41 then//CASO SEJAM 40 REPETIÇÕES ACIMA CONT SERÁ 41 NO FINAL, LOGO:
		qtd_nomes:=qtd_nomes-1;

	cont1:=qtd_nomes;	

//BUBBLESORT NOMES
feito:=1;
repeat
	cont1:=cont1-feito;
	chave:=true;
	for cont_aux:=1 to cont1 do
		if (nome[cont_aux] > nome[cont_aux+1]) then
			begin
				nome_aux:=nome[cont_aux];
				nome[cont_aux]:=nome[cont_aux+1];
				nome[cont_aux+1]:=nome_aux;
				chave:=false;//SE TIVER ALGUMA TROCA, AINDA FALTA ORGANIZAR
				feito:=1;//COMO TROCOU, PRECISA RECOMEÇAR, ATÉ NÃO TROCAR
			end
		else
			feito:=feito+1;//SE NÃO HOUVE TROCA, DOIS ESTÃO OK
until (chave);//SE NÃO OCORRER NENHUMA TROCA, TUDO ESTÁ OK

nome_aux:='LUIZ SALGADO'; //define o string de comparação
tamanho_certo(nome_aux); //corrige o string de comparação(preferi não digitar os espaços kkk)

//EXIBE OS NOMES CRESCENTE (A > L)
cont_aux:=1;
repeat
	if (nome[cont_aux] <= nome_aux) then
		writeln(nome[cont_aux]);
	cont_aux:=cont_aux+1;
until (cont_aux>qtd_nomes);

//EXIBE OS NOMES EM DECRESCENTE (Z > M)
cont_aux:=qtd_nomes;
repeat
	if (nome[cont_aux] > nome_aux) then
		writeln(nome[cont_aux]);
	cont_aux:=cont_aux-1;
until (cont_aux<1);

End.
