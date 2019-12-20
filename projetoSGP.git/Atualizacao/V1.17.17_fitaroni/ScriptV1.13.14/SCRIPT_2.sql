UPDATE USUARIO_PERMICOES_SGP SET 
    ACESSO_SGP = 'S',
    ADM_MANIFESTO = 'S',
    ADM_NFE = 'S',
    ADM_NFE_EXCL = 'S',
    ADM_NFE_EDIT='S',
    ADM_NFE_EMITIR='S',
    ADM_PEDIDO_FATURAMENTO = 'S',
    ADM_PEDIDO_ORCAMENTO = 'S',
    ADM_ESTOQUE_IMP_ETIQUETA = 'S',
    ADM_ESTOQUE_INVENTARIO = 'S',
    ADM_VENDAS_ENTREGA = 'S',
    ADM_VENDAS_RELATORIO = 'S',
    ADM_COMPRAS_EXCL = 'S',
    ADM_COMPRAS_REL = 'S',
    CAD_TAB_PRECO = 'S',
    CAD_GRUPO_INSERT = 'S',
    CAD_GRUPO_EDIT = 'S',
    CAD_GRUPO_EXCL = 'S',
    CAD_USUARIO_EDIT = 'S',
    CAD_USUARIO_INSERT = 'S',
    CAD_USUARIO_EDIT_PERMIC = 'S',
    CAD_USUARIO_VER_PERMIC = 'S',
    CAD_PRODUTOS_EXCL = 'S',
    CAD_PROD_EDIT_DESC_MAX = 'S',
    CAD_PROD_EDIT_PRECOS = 'S',
    CAD_PROD_MARGEM_LUCRO = 'S',
    CAD_CLIENTES = 'S',
    CAD_CLIENTE_EDIT = 'S',
    CAD_CLIENTE_EDIT_CREDITO = 'S',
    CAD_CLIENTE_EDIT_LIMITE = 'S',
    CAD_CLIENTE_EDIT_STATUS = 'S',
    CAD_CLIENTE_INSERT = 'S',
    CAD_CLIENTE_EXCL = 'S',
    CAD_FORNRCEDOR = 'S',
    CAD_FORNEC_EDIT = 'S',
    CAD_FORNRC_EXCL = 'S',
    CAD_FORNEC_INSERT = 'S',
    EXPORTAR_PROD_BALANCA = 'S',
    CAD_VENDEDOR = 'S',
    CAD_VENDEDOR_EDT = 'S',
    CAD_VENDEDOR_INSERT = 'S',
    CAD_VENDEDOR_EXCL = 'S',
    PLANO_CONTAS = 'S',
    CAD_FUNCIONARIO = 'S',
    CAD_ENTREGA = 'S',
    CAD_ENTREGA_EDIT = 'S',
    CAD_ENTREGA_INSERT = 'S',
    CONFIGURACOES = 'S',
    ADMIN_1 ='N';

UPDATE USUARIO_PERMICOES_SGP SET 
    ACESSO_SGP = 'S',
    ADM_MANIFESTO = 'S',
    ADM_NFE = 'S',
    ADM_NFE_EXCL = 'S',
    ADM_NFE_EDIT='S',
    ADM_NFE_EMITIR='S',
    ADM_PEDIDO_FATURAMENTO = 'S',
    ADM_PEDIDO_ORCAMENTO = 'S',
    ADM_ESTOQUE_IMP_ETIQUETA = 'S',
    ADM_ESTOQUE_INVENTARIO = 'S',
    ADM_VENDAS_ENTREGA = 'S',
    ADM_VENDAS_RELATORIO = 'S',
    ADM_COMPRAS_EXCL = 'S',
    ADM_COMPRAS_REL = 'S',
    CAD_TAB_PRECO = 'S',
    CAD_GRUPO_INSERT = 'S',
    CAD_GRUPO_EDIT = 'S',
    CAD_GRUPO_EXCL = 'S',
    CAD_USUARIO_EDIT = 'S',
    CAD_USUARIO_INSERT = 'S',
    CAD_USUARIO_EDIT_PERMIC = 'S',
    CAD_USUARIO_VER_PERMIC = 'S',
    CAD_PRODUTOS_EXCL = 'S',
    CAD_PROD_EDIT_DESC_MAX = 'S',
    CAD_PROD_EDIT_PRECOS = 'S',
    CAD_PROD_MARGEM_LUCRO = 'S',
    CAD_CLIENTES = 'S',
    CAD_CLIENTE_EDIT = 'S',
    CAD_CLIENTE_EDIT_CREDITO = 'S',
    CAD_CLIENTE_EDIT_LIMITE = 'S',
    CAD_CLIENTE_EDIT_STATUS = 'S',
    CAD_CLIENTE_INSERT = 'S',
    CAD_CLIENTE_EXCL = 'S',
    CAD_FORNRCEDOR = 'S',
    CAD_FORNEC_EDIT = 'S',
    CAD_FORNRC_EXCL = 'S',
    CAD_FORNEC_INSERT = 'S',
    EXPORTAR_PROD_BALANCA = 'S',
    CAD_VENDEDOR = 'S',
    CAD_VENDEDOR_EDT = 'S',
    CAD_VENDEDOR_INSERT = 'S',
    CAD_VENDEDOR_EXCL = 'S',
    PLANO_CONTAS = 'S',
    CAD_FUNCIONARIO = 'S',
    CAD_ENTREGA = 'S',
    CAD_ENTREGA_EDIT = 'S',
    CAD_ENTREGA_INSERT = 'S',
    CONFIGURACOES = 'S',
    ADMIN_1 = 'S'
WHERE IDUSUARIO =1;

UPDATE USUARIO_PERMICOES_PDV SET 
    ABRIR_GAVETA = 'S',
    LIMITE_CREDITO = 'S',
    DESC_ACRE_RECEBER = 'S',
    NAO_USAR_JUROS_RECEBER = 'S';

COMMIT WORK;

UPDATE CAIXA SET SERIE_NFCE=(SELECT SERIE_NFCE FROM CONFIG_NFE),ULTIMA_NFCE=GEN_ID(gen_codigo_nfce_venda,0),GENERATION='GEN1';
COMMIT WORK;

INSERT INTO GENERATION (GEN,NUM_SERIE,ULTIMA_NFCE) VALUES ('GEN1',(SELECT SERIE_NFCE FROM CONFIG_NFE),GEN_ID(gen_codigo_nfce_venda,0));
INSERT INTO GENERATION (GEN,NUM_SERIE,ULTIMA_NFCE) VALUES ('GEN2',0,0);
INSERT INTO GENERATION (GEN,NUM_SERIE,ULTIMA_NFCE) VALUES ('GEN3',0,0);
INSERT INTO GENERATION (GEN,NUM_SERIE,ULTIMA_NFCE) VALUES ('GEN4',0,0);

COMMIT WORK;
