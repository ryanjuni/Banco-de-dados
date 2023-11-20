------------------------------------------------------------------------
-- Criando a Tabela VENDEDOR
------------------------------------------------------------------------
CREATE TABLE [VENDEDOR]
(
    [COD_VENDEDOR] INTEGER NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [TELEFONE] NVARCHAR(160)  NOT NULL,
    [ENDERECO] NVARCHAR(160)  NOT NULL,
    [CPF] NVARCHAR(160)  NOT NULL,
    [ADMIN] BOOLEAN  NOT NULL,
    [COD_USUARIO] INTEGER ,
    [COD_LOJA] INTEGER ,
    CONSTRAINT [PK_VENDEDOR] PRIMARY KEY ([COD_VENDEDOR])
    CONSTRAINT [FK_USUARIO] FOREIGN KEY ([COD_USUARIO]) REFERENCES USUARIO(COD_USUARIO)
    CONSTRAINT [FK_LOJA] FOREIGN KEY ([COD_LOJA]) REFERENCES LOJA(COD_LOJA)
);
CREATE UNIQUE INDEX [IPK_VENDEDOR] ON [VENDEDOR]([COD_VENDEDOR]);
------------------------------------------------------------------------
SELECT * FROM VENDEDOR 
SELECT * FROM VENDEDOR WHERE COD_VENDEDOR LIKE '4';
SELECT * FROM VENDEDOR WHERE NOME LIKE 'LUCAS';
SELECT * FROM VENDEDOR WHERE CPF LIKE '265.332.800-50';
------------------------------------------------------------------------
-- EXEMPLO DE INSERT DA TABELA VENDEDOR
INSERT INTO VENDEDOR (COD_VENDEDOR,NOME,TELEFONE,ENDERECO,CPF,ADMIN)   VALUES (3,'MATHEUS','(+31)99792-4356','R.DOS LAGOS n 81','221.304.008-90','1');
INSERT INTO VENDEDOR (COD_VENDEDOR, NOME, TELEFONE, ENDERECO,CPF,ADMIN)VALUES (1, 'LORANE', '(+31)99486-6013', 'R. DAS FLORES n 50','180.647.350-70','1');
INSERT INTO VENDEDOR (COD_VENDEDOR, NOME, TELEFONE, ENDERECO,CPF,ADMIN)VALUES (2, 'HENRIQUE', '(+31)99977-7989', 'R.LAGOINHA n 75','120.004.160-03','1');
INSERT INTO VENDEDOR (COD_VENDEDOR, NOME, TELEFONE, ENDERECO,CPF,ADMIN)VALUES (4, 'LUCAS', '(+31)99677-2939', 'R.VENEZA 250 n 23 ','265.332.800-50','1');
------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA VENDEDOR
DELETE FROM VENDEDOR WHERE COD_VENDEDOR  =  '4';
DELETE FROM VENDEDOR WHERE COD_VENDEDOR  =  '3';
DELETE FROM VENDEDOR WHERE COD_VENDEDOR  =  '2';
DELETE FROM VENDEDOR WHERE COD_VENDEDOR  =  '1';
------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA VENDEDOR
UPDATE VENDEDOR SET ENDERECO = 'R.VENEZA 250 n 23' WHERE COD_VENDEDOR = 4;
UPDATE VENDEDOR SET NOME = 'LUCAS' WHERE COD_VENDEDOR = 4;
UPDATE VENDEDOR SET TELEFONE = '(+31)99677-2939' WHERE COD_VENDEDOR = 4;
UPDATE VENDEDOR SET COD_VENDEDOR  = '5' WHERE COD_VENDEDOR = 4;
------------------------------------------------------------------------
-- Criando a Tabela CLIENTE
------------------------------------------------------------------------
CREATE TABLE [CLIENTE]
(
    [COD_CLIENTE] INTEGER  NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [TELEFONE] NVARCHAR(160)  NOT NULL,
    [ENDERECO] NVARCHAR(160)  NOT NULL,
    [CPF] NVARCHAR(160)  NOT NULL,
    [COD_USUARIO] INTEGER, 
    CONSTRAINT [PK_CLIENTE] PRIMARY KEY ([COD_CLIENTE])
    CONSTRAINT [FK_USUARIO] FOREIGN KEY ([COD_USUARIO]) REFERENCES USUARIO(COD_USUARIO)
);
CREATE UNIQUE INDEX [IPK_CLIENTE] ON [CLIENTE]([COD_CLIENTE]);
-------------------------------------------------------------------------
SELECT * FROM  CLIENTE 
SELECT * FROM CLIENTE WHERE COD_CLIENTE LIKE '3';
SELECT * FROM CLIENTE WHERE NOME LIKE 'LARISSA';
SELECT * FROM CLIENTE WHERE CPF LIKE '550.900.340-59';
-------------------------------------------------------------------------
-- EXEMPLO DE INSERT DA TABELA CLIENTE
INSERT INTO CLIENTE (COD_CLIENTE,NOME, TELEFONE,ENDERECO,CPF) VALUES (1,'PIETRO','(+31)99645-9778','R.ALPHAVILLE n 95','200.644.330-90');
INSERT INTO CLIENTE (COD_CLIENTE,NOME, TELEFONE, ENDERECO,CPF)VALUES (2,'MARCOS','(+31)99452-3397', 'R. DEZ n 20','400.700.520-39');
INSERT INTO CLIENTE (COD_CLIENTE,NOME, TELEFONE, ENDERECO,CPF)VALUES (3,'LARISSA','(+31)99945-3390', 'R. CINCO n 161','550.900.340-59');  
INSERT INTO CLIENTE (COD_CLIENTE,NOME, TELEFONE, ENDERECO,CPF)VALUES (4,'JULIA', '(+31)99875-5541', 'R.DOS ANJOS n 100','600.904.300-45');
-------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA CLIENTE
DELETE FROM  CLIENTE  WHERE  COD_CLIENTE  = '3';
DELETE FROM  CLIENTE  WHERE  COD_CLIENTE  = '4';
DELETE FROM  CLIENTE  WHERE  COD_CLIENTE  = '1';
DELETE FROM  CLIENTE  WHERE  COD_CLIENTE  = '2';
-------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA CLIENTE
UPDATE CLIENTE SET ENDERECO = 'R. CINCO n 161' WHERE COD_CLIENTE = 3;
UPDATE CLIENTE SET NOME = 'LARISSA' WHERE COD_CLIENTE = 3;
UPDATE CLIENTE SET TELEFONE = '(+31)99945-3390' WHERE COD_CLIENTE = 3;
UPDATE CLIENTE SET COD_CLIENTE  = '5' WHERE COD_CLIENTE = 3;
-------------------------------------------------------------------------
-- Criando a Tabela FORNECEDOR
-------------------------------------------------------------------------
CREATE TABLE [FORNECEDOR]
(
    [COD_FORNECEDOR] INTEGER  NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [TELEFONE] NVARCHAR(160)  NOT NULL,
    [ENDERECO] NVARCHAR(160)  NOT NULL,                      
    [CNPJ] NVARCHAR(160)  NOT NULL,
    [EMAIL] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_FORNECEDOR] PRIMARY KEY ([COD_FORNECEDOR])
);
CREATE UNIQUE INDEX [IPK_FORNECEDOR] ON [FORNECEDOR]([COD_FORNECEDOR]);
-------------------------------------------------------------------------
SELECT * FROM FORNECEDOR
SELECT * FROM FORNECEDOR WHERE NOME LIKE 'DANIEL';
SELECT * FROM FORNECEDOR WHERE TELEFONE LIKE '(+31)99744-4541';
SELECT * FROM FORNECEDOR WHERE ENDERECO  LIKE 'R. RIO DE JANEIRO n 71';
-------------------------------------------------------------------------
-- EXEMPLO DE INSERT DA TABELA FORNECEDOR
INSERT INTO FORNECEDOR (COD_FORNECEDOR,NOME,TELEFONE,ENDERECO,CNPJ,EMAIL)   VALUES (3,'RAFAEL','(+31)99845-6778','R.DOS RIOS  n 35', '71333456000291','ryafael450@gmail.com');
INSERT INTO FORNECEDOR (COD_FORNECEDOR, NOME, TELEFONE, ENDERECO,CNPJ,EMAIL)VALUES (1, 'DANIEL', '(+31)99744-4541', 'R. RIO DE JANEIRO n 71','9133356023153','daniel220@gmail.com');
INSERT INTO FORNECEDOR (COD_FORNECEDOR, NOME, TELEFONE, ENDERECO,CNPJ,EMAIL)VALUES (2, 'ELIANA', '(+31)99784-4543', 'R. MONTE-AZUL n 89','39333456000697','eliana300@gmail.com');
INSERT INTO FORNECEDOR (COD_FORNECEDOR, NOME, TELEFONE, ENDERECO,CNPJ,EMAIL)VALUES (4, 'BRENO', '(+31)99794-4548', 'R. CABO FRIO n 32','74535056005678','breno550@gmail.com');
-------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA FORNECEDOR
DELETE FROM  FORNECEDOR  WHERE  COD_FORNECEDOR  = '1';
DELETE FROM  FORNECEDOR  WHERE  COD_FORNECEDOR  = '2';  
DELETE FROM  FORNECEDOR  WHERE  COD_FORNECEDOR  = '3';  
DELETE FROM  FORNECEDOR  WHERE  COD_FORNECEDOR  = '4';  
-------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA FORNECEDOR
UPDATE FORNECEDOR SET ENDERECO = 'R. RIO DE JANEIRO n 71' WHERE COD_FORNECEDOR = 1;
UPDATE FORNECEDOR SET NOME = 'DANIEL' WHERE COD_FORNECEDOR = 1;
UPDATE FORNECEDOR SET TELEFONE = '(+31)99744-4541' WHERE COD_FORNECEDOR = 1;
UPDATE FORNECEDOR SET COD_FORNECEDOR  = '5' WHERE COD_FORNECEDOR = 1;
-------------------------------------------------------------------------
-- Criando a Tabela PRODUTO
-------------------------------------------------------------------------
CREATE TABLE [PRODUTO]
(
    [COD_PRODUTO] INTEGER  NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [VLR_PRODUTO] DOUBLE  NOT NULL,
    [COD_FORNECEDOR] INTEGER NOT NULL,
    CONSTRAINT [PK_PRODUTO] PRIMARY KEY ([COD_PRODUTO]),
    CONSTRAINT [FK_FORNECEDOR] FOREIGN KEY ([COD_FORNECEDOR]) REFERENCES FORNECEDOR(COD_FORNECEDOR)
  
);                                                               
CREATE UNIQUE INDEX [IPK_PRODUTO] ON [PRODUTO]([COD_PRODUTO]);
-------------------------------------------------------------------------
SELECT * FROM PRODUTO
SELECT * FROM PRODUTO WHERE COD_PRODUTO LIKE '1';
SELECT * FROM PRODUTO WHERE NOME LIKE 'BOMBOM';
SELECT * FROM PRODUTO WHERE COD_FORNECEDOR  LIKE '1';
-------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA PRODUTO
INSERT INTO PRODUTO (COD_PRODUTO, NOME, VLR_PRODUTO,COD_FORNECEDOR) VALUES(1,'BOMBOM',7.00,1);
INSERT INTO PRODUTO (COD_PRODUTO, NOME, VLR_PRODUTO,COD_FORNECEDOR )VALUES (2, 'PIZZA DE FRANGO',70.00, 2);
INSERT INTO PRODUTO (COD_PRODUTO, NOME, VLR_PRODUTO,COD_FORNECEDOR)VALUES (3, 'COCA-COLA', 5.00, 3);
INSERT INTO PRODUTO (COD_PRODUTO, NOME, VLR_PRODUTO,COD_FORNECEDOR)VALUES (4, 'CHOCOLANTE', 6.00, 4);

