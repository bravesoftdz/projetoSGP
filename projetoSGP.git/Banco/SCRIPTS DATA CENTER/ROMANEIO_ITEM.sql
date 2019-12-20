﻿CREATE TABLE ROMANEIO_ITEM (
    IDROMANEIO   INTEGER,
    IDPEDIDO     INTEGER,
    IDFILIAL     INTEGER,
    DT_INC       DATE,
    CONSTRAINT PK_ROMANEIO_ITEM PRIMARY KEY (IDROMANEIO, IDPEDIDO, IDFILIAL),
    CONSTRAINT FK_ROMANEIO_ITEM_FILIAL FOREIGN KEY (IDFILIAL) REFERENCES FILIAL (ID),
    CONSTRAINT FK_ROMANEIO_ITEM_ROMANEIO FOREIGN KEY (IDROMANEIO, IDFILIAL) REFERENCES ROMANEIO (ID, IDFILIAL),
    CONSTRAINT FK_ROMANEIO_ITEM_PEDIDO FOREIGN KEY (IDPEDIDO, IDFILIAL) REFERENCES PEDIDO (ID, IDFILIAL)
);