INSERT INTO cliente(nome, cpf, telefone, endereco)
VALUES
('Juliana Oliveira', '123.456.789-00', '1194679-1346', 'Rua das araras,90'),
('Ana Clara', '321.432.543-12', '1195646-9352', 'Av.Brasil,120'),
('Everton Araujo', '343.905.518-08', '1194909-1979', 'Rua torre eifel,79')

INSERT INTO Estado(nome, uf)
VALUES
('são paulo', 'sp'),
('rio de janeiro', 'rj'),
('minas gerais', 'mg')

INSERT INTO pedido(faturavenda, dataconta, datavencimento, valor, situação)
VALUES
('02', '10/02/2025', '10/03/2025', '150,00', '1'),
('03', '15/02/2025', '15/03/2025', '120,00', '2'),
('01', '08/02/2025', '08/03/2025', '200,00', '3');


INSERT INTO produtos(descricao, valorunitario, quantidade)
VALUES
('serra eletrica', '50,00', '10'),
('furadeira', '40,00', '20'),
('makita', '100,00', '5');