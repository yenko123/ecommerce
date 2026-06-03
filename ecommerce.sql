CREATE DATABASE ecommerce_tech;
USE ecommerce_tech;

CREATE TABLE produtos (
  id_produto INTEGER PRIMARY KEY,
  nome_produto VARCHAR (50),
  preco INT,
  estoque INT
);

CREATE TABLE clientes (
  id_cliente INTEGER PRIMARY KEY,
  nome_produto VARCHAR (50),
  email VARCHAR (100),
  data_ultima_compra INT,
  status VARCHAR (10)
);

cREATE TABLE vendas (
  id_venda INTEGER PRIMARY KEY,
  id_cliente INT,
  id_produto INT,
  data_venda INT
);

CREATE TABLE vendas_auditoria_2026 (
  id_auditoria INTEGER PRIMARY KEY,
  id_venda INT,
  id_cliente INT
);

INSERT INTO Vendas_auditoria_2026 (id_venda, id_cliente)
SELECT v.id_venda, v.id_cliente
FROM Vendas v
WHERE STRFTIME (v.data_venda) = 2026
