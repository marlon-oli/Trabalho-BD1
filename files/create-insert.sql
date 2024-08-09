-- Limpar tabelas existentes
DROP TABLE IF EXISTS ITENS_PEDIDO;
DROP TABLE IF EXISTS ORDEM_COMPRA;
DROP TABLE IF EXISTS PEDIDO;
DROP TABLE IF EXISTS ORCAMENTO;
DROP TABLE IF EXISTS CATALOGO;
DROP TABLE IF EXISTS ORDEM_SERVICO;

-- Criar tabelas
CREATE TABLE ORDEM_SERVICO (
    id_os INT PRIMARY KEY,
    id_equipamento INT,
    data_inicio DATE,
    data_conclusao DATE
);

CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE,
    data_recebimento DATE,
    FK_ORDEM_SERVICO_id_os INT UNIQUE,
    FOREIGN KEY (FK_ORDEM_SERVICO_id_os) REFERENCES ORDEM_SERVICO (id_os)
);

CREATE TABLE CATALOGO (
    id_item INT PRIMARY KEY,
    descricao VARCHAR,
    tipo VARCHAR
);

CREATE TABLE ORCAMENTO (
    id_orcamento INT PRIMARY KEY,
    fornecedor VARCHAR,
    previsao_entrega DATE
);

CREATE TABLE ORDEM_COMPRA (
    id_oc INT PRIMARY KEY,
    FK_ORCAMENTO_id_orcamento INT UNIQUE,
    FOREIGN KEY (FK_ORCAMENTO_id_orcamento) REFERENCES ORCAMENTO (id_orcamento)
);

CREATE TABLE ITENS_PEDIDO (
    quantidade INT,
    valor DOUBLE PRECISION,
    garantia INT,
    FK_PEDIDO_id_pedido INT,
    FK_ITENS_id_item INT,
    FK_ORCAMENTO_id_orcamento INT,
    PRIMARY KEY (FK_PEDIDO_id_pedido, FK_ITENS_id_item, FK_ORCAMENTO_id_orcamento),
    FOREIGN KEY (FK_PEDIDO_id_pedido) REFERENCES PEDIDO (id_pedido),
    FOREIGN KEY (FK_ITENS_id_item) REFERENCES CATALOGO (id_item),
    FOREIGN KEY (FK_ORCAMENTO_id_orcamento) REFERENCES ORCAMENTO (id_orcamento)
);

INSERT INTO ORDEM_SERVICO (id_os, id_equipamento, data_inicio, data_conclusao) VALUES
(1, 1001, '2023-01-01', '2023-01-10'),
(2, 1002, '2023-02-01', '2023-02-15'),
(3, 1003, '2023-03-01', '2023-03-10'),
(4, 1004, '2023-04-01', '2023-04-15'),
(5, 1005, '2023-05-01', '2023-05-15'),
(6, 1006, '2023-06-01', '2023-06-15'),
(7, 1007, '2023-07-01', '2023-07-15'),
(8, 1008, '2023-08-01', '2023-08-15'),
(9, 1009, '2023-09-01', '2023-09-15'),
(10, 1010, '2023-10-01', '2023-10-15'),
(11, 1011, '2023-11-01', '2023-11-15'),
(12, 1012, '2023-12-01', '2023-12-15'), 
(13, 1013, '2024-01-01', '2024-01-15'), 
(14, 1014, '2024-02-01', '2024-02-15'), 
(15, 1015, '2024-03-01', '2024-03-15'),
-- Novos dados com variância
(16, 1016, '2024-04-01', '2024-04-15'),
(17, 1017, '2024-05-01', '2024-05-15'),
(18, 1018, '2024-06-01', '2024-06-15'),
(19, 1019, '2024-07-01', '2024-07-15'),
(20, 1020, '2024-08-01', '2024-08-15'),
(21, 1021, '2024-09-01', '2024-09-15'),
(22, 1022, '2024-10-01', '2024-10-15'),
(23, 1023, '2024-11-01', '2024-11-15'),
(24, 1024, '2024-12-01', '2024-12-15'),
(25, 1025, '2025-01-01', '2025-01-15'),
(26, 1026, '2025-02-01', '2025-02-15'),
(27, 1027, '2025-03-01', '2025-03-15'),
(28, 1028, '2025-04-01', '2025-04-15'),
(29, 1029, '2025-05-01', '2025-05-15'),
(30, 1030, '2025-06-01', '2025-06-15');

