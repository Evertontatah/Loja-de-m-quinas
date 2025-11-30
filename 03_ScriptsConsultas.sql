select * from cliente;

select * from produtos;

select * from estado;

select * from pedido;

select descricao,quantidade from produtos;

SELECT * FROM produtos LIMIT 2;

SELECT * FROM pedido ORDER BY dataconta DESC;

SELECT cliente.cpf,pedido.dataconta 
FROM cliente
INNER JOIN pedido ON cliente.Id_cliente = pedido.Id_cliente;

UPDATE produtos set quantidade = 30
WHERE descricao = 'makita';

UPDATE produtos set valorunitario = '100,00'
WHERE descricao = 'furadeira';

DELETE FROM produtos WHERE descricao = 'serra eletrica';

DELETE FROM cliente WHERE nome = 'Ana Clara';