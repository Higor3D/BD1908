CREATE TABLE Clientes (
    IDCliente INT NOT NULL,
    NomeCliente VARCHAR(30) NOT NULL,
    Endereco 
    CPF VARCHAR(14) NOT NULL,
    Telefone INT NOT NULL,

    CONSTRAINT UN_Clientes UNIQUE KEY(CPF),
    CONSTRAINT PK_Clientes PRIMARY KEY(IDCliente)

);

CREATE TABLE Endereco (
    IDCliente INT NOT NULL,
    UF VARCHAR(2) NOT NULL,
    Cidade VARCHAR(20) NOT NULL,
    Bairro VARCHAR(20) NOT NULL,
    CEP VARCHAR(9) NOT NULL
    RUA VARCHAR(20) NULL,
    Numero VARCHAR(4) NOT NULL,
);

CREATE TABLE Telefone(
    CPF INT NOT NULL,
    Celular VARCHAR(11) NOT NULL,
    Celular2 VARCHAR(11) NULL,
    fixo VARCHAR(11) NULL,

    CONSTRAINT PK_Telefone PRIMARY KEY (CPF),
    CONSTRAINT FK_Telefone_Clientes FOREIGN KEY(CPF) 
    REFERENCES Clientes (CPF),
    CONSTRAINT UN_Telefone   UNIQUE KEY (CPF)
);

CREATE TABLE Alugueis(
    Comprovante
    Datas DATETIME NOT NULL,
    Devolucao 
    IDCliente INT NOT NULL,

    CONSTRAINT FK_Alugueis_Clientes FOREIGN KEY(IDCliente) 
    REFERENCES Clientes(IDCliente)
);

CREATE TABLE ItensAlugados(
    Comprovante 
    IDFilme INT NOT NULL,
    QTdeEstoque INT NOT NULL,
);
CREATE TABLE Estoque(
    IDFilme INT NOT NULL,
    Titulo VARCHAR(30) NOT NULL,
    Genero VARCHAR(20) NOT NULL,
    Idioma VARCHAR(15) NOT NULL,
    Preco DECIMAL(5,2) NOT NULL,

    CONSTRAINT PK_Estoque PRIMARY KEY(IDFilme)
);