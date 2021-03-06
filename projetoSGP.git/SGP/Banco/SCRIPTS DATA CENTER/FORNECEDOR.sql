﻿CREATE TABLE FORNECEDOR (
    ID           INTEGER,
    DT_INC       DATE,
    DT_ALT       DATE,
    STATUS       CHARACTER(1),
    NOME         CHARACTER VARYING(250),
    RAZAOSOCIAL  CHARACTER VARYING(250),
    CONTATO      CHARACTER VARYING(250),
    TELEFONE     CHARACTER VARYING(13),
    ENDERECO     CHARACTER VARYING(250),
    BAIRRO       CHARACTER VARYING(20),
    IDCIDADE     INTEGER,
    CEP          CHARACTER(8),
    EMAIL        CHARACTER VARYING(50),
    CELULAR      CHARACTER VARYING(13),
    CNPJ         CHARACTER VARYING(18),
    IE           CHARACTER VARYING(18),

    CONSTRAINT PK_FORNECEDOR PRIMARY KEY (ID),
    CONSTRAINT FK_FORNECEDOR_CIDADE FOREIGN KEY (IDCIDADE) REFERENCES CIDADE_IBGE (ID)
);