-------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA PRODUTO
DELETE FROM  PRODUTO  WHERE  COD_PRODUTO  = '2';
DELETE FROM  PRODUTO  WHERE  COD_PRODUTO  = '3';
DELETE FROM  PRODUTO  WHERE  COD_PRODUTO  = '1';
DELETE FROM  PRODUTO  WHERE  COD_PRODUTO  = '4';
-------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA PRODUTO
UPDATE PRODUTO  SET COD_FORNECEDOR = '1' WHERE COD_PRODUTO = 1;
UPDATE PRODUTO  SET NOME = 'BOMBOM' WHERE COD_PRODUTO  = 1;
UPDATE PRODUTO SET  VLR_PRODUTO  = '7' WHERE COD_PRODUTO  = 3;
UPDATE PRODUTO SET  VLR_PRODUTO  = '5' WHERE COD_PRODUTO  = 1;
-------------------------------------------------------------------------
-- Criando a Tabela RELATORIO
-------------------------------------------------------------------------
CREATE TABLE [RELATORIO]
(
    [COD_RELATORIO] INTEGER NOT NULL,
    [VLR_TOTAL] DOUBLE NOT NULL,
    [DATA_INICIO] DATETIME NOT NULL,
    [DATA_FIM] DATETIME NOT NULL,
    [COD_LOJA] INTEGER, 
    CONSTRAINT [PK_RELATORIO] PRIMARY KEY ([COD_RELATORIO])
    CONSTRAINT [FK_LOJA]    FOREIGN KEY ([COD_LOJA])    REFERENCES LOJA(COD_LOJA)
);
CREATE UNIQUE INDEX [IPK_RELATORIO] ON [RELATORIO]([COD_RELATORIO]);
-------------------------------------------------------------------------
SELECT * FROM RELATORIO
SELECT * FROM RELATORIO  WHERE COD_RELATORIO  LIKE '3';
SELECT * FROM RELATORIO  WHERE DATA_INICIO LIKE '2023-06-25 04:45:00';
SELECT * FROM RELATORIO  WHERE DATA_FIM LIKE '2023-06-25 05:00:00';
-------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA RELATORIO
INSERT INTO RELATORIO (COD_RELATORIO,VLR_TOTAL,DATA_INICIO,DATA_FIM) VALUES ('1','500','2023-06-25 04:45:00','2023-06-25 05:00:00');
INSERT INTO RELATORIO (COD_RELATORIO,VLR_TOTAL,DATA_INICIO,DATA_FIM) VALUES ('2','800','2023-06-15 08:00:00','2023-06-15 08:30:00');
INSERT INTO RELATORIO (COD_RELATORIO,VLR_TOTAL,DATA_INICIO,DATA_FIM) VALUES ('3','1000','2023-04-20 04:20:00','2023-04-20 04:40:00');
INSERT INTO RELATORIO (COD_RELATORIO,VLR_TOTAL,DATA_INICIO,DATA_FIM) VALUES ('4','1.500,00','2023-02-10 03:30:00','2023-02-10 03:50:00');
-------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA RELATORIO
DELETE FROM RELATORIO  WHERE COD_RELATORIO = '2';
DELETE FROM RELATORIO  WHERE COD_RELATORIO = '4';
DELETE FROM RELATORIO  WHERE COD_RELATORIO = '1';
DELETE FROM RELATORIO  WHERE COD_RELATORIO = '3';
-------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA RELATORIO
UPDATE RELATORIO  SET VLR_TOTAL = '500' WHERE COD_PRODUTO = 1;
UPDATE RELATORIO  SET DATA_INICIO = '2023-06-25 04:45:00' WHERE COD_PRODUTO  = 1;
UPDATE RELATORIO  SET DATA_FIM  = '2023-06-25 05:00:00' WHERE COD_PRODUTO  = 1;
UPDATE RELATORIO  SET VLR_TOTAL = '800' WHERE COD_PRODUTO  = 2;
-------------------------------------------------------------------------
-- Criando a Tabela ESTOQUE
-------------------------------------------------------------------------
CREATE TABLE [ESTOQUE]
( [COD_ESTOQUE] INTEGER NOT NULL,
  [COD_PRODUTO] NVARCHAR (160) NOT NULL,
  [COD_LOJA]    NVARCHAR (160) NOT NULL,
 [QTD_PRODUTO] INTEGER  NOT NULL,
 CONSTRAINT [PK_ESTOQUE] PRIMARY KEY ([COD_ESTOQUE])
 CONSTRAINT [FK_PRODUTO] FOREIGN KEY ([COD_PRODUTO]) REFERENCES PRODUTO(COD_PRODUTO),
 CONSTRAINT [FK_LOJA]    FOREIGN KEY ([COD_LOJA])    REFERENCES LOJA(COD_LOJA)
);

