CREATE database IF NOT EXISTS BOUTIQUE_AMORA;

USE BOUTIQUE_AMORA;

CREATE TABLE IF NOT EXISTS Produtos (
idProdutos int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
Tipo varchar(45) NOT NULL, 
Descricao varchar(45) NOT NULL, 
Cor varchar(45) NOT NULL, 
Tamanho varchar(45) NOT NULL, 
Preco decimal(5,2) NOT NULL, 
Estoque int NOT NULL
);

CREATE TABLE IF NOT EXISTS Clientes (
    CPF BIGINT PRIMARY KEY NOT NULL,
    NOME VARCHAR(45) NOT NULL,
    EMAIL VARCHAR(65) NOT NULL,
    ENDERECO VARCHAR(64),
    TELEFONE VARCHAR(11)
);

CREATE TABLE IF NOT EXISTS Avaliacoes (
	IdProdutos int NOT NULL,
    CPF bigint NOT NULL,
    NOME VARCHAR (45),
    TITULO VARCHAR (65),
    `DATA` DATE,
    COMENTARIO VARCHAR (65),
    NOTA INT NOT NULL
    
);
ALTER TABLE avaliacoes ADD CONSTRAINT FOREIGN KEY (IDPRODUTOS)
REFERENCES PRODUTOS(IDPRODUTOS);

ALTER TABLE avaliacoes ADD CONSTRAINT FOREIGN KEY (CPF)
REFERENCES CLIENTES(CPF);



