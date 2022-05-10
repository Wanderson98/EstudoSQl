Server=localhost\SQLEXPRESS01;Database=master;Trusted_Connection=True;

--SQL SERVER, POSTGRES, ORACLE, MYSQL'

https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak
foi usado o banco de dados acima para os testes. 
-----------------------------------------------------------------------------------------------------
 Comandos SQL

 DDL - Linguagem definição de dados
      -- Create
      -- Drop
      -- Alter
      -- Truncate 
 DML - Linguagem de Manipulação de Dados
      -- Inserte
      -- Update
      -- Delete
 DQL - Linguagem de consultao aos dados
      -- Select
 DCL  - Linguagem de Controle de Dados
      -- Grant
      -- Revoke
 TCL - Linguagem de Controle de transação
      -- Commit
      -- RollBack

      <Conteudo obrigatorio>
      {conteudo adicional}

Sintaxe Create- CREATE DATABASE <NomeDoBancoDeDados>
Sintaxe DROP - DROP <database ou table> <nomeDoBanco ou nomeDaTabela >
Sintaxe Backup - BACKUP DATABASE <nomeBancoDeDAdos> TO DISK = <Path ou caminho \ arquivo destino.bak>;
-----------------------------------------------------
SELECT - COMANDO PARA REALIZAR UMA BUSCA EM CIMA DE DADOS 
SELECIONAR UMA COLUNA, OU MAIS, OU TODAS DE UMA TABELA

EX: SELECT coluna1,coluna2 FROM tabela
ou seja, estou buscando os dados da coluna1 e da coluna2 de uma tabela.

SELECT * FROM tabela - o * é usado para buscar todas as colunas da tabela

Os comandos Sql por convenção, usa-se todas as letras em maiusculo.

ex: SELECT * FROM person.Person 

é possivel filtrar os dados consultados, 

SELECT Title FROM person.Person; 

Nesse caso estou buscando somente a coluna Title da tabela person.person

SELECT * FROM person.EmailAddress;

agora estou buscando tudo da tabela person.EmailAddress

Extrair first name e last name da tabela person.person

SELECT FirstName, LastName FROM person.Person;
------------------------------------------------------------------------------------
DISTINCT é usado para omitir dados duplicados durante a contulta, resultado em dados únicos, sua sintaxe é.

SELECT DISTINCT conluna1 FROM tabela;

Verfica os nomes únicos tem na tabela person.person
ex: SELECT DISTINCT FirstName FROM person.Person;

Vê quantos sobrenomes únicos tem na tabela person.person
SELECT DISTINCT LastName FROM person.Person;

--------------------------------------------------------------------------------------
WHERE é usado para extrair alguns dados particulares da tabela,
a sintaxe dele é 
SELECT coluna FROM tabela WHERE condicao;

Pode se usar operadores lógicos 

[
    OPERADORES LÓGICOS      DESCRIÇÃO
             =               IGUAL
             >               MAIOR QUE
             <               MENOR QUE
             >=              MAIOR IGUAL
             <=              MENOR IGUAL
             <>              DIFERENTE DE
             AND             OPERADOR LÓGICO E
             OR              OPERADOR LÓGICO OU

]

SELECT * FROM Person.Person WHERE LastName = 'miller';

retorna todos os dados ONDE o sobrenome da pessoa é Miller 

SELECT * FROM Person.Person WHERE LastName = 'miller' AND FirstName = 'anna';

Nesse caso faz a mesma consulta anterior e usa o operador lógico AND para fazer mais uma comparação e filtrar ainda mais o resultado
resultando apenas se o sobrenome for miller E o primeiro nome for anna

SELECT * FROM Person.Person WHERE LastName = 'miller' or FirstName = 'anna';

Se usar o operador lógico OR, ou, como no comando acima, ele retorna todos os dados onde o sobrenome é Miller OU o primeiro nome é Anna,
é outra comparação.

SELECT * FROM Production.Product WHERE Color = 'red' OR color = 'blue';

como esse comando, retorna todos os produtos da tabela production.product, onde as cores são, ou red, vermelho, ou blue, azul.

SELECT * FROM Production.Product WHERE ListPrice > 1500 and ListPrice < 3000;

esse comando usa o comparador matemático e lógico, para retornas os dados onde o preço listado é maior que 1500 E menor que 3000.

SELECT * FROM Production.Product WHERE Color <> 'red';

retorna os dados onde os produtos NÃO são vermelhos

SELECT Name FROM Production.Product WHERE Weight > 500 AND Weight <= 700;

SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' AND SalariedFlag = 1 ;

SELECT * FROM person.Person WHERE FirstName = 'Peter' and LastName = 'Krebs';
SELECT EmailAddress FROM person.EmailAddress WHERE BusinessEntityID = 26;
 -------------------------------------------------------------------------------------------------------------------------------------------------
 COUNT 

 sintaxe

 SELECT COUNT(*) FROM TABELA

 faz a contagem de todas as colunas na tabela, se quiser saber a contagem especifica de uma tabela, coloca o nome da tabela dentro do 
 parenteses, pode usar dentro do parenteses o DISTINCT para contar tbm somento os valores únicos.
 ex
 SELECT COUNT(Title) FROM Person.Person

 ele retorna a contagem dos titulos da tabela person.person
 ----------------------------------------------------------------------------------------------------
 TOP
   Ele limita a quantidade de resultados que é retornado em uma consulta
  sintaxe
  SELECT TOP 100 * FROM TABELA

  limita o resultado aos 100 primeiros resultados da consulta. 

  ------------------------------------------------------------------------------------------------------
  Order By  
  Ordena os resultados de uma coluna forma crescente ou decrescente de alguma forma
 
  sintaxe

  SELECT coluna1,coluna2 FROM tabela ORDER BY coluna1 (ASC(Crescente) ou Desc (Decrescente))

  Exemplo

SELECT TOP 4 name, productNumber FROM production.products ORDER BY ProductID ASC

esse comando vai retornar os 4 primeiros dados das colunas name e productNumber, da tabela, production.products, ordenando pelo ProductID de forma crescente

-------------------------------------------------------------------------------------------------------------
Between, ele é usado para encontrar valores entre um valor minimo e um valor máximo, between significa entre;

Ex: BETWEEN min AND max;

exemplo, em uma tabela vc quer filtrar os valores de idade entre 15 a 20 anos.
 SELECT * FROM pessoas WHERE idade BETWEEN 15 and 20;
 seria o mesmo que usar a lógica 

 idade >= 15 AND idade <=20

 -------------------------------------------------------------------------