CREATE UNIQUE INDEX [PK_ESTOQUE] ON [ESTOQUE]([COD_ESTOQUE]);
-------------------------------------------------------------------------------
SELECT * FROM ESTOQUE
SELECT * FROM ESTOQUE  WHERE COD_ESTOQUE  LIKE '1';
SELECT * FROM ESTOQUE  WHERE QTD_PRODUTO LIKE '800';
SELECT * FROM ESTOQUE  WHERE COD_LOJA LIKE '1';
-------------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA ESTOQUE
INSERT INTO ESTOQUE (COD_ESTOQUE,COD_PRODUTO,COD_LOJA,QTD_PRODUTO) VALUES ('1','1','1','800');
INSERT INTO ESTOQUE (COD_ESTOQUE,COD_PRODUTO,COD_LOJA,QTD_PRODUTO) VALUES ('2','2','2','1,000');
INSERT INTO ESTOQUE (COD_ESTOQUE,COD_PRODUTO,COD_LOJA,QTD_PRODUTO) VALUES ('3','3','3','200');
INSERT INTO ESTOQUE (COD_ESTOQUE,COD_PRODUTO,COD_LOJA,QTD_PRODUTO) VALUES ('4','4','4','650');
-------------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA ESTOQUE
DELETE FROM ESTOQUE  WHERE COD_ESTOQUE = '2';
DELETE FROM ESTOQUE  WHERE COD_ESTOQUE = '1';
DELETE FROM ESTOQUE  WHERE COD_ESTOQUE = '4';
DELETE FROM ESTOQUE  WHERE COD_ESTOQUE = '3';
-------------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA ESTOQUE
UPDATE ESTOQUE  SET QTD_PRODUTO = '500'   WHERE COD_ESTOQUE = 1;
UPDATE ESTOQUE  SET QTD_PRODUTO = '900'   WHERE COD_ESTOQUE  = 2;
UPDATE ESTOQUE  SET QTD_PRODUTO = '600'   WHERE COD_ESTOQUE  = 3;
UPDATE ESTOQUE  SET QTD_PRODUTO = '750'   WHERE COD_ESTOQUE  = 4;
-------------------------------------------------------------------------------
-- Criando a Tabela LOJA
-------------------------------------------------------------------------------
CREATE TABLE [LOJA]
( [COD_LOJA] INTEGER NOT NULL,
  [NOME] NVARCHAR (160)  NOT NULL,
  [ENDERECO] NVARCHAR (160) NOT NULL,
  [TELEFONE] NVARCHAR (160) NOT NULL,
  CONSTRAINT [PK_LOJA] PRIMARY KEY ([COD_LOJA])
);
CREATE UNIQUE INDEX [PK_LOJA] ON [LOJA] ([COD_LOJA]);
------------------------------------------------------------------------------
SELECT * FROM LOJA
SELECT * FROM LOJA  WHERE COD_LOJA  LIKE '1';
SELECT * FROM LOJA  WHERE NOME LIKE 'Casa Continental';
SELECT * FROM LOJA  WHERE ENDERECO  LIKE 'R.DOS PINHEIROS n 41';
------------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA LOJA
INSERT INTO LOJA (COD_LOJA,NOME,ENDERECO,TELEFONE) VALUES ('1','Casa Continental','R.DOS PINHEIROS n 41','(+31)99545-1278');
INSERT INTO LOJA (COD_LOJA,NOME,ENDERECO,TELEFONE) VALUES ('2','DiaMonte','R. TREZE n 05','(+31)99315-3530');
INSERT INTO LOJA (COD_LOJA,NOME,ENDERECO,TELEFONE) VALUES ('3','Via Tropical','R.PORTUGUAL n 26','(+31)99855-6788');
INSERT INTO LOJA (COD_LOJA,NOME,ENDERECO,TELEFONE) VALUES ('4',' Laced','R.AMERICA  n 21','(+31)99145-2775');
-------------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA LOJA
DELETE FROM LOJA  WHERE COD_LOJA = '2';
DELETE FROM LOJA  WHERE COD_LOJA = '4';
DELETE FROM LOJA  WHERE COD_LOJA = '1';
DELETE FROM LOJA  WHERE COD_LOJA = '3';
-------------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA LOJA
UPDATE LOJA  SET NOME = 'Casa Continental' WHERE COD_LOJA = 1;
UPDATE LOJA  SET ENDERECO  = 'R.DOS PINHEIROS n 41' WHERE COD_LOJA  = 1;
UPDATE LOJA  SET TELEFONE  = '(+31)99545-1278' WHERE COD_LOJA  = 1;
UPDATE LOJA  SET COD_LOJA = '5' WHERE COD_LOJA  = 1;
-------------------------------------------------------------------------------
-- Criando a Tabela USUARIO
-------------------------------------------------------------------------------
CREATE TABLE [USUARIO]
( [COD_USUARIO] INTEGER NOT NULL,
  [LOGIN] NVARCHAR (160) NOT NULL,
  [SENHA] NVACHAR  (160) NOT NULL,
  [EMAIL] NVACHAR  (160) NOT NULL,
  CONSTRAINT [PK_USUARIO] PRIMARY KEY ([COD_USUARIO])
);
CREATE UNIQUE INDEX [PK_USUARIO] ON [ESTOQUE] ([COD_USUARIO]);
-----------------------------------------------------------------------------
SELECT * FROM USUARIO
SELECT * FROM USUARIO  WHERE COD_USUARIO  LIKE '1';
SELECT * FROM USUARIO  WHERE LOGIN LIKE 'GUSTAVO6';
SELECT * FROM USUARIO  WHERE SENHA LIKE 'GUSTAVO60@';
-----------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA USUARIO
INSERT INTO USUARIO (COD_USUARIO,LOGIN,SENHA,EMAIL) VALUES ('1','GUSTAVO6','GUSTAVO60@','GustavoG20@gmail.com');
INSERT INTO USUARIO (COD_USUARIO,LOGIN,SENHA,EMAIL) VALUES ('2','CAIO23','CAIO203@','Caioofc@gmail.com');
INSERT INTO USUARIO (COD_USUARIO,LOGIN,SENHA,EMAIL) VALUES ('3','POLIANA12','POLIANA2023@','Poliana30@gmail.com');
INSERT INTO USUARIO (COD_USUARIO,LOGIN,SENHA,EMAIL) VALUES ('4','DAIANED','DAIANE1980@','Daianeoficial@gmail.com');
-----------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA USUARIO
DELETE FROM USUARIO  WHERE COD_USUARIO = '2';
DELETE FROM USUARIO  WHERE COD_USUARIO = '3';
DELETE FROM USUARIO  WHERE COD_USUARIO = '4';
DELETE FROM USUARIO  WHERE COD_USUARIO = '1';
-----------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA USUARIO
UPDATE USUARIO  SET COD_USUARIO  = '5' WHERE COD_USUARIO = 1;
UPDATE USUARIO  SET LOGIN  = 'GUSTAVO6' WHERE COD_USUARIO  = 1;
UPDATE USUARIO  SET SENHA  = 'GUSTAVO60@' WHERE COD_USUARIO  = 1;
UPDATE USUARIO  SET EMAIL = 'GustavoG20@gmail.com' WHERE COD_USUARIO  = 1;
-------------------------------------------------------------------------------
-- Criando a Tabela  ITENS_PEDIDO
-----------------------------------------------------------------------------
CREATE TABLE [ITENS_PEDIDO]
(
 [COD_ITENS_PEDIDO] INTEGER  NOT NULL,
 [COD_PEDIDO]       NVARCHAR  NOT NULL, 
 [COD_PRODUTO]      NVARCHAR  NOT NULL,
 [QTD_PRODUTO]      INTEGER  NOT NULL,
 CONSTRAINT [PK_ITENS_PEDIDO] PRIMARY KEY ([COD_ITENS_PEDIDO])
 CONSTRAINT [FK_PEDIDO]  FOREIGN KEY ([COD_PEDIDO])  REFERENCES PEDIDO (COD_PEDIDO),
 CONSTRAINT [FK_PRODUTO] FOREIGN KEY ([COD_PRODUTO]) REFERENCES PRODUTO(COD_PRODUTO)
);
CREATE UNIQUE INDEX [PK_ITENS_PEDIDO] ON [ITENS_PEDIDO] ([COD_ITENS_PEDIDO]);
 ------------------------------------------------------------------------------
