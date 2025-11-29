BEGIN TRANSACTION;


Create table cliente (
   Id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT NOT NULL,
   cpf INTEGER NOT NULL,
   telefone TEXT(15),
   endereco TEXT(30)
);

----tabela estado----
Create table Estado (
   Id_estado INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT(30),
   uf TEXT(2) NOT NULL,
   Id_pedido INTEGER,
   FOREIGN KEY (Id_pedido) REFERENCES pedido(Id_pedido)
);

----tabela Pedido----
Create table pedido (
   Id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
   faturavenda INTEGER,
   dataconta TEXT,
   datavencimento TEXT,
   valor DECIMAL(18,2) NOT NULL,
   SITUACAO TEXT(15) NOT NULL,
   Id_cliente INTEGER,
   FOREIGN KEY (Id_cliente) REFERENCES cliente(Id_cliente)
);

----tabela produtos----
Create table produtos (
   Id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
   descricao varchar(30),
   valorunitario DECIMAL(18,2) NOT NULL,
   quantidade NUMERAL(100) NOT NULL,
   Id_pedido INTEGER,
   FOREIGN KEY (Id_pedido) REFERENCES pedido(Id_pedido)
);