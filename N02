Program N02;

//O programa nmod deverá ser modificado para a utilização dos módulos indicados abaixo.

//Escrever os módulos em forma de procedure e function, na frente do arquivo que conterá o
//trabalho 02. Colocar as respostas das perguntas (6) no final do arquivo que conterá o trabalho 02 

//FUP leia 10 números e mostre o total de números lidos pares e ímpares, após, leia mais 10 números e mostre o total de números lidos múltiplos de 3 e não 
//múltiplos de 3

uses ex2modbiblio;

var p1,p2,n,r,x,num:integer;


//===========FUNÇÃO PARA DEFINIR SE O NÚMERO É INTEIRO?======================
function inteiro(nn:real):integer;
	var	mult,int1:integer;
			div1,ii:real;
	begin
		div1:=nn;
		mult:=1;
		if (div1<0) then
			mult:=(-1);
		div1:=div1*mult;
		int1:=0;
			ii:=0;
		repeat 
			int1:=int1+1;
				ii:=ii+1;
		until (ii>div1);
		inteiro:=(int1-1)*mult;				
	end;
//===========FUNÇÃO PARA CALCULAR O RESTO?======================
function resto(a,b:integer):integer;
	var int1:integer;
	begin
		int1:=inteiro(a/b);
		resto:=a-(int1*b);	
	end;
//===========PROCEDURE DE SAÍDA (TEXTO)//OK======================
procedure sai;
	begin
		writeln('Múltiplos de ',n,'=',p1);
		writeln('NÃO múltiplos de ',n,'=',p2);
	end;
//===========PROCEDURE DE TESTE//OK?======================
procedure testa(res:integer; var mu,nmu:integer);
	begin
		if(res=0)then
			mu:=mu+1
		else
			nmu:=nmu+1;		
	end;
//===========COM MULTIPLO DE 2======================
Begin
	p1:=0;
	p2:=0;
	n:=2;
	for x:=1 to 10 do
		begin
		  writeln('Digite o ',x,'o número: ');
			readln(num);
			r:=resto(num,n);
			testa(r,p1,p2);
		end;
	sai;//procedure
//===========COM MULTIPLO DE 3======================
	p1:=0;
	p2:=0;
	n:=3;
	for x:=1 to 10 do	
	begin
		writeln('Digite o ',x,'o número: ');
		readln(num);
		r:=resto(num,n);
		testa(r,p1,p2);	
	end;
	sai;
End.

//EXERCÍCIO DE FIXAÇÃO. (usando a solução acima e sempre de acordo com as definições)

//1- Escreva os nomes das variáveis locais: mult,int1,div1,ii,res,mu,nmu ;

//2- Escreva os nomes das variáveis globais:  p1,p2,n,r,x,num ;

//3- Escreva os nomes dos parâmetros formais:  nn,a,b,res,mu,nmu  ;

//4- Escreva os nomes dos parâmetros reais: (a/b),num,n,r,p1,p2  ;

//5- Explique o motivo de existir passagem de parâmetros por valor e por referência, na rotina TESTA: 
//A variável por valor "res" precisa receber apenas um valor para ser usado no cálculo interno, enquanto as variáveis "mu,nmu" precisam ter o valor
//alterado, para o funcionamento correto do programa *servindo como um contador.

//6- Transforme o último algoritmo em um programa, declarando as variáveis no início do programa e dos módulos:
// Não entendemos essa última pergunta, Prof. Poderia nos esclarecer, por gentileza?
