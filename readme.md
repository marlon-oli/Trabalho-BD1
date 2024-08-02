# TRABALHO 01:  Empresa de energia solar
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Daniel da Silva Lippaus: lippaus18@gmail.com<br>
Daniel Oliveira Lemos: danielolemos10@gmail.com<br>
Lorenzzo Gabriel Ramos Doelinger Oliveira: lorenzzooliveira7@gmail.com<br>
Rodolfo Müller do Amaral: amaralrodolfo38@gmail.com<br>
<br>


### 2.MINI-MUNDO<br>
Descrição textual das regras de negócio definidas como um subconjunto do mundo real cujos elementos são propriedades que desejamos incluir, processar, armazenar, gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> O sistema proposto para a SERVTEC Energia Solar conterá as informacões aqui detalhadas. Dos clientes serão armazenados o nome, o endereço, o email, o telefone e o CPF. Dos orçamentos serão armazenados o número, o nome do cliente, o seu representante comercial, a pessoa que o indicou (caso haja), o gasto médio mensal, a quantidade de kWh sugerida para o cliente, o número de parcelas do financiamento, o valor das parcelas propostas, o valor do projeto caso seja pago à vista, o seu status, a data de atualização do status, a data de confecção do orçamento, o tipo de padrão de energia, a quantidade de painéis que o inversor proposto suporta, a potência média mensal com o total de placas, a área média dos módulos e a economia total gerada com o sistema em 25 anos. Dos representantes comerciais serão armazenados o nome e o número de telefone. Cada representante comercial pode ter vários orçamentos relacionados ao seu nome, mas um orámento pode estar relacionado a um só representante comercial. Um orçamento pode ser aprovado, reprovado ou arquivado. Um cliente pode ter um ou mais orçamentos relacionados ao seu nome. Os padrões de energia podem ser monofásicos, bifásicos ou trifásicos. 

