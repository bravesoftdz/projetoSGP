﻿CREATE TABLE PEDIDO_ITEM (
    IDPEDIDO        INTEGER,
    IDFILIAL        INTEGER,
    ITEM            INTEGER,
    IDPROD_ITEM     INTEGER,
    DT_INC          DATE,
    DT_ALT          DATE,
    QTN             NUMERIC(15,3),
    VLR_UNITARIO    NUMERIC(17,4),
    VLR_DESCONTO    NUMERIC(17,4),
    VLR_TOTAL       NUMERIC(17,4),
    PESO            NUMERIC(17,4),
    QTN_RETORNO     NUMERIC(15,3),
    MOTIVO_RETORNO  CHARACTER VARYING(200),
    ENTREGUE        CHARACTER(1),
    CONSTRAINT PK_PEDITO_ITEM PRIMARY KEY (IDPEDIDO, IDFILIAL, ITEM),
    CONSTRAINT FK_PEDIDO_ITEM_FILIAL FOREIGN KEY (IDFILIAL) REFERENCES FILIAL (ID),
    CONSTRAINT FK_PEDIDO_ITEM_PROD_ITEM FOREIGN KEY (IDPROD_ITEM) REFERENCES PRODUTO_ITEM (ID),
    CONSTRAINT FK_PEDIDO_ITEM_PEDIDO FOREIGN KEY (IDPEDIDO, IDFILIAL) REFERENCES PEDIDO (ID, IDFILIAL)
);