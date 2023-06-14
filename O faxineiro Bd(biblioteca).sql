Create database if not exists Biblioteca;

-- Criando as tabelas para para a Bliblioteca
CREATE TABLE if not exists Livros (
    livros_id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(22)
);

create table if not exists Autores(
	autor_id int primary key auto_increment,
    nome varchar(255)
);

create table if not exists Editoras(
	editora_id int primary key auto_increment,
    nome varchar(255)
);

-- Adicionando livros 
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466');
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010');
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149');
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488');
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169');
INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES ('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');

-- Substituido as colunas "autor" & "editora" para novas tabelas
Alter table Livros 
drop column autor,
drop column editora;

Alter table Livros
add column autor_id int,
add column editora_id int;

Alter table Livros
add constraint FK_Livros_Autor
foreign key (autor_id) references Autores (autor_id);

Alter table Livros
add constraint FK_Livros_Editora
foreign key (editora_id) references Editoras (editora_id);


-- Inserindo dados nas novas tabelas
insert into Autores (nome)
values ('John Green'), ('J.K. Rowling'), ('J.R.R. Tolkien'), ('J.D. Salinger'), ('George Orwell'), ('Rick Riordan');

insert into Editoras (nome)
values ('Intrínseca'), ('Rocco'), ('Martins Fontes'), ('Little, Brown and Company'), ('Companhia Editora Nacional'), ('Intrínseca');

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'John Green')
WHERE titulo = 'A Culpa é das Estrelas';

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'J.K. Rowling')
WHERE titulo = 'Harry Potter e a Pedra Filosofal';

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'J.R.R. Tolkien')
WHERE titulo = 'O Senhor dos Anéis: A Sociedade do Anel';

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'J.D. Salinger')
WHERE titulo = 'The Catcher in the Rye';

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'George Orwell')
WHERE titulo = '1984';

UPDATE Livros
SET autor_id = (SELECT autor_id FROM Autores WHERE nome = 'Rick Riordan')
WHERE titulo = 'Percy Jackson e o Ladrão de Raios';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Intrínseca' limit 1)
where titulo = 'A Culpa é das Estrelas';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Rocco' limit 1)
where titulo = 'Harry Potter e a Pedra Filosofal';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Martins Fontes' limit 1)
where titulo = 'O Senhor dos Anéis: A Sociedade do Anel';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Little, Brown and Company' limit 1)
where titulo = 'The Catcher in the Rye';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Companhia Editora Nacional' limit 1)
where titulo = '1984';

UPDATE Livros
SET editora_id = (SELECT editora_id from Editoras where nome = 'Intrínseca' limit 1)
where titulo = 'Percy Jackson e o Ladrão de Raios';


-- Adicionando mais livros no banco
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('Grande Sertão: Veredas', 1, 1, 1956, '9788520923251');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('Memórias Póstumas de Brás Cubas', 2, 2, 1881, '9788535910663');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('Vidas Secas', 3, 3, 1938, '9788572326972');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('O Alienista', 2, 4, 1882, '9788572327429');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('O Cortiço', 4, 5, 1890, '9788579027048');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('Dom Casmurro', 2, 5, 1899, '9788583862093');
INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES ('Macunaíma', 6, 3, 1928, '9788503012302');

