object DM: TDM
  OldCreateOrder = False
  Height = 290
  Width = 474
  object conexao: TpFIBDatabase
    DBName = 'D:\Delphi\Sistemas\SGP\Banco\SGP.FDB'
    DBParams.Strings = (
      'password=masterkey'
      'user_name=SYSDBA'
      'lc_ctype=WIN1252')
    DefaultTransaction = trans
    DefaultUpdateTransaction = trans
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 24
    Top = 16
  end
  object trans: TpFIBTransaction
    DefaultDatabase = conexao
    Left = 88
    Top = 16
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
      '    TAB_PADRAO_PRE_VENDA = :TAB_PADRAO_PRE_VENDA'
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
      '    TAB_PADRAO_PRE_VENDA'
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
      '    :TAB_PADRAO_PRE_VENDA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    C.*,'
      '    CI.NOME CIDADE,'
      '    CI.UF UF'
      'FROM'
      '    CONFIG C, CIDADE_IBGE CI'
      'WHERE( '
      '   CI.ID = C.IDCIDADE'
      '     ) and (     C.ID = :OLD_ID'
      '     )'
      '     ')
    SelectSQL.Strings = (
      'SELECT'
      '    C.*,'
      '    CI.NOME CIDADE,'
      '    CI.UF UF'
      'FROM'
      '    CONFIG C, CIDADE_IBGE CI'
      'WHERE'
      '   CI.ID = C.IDCIDADE ')
    Transaction = trans
    Database = conexao
    Left = 176
    Top = 16
    object fdsConfigID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsConfigIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
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
    object fdsConfigBAIRRO: TFIBStringField
      FieldName = 'BAIRRO'
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
    object fdsConfigNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 100
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
      DisplayFormat = 'hh:mm AMPM'
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
    object fdsConfigCARENCIA_JUROS: TFIBIntegerField
      FieldName = 'CARENCIA_JUROS'
    end
    object fdsConfigVALOR_MULTA_ATRASO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR_MULTA_ATRASO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
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
    object fdsConfigNUMERO: TFIBSmallIntField
      FieldName = 'NUMERO'
    end
    object fdsConfigTELEFONE2: TFIBStringField
      FieldName = 'TELEFONE2'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigJUROS_DIA_PORCENTAGEM: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'JUROS_DIA_PORCENTAGEM'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
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
    object fdsConfigENDERECO_FANTASIA: TFIBStringField
      FieldName = 'ENDERECO_FANTASIA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsConfigBAIRRO_FANTASIA: TFIBStringField
      FieldName = 'BAIRRO_FANTASIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
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
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
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
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
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
    object fdsConfigTAB_PADRAO_PRE_VENDA: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'TAB_PADRAO_PRE_VENDA'
    end
  end
  object fdsUsuarioPermic: TpFIBDataSet
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
      '    LIBERAR_CLIENTE_BLOQ = :LIBERAR_CLIENTE_BLOQ'
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
      '    LIBERAR_CLIENTE_BLOQ'
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
      '    :LIBERAR_CLIENTE_BLOQ'
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
      '     ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    USUARIO_PERMICOES_PDV'
      'WHERE'
      '    IDUSUARIO = :IDUSUARIO'
      'AND'
      '    IDFILIAL = :IDFILIAL ')
    Transaction = trans
    Database = conexao
    Left = 272
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
    object fdsUsuarioPermicRECEBIMENTO: TFIBStringField
      FieldName = 'RECEBIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicDESC_MAX_ITEM: TFIBStringField
      FieldName = 'DESC_MAX_ITEM'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicDESC_MAX_TOT_VENDA: TFIBStringField
      FieldName = 'DESC_MAX_TOT_VENDA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicVER_MOVIMENTO: TFIBStringField
      FieldName = 'VER_MOVIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicSANGRIA: TFIBStringField
      FieldName = 'SANGRIA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicSUPRIMENTO: TFIBStringField
      FieldName = 'SUPRIMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicFECHAMENTO: TFIBStringField
      FieldName = 'FECHAMENTO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicALTERAR_PREC_UNIT: TFIBStringField
      FieldName = 'ALTERAR_PREC_UNIT'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsUsuarioPermicDEVOLUCAO: TFIBStringField
      FieldName = 'DEVOLUCAO'
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
    object fdsUsuarioPermicLIBERAR_CLIENTE_BLOQ: TFIBStringField
      FieldName = 'LIBERAR_CLIENTE_BLOQ'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42983.669402881900000000
    ReportOptions.LastChange = 43696.663483784720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      
        '  altura: double;                                               ' +
        '                                '
      'begin'
      '       '
      '   {    if <frxMovCaixa."VLR_NOTA"> = '#39'0,00'#39' then'
      '       begin                   '
      '               Footer1.Visible := False;'
      
        '               DetailData2.Visible := False;                    ' +
        '                                     '
      '       end;                                             '
      
        '  altura :=  lblDinheiro.Top;                                   ' +
        '  '
      ''
      '  if <frxMovCaixa."VLR_CARTAO"> = '#39'0,00'#39' then'
      '  begin'
      '     lblTituloCT.Visible := false;         '
      '     lblCartao.Visible := false;'
      '     altura := altura + 16                '
      '  end;'
      ''
      '  if <frxMovCaixa."VLR_NOTA"> = '#39'0,00'#39' then'
      '  begin'
      '     lblTituloNt.Visible := false;         '
      '     lblNota.Visible := false;'
      '     altura :=altura + 16           '
      '  end;'
      ''
      '  if <frxMovCaixa."VLR_CREDITO"> = '#39'0,00'#39' then'
      '  begin'
      '     lblTituloCD.Visible := false;         '
      '     lblCredito.Visible := false;'
      '     altura := altura + 16           '
      '  end;'
      ''
      '  if <frxMovCaixa."VLR_DESCONTO"> = '#39'0,00'#39' then'
      '  begin'
      '     lblTituloDesc.Visible := false;         '
      '     lblDesconto.Visible := false;'
      '     altura := altura + 16              '
      '  end;'
      ''
      '  lblTituloTotal.Top := altura;'
      
        '  lblVendaTotal.Top := lblDinheiro.Top;                         ' +
        '                                       '
      '  lblTituloDocsPagar.Top := altura + 20;  '
      '  Footer1.Height := lblTituloDocsPagar.Top + 25; }          '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  {if <frxVenda."IDCLIENTE"> = '#39'99999'#39' then'
      '  begin'
      '       lblDadosCliente.Visible := False;'
      
        '       MasterData1.Height :=   MasterData1.Height - 16;         ' +
        '                                                          '
      '  end;}              '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'procedure Child1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <frxPreVenda."INFO_ADICINAL"> = '#39#39' then'
      '  begin'
      '    //lblInfo.Visible:=false;'
      '    child1.Visible:=false;        '
      '  end;      '
      'end;'
      ''
      'procedure lblInfoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 32
    Top = 88
    Datasets = <
      item
        DataSet = frmPrincipal.frxCliente
        DataSetName = 'frxCliente'
      end
      item
        DataSet = frxConfig
        DataSetName = 'frxConfig'
      end
      item
        DataSet = frmPrincipal.frxPreVenda
        DataSetName = 'frxPreVenda'
      end
      item
        DataSet = frmPrincipal.frxPreVendaItens
        DataSetName = 'frxPreVendaItens'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 230.000000000000000000
      PaperSize = 256
      EndlessHeight = True
      VGuides.Strings = (
        '279,68522'
        '7,55906')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 124.944960000000000000
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object Line3: TfrxLineView
          Align = baCenter
          Left = 11.338680315000000000
          Top = 11.338590000000000000
          Width = 279.685039370000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = -5.669286450000000000
          Top = 41.574830000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."ENDERECO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 0.000097640000000000
          Top = 60.472480000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."BAIRRO"], [frxConfig."CIDADE"] - [frxConfig."UF"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = -5.669286450000000000
          Top = 79.370130000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."TELEFONE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = -5.330794100000000000
          Top = 103.047310000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'OR'#199'AMENTO DE VENDA')
          ParentFont = False
        end
        object frxConfigNOME: TfrxMemoView
          Left = 7.559060000000000000
          Top = 21.677180000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxConfig
          DataSetName = 'frxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfig."NOME"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 138.607574220000000000
        Top = 204.094620000000000000
        Width = 302.362400000000000000
        object Memo7: TfrxMemoView
          Left = 9.574830000000000000
          Top = 88.495280530000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EAN.  -             Descri'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 37.574830000000000000
          Top = 107.392930530000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Qtn.    Vlr. Unt.    Desc. Unit.    Tot. Item')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 7.779708190000000000
          Top = 131.070110530000000000
          Width = 275.905511810000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 9.281075670000000000
          Top = 86.105263160000000000
          Width = 275.905511810000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 7.228444100000000000
          Top = 53.178986320000000000
          Width = 275.905511810000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 58.147446320000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 97.936985900000000000
          Top = 10.793086320000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVenda."ID"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 6.559060000000000000
          Top = 10.793086320000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Or'#231'amento N'#186':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 144.858380000000000000
          Top = 10.793086320000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = -2.220372360000000000
          Top = 6.115906320000000000
          Width = 294.803144720000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 31.674966320000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object frxVendaDT_INC1: TfrxMemoView
          Left = 178.874150000000000000
          Top = 10.997786320000000000
          Width = 101.929190000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVenda."DT_INC"]')
          ParentFont = False
        end
        object frxPreVendaCLIENTE: TfrxMemoView
          Left = 60.000000000000000000
          Top = 59.399651050000000000
          Width = 219.685220000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLIENTE'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVenda."CLIENTE"]')
          ParentFont = False
          WordBreak = True
        end
        object frxPreVendaVENDEDOR: TfrxMemoView
          Left = 71.578947370000000000
          Top = 32.031230000000000000
          Width = 208.106272630000000000
          Height = 18.897650000000000000
          DataField = 'VENDEDOR'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVenda."VENDEDOR"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.045601050000000000
        Top = 676.535870000000000000
        Width = 302.362400000000000000
        object Memo6: TfrxMemoView
          Left = 15.789473680000000000
          Top = 8.378754210000000000
          Width = 61.981122110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 70.335676840000000000
          Top = 8.378754210000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 149.283045260000000000
          Top = 8.378754210000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.464130000000000000
          Width = 277.704097890000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 106.887706320000000000
        Top = 427.086890000000000000
        Width = 302.362400000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Child = frxReport1.Child1
        object Line1: TfrxLineView
          Left = 8.000000000000000000
          Top = 4.732414740000000000
          Width = 132.283371810000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 14.559060000000000000
          Top = 83.189124740000000000
          Width = 134.612701050000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
        object lblTituloTotal: TfrxMemoView
          Left = 99.148277260000000000
          Top = 13.301418430000000000
          Width = 95.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object frxPreVendaFORMA_PAGAMENTO: TfrxMemoView
          Left = 149.581355790000000000
          Top = 83.004002100000000000
          Width = 130.103864210000000000
          Height = 18.897650000000000000
          DataField = 'FORMA_PAGAMENTO'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPreVenda."FORMA_PAGAMENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 96.842105260000000000
          Top = 33.807846840000000000
          Width = 95.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto Total:')
          ParentFont = False
        end
        object frxPreVendaVLR_DESCONTO: TfrxMemoView
          Left = 7.559060000000000000
          Top = 32.860478420000000000
          Width = 86.001009470000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(SUM(<frxPreVenda."VLR_DESCONTO">)+SUM(<frxPreVendaItens."VLR_D' +
              'ESC">))]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 96.842105260000000000
          Top = 55.176267900000000000
          Width = 95.590599990000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Sub.Total:')
          ParentFont = False
        end
        object frxPreVendaVLR_TOTITEM: TfrxMemoView
          Left = 193.999300530000000000
          Top = 11.860478420000000000
          Width = 85.685919470000000000
          Height = 18.897650000000000000
          DataField = 'VLR_TOTITEM'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPreVenda."VLR_TOTITEM"]')
          ParentFont = False
        end
        object frxPreVendaVLR_TOTAL: TfrxMemoView
          Left = 191.473684210000000000
          Top = 53.492057370000000000
          Width = 88.211535790000000000
          Height = 18.897650000000000000
          DataField = 'VLR_TOTAL'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPreVenda."VLR_TOTAL"]')
          ParentFont = False
        end
        object frxPreVendaVLR_DESCONTO1: TfrxMemoView
          Left = 192.631578950000000000
          Top = 32.913110000000000000
          Width = 87.053641050000000000
          Height = 18.897650000000000000
          DataField = 'VLR_DESCONTO'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPreVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 36.552009950000000000
        Top = 366.614410000000000000
        Width = 302.362400000000000000
        DataSet = frmPrincipal.frxPreVendaItens
        DataSetName = 'frxPreVendaItens'
        RowCount = 0
        object frxVendaItensNOME: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.140610520000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxVendaItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVendaItens."COD_FABRICA"] - [frxPreVendaItens."NOME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 52.354360000000000000
          Top = 18.691435780000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' X ')
          ParentFont = False
        end
        object frxVendaItensQTN: TfrxMemoView
          Left = 11.559060000000000000
          Top = 19.470965780000000000
          Width = 41.143833680000000000
          Height = 15.118120000000000000
          DataSetName = 'frxVendaItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVendaItens."QTN"]')
          ParentFont = False
        end
        object frxVendaItensVLR_UNITARIO: TfrxMemoView
          Left = 68.913420000000000000
          Top = 18.911905780000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxVendaItens'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVendaItens."VLR_UNITARIO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 140.724490000000000000
          Top = 18.911905780000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' - ')
          ParentFont = False
        end
        object frxVendaItensVLR_DESCONTO: TfrxMemoView
          Left = 151.496989470000000000
          Top = 17.859274200000000000
          Width = 47.078345270000000000
          Height = 15.118120000000000000
          DataSetName = 'frxVendaItens'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVendaItens."VLR_DESC"]')
          ParentFont = False
        end
        object frxVendaItensVLR_TOTAL: TfrxMemoView
          Left = 194.196970000000000000
          Top = 17.911905780000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxVendaItens'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ #,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPreVendaItens."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 59.519285260000000000
        Top = 555.590910000000000000
        Width = 302.362400000000000000
        OnBeforePrint = 'Child1OnBeforePrint'
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 15.789473690000000000
          Top = 27.525501060000000000
          Width = 263.895746310000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'INFO_ADICINAL'
          DataSet = frmPrincipal.frxPreVenda
          DataSetName = 'frxPreVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPreVenda."INFO_ADICINAL"]')
          ParentFont = False
          WordBreak = True
        end
        object lblInfo: TfrxMemoView
          Left = 15.789473680000000000
          Top = 7.376345790000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#227'o :')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 7.000000000000000000
          Top = 5.566984740000000000
          Width = 275.905511810000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object frxConfig: TfrxDBDataset
    UserName = 'frxConfig'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDFILIAL=IDFILIAL'
      'RAZAO=RAZAO'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'IDCIDADE=IDCIDADE'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'LOGO_IMG_CAMINHO=LOGO_IMG_CAMINHO'
      'NOME=NOME'
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
      'CIDADE=CIDADE'
      'UF=UF'
      'CARENCIA_JUROS=CARENCIA_JUROS'
      'VALOR_MULTA_ATRASO=VALOR_MULTA_ATRASO'
      'JUROS_DIA=JUROS_DIA'
      'PDV_DESC_MAX_VENDA=PDV_DESC_MAX_VENDA'
      'DIAS_ATRASO_BLOQUEIO=DIAS_ATRASO_BLOQUEIO'
      'NUMERO=NUMERO')
    DataSet = fdsConfig
    BCDToCurrency = False
    Left = 176
    Top = 96
  end
end
