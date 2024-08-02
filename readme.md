# TRABALHO 02:  Diligenciamento de Pedidos para Manutenção de Equipamentos
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Jhon Pinho Santos da Silva: jhonpinhosantos@gmail.com<br>
Lucas Lopes Rosa Maciel: lucaslopes14011@gmail.com<br>
Marlon de Oliveira Silva: marlonoliveira639@gmail.com<br>


### 2.MINI-MUNDO<br>

> O sistema proposto para o cliente Lucas Rodrigues consiste em atender sua necessidade de controlar e visualizar o andamento dos pedidos de manutenção de seus equipamentos, onde tanto os produtos quanto os serviços são 100% terceirizados. Sendo assim, é necessário armazenar as ordens de serviço dos equipamentos, contendo o número único de identificação do equipamento, a data de início da ordem de serviço e a data de conclusão da mesma. A partir da ordem de serviço, surge um pedido, que é composto por data do pedido, data do recebimento e itens de um catálogo de itens, que possui a descrição e o tipo de cada item. Cada pedido pode resultar em um ou mais orçamentos que guardam as informações de fornecedor, previsão de entrega e status, que estão relacionados com o valor total e garantia de cada item. Os orçamentos podem ou não gerar uma e somente uma ordem de compra cada, onde cada ordem de compra também só se relaciona com um orçamento. É importante frisar que as informações de data de conclusão e data de recebimento inicialmente são nulas, sendo preenchidas somente no momento de conclusão e de recebimento.


### 3.PERGUNTAS A SEREM RESPONDIDAS<br>
 
> O cliente necessita inicialmente dos seguintes relatórios:

##### 1 - pedidos pendentes:
    
    objetivo: fornecer uma visão geral de todos os pedidos pendentes.

    atributos:
        - pedido
        - status
        - previsão de entrega

##### 2 - consumo de itens mensal:

    objetivo: estimar o consumo mensal de itens para possível planejamento de compras e reavaliação de gastos.

    atributos: 
        (filtrados por mês)
        - item
        - quantidade solicitada
        - valor total

##### 3 - desempenho dos fornecedores:

    objetivo: verificar quais fornecedores cumprem com o prazo de entrega e verificar os que entregam em menor tempo.

    atributos:
        - fornecedor
        - quantidade de ordens de compra
        - quantidade de dias de atraso
        - média de tempo de entrega (dias)

##### 4 - custo total por equipamento:

    objetivo: fornecer uma visão do custo em manutenção de todos os equipamentos.

    atributos:
        - equipamento
        - valor total gasto em manutenções corretivas
        - valor total gasto em manutenções preventivas

##### 5 - tempo parado por equipamento:

    objetivo: fornecer a informação de quanto tempo o equipamento ficou parado na oficina em manutenções corretivas e preventivas

    atributos:
        - equipamento
        - tempo total em manutenção corretiva
        - tempo total em manutenção preventiva

    
### 5.MODELO CONCEITUAL<br>
       
![Alt text](https://github.com/marlon-oli/Trabalho-BD1/blob/main/files/diligenciamento%20de%20pedidos%20manutencao%20(conceitual)%20print.png?raw=true "Modelo Conceitual")
   

#### 5.1 Validação do Modelo Conceitual
    [Grupo 01]: [Daniel Oliveira]
    [Grupo02]: [Nomes dos que participaram na avaliação]


#### 5.2 Descrição dos dados 

    EXEMPLO:
    ORDEM_SERVICO: tabela que armazena as ordens de serviço de todos os equipamentos.
        - id_os: identificador único da ordem de serviço.
        - id_equipamento: identificador único do equipamento que necessita de manutenção.
        - data_inicio: data de abertura da ordem de serviço.
        - data_conclusa0: data de conclusão da ordem de serviço.

    PEDIDO: tabela que armazena os pedidos das ordens de serviço.
        - id_pedido: identificador único do pedido.
        - data_pedido: data em que o pedido foi emitido.
        - data_recebimento: data em que todos os itens do pedido foram recebidos ou realizados, em caso de serviços.

    CATALOGO: tabela que possui todos os itens que podem ser pedidos.
        - id_item: identificador único do item.
        - descricao: descrição do item.
        - tipo: tipo do item (ex: peças, serviços, etc.)

    ORCAMENTO: tabela que possui todos os orçamentos gerados a partir de pedidos.
        - id_orcamento: identificador único de cada orçamento.
        - fornecedor: nome do fornecedor dos itens relacionados a esse orçamento.
        - previsão de entrega: previsão de entrega de todos os itens relacionados a esse orçamento.

    ITENS_PEDIDO: tabela que contém informações a respeito dos itens que relacionam as tabelas CATALOGO, ORCAMENTO E PEDIDO.
        - quantidade: quantidade do respectivo item, de acordo com o pedido relacionado.
        - valor: valor do respectivo item, de acordo com o fornecedor do orçamento relacionado.
        - garantia: garantia do respectivo item, de acordo com o fornecedor do orçamento relacionado.

    ORDEM_COMPRA: tabela que contém todos os orçamentos que foram aprovados e se transformaram em uma ordem de compra.
        -id_oc: identificador único de cada ordem de compra.


># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br> 

### 6   MODELO LÓGICO<br>

![Alt text](https://github.com/marlon-oli/Trabalho-BD1/blob/main/files/diligenciamento%20de%20pedidos%20manutencao%20(logico)%20print.png?raw=true "Modelo Lógico")


### 7   MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 

      
### 8   INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) Script das instruções relativas a inclusão de dados
   [create-insert.sql](https://github.com/marlon-oli/Trabalho-BD1/blob/main/files/create-insert.sql)

1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
    2) script deve ser incluso no template em um arquivo no formato .SQL
    1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
        2) script deve ser incluso no template em um arquivo no formato .SQL
             
     

### 9   TABELAS E PRINCIPAIS CONSULTAS<br>

     Realizando a conexão com o banco de dados:
     
   ![image](https://github.com/user-attachments/assets/45c8b657-852d-4af9-a101-1ebd92b086bd)



#### 9.1    CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

![image](https://github.com/user-attachments/assets/6cb7a4fc-0926-4367-9622-cbdbf09cca8a)

Saída:

![image](https://github.com/user-attachments/assets/bbe4f7a4-719e-4352-827c-707f14c6db54)


#### 9.2    CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

![image](https://github.com/user-attachments/assets/a32ebd5f-0e14-4b14-bbdc-8bae369eb51a)

Saída : 

![image](https://github.com/user-attachments/assets/3b93976f-2687-4951-b37a-338f31c6549a)


#### 9.3    CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4    CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.


># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5    INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6    CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
    
![image](https://github.com/user-attachments/assets/1c6feb84-e981-412e-9717-63086488ad56)

Saída :

![image](https://github.com/user-attachments/assets/7442326f-4114-469a-89f6-7c8798f7446b)

#### 9.7    CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8    CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9    CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10   SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11  AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>
<br>
<br>




### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
