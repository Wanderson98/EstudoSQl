CREATE DATABASE Livros;

use livros;

Create Table Livro(
		LivroID int identity(100,1),
		LivroNome varchar(60),
		ISBN varchar(10),
		AutorID int, 
		DataPublicacao date,
		PrecoLivro decimal (10,2),
		EditoraID int
);

Create Table Autor(
	AutorID int identity(1,1),
	NomeAutor varchar(30),
	SobrenomeAutor varchar(30)
);

CREATE TABLE EDITORA(
	EditoraID int identity(1,1),
	EditoraNome varchar(50)
	);

INSERT INTO Autor (NomeAutor, SobrenomeAutor) Values ('Daniel', 'Barret'), ('Gerald','Carter'), ('Mark','Sobel'), ('Willian','Stanek'), ('Richard','Blum');

INSERT INTO EDITORA (EditoraNome) Values('Abril'),('O"Reilly'), ('Microsoft Press'),('Wiley');
INSERT INTO Livro (LivroNome, ISBN, AutorID, DataPublicacao, PrecoLivro, EditoraID) VALUES ('Linux Command Line and Shell Scripting','143856969',5 , '2009-12-21',68.35 ,4 ),
('SSH, the Secure Shell','127658789',1 , '2009-12-21',58.30 ,2 ), ('Using Samba','123856789',2 , '2009-12-21',61.45 ,2 );

INSERT INTO Livro (LivroNome, ISBN, AutorID, DataPublicacao, PrecoLivro, EditoraID) VALUES ('Fedora and Red Hat Linux','123346789',3 , '2010-11-01',62.24 ,1 ),
('Windows Server 2012 Inside Out','123356789',4 , '2004-05-17',66.80 ,3 ), ('Microsoft Exchange Serve 2010','123346789',4 , '2000-12-21',45.30 ,3 );

Select * from Livro;

SELECT * FROM livro INNER JOIN autor ON livro.Autorid = autor.AutorID; 

SELECT Livro.LivroNome, Livro.ISBN, Autor.NomeAutor FROM Livro INNER JOIN Autor ON Livro.AutorID = Autor.AutorID;

SELECT Livro.LivroNome as Livros, EDITORA.EditoraNome as Editora from Livro inner join EDITORA on livro.EditoraID = EDITORA.EditoraID where EDITORA.EditoraNome like 'M%';

SELECT Livro.LivroNome as Livro, Autor.NomeAutor as Autor, EDITORA.EditoraNome as Editora, Livro.PrecoLivro as 'Preço do Livro' from Livro inner join Autor on livro.AutorID = Autor.AutorID
inner join EDITORA on Livro.EditoraID = EDITORA.EditoraID where EDITORA.EditoraNome LIKE 'O%' order by Livro.PrecoLivro asc;

select * from Livro;

Update Livro set DataPublicacao = '2000-12-21' where LivroID = 102;