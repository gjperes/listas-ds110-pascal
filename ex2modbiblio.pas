//
// uso de biblioteca (UNIT) no pascal
// o nome do arquivo que conterara a unit(biblioteca) tem que ser igual ao da UNIT
// obs: a unidade tem que estar na pasta onde o programa sera executado
//
UNIT ex2modbiblio ;
interface
 PROCEDURE POT1(I1,I3:INTEGER;VAR SAI:REAL); //CALCULA I1 ELEVADO A I3 

 FUNCTION POT2(I1,I3:INTEGER):REAL;  //CALULA I1 ELEVADO A I3
 
 procedure cortela(n:integer); //muda a cor da tela,n passado por valor, parametro formal
 {cortela eh um procedimento que altera a cor da tela (textbackground 
	0=PRETO, 1=AZUL, 2=VERDE, 3=CIANO, 4=VERMELHO, 5=MAGENTA, 6=MARROM, 7=CINZA CL
  8=CINZA ES, 9=AZUL CL, 10=VERDE CL,11=CIANO CL, 12=VERMELHO CL, 13=MAGENTA CL, 14=AMARELO, 
	15= BRANCO --- VEJA - TEXTCOLOR(N:INTEGR)}
 FUNCTION VALIDATA(DIA,MES,ANO:INTEGER):BOOLEAN; //valida uma data
{validata eH um funcao que a partir do di, mes e ano como entrada, verifica se a data de entrada e valida
 ou nao, devolve true se data ok ou false se data invalida
 exemplo 10 06 1995->validata=true -- 31 06 2000->validata=false (mes 6 so tem 30 dias) }

 function diamax(ano,mes:integer):integer; //devolve o numero maximo de dias de um mes
{diamax eH uma funcao que a partir do ano e do mes como entrada, devolve o numero maximo de dias do mes
 exemplo ano=2020, mes=6->diamax=30 --  ano=2020, mes=2->diamax=29 (2020 eh ano bissesto)}
 
 procedure termine;
implementation
//=======================================================================
PROCEDURE POT1(I1,I3:INTEGER;VAR SAI:REAL); //CALCULA I1 ELEVADO A I3
              //I1,I3  SAI = PARAMETRS FORMAIS --I1 e I3 PASSADO POR VALOR E SAI POR REFERENCIA
 VAR A,MULT,I2:INTEGER;//VARIÁVEIS LOCAIS
BEGIN
 I2:=I3;
 mult:=1;                  
 if(I2<0)then
  mult:=-1;                 
 SAI:=1;                   
 I2:=I2*mult;                
 for a:=1 to I2 do          
  SAI:=SAI*I1;   
 I2:=I2*mult;                
 if(mult<0)then
  SAI:=1/SAI;                          
END; 
//==================================================================
FUNCTION POT2(I1,I3:INTEGER):REAL;  //CALULA I1 ELEVADO A I3
              //I1,I3 = PARAMETRS FORMAIS --I1 e I3 PASSADO POR VALOR 
 VAR A,MULT,I2:INTEGER;//VARIÁVEIS LOCAIS
        SAI:REAL;//       IDEM
BEGIN
 I2:=I3;
 mult:=1;                  
 if(I2<0)then
  mult:=-1;                 
 SAI:=1;                   
 I2:=I2*mult;                
 for a:=1 to I2 do          
  SAI:=SAI*I1;   
 I2:=I2*mult;                
 if(mult<0)then
  SAI:=1/SAI; 
 POT2:=SAI;                         
END; 
//===================================================================
procedure cortela(n:integer); //n passado por valor, parametro formal
 var a,b:integer; //vriaveis locais
 begin
  textbackground( n ); 
	CLRSCR;                              
	gotoxy(1,1);
 end;
//==================================================================
FUNCTION VALIDATA(DIA,MES,ANO:INTEGER):BOOLEAN;//dia,mes,ano passado por valor, parametros formais
                                               //o resultado da tarefa devolvido no nome da funcao
VAR  CHAVE:BOOLEAN;  // variavel local
BEGIN
 CHAVE:=TRUE;
 IF(ANO < 1900)THEN //VERIFICA O ANO (depende do usuario)
  CHAVE:=FALSE
 ELSE
  IF(MES < 1) OR (MES > 12)THEN //VERIFICA O MES
   CHAVE:=FALSE
  ELSE
   BEGIN //INICIO DA VERIFICACAO DO DIA
      IF(DIA < 1) OR (DIA > DIAMAX(ano,mes)) THEN //chama a funcao diamax
      CHAVE:= FALSE;
    END;
 VALIDATA:=CHAVE;
END;
//============================================================================================================================
procedure termine;
 begin
  write('enter para encerrar');
	readln;
 end;
//================================================== 
function diamax(ano,mes:integer):integer; //ano,mes passados por valor, parametros formais 
                                          //o resultado da tarefa devolvido no nome da funcao
 begin
    DIAMAX:=31;  //PARA TODOS OS MESES
    IF(MES=4) OR (MES=6) OR (MES=9) OR (MES=11) THEN  //ALTERA 
     DIAMAX:=30;
    IF(MES=2)THEN // ALTERA
     BEGIN
      DIAMAX:=28;
      IF(ANO MOD 4 = 0)THEN //ALTERA
       DIAMAX:=29;
    end;
 end; 
End.