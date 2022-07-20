/* Modelagem Básica - 

ENTIDADE = TABELA
CAMPOS = ATRIBUTOS */

CLIENTE

NOME - CARACTERES(30)
CPF - NUMERICO (11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD (ADM DE DADOS) */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */

MODELAGEM FISICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FISICA */

/* CRIANDO O BANCO DE DADOS*/

CREATE DATABASE EXEMPLO;

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA CLIENTES */

CREATE TABLE CLIENTE( 
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDEREÇO VARCHAR(100)
	
);

/*VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

USE EXEMPLO;
SHOW TABLES;

USE PROJETO;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */

DESC CLIENTE; 

/* SINTAXE BASICA DE INSERÇÃO - INSERTO INTO TABELA... */
 
 /* FORMA 01 - OMITINDO AS COLUNAS*/ 
INSERT INTO CLIENTE VALUES ('JOAO', 'M', 'JOAO@GMAIL.COM', 988638723, '22923110', ' MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
 
INSERT INTO CLIENTE VALUES('CELIA', 'F', 'CELIA@GMAIL.COM', 54141231, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES ('JORGE', 'M', NULL, 39281739, '34123182', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						  
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',22222222222);

/* COMANDO SELECT
seleção projeção e junção

SELECT É UMA PROJEÇÃO
 */

 SELECT NOW() AS DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;
 
 SELECT 'FELIPE MAFRA';
 
 SELECT 'BANCO DE DADOS';
 
 /* ALIAS DE COLUNAS*/
 
 SELECT NOME AS CLIENTE,SEXO, EMAIL FROM CLIENTE;
  
 SELECT NOME, SEXO, EMAIL FROM CLIENTE;
 
 SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
 
 SELECT EMAIL, SEXO,ENDERECO, NOME FROM CLIENTE;
 
 SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;
 
 /* TABELA ERRADA - NAO DIGITE DIRETAMENTE NO BANCO*/
 CREATE TABLE CLIENTE( 
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDEREÇO VARCHAR(100),
	
);

/* APENAS PARA FINS ACADEMICOS*/
 SELECT * FROM CLIENTE;

/*FILTRANDO DADOS COM WHERE E LIKE */
 
SELECT NOME, TELEFONE FROM CLIENTE;
 
/*FILTRANDO*/

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE 
WHERE SEXO = 'F';

/* UTILIZANDO O LIKE*/
SELECT NOME, SEXO FROM CLIENTE 
WHERE ENDERECO LIKE'RJ';

/* CARACTER CORINGA % -> QUALQUER COISA */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE'%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE'%CENTRO%';

/*  EXERCICIO DE REVISAO */
CREATE DATABASE LIVRARIA;

CREATE TABLE LIVROS (
 LIVRO VARCHAR(100),
 AUTOR VARCHAR(100),
 SEXO CHAR(1),
 PAGINAS INT (5),
 EDITORA VARCHAR(30),
 VALOR FLOAT(10,2),
 UF CHAR(2),
 PUBLICACAO int(4)
);


INSERT INTO LIVROS VALUES ('Cavaleiro Real' , 'Ana Claudia','F', 465, 'Atlas', 49.9, 'RJ',2009);

INSERT INTO LIVROS VALUES ('SQL para leigos', 'João Nunes','M', 450,'Addison', 98, 'SP', 2018 );	

INSERT INTO LIVROS VALUES('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'ATLAS', 45, 'RJ', 2008);		

INSERT INTO LIVROS VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018);
							
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos', 'M',630, 'Beta',150.98,	'RJ', 2019);

INSERT INTO LIVROS VALUES('A Casa Marrom', 'Hermes Macedo','M',250,	'Bubba', 60,'MG',2016);		

INSERT INTO LIVROS VALUES('Estacio Querido',	'Geraldo Francisco',	'M',	310,	'Insignia',	100,	'ES',	2015);	

INSERT INTO LIVROS VALUES('Pra sempre amigas',	'Leda Silva',	'F',	510,	'Insignia',	78.98,	'ES',	2011);

INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara',	'M',	200,	'Larson',	130.98,	'RS',	2018);

INSERT INTO LIVROS VALUES( 'O poder da mente',	'Clara Mafra',	'F',	120,	'Continental'	,56.58,	'SP',	2017);


/* 1 – Trazer todos os dados */
SELECT * FROM LIVROS;
 
/*2 – Trazer o nome do livro e o nome da editora */
SELECT LIVRO, EDITORA
 FROM LIVROS;
 
/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */
SELECT AUTOR, LIVRO, UF  FROM LIVROS
WHERE SEXO ='M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT AUTOR, LIVRO, PAGINAS  FROM LIVROS
WHERE SEXO ='F';

/* 5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT VALOR FROM LIVROS 
WHERE UF = 'SP';

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
AND paginas > 100;

/* OR - OU */

SHOW DATABASES;

USE PROJETO;

SELECT * FROM CLIENTE;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE 
SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE 
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE
SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

/* AND - E */

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE 
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';

/* COUNT(*), GROUP BY, PERFOMANCE COM OPERADORES LÓGICOS */

/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) AS "QUANTIDADE DE REGISTROS DA TAB. CLIENTE" FROM CLIENTE;

/* OPERADOR GROUP BY*/

SELECT SEXO, COUNT(*)
FROM CLIENTE;

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*)
FROM CLIENTE 
GROUP BY SEXO;

/* PERFOMANCE EM OPERADORES LOGICOS */

/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

SITUACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO'
AND SEXO = 'F';
*/

/* exercicio de fixação 02*/

/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

SELECT COUNT(*) FROM FUNCIONARIOS;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

-- 21 | Filmes   53 | Roupas


--Como estamos trabalhando com OR e a segunda condicao é opcional
--colocamos na primeira condicao quem tem mais chances de uma saida
--verdadeira, pois a segunda condicao nao será checada nesse caso.


SELECT * FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'ROUPAS'
OR 
DEPARTAMENTO ='FILMES' ;

SELECT COUNT(*), DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO

SELECT COUNT(*), DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;


--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

--Feminino 491 ocorrencias
select count(*), sexo
from funcionarios
group by sexo;

--52 | Lar  21 Filmes
select count(*), departamento
from funcionarios
group by departamento;

SELECT * FROM FUNCIONARIOS
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';


create database exercicio;

use exercicio;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

/* FILTRANDO VALORES NULOS */

SELECT NOME,SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL  IS NULL;

SELECT NOME,SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;

/* IS OU IS NOT NULL */

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES*/

SELECT NOME, EMAIL
FROM CLIENTE;

/* WHERE - VAI SER O SEU MELHOR AMIGO DA VIDA PARA A VIDA INTEIRA */

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM'
WHERE NOME = 'LILIAN';

SELECT * FROM CLIENTE
WHERE NOME ='LILIAN' ;
----------------------------------------------------

UPDATE CLIENTE
SET EMAIL = 'JORGE@HOTMAIL.COM'
WHERE NOME = 'JORGE';

----------------------------------------------------

/*ARRUMANDO O NOME DO JOAO QUE EU SALVEI COM UM '0' EM VEZ DE UM 'O' **/
UPDATE CLIENTE
SET NOME = 'JOAO'
WHERE TELEFONE = '22923110';

/* COMMIT E ROLLBACK CASO FAÇA BESTEIRA*/

/*DELETANDO REGISTROS COM A CLAUSULA DELETE*/

SELECT COUNT(*) FROM CLIENTE; --TOTAL 6
-----------------------------------------------

SELECT * FROM CLIENTE WHERE NOME = 'ANA'; -- TOTAL 1
SELECT COUNT(*) FROM CLIENTE;
-----------------------------------------------

DELETE FROM CLIENTE
WHERE NOME = 'ANA'
-----------------------------------------------

SELECT COUNT(*) FROM CLIENTE; --RESTANTE 5

SELECT 6-1;  -- PRA FAZER O CALCULO CASO A TABELA FOR MUITO GRANDE

SELECT * FROM CLIENTE;
-----------------------------------------------

INSERT INTO CLIENTE VALUES ('CARLA', 'F', 'C.LOPES@GMAIL.COM',14312343, '457321882', 'RUA COPPER LEAF - WILLIAMBURG - KITCHER');

SELECT* FROM CLIENTE;
-----------------------------------------------
SELECT * FROM CLIENTE  --VER COM O SELECT ANTES DE DAR UM DELETE POR PRECAUÇÃO
WHERE NOME ='CARLA'
AND EMAIL = 'CARLA@TERATI.COM.BR';

DELETE FROM CLIENTE  -- TRAZ APENAS O REGISTRO QUE SATISFAÇA AS DUAS CONDIÇOES
WHERE NOME ='CARLA'
AND EMAIL = 'CARLA@TERATI.COM.BR';
-----------------------------------------------

/* PRIMEIRA FORMA NORMAL */

/* 
1 - TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA

2 - TODO CAMPO MULTIVALORADO SE TORNARÁ OUTRA TABELA.
QUANDO O CAMPO FOR DIVISIVEL

3 - TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO UNICO.
ISSO É O QUE CHAMAMOS DE CHAVE PRIMARIA OU PRIMARY KEY.
*/
 
CREATE DATABASE COMERCIO;
 
USE COMERCIO;
	
SHOW DATABASES;
 
 DROP TABLE CLIENTE
 
CREATE TABLE CLIENTE (
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M', 'F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, -- NAO PODE SE REPETIR
	CPF VARCHAR(15) UNIQUE
);
--QUANDO É 1 X 1
CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR (30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE (
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* 
ENDERECO - OBRIGATORIO
CADASTRO - SOMENTE UM,
TELEFONE- NAO OBRIGATORIO, CADASTRO DE MAIS DE UM(OPCIONAL)*/

/*
CHAVE ESTRANGEIRA É A CHAVE PRIMARIA DE UMA TABELA QUE VAI ATÉ A OUTRA TABELA PARA FAZER REFERENCIAS ENTRE REGISTROS
*/

/*EM RELACIONAMENTOS 1 X 1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA */

/* EM RELACIONAMENTO 1 X N A CHAVE ESTRANGEIRA FICARA SEMRE NA CARDINALIDADE N*/

INSERT INTO CLIENTE VALUES(NULL, 'JOAO','M','JOAO@IG.COM', '3424324123');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS','M','CARLOS@IG.COM', '312324123');
INSERT INTO CLIENTE VALUES(NULL, 'ANA','F','ANA@IG.COM', '4123424123');
INSERT INTO CLIENTE VALUES(NULL, 'CLARA','F',NULL, '564325324123');
INSERT INTO CLIENTE VALUES(NULL, 'JORGE','M','JORGE@IG.COM', '564674123');
INSERT INTO CLIENTE VALUES(NULL, 'CELIA','F','CELIA@IG.COM', '253411123');

SELECT * FROM CLIENTE;

+-----------+--------+------+---------------+--------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF          |
+-----------+--------+------+---------------+--------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 3424324123   |
|         2 | CARLOS | M    | CARLOS@IG.COM | 312324123    |
|         3 | ANA    | F    | ANA@IG.COM    | 4123424123   |
|         4 | CLARA  | F    | NULL          | 564325324123 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 564674123    |
|         6 | CELIA  | F    | CELIA@IG.COM  | 253411123    |
+-----------+--------+------+---------------+--------------+



INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);


INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','CENTRO','SAO PAULO','SP',5);

SELECT * FROM ENDERECO;

DESC TELEFONE;

INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);

SELECT * FROM TELEFONE;

/* SELEÇÃO, PROJEÇÃO E JUNÇÃO */ 

/* PROJEÇÃO -> É TUDO QUE VOCE QUER VER NA TELA */

SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

SELECT 2 +2 AS SOMA, NOME, NOW()
FROM CLIENTE;
------------------------------------------------

/*SELECAO -> É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
A CLAUSULA DE SELEÇÃO É O WHERE
*/

SELECT NOME, SEXO, EMAIL /*PROJECAO*/
FROM CLIENTE /*ORIGEM*/
WHERE SEXO = 'F'; /*SELEÇÃO*/

SELECT NUMERO /*PROJECAO*/
FROM /*ORIGEM*/
WHERE TIPO = 'CEL'; /*SELEÇÃO*/

/*JUNÇÃO*/

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

--FILTRANDO
SELECT NOME, SEXO, BAIRRO, CIDADE /*PROJECAO*/
FROM CLIENTE /*ORIGEM*/
  INNER JOIN ENDERECO /*JUNCAO*/
  ON IDCLIENTE = ID_CLIENTE; 
WHERE SEXO = 'F' /*SELECAO*/

----------------------------------------------
/*NOME, SEXO, EMAIL, TIPO. NUMERO*/

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE
  INNER JOIN TELEFONE
  ON IDCLIENTE = ID_CLIENTE;

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78458743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 56576876 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 87866896 |
| CARLOS | M    | CARLOS@IG.COM | COM  | 54768899 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 99667587 |
| ANA    | F    | ANA@IG.COM    | CEL  | 78989765 |
| ANA    | F    | ANA@IG.COM    | CEL  | 99766676 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 66687899 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 89986668 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 88687909 |
+--------+------+---------------+------+----------+

/*NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO*/
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO,ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
  INNER JOIN  ENDERECO
  ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN  TELEFONE
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
+--------+------+---------+----------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO,E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C   
  INNER JOIN  ENDERECO E 
  ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN  TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
+--------+------+---------+----------------+------+----------+

/*
    DML - DATA MANIPULATION LANGUAGE
    DDL - DATA DEFINITION LANGUAGE
    DCL - DATA CONTROL LANGUAGE
    TCL - TRANSACTION CONTROL LANGUAGE
*/

/* INSERT*/
INSERT INTO CLIENTE VALUES (NULL, 'PAULA', 'M', NULL, '843287423');
INSERT INTO ENDERECO VALUES (NULL, 'RUA JOAQUIN SILVA', 'ALVORADA', 'NITEROI', 'RJ', 7);

SELECT * FROM CLIENTE;
/* FILTROS */

SELECT * FROM CLIENTE
WHERE SEXO = 'M';

/* UPDATE */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 7;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 7;

/* DELETE */ 

INSERT INTO CLIENTE VALUES(NULL,'XXX','M',NULL,'XXX');

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 8;

DELETE FROM CLIENTE WHERE IDCLIENTE = 8;

/*
DDL - DATA DEFINITION LANGUAGE
*/

CREATE TABLE PRODUTO (
  IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
  NOME_PRODUTO VARCHAR(30) NOT NULL,
  PRECO INT,
  FRETE FLOAT(10,2) NOT NULL
);

/* ALTER TABLE */

/* ALTERANDO O NOME DE UMA COLUNA - CHANGE */

ALTER TABLE PRODUTO
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

ALTER TABLE PRODUTO
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | YES  |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* MODIFY - ALTERANDO O TIPO */

ALTER TABLE PRODUTO
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;

/* ADICIONANDO COLUNAS */

ALTER TABLE PRODUTO
ADD PESO FLOAT(10,2) NOT NULL;

/* APAGANDO UMA COLUNA */

ALTER TABLE PRODUTO 
DROP COLUMN PESO;

/* ADICIONANDO UMA COLUNA NA ORDEM ESPECIFICA */

ALTER TABLE PRODUTO 
ADD COLUMN PESO FLOAT(10, 2) NOT NULL
AFTER NOME_PRODUTO;

ALTER TABLE PRODUTO 
DROP COLUMN PESO;

ALTER TABLE PRODUTO 
ADD COLUMN PESO FLOAT(10, 2) NOT NULL
FIRST; /*COLOCANDO A COLUNA COMO PRIMEIRA*/

-------------------------------------------------------------
/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

/* EXERCICIO DE FIXAÇÃO 03*/

/* RELATORIOS DE TODOS OS CLIENTES*/

DESC CLIENTE;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+


SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/* RELATORIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "M";


/* MULHERES COM O GENERO ERRADO. ID: 12 13, 18, 19*/

SELECT * FROM CLIENTE
 WHERE IDCLIENTE = 12
 OR IDCLIENTE = 13
 OR IDCLIENTE = 18
 OR IDCLIENTE = 19;


 /* FORMA MAIS CLEAN DE FAZER */
SELECT * FROM  CLIENTE 
WHERE IDCLIENTE IN (12, 13,18,19);


UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (12, 13,18,19);

 /* HOMEM COM GENERO ERRADO*/
 UPDATE CLIENTE SET SEXO = "M"
WHERE IDCLIENTE = 16;

/*QUANTIDADE DE MULHERES*/

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F";

/* QUANTIDADE DE HOMENS E MULHERES*/

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;


/*IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E NAO TENHAM CELULAR*/

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO 
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO 
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F" ;

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F" 
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F" 
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO = 'RES' OR TIPO = 'COM';


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F" 
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');

/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
 RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR
 DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO
 VOCÊ TERÁ QUE PASSARA A QUERY PARA GERAR O RELATORIO PARA
 O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR /* PROJECAO*/
FROM CLIENTE C /*ORIGEM*/
INNER JOIN ENDERECO E /*JUNCAO*/
ON C.IDCLIENTE = E.ID_CLIENTE /*JUNCAO CONDICAO*/
INNER JOIN TELEFONE T /*JUNCAO*/
ON C.IDCLIENTE = T.ID_CLIENTE /*JUNCAO CONDICAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; /*SELECAO*/


 /* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA. O COMERCIAL SOLICITOU UM
  RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR DAS MULHERES
  QUE MORAM NO ESTADO DE SÃO PAULO */

  SELECT C.NOME, C.EMAIL,T.NUMERO AS CELULAR
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = "F" 
AND ESTADO = 'SP';