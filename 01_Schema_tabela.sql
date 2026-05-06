-- Cria o schema
CREATE SCHEMA SQL01 AUTHORIZATION RST;

-- Cria as tabelas:

CREATE TABLE SQL01.clientes (
    Id_Cliente UUID PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE SQL01.produtos (
    Id_Produto UUID PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL
);

CREATE TABLE SQL01.vendas (
    Id_Vendas UUID PRIMARY KEY,
    Id_Cliente UUID REFERENCES SQL01.clientes(Id_Cliente),
    Id_Produto UUID REFERENCES SQL01.produtos(Id_Produto),
    Quantidade INTEGER,
    Data_Venda DATE
);