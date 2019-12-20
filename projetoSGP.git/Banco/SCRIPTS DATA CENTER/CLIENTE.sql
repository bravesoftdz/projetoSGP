﻿CREATE TABLE CLIENTE (
    ID                 INTEGER,
	IDFILIAL		   INTEGER,
    DT_INC             DATE,
    DT_ALT             DATE,
    STATUS             CHARACTER(1),
    NOME               CHARACTER VARYING(250),
    DT_NASC            DATE,
    TELEFONE           CHARACTER VARYING(13),
    ENDERECO           CHARACTER VARYING(250),
	NUMERO			   INTEGER,
    BAIRRO             CHARACTER VARYING(20),
    IDCIDADE           INTEGER,
    CEP                CHARACTER VARYING(8),
    RG                 CHARACTER(15),
    CPF                CHARACTER(15),
    SEXO               CHARACTER(1),
    PROFISSAO          CHARACTER VARYING(100),
    EMAIL              CHARACTER VARYING(50),
    CELULAR            CHARACTER VARYING(13),
    TIPO               CHARACTER(1),
    RAZAOSOCIAL        CHARACTER VARYING(250),
    CONTATO            CHARACTER VARYING(250),
    CNPJ               CHARACTER VARYING(18),
    IE                 CHARACTER VARYING(18),
    IDVENDEDOR         INTEGER,
    EMAIL_NFE          CHARACTER VARYING(50),
    KM_TOTAL           INTEGER,
    DT_ULTIMO_CONTATO  DATE,
    LIMITE_CREDITO     NUMERIC(17,4),
    IDFORMA_PAGAMENTO  INTEGER,
    IDROTA             INTEGER,
	REFERENCIA		   CHARACTER VARYING(300),
    CONSTRAINT PK_CLIENTE PRIMARY KEY (ID),
    CONSTRAINT FK_CLIENTE_CIDADE FOREIGN KEY (IDCIDADE) REFERENCES CIDADE_IBGE (ID),
    CONSTRAINT FK_CLIENTE_VENDEDOR FOREIGN KEY (IDVENDEDOR) REFERENCES VENDEDOR (ID),
    CONSTRAINT FK_CLIENTE_FORMA_PAG FOREIGN KEY (IDFORMA_PAGAMENTO) REFERENCES FORMA_PAGAMENTO (ID),
    CONSTRAINT FK_CLIENTE_ROTA FOREIGN KEY (IDROTA) REFERENCES ROTA (ID)
);