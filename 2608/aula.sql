DROP DATABASE IF EXISTS editora;
CREATE DATABASE IF NOT EXISTS editora;
USE editora;
CREATE TABLE livrarias (
	IDLivraria INT NOT NULL PRIMARY KEY,
	NomeLivraria VARCHAR(50) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	CNPJ VARCHAR(18) NOT NULL UNIQUE KEY
);
CREATE TABLE Livros(
	IDLivro INT NOT NULL PRIMARY KEY,
	TituloLivro VARCHAR(100) NOT NULL,
	Autor VARCHAR(150) NOT NULL,
	PrecoUnitario DECIMAL(7,2) NOT NULL 
);
CREATE TABLE NotasFiscais (
	CodigoVenda INT NOT NULL PRIMARY KEY,
	DataVenda DATETIME NOT NULL,
	IDLivraria INT NOT NULL,
	FOREIGN KEY (IDLivraria) REFERENCES livrarias(IDLivraria)
);
CREATE TABLE itensnf (
	CodigoVenda INT NOT NULL,
	IDLivro INT NOT NULL,
	QtdeVendida TINYINT NOT NULL,
	PRIMARY KEY (CodigoVenda, IDLivro),
	FOREIGN KEY (IDLivro) REFERENCES livrarias(IDLivro),
	FOREIGN KEY (CodigoVenda) REFERENCES NotasFiscais(CodigoVenda)
);