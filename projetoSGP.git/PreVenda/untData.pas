unit untData;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, Data.DB,
  FIBDataSet, pFIBDataSet, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    conexao: TpFIBDatabase;
    trans: TpFIBTransaction;
    fdsConfig: TpFIBDataSet;
    fdsConfigID: TFIBBCDField;
    fdsConfigIDFILIAL: TFIBBCDField;
    fdsConfigRAZAO: TFIBStringField;
    fdsConfigCNPJ: TFIBStringField;
    fdsConfigIE: TFIBStringField;
    fdsConfigENDERECO: TFIBStringField;
    fdsConfigBAIRRO: TFIBStringField;
    fdsConfigIDCIDADE: TFIBBCDField;
    fdsConfigCEP: TFIBStringField;
    fdsConfigTELEFONE: TFIBStringField;
    fdsConfigEMAIL: TFIBStringField;
    fdsConfigSITE: TFIBStringField;
    fdsConfigLOGO_IMG_CAMINHO: TFIBStringField;
    fdsConfigNOME: TFIBStringField;
    fdsConfigIDCLIENTEPADRAO: TFIBBCDField;
    fdsConfigIDVENDEDORPADRAO: TFIBBCDField;
    fdsConfigFABRICA: TFIBStringField;
    fdsConfigIDFORM_PAG_PAD: TFIBBCDField;
    fdsConfigIDPORTADOR_PADRAO: TFIBBCDField;
    fdsConfigUTILIZAR_TABELA_PRECO: TFIBStringField;
    fdsConfigCLIENTE_EXIBIR_PJ: TFIBStringField;
    fdsConfigHORA_BKP: TFIBTimeField;
    fdsConfigBAIXA_AUTO_CARTAO: TFIBStringField;
    fdsConfigPARAM: TFIBStringField;
    fdsConfigCHAVE: TFIBStringField;
    fdsConfigHOJE: TFIBStringField;
    fdsConfigCIDADE: TFIBStringField;
    fdsConfigUF: TFIBStringField;
    fdsConfigCARENCIA_JUROS: TFIBIntegerField;
    fdsConfigVALOR_MULTA_ATRASO: TFIBBCDField;
    fdsConfigPDV_DESC_MAX_VENDA: TFIBBCDField;
    fdsUsuarioPermic: TpFIBDataSet;
    fdsUsuarioPermicIDUSUARIO: TFIBBCDField;
    fdsUsuarioPermicIDFILIAL: TFIBBCDField;
    fdsUsuarioPermicDT_INC: TFIBDateField;
    fdsUsuarioPermicDT_ALT: TFIBDateField;
    fdsUsuarioPermicRECEBIMENTO: TFIBStringField;
    fdsUsuarioPermicDESC_MAX_ITEM: TFIBStringField;
    fdsUsuarioPermicDESC_MAX_TOT_VENDA: TFIBStringField;
    fdsUsuarioPermicVER_MOVIMENTO: TFIBStringField;
    fdsUsuarioPermicSANGRIA: TFIBStringField;
    fdsUsuarioPermicSUPRIMENTO: TFIBStringField;
    fdsUsuarioPermicFECHAMENTO: TFIBStringField;
    fdsUsuarioPermicALTERAR_PREC_UNIT: TFIBStringField;
    fdsUsuarioPermicDEVOLUCAO: TFIBStringField;
    fdsUsuarioPermicESTOQUE_ZERADO_VENDER: TFIBStringField;
    fdsUsuarioPermicLIBERAR_CLIENTE_BLOQ: TFIBStringField;
    fdsConfigDIAS_ATRASO_BLOQUEIO: TFIBIntegerField;
    frxReport1: TfrxReport;
    frxConfig: TfrxDBDataset;
    fdsConfigNUMERO: TFIBSmallIntField;
    fdsConfigTELEFONE2: TFIBStringField;
    fdsConfigJUROS_DIA_PORCENTAGEM: TFIBBCDField;
    fdsConfigCONTROLAR_FALTAS: TFIBStringField;
    fdsConfigIDTRANPS_PADRAO: TFIBBCDField;
    fdsConfigIDVEICULO_PADRAO: TFIBBCDField;
    fdsConfigENDERECO_FANTASIA: TFIBStringField;
    fdsConfigBAIRRO_FANTASIA: TFIBStringField;
    fdsConfigESTOQUE_GERENCIAL: TFIBStringField;
    fdsConfigCFOP_PADRAO: TFIBStringField;
    fdsConfigCEST_PADRAO: TFIBStringField;
    fdsConfigCSOSN_PADRAO: TFIBStringField;
    fdsConfigMARGEN_LUCRO_PADRAO: TFIBBCDField;
    fdsConfigCARTAO_CREDITO_AVISTA: TFIBStringField;
    fdsConfigTARIFA_BOLETO: TFIBBCDField;
    fdsConfigPDV_UTILIZAR_GAVETA: TFIBStringField;
    fdsConfigFILIAL_PREC_VENDA_IGUAL: TFIBStringField;
    fdsConfigFISCAL: TFIBStringField;
    fdsConfigMODELO_IMPRESSORA: TFIBStringField;
    fdsConfigAUTO_PECAS: TFIBStringField;
    fdsConfigBAIXA_DOCS_AUTO: TFIBStringField;
    fdsConfigMODO_TAB_PRECO: TFIBStringField;
    fdsConfigTIPO_IMPRESSAO_PEDIDO: TFIBIntegerField;
    fdsConfigPEDIDO_SIMPLES: TFIBStringField;
    fdsConfigBLOQUEAR_CLIENT_ATRASO: TFIBStringField;
    fdsConfigTP_CERTIFICADO_NFE: TFIBStringField;
    fdsConfigMODELO_ETIQ_PROD: TFIBStringField;
    fdsConfigMODELO_BALANCA_GERAL: TFIBStringField;
    fdsConfigTAMANHO_CAMPOS_BAL: TFIBStringField;
    fdsConfigTIPO_COD_PROD_ETIQUETABAL: TFIBStringField;
    fdsConfigDADOS_COD_ETIQUETA_BAL: TFIBStringField;
    fdsConfigUTILIZAR_BAL_ETIQUETA: TFIBStringField;
    fdsConfigPREFIXO_EAN: TFIBIntegerField;
    fdsConfigTAB_PADRAO_PRE_VENDA: TFIBIntegerField;
  private
    { Private declarations }
  public
    const
      gridOddColor = $00D2E8D2;

    var
      idUsuario : Integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.