-- Inserção de dados na tabela PEDIDO
INSERT INTO PEDIDO (id_pedido, data_pedido, data_recebimento, FK_ORDEM_SERVICO_id_os) VALUES
(1, '2023-01-02', '2023-01-12', 1),
(2, '2023-02-02', '2023-02-17', 2),
(3, '2023-03-02', '2023-03-12', 3),
(4, '2023-04-02', '2023-04-12', 4),
(5, '2023-05-02', '2023-05-12', 5),
(6, '2023-06-02', '2023-06-12', 6),
(7, '2023-07-02', '2023-07-12', 7),
(8, '2023-08-02', '2023-08-12', 8),
(9, '2023-09-02', '2023-09-12', 9),
(10, '2023-10-02', '2023-10-12', 10),
(11, '2023-11-02', '2023-11-12', 11),
(12, '2023-12-02', '2023-12-12', 12),
(13, '2024-01-02', '2024-01-12', 13),
(14, '2024-02-02', '2024-02-12', 14),
(15, '2024-03-02', '2024-03-12', 15),
-- Novos dados com variância
(16, '2024-04-02', '2024-04-12', 16),
(17, '2024-05-02', '2024-05-12', 17),
(18, '2024-06-02', '2024-06-12', 18),
(19, '2024-07-02', '2024-07-12', 19),
(20, '2024-08-02', '2024-08-12', 20),
(21, '2024-09-02', '2024-09-12', 21),
(22, '2024-10-02', '2024-10-12', 22),
(23, '2024-11-02', '2024-11-12', 23),
(24, '2024-12-02', '2024-12-12', 24),
(25, '2025-01-02', '2025-01-12', 25),
(26, '2025-02-02', '2025-02-12', 26),
(27, '2025-03-02', '2025-03-12', 27),
(28, '2025-04-02', '2025-04-12', 28),
(29, '2025-05-02', '2025-05-12', 29),
(30, '2025-06-02', '2025-06-12', 30);

-- Inserção de dados na tabela CATALOGO
INSERT INTO CATALOGO (id_item, descricao, tipo) VALUES
(1, 'Pneu', 'Peça'),
(2, 'Filtro de Óleo', 'Peça'),
(3, 'Filtro de Ar', 'Peça'),
(4, 'Janela Frontal', 'Peça'),
(5, 'Parabrisa', 'Peça'),
(6, 'Amortecedor', 'Peça'),
(7, 'Pastilha de Freio', 'Peça'),
(8, 'Lâmpada de Farol', 'Peça'),
(9, 'Bateria', 'Peça'),
(10, 'Óleo de Motor', 'Produto'),
(11, 'Serviço de Troca de Pneu', 'Serviço'),
(12, 'Serviço de Alinhamento', 'Serviço'),
(13, 'Serviço de Balanceamento', 'Serviço'),
(14, 'Serviço de Troca de Óleo', 'Serviço'),
(15, 'Serviço de Inspeção Geral', 'Serviço'),
-- Novos dados com variância
(16, 'Calibragem de Pneus', 'Serviço'),
(17, 'Troca de Correia', 'Serviço'),
(18, 'Substituição de Velas', 'Serviço'),
(19, 'Troca de Bateria', 'Serviço'),
(20, 'Polimento de Faróis', 'Serviço'),
(21, 'Limpeza de Bicos Injetores', 'Serviço'),
(22, 'Troca de Pastilhas de Freio', 'Serviço'),
(23, 'Revisão de Suspensão', 'Serviço'),
(24, 'Alinhamento e Balanceamento', 'Serviço'),
(25, 'Troca de Óleo de Transmissão', 'Serviço'),
(26, 'Serviço de Higienização', 'Serviço'),
(27, 'Troca de Filtro de Cabine', 'Serviço'),
(28, 'Inspeção Completa', 'Serviço'),
(29, 'Troca de Amortecedores', 'Serviço'),
(30, 'Revisão Elétrica', 'Serviço');