### 3.PERGUNTAS A SEREM RESPONDIDAS<br>
#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informações? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa SERVTEC Energia Solar precisa inicialmente dos seguintes relatórios sobre orçamentos, projetos e representantes:
* Relatório que mostre a quantidade de orçamentos aprovados em determinada época do ano.
* Relatório que mostre qual a região com mais pedidos de orçamento.
* Relatório que mostre quantos projetos são feitos por semestre.
* Relatório que mostre a quantidade de projetos aprovados, reprovados e arquivados por semestre.
* Relatório que mostre qual representante mais fez orçamentos por semestre.

    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![image](https://github.com/user-attachments/assets/b2de9043-8f4e-45e6-a4f4-fb6a06521c2b)



    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    CLIENTE: Tabela que armazena as informações relativas aos clientes.
    ClienteID (chave primária): Identificador único de cliente;
    Nome: Nome completo do cliente;
    Endereco: Endereço do cliente;
    Email: E-mail do cliente;
    Telefone: Telefone de contato do cliente;
    CPF: Número de Cadastro de Pessoa Física do cliente.

    ORÇAMENTOS: Tabela que armazena as informações relativas aos orçamentos realizados.
    OrcamentoID (chave primária): Identificador único do orçamento;
    ValorParcelasPropostas: Valor das parcelas propostas a partir da negociação;
    ValorProjetoVista: Valor do projeto caso o pagamento seja feito à vista;
    Numero: Número do projeto;
    Status: Qual a situação atual do projeto (Iniciado, Em execução, Finalizado, Cancelado);
    NomeCliente: Nome do cliente ao qual o orçamento está atrelado;
    DataAtualizacaoStatus: Data da última atualização de status do projeto;
    RepresentanteComercial: Nome do representante comercial que é responsável pelo orçamento;
    DatadeConfeccao: Data em que o orçamento foi feito;
    PessoaqueIndicou: Nome da pessoa que indicou a empresa para fazer o projeto;
    TipodePadraodeEnergia: Tipo de padrão de energia do cliente;
    GastoMedioMensal: Gasto médio mensal do cliente para poder dimensionar o aparelho de energia solar;
    QuantidadedePaineisqueoInversorSuporta: Quantidade de painéis que o inversor suporta nessa instalação;
    QuantidadekWhSugerida: Qual a quantidade de kWh sugerida para a instalação de acordo com os dados fornecidos pelo cliente;
    PotenciaMediaMensal: Qual a potência média mensal fornecida pelo aparelho;
    NumerodeParcelas: Número de parcelas estabelecidas para o orçamento;
    EconomiaTotalem25Anos: Qual a economia total que o cliente terá em 25 anos se colocar as placas solares;
    AreaMediadosModulos: Qual a área média de ocupação dos módulos da instalação.

    REPRESENTANTE COMERCIAL:
    RepresentanteID (chave primária): Identificador único do representante comercial;
    Nome: Nome completo do representante comercial;
    Telefone: Telefone de contato do representante comercial.
    

># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br> 

### 6	MODELO LÓGICO<br>
![image](https://github.com/user-attachments/assets/7db12b35-e755-4336-8fd2-f0eb45f544ea)

### 7	MODELO FÍSICO<br>
	-- Criação da tabela CLIENTE
	CREATE TABLE CLIENTE (
	    ClienteID INT PRIMARY KEY,
	    Nome VARCHAR(255) NOT NULL,
	    Endereco VARCHAR(255) NOT NULL,
	    Email VARCHAR(255) NOT NULL,
	    Telefone VARCHAR(20) NOT NULL,
	    CPF VARCHAR(20) NOT NULL
	);
	
	-- Criação da tabela REPRESENTANTE_COMERCIAL
	CREATE TABLE REPRESENTANTE_COMERCIAL (
	    RepresentanteID INT PRIMARY KEY,
	    Nome VARCHAR(255) NOT NULL,
	    Telefone VARCHAR(20) NOT NULL
	);
	
	-- Criação da tabela ORCAMENTOS
	CREATE TABLE ORCAMENTOS (
	    OrcamentoID INT PRIMARY KEY,
	    ValorParcelasPropostas DECIMAL(10, 2) NOT NULL,
	    ValorProjetoAVista DECIMAL(10, 2) NOT NULL,
	    Numero INT NOT NULL,
	    Status VARCHAR(50) NOT NULL,
	    NomeCliente VARCHAR(255) NOT NULL,
	    DataAtualizacaoStatus DATE NOT NULL,
	    RepresentanteComercial INT,
	    DataDeConfecao DATE NOT NULL,
	    PessoaQueIndicou VARCHAR(255),
	    TipoDePadraoDeEnergia VARCHAR(255),
	    GastoMedioMensal DECIMAL(10, 2),
	    QuantidadePaineisQueOInversorSuporta INT,
	    QuantidadeWhSugerida DECIMAL(10, 2),
	    PotenciaMediaMensal DECIMAL(10, 2),
	    NumeroDeParcelas INT,
	    EconomiaTotalEm25Anos DECIMAL(10, 2),
	    AreaMediaDosModulos DECIMAL(10, 2),
	    CONSTRAINT FK_RepresentanteComercial FOREIGN KEY (RepresentanteComercial) REFERENCES REPRESENTANTE_COMERCIAL(RepresentanteID)
	);
	
	-- Relacionamento entre CLIENTE e ORCAMENTOS
	CREATE TABLE Possui (
	    ClienteID INT,
	    OrcamentoID INT,
	    PRIMARY KEY (ClienteID, OrcamentoID),
	    CONSTRAINT FK_Cliente FOREIGN KEY (ClienteID) REFERENCES CLIENTE(ClienteID),
	    CONSTRAINT FK_Orcamento FOREIGN KEY (OrcamentoID) REFERENCES ORCAMENTOS(OrcamentoID)
	);
	
	-- Relacionamento entre ORCAMENTOS e REPRESENTANTE_COMERCIAL
	CREATE TABLE Associado (
	    OrcamentoID INT,
	    RepresentanteID INT,
	    PRIMARY KEY (OrcamentoID, RepresentanteID),
	    CONSTRAINT FK_Orcamento_Associado FOREIGN KEY (OrcamentoID) REFERENCES ORCAMENTOS(OrcamentoID),
	    CONSTRAINT FK_Representante_Associado FOREIGN KEY (RepresentanteID) REFERENCES REPRESENTANTE_COMERCIAL(RepresentanteID)
	);


      
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) Script das instruções relativas a inclusão de dados 
	Requisito mínimo: (Script dev conter: Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        OBS
	1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
        2) script deve ser incluso no template em um arquivo no formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>
<br>
<br>