SELECT * FROM ITENS_PEDIDO 
SELECT * FROM ITENS_PEDIDO  WHERE COD_ITENS_PEDIDO  LIKE '1';
SELECT * FROM ITENS_PEDIDO  WHERE COD_PEDIDO LIKE '1';
SELECT * FROM ITENS_PEDIDO  WHERE COD_PRODUTO LIKE '1';
-------------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA ITENS_PEDIDO
INSERT INTO ITENS_PEDIDO (COD_ITENS_PEDIDO,COD_PEDIDO,COD_PRODUTO,QTD_PRODUTO) VALUES ('1','1','1','800');
INSERT INTO ITENS_PEDIDO (COD_ITENS_PEDIDO,COD_PEDIDO,COD_PRODUTO,QTD_PRODUTO) VALUES ('2','2','2','1,000');
INSERT INTO ITENS_PEDIDO (COD_ITENS_PEDIDO,COD_PEDIDO,COD_PRODUTO,QTD_PRODUTO) VALUES ('3','3','3','200');
INSERT INTO ITENS_PEDIDO (COD_ITENS_PEDIDO,COD_PEDIDO,COD_PRODUTO,QTD_PRODUTO) VALUES ('4','4','4','650');
-------------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA ITENS_PEDIDO
DELETE FROM ITENS_PEDIDO WHERE  COD_ITENS_PEDIDO = '4';
DELETE FROM ITENS_PEDIDO WHERE  COD_ITENS_PEDIDO = '2';
DELETE FROM ITENS_PEDIDO WHERE  COD_ITENS_PEDIDO = '1';
DELETE FROM ITENS_PEDIDO WHERE  COD_ITENS_PEDIDO = '3';
-------------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA ITENS_PEDIDO
UPDATE ITENS_PEDIDO  SET QTD_PRODUTO  = '300' WHERE COD_ITENS_PEDIDO  = 1;
UPDATE ITENS_PEDIDO  SET QTD_PRODUTO  = '800' WHERE COD_ITENS_PEDIDO  = 2;
UPDATE ITENS_PEDIDO  SET QTD_PRODUTO  = '150' WHERE COD_ITENS_PEDIDO  = 3;
UPDATE ITENS_PEDIDO  SET QTD_PRODUTO  = '500' WHERE COD_ITENS_PEDIDO  = 4;
-------------------------------------------------------------------------------
-- Criando a Tabela PEDIDO
-------------------------------------------------------------------------------
CREATE TABLE [PEDIDO]
(
 [COD_PEDIDO] INTEGER  NOT NULL,
 [COD_CLIENTE]       NVARCHAR (160) NOT NULL, 
 [COD_VENDEDOR]      NVARCHAR (160) NOT NULL,
 [COD_LOJA]          NVARCHAR (160) NOT NULL,
 [STATUS]            NVARCHAR (160) NOT NULL,
 [TEMPO_ESPERA]      TIME      NOT NULL,
 [VLR_PEDIDO]        DOUBLE    NOT NULL,
 [DATA_PEDIDO]       DATETIME  NOT NULL,
 CONSTRAINT [PK_PEDIDO]    PRIMARY KEY   ([COD_PEDIDO])
 CONSTRAINT [FK_CLIENTE]   FOREIGN KEY  ([COD_CLIENTE])      REFERENCES CLIENTE (COD_CLIENTE),
 CONSTRAINT [FK_VENDEDOR]  FOREIGN KEY  ([COD_VENDEDOR])     REFERENCES VENDEDOR(COD_VENDEDOR),
 CONSTRAINT [FK_LOJA]      FOREIGN KEY     ([COD_LOJA])      REFERENCES    LOJA (COD_LOJA)
 
);
CREATE UNIQUE INDEX [PK_PEDIDO] ON [PEDIDO] ([COD_PEDIDO]);
--------------------------------------------------------------------------------
SELECT * FROM PEDIDO
SELECT * FROM PEDIDO  WHERE COD_PEDIDO  LIKE '1';
SELECT * FROM PEDIDO  WHERE COD_LOJA LIKE '1';
SELECT * FROM PEDIDO  WHERE COD_VENDEDOR LIKE '1';
--------------------------------------------------------------------------------
-- EXEMPLO DE  INSERT DA TABELA PEDIDO
INSERT INTO PEDIDO (COD_PEDIDO,COD_CLIENTE,COD_VENDEDOR,COD_LOJA,STATUS,TEMPO_ESPERA,VLR_PEDIDO,DATA_PEDIDO) VALUES ('1','1','1','1',' ENTREGUE','00:40:00','7','2023-02-15 ');
INSERT INTO PEDIDO (COD_PEDIDO,COD_CLIENTE,COD_VENDEDOR,COD_LOJA,STATUS,TEMPO_ESPERA,VLR_PEDIDO,DATA_PEDIDO) VALUES ('2','2','2','2','ENVIADO','00:30:00','70','2023-05-25 ');
INSERT INTO PEDIDO (COD_PEDIDO,COD_CLIENTE,COD_VENDEDOR,COD_LOJA,STATUS,TEMPO_ESPERA,VLR_PEDIDO,DATA_PEDIDO) VALUES ('3','3','3','3','PROCESSADO','00:25:00','5','2023-08-10' );
INSERT INTO PEDIDO (COD_PEDIDO,COD_CLIENTE,COD_VENDEDOR,COD_LOJA,STATUS,TEMPO_ESPERA,VLR_PEDIDO,DATA_PEDIDO) VALUES ('4','4','4','4','CANCELADO','0:35:00','6','2023-10-29 ');
-------------------------------------------------------------------------------
-- EXEMPLO DE  DELETE DA TABELA PEDIDO
DELETE FROM PEDIDO   WHERE COD_PEDIDO = '3';
DELETE FROM PEDIDO   WHERE COD_PEDIDO = '4';
DELETE FROM PEDIDO   WHERE COD_PEDIDO = '1';
DELETE FROM PEDIDO   WHERE COD_PEDIDO = '2';
-------------------------------------------------------------------------------
-- EXEMPLO UPDATE DA TABELA PEDIDO
UPDATE PEDIDO  SET COD_VENDEDOR = '5' WHERE COD_PEDIDO = 1;
UPDATE PEDIDO  SET STATUS   = 'CANCELADO'    WHERE COD_PEDIDO  = 1;
UPDATE PEDIDO  SET VLR_PEDIDO  = '8'   WHERE COD_PEDIDO  = 1;
UPDATE PEDIDO  SET TEMPO_ESPERA = '0:15:00'   WHERE COD_PEDIDO  =1;
-------------------------------------------------------------------------------
-- INNER JOIN
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- 1 -- quero informações sobre os pedidos, incluindo o  nome do clíente, o endereço do clíente e o status do pedido.
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    C.NOME AS NOME_DO_CLIENTE,
    C.ENDERECO AS ENDEREÇO_DO_CLIENTE,
    PDD.STATUS AS STATUS_DO_PEDIDO
