-- Usuario
INSERT INTO usuarios (id_usuario, nome, email, cpf, senha, telefone, data_cadastro)
VALUES 
    (1, 'João Silva', 'joao.silva@email.com', '12345678900', 'senha123', '11987654321', '2024-11-29 10:00:00'),
    (2, 'Maria Lima', 'maria.lima@email.com', '98765432100', 'senha456', '21987654321', '2024-11-29 11:00:00'),
    (3, 'Pedro Souza', 'pedro.souza@email.com', '32165498700', 'senha789', '31987654321', '2024-11-28 09:00:00'),
    (4, 'Ana Beatriz', 'ana.beatriz@email.com', '65412398700', 'senha321', '41987654321', '2024-11-27 08:30:00'),
    (5, 'Carlos Pereira', 'carlos.pereira@email.com', '78945612300', 'senha654', '51987654321', '2024-11-26 14:20:00');

-- Produto
INSERT INTO produtos (id_produto, nome, descricao, preco, categoria, imagem_url, estoque)
VALUES 
    (1, 'Cupcake de Chocolate', 'Delicioso cupcake com cobertura de chocolate', 8.50, 'Doces', 'http://imagem1.com', 50),
    (2, 'Cupcake de Baunilha', 'Cupcake com recheio de baunilha', 7.00, 'Doces', 'http://imagem2.com', 30),
    (3, 'Cupcake Red Velvet', 'Cupcake com massa de red velvet e creme', 9.00, 'Doces', 'http://imagem3.com', 40),
    (4, 'Cupcake de Limão', 'Cupcake com recheio de limão e cobertura de merengue', 8.00, 'Doces', 'http://imagem4.com', 25),
    (5, 'Cupcake de Morango', 'Cupcake com cobertura e recheio de morango', 8.75, 'Doces', 'http://imagem5.com', 35);

-- Carrinho
INSERT INTO carrinho (id_carrinho, id_usuario, id_produto, quantidade, preco_total, data_adicionado)
VALUES 
    (1, 1, 1, 2, 17.00, '2024-11-29 12:00:00'),
    (2, 2, 2, 1, 7.00, '2024-11-29 12:30:00'),
    (3, 3, 3, 3, 27.00, '2024-11-28 13:00:00'),
    (4, 4, 4, 1, 8.00, '2024-11-27 14:30:00'),
    (5, 5, 5, 2, 17.50, '2024-11-26 15:00:00');

-- Pedidos
INSERT INTO pedidos (id_pedido, id_usuario, data_pedido, status_pedido, valor_total)
VALUES 
    (1, 1, '2024-11-28 14:00:00', 'Concluído', 34.00),
    (2, 2, '2024-11-29 15:00:00', 'Em Processamento', 7.00),
    (3, 3, '2024-11-28 16:00:00', 'Concluído', 45.00),
    (4, 4, '2024-11-27 17:00:00', 'Cancelado', 8.00),
    (5, 5, '2024-11-26 18:00:00', 'Concluído', 17.50);

-- Itens dos pedidos
INSERT INTO itens_pedidos (id_item, id_pedido, id_produto, quantidade, preco_unitario)
VALUES 
    (1, 1, 1, 2, 8.50),
    (2, 1, 2, 1, 7.00),
    (3, 2, 3, 3, 9.00),
    (4, 3, 4, 1, 8.00),
    (5, 4, 5, 2, 8.75);

-- Cupons
INSERT INTO cupons (id_cupom, codigo, desconto, validade, ativo)
VALUES 
    (1, 'DESCONTO10', 10.00, '2024-12-31', TRUE),
    (2, 'FRETEGRATIS', 0.00, '2024-11-30', TRUE),
    (3, 'PROMO20', 20.00, '2024-12-15', TRUE),
    (4, 'SUPER5', 5.00, '2024-12-10', TRUE),
    (5, 'BLACK50', 50.00, '2024-11-29', FALSE);

-- Notificações
INSERT INTO notificacoes (id_notificacao, id_usuario, mensagem, data_envio, lida)
VALUES 
    (1, 1, 'Seu pedido foi enviado!', '2024-11-29 14:00:00', FALSE),
    (2, 2, 'Promoção especial para você!', '2024-11-29 16:00:00', TRUE),
    (3, 3, 'Pedido entregue com sucesso.', '2024-11-28 18:00:00', TRUE),
    (4, 4, 'Cupcake de Limão em promoção!', '2024-11-27 09:00:00', FALSE),
    (5, 5, 'Cupom BLACK50 expirou.', '2024-11-26 10:30:00', TRUE);
