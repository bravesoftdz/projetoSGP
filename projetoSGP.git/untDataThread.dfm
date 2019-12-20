object DMThread: TDMThread
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 320
  Width = 509
  object Conexao2: TpFIBDatabase
    DBName = 'D:\Delphi\Sistemas\SGP\Banco\SGP.FDB'
    DBParams.Strings = (
      'lc_ctype=WIN1252'
      'password=masterkey'
      'user_name=SYSDBA'
      'sql_role_name=')
    DefaultTransaction = trans
    DefaultUpdateTransaction = trans
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 72
    Top = 16
  end
  object trans: TpFIBTransaction
    DefaultDatabase = Conexao2
    Left = 144
    Top = 16
  end
  object fdsCntReceberItem: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CNT_RECEBER_ITEM'
      'SET '
      '    POSICAO = :POSICAO,'
      '    PREFIXO = :PREFIXO,'
      '    REFERENCIA = :REFERENCIA,'
      '    IDRECEBER = :IDRECEBER,'
      '    DT_VENC = :DT_VENC,'
      '    DT_PAG = :DT_PAG,'
      '    ACRESCIMO = :ACRESCIMO,'
      '    DESCONTO = :DESCONTO,'
      '    VALOR = :VALOR,'
      '    VALOR_PAGO = :VALOR_PAGO,'
      '    HISTORICO = :HISTORICO,'
      '    PARCELA = :PARCELA,'
      '    ENVIADO_WEB = :ENVIADO_WEB,'
      '    BAIXA_AGRUPADA = :BAIXA_AGRUPADA,'
      '    PAGAMENTO_MOEDA = :PAGAMENTO_MOEDA,'
      '    REC_DESC_ACRE = :REC_DESC_ACRE,'
      '    REC_DINHEIRO = :REC_DINHEIRO,'
      '    ID_REC_ITEM = :ID_REC_ITEM,'
      '    VALOR_JUROS_PAGO = :VALOR_JUROS_PAGO'
      'WHERE'
      '    ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CNT_RECEBER_ITEM'
      'WHERE'
      '        ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CNT_RECEBER_ITEM('
      '    ID,'
      '    POSICAO,'
      '    PREFIXO,'
      '    REFERENCIA,'
      '    IDRECEBER,'
      '    DT_VENC,'
      '    DT_PAG,'
      '    ACRESCIMO,'
      '    DESCONTO,'
      '    VALOR,'
      '    VALOR_PAGO,'
      '    HISTORICO,'
      '    PARCELA,'
      '    ENVIADO_WEB,'
      '    IDFILIAL,'
      '    BAIXA_AGRUPADA,'
      '    PAGAMENTO_MOEDA,'
      '    REC_DESC_ACRE,'
      '    REC_DINHEIRO,'
      '    ID_REC_ITEM,'
      '    VALOR_JUROS_PAGO'
      ')'
      'VALUES('
      '    :ID,'
      '    :POSICAO,'
      '    :PREFIXO,'
      '    :REFERENCIA,'
      '    :IDRECEBER,'
      '    :DT_VENC,'
      '    :DT_PAG,'
      '    :ACRESCIMO,'
      '    :DESCONTO,'
      '    :VALOR,'
      '    :VALOR_PAGO,'
      '    :HISTORICO,'
      '    :PARCELA,'
      '    :ENVIADO_WEB,'
      '    :IDFILIAL,'
      '    :BAIXA_AGRUPADA,'
      '    :PAGAMENTO_MOEDA,'
      '    :REC_DESC_ACRE,'
      '    :REC_DINHEIRO,'
      '    :ID_REC_ITEM,'
      '    :VALOR_JUROS_PAGO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CNT_RECEBER_ITEM '
      ''
      ' WHERE '
      '        CNT_RECEBER_ITEM.ID = :OLD_ID'
      '    and CNT_RECEBER_ITEM.IDFILIAL = :OLD_IDFILIAL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    RI.*,'
      '    CR.IDCLIENTE'
      'FROM'
      '    CNT_RECEBER_ITEM RI,CNT_RECEBER CR'
      'WHERE'
      '   CR.ID = RI.IDRECEBER '
      'AND'
      '    RI.DT_VENC <= :DT_VENC '
      'AND '
      '    RI.POSICAO = '#39'AB'#39' '
      'AND '
      '    RI.PREFIXO = :PREFIXO')
    Transaction = trans
    Database = Conexao2
    Left = 72
    Top = 88
    object fdsCntReceberItemID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsCntReceberItemPOSICAO: TFIBStringField
      FieldName = 'POSICAO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemPREFIXO: TFIBStringField
      FieldName = 'PREFIXO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemIDRECEBER: TFIBBCDField
      FieldName = 'IDRECEBER'
      Size = 0
    end
    object fdsCntReceberItemDT_VENC: TFIBDateField
      FieldName = 'DT_VENC'
    end
    object fdsCntReceberItemDT_PAG: TFIBDateField
      FieldName = 'DT_PAG'
    end
    object fdsCntReceberItemACRESCIMO: TFIBBCDField
      FieldName = 'ACRESCIMO'
      Size = 8
    end
    object fdsCntReceberItemDESCONTO: TFIBBCDField
      FieldName = 'DESCONTO'
      Size = 8
    end
    object fdsCntReceberItemVALOR: TFIBBCDField
      FieldName = 'VALOR'
      Size = 8
    end
    object fdsCntReceberItemVALOR_PAGO: TFIBBCDField
      FieldName = 'VALOR_PAGO'
      Size = 8
    end
    object fdsCntReceberItemHISTORICO: TFIBStringField
      FieldName = 'HISTORICO'
      Size = 200
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemPARCELA: TFIBStringField
      FieldName = 'PARCELA'
      Size = 6
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemENVIADO_WEB: TFIBStringField
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsCntReceberItemBAIXA_AGRUPADA: TFIBStringField
      FieldName = 'BAIXA_AGRUPADA'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemPAGAMENTO_MOEDA: TFIBStringField
      FieldName = 'PAGAMENTO_MOEDA'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntReceberItemREC_DESC_ACRE: TFIBBCDField
      FieldName = 'REC_DESC_ACRE'
      Size = 8
    end
    object fdsCntReceberItemREC_DINHEIRO: TFIBBCDField
      FieldName = 'REC_DINHEIRO'
      Size = 8
    end
    object fdsCntReceberItemID_REC_ITEM: TFIBBCDField
      FieldName = 'ID_REC_ITEM'
      Size = 0
    end
    object fdsCntReceberItemVALOR_JUROS_PAGO: TFIBBCDField
      FieldName = 'VALOR_JUROS_PAGO'
      Size = 8
    end
    object fdsCntReceberItemIDCLIENTE: TFIBBCDField
      FieldName = 'IDCLIENTE'
      Size = 0
    end
  end
  object qrySQL: TpFIBQuery
    Transaction = trans
    Database = Conexao2
    Left = 176
    Top = 96
  end
  object fdsMov: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE MOV_CONTROLE_CT_CH'
      'SET '
      '    IDRECEBER_ITEM = :IDRECEBER_ITEM,'
      '    IDRECEBER_CHEQUE = :IDRECEBER_CHEQUE,'
      '    IDUSUARIO = :IDUSUARIO,'
      '    IDCLIENTE = :IDCLIENTE,'
      '    IDFILIAL = :IDFILIAL,'
      '    DT_MOV = :DT_MOV,'
      '    HR_MOV = :HR_MOV,'
      '    STATUS = :STATUS,'
      '    REFERENCIA = :REFERENCIA,'
      '    PREFIXO = :PREFIXO,'
      '    BAIXA_AUTOMATICA = :BAIXA_AUTOMATICA'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    MOV_CONTROLE_CT_CH'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO MOV_CONTROLE_CT_CH('
      '    ID,'
      '    IDRECEBER_ITEM,'
      '    IDRECEBER_CHEQUE,'
      '    IDUSUARIO,'
      '    IDCLIENTE,'
      '    IDFILIAL,'
      '    DT_MOV,'
      '    HR_MOV,'
      '    STATUS,'
      '    REFERENCIA,'
      '    PREFIXO,'
      '    BAIXA_AUTOMATICA'
      ')'
      'VALUES('
      '    :ID,'
      '    :IDRECEBER_ITEM,'
      '    :IDRECEBER_CHEQUE,'
      '    :IDUSUARIO,'
      '    :IDCLIENTE,'
      '    :IDFILIAL,'
      '    :DT_MOV,'
      '    :HR_MOV,'
      '    :STATUS,'
      '    :REFERENCIA,'
      '    :PREFIXO,'
      '    :BAIXA_AUTOMATICA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    MOV_CONTROLE_CT_CH '
      ''
      ' WHERE '
      '        MOV_CONTROLE_CT_CH.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    MOV_CONTROLE_CT_CH ')
    Transaction = trans
    Database = Conexao2
    Left = 349
    Top = 113
    object fdsMovID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsMovIDRECEBER_ITEM: TFIBBCDField
      FieldName = 'IDRECEBER_ITEM'
      Size = 0
    end
    object fdsMovIDRECEBER_CHEQUE: TFIBBCDField
      FieldName = 'IDRECEBER_CHEQUE'
      Size = 0
    end
    object fdsMovIDUSUARIO: TFIBBCDField
      FieldName = 'IDUSUARIO'
      Size = 0
    end
    object fdsMovIDCLIENTE: TFIBBCDField
      FieldName = 'IDCLIENTE'
      Size = 0
    end
    object fdsMovIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsMovDT_MOV: TFIBDateField
      FieldName = 'DT_MOV'
    end
    object fdsMovHR_MOV: TFIBTimeField
      FieldName = 'HR_MOV'
    end
    object fdsMovSTATUS: TFIBStringField
      FieldName = 'STATUS'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 200
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovPREFIXO: TFIBStringField
      FieldName = 'PREFIXO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovBAIXA_AUTOMATICA: TFIBStringField
      FieldName = 'BAIXA_AUTOMATICA'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object qryRetornaCheque: TpFIBQuery
    Transaction = trans
    Database = Conexao2
    SQL.Strings = (
      'SELECT '
      ' ID '
      'FROM '
      ' CNT_RECEBER_CHEQUE '
      'WHERE '
      ' IDRECEBER_ITEM = :IDRECEBER_ITEM')
    Left = 208
    Top = 184
  end
end
