-- Consultar todos os usuários cadastrados
SELECT id_usuario, nome, email, cpf, telefone, data_cadastro
FROM usuarios;

-- Consultar todos os produtos disponíveis no catálogo
SELECT id_produto, nome, descricao, preco, categoria, estoque
FROM produtos
WHERE estoque > 0;

-- Buscar um produto específico pelo nome
SELECT id_produto, nome, descricao, preco, estoque
FROM produtos
WHERE nome LIKE '%Chocolate%';

-- Listar os itens no carrinho de um usuário
SELECT c.id_carrinho, p.nome AS produto, c.quantidade, c.preco_total
FROM carrinho c
JOIN produtos p ON c.id_produto = p.id_produto
WHERE c.id_usuario = 1;

-- Consultar os pedidos de um usuário
SELECT p.id_pedido, p.data_pedido, p.status_pedido, p.valor_total
FROM pedidos p
WHERE p.id_usuario = 1;

-- Consultar os itens de um pedido específico
SELECT i.id_item, pr.nome AS produto, i.quantidade, i.preco_unitario
FROM itens_pedido i
JOIN produtos pr ON i.id_produto = pr.id_produto
WHERE i.id_pedido = 1;

-- Consultar cupons disponíveis e ativos
SELECT codigo, desconto, validade
FROM cupons
WHERE ativo = TRUE AND validade >= CURDATE();

-- Verificar notificações não lidas de um usuário
SELECT id_notificacao, mensagem, data_envio
FROM notificacoes
WHERE id_usuario = 1 AND lida = FALSE;

-- Consultar o estoque de produtos abaixo de um limite
SELECT id_produto, nome, estoque
FROM produtos
WHERE estoque < 10;

-- Listar os 5 produtos mais caros
SELECT nome, preco
FROM produtos
ORDER BY preco DESC
LIMIT 5;

-- Obter o total gasto por um usuário em pedidos
SELECT u.nome, SUM(p.valor_total) AS total_gasto
FROM pedidos p
JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE u.id_usuario = 1
GROUP BY u.id_usuario;

-- Relatório de vendas: total de pedidos e valor total por dia
SELECT DATE(data_pedido) AS dia, COUNT(*) AS total_pedidos, SUM(valor_total) AS valor_total
FROM pedidos
GROUP BY DATE(data_pedido)
ORDER BY dia DESC;

-- Consultar todos os usuários com pedidos pendentes
SELECT DISTINCT u.id_usuario, u.nome, u.email
FROM usuarios u
JOIN pedidos p ON u.id_usuario = p.id_usuario
WHERE p.status_pedido = 'Em Processamento';
