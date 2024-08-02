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

-- Inserção de registros nas tabelas
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
(15, 1015, '2024-03-01', '2024-03-15');

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
(15, '2024-03-02', '2024-03-12', 15);

INSERT INTO CATALOGO (id_item, descricao, tipo) VALUES
(1, 'Parafuso', 'Peça'),
(2, 'Filtro', 'Peça'),
(3, 'Pneu', 'Peça'),
(4, 'Janela Frontal', 'Peça'),
(5, 'Parabrisa', 'Peça'),
(6, 'Óleo de Motor', 'Serviço'),
(7, 'Troca de Óleo', 'Serviço'),
(8, 'Alinhamento', 'Serviço'),
(9, 'Balanceamento', 'Serviço'),
(10, 'Troca de Filtro', 'Serviço'),
(11, 'Reparo de Freios', 'Serviço'),
(12, 'Inspeção de Suspensão', 'Serviço'),
(13, 'Troca de Pastilhas', 'Serviço'),
(14, 'Troca de Óleo de Transmissão', 'Serviço'),
(15, 'Reparo de Motor', 'Serviço');

INSERT INTO ORCAMENTO (id_orcamento, fornecedor, previsao_entrega) VALUES
(1, 'Fornecedor A', '2023-01-20'),
(2, 'Fornecedor B', '2023-02-25'),
(3, 'Fornecedor C', '2023-03-25'),
(4, 'Fornecedor D', '2023-04-25'),
(5, 'Fornecedor E', '2023-05-25'),
(6, 'Fornecedor F', '2023-06-25'),
(7, 'Fornecedor G', '2023-07-25'),
(8, 'Fornecedor H', '2023-08-25'),
(9, 'Fornecedor I', '2023-09-25'),
(10, 'Fornecedor J', '2023-10-25'),
(11, 'Fornecedor K', '2023-11-25'),
(12, 'Fornecedor L', '2023-12-25'),
(13, 'Fornecedor M', '2024-01-25'),
(14, 'Fornecedor N', '2024-02-25'),
(15, 'Fornecedor O', '2024-03-25');

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
(10, 10);

INSERT INTO ITENS_PEDIDO (quantidade, valor, garantia, FK_PEDIDO_id_pedido, FK_ITENS_id_item, FK_ORCAMENTO_id_orcamento) VALUES
(10, 1.50, 12, 1, 1, 1),
(5, 200.00, 24, 1, 2, 1),
(20, 50.00, 24, 2, 3, 2),
(15, 75.00, 18, 3, 4, 3),
(8, 500.00, 12, 4, 5, 4),
(12, 250.00, 24, 5, 6, 5),
(7, 300.00, 24, 6, 7, 6),
(9, 15.00, 12, 7, 8, 7),
(11, 20.00, 18, 8, 9, 8),
(14, 100.00, 24, 9, 10, 9),
(6, 75.00, 18, 10, 11, 10),
(13, 250.00, 24, 11, 12, 11),
(10, 1.50, 12, 12, 13, 12),
(8, 200.00, 24, 13, 14, 13),
(9, 50.00, 24, 14, 15, 14);

-- Nota: Ajuste os valores conforme necessário para corresponder ao seu ambiente e dados reais.