-- Inserção de dados na tabela ORCAMENTO
INSERT INTO ORCAMENTO (id_orcamento, fornecedor, previsao_entrega) VALUES
(1, 'Fornecedor A', '2023-01-15'),
(2, 'Fornecedor B', '2023-02-15'),
(3, 'Fornecedor C', '2023-03-15'),
(4, 'Fornecedor D', '2023-04-15'),
(5, 'Fornecedor E', '2023-05-15'),
(6, 'Fornecedor F', '2023-06-15'),
(7, 'Fornecedor G', '2023-07-15'),
(8, 'Fornecedor H', '2023-08-15'),
(9, 'Fornecedor I', '2023-09-15'),
(10, 'Fornecedor J', '2023-10-15'),
(11, 'Fornecedor K', '2023-11-15'),
(12, 'Fornecedor L', '2023-12-15'),
(13, 'Fornecedor M', '2024-01-15'),
(14, 'Fornecedor N', '2024-02-15'),
(15, 'Fornecedor O', '2024-03-15'),
-- Novos dados com variância
(16, 'Fornecedor P', '2024-04-15'),
(17, 'Fornecedor Q', '2024-05-15'),
(18, 'Fornecedor R', '2024-06-15'),
(19, 'Fornecedor S', '2024-07-15'),
(20, 'Fornecedor T', '2024-08-15'),
(21, 'Fornecedor U', '2024-09-15'),
(22, 'Fornecedor V', '2024-10-15'),
(23, 'Fornecedor W', '2024-11-15'),
(24, 'Fornecedor X', '2024-12-15'),
(25, 'Fornecedor Y', '2025-01-15'),
(26, 'Fornecedor Z', '2025-02-15'),
(27, 'Fornecedor AA', '2025-03-15'),
(28, 'Fornecedor BB', '2025-04-15'),
(29, 'Fornecedor CC', '2025-05-15'),
(30, 'Fornecedor DD', '2025-06-15');

-- Inserção de dados na tabela ORDEM_COMPRA
INSERT INTO ORDEM_COMPRA (id_oc, FK_ORCAMENTO_id_orcamento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
-- Novos dados com variância
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);

-- Inserção de dados na tabela ITENS_PEDIDO
INSERT INTO ITENS_PEDIDO (quantidade, valor, garantia, FK_PEDIDO_id_pedido, FK_ITENS_id_item, FK_ORCAMENTO_id_orcamento) VALUES
(10, 500.00, 12, 1, 1, 1),
(5, 300.00, 6, 2, 2, 2),
(7, 700.00, 24, 3, 3, 3),
(3, 150.00, 18, 4, 4, 4),
(8, 800.00, 24, 5, 5, 5),
(6, 600.00, 12, 6, 6, 6),
(4, 400.00, 18, 7, 7, 7),
(9, 900.00, 24, 8, 8, 8),
(2, 200.00, 12, 9, 9, 9),
(1, 100.00, 6, 10, 10, 10),
(5, 500.00, 18, 11, 11, 11),
(3, 300.00, 12, 12, 12, 12),
(7, 700.00, 24, 13, 13, 13),
(6, 600.00, 12, 14, 14, 14),
(8, 800.00, 24, 15, 15, 15),
-- Novos dados com variância
(10, 1000.00, 36, 16, 16, 16),
(5, 250.00, 24, 17, 17, 17),
(7, 350.00, 18, 18, 18, 18),
(8, 400.00, 12, 19, 19, 19),
(3, 150.00, 24, 20, 20, 20),
(6, 300.00, 18, 21, 21, 21),
(9, 450.00, 12, 22, 22, 22),
(4, 200.00, 24, 23, 23, 23),
(5, 250.00, 18, 24, 24, 24),
(7, 350.00, 12, 25, 25, 25),
(6, 300.00, 24, 26, 26, 26),
(8, 400.00, 18, 27, 27, 27),
(9, 450.00, 12, 28, 28, 28),
(10, 500.00, 24, 29, 29, 29),
(5, 250.00, 18, 30, 30, 30);


