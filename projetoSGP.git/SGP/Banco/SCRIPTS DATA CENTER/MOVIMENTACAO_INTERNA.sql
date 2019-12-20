﻿CREATE TABLE MOVIMENTACAO_INTERNA (
    ID                INTEGER NOT NULL,
    DT_INC            DATE,
    PREFIXO           CHARACTER(2),
    TIPO              CHARACTER(2),
    IDFILIAL          INTEGER NOT NULL,
    PESO              NUMERIC(17,4),
    IDFILIAL_DESTINO  INTEGER NOT NULL,

    CONSTRAINT PK_MOVINTERNA PRIMARY KEY (ID, IDFILIAL),
    CONSTRAINT FK_MOVINTERNA_FILIAL FOREIGN KEY (IDFILIAL) REFERENCES FILIAL (ID)
);