FROM PEDIDO PDD
INNER JOIN CLIENTE C      ON PDD.COD_PEDIDO    =  C.COD_CLIENTE;
 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- 2 -- quero informações sobre a loja, incluindo o nome da loja e a quantidade de produto.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    L.NOME AS NOME_DA_LOJA,
    E.QTD_PRODUTO AS QUANTIDADE_DE_PRODUTO
FROM LOJA L
INNER JOIN ESTOQUE E ON L.COD_LOJA  = E.COD_ESTOQUE;
 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 3 -- quero informações sobre a loja, incluindo o nome da loja, o nome do vendedor e o seu telefone.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
   L.NOME AS NOME_DA_LOJA,
   V.NOME AS NOME_DO_VENDEDOR,
   V.TELEFONE AS TELEFONE_DO_VENDEDOR
FROM LOJA L
INNER JOIN VENDEDOR V ON L.COD_LOJA = V.COD_VENDEDOR;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LEFT JOIN
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--04 --  quero informações sobre o produto, incluindo o nome do produto e o seu codigo, o nome do fornecedor e o seu cnpj, com opção de ter valores nulos.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
PR.NOME AS NOME_DO_PRODUTO,
PR. COD_PRODUTO  AS CODIGO,
F.NOME AS NOME_DO_FORNECEDOR,
F.CNPJ AS CNPJ_DO_FORNECEEDOR
FROM PRODUTO PR
LEFT JOIN FORNECEDOR F ON PR.COD_PRODUTO  = F.COD_FORNECEDOR;
-------------------------------------------------
-- RIGHT JOIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--05 --  quero informações sobre o Estoque, incluindo o nome do produto,valor do produto,seu codígo, e a quantidade. com opção de ter valores nulos.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
  PR.COD_PRODUTO AS CODIGO_DO_PRODUTO,
  PR.NOME AS NOME_DO_PRODUTO,
  PR.VLR_PRODUTO AS VALOR_DO_PRODUTO,
  E.QTD_PRODUTO  AS QUANTIDADE
  FROM ESTOQUE E
  RIGHT JOIN PRODUTO PR ON E.COD_ESTOQUE = PR.COD_PRODUTO; 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------