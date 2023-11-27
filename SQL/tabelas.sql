CREATE DATABASE lanchesys;
USE lanchesys;

CREATE TABLE IF NOT EXISTS cliente (
    id int(12) primary key not null auto_increment,
    nome varchar(255) not null,
    cpf varchar(11) unique not null,
    telefone varchar(11) not null,
    endereco varchar(255) not null,
    numero int(4) not null,
    complemento varchar(255),
)

CREATE TABLE IF NOT EXISTS funcionario (
    id int(12) primary key not null auto_increment,
    nome varchar(255) not null,
    cpf varchar(11) unique not null,
    telefone varchar(11) not null,
    endereco varchar(255) not null,
    numero int(4) not null,
    complemento varchar(255),
    funcao varchar(255),
)

CREATE TABLE IF NOT EXISTS produto (
    id int(12) primary key not null auto_increment,
    tipo varchar(255) not null,
    nome varchar(255) not null,
    preco double(3,2) not null,
)

CREATE TABLE IF NOT EXISTS pedido (
    id int(12) primary key not null auto_increment,
    clienteID int NOT NULL,
    FOREIGN KEY (clienteID) REFERENCES cliente(id),
)

CREATE TABLE IF NOT EXISTS registro_produto (
    idPedido int(12) not null,
    idProduto int(12) not null,
    quantidade int(3) not null,

    FOREIGN KEY (idPedido) REFERENCES pedido(id),
    FOREIGN KEY (idProduto) REFERENCES produto(id),
    
    PRIMARY KEY (idPedido, idProduto)
)