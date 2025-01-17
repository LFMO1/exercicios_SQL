USE RecursosHumanos1

--1�Exiba o nome dos funcion�rios em letras mai�sculas.
SELECT UPPER(nome)
	FROM Funcionario

--2�Exiba o nome do m�s da data de nascimento dos funcion�rios, bem como a quantidade de caracteres de cada um desses meses sem repetilos
SELECT DISTINCT DATENAME(MONTH,dataNascto), LEN(MONTH(dataNascto))
	FROM Funcionario

--3� Apresente o nome dos funcion�rios, substituindo os espa�os existentes entre nome e sobrenome por � (tra�o).
SELECT REPLACE(nome,' ','-')
	FROM Funcionario

--4�Exiba as tr�s primeiras e as tr�s �ltimas letras dos nomes dos funcion�rios.
SELECT LEFT(nome,3), RIGHT(nome,3)
	FROM Funcionario

--5�Mostre a raiz quadrada do tamanho dos nomes dos funcion�rios
SELECT SQRT(ASCII(nome))
	FROM Funcionario

--6�Exiba as cidades dos funcion�rios a partir da terceira posi��o com cinco posi��es, sem repeti-las.
SELECT DISTINCT SUBSTRING(cidade,3,5)
	FROM Funcionario

--7�Exiba os nomes dos funcion�rios, retirando os espa�os existentes entre nomes e sobrenomes.

SELECT REPLACE(nome,' ','')
	FROM Funcionario

--8�Exiba o caractere padr�o ASCII do idFuncionario dos funcion�rios de Campinas.
SELECT ASCII(IdFuncionario)
	FROM Funcionario
	WHERE cidade='campinas'

--9�Mostre o valor do caractere da tabela ASCII referente aos nomes dos funcion�rios que nasceram ap�s o dia 20.
SELECT ASCII(nome)
	FROM Funcionario
	WHERE Day(dataNascto) >20

--10�Exiba os quatro primeiros caracteres das cidades dos funcion�rios sem espa�o em branco no final.
SELECT LEFT(cidade,4)
	FROM Funcionario

--11�.Exiba os seis �ltimos caracteres das cidades dos funcion�rios sem espa�o em branco no in�cio.
SELECT RIGHT(cidade,6)
	FROM Funcionario

--12�Apresente o nome das cidades dos funcion�rios em letras min�sculas sem repeti-las.
SELECT UPPER(cidade)
	FROM Funcionario

