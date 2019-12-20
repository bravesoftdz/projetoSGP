﻿CREATE TABLE PRODUTO_ITEM_ESTOQUE
(
	IDITEM INTEGER NOT NULL, 
	IDFILIAL INTEGER NOT NULL,
	SALDO NUMERIC(15,3) NOT NULL,
	SALDO_MINIMO NUMERIC(15,3) NOT NULL,
 CONSTRAINT PK_PROD_ITEM_EST PRIMARY KEY (IDITEM, IDFILIAL),
 CONSTRAINT FK_PROD_ITEM_EST_ITEM FOREIGN KEY (IDITEM) REFERENCES PRODUTO_ITEM (ID),
 CONSTRAINT FK_PROD_ITEM_EST_FILIAL FOREIGN KEY (IDFILIAL) REFERENCES FILIAL (ID)
	

)