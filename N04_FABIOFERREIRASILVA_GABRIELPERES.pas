Program N04_FABIOFERREIRASILVA_GABRIELJPERES ; 

//Uma determinada escola possui 10 cursos, numerados de 1 até 10. FUP que leia dados dos alunos
//desta escola (código do curso, matrícula e nota final, por exemplo de matemática. Código do curso
//igual ou menor que zero, encerra a leitura) e antes de encerrar o programa, mostre a média das notas
//de matemática por curso. Ex.:
//curso 1 media = 56.47
//curso 2 media = 49.16
//etc...

uses ex2modbiblio;

var tot,so:array[1..10] of integer;
	cod,nota,x:integer;
	mat:string[13];
	med:real;

begin

	repeat
		writeln('Digite o código: ');
		read(cod);
	until (cod<=10);

	while (cod>0) do
		begin
		writeln('Digite a matrícula: ');
		read(mat);
		writeln('Digite a nota: ');
		read(nota);

		tot[cod]:=tot[cod]+1;
		so[cod]:=so[cod]+nota;
			
			repeat
			writeln('Digite o código: ');
			read(cod);
			until (cod<=10);
		end;

	for x:=1 to 10 do
		if (tot[x] > 0) then
			begin
			med:=so[x]/tot[x];
			writeln('Curso:',x:2,' Média:',med:8:2);
			end
		else
			writeln('Curso:',x:2,' Não possuí alunos.');
end.	