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
