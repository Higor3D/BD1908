CREATE TABLE cliente (
	cliente_cod INT NOT NULL PRIMARY KEY,
	cliente_nome VARCHAR(50) NOT NULL,
	cliente_email VARCHAR(50) NULL,
	cliente_cpf VARCHAR(14) NOT NULL UNIQUE KEY,
	cliente_endereco VARCHAR(100) NOT NULL,
	cliente_numero VARCHAR(4) NOT NULL,
	cliente_complemento VARCHAR(100) NULL,
	cliente_cidade VARCHAR(30) NOT NULL,
	cliente_estado VARCHAR(2) NOT NULL,
	dt_cadastro DATETIME NOT NULL
);
CREATE TABLE marca (
	marca_cod INT NOT NULL PRIMARY KEY,
	marca_desc VARCHAR(255) NULL
);
CREATE TABLE modelo (
	modelo_cod INT NOT NULL PRIMARY KEY,
	modelo_desc VARCHAR(255) NULL
);
CREATE TABLE automovel (
	auto_cod INT NOT NULL PRIMARY KEY,
	marca_cod INT NOT NULL,
	modelo_cod INT NOT NULL,
	auto_nome VARCHAR(30) NOT NULL,
	FOREIGN KEY (marca_cod) REFERENCES marca (marca_cod),
	FOREIGN KEY (modelo_cod) REFERENCES modelo (modelo_cod)
);
CREATE TABLE locacao (
	locacao_cod INT NOT NULL PRIMARY KEY,
	auto_cod INT NOT NULL,
	cliente_cod INT NOT NULL,
	locacao_km INT NOT NULL, 
	dt_cadastro DATETIME NOT NULL,

	FOREIGN KEY (auto_cod) REFERENCES automovel (auto_cod),
	FOREIGN KEY (cliente_cod) REFERENCES cliente (cliente_cod)
);