-- Inserção de novas ordens de serviço abertas
INSERT INTO ORDEM_SERVICO (id_os, id_equipamento, data_inicio, data_conclusao) VALUES
(31, 1016, '2024-04-01', NULL),
(32, 1017, '2024-04-05', NULL),
(33, 1018, '2024-04-10', NULL),
(34, 1019, '2024-04-15', NULL),
(35, 1020, '2024-04-20', NULL),
(36, 1021, '2024-04-25', NULL),
(37, 1022, '2024-05-01', NULL),
(38, 1023, '2024-05-05', NULL),
(39, 1024, '2024-05-10', NULL),
(40, 1025, '2024-05-15', NULL),
(41, 1026, '2024-05-20', NULL),
(42, 1027, '2024-05-25', NULL),
(43, 1028, '2024-06-01', NULL),
(44, 1029, '2024-06-05', NULL),
(45, 1030, '2024-06-10', NULL),
(46, 1031, '2024-06-15', NULL),
(47, 1032, '2024-06-20', NULL);

-- Inserção de novos pedidos associados às ordens de serviço abertas
INSERT INTO PEDIDO (id_pedido, data_pedido, data_recebimento, FK_ORDEM_SERVICO_id_os) VALUES
(31, '2024-04-02', NULL, 31),
(32, '2024-04-06', NULL, 32),
(33, '2024-04-11', NULL, 33),
(34, '2024-04-16', NULL, 34),
(35, '2024-04-21', NULL, 35),
(36, '2024-04-26', NULL, 36),
(37, '2024-05-02', NULL, 37),
(38, '2024-05-06', NULL, 38),
(39, '2024-05-11', NULL, 39),
(40, '2024-05-16', NULL, 40),
(41, '2024-05-21', NULL, 41),
(42, '2024-05-26', NULL, 42),
(43, '2024-06-02', NULL, 43),
(44, '2024-06-06', NULL, 44),
(45, '2024-06-11', NULL, 45),
(46, '2024-06-16', NULL, 46),
(47, '2024-06-21', NULL, 47);

-- Inserção de novos orçamentos com fornecedores repetidos
INSERT INTO ORCAMENTO (id_orcamento, fornecedor, previsao_entrega) VALUES
(31, 'Fornecedor A', '2024-07-01'),
(32, 'Fornecedor B', '2024-07-05'),
(33, 'Fornecedor C', '2024-07-10'),
(34, 'Fornecedor A', '2024-07-15'),
(35, 'Fornecedor D', '2024-07-20'),
(36, 'Fornecedor B', '2024-07-25'),
(37, 'Fornecedor A', '2024-08-01'),
(38, 'Fornecedor C', '2024-08-05'),
(39, 'Fornecedor D', '2024-08-10'),
(40, 'Fornecedor A', '2024-08-15'),
(41, 'Fornecedor B', '2024-08-20'),
(42, 'Fornecedor C', '2024-08-25'),
(43, 'Fornecedor D', '2024-09-01'),
(44, 'Fornecedor A', '2024-09-05'),
(45, 'Fornecedor B', '2024-09-10'),
(46, 'Fornecedor C', '2024-09-15'),
(47, 'Fornecedor D', '2024-09-20');

