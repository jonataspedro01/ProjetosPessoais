CREATE DATABASE IF NOT EXISTS atv10;

USE atv10;

CREATE TABLE IF NOT EXISTS fornecedor (
    cnpj VARCHAR(14) NOT NULL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL, 
    email VARCHAR(20),
    telefone VARCHAR(11)
);

CREATE TABLE IF NOT EXISTS tipo (
	 id  INT NOT NULL auto_increment PRIMARY KEY,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto (
    id  INT NOT NULL auto_increment PRIMARY KEY,
    preco DECIMAL (3,2) NOT NULL,
    codigo_de_barras INT NOT NULL,
    nomeproduto VARCHAR(20) NOT NULL,
    cnpj_fornecedor VARCHAR(14) NOT NULL,
    id_tipo INT NOT NULL,
    FOREIGN KEY (cnpj_fornecedor) REFERENCES fornecedor(cnpj),
    FOREIGN KEY (id_tipo) REFERENCES tipo(id)
);

-------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS atv114;

USE atv114;

CREATE TABLE IF NOT EXISTS locadora(
    cnpj VARCHAR(14) NOT NULL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL, 
    endereco VARCHAR(20),
    site_ VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS desenvolvedor (
	 id  INT NOT NULL auto_increment PRIMARY KEY,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS clientes(
    cpf VARCHAR(14) NOT NULL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL, 
    email VARCHAR(20),
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS jogos (
    id  INT NOT NULL auto_increment PRIMARY KEY,
    valor_aluguel DECIMAL (3,2) NOT NULL,
    data_lancamento DATE NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    nome VARCHAR(20) NOT NULL,
   cnpj_locadora VARCHAR(14) NOT NULL,
   id_desenvolvedor INT NOT NULL,
    FOREIGN KEY (cnpj_locadora) REFERENCES locadora(cnpj),
    FOREIGN KEY (id_desenvolvedor) REFERENCES desenvolvedor(id)
);

CREATE TABLE IF NOT EXISTS clientes_jogos(
id INT NOT NULL auto_increment PRIMARY KEY,
cpf_clientes VARCHAR (14) NOT NULL,
id_jogos INT NOT NULL,
FOREIGN KEY (cpf_clientes) REFERENCES clientes(cpf),
FOREIGN KEY (id_jogos) REFERENCES jogos(id)
);



