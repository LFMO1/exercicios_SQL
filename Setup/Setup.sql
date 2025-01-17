CREATE DATABASE RecursosHumanos
GO

USE RecursosHumanos
GO

CREATE TABLE Funcionario ( 
	idFuncionario INT NOT NULL, 
	nome VARCHAR(50) NULL, 
	endereco VARCHAR(100) NULL, 
	cidade VARCHAR(50) NULL, 
	estado CHAR(2) NULL, 
	email VARCHAR(50) NULL UNIQUE, 
	dataNascto DATE NULL, 
	PRIMARY KEY(idFuncionario)
) 
GO

ALTER TABLE Funcionario ADD 
	salario DECIMAL(7,2) NULL, 
	cargos VARCHAR(2) NULL
GO

ALTER TABLE Funcionario 
	DROP COLUMN cargos
GO

ALTER TABLE Funcionario ADD
	cargo VARCHAR(2) NULL, 
	ativo BIT
GO

CREATE INDEX FuncionarioNome 
	ON Funcionario (nome) 
GO

CREATE INDEX FuncionarioEstado 
	ON Funcionario (estado DESC)
GO

CREATE INDEX FuncionarioEstadoCidade 
	ON Funcionario (estado DESC, cidade ASC) 
GO

DROP INDEX FuncionarioEstado
	ON Funcionario

INSERT INTO Funcionario
	(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
	VALUES (1, 'Jos� da Silva', 'Av. S�o Paulo, 34', 'Itu', 'SP', 'zesilva@yahoo.com.br', '1991-02-24')
GO

INSERT INTO Funcionario
	VALUES (2, 'Jo�o de Oliveira', 'Rua da Sa�de, 138', 'Jundia�', 'SP', 'jojo@hotmail.com', '1988-01-11', 750, 'TI', 1)
GO

INSERT INTO Funcionario
	VALUES (3, 'Ana Pimenta', 'Rua da Sa�de, 11', 'Jundia�', 'SP', 'pimentinha@hotmail.com', '1987-01-01', 750, 'TI', 0),
		(4, 'M�rio Lopes', 'Rua Ang�lica, 143', 'Jundia�', 'SP', 'mlopes@ hotmail.com', '1985-04-10', 750, 'TI', 0)
GO

UPDATE Funcionario SET
	cidade = 'Valinhos'
	WHERE cidade = 'Itu'
GO


INSERT INTO Funcionario 
	(idFuncionario, nome, endereco, cidade, estado, email, dataNascto) VALUES 
			(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'),
			(6, 'Ana Maria da Cunha', 'Av. S�o Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'),
			(7, 'Cl�udia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04'),
			(8, 'Marcela Tatho', 'Rua B�lgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '1987-11-09'),
			(9, 'Jorge Lu�s Rodrigues', 'Av. da Saudade, 1989', 'S�o Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05'),
			(10, 'Ana Paulo Camargo', 'Rua Costa e Silva, 33', 'Jundia�', 'SP', 'apcamargo@gmail.com', '1991-06-30'),
			(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11'),
			(12, 'Carlos Lu�s de Souza', 'Rua Nicolau Coelho, 22', 'S�o Paulo', 'SP', 'cls@bol.com.br', '1988-04-30')
GO

UPDATE Funcionario SET
	cidade = 'Valinhos'
	WHERE cidade = 'Itu'
GO

UPDATE Funcionario SET
	cargo = 'AI', -- auxiliar de inform�tica 
	salario = 1100
	WHERE cidade = 'Valinhos'
GO

UPDATE Funcionario SET
	cargo = 'PC', -- programador de computador 
	salario = 1700
	WHERE cidade = 'Campinas'
GO

UPDATE Funcionario SET
	cargo = 'TI', -- T�cnico de inform�tica 
	salario = 750
	WHERE cidade = 'Jundia�'
GO


select *
from Funcionario

/*
USE RecursosHumanos
DROP TABLE Funcionario
USE master
DROP DATABASE RecursosHumanos
*/
