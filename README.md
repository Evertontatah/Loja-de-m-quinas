<div align="center">

<h1 style="color:#20B2AA;" > SISTEMA DE BANCO DE DADOS - LOJA DE MÁQUINAS</h1>
<h3> PROJETO ACADEMICO - FACULDADE CRUZEIRO DO SUL</h3>

<table border="1" cellpadding="0">
  <tr>
    <td><strong> 01_Create Table</td>
  </tr>
</table>
* # 🛠️ Loja de Máquinas de Construção — Projeto SQL

Projeto desenvolvido para a disciplina de Banco de Dados da **Faculdade Cruzeiro do Sul**, utilizando SQL para modelagem e criação de tabelas.

## 📌 Objetivo
Criar e manipular um banco de dados que represente uma loja de máquinas e equipamentos de construção.

---

## 🗂️ Estrutura do Banco de Dados

### **Tabela: Cliente**
```sql
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    cpf INTEGER NOT NULL,
    telefone TEXT(15),
    endereco TEXT(30)
);
```

### **Tabela: Pedido**
```sql
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
```

### **Tabela: Estado**
```sql
Create table Estado (
   Id_estado INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT(30),
   uf TEXT(2) NOT NULL,
   Id_pedido INTEGER,
   FOREIGN KEY (Id_pedido) REFERENCES pedido(Id_pedido)
);
```


### **Tabela: Produtos**
```sql
Create table produtos (
   Id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
   descricao varchar(30),
   valorunitario DECIMAL(18,2) NOT NULL,
   quantidade NUMERAL(100) NOT NULL,
   Id_pedido INTEGER,
   FOREIGN KEY (Id_pedido) REFERENCES pedido(Id_pedido)
);
```

---

## 🔍 Exemplos de Consultas
```sql
SELECT descricao, quantidade FROM Produtos ORDER BY valorunitario DESC;
```

---

## 📘 Tecnologias
- MySQL  
- Workbench / BRModelo  
- GitHub para versionamento

---

## 📄 Autor
Aluno(a): *Everton Araujo 
Faculdade Cruzeiro do Sul
