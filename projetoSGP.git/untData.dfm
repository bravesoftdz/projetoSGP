object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 319
  Width = 391
  object Conexao: TpFIBDatabase
    Connected = True
    DBName = 'D:\Delphi\Sistemas\SGP\Banco\SGP.FDB'
    DBParams.Strings = (
      'lc_ctype=WIN1252'
      'password=masterkey'
      'user_name=SYSDBA'
      'sql_role_name=')
    DefaultTransaction = transPricipal
    DefaultUpdateTransaction = transPricipal
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 72
    Top = 24
  end
  object transPricipal: TpFIBTransaction
    Active = True
    DefaultDatabase = Conexao
    Left = 144
    Top = 24
  end
  object qryGeral: TpFIBQuery
    Transaction = transPricipal
    Database = Conexao
    Left = 72
    Top = 72
  end
  object fdsConfig: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONFIG'
      'SET '
      '    IDFILIAL = :IDFILIAL,'
      '    NOME = :NOME,'
      '    RAZAO = :RAZAO,'
      '    CNPJ = :CNPJ,'
      '    IE = :IE,'
      '    ENDERECO = :ENDERECO,'
      '    ENDERECO_FANTASIA = :ENDERECO_FANTASIA,'
      '    NUMERO = :NUMERO,'
      '    BAIRRO = :BAIRRO,'
      '    BAIRRO_FANTASIA = :BAIRRO_FANTASIA,'
      '    IDCIDADE = :IDCIDADE,'
      '    CEP = :CEP,'
      '    TELEFONE = :TELEFONE,'
      '    TELEFONE2 = :TELEFONE2,'
      '    EMAIL = :EMAIL,'
      '    SITE = :SITE,'
      '    LOGO_IMG_CAMINHO = :LOGO_IMG_CAMINHO,'
      '    IDCLIENTEPADRAO = :IDCLIENTEPADRAO,'
      '    IDVENDEDORPADRAO = :IDVENDEDORPADRAO,'
      '    FABRICA = :FABRICA,'
      '    IDFORM_PAG_PAD = :IDFORM_PAG_PAD,'
      '    IDPORTADOR_PADRAO = :IDPORTADOR_PADRAO,'
      '    UTILIZAR_TABELA_PRECO = :UTILIZAR_TABELA_PRECO,'
      '    CLIENTE_EXIBIR_PJ = :CLIENTE_EXIBIR_PJ,'
      '    HORA_BKP = :HORA_BKP,'
      '    BAIXA_AUTO_CARTAO = :BAIXA_AUTO_CARTAO,'
      '    PARAM = :PARAM,'
      '    CHAVE = :CHAVE,'
      '    HOJE = :HOJE,'
      '    CARENCIA_JUROS = :CARENCIA_JUROS,'
      '    VALOR_MULTA_ATRASO = :VALOR_MULTA_ATRASO,'
      '    JUROS_DIA_PORCENTAGEM = :JUROS_DIA_PORCENTAGEM,'
      '    PDV_DESC_MAX_VENDA = :PDV_DESC_MAX_VENDA,'
      '    DIAS_ATRASO_BLOQUEIO = :DIAS_ATRASO_BLOQUEIO,'
      '    CONTROLAR_FALTAS = :CONTROLAR_FALTAS,'
      '    IDTRANPS_PADRAO = :IDTRANPS_PADRAO,'
      '    IDVEICULO_PADRAO = :IDVEICULO_PADRAO,'
      '    ESTOQUE_GERENCIAL = :ESTOQUE_GERENCIAL,'
      '    CFOP_PADRAO = :CFOP_PADRAO,'
      '    CEST_PADRAO = :CEST_PADRAO,'
      '    CSOSN_PADRAO = :CSOSN_PADRAO,'
      '    MARGEN_LUCRO_PADRAO = :MARGEN_LUCRO_PADRAO,'
      '    CARTAO_CREDITO_AVISTA = :CARTAO_CREDITO_AVISTA,'
      '    TARIFA_BOLETO = :TARIFA_BOLETO,'
      '    PDV_UTILIZAR_GAVETA = :PDV_UTILIZAR_GAVETA,'
      '    FILIAL_PREC_VENDA_IGUAL = :FILIAL_PREC_VENDA_IGUAL,'
      '    FISCAL = :FISCAL,'
      '    MODELO_IMPRESSORA = :MODELO_IMPRESSORA,'
      '    AUTO_PECAS = :AUTO_PECAS,'
      '    BAIXA_DOCS_AUTO = :BAIXA_DOCS_AUTO,'
      '    MODO_TAB_PRECO = :MODO_TAB_PRECO,'
      '    TIPO_IMPRESSAO_PEDIDO = :TIPO_IMPRESSAO_PEDIDO,'
      '    PEDIDO_SIMPLES = :PEDIDO_SIMPLES,'
      '    BLOQUEAR_CLIENT_ATRASO = :BLOQUEAR_CLIENT_ATRASO,'
      '    TP_CERTIFICADO_NFE = :TP_CERTIFICADO_NFE,'
      '    MODELO_ETIQ_PROD = :MODELO_ETIQ_PROD,'
      '    MODELO_BALANCA_GERAL = :MODELO_BALANCA_GERAL,'
      '    TAMANHO_CAMPOS_BAL = :TAMANHO_CAMPOS_BAL,'
      '    TIPO_COD_PROD_ETIQUETABAL = :TIPO_COD_PROD_ETIQUETABAL,'
      '    DADOS_COD_ETIQUETA_BAL = :DADOS_COD_ETIQUETA_BAL,'
      '    UTILIZAR_BAL_ETIQUETA = :UTILIZAR_BAL_ETIQUETA,'
      '    PREFIXO_EAN = :PREFIXO_EAN,'
      '    CNPJ_OU_CPF = :CNPJ_OU_CPF,'
      '    PRODUTOR_RURAL = :PRODUTOR_RURAL,'
      '    CUPOM_CREDIARIO_SIMPLIFIC = :CUPOM_CREDIARIO_SIMPLIFIC,'
      '    DIAS_PRIMEIRA_PARCELA = :DIAS_PRIMEIRA_PARCELA,'
      '    QTN_SOLICITAR = :QTN_SOLICITAR,'
      '    TAB_PADRAO_PDV = :TAB_PADRAO_PDV,'
      '    TAB_PADRAO_PRE_VENDA = :TAB_PADRAO_PRE_VENDA,'
      '    BLOQUEAR_F9 = :BLOQUEAR_F9,'
      '    ESTOQUE_CONSUMO = :ESTOQUE_CONSUMO,'
      '    MODELO_IMP_ETIQ = :MODELO_IMP_ETIQ,'
      '    DPI_IMP_ETIQ = :DPI_IMP_ETIQ,'
      '    PORTA_IMP_ETIQ = :PORTA_IMP_ETIQ,'
      '    TIPO_CONECT_IMP_ETQ = :TIPO_CONECT_IMP_ETQ,'
      '    SALVAR_PROD_PESQ = :SALVAR_PROD_PESQ,'
      '    PADRAO_LAYOUT = :PADRAO_LAYOUT,'
      '    BAIXA_AUTO_CARTAO_CD = :BAIXA_AUTO_CARTAO_CD,'
      '    DIAS_BAIXA_CT = :DIAS_BAIXA_CT,'
      '    DIAS_BAIXA_CD = :DIAS_BAIXA_CD,'
      '    DIAS_BAIXA_DOC = :DIAS_BAIXA_DOC,'
      '    N_VENDA_ESTOQUE_ZERO = :N_VENDA_ESTOQUE_ZERO,'
      '    N_VISUALIZAR_ESTOQ_ZERO = :N_VISUALIZAR_ESTOQ_ZERO'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONFIG'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONFIG('
      '    ID,'
      '    IDFILIAL,'
      '    NOME,'
      '    RAZAO,'
      '    CNPJ,'
      '    IE,'
      '    ENDERECO,'
      '    ENDERECO_FANTASIA,'
      '    NUMERO,'
      '    BAIRRO,'
      '    BAIRRO_FANTASIA,'
      '    IDCIDADE,'
      '    CEP,'
      '    TELEFONE,'
      '    TELEFONE2,'
      '    EMAIL,'
      '    SITE,'
      '    LOGO_IMG_CAMINHO,'
      '    IDCLIENTEPADRAO,'
      '    IDVENDEDORPADRAO,'
      '    FABRICA,'
      '    IDFORM_PAG_PAD,'
      '    IDPORTADOR_PADRAO,'
      '    UTILIZAR_TABELA_PRECO,'
      '    CLIENTE_EXIBIR_PJ,'
      '    HORA_BKP,'
      '    BAIXA_AUTO_CARTAO,'
      '    PARAM,'
      '    CHAVE,'
      '    HOJE,'
      '    CARENCIA_JUROS,'
      '    VALOR_MULTA_ATRASO,'
      '    JUROS_DIA_PORCENTAGEM,'
      '    PDV_DESC_MAX_VENDA,'
      '    DIAS_ATRASO_BLOQUEIO,'
      '    CONTROLAR_FALTAS,'
      '    IDTRANPS_PADRAO,'
      '    IDVEICULO_PADRAO,'
      '    ESTOQUE_GERENCIAL,'
      '    CFOP_PADRAO,'
      '    CEST_PADRAO,'
      '    CSOSN_PADRAO,'
      '    MARGEN_LUCRO_PADRAO,'
      '    CARTAO_CREDITO_AVISTA,'
      '    TARIFA_BOLETO,'
      '    PDV_UTILIZAR_GAVETA,'
      '    FILIAL_PREC_VENDA_IGUAL,'
      '    FISCAL,'
      '    MODELO_IMPRESSORA,'
      '    AUTO_PECAS,'
      '    BAIXA_DOCS_AUTO,'
      '    MODO_TAB_PRECO,'
      '    TIPO_IMPRESSAO_PEDIDO,'
      '    PEDIDO_SIMPLES,'
      '    BLOQUEAR_CLIENT_ATRASO,'
      '    TP_CERTIFICADO_NFE,'
      '    MODELO_ETIQ_PROD,'
      '    MODELO_BALANCA_GERAL,'
      '    TAMANHO_CAMPOS_BAL,'
      '    TIPO_COD_PROD_ETIQUETABAL,'
      '    DADOS_COD_ETIQUETA_BAL,'
      '    UTILIZAR_BAL_ETIQUETA,'
      '    PREFIXO_EAN,'
      '    CNPJ_OU_CPF,'
      '    PRODUTOR_RURAL,'
      '    CUPOM_CREDIARIO_SIMPLIFIC,'
      '    DIAS_PRIMEIRA_PARCELA,'
      '    QTN_SOLICITAR,'
      '    TAB_PADRAO_PDV,'
      '    TAB_PADRAO_PRE_VENDA,'
      '    BLOQUEAR_F9,'
      '    ESTOQUE_CONSUMO,'
      '    MODELO_IMP_ETIQ,'
      '    DPI_IMP_ETIQ,'
      '    PORTA_IMP_ETIQ,'
      '    TIPO_CONECT_IMP_ETQ,'
      '    SALVAR_PROD_PESQ,'
      '    PADRAO_LAYOUT,'
      '    BAIXA_AUTO_CARTAO_CD,'
      '    DIAS_BAIXA_CT,'
      '    DIAS_BAIXA_CD,'
      '    DIAS_BAIXA_DOC,'
      '    N_VENDA_ESTOQUE_ZERO,'
      '    N_VISUALIZAR_ESTOQ_ZERO'
      ')'
      'VALUES('
      '    :ID,'
      '    :IDFILIAL,'
      '    :NOME,'
      '    :RAZAO,'
      '    :CNPJ,'
      '    :IE,'
      '    :ENDERECO,'
      '    :ENDERECO_FANTASIA,'
      '    :NUMERO,'
      '    :BAIRRO,'
      '    :BAIRRO_FANTASIA,'
      '    :IDCIDADE,'
      '    :CEP,'
      '    :TELEFONE,'
      '    :TELEFONE2,'
      '    :EMAIL,'
      '    :SITE,'
      '    :LOGO_IMG_CAMINHO,'
      '    :IDCLIENTEPADRAO,'
      '    :IDVENDEDORPADRAO,'
      '    :FABRICA,'
      '    :IDFORM_PAG_PAD,'
      '    :IDPORTADOR_PADRAO,'
      '    :UTILIZAR_TABELA_PRECO,'
      '    :CLIENTE_EXIBIR_PJ,'
      '    :HORA_BKP,'
      '    :BAIXA_AUTO_CARTAO,'
      '    :PARAM,'
      '    :CHAVE,'
      '    :HOJE,'
      '    :CARENCIA_JUROS,'
      '    :VALOR_MULTA_ATRASO,'
      '    :JUROS_DIA_PORCENTAGEM,'
      '    :PDV_DESC_MAX_VENDA,'
      '    :DIAS_ATRASO_BLOQUEIO,'
      '    :CONTROLAR_FALTAS,'
      '    :IDTRANPS_PADRAO,'
      '    :IDVEICULO_PADRAO,'
      '    :ESTOQUE_GERENCIAL,'
      '    :CFOP_PADRAO,'
      '    :CEST_PADRAO,'
      '    :CSOSN_PADRAO,'
      '    :MARGEN_LUCRO_PADRAO,'
      '    :CARTAO_CREDITO_AVISTA,'
      '    :TARIFA_BOLETO,'
      '    :PDV_UTILIZAR_GAVETA,'
      '    :FILIAL_PREC_VENDA_IGUAL,'
      '    :FISCAL,'
      '    :MODELO_IMPRESSORA,'
      '    :AUTO_PECAS,'
      '    :BAIXA_DOCS_AUTO,'
      '    :MODO_TAB_PRECO,'
      '    :TIPO_IMPRESSAO_PEDIDO,'
      '    :PEDIDO_SIMPLES,'
      '    :BLOQUEAR_CLIENT_ATRASO,'
      '    :TP_CERTIFICADO_NFE,'
      '    :MODELO_ETIQ_PROD,'
      '    :MODELO_BALANCA_GERAL,'
      '    :TAMANHO_CAMPOS_BAL,'
      '    :TIPO_COD_PROD_ETIQUETABAL,'
      '    :DADOS_COD_ETIQUETA_BAL,'
      '    :UTILIZAR_BAL_ETIQUETA,'
      '    :PREFIXO_EAN,'
      '    :CNPJ_OU_CPF,'
      '    :PRODUTOR_RURAL,'
      '    :CUPOM_CREDIARIO_SIMPLIFIC,'
      '    :DIAS_PRIMEIRA_PARCELA,'
      '    :QTN_SOLICITAR,'
      '    :TAB_PADRAO_PDV,'
      '    :TAB_PADRAO_PRE_VENDA,'
      '    :BLOQUEAR_F9,'
      '    :ESTOQUE_CONSUMO,'
      '    :MODELO_IMP_ETIQ,'
      '    :DPI_IMP_ETIQ,'
      '    :PORTA_IMP_ETIQ,'
      '    :TIPO_CONECT_IMP_ETQ,'
      '    :SALVAR_PROD_PESQ,'
      '    :PADRAO_LAYOUT,'
      '    :BAIXA_AUTO_CARTAO_CD,'
      '    :DIAS_BAIXA_CT,'
      '    :DIAS_BAIXA_CD,'
      '    :DIAS_BAIXA_DOC,'
      '    :N_VENDA_ESTOQUE_ZERO,'
      '    :N_VISUALIZAR_ESTOQ_ZERO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    C.*,'
      '    F.NOME FILIAL,'
      '    CI.NOME CIDADE,'
      '    CI.UF UF,'
      '    CI.CODIGO AS CODIGO_MUNICIPIO'
      'FROM'
      '    CONFIG C, FILIAL F, CIDADE_IBGE CI'
      'WHERE( '
      '    F.ID = C.IDFILIAL'
      'AND'
      '    CI.ID = C.IDCIDADE'
      '     ) and (     C.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    C.*,'
      '    F.NOME FILIAL,'
      '    CI.NOME CIDADE,'
      '    CI.UF UF,'
      '    CI.CODIGO AS CODIGO_MUNICIPIO'
      'FROM'
      '    CONFIG C, FILIAL F, CIDADE_IBGE CI'
      'WHERE'
      '    F.ID = C.IDFILIAL'
      'AND'
      '    CI.ID = C.IDCIDADE')
    AfterEdit = fdsConfigAfterInsert
    AfterInsert = fdsConfigAfterInsert
    Transaction = transPricipal
    Database = Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 144
    Top = 80
    oFetchAll = True
    object fdsConfigID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsConfigIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsConfigNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigRAZAO: TFIBStringField
      FieldName = 'RAZAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCNPJ: TFIBStringField
      FieldName = 'CNPJ'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigIE: TFIBStringField
      FieldName = 'IE'
      Size = 15
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigENDERECO: TFIBStringField
      FieldName = 'ENDERECO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigENDERECO_FANTASIA: TFIBStringField
      FieldName = 'ENDERECO_FANTASIA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNUMERO: TFIBSmallIntField
      FieldName = 'NUMERO'
    end
    object fdsConfigBAIRRO: TFIBStringField
      FieldName = 'BAIRRO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigBAIRRO_FANTASIA: TFIBStringField
      FieldName = 'BAIRRO_FANTASIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigIDCIDADE: TFIBBCDField
      FieldName = 'IDCIDADE'
      Size = 0
    end
    object fdsConfigCEP: TFIBStringField
      FieldName = 'CEP'
      Size = 16
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTELEFONE: TFIBStringField
      FieldName = 'TELEFONE'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTELEFONE2: TFIBStringField
      FieldName = 'TELEFONE2'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigEMAIL: TFIBStringField
      FieldName = 'EMAIL'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigSITE: TFIBStringField
      FieldName = 'SITE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigLOGO_IMG_CAMINHO: TFIBStringField
      FieldName = 'LOGO_IMG_CAMINHO'
      Size = 200
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigIDCLIENTEPADRAO: TFIBBCDField
      FieldName = 'IDCLIENTEPADRAO'
      Size = 0
    end
    object fdsConfigIDVENDEDORPADRAO: TFIBBCDField
      FieldName = 'IDVENDEDORPADRAO'
      Size = 0
    end
    object fdsConfigFABRICA: TFIBStringField
      FieldName = 'FABRICA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigIDFORM_PAG_PAD: TFIBBCDField
      FieldName = 'IDFORM_PAG_PAD'
      Size = 0
    end
    object fdsConfigIDPORTADOR_PADRAO: TFIBBCDField
      FieldName = 'IDPORTADOR_PADRAO'
      Size = 0
    end
    object fdsConfigUTILIZAR_TABELA_PRECO: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'UTILIZAR_TABELA_PRECO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCLIENTE_EXIBIR_PJ: TFIBStringField
      FieldName = 'CLIENTE_EXIBIR_PJ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigHORA_BKP: TFIBTimeField
      FieldName = 'HORA_BKP'
      DisplayFormat = 'hh:mm:ss'
    end
    object fdsConfigBAIXA_AUTO_CARTAO: TFIBStringField
      DefaultExpression = #39'S'#39
      FieldName = 'BAIXA_AUTO_CARTAO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigPARAM: TFIBStringField
      FieldName = 'PARAM'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCHAVE: TFIBStringField
      FieldName = 'CHAVE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigHOJE: TFIBStringField
      FieldName = 'HOJE'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCARENCIA_JUROS: TFIBIntegerField
      FieldName = 'CARENCIA_JUROS'
    end
    object fdsConfigVALOR_MULTA_ATRASO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR_MULTA_ATRASO'
      DisplayFormat = '#,##0.##%'
      EditFormat = '0.##'
      Size = 8
    end
    object fdsConfigJUROS_DIA_PORCENTAGEM: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'JUROS_DIA_PORCENTAGEM'
      DisplayFormat = '#,##0.##%'
      EditFormat = '0.##'
      Size = 8
    end
    object fdsConfigPDV_DESC_MAX_VENDA: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PDV_DESC_MAX_VENDA'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsConfigDIAS_ATRASO_BLOQUEIO: TFIBIntegerField
      FieldName = 'DIAS_ATRASO_BLOQUEIO'
    end
    object fdsConfigCONTROLAR_FALTAS: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'CONTROLAR_FALTAS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigIDTRANPS_PADRAO: TFIBBCDField
      FieldName = 'IDTRANPS_PADRAO'
      Size = 0
    end
    object fdsConfigIDVEICULO_PADRAO: TFIBBCDField
      FieldName = 'IDVEICULO_PADRAO'
      Size = 0
    end
    object fdsConfigESTOQUE_GERENCIAL: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ESTOQUE_GERENCIAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCFOP_PADRAO: TFIBStringField
      FieldName = 'CFOP_PADRAO'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCEST_PADRAO: TFIBStringField
      FieldName = 'CEST_PADRAO'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCSOSN_PADRAO: TFIBStringField
      FieldName = 'CSOSN_PADRAO'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMARGEN_LUCRO_PADRAO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'MARGEN_LUCRO_PADRAO'
      DisplayFormat = '#,##0.##%'
      EditFormat = '0.##'
      Size = 8
    end
    object fdsConfigCARTAO_CREDITO_AVISTA: TFIBStringField
      FieldName = 'CARTAO_CREDITO_AVISTA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTARIFA_BOLETO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'TARIFA_BOLETO'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.00'
      Size = 8
    end
    object fdsConfigPDV_UTILIZAR_GAVETA: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'PDV_UTILIZAR_GAVETA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigFILIAL_PREC_VENDA_IGUAL: TFIBStringField
      DefaultExpression = #39'S'#39
      FieldName = 'FILIAL_PREC_VENDA_IGUAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigFISCAL: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'FISCAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMODELO_IMPRESSORA: TFIBStringField
      FieldName = 'MODELO_IMPRESSORA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigAUTO_PECAS: TFIBStringField
      FieldName = 'AUTO_PECAS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigBAIXA_DOCS_AUTO: TFIBStringField
      FieldName = 'BAIXA_DOCS_AUTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMODO_TAB_PRECO: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'MODO_TAB_PRECO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTIPO_IMPRESSAO_PEDIDO: TFIBIntegerField
      FieldName = 'TIPO_IMPRESSAO_PEDIDO'
    end
    object fdsConfigPEDIDO_SIMPLES: TFIBStringField
      FieldName = 'PEDIDO_SIMPLES'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigBLOQUEAR_CLIENT_ATRASO: TFIBStringField
      FieldName = 'BLOQUEAR_CLIENT_ATRASO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTP_CERTIFICADO_NFE: TFIBStringField
      FieldName = 'TP_CERTIFICADO_NFE'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMODELO_ETIQ_PROD: TFIBStringField
      FieldName = 'MODELO_ETIQ_PROD'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMODELO_BALANCA_GERAL: TFIBStringField
      FieldName = 'MODELO_BALANCA_GERAL'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTAMANHO_CAMPOS_BAL: TFIBStringField
      DefaultExpression = #39'C6P5'#39
      FieldName = 'TAMANHO_CAMPOS_BAL'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTIPO_COD_PROD_ETIQUETABAL: TFIBStringField
      DefaultExpression = #39'CI'#39
      FieldName = 'TIPO_COD_PROD_ETIQUETABAL'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigDADOS_COD_ETIQUETA_BAL: TFIBStringField
      DefaultExpression = #39'CP'#39
      FieldName = 'DADOS_COD_ETIQUETA_BAL'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigUTILIZAR_BAL_ETIQUETA: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'UTILIZAR_BAL_ETIQUETA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigPREFIXO_EAN: TFIBIntegerField
      DefaultExpression = '2'
      FieldName = 'PREFIXO_EAN'
    end
    object fdsConfigCNPJ_OU_CPF: TFIBStringField
      DefaultExpression = #39'CNPJ'#39
      FieldName = 'CNPJ_OU_CPF'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigPRODUTOR_RURAL: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCUPOM_CREDIARIO_SIMPLIFIC: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'CUPOM_CREDIARIO_SIMPLIFIC'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigFILIAL: TFIBStringField
      FieldName = 'FILIAL'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCIDADE: TFIBStringField
      FieldName = 'CIDADE'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigUF: TFIBStringField
      FieldName = 'UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigCODIGO_MUNICIPIO: TFIBBCDField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 0
    end
    object fdsConfigDIAS_PRIMEIRA_PARCELA: TFIBIntegerField
      FieldName = 'DIAS_PRIMEIRA_PARCELA'
    end
    object fdsConfigQTN_SOLICITAR: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'QTN_SOLICITAR'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTAB_PADRAO_PDV: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'TAB_PADRAO_PDV'
    end
    object fdsConfigTAB_PADRAO_PRE_VENDA: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'TAB_PADRAO_PRE_VENDA'
    end
    object fdsConfigBLOQUEAR_F9: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'BLOQUEAR_F9'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigESTOQUE_CONSUMO: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ESTOQUE_CONSUMO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMODELO_IMP_ETIQ: TFIBStringField
      FieldName = 'MODELO_IMP_ETIQ'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigDPI_IMP_ETIQ: TFIBStringField
      FieldName = 'DPI_IMP_ETIQ'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigPORTA_IMP_ETIQ: TFIBStringField
      FieldName = 'PORTA_IMP_ETIQ'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigTIPO_CONECT_IMP_ETQ: TFIBStringField
      FieldName = 'TIPO_CONECT_IMP_ETQ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigSALVAR_PROD_PESQ: TFIBStringField
      FieldName = 'SALVAR_PROD_PESQ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigPADRAO_LAYOUT: TFIBStringField
      FieldName = 'PADRAO_LAYOUT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigBAIXA_AUTO_CARTAO_CD: TFIBStringField
      FieldName = 'BAIXA_AUTO_CARTAO_CD'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigDIAS_BAIXA_CT: TFIBIntegerField
      FieldName = 'DIAS_BAIXA_CT'
    end
    object fdsConfigDIAS_BAIXA_CD: TFIBIntegerField
      FieldName = 'DIAS_BAIXA_CD'
    end
    object fdsConfigDIAS_BAIXA_DOC: TFIBIntegerField
      FieldName = 'DIAS_BAIXA_DOC'
    end
    object fdsConfigN_VENDA_ESTOQUE_ZERO: TFIBStringField
      FieldName = 'N_VENDA_ESTOQUE_ZERO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigN_VISUALIZAR_ESTOQ_ZERO: TFIBStringField
      FieldName = 'N_VISUALIZAR_ESTOQ_ZERO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = fdsConfig
    Left = 224
    Top = 128
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o   '
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42054.665538298600000000
    ReportOptions.LastChange = 43808.753137881950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin   '
      
        '                                                                ' +
        '        '
      'end;'
      ''
      'procedure gpMovimentoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure gpMovimentoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      'end;          '
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 72
    Top = 128
    Datasets = <
      item
        DataSet = frxConfig
        DataSetName = 'frxConfig'
      end
      item
        DataSet = frmEstoque.frxItensPeriodoMov
        DataSetName = 'frxItensPeriodoMov'
      end
      item
        DataSet = frmEstoque.frxTotItensPeriodoMov
        DataSetName = 'frxTotItensPeriodoMov'
      end>
    Variables = <
      item
        Name = ' Minhas'
        Value = Null
      end
      item
        Name = 'dtInicio'
        Value = Null
      end
      item
        Name = 'dtFim'
        Value = Null
      end
      item
        Name = 'totVendas'
        Value = Null
      end
      item
        Name = 'vlrTotal'
        Value = Null
      end
      item
        Name = 'Filial'
        Value = Null
      end
      item
        Name = 'subTotal'
        Value = Null
      end
      item
        Name = 'vlrTotDev'
        Value = Null
      end
      item
        Name = 'Tipo'
        Value = Null
      end
      item
        Name = 'obs'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 187.004794340000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape1: TfrxShapeView
          Align = baCenter
          Left = 0.000244095000000027
          Top = 0.755893310000000000
          Width = 755.905511810000000000
          Height = 183.522002610000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object frxMovIntTP: TfrxMemoView
          Left = 2.105263160000000000
          Top = 96.118120000000000000
          Width = 757.571722100000000000
          Height = 37.795300000000000000
          DataSetName = 'frxMovInt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Movimenta'#231#245'es de Itens no Per'#237'odo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 130.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Filial:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 464.882190000000000000
          Top = 133.913420000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'D'#234':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 589.606680000000000000
          Top = 133.913420000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
        end
        object dtInicio: TfrxMemoView
          Left = 495.118430000000000000
          Top = 133.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dtInicio]')
          ParentFont = False
        end
        object dtFim: TfrxMemoView
          Left = 623.622450000000000000
          Top = 133.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dtFim]')
          ParentFont = False
        end
        object Filial: TfrxMemoView
          Left = 113.535055260000000000
          Top = 131.186521580000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filial]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 43.464685315000000000
          Top = 8.779530000000000000
          Width = 668.976629370000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Top = 39.015770000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."ENDERECO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Top = 57.913420000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."BAIRRO"], [frxConfig."CIDADE"] - [frxConfig."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          Top = 76.811070000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."TELEFONE"]')
          ParentFont = False
        end
        object frxConfigNOME: TfrxMemoView
          Align = baWidth
          Top = 19.118120000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxConfig
          DataSetName = 'frxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."NOME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.578947370000000000
          Top = 151.628665790000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo Total :')
          ParentFont = False
        end
        object frxTotItensPeriodoMovVALOR_TOTAL: TfrxMemoView
          Left = 113.684210520000000000
          Top = 152.681297370000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = frmEstoque.frxTotItensPeriodoMov
          DataSetName = 'frxTotItensPeriodoMov'
          Memo.UTF8W = (
            '[frxTotItensPeriodoMov."VALOR_TOTAL"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 495.118430000000000000
        Width = 755.906000000000000000
        object Memo13: TfrxMemoView
          Left = 623.622450000000000000
          Top = 8.391221580000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 3.779530000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 244.244280000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 232.316798950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio fornecido por CBSistemas  Emiss'#227'o:')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 324.189240000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 59.519285260000000000
        Top = 268.346630000000000000
        Width = 755.906000000000000000
        Condition = 'frxItensPeriodoMov."MOVIMENTACAO"'
        object Shape2: TfrxShapeView
          Align = baCenter
          Left = 0.000061025000000020
          Top = 25.801321050000000000
          Width = 755.905877950000000000
          Height = 29.183608420000000000
          Curve = 1
          Fill.BackColor = cl3DLight
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          Left = 5.766490080000000000
          Top = 30.633482630000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 439.420930580000000000
          Top = 30.131171580000000000
          Width = 115.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cod.Fabrica/EAN')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 64.210465290000000000
          Top = 30.117110520000000000
          Width = 371.073528410000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 637.894675810000000000
          Top = 30.581355790000000000
          Width = 112.432705270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo Total')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 556.842044240000000000
          Top = 29.528724210000000000
          Width = 80.853757900000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object frxItensPeriodoMovMOVIMENTACAO: TfrxMemoView
          Left = 2.105263160000000000
          Top = 3.182598950000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'MOVIMENTACAO'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItensPeriodoMov."MOVIMENTACAO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 27.940337890000000000
        Top = 351.496290000000000000
        Width = 755.906000000000000000
        DataSet = frmEstoque.frxItensPeriodoMov
        DataSetName = 'frxItensPeriodoMov'
        RowCount = 0
        Stretched = True
        object frxItensPeriodoMovIDPROD_ITEM: TfrxMemoView
          Left = 2.105263160000000000
          Top = 4.243465260000000000
          Width = 66.738551050000000000
          Height = 18.897650000000000000
          DataField = 'IDPROD_ITEM'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItensPeriodoMov."IDPROD_ITEM"]')
          ParentFont = False
        end
        object frxItensPeriodoMovNOME: TfrxMemoView
          Left = 69.473684210000000000
          Top = 4.243465260000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NOME'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItensPeriodoMov."NOME"]')
          ParentFont = False
        end
        object frxItensPeriodoMovCOD_FABRICA: TfrxMemoView
          Left = 470.526315790000000000
          Top = 4.243465260000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'COD_FABRICA'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItensPeriodoMov."COD_FABRICA"]')
          ParentFont = False
        end
        object frxItensPeriodoMovQUANTIDADE: TfrxMemoView
          Left = 577.894736840000000000
          Top = 4.243465260000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItensPeriodoMov."QUANTIDADE"]')
          ParentFont = False
        end
        object frxItensPeriodoMovCUSTO_TOTAL: TfrxMemoView
          Left = 657.894736840000000000
          Top = 4.243465260000000000
          Width = 97.264866840000000000
          Height = 18.897650000000000000
          DataField = 'CUSTO_TOTAL'
          DataSet = frmEstoque.frxItensPeriodoMov
          DataSetName = 'frxItensPeriodoMov'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensPeriodoMov."CUSTO_TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 35.308758950000000000
        Top = 400.630180000000000000
        Width = 755.906000000000000000
        object Memo6: TfrxMemoView
          Left = 566.526315790000000000
          Top = 6.425364740000000000
          Width = 48.172460530000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 618.947368420000000000
          Top = 6.688522630000000000
          Width = 132.382986840000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensPeriodoMov."CUSTO_TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fdsUsuarioPermic: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USUARIO_PERMICOES_SGP'
      'SET '
      '    DT_INC = :DT_INC,'
      '    DT_ALT = :DT_ALT,'
      '    ACESSO_SGP = :ACESSO_SGP,'
      '    CADASTRO = :CADASTRO,'
      '    ADMINISTRACAO = :ADMINISTRACAO,'
      '    FINANCEIRO = :FINANCEIRO,'
      '    ADM_MANIFESTO = :ADM_MANIFESTO,'
      '    ADM_NFE = :ADM_NFE,'
      '    ADM_NFE_EXCL = :ADM_NFE_EXCL,'
      '    ADM_NFE_EDIT = :ADM_NFE_EDIT,'
      '    ADM_NFE_EMITIR = :ADM_NFE_EMITIR,'
      '    ADM_PEDIDO = :ADM_PEDIDO,'
      '    ADM_PEDIDO_FATURAMENTO = :ADM_PEDIDO_FATURAMENTO,'
      '    ADM_PEDIDO_ORCAMENTO = :ADM_PEDIDO_ORCAMENTO,'
      '    ADM_PREVENDA = :ADM_PREVENDA,'
      '    ADM_ROMANEIO = :ADM_ROMANEIO,'
      '    ADM_ESTOQUE = :ADM_ESTOQUE,'
      '    ADM_ESTOQUE_IMP_ETIQUETA = :ADM_ESTOQUE_IMP_ETIQUETA,'
      '    ADM_ESTOQUE_INVENTARIO = :ADM_ESTOQUE_INVENTARIO,'
      '    ADM_BALANCO = :ADM_BALANCO,'
      '    ADM_MOVINTERNA = :ADM_MOVINTERNA,'
      '    ADM_VENDAS = :ADM_VENDAS,'
      '    ADM_VENDAS_ENTREGA = :ADM_VENDAS_ENTREGA,'
      '    ADM_VENDAS_RELATORIO = :ADM_VENDAS_RELATORIO,'
      '    ADM_MOVCAIXA = :ADM_MOVCAIXA,'
      '    ADM_COMPRAS = :ADM_COMPRAS,'
      '    ADM_COMPRAS_EXCL = :ADM_COMPRAS_EXCL,'
      '    ADM_COMPRAS_REL = :ADM_COMPRAS_REL,'
      '    ADM_OS = :ADM_OS,'
      '    ADM_COMISSAO = :ADM_COMISSAO,'
      '    CAD_TAB_PRECO = :CAD_TAB_PRECO,'
      '    CAD_PRODUTOS = :CAD_PRODUTOS,'
      '    CAD_GRUPO = :CAD_GRUPO,'
      '    CAD_GRUPO_INSERT = :CAD_GRUPO_INSERT,'
      '    CAD_GRUPO_EDIT = :CAD_GRUPO_EDIT,'
      '    CAD_GRUPO_EXCL = :CAD_GRUPO_EXCL,'
      '    CAD_USUARIO = :CAD_USUARIO,'
      '    CAD_USUARIO_EDIT = :CAD_USUARIO_EDIT,'
      '    CAD_USUARIO_INSERT = :CAD_USUARIO_INSERT,'
      '    CAD_USUARIO_EDIT_PERMIC = :CAD_USUARIO_EDIT_PERMIC,'
      '    CAD_USUARIO_VER_PERMIC = :CAD_USUARIO_VER_PERMIC,'
      '    CAD_PRODUTOS_EXCL = :CAD_PRODUTOS_EXCL,'
      '    CAD_PRODUTOS_EDIT = :CAD_PRODUTOS_EDIT,'
      '    CAD_PROD_EDIT_DESC_MAX = :CAD_PROD_EDIT_DESC_MAX,'
      '    CAD_PROD_EDIT_PRECOS = :CAD_PROD_EDIT_PRECOS,'
      '    CAD_PRODUTOS_INSERT = :CAD_PRODUTOS_INSERT,'
      '    CAD_PROD_MARGEM_LUCRO = :CAD_PROD_MARGEM_LUCRO,'
      '    CAD_CLIENTES = :CAD_CLIENTES,'
      '    CAD_CLIENTE_EDIT = :CAD_CLIENTE_EDIT,'
      '    CAD_CLIENTE_EDIT_CREDITO = :CAD_CLIENTE_EDIT_CREDITO,'
      '    CAD_CLIENTE_EDIT_LIMITE = :CAD_CLIENTE_EDIT_LIMITE,'
      '    CAD_CLIENTE_EDIT_STATUS = :CAD_CLIENTE_EDIT_STATUS,'
      '    CAD_CLIENTE_INSERT = :CAD_CLIENTE_INSERT,'
      '    CAD_CLIENTE_EXCL = :CAD_CLIENTE_EXCL,'
      '    CAD_FORNRCEDOR = :CAD_FORNRCEDOR,'
      '    CAD_FORNEC_EDIT = :CAD_FORNEC_EDIT,'
      '    CAD_FORNRC_EXCL = :CAD_FORNRC_EXCL,'
      '    CAD_FORNEC_INSERT = :CAD_FORNEC_INSERT,'
      '    EXPORTAR_PROD_BALANCA = :EXPORTAR_PROD_BALANCA,'
      '    CAD_VENDEDOR = :CAD_VENDEDOR,'
      '    CAD_VENDEDOR_EDT = :CAD_VENDEDOR_EDT,'
      '    CAD_VENDEDOR_INSERT = :CAD_VENDEDOR_INSERT,'
      '    CAD_VENDEDOR_EXCL = :CAD_VENDEDOR_EXCL,'
      '    PLANO_CONTAS = :PLANO_CONTAS,'
      '    CAD_FUNCIONARIO = :CAD_FUNCIONARIO,'
      '    CAD_ENTREGA = :CAD_ENTREGA,'
      '    CAD_ENTREGA_EDIT = :CAD_ENTREGA_EDIT,'
      '    CAD_ENTREGA_INSERT = :CAD_ENTREGA_INSERT,'
      '    FIN_RECEBER = :FIN_RECEBER,'
      '    FIN_PAGAR = :FIN_PAGAR,'
      '    FIN_FLUXOCAIXA = :FIN_FLUXOCAIXA,'
      '    EXIBIR_VENDAS_DIA = :EXIBIR_VENDAS_DIA,'
      '    EXIBIR_PEDIDOS_DIA = :EXIBIR_PEDIDOS_DIA,'
      '    CONFIGURACOES = :CONFIGURACOES,'
      '    ADMIN_1 = :ADMIN_1,'
      '    VISU_CERT_SENHA = :VISU_CERT_SENHA,'
      '    LIBERAR_CLIENTE_BLOQ = :LIBERAR_CLIENTE_BLOQ,'
      '    ESTOQUE_ZERADO_VENDER = :ESTOQUE_ZERADO_VENDER'
      'WHERE'
      '    IDUSUARIO = :OLD_IDUSUARIO'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USUARIO_PERMICOES_SGP'
      'WHERE'
      '        IDUSUARIO = :OLD_IDUSUARIO'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USUARIO_PERMICOES_SGP('
      '    IDUSUARIO,'
      '    IDFILIAL,'
      '    DT_INC,'
      '    DT_ALT,'
      '    ACESSO_SGP,'
      '    CADASTRO,'
      '    ADMINISTRACAO,'
      '    FINANCEIRO,'
      '    ADM_MANIFESTO,'
      '    ADM_NFE,'
      '    ADM_NFE_EXCL,'
      '    ADM_NFE_EDIT,'
      '    ADM_NFE_EMITIR,'
      '    ADM_PEDIDO,'
      '    ADM_PEDIDO_FATURAMENTO,'
      '    ADM_PEDIDO_ORCAMENTO,'
      '    ADM_PREVENDA,'
      '    ADM_ROMANEIO,'
      '    ADM_ESTOQUE,'
      '    ADM_ESTOQUE_IMP_ETIQUETA,'
      '    ADM_ESTOQUE_INVENTARIO,'
      '    ADM_BALANCO,'
      '    ADM_MOVINTERNA,'
      '    ADM_VENDAS,'
      '    ADM_VENDAS_ENTREGA,'
      '    ADM_VENDAS_RELATORIO,'
      '    ADM_MOVCAIXA,'
      '    ADM_COMPRAS,'
      '    ADM_COMPRAS_EXCL,'
      '    ADM_COMPRAS_REL,'
      '    ADM_OS,'
      '    ADM_COMISSAO,'
      '    CAD_TAB_PRECO,'
      '    CAD_PRODUTOS,'
      '    CAD_GRUPO,'
      '    CAD_GRUPO_INSERT,'
      '    CAD_GRUPO_EDIT,'
      '    CAD_GRUPO_EXCL,'
      '    CAD_USUARIO,'
      '    CAD_USUARIO_EDIT,'
      '    CAD_USUARIO_INSERT,'
      '    CAD_USUARIO_EDIT_PERMIC,'
      '    CAD_USUARIO_VER_PERMIC,'
      '    CAD_PRODUTOS_EXCL,'
      '    CAD_PRODUTOS_EDIT,'
      '    CAD_PROD_EDIT_DESC_MAX,'
      '    CAD_PROD_EDIT_PRECOS,'
      '    CAD_PRODUTOS_INSERT,'
      '    CAD_PROD_MARGEM_LUCRO,'
      '    CAD_CLIENTES,'
      '    CAD_CLIENTE_EDIT,'
      '    CAD_CLIENTE_EDIT_CREDITO,'
      '    CAD_CLIENTE_EDIT_LIMITE,'
      '    CAD_CLIENTE_EDIT_STATUS,'
      '    CAD_CLIENTE_INSERT,'
      '    CAD_CLIENTE_EXCL,'
      '    CAD_FORNRCEDOR,'
      '    CAD_FORNEC_EDIT,'
      '    CAD_FORNRC_EXCL,'
      '    CAD_FORNEC_INSERT,'
      '    EXPORTAR_PROD_BALANCA,'
      '    CAD_VENDEDOR,'
      '    CAD_VENDEDOR_EDT,'
      '    CAD_VENDEDOR_INSERT,'
      '    CAD_VENDEDOR_EXCL,'
      '    PLANO_CONTAS,'
      '    CAD_FUNCIONARIO,'
      '    CAD_ENTREGA,'
      '    CAD_ENTREGA_EDIT,'
      '    CAD_ENTREGA_INSERT,'
      '    FIN_RECEBER,'
      '    FIN_PAGAR,'
      '    FIN_FLUXOCAIXA,'
      '    EXIBIR_VENDAS_DIA,'
      '    EXIBIR_PEDIDOS_DIA,'
      '    CONFIGURACOES,'
      '    ADMIN_1,'
      '    VISU_CERT_SENHA,'
      '    LIBERAR_CLIENTE_BLOQ,'
      '    ESTOQUE_ZERADO_VENDER'
      ')'
      'VALUES('
      '    :IDUSUARIO,'
      '    :IDFILIAL,'
      '    :DT_INC,'
      '    :DT_ALT,'
      '    :ACESSO_SGP,'
      '    :CADASTRO,'
      '    :ADMINISTRACAO,'
      '    :FINANCEIRO,'
      '    :ADM_MANIFESTO,'
      '    :ADM_NFE,'
      '    :ADM_NFE_EXCL,'
      '    :ADM_NFE_EDIT,'
      '    :ADM_NFE_EMITIR,'
      '    :ADM_PEDIDO,'
      '    :ADM_PEDIDO_FATURAMENTO,'
      '    :ADM_PEDIDO_ORCAMENTO,'
      '    :ADM_PREVENDA,'
      '    :ADM_ROMANEIO,'
      '    :ADM_ESTOQUE,'
      '    :ADM_ESTOQUE_IMP_ETIQUETA,'
      '    :ADM_ESTOQUE_INVENTARIO,'
      '    :ADM_BALANCO,'
      '    :ADM_MOVINTERNA,'
      '    :ADM_VENDAS,'
      '    :ADM_VENDAS_ENTREGA,'
      '    :ADM_VENDAS_RELATORIO,'
      '    :ADM_MOVCAIXA,'
      '    :ADM_COMPRAS,'
      '    :ADM_COMPRAS_EXCL,'
      '    :ADM_COMPRAS_REL,'
      '    :ADM_OS,'
      '    :ADM_COMISSAO,'
      '    :CAD_TAB_PRECO,'
      '    :CAD_PRODUTOS,'
      '    :CAD_GRUPO,'
      '    :CAD_GRUPO_INSERT,'
      '    :CAD_GRUPO_EDIT,'
      '    :CAD_GRUPO_EXCL,'
      '    :CAD_USUARIO,'
      '    :CAD_USUARIO_EDIT,'
      '    :CAD_USUARIO_INSERT,'
      '    :CAD_USUARIO_EDIT_PERMIC,'
      '    :CAD_USUARIO_VER_PERMIC,'
      '    :CAD_PRODUTOS_EXCL,'
      '    :CAD_PRODUTOS_EDIT,'
      '    :CAD_PROD_EDIT_DESC_MAX,'
      '    :CAD_PROD_EDIT_PRECOS,'
      '    :CAD_PRODUTOS_INSERT,'
      '    :CAD_PROD_MARGEM_LUCRO,'
      '    :CAD_CLIENTES,'
      '    :CAD_CLIENTE_EDIT,'
      '    :CAD_CLIENTE_EDIT_CREDITO,'
      '    :CAD_CLIENTE_EDIT_LIMITE,'
      '    :CAD_CLIENTE_EDIT_STATUS,'
      '    :CAD_CLIENTE_INSERT,'
      '    :CAD_CLIENTE_EXCL,'
      '    :CAD_FORNRCEDOR,'
      '    :CAD_FORNEC_EDIT,'
      '    :CAD_FORNRC_EXCL,'
      '    :CAD_FORNEC_INSERT,'
      '    :EXPORTAR_PROD_BALANCA,'
      '    :CAD_VENDEDOR,'
      '    :CAD_VENDEDOR_EDT,'
      '    :CAD_VENDEDOR_INSERT,'
      '    :CAD_VENDEDOR_EXCL,'
      '    :PLANO_CONTAS,'
      '    :CAD_FUNCIONARIO,'
      '    :CAD_ENTREGA,'
      '    :CAD_ENTREGA_EDIT,'
      '    :CAD_ENTREGA_INSERT,'
      '    :FIN_RECEBER,'
      '    :FIN_PAGAR,'
      '    :FIN_FLUXOCAIXA,'
      '    :EXIBIR_VENDAS_DIA,'
      '    :EXIBIR_PEDIDOS_DIA,'
      '    :CONFIGURACOES,'
      '    :ADMIN_1,'
      '    :VISU_CERT_SENHA,'
      '    :LIBERAR_CLIENTE_BLOQ,'
      '    :ESTOQUE_ZERADO_VENDER'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    USUARIO_PERMICOES_SGP'
      'WHERE( '
      '    IDUSUARIO = :IDUSUARIO'
      'AND'
      '    IDFILIAL = :IDFILIAL'
      
        '     ) and (     USUARIO_PERMICOES_SGP.IDUSUARIO = :OLD_IDUSUARI' +
        'O'
      '    and USUARIO_PERMICOES_SGP.IDFILIAL = :OLD_IDFILIAL'
      '     )'
      '      ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    USUARIO_PERMICOES_SGP'
      'WHERE'
      '    IDUSUARIO = :IDUSUARIO'
      'AND'
      '    IDFILIAL = :IDFILIAL  ')
    Transaction = transPricipal
    Database = Conexao
    Left = 232
    Top = 16
    object fdsUsuarioPermicIDUSUARIO: TFIBBCDField
      FieldName = 'IDUSUARIO'
      Size = 0
    end
    object fdsUsuarioPermicIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsUsuarioPermicDT_INC: TFIBDateField
      FieldName = 'DT_INC'
    end
    object fdsUsuarioPermicDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
    end
    object fdsUsuarioPermicADMINISTRACAO: TFIBStringField
      FieldName = 'ADMINISTRACAO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicFINANCEIRO: TFIBStringField
      FieldName = 'FINANCEIRO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCADASTRO: TFIBStringField
      FieldName = 'CADASTRO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_PEDIDO: TFIBStringField
      FieldName = 'ADM_PEDIDO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_PREVENDA: TFIBStringField
      FieldName = 'ADM_PREVENDA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_ROMANEIO: TFIBStringField
      FieldName = 'ADM_ROMANEIO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_ESTOQUE: TFIBStringField
      FieldName = 'ADM_ESTOQUE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_MOVINTERNA: TFIBStringField
      FieldName = 'ADM_MOVINTERNA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_VENDAS: TFIBStringField
      FieldName = 'ADM_VENDAS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_MOVCAIXA: TFIBStringField
      FieldName = 'ADM_MOVCAIXA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_COMPRAS: TFIBStringField
      FieldName = 'ADM_COMPRAS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_OS: TFIBStringField
      FieldName = 'ADM_OS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_COMISSAO: TFIBStringField
      FieldName = 'ADM_COMISSAO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PRODUTOS: TFIBStringField
      FieldName = 'CAD_PRODUTOS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_GRUPO: TFIBStringField
      FieldName = 'CAD_GRUPO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_USUARIO: TFIBStringField
      FieldName = 'CAD_USUARIO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PRODUTOS_EDIT: TFIBStringField
      FieldName = 'CAD_PRODUTOS_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PRODUTOS_INSERT: TFIBStringField
      FieldName = 'CAD_PRODUTOS_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicFIN_RECEBER: TFIBStringField
      FieldName = 'FIN_RECEBER'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicFIN_PAGAR: TFIBStringField
      FieldName = 'FIN_PAGAR'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicFIN_FLUXOCAIXA: TFIBStringField
      FieldName = 'FIN_FLUXOCAIXA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_BALANCO: TFIBStringField
      FieldName = 'ADM_BALANCO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicEXIBIR_VENDAS_DIA: TFIBStringField
      FieldName = 'EXIBIR_VENDAS_DIA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicEXIBIR_PEDIDOS_DIA: TFIBStringField
      FieldName = 'EXIBIR_PEDIDOS_DIA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicACESSO_SGP: TFIBStringField
      FieldName = 'ACESSO_SGP'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_MANIFESTO: TFIBStringField
      FieldName = 'ADM_MANIFESTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_NFE: TFIBStringField
      FieldName = 'ADM_NFE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_NFE_EXCL: TFIBStringField
      FieldName = 'ADM_NFE_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_PEDIDO_FATURAMENTO: TFIBStringField
      FieldName = 'ADM_PEDIDO_FATURAMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_PEDIDO_ORCAMENTO: TFIBStringField
      FieldName = 'ADM_PEDIDO_ORCAMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_ESTOQUE_IMP_ETIQUETA: TFIBStringField
      FieldName = 'ADM_ESTOQUE_IMP_ETIQUETA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_ESTOQUE_INVENTARIO: TFIBStringField
      FieldName = 'ADM_ESTOQUE_INVENTARIO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_VENDAS_ENTREGA: TFIBStringField
      FieldName = 'ADM_VENDAS_ENTREGA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_VENDAS_RELATORIO: TFIBStringField
      FieldName = 'ADM_VENDAS_RELATORIO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_COMPRAS_EXCL: TFIBStringField
      FieldName = 'ADM_COMPRAS_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_COMPRAS_REL: TFIBStringField
      FieldName = 'ADM_COMPRAS_REL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_TAB_PRECO: TFIBStringField
      FieldName = 'CAD_TAB_PRECO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_GRUPO_INSERT: TFIBStringField
      FieldName = 'CAD_GRUPO_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_GRUPO_EDIT: TFIBStringField
      FieldName = 'CAD_GRUPO_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_GRUPO_EXCL: TFIBStringField
      FieldName = 'CAD_GRUPO_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_USUARIO_EDIT: TFIBStringField
      FieldName = 'CAD_USUARIO_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_USUARIO_INSERT: TFIBStringField
      FieldName = 'CAD_USUARIO_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_USUARIO_EDIT_PERMIC: TFIBStringField
      FieldName = 'CAD_USUARIO_EDIT_PERMIC'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_USUARIO_VER_PERMIC: TFIBStringField
      FieldName = 'CAD_USUARIO_VER_PERMIC'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PRODUTOS_EXCL: TFIBStringField
      FieldName = 'CAD_PRODUTOS_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PROD_EDIT_DESC_MAX: TFIBStringField
      FieldName = 'CAD_PROD_EDIT_DESC_MAX'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PROD_EDIT_PRECOS: TFIBStringField
      FieldName = 'CAD_PROD_EDIT_PRECOS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_PROD_MARGEM_LUCRO: TFIBStringField
      FieldName = 'CAD_PROD_MARGEM_LUCRO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTES: TFIBStringField
      FieldName = 'CAD_CLIENTES'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_EDIT: TFIBStringField
      FieldName = 'CAD_CLIENTE_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_EDIT_CREDITO: TFIBStringField
      FieldName = 'CAD_CLIENTE_EDIT_CREDITO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_EDIT_LIMITE: TFIBStringField
      FieldName = 'CAD_CLIENTE_EDIT_LIMITE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_EDIT_STATUS: TFIBStringField
      FieldName = 'CAD_CLIENTE_EDIT_STATUS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_INSERT: TFIBStringField
      FieldName = 'CAD_CLIENTE_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_CLIENTE_EXCL: TFIBStringField
      FieldName = 'CAD_CLIENTE_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_FORNRCEDOR: TFIBStringField
      FieldName = 'CAD_FORNRCEDOR'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_FORNEC_EDIT: TFIBStringField
      FieldName = 'CAD_FORNEC_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_FORNRC_EXCL: TFIBStringField
      FieldName = 'CAD_FORNRC_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_FORNEC_INSERT: TFIBStringField
      FieldName = 'CAD_FORNEC_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicEXPORTAR_PROD_BALANCA: TFIBStringField
      FieldName = 'EXPORTAR_PROD_BALANCA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_VENDEDOR: TFIBStringField
      FieldName = 'CAD_VENDEDOR'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_VENDEDOR_EDT: TFIBStringField
      FieldName = 'CAD_VENDEDOR_EDT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_VENDEDOR_INSERT: TFIBStringField
      FieldName = 'CAD_VENDEDOR_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_VENDEDOR_EXCL: TFIBStringField
      FieldName = 'CAD_VENDEDOR_EXCL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPLANO_CONTAS: TFIBStringField
      FieldName = 'PLANO_CONTAS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_FUNCIONARIO: TFIBStringField
      FieldName = 'CAD_FUNCIONARIO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCONFIGURACOES: TFIBStringField
      FieldName = 'CONFIGURACOES'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_ENTREGA: TFIBStringField
      FieldName = 'CAD_ENTREGA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_ENTREGA_EDIT: TFIBStringField
      FieldName = 'CAD_ENTREGA_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicCAD_ENTREGA_INSERT: TFIBStringField
      FieldName = 'CAD_ENTREGA_INSERT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_NFE_EDIT: TFIBStringField
      FieldName = 'ADM_NFE_EDIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADM_NFE_EMITIR: TFIBStringField
      FieldName = 'ADM_NFE_EMITIR'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicADMIN_1: TFIBStringField
      FieldName = 'ADMIN_1'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicLIBERAR_CLIENTE_BLOQ: TFIBStringField
      FieldName = 'LIBERAR_CLIENTE_BLOQ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicESTOQUE_ZERADO_VENDER: TFIBStringField
      FieldName = 'ESTOQUE_ZERADO_VENDER'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsUsuarioPermicPDV: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USUARIO_PERMICOES_PDV'
      'SET '
      '    DT_INC = :DT_INC,'
      '    DT_ALT = :DT_ALT,'
      '    RECEBIMENTO = :RECEBIMENTO,'
      '    DESC_MAX_ITEM = :DESC_MAX_ITEM,'
      '    DESC_MAX_TOT_VENDA = :DESC_MAX_TOT_VENDA,'
      '    VER_MOVIMENTO = :VER_MOVIMENTO,'
      '    SANGRIA = :SANGRIA,'
      '    SUPRIMENTO = :SUPRIMENTO,'
      '    FECHAMENTO = :FECHAMENTO,'
      '    ALTERAR_PREC_UNIT = :ALTERAR_PREC_UNIT,'
      '    DEVOLUCAO = :DEVOLUCAO,'
      '    ESTOQUE_ZERADO_VENDER = :ESTOQUE_ZERADO_VENDER,'
      '    LIBERAR_CLIENTE_BLOQ = :LIBERAR_CLIENTE_BLOQ,'
      '    ABRIR_GAVETA = :ABRIR_GAVETA,'
      '    LIMITE_CREDITO = :LIMITE_CREDITO,'
      '    DESC_ACRE_RECEBER = :DESC_ACRE_RECEBER,'
      '    NAO_USAR_JUROS_RECEBER = :NAO_USAR_JUROS_RECEBER'
      'WHERE'
      '    IDUSUARIO = :OLD_IDUSUARIO'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USUARIO_PERMICOES_PDV'
      'WHERE'
      '        IDUSUARIO = :OLD_IDUSUARIO'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USUARIO_PERMICOES_PDV('
      '    IDUSUARIO,'
      '    IDFILIAL,'
      '    DT_INC,'
      '    DT_ALT,'
      '    RECEBIMENTO,'
      '    DESC_MAX_ITEM,'
      '    DESC_MAX_TOT_VENDA,'
      '    VER_MOVIMENTO,'
      '    SANGRIA,'
      '    SUPRIMENTO,'
      '    FECHAMENTO,'
      '    ALTERAR_PREC_UNIT,'
      '    DEVOLUCAO,'
      '    ESTOQUE_ZERADO_VENDER,'
      '    LIBERAR_CLIENTE_BLOQ,'
      '    ABRIR_GAVETA,'
      '    LIMITE_CREDITO,'
      '    DESC_ACRE_RECEBER,'
      '    NAO_USAR_JUROS_RECEBER'
      ')'
      'VALUES('
      '    :IDUSUARIO,'
      '    :IDFILIAL,'
      '    :DT_INC,'
      '    :DT_ALT,'
      '    :RECEBIMENTO,'
      '    :DESC_MAX_ITEM,'
      '    :DESC_MAX_TOT_VENDA,'
      '    :VER_MOVIMENTO,'
      '    :SANGRIA,'
      '    :SUPRIMENTO,'
      '    :FECHAMENTO,'
      '    :ALTERAR_PREC_UNIT,'
      '    :DEVOLUCAO,'
      '    :ESTOQUE_ZERADO_VENDER,'
      '    :LIBERAR_CLIENTE_BLOQ,'
      '    :ABRIR_GAVETA,'
      '    :LIMITE_CREDITO,'
      '    :DESC_ACRE_RECEBER,'
      '    :NAO_USAR_JUROS_RECEBER'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    USUARIO_PERMICOES_PDV'
      'WHERE( '
      '    IDUSUARIO = :IDUSUARIO'
      'AND'
      '    IDFILIAL = :IDFILIAL'
      
        '     ) and (     USUARIO_PERMICOES_PDV.IDUSUARIO = :OLD_IDUSUARI' +
        'O'
      '    and USUARIO_PERMICOES_PDV.IDFILIAL = :OLD_IDFILIAL'
      '     )'
      '      ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    USUARIO_PERMICOES_PDV'
      'WHERE'
      '    IDUSUARIO = :IDUSUARIO'
      'AND'
      '    IDFILIAL = :IDFILIAL  ')
    Transaction = transPricipal
    Database = Conexao
    Left = 232
    Top = 72
    object fdsUsuarioPermicPDVIDUSUARIO: TFIBBCDField
      FieldName = 'IDUSUARIO'
      Size = 0
    end
    object fdsUsuarioPermicPDVIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsUsuarioPermicPDVDT_INC: TFIBDateField
      FieldName = 'DT_INC'
    end
    object fdsUsuarioPermicPDVDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
    end
    object fdsUsuarioPermicPDVRECEBIMENTO: TFIBStringField
      FieldName = 'RECEBIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVDESC_MAX_ITEM: TFIBStringField
      FieldName = 'DESC_MAX_ITEM'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVDESC_MAX_TOT_VENDA: TFIBStringField
      FieldName = 'DESC_MAX_TOT_VENDA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVVER_MOVIMENTO: TFIBStringField
      FieldName = 'VER_MOVIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVSANGRIA: TFIBStringField
      FieldName = 'SANGRIA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVSUPRIMENTO: TFIBStringField
      FieldName = 'SUPRIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVFECHAMENTO: TFIBStringField
      FieldName = 'FECHAMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVALTERAR_PREC_UNIT: TFIBStringField
      FieldName = 'ALTERAR_PREC_UNIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVDEVOLUCAO: TFIBStringField
      FieldName = 'DEVOLUCAO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVESTOQUE_ZERADO_VENDER: TFIBStringField
      FieldName = 'ESTOQUE_ZERADO_VENDER'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVLIBERAR_CLIENTE_BLOQ: TFIBStringField
      FieldName = 'LIBERAR_CLIENTE_BLOQ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVABRIR_GAVETA: TFIBStringField
      FieldName = 'ABRIR_GAVETA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVLIMITE_CREDITO: TFIBStringField
      FieldName = 'LIMITE_CREDITO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVDESC_ACRE_RECEBER: TFIBStringField
      FieldName = 'DESC_ACRE_RECEBER'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicPDVNAO_USAR_JUROS_RECEBER: TFIBStringField
      FieldName = 'NAO_USAR_JUROS_RECEBER'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsConfigNFe: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONFIG_NFE'
      'SET '
      '    IDFILIAL = :IDFILIAL,'
      '    CERT_SENHA = :CERT_SENHA,'
      '    CERT_NUM_SERIE = :CERT_NUM_SERIE,'
      '    WS_UF = :WS_UF,'
      '    WS_AMBIENTE_NF_E = :WS_AMBIENTE_NF_E,'
      '    WS_AMBIENTE_NF_CE = :WS_AMBIENTE_NF_CE,'
      '    IDCSC = :IDCSC,'
      '    CSC = :CSC,'
      '    GERA_CREDITO_ICMS = :GERA_CREDITO_ICMS,'
      '    SERIE_NFE = :SERIE_NFE,'
      '    SERIE_NFCE = :SERIE_NFCE,'
      '    DT_VALID = :DT_VALID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONFIG_NFE'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONFIG_NFE('
      '    ID,'
      '    IDFILIAL,'
      '    CERT_SENHA,'
      '    CERT_NUM_SERIE,'
      '    WS_UF,'
      '    WS_AMBIENTE_NF_E,'
      '    WS_AMBIENTE_NF_CE,'
      '    IDCSC,'
      '    CSC,'
      '    GERA_CREDITO_ICMS,'
      '    SERIE_NFE,'
      '    SERIE_NFCE,'
      '    DT_VALID'
      ')'
      'VALUES('
      '    :ID,'
      '    :IDFILIAL,'
      '    :CERT_SENHA,'
      '    :CERT_NUM_SERIE,'
      '    :WS_UF,'
      '    :WS_AMBIENTE_NF_E,'
      '    :WS_AMBIENTE_NF_CE,'
      '    :IDCSC,'
      '    :CSC,'
      '    :GERA_CREDITO_ICMS,'
      '    :SERIE_NFE,'
      '    :SERIE_NFCE,'
      '    :DT_VALID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CONFIG_NFE '
      ''
      ' WHERE '
      '        CONFIG_NFE.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CONFIG_NFE ')
    Transaction = transPricipal
    Database = Conexao
    Left = 144
    Top = 136
    object fdsConfigNFeID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsConfigNFeIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsConfigNFeCERT_SENHA: TFIBStringField
      FieldName = 'CERT_SENHA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeCERT_NUM_SERIE: TFIBStringField
      FieldName = 'CERT_NUM_SERIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeWS_UF: TFIBStringField
      FieldName = 'WS_UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeWS_AMBIENTE_NF_E: TFIBStringField
      DefaultExpression = #39'2'#39
      FieldName = 'WS_AMBIENTE_NF_E'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeWS_AMBIENTE_NF_CE: TFIBStringField
      DefaultExpression = #39'2'#39
      FieldName = 'WS_AMBIENTE_NF_CE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeIDCSC: TFIBStringField
      FieldName = 'IDCSC'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeCSC: TFIBStringField
      FieldName = 'CSC'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeGERA_CREDITO_ICMS: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'GERA_CREDITO_ICMS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigNFeSERIE_NFE: TFIBIntegerField
      FieldName = 'SERIE_NFE'
    end
    object fdsConfigNFeSERIE_NFCE: TFIBIntegerField
      FieldName = 'SERIE_NFCE'
    end
    object fdsConfigNFeDT_VALID: TFIBDateField
      FieldName = 'DT_VALID'
    end
  end
  object frxConfig: TfrxDBDataset
    UserName = 'frxConfig'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDFILIAL=IDFILIAL'
      'NOME=NOME'
      'RAZAO=RAZAO'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'ENDERECO_FANTASIA=ENDERECO_FANTASIA'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'BAIRRO_FANTASIA=BAIRRO_FANTASIA'
      'IDCIDADE=IDCIDADE'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'TELEFONE2=TELEFONE2'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'LOGO_IMG_CAMINHO=LOGO_IMG_CAMINHO'
      'IDCLIENTEPADRAO=IDCLIENTEPADRAO'
      'IDVENDEDORPADRAO=IDVENDEDORPADRAO'
      'FABRICA=FABRICA'
      'IDFORM_PAG_PAD=IDFORM_PAG_PAD'
      'IDPORTADOR_PADRAO=IDPORTADOR_PADRAO'
      'UTILIZAR_TABELA_PRECO=UTILIZAR_TABELA_PRECO'
      'CLIENTE_EXIBIR_PJ=CLIENTE_EXIBIR_PJ'
      'HORA_BKP=HORA_BKP'
      'BAIXA_AUTO_CARTAO=BAIXA_AUTO_CARTAO'
      'PARAM=PARAM'
      'CHAVE=CHAVE'
      'HOJE=HOJE'
      'CARENCIA_JUROS=CARENCIA_JUROS'
      'VALOR_MULTA_ATRASO=VALOR_MULTA_ATRASO'
      'JUROS_DIA_PORCENTAGEM=JUROS_DIA_PORCENTAGEM'
      'PDV_DESC_MAX_VENDA=PDV_DESC_MAX_VENDA'
      'DIAS_ATRASO_BLOQUEIO=DIAS_ATRASO_BLOQUEIO'
      'CONTROLAR_FALTAS=CONTROLAR_FALTAS'
      'IDTRANPS_PADRAO=IDTRANPS_PADRAO'
      'IDVEICULO_PADRAO=IDVEICULO_PADRAO'
      'ESTOQUE_GERENCIAL=ESTOQUE_GERENCIAL'
      'CFOP_PADRAO=CFOP_PADRAO'
      'CEST_PADRAO=CEST_PADRAO'
      'CSOSN_PADRAO=CSOSN_PADRAO'
      'MARGEN_LUCRO_PADRAO=MARGEN_LUCRO_PADRAO'
      'CARTAO_CREDITO_AVISTA=CARTAO_CREDITO_AVISTA'
      'TARIFA_BOLETO=TARIFA_BOLETO'
      'PDV_UTILIZAR_GAVETA=PDV_UTILIZAR_GAVETA'
      'FILIAL_PREC_VENDA_IGUAL=FILIAL_PREC_VENDA_IGUAL'
      'FISCAL=FISCAL'
      'MODELO_IMPRESSORA=MODELO_IMPRESSORA'
      'AUTO_PECAS=AUTO_PECAS'
      'BAIXA_DOCS_AUTO=BAIXA_DOCS_AUTO'
      'MODO_TAB_PRECO=MODO_TAB_PRECO'
      'TIPO_IMPRESSAO_PEDIDO=TIPO_IMPRESSAO_PEDIDO'
      'PEDIDO_SIMPLES=PEDIDO_SIMPLES'
      'MODELO_ETIQ_PROD=MODELO_ETIQ_PROD'
      'TP_CERTIFICADO_NFE=TP_CERTIFICADO_NFE'
      'BLOQUEAR_CLIENT_ATRASO=BLOQUEAR_CLIENT_ATRASO'
      'MODELO_BALANCA_GERAL=MODELO_BALANCA_GERAL'
      'TAMANHO_CAMPOS_BAL=TAMANHO_CAMPOS_BAL'
      'TIPO_COD_PROD_ETIQUETABAL=TIPO_COD_PROD_ETIQUETABAL'
      'DADOS_COD_ETIQUETA_BAL=DADOS_COD_ETIQUETA_BAL'
      'FILIAL=FILIAL'
      'CIDADE=CIDADE'
      'UF=UF'
      'CODIGO_MUNICIPIO=CODIGO_MUNICIPIO')
    DataSet = fdsConfig
    BCDToCurrency = False
    Left = 224
    Top = 192
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 80
    Top = 200
  end
  object dsConfigNFe: TDataSource
    DataSet = fdsConfigNFe
    Left = 160
    Top = 192
  end
  object dsCaixa: TDataSource
    DataSet = fdsCaixa
    Left = 176
    Top = 248
  end
  object fdsCaixa: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CAIXA'
      'SET '
      '    DT_INC = :DT_INC,'
      '    NUM_CAIXA = :NUM_CAIXA,'
      '    CONTROLE = :CONTROLE,'
      '    ENVIADO_WEB = :ENVIADO_WEB,'
      '    PDV_UTILIZA_GAVETA = :PDV_UTILIZA_GAVETA,'
      '    IMP_CUPOM = :IMP_CUPOM,'
      '    MODELO_IMPRESSORA = :MODELO_IMPRESSORA,'
      '    MODELO_BALANCA = :MODELO_BALANCA,'
      '    PORTA_BALANCA = :PORTA_BALANCA,'
      '    CERT_SENHA = :CERT_SENHA,'
      '    CERT_NUM_SERIE = :CERT_NUM_SERIE,'
      '    ULTIMA_NFCE = :ULTIMA_NFCE,'
      '    SERIE_NFCE = :SERIE_NFCE,'
      '    IDCSC = :IDCSC,'
      '    CSC = :CSC,'
      '    BAUD_RATE = :BAUD_RATE,'
      '    TIME_OUT = :TIME_OUT,'
      '    PARITY_BAL = :PARITY_BAL,'
      '    STOP_BITS_BAL = :STOP_BITS_BAL,'
      '    HANDSHAKING_BAL = :HANDSHAKING_BAL,'
      '    DATA_BITS_BAL = :DATA_BITS_BAL,'
      '    TAB_PRECO = :TAB_PRECO,'
      '    GENERATION = :GENERATION,'
      '    IMP_PDF = :IMP_PDF,'
      '    PADRAO_LAYOUT = :PADRAO_LAYOUT,'
      '    NF_F9 = :NF_F9'
      'WHERE'
      '    ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CAIXA'
      'WHERE'
      '        ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CAIXA('
      '    ID,'
      '    DT_INC,'
      '    NUM_CAIXA,'
      '    CONTROLE,'
      '    ENVIADO_WEB,'
      '    IDFILIAL,'
      '    PDV_UTILIZA_GAVETA,'
      '    IMP_CUPOM,'
      '    MODELO_IMPRESSORA,'
      '    MODELO_BALANCA,'
      '    PORTA_BALANCA,'
      '    CERT_SENHA,'
      '    CERT_NUM_SERIE,'
      '    ULTIMA_NFCE,'
      '    SERIE_NFCE,'
      '    IDCSC,'
      '    CSC,'
      '    BAUD_RATE,'
      '    TIME_OUT,'
      '    PARITY_BAL,'
      '    STOP_BITS_BAL,'
      '    HANDSHAKING_BAL,'
      '    DATA_BITS_BAL,'
      '    TAB_PRECO,'
      '    GENERATION,'
      '    IMP_PDF,'
      '    PADRAO_LAYOUT,'
      '    NF_F9'
      ')'
      'VALUES('
      '    :ID,'
      '    :DT_INC,'
      '    :NUM_CAIXA,'
      '    :CONTROLE,'
      '    :ENVIADO_WEB,'
      '    :IDFILIAL,'
      '    :PDV_UTILIZA_GAVETA,'
      '    :IMP_CUPOM,'
      '    :MODELO_IMPRESSORA,'
      '    :MODELO_BALANCA,'
      '    :PORTA_BALANCA,'
      '    :CERT_SENHA,'
      '    :CERT_NUM_SERIE,'
      '    :ULTIMA_NFCE,'
      '    :SERIE_NFCE,'
      '    :IDCSC,'
      '    :CSC,'
      '    :BAUD_RATE,'
      '    :TIME_OUT,'
      '    :PARITY_BAL,'
      '    :STOP_BITS_BAL,'
      '    :HANDSHAKING_BAL,'
      '    :DATA_BITS_BAL,'
      '    :TAB_PRECO,'
      '    :GENERATION,'
      '    :IMP_PDF,'
      '    :PADRAO_LAYOUT,'
      '    :NF_F9'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CAIXA '
      'WHERE( '
      '  IDFILIAL = :IDFILIAL'
      '     ) and (     CAIXA.ID = :OLD_ID'
      '    and CAIXA.IDFILIAL = :OLD_IDFILIAL'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CAIXA '
      'WHERE'
      '  IDFILIAL = :IDFILIAL')
    AfterEdit = fdsCaixaAfterEdit
    AfterInsert = fdsCaixaAfterEdit
    Transaction = transPricipal
    Database = Conexao
    Left = 232
    Top = 248
    object fdsCaixaID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsCaixaDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fdsCaixaNUM_CAIXA: TFIBIntegerField
      FieldName = 'NUM_CAIXA'
    end
    object fdsCaixaCONTROLE: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'CONTROLE'
      Size = 0
    end
    object fdsCaixaENVIADO_WEB: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsCaixaIMP_CUPOM: TFIBStringField
      FieldName = 'IMP_CUPOM'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaMODELO_IMPRESSORA: TFIBStringField
      FieldName = 'MODELO_IMPRESSORA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaMODELO_BALANCA: TFIBStringField
      FieldName = 'MODELO_BALANCA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaPORTA_BALANCA: TFIBStringField
      FieldName = 'PORTA_BALANCA'
      Size = 5
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaCERT_SENHA: TFIBStringField
      FieldName = 'CERT_SENHA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaCERT_NUM_SERIE: TFIBStringField
      FieldName = 'CERT_NUM_SERIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaIDCSC: TFIBStringField
      FieldName = 'IDCSC'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaCSC: TFIBStringField
      FieldName = 'CSC'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaPDV_UTILIZA_GAVETA: TFIBStringField
      FieldName = 'PDV_UTILIZA_GAVETA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaSERIE_NFCE: TFIBIntegerField
      FieldName = 'SERIE_NFCE'
    end
    object fdsCaixaULTIMA_NFCE: TFIBBCDField
      FieldName = 'ULTIMA_NFCE'
      Size = 0
    end
    object fdsCaixaBAUD_RATE: TFIBIntegerField
      FieldName = 'BAUD_RATE'
    end
    object fdsCaixaTIME_OUT: TFIBIntegerField
      FieldName = 'TIME_OUT'
    end
    object fdsCaixaPARITY_BAL: TFIBStringField
      FieldName = 'PARITY_BAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaSTOP_BITS_BAL: TFIBStringField
      FieldName = 'STOP_BITS_BAL'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaHANDSHAKING_BAL: TFIBStringField
      FieldName = 'HANDSHAKING_BAL'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaDATA_BITS_BAL: TFIBIntegerField
      FieldName = 'DATA_BITS_BAL'
    end
    object fdsCaixaTAB_PRECO: TFIBIntegerField
      FieldName = 'TAB_PRECO'
    end
    object fdsCaixaGENERATION: TFIBStringField
      FieldName = 'GENERATION'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaPADRAO_LAYOUT: TFIBStringField
      FieldName = 'PADRAO_LAYOUT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCaixaNF_F9: TFIBStringField
      FieldName = 'NF_F9'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 16
    Top = 154
  end
  object fdsConfigMDFe: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONFIG_MANIFESTO'
      'SET '
      '    IDFILIAL = :IDFILIAL,'
      '    CERT_SENHA = :CERT_SENHA,'
      '    CERT_NUM_SERIE = :CERT_NUM_SERIE,'
      '    WS_UF = :WS_UF,'
      '    WS_AMBIENTE = :WS_AMBIENTE,'
      '    SERIE_MANIFESTO = :SERIE_MANIFESTO,'
      '    ULTIMO_MANIFESTO = :ULTIMO_MANIFESTO,'
      '    TIPO_CERT = :TIPO_CERT,'
      '    CNPJ_CPF = :CNPJ_CPF,'
      '    IE = :IE,'
      '    NOME = :NOME,'
      '    RAZAO = :RAZAO,'
      '    ENDERECO = :ENDERECO,'
      '    NUMERO = :NUMERO,'
      '    BAIRRO = :BAIRRO,'
      '    CODCIDADE = :CODCIDADE,'
      '    CIDADE = :CIDADE,'
      '    UF = :UF,'
      '    CEP = :CEP,'
      '    TIPO_EMITENTE = :TIPO_EMITENTE,'
      '    TELEFONE = :TELEFONE'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONFIG_MANIFESTO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONFIG_MANIFESTO('
      '    ID,'
      '    IDFILIAL,'
      '    CERT_SENHA,'
      '    CERT_NUM_SERIE,'
      '    WS_UF,'
      '    WS_AMBIENTE,'
      '    SERIE_MANIFESTO,'
      '    ULTIMO_MANIFESTO,'
      '    TIPO_CERT,'
      '    CNPJ_CPF,'
      '    IE,'
      '    NOME,'
      '    RAZAO,'
      '    ENDERECO,'
      '    NUMERO,'
      '    BAIRRO,'
      '    CODCIDADE,'
      '    CIDADE,'
      '    UF,'
      '    CEP,'
      '    TIPO_EMITENTE,'
      '    TELEFONE'
      ')'
      'VALUES('
      '    :ID,'
      '    :IDFILIAL,'
      '    :CERT_SENHA,'
      '    :CERT_NUM_SERIE,'
      '    :WS_UF,'
      '    :WS_AMBIENTE,'
      '    :SERIE_MANIFESTO,'
      '    :ULTIMO_MANIFESTO,'
      '    :TIPO_CERT,'
      '    :CNPJ_CPF,'
      '    :IE,'
      '    :NOME,'
      '    :RAZAO,'
      '    :ENDERECO,'
      '    :NUMERO,'
      '    :BAIRRO,'
      '    :CODCIDADE,'
      '    :CIDADE,'
      '    :UF,'
      '    :CEP,'
      '    :TIPO_EMITENTE,'
      '    :TELEFONE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CONFIG_MANIFESTO '
      ''
      ' WHERE '
      '        CONFIG_MANIFESTO.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CONFIG_MANIFESTO ')
    Transaction = transPricipal
    Database = Conexao
    Left = 72
    Top = 256
    object fdsConfigMDFeID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsConfigMDFeCERT_SENHA: TFIBStringField
      FieldName = 'CERT_SENHA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeCERT_NUM_SERIE: TFIBStringField
      FieldName = 'CERT_NUM_SERIE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeWS_UF: TFIBStringField
      FieldName = 'WS_UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeWS_AMBIENTE: TFIBStringField
      FieldName = 'WS_AMBIENTE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeSERIE_MANIFESTO: TFIBIntegerField
      FieldName = 'SERIE_MANIFESTO'
    end
    object fdsConfigMDFeULTIMO_MANIFESTO: TFIBIntegerField
      FieldName = 'ULTIMO_MANIFESTO'
    end
    object fdsConfigMDFeTIPO_CERT: TFIBStringField
      FieldName = 'TIPO_CERT'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeCNPJ_CPF: TFIBStringField
      FieldName = 'CNPJ_CPF'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeIE: TFIBStringField
      FieldName = 'IE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeRAZAO: TFIBStringField
      FieldName = 'RAZAO'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeENDERECO: TFIBStringField
      FieldName = 'ENDERECO'
      Size = 500
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeNUMERO: TFIBStringField
      FieldName = 'NUMERO'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeBAIRRO: TFIBStringField
      FieldName = 'BAIRRO'
      Size = 500
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeCODCIDADE: TFIBIntegerField
      FieldName = 'CODCIDADE'
    end
    object fdsConfigMDFeCIDADE: TFIBStringField
      FieldName = 'CIDADE'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeUF: TFIBStringField
      FieldName = 'UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeCEP: TFIBStringField
      FieldName = 'CEP'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeTIPO_EMITENTE: TFIBStringField
      FieldName = 'TIPO_EMITENTE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeTELEFONE: TFIBStringField
      FieldName = 'TELEFONE'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigMDFeIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
  end
end