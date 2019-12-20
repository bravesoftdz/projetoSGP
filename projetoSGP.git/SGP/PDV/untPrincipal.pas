unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvImage, dxGDIPlusClasses, Mask, RzEdit,DateUtils,
  RzDBEdit, StdCtrls, ComCtrls, RzLabel, DB, FIBDataSet, pFIBDataSet, Printers,
  FIBDatabase, pFIBDatabase, IniFiles, FIBQuery, pFIBQuery, RzCmboBx, frxClass,
  frxDBSet, JvComponentBase, JvCipher, Vcl.Imaging.pngimage, ACBrBase, ACBrLCB,
  ACBrDevice, Math, MidasLib, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFe,
  ACBrNFe, pcnConversao, pcnConversaoNFe, ACBrUtil, ACBrPosPrinter, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, ACBrNFeDANFeRLClass, ACBrCalculadora, ACBrDFeSSL,
  RzPanel, Vcl.Buttons, RzButton, Datasnap.DBClient, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrBAL, System.Actions, Vcl.ActnList, ACBrCargaBal,synaser,
  ACBrECF, ACBrGAV, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMemo, Vcl.Menus,
  ACBrDANFCeFortesFr, pFIBClientDataSet;

type
  TfrmPrincipal = class(TForm)
    JvImage1: TJvImage;
    lblProduto: TRzLabel;
    redItens: TRzRichEdit;
    edtTotalVenda: TRzDBEdit;
    edtItemDesc: TRzDBEdit;
    edtItemPrec: TRzDBEdit;
    imgItem: TJvImage;
    dsItens: TDataSource;
    fdsVendaItens: TpFIBDataSet;
    dsVendaItens: TDataSource;
    fdsVenda: TpFIBDataSet;
    dsVenda: TDataSource;
    fdsVendaID: TFIBBCDField;
    fdsVendaDT_INC: TFIBDateField;
    fdsVendaSTATUS: TFIBStringField;
    fdsVendaIDCLIENTE: TFIBBCDField;
    fdsVendaIDVENDEDOR: TFIBBCDField;
    fdsVendaIDFORMA_PAG: TFIBBCDField;
    fdsVendaVLR_TOTITEM: TFIBBCDField;
    fdsVendaVLR_DESCONTO: TFIBBCDField;
    fdsVendaVLR_FRETE: TFIBBCDField;
    fdsVendaVLR_TOTAL: TFIBBCDField;
    fdsVendaPESO: TFIBBCDField;
    fdsVendaPREFIXO: TFIBStringField;
    fdsVendaDT_FECHAMENTO: TFIBDateField;
    fdsVendaSUBTRIBUTARIA: TFIBBCDField;
    fdsVendaItensIDVENDA: TFIBBCDField;
    fdsVendaItensITEM: TFIBSmallIntField;
    fdsVendaItensIDPROD_ITEM: TFIBBCDField;
    fdsVendaItensDT_INC: TFIBDateField;
    fdsVendaItensQTN: TFIBBCDField;
    fdsVendaItensVLR_UNITARIO: TFIBBCDField;
    fdsVendaItensVLR_TOTAL: TFIBBCDField;
    fdsVendaItensPESO: TFIBBCDField;
    fdsVendaItensMOTIVO_RETORNO: TFIBStringField;
    fdsVendaItensREFERENCIA: TFIBStringField;
    edtItemRef: TRzEdit;
    lblNumCaixa: TRzLabel;
    lblOperador: TRzLabel;
    fdsMovimentoCaixa: TpFIBDataSet;
    dsMovimentoCaixa: TDataSource;
    qryComand: TpFIBQuery;
    fdsVendaItensENVIADO_WEB: TFIBStringField;
    fdsVendaItensIDFILIAL: TFIBBCDField;
    fdsVendaENVIADO_WEB: TFIBStringField;
    fdsVendaIDCAIXA: TFIBBCDField;
    fdsVendaIDFILIAL: TFIBBCDField;
    fdsVendaENTREGAR: TFIBStringField;
    fdsVendaVLR_ENTRADA: TFIBBCDField;
    frxVenda: TfrxDBDataset;
    frxVendaItens: TfrxDBDataset;
    fdsVendaItensENTREGAR: TFIBStringField;
    fdsVendaItensNOME: TFIBStringField;
    fdsVendaNOME: TFIBStringField;
    fdsVendaCPF: TFIBStringField;
    JvVigenereCipher1: TJvVigenereCipher;
    fdsVendaItensVLR_DESC_ACRE: TFIBBCDField;
    fdsVendaItensTIPO_DESC_ACRE: TFIBStringField;
    fdsVendaTOT_PARCELA: TFIBSmallIntField;
    fdsVendaVLR_VENDA: TFIBBCDField;
    fdsMovimentoCaixaID: TFIBBCDField;
    fdsMovimentoCaixaIDCAIXA: TFIBBCDField;
    fdsMovimentoCaixaIDFILIAL: TFIBBCDField;
    fdsMovimentoCaixaDT_INC: TFIBDateField;
    fdsMovimentoCaixaHR_INC: TFIBTimeField;
    fdsMovimentoCaixaIDUSUARIO: TFIBBCDField;
    fdsMovimentoCaixaCONTROLE: TFIBBCDField;
    fdsMovimentoCaixaTIPO: TFIBStringField;
    fdsMovimentoCaixaMOEDA: TFIBStringField;
    fdsMovimentoCaixaVLR_ENTRADA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VENDA: TFIBBCDField;
    fdsMovimentoCaixaVLR_TOTAL: TFIBBCDField;
    fdsMovimentoCaixaVLR_DESCONTO: TFIBBCDField;
    fdsMovimentoCaixaTROCO: TFIBBCDField;
    fdsMovimentoCaixaENVIADO_WEB: TFIBStringField;
    fdsMovimentoCaixaIDMOVIMENTO: TFIBBCDField;
    fdsMovimentoCaixaHISTORICO: TFIBStringField;
    fdsMovimentoCaixaVLR_CHEQUE: TFIBBCDField;
    fdsMovimentoCaixaVLR_CARTAO: TFIBBCDField;
    fdsMovimentoCaixaVLR_NOTA: TFIBBCDField;
    fdsMovimentoCaixaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovimentoCaixaVLR_TICKET: TFIBBCDField;
    ACBrLCB1: TACBrLCB;
    redTempItens: TRzRichEdit;
    lblVlrCredito: TRzLabel;
    fdsMovimentoCaixaVLR_CREDITO: TFIBBCDField;
    fdsVendaVLR_RETORNADO: TFIBBCDField;
    fdsVendaDT_PAGAMENTO: TFIBDateField;
    fdsItens: TpFIBDataSet;
    fdsItensID: TFIBBCDField;
    fdsItensDT_INC: TFIBDateField;
    fdsItensDT_ALT: TFIBDateField;
    fdsItensIDPRODUTO: TFIBBCDField;
    fdsItensSTATUS: TFIBStringField;
    fdsItensNOME: TFIBStringField;
    fdsItensREFERENCIA: TFIBStringField;
    fdsItensIDTAMANHO: TFIBBCDField;
    fdsItensIDCOR: TFIBBCDField;
    fdsItensPESO: TFIBBCDField;
    fdsItensPREC_VENDA: TFIBBCDField;
    fdsItensPREC_CUSTO: TFIBBCDField;
    fdsItensENVIADO_WEB: TFIBStringField;
    fdsItensPREC_TAB1: TFIBBCDField;
    fdsItensPREC_TAB2: TFIBBCDField;
    fdsItensPREC_TAB3: TFIBBCDField;
    fdsItensPREC_TAB4: TFIBBCDField;
    fdsItensPREC_TAB5: TFIBBCDField;
    fdsItensPREC_TAB6: TFIBBCDField;
    fdsItensCOD_FABRICA: TFIBStringField;
    fdsItensPREC_ULTIMO_CUSTO: TFIBBCDField;
    fdsItensDT_VALIDADE: TFIBDateField;
    fdsItensMARGEM_LUCRO: TFIBBCDField;
    fdsItensDESC_MAX1: TFIBBCDField;
    fdsItensDESC_MAX2: TFIBBCDField;
    fdsItensSALDO: TFIBBCDField;
    fdsItensCOD_FABRICANTE: TFIBStringField;
    fdsItensCOMISSAO_DN: TFIBBCDField;
    fdsItensCOMISSAO_CH: TFIBBCDField;
    fdsItensCOMISSAO_CT: TFIBBCDField;
    fdsItensUNIDADE: TFIBStringField;
    fdsCliente: TpFIBDataSet;
    frxCliente: TfrxDBDataset;
    frxReceber_Item: TfrxDBDataset;
    fdsCntReceber_Item: TpFIBDataSet;
    fdsCntReceber_ItemPARCELA: TFIBStringField;
    fdsCntReceber_ItemDT_VENC: TFIBDateField;
    fdsCntReceber_ItemVALOR: TFIBBCDField;
    fdsVendaItensTIPO_RETORNO: TFIBStringField;
    fdsVendaItensCOD_FABRICA: TFIBStringField;
    fdsVendaItensUNIDADE: TFIBStringField;
    fdsVendaItensNCM: TFIBStringField;
    fdsVendaItensCEST: TFIBStringField;
    fdsClienteID: TFIBBCDField;
    fdsClienteDT_INC: TFIBDateField;
    fdsClienteDT_ALT: TFIBDateField;
    fdsClienteSTATUS: TFIBStringField;
    fdsClienteNOME: TFIBStringField;
    fdsClienteDT_NASC: TFIBDateField;
    fdsClienteTELEFONE: TFIBStringField;
    fdsClienteENDERECO: TFIBStringField;
    fdsClienteBAIRRO: TFIBStringField;
    fdsClienteIDCIDADE: TFIBBCDField;
    fdsClienteCEP: TFIBStringField;
    fdsClienteRG: TFIBStringField;
    fdsClienteCPF: TFIBStringField;
    fdsClienteSEXO: TFIBStringField;
    fdsClientePROFISSAO: TFIBStringField;
    fdsClienteEMAIL: TFIBStringField;
    fdsClienteCELULAR: TFIBStringField;
    fdsClienteTIPO: TFIBStringField;
    fdsClienteRAZAOSOCIAL: TFIBStringField;
    fdsClienteCONTATO: TFIBStringField;
    fdsClienteCNPJ: TFIBStringField;
    fdsClienteIE: TFIBStringField;
    fdsClienteIDVENDEDOR: TFIBBCDField;
    fdsClienteEMAIL_NFE: TFIBStringField;
    fdsClienteKM_TOTAL: TFIBSmallIntField;
    fdsClienteDT_ULTIMO_CONTATO: TFIBDateField;
    fdsClienteLIMITE_CREDITO: TFIBBCDField;
    fdsClienteIDFORMA_PAGAMENTO: TFIBBCDField;
    fdsClienteIDROTA: TFIBBCDField;
    fdsClienteENVIADO_WEB: TFIBStringField;
    fdsClienteIDFILIAL: TFIBBCDField;
    fdsClienteREFERENCIA: TFIBStringField;
    fdsClientePROPRIETARIO: TFIBStringField;
    fdsClienteCREDITO: TFIBBCDField;
    fdsClienteTEM_EMPILHADEIRA: TFIBStringField;
    fdsClienteIDCLIENTE_APP: TFIBBCDField;
    fdsClienteCIDADE: TFIBStringField;
    fdsClienteUF: TFIBStringField;
    fdsClienteCODIGO_MUNICIPIO: TFIBBCDField;
    fdsVendaVISUALIZADO: TFIBStringField;
    fdsVendaCODIGO_NFCE: TFIBIntegerField;
    fdsVendaTIPO: TFIBStringField;
    ACBrNFe1: TACBrNFe;
    fdsVendaCHAVE_CONSULTA: TFIBStringField;
    ACBrPosPrinter1: TACBrPosPrinter;
    fdsVendaItensIBPT_IMPORTADOS_FEDERAL: TFIBBCDField;
    fdsVendaItensIBPT_NACIONA_FEDERAL: TFIBBCDField;
    fdsCntReceber_ItemPREFIXO: TFIBStringField;
    edtItemQtn: TRzEdit;
    fdsClienteLOCAL_TRABALHO: TFIBStringField;
    fdsClienteNUMERO: TFIBStringField;
    ACBrCalculadora1: TACBrCalculadora;
    transFrmPrincipal: TpFIBTransaction;
    fdsVendaNUMERO_PROTOCOLO: TFIBStringField;
    fdsCntReceber_ItemDT_PAG: TFIBDateField;
    fdsCntReceber_ItemVALOR_PAGO: TFIBBCDField;
    fdsCntReceber_ItemREFERENCIA: TFIBStringField;
    fdsVendaTIPO_DESC_ACRESC: TFIBStringField;
    frxMovCaixa: TfrxDBDataset;
    fdsNF_Cancelada: TpFIBDataSet;
    fdsItensIDITEM: TFIBBCDField;
    fdsItensIDFILIAL: TFIBBCDField;
    fdsItensSALDO_GERENCIAL: TFIBBCDField;
    fdsItensSALDO_MINIMO: TFIBBCDField;
    gdrItens: TJvDBGrid;
    pnlEdicao: TRzPanel;
    BitBtn1: TBitBtn;
    cbxComponentes: TRzComboBox;
    btnComponenteLeft: TRzBitBtn;
    btnComponenteRight: TRzBitBtn;
    btnComponenteUp: TRzBitBtn;
    btnComponenteDown: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    edtLargura: TRzEdit;
    edtAltura: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    edtEsquerda: TRzEdit;
    edtFonteSize: TRzEdit;
    RzLabel5: TRzLabel;
    edtTop: TRzEdit;
    RzLabel6: TRzLabel;
    fdsVendaVENDEDOR: TFIBStringField;
    cdsFormaPagamento: TClientDataSet;
    frxFormaPagamento: TfrxDBDataset;
    cdsFormaPagamentoMOEDA: TStringField;
    cdsFormaPagamentoVALOR: TFloatField;
    fdsVendaENDERECO: TFIBStringField;
    fdsVendaNUMERO: TFIBStringField;
    fdsVendaBAIRRO: TFIBStringField;
    fdsVendaCIDADE: TFIBStringField;
    imgNFCe: TJvImage;
    fdsVendaItensCFOP: TFIBStringField;
    fdsVendaItensCST_CSOSN: TFIBStringField;
    fdsItensENVIADO_WEB1: TFIBStringField;
    fdsItensCFOP: TFIBStringField;
    fdsItensCSOSN: TFIBStringField;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ActionList1: TActionList;
    ACBrBAL1: TACBrBAL;
    fdsItensUTILIZA_BALANCA: TFIBStringField;
    fdsVendaItensUTILIZA_BALANCA: TFIBStringField;
    fdsVendaCELULAR: TFIBStringField;
    fdsVendaTELEFONE: TFIBStringField;
    fdsVendaCOMPLEMENTO: TFIBStringField;
    fdsVendaREFERENCIA: TFIBStringField;
    fdsNF_CanceladaID: TFIBBCDField;
    fdsNF_CanceladaIDFILIAL: TFIBBCDField;
    fdsNF_CanceladaDT_INC: TFIBDateField;
    fdsNF_CanceladaIDNOTA: TFIBBCDField;
    fdsNF_CanceladaIDCLIENTE: TFIBBCDField;
    fdsNF_CanceladaDT_EMISSAO: TFIBDateField;
    fdsNF_CanceladaVLR_TOTAL: TFIBBCDField;
    fdsNF_CanceladaCHAVE_CONSULTA_NF: TFIBStringField;
    fdsNF_CanceladaNUMERO_PROTOCOLO_NF: TFIBStringField;
    fdsNF_CanceladaCHAVE_CONSULTA_CANC: TFIBStringField;
    fdsNF_CanceladaNUMERO_PROTOCOLO_CANC: TFIBStringField;
    fdsNF_CanceladaENVIADO_WEB: TFIBStringField;
    fdsNF_CanceladaMODELO_NOTA: TFIBStringField;
    fdsNF_Inutilizada: TpFIBDataSet;
    fdsNF_InutilizadaID: TFIBBCDField;
    fdsNF_InutilizadaIDFILIAL: TFIBBCDField;
    fdsNF_InutilizadaDT_INC: TFIBDateField;
    fdsNF_InutilizadaIDNOTA: TFIBBCDField;
    fdsNF_InutilizadaIDCLIENTE: TFIBBCDField;
    fdsNF_InutilizadaDT_EMISSAO: TFIBDateField;
    fdsNF_InutilizadaCODIGO_NF: TFIBIntegerField;
    fdsNF_InutilizadaCHAVE_NF: TFIBStringField;
    fdsNF_InutilizadaPROTOCOLO_IN: TFIBStringField;
    fdsNF_InutilizadaENVIADO_WEB: TFIBStringField;
    fdsNF_InutilizadaMODELO_NOTA: TFIBStringField;
    fdsNF_InutilizadaVLR_TOTAL: TFIBBCDField;
    fdsMovCaixaAbertura: TpFIBDataSet;
    frxMovCaixaAbertura: TfrxDBDataset;
    fdsMovCaixaAberturaID: TFIBBCDField;
    fdsMovCaixaAberturaIDCAIXA: TFIBBCDField;
    fdsMovCaixaAberturaIDFILIAL: TFIBBCDField;
    fdsMovCaixaAberturaDT_INC: TFIBDateField;
    fdsMovCaixaAberturaHR_INC: TFIBTimeField;
    fdsMovCaixaAberturaIDUSUARIO: TFIBBCDField;
    fdsMovCaixaAberturaCONTROLE: TFIBBCDField;
    fdsMovCaixaAberturaTIPO: TFIBStringField;
    fdsMovCaixaAberturaMOEDA: TFIBStringField;
    fdsMovCaixaAberturaVLR_ENTRADA: TFIBBCDField;
    fdsMovCaixaAberturaVLR_CHEQUE: TFIBBCDField;
    fdsMovCaixaAberturaVLR_CARTAO: TFIBBCDField;
    fdsMovCaixaAberturaVLR_NOTA: TFIBBCDField;
    fdsMovCaixaAberturaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovCaixaAberturaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovCaixaAberturaVLR_TICKET: TFIBBCDField;
    fdsMovCaixaAberturaVLR_VENDA: TFIBBCDField;
    fdsMovCaixaAberturaVLR_TOTAL: TFIBBCDField;
    fdsMovCaixaAberturaVLR_DESCONTO: TFIBBCDField;
    fdsMovCaixaAberturaTROCO: TFIBBCDField;
    fdsMovCaixaAberturaENVIADO_WEB: TFIBStringField;
    fdsMovCaixaAberturaIDMOVIMENTO: TFIBBCDField;
    fdsMovCaixaAberturaHISTORICO: TFIBStringField;
    fdsMovCaixaAberturaVLR_CREDITO: TFIBBCDField;
    fdsMovCaixaAberturaOPERADOR: TFIBStringField;
    fdsVendaItensQTN_RETORNO: TFIBBCDField;
    fdsVendaDATA_EMISSAO: TFIBDateField;
    fdsVendaItensPRECO_CUSTO: TFIBBCDField;
    fdsVendaItensDT_EMISSAO: TFIBDateField;
    fdsVendaItensQTN_RESTANTE: TFIBBCDField;
    qryVerificaPagReceber: TpFIBQuery;
    TimerDataHora: TTimer;
    BitBtn2: TBitBtn;
    lblDataHora: TLabel;
    fdsTabPrecos: TpFIBDataSet;
    fdsTabPrecosID: TFIBBCDField;
    fdsTabPrecosDESCRICAO1: TFIBStringField;
    fdsTabPrecosDESCRICAO2: TFIBStringField;
    fdsTabPrecosDESCRICAO3: TFIBStringField;
    fdsTabPrecosDESCRICAO4: TFIBStringField;
    fdsTabPrecosDESCRICAO5: TFIBStringField;
    fdsTabPrecosDESCRICAO6: TFIBStringField;
    fdsTabPrecosPDV_DES1: TFIBStringField;
    fdsTabPrecosPDV_DES2: TFIBStringField;
    fdsTabPrecosPDV_DES3: TFIBStringField;
    fdsTabPrecosPDV_DES4: TFIBStringField;
    fdsTabPrecosPDV_DES5: TFIBStringField;
    fdsTabPrecosPDV_DES6: TFIBStringField;
    fdsTabPrecosPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE6: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT1: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT2: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT3: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT4: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT5: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT6: TFIBBCDField;
    fdsItensDESC_MAX3: TFIBBCDField;
    fdsItensDESC_MAX4: TFIBBCDField;
    fdsVendaNUM_ALEATORIO_NFCE: TFIBIntegerField;
    lblTabelaPreco: TRzLabel;
    fdsVendaSERIE: TFIBIntegerField;
    fdsItensCST_PIS: TFIBStringField;
    fdsItensCST_COFINS: TFIBStringField;
    fdsVendaItensCST_PIS: TFIBStringField;
    fdsVendaItensCST_COFINS: TFIBStringField;
    fdsItensALQ_IPI: TFIBBCDField;
    fdsItensALIQ_ICMS: TFIBFloatField;
    fdsVendaItensVLR_IPI: TFIBBCDField;
    fdsVendaItensVLR_ICMS: TFIBBCDField;
    fdsVendaItensALIQ_ICMS: TFIBFloatField;
    fdsItensIDGRUPO: TFIBBCDField;
    fdsVendaItensIDGRUPO: TFIBBCDField;
    fdsVendaItensPREC_CUSTO_MEDIO: TFIBBCDField;
    fdsItensPREC_CUSTO_MEDIO: TFIBBCDField;
    fdsVendaOBS: TFIBStringField;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    fdsVendaItensIBPT_ESTADUAL: TFIBBCDField;
    fdsVendaItensIBPT_MUNICIPAL: TFIBBCDField;
    TimerEventos: TTimer;
    imgVencido: TImage;
    ImgAVencer: TImage;
    qryUpdateVenda: TpFIBQuery;
    qryVerificaCntReceber: TpFIBQuery;
    qryDeletaReceber: TpFIBQuery;
    cdsTransmitirVendas: TpFIBClientDataSet;
    cdsTransmitirVendasIDVENDA: TIntegerField;
    cdsTransmitirVendasSTATUS: TStringField;
    ExibeNumeroNota: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    Function OpenComm(NomePorta, ConfigPorta: String):Boolean;
    procedure ACBrLCB1LeCodigo(Sender: TObject);
    procedure edtItemQtnKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemRefKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemDescKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtItemDescExit(Sender: TObject);
    procedure edtItemPrecKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemPrecExit(Sender: TObject);
    procedure edtItemQtnExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbxComponentesChange(Sender: TObject);
    procedure btnComponenteUpClick(Sender: TObject);
    procedure btnComponenteDownClick(Sender: TObject);
    procedure btnComponenteLeftClick(Sender: TObject);
    procedure btnComponenteRightClick(Sender: TObject);
    procedure edtLarguraExit(Sender: TObject);
    procedure edtLarguraKeyPress(Sender: TObject; var Key: Char);
    procedure edtAlturaKeyPress(Sender: TObject; var Key: Char);
    procedure edtAlturaExit(Sender: TObject);
    procedure edtEsquerdaKeyPress(Sender: TObject; var Key: Char);
    procedure edtEsquerdaExit(Sender: TObject);
    procedure edtFonteSizeKeyPress(Sender: TObject; var Key: Char);
    procedure edtFonteSizeExit(Sender: TObject);
    procedure edtTopKeyPress(Sender: TObject; var Key: Char);
    procedure edtTopExit(Sender: TObject);
    procedure fdsVendaItensBeforeOpen(DataSet: TDataSet);
    procedure edtItemQtnEnter(Sender: TObject);
    procedure gdrItensEnter(Sender: TObject);
    procedure TimerDataHoraTimer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TimerEventosTimer(Sender: TObject);
    procedure imgVencidoClick(Sender: TObject);
    procedure ExibeNumeroNotaTimer(Sender: TObject);
  private
    function RetornaItem(): Boolean;
    function FormataNumeroItem(numero: integer): string;
    procedure FinalizarVenda;
    procedure ResetarCaixa;
    procedure TabelaPrecos;
    procedure CancelaItem;
    procedure AbandonaVenda;
    function VerificaPermicao(campo : string) : Boolean;
    procedure DevolucaoTroca;
    procedure ConsultarVendas;
    procedure BuscarVenda(idVenda: integer);
    procedure ExcluirReceber(id : integer);
    procedure ExcluirRecebimento(idReceber:Integer);
    procedure AcertarVlrMoviNotaDevolvida(id, idFormaPag : integer);
    function ExcluirParteReceber(id: Integer; vlrDescontar : Double):double;
    procedure FecharSistema;
    procedure LeIni;
    procedure ConfiguraBalanca;
    procedure AbrirCaixa;
    procedure MovimentoCaixa;
    procedure LancNumPreVenda;
    procedure Configuracoes;
    procedure PreVenda(numero : string);
    procedure RestaurarVenda;
    procedure Opcoes;
    procedure ConfiguraLayout;
    procedure CadastroCliente;
    procedure ControleRegistro;
    procedure Recebimento;
    procedure OrdemServico;
    function RetornaIdCliente(): integer;
    procedure AppMessage(var Msg: TMSG; var HAndled: Boolean);
    procedure VerificaTipoImpressao;
    procedure ImpressoraCupom;
    procedure ImprimeNotaFastReport;
    procedure ImprimeCupomFastReport;
    procedure ImpressoraA4;
    procedure ImprimirComprovanteDev(relatorio:String);
    procedure ConectaImpressora;
    procedure PreparaEmissaoNFCe;
    procedure ReimprimirDANFE;
    procedure ReimprimirNOTA;
    procedure ConfiguraNFCe;
    procedure PreparaCancelarNFCe;
    procedure PreparaInutilizar;
    procedure AlteraPrecUnitario;
    procedure VerificaDescAcreItem;
    procedure FinalizaItem;
    procedure ComponentesEdicao;
    procedure LeBalanca;
    procedure ConsultaItem;
    procedure TrataCodigoEtquetaBal;
    procedure ImprimeCupomSimplificado;
    procedure ImprimeViaAssinatura;
    procedure SelecionaTabPreco;
    function  VerificaTabelaPrecos(Tabela:integer=0):String;
    procedure SelectValoresTabPrecos(Tabela:Integer);
  public
  procedure PescCaixa;
  procedure AbrirGaveta;
    var
      idCliente: integer;
      selItensEntregar, telaPrimeiroVencimento, diasPrimeiroVenc, TPCERTIFICADO : string;
      debitoTotal, custoTabPrec, pesqPorCodCli : string;
      imprimir : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;
  statusCaixa: string[2]; //'LV': Livre / 'VE': VENDA
  idVenda, idItem, totItem, idProduto, idPreVenda, idVendaDevolvida,idGrupo: integer;
  itemVlrUnitario, itemPeso,precoCustoItem, vlrTotal, vlrDescMax, vlrDevolucao, vlrEntrada, vlrDevRestante,vlrIPI,vlrICMS,PrecCustoMedioItem : Double;
  imgPadrao, nome, endereco, bairrocidade, telefone, impcupom, itenscupnota, cliente, exibtotrecclie, CFOP_VENDA, CSOSN_VENDA,CST_PIS,CST_COFINS: string;
  exibirImgItem, LeuIni: Boolean;
  cupom, cupomConfigInicio,utBalanca, alertaEstoqueVazio, perguntaImp, perguntaViaCli, abilitaPrecUnit, NFCE, entregarDefault: string;
  hComm: THandle;
  iRet: LongBool;
  redTempItens : TRzRichEdit;
  modoPreVenda, modoEdicaoTela, emitirFiscal : Boolean;
  prodBalLeitorSereal,pegaCodDeLeitor,leitorSerial:Boolean;
  pesoProdutoBalEtiq,letra:String ;

implementation

uses untData, untPesqProdutoItens, untVendaFinalizacao, untVendaInfoGeral,
  untTabelaPrecos, untCancelarItem, untAberturaCaixa, untLogin,
  untMovimentacaoCaixa, uUtils, untDescAcresc, untCadClientes, untPesqCliente,
  untCntReceber, uRegistro, untOrdemServico, untOrdemServicoSimples,
  untDevTroca, untFechamentoCaixa, untOpcoes, untSelPreVenda, untRestaurarVenda,
  untNumeroPreVenda, untParamDevTroca, untSelTabPreco, untStautsNfCe, untConfig,
  untVendas, uVerificaPermicao, untInutilizarNFCe, untMensagens;

{$R *.dfm}

procedure TfrmPrincipal.AbandonaVenda;
begin
  if statusCaixa = 'VE' then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja realmente abandonar a Venda atual?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            idNo: begin
                      Abort;
                   end;
          end;

    with fdsVenda do
    begin
      Edit;
      fdsVendaSTATUS.AsString := 'CA';
      Post;
      Close;
    end;

    if fdsVendaItens.State in [dsInsert, dsEdit] then
    begin
      fdsVendaItens.Cancel;
      gdrItens.Enabled:= True;
    end;
    transFrmPrincipal.CommitRetaining;
    ResetarCaixa;
  end;

end;

procedure TfrmPrincipal.AppMessage(var Msg: TMSG; var HAndled: Boolean);
begin
  Handled := False;
  case Msg.Message of
    WM_SYSKEYDOWN:
      if Msg.wParam = VK_F4 then
        Handled := True; // Bloqueia o ALT+F4 end;
  end;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
var
  ArquivoINI: TIniFile;
begin
  ArquivoINI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');

  ArquivoINI.WriteString('POS_LBLPRODUTO', 'LEFT', IntToStr(lblProduto.Left));
  ArquivoINI.WriteString('POS_LBLPRODUTO', 'TOP', IntToStr(lblProduto.Top));
  ArquivoINI.WriteString('POS_LBLPRODUTO', 'WIDTH', IntToStr(lblProduto.Width));
  ArquivoINI.WriteString('POS_LBLPRODUTO', 'FONT', IntToStr(lblProduto.Font.Size));

  ArquivoINI.WriteString('POS_IMGITEM', 'LEFT', IntToStr(imgItem.Left));
  ArquivoINI.WriteString('POS_IMGITEM', 'TOP', IntToStr(imgItem.Top));
  ArquivoINI.WriteString('POS_IMGITEM', 'WIDTH', IntToStr(imgItem.Width));

  ArquivoINI.WriteString('POS_EDTITEMREF', 'LEFT', IntToStr(edtItemRef.Left));
  ArquivoINI.WriteString('POS_EDTITEMREF', 'TOP', IntToStr(edtItemRef.Top));
  ArquivoINI.WriteString('POS_EDTITEMREF', 'WIDTH', IntToStr(edtItemRef.Width));
  ArquivoINI.WriteString('POS_EDTITEMREF', 'FONT', IntToStr(edtItemRef.Font.Size));

  ArquivoINI.WriteString('POS_EDTITEMPREC', 'LEFT', IntToStr(edtItemPrec.Left));
  ArquivoINI.WriteString('POS_EDTITEMPREC', 'TOP', IntToStr(edtItemPrec.Top));
  ArquivoINI.WriteString('POS_EDTITEMPREC', 'WIDTH', IntToStr(edtItemPrec.Width));
  ArquivoINI.WriteString('POS_EDTITEMPREC', 'FONT', IntToStr(edtItemPrec.Font.Size));
  ArquivoINI.WriteString('POS_EDTITEMPREC', 'HEIGHT', IntToStr(edtItemPrec.ClientHeight));

  ArquivoINI.WriteString('POS_EDTITEMQTN', 'LEFT', IntToStr(edtItemQtn.Left));
  ArquivoINI.WriteString('POS_EDTITEMQTN', 'TOP', IntToStr(edtItemQtn.Top));
  ArquivoINI.WriteString('POS_EDTITEMQTN', 'WIDTH', IntToStr(edtItemQtn.Width));
  ArquivoINI.WriteString('POS_EDTITEMQTN', 'FONT', IntToStr(edtItemQtn.Font.Size));

  ArquivoINI.WriteString('POS_EDTITEMDESC', 'LEFT', IntToStr(edtItemDesc.Left));
  ArquivoINI.WriteString('POS_EDTITEMDESC', 'TOP', IntToStr(edtItemDesc.Top));
  ArquivoINI.WriteString('POS_EDTITEMDESC', 'WIDTH', IntToStr(edtItemDesc.Width));
  ArquivoINI.WriteString('POS_EDTITEMDESC', 'FONT', IntToStr(edtItemDesc.Font.Size));
  ArquivoINI.WriteString('POS_EDTITEMDESC', 'HEIGHT',IntToStr(edtItemDesc.ClientHeight));

  ArquivoINI.WriteString('POS_EDTTOTALVENDA', 'LEFT', IntToStr(edtTotalVenda.Left));
  ArquivoINI.WriteString('POS_EDTTOTALVENDA', 'TOP', IntToStr(edtTotalVenda.Top));
  ArquivoINI.WriteString('POS_EDTTOTALVENDA', 'WIDTH', IntToStr(edtTotalVenda.Width));
  ArquivoINI.WriteString('POS_EDTTOTALVENDA', 'FONT', IntToStr(edtTotalVenda.Font.Size));
  ArquivoINI.WriteString('POS_EDTTOTALVENDA', 'HEIGHT', IntToStr(edtTotalVenda.ClientHeight));

  ArquivoINI.WriteString('POS_REDITENS', 'LEFT', IntToStr(redItens.Left));
  ArquivoINI.WriteString('POS_REDITENS', 'TOP', IntToStr(redItens.Top));
  ArquivoINI.WriteString('POS_REDITENS', 'WIDTH', IntToStr(redItens.Width));
  ArquivoINI.WriteString('POS_REDITENS', 'FONT', IntToStr(redItens.Font.Size));

  ArquivoINI.WriteString('POS_GDRITENS', 'LEFT', IntToStr(gdrItens.Left));
  ArquivoINI.WriteString('POS_GDRITENS', 'TOP', IntToStr(gdrItens.Top));
  ArquivoINI.WriteString('POS_GDRITENS', 'WIDTH', IntToStr(gdrItens.Width));
  ArquivoINI.WriteString('POS_GDRITENS', 'HEIGHT', IntToStr(gdrItens.Height));
  ArquivoINI.WriteString('POS_GDRITENS', 'FONT', IntToStr(gdrItens.Font.Size));

  modoEdicaoTela := False;
  lblProduto.Caption := 'Caixa Livre';
  pnlEdicao.Visible := False;





end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin

  ShowMessage('Largura: ' + IntToStr(Screen.Width) + #13 +
              'Altura: ' + IntToStr(Screen.Height));
end;

procedure TfrmPrincipal.AbrirCaixa;
begin
  fdsMovimentoCaixa.ParamByName('IDCAIXA').AsInteger := DM.numCaixa;
  fdsMovimentoCaixa.Open;

  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  WITH DM.fdsGen do
  begin
    close;
    paramByName('GEN').AsString:= Dm.fdsCaixaGENERATION.AsString;
    prepare;
    open;
  end;

  if fdsMovimentoCaixaTIPO.AsString = 'FE' then
  begin
    Try
     frmAberturaCaixa := TfrmAberturaCaixa.Create(nil);
     frmAberturaCaixa.operador := DM.operador;
     frmAberturaCaixa.idUsuario := DM.idUsuario;
     frmAberturaCaixa.caixaNum := DM.numCaixa;
     frmAberturaCaixa.ShowModal;
    Finally
     if not(frmAberturaCaixa.ModalResult = mrOk) then
     begin
        Application.Terminate;
      frmAberturaCaixa.Free;
     end
     else
     begin
       frmAberturaCaixa.Free;
        Case MessageBox(Application.Handle, Pchar('Deseja imprimir a Abertura?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes:
          begin
            //ImprimirComprovante;
             with fdsMovCaixaAbertura do
             begin
              Close;
              ParamByName('IDCAIXA').AsInteger := DM.numCaixa;
              ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              ParamByName('IDUSUARIO').AsInteger:= DM.idUsuario;
              ParamByName('CONTROLE').AsInteger:= + DM.fdsCaixaCONTROLE.AsInteger;
              Prepare;
              Open;
             end;
            DM.frxReport1.Clear;
            DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxComprovanteAbertura.fr3');
            DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
            DM.frxReport1.SelectPrinter;
            DM.frxReport1.PrintOptions.ShowDialog := False;
            DM.frxReport1.PrepareReport(True);
            //DM.frxReport1.ShowReport(True);     //lembrar de comentar
            DM.frxReport1.Print;
          end;
        end;
     end;

    End;
  end
  else
  begin
    Case MessageBox(Application.Handle, Pchar('Caixa ainda em aberto, deseja fechar o Caixa?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes: begin
              statusCaixa := 'LV';
              MovimentoCaixa;
           end;
    end;
  end;
end;

procedure TfrmPrincipal.AbrirGaveta;
begin
  //vitor configuracao abrir por comando F9
  if DM.fdsCaixaPDV_UTILIZA_GAVETA.AsString = 'S' then
  begin
     //ShowMessage('abrindo..');
    ACBrNFeDANFeESCPOS1.PosPrinter.AbrirGaveta;
  end;
     //ShowMessage('abriu');
end;

procedure TfrmPrincipal.ACBrLCB1LeCodigo(Sender: TObject);
begin
  if edtItemRef.Focused then
  begin
   edtItemRef.Text := ACBrLCB1.UltimoCodigo;
   Sleep(200);
   keybd_event(VK_RETURN, 0, 0, 0);
  end;
end;

procedure TfrmPrincipal.AcertarVlrMoviNotaDevolvida(id, idFormaPag: integer);
var
  campo : string;
begin
  if (idFormaPag = 2) or (idFormaPag = 3) then
    campo := 'MC.VLR_CARTAO';

  if idFormaPag = 6 then
    campo := 'MC.VLR_NOTA';

  if idFormaPag = 4 then
    campo := 'MC.VLR_CHEQUE';
 //N�o sei pq mas esta acertando o movimento da venda q esta sendo devolvida
 with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE MOVIMENTO_CAIXA MC SET ' + campo + ' = (' + campo + ' - :VLRDEVOLVER), MC.VLR_VENDA = (MC.VLR_VENDA - :VLRDEVOLVER), MC.VLR_TOTAL = (MC.VLR_TOTAL - :VLRDEVOLVER)');
    SQL.Add(' WHERE MC.TIPO = ' + QuotedStr('VE') + ' AND MC.IDMOVIMENTO = ' + IntToStr(id) + ' AND MC.CONTROLE = ' + DM.fdsCaixaCONTROLE.AsString);
    ParamByName('VLRDEVOLVER').AsFloat := vlrDevolucao;//- vlrEntrada;   //parei ak na quest�o do valor de entrada
    Prepare;
    ExecQuery;
  end;
  transFrmPrincipal.CommitRetaining;
end;

procedure TfrmPrincipal.AlteraPrecUnitario;
var
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
  itemVlrUntTemp : Double;
begin
   if (Trim(edtItemPrec.Text) = 'R$ 0,00') or (Trim(edtItemPrec.Text) = 'R$0,00')then
   begin
    Application.MessageBox('Desculpe, Nenhum valor unit�rio  informado! ', 'Valor Inv�lido.', MB_OK+MB_ICONERROR);
    edtItemQtn.SetFocus;
    Abort;
   end;

  if Trim(edtItemPrec.Text) <> EmptyStr  then
  begin
    temPermicao := False;
    if Length(edtItemPrec.Text) > 11 then
    begin
      edtItemQtn.SetFocus;
      fdsVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
      Application.MessageBox('Desculpe, formato �digitado do Pre�o Unit�rio est� inv�lido.', 'Formato Inv�lido.', MB_OK+MB_ICONERROR);
      Abort;
    end;

    itemVlrUntTemp := RoundTo(fdsVendaItensVLR_UNITARIO.AsCurrency, -2);

    if (itemVlrUntTemp <> itemVlrUnitario) then
    begin
      temPermicao := uVerificaPermicao.Verifica('ALTERAR_PREC_UNIT');

      if temPermicao then
      begin
        itemVlrUnitario := fdsVendaItensVLR_UNITARIO.AsCurrency;
      end
      else
      begin
        TFrmMensagens.Mensagem('Desculpe,Usu�rio sem permiss�o para alterar o pre�o de venda.', 'Sem permiss�o.','I',[mbOK]);
        fdsVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
        Abort;
      end;
    end;
  end
  else
  begin
    fdsVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
    Abort;
  end;
end;

procedure TfrmPrincipal.CadastroCliente;
begin
  Try
      frmCadClientes := TfrmCadClientes.Create(nil);
      frmCadClientes.ShowModal;
    Finally
      frmCadClientes.Free;
  End;
end;

procedure TfrmPrincipal.CancelaItem;
var
 vlrUnt:Currency;
 IdVendaTemp:integer;
begin
  if fdsVendaItens.State in [dsInsert, dsEdit] then
    begin
      Application.MessageBox('Voc� n�o terminou de lan�ar o item atual, cancele ou confirme este item antes de tentar cancelar algum j� passado.', 'Aten��o', MB_OK+MB_ICONWARNING);
    end
  else
  begin
    Try
      frmCancelarItem := TfrmCancelarItem.Create(nil);
      frmCancelarItem.idVenda := idVenda;
      frmCancelarItem.idFilial := DM.fdsConfigIDFILIAL.AsInteger;
      frmCancelarItem.ShowModal;
    Finally
      if frmCancelarItem.ModalResult = mrOk then
      begin
        idVendaTemp := idVenda;
        vlrUnt:=0;
        with fdsVendaItens do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('IDVENDA', ' IDVENDA = ' + IntToStr(idVenda), True);
          Conditions.AddCondition('IDFILIAL', ' IDFILIAL = ' + IntToStr(DM.fdsConfigIDFILIAL.AsInteger), True);
          Conditions.AddCondition('ITEM', ' ITEM = ' + frmCancelarItem.fdsVendaItensITEM.AsString, True);
          Conditions.Apply;
          Prepare;
          Open;
          vlrTotal := vlrTotal - fdsVendaItensVLR_TOTAL.AsFloat;
          vlrUnt:= fdsVendaItensVLR_UNITARIO.AsFloat*frmCancelarItem.fdsVendaItensQTN.AsFloat;
          Delete;
          transFrmPrincipal.CommitRetaining;
        end;

        redTempItens.Lines.Add('');
        redTempItens.Paragraph.Alignment := taLeftJustify;
        redTempItens.Lines.Add('');
        redTempItens.Lines.Add(' ' + 'Item N� ' + frmCancelarItem.fdsVendaItensITEM.AsString + ' - CANCELADO');
        redTempItens.Lines.Add('');
        redItens.JumpTo(redTempItens.Lines.Count - 1, 0);

        redItens.Lines.Add('');
        redItens.Paragraph.Alignment := taLeftJustify;
        redItens.Lines.Add('');
        redItens.Lines.Add(' ' + 'Item N� ' + frmCancelarItem.fdsVendaItensITEM.AsString + ' - CANCELADO');
        redItens.Lines.Add('');
        redItens.JumpTo(redItens.Lines.Count - 1, 0);
        try
          {with fdsVenda do
          begin
            Edit;
            fdsVendaVLR_TOTITEM.AsFloat := fdsVendaVLR_TOTITEM.AsFloat - vlrUnt;
            fdsVendaVLR_TOTAL.AsFloat := vlrTotal;
            fdsVendaVLR_VENDA.AsFloat := vlrTotal;
            Post;
          end;
          fdsVenda.ApplyUpdates;
          transFrmPrincipal.CommitRetaining;}

          with qryUpdateVenda do
          begin
            close;
            ParamByName('VLR_TOTITEM').AsFloat := fdsVendaVLR_TOTITEM.AsFloat - vlrUnt;
            ParamByName('VLR_TOTAL').AsFloat := vlrTotal;
            ParamByName('VLR_VENDA').AsFloat := vlrTotal;
            ParamByName('IDVENDA').AsInteger := idVendaTemp;
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            prepare;
            ExecQuery;
          end;
          Dm.conexao.CommitRetaining;
          with fdsVenda do
          begin
            Close;
            Conditions.Clear;
            Conditions.AddCondition('IDVENDA', 'V.ID = ' + IntToStr(idVendaTemp), True);
            Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
            Conditions.Apply;
            Prepare;
            Open;
          end;
        Except on e:Exception do
                begin
                  try
                    transFrmPrincipal.CommitRetaining;
                  Except
                     on e:Exception do
                     begin
                       transFrmPrincipal.CommitRetaining;
                       try
                        transFrmPrincipal.CommitRetaining;
                       Except on e:Exception do
                               begin
                                transFrmPrincipal.CommitRetaining;
                               end;
                       end;
                     end;
                  end;
                end;
        end;

        with fdsVendaItens do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('IDVENDA', ' IDVENDA = ' + IntToStr(idVenda), True);
          Conditions.AddCondition('IDFILIAL', ' IDFILIAL = ' + IntToStr(DM.fdsConfigIDFILIAL.AsInteger), True);
          Conditions.Apply;
          Prepare;
          Open;
          last;
        end;

        edtItemRef.Clear;
        edtItemPrec.Clear;
        edtItemDesc.Clear;
        edtItemQtn.Clear;
      end;
      frmCancelarItem.Free;
      edtItemRef.SetFocus;
    End;
  end;
end;

procedure TfrmPrincipal.cbxComponentesChange(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);

  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      edtLargura.Text := IntToStr(Width);
      edtEsquerda.Text := IntToStr(Left);
      edtTop.Text := IntToStr(Top);
      edtFonteSize.Text := IntToStr(Font.Size);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      edtLargura.Text := IntToStr(Width);
      edtAltura.Text := IntToStr(ClientHeight);
      edtAltura.Enabled := True;
      edtEsquerda.Text := IntToStr(Left);
      edtTop.Text := IntToStr(Top);
      edtFonteSize.Text := IntToStr(Font.Size);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      edtLargura.Text := IntToStr(Width);
      edtEsquerda.Text := IntToStr(Left);
      edtTop.Text := IntToStr(Top);
      edtFonteSize.Text := IntToStr(Font.Size);
      edtAltura.Text := IntToStr(Height);
      edtAltura.Enabled := True;
    end;
  end
  else
  begin
    if not(componente IS TRzDBEdit) then
    BEGIN
    edtAltura.Text := EmptyStr;
    edtAltura.Enabled := False;
    END;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      edtLargura.Text := IntToStr(Width);
      edtEsquerda.Text := IntToStr(Left);
      edtTop.Text := IntToStr(Top);
      edtFonteSize.Text := IntToStr(Font.Size);
    end;
  end;

  btnComponenteUp.SetFocus;
end;

procedure TfrmPrincipal.PescCaixa;
begin
with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;
end;

procedure TfrmPrincipal. PreparaCancelarNFCe;
var
 I:SmallInt;
begin
  //transFrmPrincipal.CommitRetaining;
  try
    frmStatusNFCe := TfrmStatusNFCe.Create(nil);
    frmStatusNFCe.param := 'CANCELAR';
    frmStatusNFCe.ShowModal;
  finally
    //Busca a venda novamente
    BuscarVenda(frmVendas.idVenda);

    // Deleta o contas a receber de caso a NFCe for totalmente devolvida
    if (frmStatusNFCe.AutorizaDeletar = true) and ( frmStatusNFCe.StatusCancelada <> 'DV')then
    begin
      // Verifica contas ha receber
      with qryVerificaCntReceber do
      begin
        close;
        ParamByName('IDVENDA').AsInteger := fdsVendaID.AsInteger;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        prepare;
        ExecQuery;
      end;

      if qryVerificaCntReceber.RecordCount > 0 then
      begin
        for I := 0 to qryVerificaCntReceber.RecordCount -1 do
        begin
          ExcluirRecebimento(qryVerificaCntReceber.FieldByName('ID').AsInteger);
        end;
      end;
    end;
    frmStatusNFCe.Free;
  end;
end;

procedure TfrmPrincipal.ComponentesEdicao;
var
  i : Integer;
begin
  for i := 0 to ComponentCount -1 do
  begin
      if Components[i].Tag = 10 then
        cbxComponentes.Items.Add(Components[i].Name);
  end;
end;

procedure TfrmPrincipal.ConectaImpressora;
var
  retorno : Integer;
begin

    try

      if not(OpenComm('COM3', '9600,n,8,2')) then
        Application.MessageBox('N�o foi poss�vel conectar com a impressora!', 'Aten��o', MB_OK+MB_ICONERROR);


      except on e: Exception do
      begin
        ShowMessage(e.Message);
      end;

    end;


end;

procedure TfrmPrincipal.Opcoes;
begin
  if statusCaixa = 'LV' then
  begin
    Try
        frmOpcoes := TfrmOpcoes.Create(nil);
        frmOpcoes.ShowModal;
     Finally
        if frmOpcoes.ModalResult = mrOk then
        begin
          if frmOpcoes.codigo = 1 then
            RestaurarVenda;

          if frmOpcoes.codigo = 2 then
            DevolucaoTroca;

          if frmOpcoes.codigo = 3 then
            ConsultarVendas;
        end;

        frmOpcoes.FreeOnRelease;
     End;
   end
   else
     Application.MessageBox('Venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);

end;

Function TfrmPrincipal.OpenComm(NomePorta, ConfigPorta: String):Boolean;
var BarDCB: DCB;
    LastError: Cardinal;
    CTimeOut: COMMTIMEOUTS;
begin
   hComm:=CreateFile(PChar(NomePorta),GENERIC_READ+GENERIC_WRITE,
                                0, //not shared
                                nil, //no security
                                OPEN_EXISTING,
                                FILE_ATTRIBUTE_NORMAL, //+FILE_FLAG_OVERLAPPED
                                0{template} );
    If hComm = INVALID_HANDLE_VALUE Then begin
        ShowMessage('Porta Serial ' + NomePorta + ' n�o dispon�vel. configure os paramentros da porta serial');
        Result:=False;
        Exit;
    End;
//  Configurar os Time Outs para a Porta
    CtimeOut.ReadIntervalTimeout:=20;
    CtimeOut.ReadTotalTimeoutConstant:=1;
    CtimeOut.ReadTotalTimeoutMultiplier:=1;
    CtimeOut.WriteTotalTimeoutConstant:=20;
    CtimeOut.WriteTotalTimeoutMultiplier:=1;
    iRet:=SetCommTimeouts(hComm, CTimeOut);
    If Ord(iRet)= -1 Then begin
        LastError:=GetLastError();
        ShowMessage('N�o � permitido configurar os Timeouts para esta porta ' + NomePorta + ' Erro: ' + Inttostr(LastError));
        CloseHandle(hComm);
        Result:=False;
        Exit;
    End;
    iRet:=BuildCommDCB(PChar(NomePorta+':'+ConfigPorta), BarDCB);
    If Ord(iRet)=-1 Then begin
        LastError:= GetLastError();
        ShowMessage('N�o � permitido montar os parametros da Porta' + ConfigPorta + ' Erro: ' + Inttostr(LastError));
        CloseHandle(hComm);
        Result:=False;
        Exit;
    End;
    iRet:=SetCommState(hComm, BarDCB);
    If Ord(iRet)= -1 Then begin
        LastError:= GetLastError();
        ShowMessage('N�o � permitido configurar os parametros da Porta' + ConfigPorta + ' Erro: ' + Inttostr(LastError));
        CloseHandle(hComm);
        Result:=False;
        Exit;
    End;
    Result:=True;
end;

procedure TfrmPrincipal.ConfiguraBalanca;
begin
 try
     with DM.fdsCaixa do
     begin
       Close;
       ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
       ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
       Prepare;
       Open;
     end;

    if DM.fdsCaixaMODELO_BALANCA.AsString > '0' then
    begin
     if frmPrincipal.acbrBal1.Ativo then
        frmPrincipal.ACBrBAL1.Desativar;

        frmPrincipal.ACBrBAL1.Modelo := TACBrBALModelo(StrToInt(DM.fdsCaixaMODELO_BALANCA.AsString));
        frmPrincipal.ACBrBAL1.Device.HandShake := TACBrHandShake(StrToInt(DM.fdsCaixaHANDSHAKING_BAL.AsString));
        frmPrincipal.ACBrBAL1.Device.Parity    := TACBrSerialParity(StrToInt( DM.fdsCaixaPARITY_BAL.AsString ));
        frmPrincipal.ACBrBAL1.Device.Stop      := TACBrSerialStop(StrToInt(DM.fdsCaixaSTOP_BITS_BAL.AsString) );
        frmPrincipal.ACBrBAL1.Device.Data      := DM.fdsCaixaDATA_BITS_BAL.AsInteger;
        frmPrincipal.ACBrBAL1.Porta := DM.fdsCaixaPORTA_BALANCA.AsString;
        frmPrincipal.ACBrBAL1.Device.Baud := DM.fdsCaixaBAUD_RATE.AsInteger;
        frmPrincipal.ACBrBAL1.Ativar;


    end;
    Except on E: Exception do
     begin
      ShowMessage('Erro na leitura da balan�a: ' + E.Message);
     end;
    end;
end;

procedure TfrmPrincipal.Configuracoes;
var
  INI : TIniFile;
begin
  if statusCaixa = 'LV' then
  begin
    Try
      frmConfig := TfrmConfig.Create(nil);
      frmConfig.ShowModal;
    Finally
      if frmConfig.ModalResult = mrOk then
      begin
        //imgPadrao := dm.fdsConfigIMP_CUPOM.AsString;               //vanessa
         with DM.fdsCaixa do
         begin
           Close;
           ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
           ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
           Prepare;
           Open;
         end;
        imgPadrao := dm.fdsCaixaIMP_CUPOM.AsString;
        ConfiguraNFCe;
      end;
      frmConfig.Free;
    End;
  end;
end;

procedure TfrmPrincipal.ConfiguraLayout;
var
  INI : TIniFile;
begin
  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
  lblProduto.Left := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'LEFT', ''));
  lblProduto.Top := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'TOP', ''));
  lblProduto.Width := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'WIDTH', ''));
  lblProduto.Font.Size := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'FONT', ''));

  imgItem.Left := StrToInt(INI.ReadString('POS_IMGITEM', 'LEFT', ''));
  imgItem.Top := StrToInt(INI.ReadString('POS_IMGITEM', 'TOP', ''));
  imgItem.Width := StrToInt(INI.ReadString('POS_IMGITEM', 'WIDTH', ''));

  edtItemRef.Left := StrToInt(INI.ReadString('POS_EDTITEMREF', 'LEFT', ''));
  edtItemRef.Top := StrToInt(INI.ReadString('POS_EDTITEMREF', 'TOP', ''));
  edtItemRef.Width := StrToInt(INI.ReadString('POS_EDTITEMREF', 'WIDTH', ''));
  edtItemRef.Font.Size := StrToInt(INI.ReadString('POS_EDTITEMREF', 'FONT', ''));

  edtItemPrec.Left := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'LEFT', ''));
  edtItemPrec.Top := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'TOP', ''));
  edtItemPrec.Width := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'WIDTH', ''));
  edtItemPrec.Font.Size := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'FONT', ''));
  edtItemPrec.ClientHeight:= StrToInt(INI.ReadString('POS_EDTITEMPREC', 'HEIGHT', ''));

  edtItemQtn.Left := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'LEFT', ''));
  edtItemQtn.Top := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'TOP', ''));
  edtItemQtn.Width := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'WIDTH', ''));
  edtItemQtn.Font.Size := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'FONT', ''));

  edtItemDesc.Left := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'LEFT', ''));
  edtItemDesc.Top := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'TOP', ''));
  edtItemDesc.Width := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'WIDTH', ''));
  edtItemDesc.Font.Size := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'FONT', ''));
  edtItemDesc.ClientHeight:= StrToInt(INI.ReadString('POS_EDTITEMDESC', 'HEIGHT', ''));

  edtTotalVenda.Left := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'LEFT', ''));
  edtTotalVenda.Top := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'TOP', ''));
  edtTotalVenda.Width := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'WIDTH', ''));
  edtTotalVenda.Font.Size := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'FONT', ''));
  edtTotalVenda.ClientHeight:=StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'HEIGHT', ''));;

  redItens.Left := StrToInt(INI.ReadString('POS_REDITENS', 'LEFT', ''));
  redItens.Top := StrToInt(INI.ReadString('POS_REDITENS', 'TOP', ''));
  redItens.Width := StrToInt(INI.ReadString('POS_REDITENS', 'WIDTH', ''));
  redItens.Font.Size := StrToInt(INI.ReadString('POS_REDITENS', 'FONT', ''));

  gdrItens.Left := StrToInt(INI.ReadString('POS_GDRITENS', 'LEFT', ''));
  gdrItens.Top := StrToInt(INI.ReadString('POS_GDRITENS', 'TOP', ''));
  gdrItens.Width := StrToInt(INI.ReadString('POS_GDRITENS', 'WIDTH', ''));
  gdrItens.Height := StrToInt(INI.ReadString('POS_GDRITENS', 'HEIGHT', ''));
  gdrItens.Font.Size := StrToInt(INI.ReadString('POS_GDRITENS', 'FONT', ''));

  INI.Free;
end;

procedure TfrmPrincipal.ConfiguraNFCe;
var
  Ok : Boolean;
begin
  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  if dm.fdsCaixaNF_F9.AsString = 'F' then
    emitirFiscal := true
  else
    emitirFiscal := false;

  imgNFCe.Visible := emitirFiscal;

  //ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(DM.fdsConfigMODELO_IMPRESSORA.AsInteger);

  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(DM.fdsCaixaMODELO_IMPRESSORA.AsInteger);
  if DM.fdsCaixaMODELO_IMPRESSORA.AsInteger =2 then
  begin
    AcbrPosPrinter1.LinhasEntreCupons:=7;
    AcbrPosPrinter1.EspacoEntreLinhas:=5;
  end;

  with ACBrNFe1.Configuracoes.Geral do
  begin
     RetirarAcentos   := True;
     FormaEmissao     := TpcnTipoEmissao(0);
     ModeloDF         := TpcnModeloDF(1);
     VersaoDF         := TpcnVersaoDF(3);
     IdCSC            := DM.fdsConfigNFeIDCSC.AsString;
     CSC              := DM.fdsConfigNFeCSC.AsString;
     Salvar           := True;
   //  IncluirQRCodeXMLNFCe := True;
  end;

  with ACBrNFe1.Configuracoes.WebServices do
  begin
     UF         := DM.fdsConfigUF.AsString;
     Ambiente   := StrToTpAmb(Ok,IntToStr(DM.fdsConfigNFeWS_AMBIENTE_NF_CE.AsInteger));
     Visualizar := False;
     Salvar     := True;
     AjustaAguardaConsultaRet := False;
  //   if NaoEstaVazio(edtAguardar.Text)then
  //      AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
  //   else
  //      edtAguardar.Text := IntToStr(AguardarConsultaRet);
  //
  //   if NaoEstaVazio(edtTentativas.Text) then
  //      Tentativas          := StrToInt(edtTentativas.Text)
  //   else
  //      edtTentativas.Text := IntToStr(Tentativas);
  //
  //   if NaoEstaVazio(edtIntervalo.Text) then
  //      IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
  //   else
  //      edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);
  //
  //   ProxyHost := edtProxyHost.Text;
  //   ProxyPort := edtProxyPorta.Text;
  //   ProxyUser := edtProxyUser.Text;
  //   ProxyPass := edtProxySenha.Text;

    with ACBrNFe1.Configuracoes.WebServices do
    begin
      AguardarConsultaRet := 100;       //<----- Tempo que o componente ir� aguardar pelo retorno da consulta ao protocolo de recebimento

      AjustaAguardaConsultaRet := True;   //<----- se true acerta a propriedade anterior para o valor retornado pelo webservice no protocolo de envio

      IntervaloTentativas := 1000;       //<------ intervalo que o componente ir� aguardar antes de tentar novamente

      Tentativas := 5;                   // <------ numero de tentativas que o componente ir� fazer antes de emitir o erro
    end;

    with ACBrNFe1.Configuracoes.Arquivos do
    begin
     Salvar             := True;
     SepararPorMes      := True;
     AdicionarLiteral   := False;
     EmissaoPathNFe     := True;
     SalvarEvento       := False;
     SepararPorCNPJ     := False;
     SepararPorModelo   := False;
     PathSalvar         := PathWithDelim(ExtractFilePath(Application.ExeName))+'NFCeLogs';
     PathSchemas        := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
     PathNFe            := PathSalvar + 'Emitidas';
     PathInu            := PathSalvar + 'Inutilizados';
     PathEvento         := PathSalvar + 'Eventos';
    end;


     // ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(0);



    if TPCERTIFICADO = 'A3' then
    begin
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(3);
    //  ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado; vitor ver essa linha somente, tava no forum
//      ACBrNFe1.Configuracoes.Geral.SSLLib:=libCapicom;
//      ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=cryCapicom;
//      ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=httpWinINet;
//      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=xsMsXmlCapicom;
    end;
    {ACBrNFe1.Configuracoes.Certificados.Senha       := DM.fdsConfigNFeCERT_SENHA.AsString;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.fdsConfigNFeCERT_NUM_SERIE.AsString;}
    ACBrNFe1.Configuracoes.Certificados.Senha       := DM.fdsCaixaCERT_SENHA.AsString;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.fdsCaixaCERT_NUM_SERIE.AsString;

   // ACBrNFeDANFEFR1.FastFile := ExtractFileDir(application.ExeName) + '\Relatorios\DANFeNFCe3_50.fr3';
     if DM.impVenda <> 0 then
     begin
    //ACBrNFeDANFeESCPOS1.PosPrinter.Device.Porta := impcupom;
    //ACBrNFeDANFeESCPOS1.PosPrinter.Device.Porta := DM.fdsConfigIMP_CUPOM.AsString;
    ACBrNFeDANFeESCPOS1.PosPrinter.Device.Porta := DM.fdsCaixaIMP_CUPOM.AsString;
    ACBrNFeDANFeESCPOS1.PosPrinter.Device.Baud  := 38400;

    ACBrNFeDANFeESCPOS1.PosPrinter.Device.Ativar;
    end;
    if ACBrNFe1.DANFE <> nil then
    begin
      ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(Ok,IntToStr(1));
      ACBrNFe1.DANFE.Logo       := DM.fdsConfigLOGO_IMG_CAMINHO.AsString;
    end;
  end;
end;

procedure TfrmPrincipal.ConsultaItem;
begin
  if  (fdsVendaTIPO.AsString = 'NT') or  (fdsVendaTIPO.AsString = 'ER')then
  begin
    fdsVendaItens.First;
    While not(fdsVendaItens.Eof) do
    begin
//      with fdsItens do
//      begin
//        Close;
//        ParamByName('IDPRODUTO').AsString := fdsVendaItensIDPROD_ITEM.AsString;
//        ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
//        Prepare;
//        Open;
//      end;

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select P.* FROM PRODUTO P, PRODUTO_ITEM PI WHERE P.ID = PI.IDPRODUTO AND PI.id =:IDPRODUTO');
        ParamByName('IDPRODUTO').AsInteger := fdsVendaItensIDPROD_ITEM.AsInteger ;
        //SQl.SaveToFile('D:\Itens.txt');
        Prepare;
        ExecQuery;
      end;

//      fdsVendaItens.Edit;
//      fdsVendaItensCFOP.AsString := fdsItensCFOP.AsString;
//      fdsVendaItensCST_CSOSN.AsString := fdsItensCSOSN.AsString;
//      fdsVendaItens.Post;
//      fdsVendaItens.Next;

      fdsVendaItens.Edit;
      fdsVendaItensCFOP.AsString := qryComand.FieldByName('CFOP').AsString;
      fdsVendaItensCST_CSOSN.AsString := qryComand.FieldByName('CSOSN').AsString;
      fdsVendaItensCEST.AsString := qryComand.FieldByName('CEST').AsString;
      fdsVendaItensCST_PIS.AsString:= qryComand.FieldByName('CST_PIS').AsString;
      fdsVendaItensCST_COFINS.AsString:= qryComand.FieldByName('CST_COFINS').AsString;
      //fdsVendaItensDT_EMISSAO.AsDateTime:= now;
      fdsVendaItens.Post;
      fdsVendaItens.Next;


    end;
    Dm.conexao.CommitRetaining;
    transFrmPrincipal.CommitRetaining;

  end;

end;

procedure TfrmPrincipal.ConsultarVendas;
begin
  if statusCaixa = 'LV' then
  begin
    try
      frmVendas := TfrmVendas.Create(nil);
      frmVendas.ShowModal;
    finally
      if frmVendas.ModalResult = mrOk then
      begin
        BuscarVenda(frmVendas.idVenda);

        if frmVendas.param = 'EMITIR' then
        begin
          ConsultaItem;
         case MessageBox(Application.Handle,pchar('Deseja imprimir a Venda?'),'Aten��o',MB_YESNO +MB_ICONQUESTION + MB_DEFBUTTON2)of
           IDYES: begin
                    imprimir:=True;
                  end;
            IDNO: begin
                    imprimir:=False;
                  end;
         end;
          PreparaEmissaoNFCe;
        end;
        if frmVendas.param = 'ImprimirDANFE' then
          ReimprimirDANFE;
        if frmVendas.param = 'ImprimirNOTA' then
          ReimprimirNOTA;
        if frmVendas.param = 'CANCELAR' then
           PreparaCancelarNFCe;
        if frmVendas.param = 'INUTILIZAR' then
           PreparaInutilizar;

        if frmVendas.param = 'TODAS' then
        begin
          cdsTransmitirVendas.First;
          while not(cdsTransmitirVendas.Eof) do
          begin
            if (cdsTransmitirVendasSTATUS.AsString = 'ER') or(cdsTransmitirVendasSTATUS.AsString = 'OF') then
            begin
              ExibeNumeroNota.Interval := 2000; // Tempo que a msg ficar� na tela -> 2 Segs
              ExibeNumeroNota.Enabled := True;
              MessageBox(Handle, PChar('Venda : '+cdsTransmitirVendasIDVENDA.AsString),
                Pchar('Numero da Venda'), 8224);

              BuscarVenda(cdsTransmitirVendasIDVENDA.AsInteger);
              ConsultaItem;
              imprimir:=False;
              PreparaEmissaoNFCe;
            end;
            cdsTransmitirVendas.Next;
          end;
        end;


        fdsVenda.Close;
        fdsVendaItens.Close;
      end;
      ResetarCaixa;
      frmVendas.Free;
    end;
  end;
end;

procedure TfrmPrincipal.ControleRegistro;
var
  registro : TRegistro;
  liberado : Boolean;
begin
  liberado := registro.VerificaChave;

  if liberado = False then
  begin
    TFrmMensagens.Mensagem('Seu sistema expirou, entre em contato o desenvolvedor.', 'Aten�ao.', 'X',[mbOK]);
   // Application.MessageBox('Seu sistema expirou, entre em contato o desenvolvedor','Aten�ao', MB_OK+MB_ICONWARNING);
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.FinalizaItem;
var
  utils : TUtils;
  vlrUnitDesconto : Double; //Valor Unit�rio aplicado o desconto
begin
  vlrUnitDesconto:=0;
  if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
  begin
    vlrUnitDesconto := RoundTo(((itemVlrUnitario+fdsVendaItensVLR_IPI.AsFloat) * fdsVendaItensVLR_DESC_ACRE.AsFloat)/ 100, -2);
    fdsVendaItensVLR_TOTAL.AsFloat := RoundTo((itemVlrUnitario + fdsVendaItensVLR_IPI.AsFloat - vlrUnitDesconto) * fdsVendaItensQTN.AsFloat,-2);  //coloquei arredondamento
    Inc(totItem);
    redTempItens.Lines.Add('');
    redTempItens.Paragraph.Alignment := taLeftJustify;
    redTempItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + lblProduto.Caption);
    if not(vlrUnitDesconto > 0) then
      redTempItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', itemVlrUnitario) + '       ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat))
    else
      redTempItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', itemVlrUnitario) + '   -' + fdsVendaItensVLR_DESC_ACRE.AsString + '%      ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat));
    redTempItens.JumpTo(redItens.Lines.Count - 1, 0);

    redItens.Lines.Add('');
    redItens.Paragraph.Alignment := taLeftJustify;
    redItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + lblProduto.Caption);
    if not(vlrUnitDesconto > 0) then
      redItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', itemVlrUnitario) + '       ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat))
    else
      redItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', itemVlrUnitario) + '   -' + fdsVendaItensVLR_DESC_ACRE.AsString + '%      ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat));
    redItens.JumpTo(redItens.Lines.Count - 1, 0);

   // vlrTotal := vlrTotal + ((itemVlrUnitario) * fdsVendaItensQTN.AsFloat);
    vlrTotal := vlrTotal + fdsVendaItensVLR_TOTAL.AsFloat;
    fdsVendaItensITEM.AsInteger := totItem;
    fdsVendaItensVLR_DESC_ACRE.AsFloat := vlrUnitDesconto;
    Application.ProcessMessages;

    with fdsVenda do
    begin
      Edit;
      fdsVendaVLR_TOTITEM.AsFloat :=RoundTo(fdsVendaVLR_TOTITEM.AsFloat + ((itemVlrUnitario+vlrIPI) * fdsVendaItensQTN.AsCurrency),-2);    //coloquei arredondamento
      fdsVendaVLR_VENDA.AsFloat := vlrTotal;
      fdsVendaVLR_TOTAL.AsFloat := vlrTotal;
      Post;
    end;


    if vlrDevolucao > 0 then
    begin
      vlrDevRestante := vlrDevRestante - fdsVendaItensVLR_TOTAL.AsFloat;
      lblVlrCredito.Visible := True;
      lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', vlrDevRestante);
    end;

    fdsVendaItens.Post;
    fdsItens.Close;
    transFrmPrincipal.CommitRetaining;
    edtItemRef.Clear;
    edtItemPrec.Clear;
    edtItemDesc.Clear;
    edtItemQtn.Clear;
  end;
end;

procedure TfrmPrincipal.DevolucaoTroca;
var
  continuar, tempDevolucaoTotal,haContaPaga : Boolean;
  tempIDFormaPag : Integer;
  dtVenda : TDateTime;
  devTemp:Double;
  historico,obs:String;
begin
  continuar := False;
  tempDevolucaoTotal := False;
  haContaPaga:=False;
  obs:='';
  if statusCaixa = 'LV' then
  begin
    try
      frmDevTroca := TfrmDevTroca.Create(nil);
      frmDevTroca.ShowModal;
    Finally
      if frmDevTroca.ModalResult = mrOk then
      begin
        devTemp:=frmDevTroca.vlrDevolucao;
        vlrDevolucao := frmDevTroca.vlrDevolucao;
        vlrEntrada := frmDevTroca.vlrEntrada;
        vlrDevRestante := vlrDevolucao;
        idCliente := frmDevTroca.fdsVendasIDCLIENTE.AsInteger;
        idVendaDevolvida := frmDevTroca.fdsVendasID.AsInteger;
        tempDevolucaoTotal := frmDevTroca.devolucaoTotal;
        tempIDFormaPag := frmDevTroca.iDFormaPag;
        dtVenda := frmDevTroca.fdsVendasDT_INC.AsDateTime;
        continuar := True;
      end;
      frmDevTroca.Free;
    end;

    if continuar then
    begin
      try
        frmParamDevTroca := TfrmParamDevTroca.Create(nil);
        frmParamDevTroca.rbtDevolver.Caption := 'Devolver Dinheiro ou Excluir Nota: ' + FormatFloat('R$ #,##0.00', vlrDevolucao);

        if tempIDFormaPag = 6 then
        begin
          //verificar se teve alguma parcela paga ou algum valor pago  VERIFICAPARCELAPAGA
          qryVerificaPagReceber.Close;
          qryVerificaPagReceber.ParamByName('IDVENDA').AsInteger:= idVendaDevolvida;
          qryVerificaPagReceber.ParamByName('FILIAL').AsInteger:=DM.fdsConfigIDFILIAL.AsInteger;
          qryVerificaPagReceber.ParamByName('PREFIXO').AsString:= 'NT';
          qryVerificaPagReceber.Prepare;
          qryVerificaPagReceber.ExecQuery;

          if qryVerificaPagReceber.RecordCount>0 then
            if qryVerificaPagReceber.FieldByName('VLR_PAGO').AsFloat > 0 then
            begin
              frmParamDevTroca.rbtCredito.Enabled := True;
              frmParamDevTroca.rbtDevolver.Enabled := False;
              haContaPaga:=True;
              Application.MessageBox('Devido haver pagamento parcial ou total da venda, s� haver� a possibilidade de fazer lan�amento de cr�dito na Conta do Cliente.', 'Devolu��o', MB_OK+MB_ICONEXCLAMATION);
            end
            else
            begin
              frmParamDevTroca.rbtCredito.Enabled := False;
              frmParamDevTroca.rbtDevolver.Enabled := True;
            end;
        end;

        frmParamDevTroca.ShowModal;
      Finally
        if frmParamDevTroca.ModalResult = mrOk then
        begin
          if frmParamDevTroca.tipo = 'nova' then
          begin
            lblVlrCredito.Visible := True;
            lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', vlrDevolucao);
          end
          else
          begin
            fdsMovimentoCaixa.Open;
            fdsMovimentoCaixa.Append;
            fdsMovimentoCaixaCONTROLE.AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
            fdsMovimentoCaixaIDUSUARIO.AsInteger := DM.idUsuario;
            fdsMovimentoCaixaTIPO.AsString := 'DV';
            fdsMovimentoCaixaMOEDA.AsString := 'DN';
            fdsMovimentoCaixaVLR_DESCONTO.AsFloat := 0;
            fdsMovimentoCaixaVLR_TOTAL.AsFloat := vlrDevolucao;
            fdsMovimentoCaixaVLR_ENTRADA.AsFloat := 0;
            fdsMovimentoCaixaVLR_CARTAO.AsFloat := 0;
            fdsMovimentoCaixaVLR_CHEQUE.AsFloat := 0;
            fdsMovimentoCaixaVLR_NOTA.AsFloat := 0;
            fdsMovimentoCaixaVLR_FINANCEIRA.AsFloat := 0;
            fdsMovimentoCaixaVLR_VALEDESCONTO.AsFloat := 0;
            fdsMovimentoCaixaVLR_TICKET.AsFloat := 0;
            fdsMovimentoCaixaVLR_CREDITO.AsFloat := 0;
            fdsMovimentoCaixaIDMOVIMENTO.AsInteger := idVendaDevolvida;
            fdsMovimentoCaixaIDCAIXA.AsInteger := DM.numCaixa;
            fdsMovimentoCaixaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;

            if frmParamDevTroca.tipo = 'devolver' then
            begin
              if tempDevolucaoTotal then
              begin
                if (tempIDFormaPag = 1) or (tempIDFormaPag = 9) then
                begin
                  fdsMovimentoCaixaVLR_VENDA.AsFloat := vlrDevolucao;
                  fdsMovimentoCaixaTROCO.AsFloat := vlrDevolucao;
                  fdsMovimentoCaixaHISTORICO.AsString := 'Sa�da em Dinheiro no valor de ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' referente a devolou��o da venda n� ' + IntToStr(idVendaDevolvida);
                  fdsMovimentoCaixa.Post;
                  historico:='Abatimento no valor de ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' referente a devolou��o da venda n� ' + IntToStr(idVendaDevolvida);
                end
                else
                begin
                  fdsMovimentoCaixaVLR_VENDA.AsFloat := vlrDevolucao;
                  fdsMovimentoCaixaTROCO.AsFloat := vlrEntrada;
                  fdsMovimentoCaixaHISTORICO.AsString := 'Devolu��o da venda n� ' + IntToStr(idVendaDevolvida) + '. Excluido Nota no Contas a Receber.';
                  fdsMovimentoCaixa.Post;
                  historico:= fdsMovimentoCaixaHISTORICO.AsString;

                  //Deleta Contas a Receber
                  ExcluirReceber(idVendaDevolvida);

                  //Acerta o movimento no Caixa
                  AcertarVlrMoviNotaDevolvida(idVendaDevolvida, tempIDFormaPag);
                end;

                Application.MessageBox('Devolu��o de venda realizada com sucesso.', 'Devolu��o', MB_OK+MB_ICONEXCLAMATION);
              end
              else
              begin
                if (tempIDFormaPag = 1) or (tempIDFormaPag = 9) then
                begin
                  fdsMovimentoCaixaVLR_VENDA.AsFloat := vlrDevolucao;
                  fdsMovimentoCaixaTROCO.AsFloat := vlrDevolucao;
                  fdsMovimentoCaixaHISTORICO.AsString := 'Sa�da em Dinheiro no valor de ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' referente a devolou��o de itens da venda n� ' + IntToStr(idVendaDevolvida);
                  fdsMovimentoCaixa.Post;
                  historico:='Abatimento no valor de ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' referente a devolou��o de itens da venda n� ' + IntToStr(idVendaDevolvida);
                end
                else
                begin
                  fdsMovimentoCaixaVLR_VENDA.AsFloat := 0;
                  fdsMovimentoCaixaHISTORICO.AsString := 'Recalculado Conta do Cliente devido a devolu��o de itens da venda n� ' + IntToStr(idVendaDevolvida) + '  ' + FormatFloat('R$ #,##0.00', vlrDevolucao);
                  fdsMovimentoCaixaTROCO.AsFloat := ExcluirParteReceber(idVendaDevolvida, vlrDevolucao);
                  fdsMovimentoCaixa.Post;
                  historico:= 'Recalculado Conta do Cliente devido a devolu��o de itens no valor de '+FormatFloat('R$ #,##0.00', vlrDevolucao)+' da venda n� ' + IntToStr(idVendaDevolvida) + ' .';
                  AcertarVlrMoviNotaDevolvida(idVendaDevolvida, tempIDFormaPag);
                end;

                Application.MessageBox('Devolu��o realizada com sucesso.', 'Devolu��o', MB_OK+MB_ICONEXCLAMATION);
              end;
              Case MessageBox(Application.Handle, Pchar('Deseja Imprimir o comprovante de devolu��o?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                     IDYES: begin
                               with qryComand do
                               begin
                                Close;
                                SQL.Clear;
                                SQL.Add('select C.* from cliente c where c.id ='+ QuotedStr(IntToStr(idCliente)));
                                prepare;
                                ExecQuery;
                               end;

                              DM.historico := historico;
                              DM.cliente:= qryComand.FieldByName('NOME').AsString;
                              ImprimirComprovanteDev('/Relatorios/frxComprovanteDevolucao.fr3');
                              if (tempDevolucaoTotal= false) and  (tempIDFormaPag <> 1) and (tempIDFormaPag <> 9) then
                              begin
                                ImprimirComprovanteDev('/Relatorios/frxComprovanteDevolucao.fr3');
                              end;
                            end;
              End;
            end;

            if frmParamDevTroca.tipo = 'credito' then
            begin
              fdsMovimentoCaixaVLR_VENDA.AsFloat := 0;
              fdsMovimentoCaixaTROCO.AsFloat := 0;
              fdsMovimentoCaixaHISTORICO.AsString := 'Cr�dito no valor de ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' da devolu��o de itens da venda n� ' + IntToStr(idVendaDevolvida);
              fdsMovimentoCaixa.Post;
            end;
            transFrmPrincipal.CommitRetaining;
          end;

          with qryComand do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE VENDA V SET V.VLR_RETORNADO = V.VLR_RETORNADO + :VLR_RETORNADO WHERE V.ID = :IDVENDA AND IDFILIAL = :IDFILIAL');
            ParamByName('VLR_RETORNADO').AsFloat := vlrDevolucao;
            ParamByName('IDVENDA').AsInteger := idVendaDevolvida;
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            Prepare;
            ExecQuery;
            transFrmPrincipal.CommitRetaining;
          end;

          if frmParamDevTroca.tipo <> 'devolver' then
          begin
            if (idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger) and (frmParamDevTroca.tipo = 'credito')  then
            begin
              idCliente := RetornaIdCliente;
            end;

            if (idCliente <> DM.fdsConfigIDCLIENTEPADRAO.AsInteger) then
            begin
              with qryComand do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE CLIENTE C SET C.ULTIMO_CREDITO=C.CREDITO,C.DT_ULTIMO_CREDITO =:DATA, C.CREDITO = C.CREDITO + :CREDITO WHERE C.ID = :IDCLIENTE');
                ParamByName('CREDITO').AsFloat := vlrDevolucao;
                ParamByName('IDCLIENTE').AsInteger := idCliente;
                ParamByName('DATA').AsDateTime := now;
                Prepare;
                ExecQuery;
                transFrmPrincipal.CommitRetaining;
              end;
              if frmParamDevTroca.tipo = 'credito' then
              begin
                Case MessageBox(Application.Handle, Pchar('Deseja Imprimir o comprovante de lan�amento de cr�dio para esse cliente?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                     IDYES: begin
                               with qryComand do
                               begin
                                Close;
                                SQL.Clear;
                                SQL.Add('select C.* from cliente c where c.id ='+ QuotedStr(IntToStr(idCliente)));
                                prepare;
                                ExecQuery;
                               end;

                              DM.obs:='';
                              DM.cliente:= IntToStr(idCliente)+'- ' + qryComand.FieldByName('NOME').AsString;
                              DM.valor:= FloatToStr(devTemp);
                              DM.valorTotal:= FloatToStr(qryComand.FieldByName('CREDITO').AsFloat);
                              DM.historico := FloatToStr(idVendaDevolvida);
                              ImprimirComprovanteDev('/Relatorios/frxComprovanteCredito.fr3');
                               if haContaPaga=True then
                               begin
                                obs:='Credito lan�ado na conta do Cliente devido haver pagamento parcial ou total de parcelas da venda.';
                                DM.obs:= obs;
                                ImprimirComprovanteDev('/Relatorios/frxComprovanteCredito.fr3');
                               end;
                            end;
                end;
              end;

              Application.MessageBox('Cr�dito lan�ado com sucesso.', 'Devolu��o', MB_OK+MB_ICONEXCLAMATION);
            end;
          end;
        end;

        if frmParamDevTroca.tipo <> 'nova' then
        begin
          ResetarCaixa;
        end;

        frmParamDevTroca.Free;
      end;
    end;
  end
  else
    Application.MessageBox('Venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.edtAlturaExit(Sender: TObject);
var
componente: TComponent;
begin

    componente := FindComponent(cbxComponentes.Value);

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Height := StrToInt(edtAltura.Text);
      end;
    end;
    if (componente  is TrzDBEdit  ) then
    begin
     with (componente as TrzDBEdit) do
      begin
        ClientHeight := StrToInt(edtAltura.Text);
      end;
    end;
end;

procedure TfrmPrincipal.edtAlturaKeyPress(Sender: TObject; var Key: Char);
var
componente: TComponent;
begin
  if key = #13 then
  begin
    componente := FindComponent(cbxComponentes.Value);

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Height := StrToInt(edtAltura.Text);
      end;
    end;

    if (componente  is TrzDBEdit) then
    begin
     with (componente as TrzDBEdit) do
      begin
        ClientHeight := StrToInt(edtAltura.Text);
      end;
    end;

    Key := #0;
  end;

end;

procedure TfrmPrincipal.edtEsquerdaExit(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Left := StrToInt(edtEsquerda.Text);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Left := StrToInt(edtEsquerda.Text);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Left := StrToInt(edtEsquerda.Text);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Left := StrToInt(edtEsquerda.Text);
    end;
  end;

end;

procedure TfrmPrincipal.edtEsquerdaKeyPress(Sender: TObject; var Key: Char);
var
componente: TComponent;
begin
  if key = #13 then
  begin
    componente := FindComponent(cbxComponentes.Value);
    if componente is TRzEdit then
    begin
      with (componente as TRzEdit) do
      begin
        Left := StrToInt(edtEsquerda.Text);
      end;
    end;

    if (componente is TRzDBEdit) then
    begin
      with (componente as TRzDBEdit) do
      begin
        Left := StrToInt(edtEsquerda.Text);
      end;
    end;

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Left := StrToInt(edtEsquerda.Text);
      end;
    end;

    if (componente is TRzLabel) then
    begin
      with (componente as TRzLabel) do
      begin
        Left := StrToInt(edtEsquerda.Text);
      end;
    end;

    Key := #0;
  end;
end;

procedure TfrmPrincipal.edtFonteSizeExit(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Font.Size := StrToInt(edtFonteSize.Text);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Font.Size := StrToInt(edtFonteSize.Text);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Font.Size := StrToInt(edtFonteSize.Text);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Font.Size := StrToInt(edtFonteSize.Text);
    end;
  end;

end;

procedure TfrmPrincipal.edtFonteSizeKeyPress(Sender: TObject; var Key: Char);
var
componente: TComponent;
begin
  if key = #13 then
  begin
    componente := FindComponent(cbxComponentes.Value);
    if componente is TRzEdit then
    begin
      with (componente as TRzEdit) do
      begin
        Font.Size := StrToInt(edtFonteSize.Text);
      end;
    end;

    if (componente is TRzDBEdit) then
    begin
      with (componente as TRzDBEdit) do
      begin
        Font.Size := StrToInt(edtFonteSize.Text);
      end;
    end;

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Font.Size := StrToInt(edtFonteSize.Text);
      end;
    end;

    if (componente is TRzLabel) then
    begin
      with (componente as TRzLabel) do
      begin
        Font.Size := StrToInt(edtFonteSize.Text);
      end;
    end;

    Key := #0;
  end;

end;

procedure TfrmPrincipal.edtItemDescExit(Sender: TObject);
begin
  if abilitaPrecUnit = 'N' then
  begin
    edtItemDesc.Enabled := False;
  end;
end;

procedure TfrmPrincipal.edtItemDescKeyPress(Sender: TObject; var Key: Char);
begin
  if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
  begin
    if Key = #13 then
    begin
      if abilitaPrecUnit = 'S' then
      begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
        VerificaDescAcreItem;
        FinalizaItem;
      end
      else
      begin
        Key := #0;
        if dm.fdsConfigQTN_SOLICITAR.AsString='S' then
         edtItemRef.SetFocus
        else
         edtItemQtn.SetFocus;
        VerificaDescAcreItem;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.edtItemPrecExit(Sender: TObject);
begin
  if abilitaPrecUnit = 'N' then
  begin
    edtItemPrec.Enabled := False;
  end;
end;

procedure TfrmPrincipal.edtItemPrecKeyPress(Sender: TObject; var Key: Char);
begin
  if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
  begin
    if Key = #13 then
    begin
      if abilitaPrecUnit = 'S' then
      begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
        AlteraPrecUnitario();
     //   FinalizaItem;
      end
      else
      begin
        Key := #0;
        edtItemQtn.SetFocus;
        AlteraPrecUnitario();
      end;
     // edtItemPrec.Text := FloatToStr(itemVlrUnitario);
    end;
  end;
end;

procedure TfrmPrincipal.edtItemQtnEnter(Sender: TObject);
begin
  if (fdsVendaItensUTILIZA_BALANCA.AsString = 'S') and (not(prodBalLeitorSereal=True)) and (DM.fdsCaixaMODELO_BALANCA.AsString <> '0') then
    begin
     LeBalanca;
    end;
    if prodBalLeitorSereal=True then
    begin
       edtItemQtn.Text:= pesoProdutoBalEtiq;
    end;
    prodBalLeitorSereal:=false;
end;

procedure TfrmPrincipal.edtItemQtnExit(Sender: TObject);
var
  utils : TUtils;
begin

  if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
  begin
//     if utils.ValidaInteiroFloat(edtItemQtn.Text, 'F') = 0 then
//     begin
//          //edtItemQtn.Text := '1';
//      end;
     //fdsVendaItensQTN.AsFloat := StrToFloat(edtItemQtn.Text);


  end;

end;

procedure TfrmPrincipal.edtItemQtnKeyPress(Sender: TObject; var Key: Char);
var
  tempQtn : String;
  utils : TUtils;
begin
  if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
  begin

//     if utils.ValidaInteiroFloat(edtItemQtn.Text, 'F') = 0 then
//     begin
//          //edtItemQtn.Text := '1';
//      end;
     //fdsVendaItensQTN.AsFloat := StrToFloat(edtItemQtn.Text);
//

      tempQtn := edtItemQtn.Text;
//
    if abilitaPrecUnit = 'N' then
    begin
      if (Key in ['a'..'z']) or (Key in ['A'..'Z']) then
      begin
        if (Key = 'P') or (Key = 'p') then
        begin
          edtItemPrec.Enabled := True;
          edtItemPrec.SetFocus;
        end;

        if (Key = 'D') or (Key = 'd') then
        begin
          edtItemDesc.Enabled := True;
          edtItemDesc.SetFocus;
        end;

        Key :=#0;
      end;
    end;

    if Key = #13 then
    begin
      if abilitaPrecUnit = 'N' then
      begin
       //----------------------------------------------------------------------------------------------
       if (tempQtn = EmptyStr) or (tempQtn = '0') then
       begin
        Application.MessageBox('Informe uma quantidade', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
        edtItemQtn.Text:= '1';
        fdsVendaItensQTN.AsFloat := 1;
        edtItemQtn.SetFocus;
        abort;
       end
       else
       begin
        if Length(tempQtn)>=13 then
        begin
          if pegaCodDeLeitor=True then
          begin
           edtItemQtn.Text:= pesoProdutoBalEtiq;
           fdsVendaItensQTN.AsFloat :=StrToFloat(pesoProdutoBalEtiq);
          end
          else
          begin
           if (DM.fdsConfigQTN_SOLICITAR.AsString ='S') and (edtItemQtn.Text>'0') then
           begin
             edtItemQtn.Text:=edtItemQtn.Text;
             fdsVendaItensQTN.AsFloat :=StrToFloat(edtItemQtn.Text);
           end
           else
           begin
             edtItemQtn.Text:='1';
             fdsVendaItensQTN.AsFloat :=1;
           end;
          end;
          if (DM.fdsConfigQTN_SOLICITAR.AsString ='S') then
          begin
            edtItemRef.SetFocus;
          end
          else
          edtItemQtn.SetFocus;
          abort;
        end
        else
          fdsVendaItensQTN.AsFloat := StrToFloat(tempQtn);
       end;
        fdsVendaItensQTN_RESTANTE.AsFloat:= fdsVendaItensQTN.AsFloat;
        //------------------------------------------------------------------------------------------------
        FinalizaItem;
        if DM.fdsConfigQTN_SOLICITAR.AsString='S' then
        begin
         Key := #0;
         edtItemRef.SetFocus;
        end
        else
        begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
        end;
      end
      else
      begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
      end;
     // gdrItens.Enabled:= not(gdrItens.Enabled);
      gdrItens.Enabled:= True;
    end;
  end;
end;

procedure TfrmPrincipal.edtItemRefKeyPress(Sender: TObject; var Key: Char);
var
utils:TUtils;
begin
  if (DM.fdsConfigQTN_SOLICITAR.AsString ='S') and (Key= #42) then
  begin
    edtItemQtn.Text:= edtItemRef.Text;
    edtItemRef.Clear;
    key:=#0;
    edtItemRef.SetFocus;
    Abort;
  end;
 // edtItemQtn.Text:=edtItemRef.Text;

  if ((Key = #13) or(utils.LetraNoEdt(Key).key=#13)) and (modoEdicaoTela = False) then
  begin
//    if not(fdsVendaItens.State in [dsInsert, dsEdit]) then
//      if Trim(edtItemRef.Text) = EmptyStr then
//      begin
    letra:=utils.LetraNoEdt(Key).letra;
       gdrItens.Enabled:= false;
      if fdsVendaItens.State in [dsInsert, dsEdit] then
        fdsVendaItens.Cancel;

//Verifica se � utilizado balan�a de etiqueta para poder saber o codigo do leitor q sera pego

      TrataCodigoEtquetaBal;
 //----------------------------------------------------------------------------------------------
      if RetornaItem then
      begin
       // ShowMessage(IntToStr(fdsVendaItens.RecordCount) + ' ' + fdsVendaItensNOME.AsString);
        if statusCaixa = 'LV' then
        begin
          statusCaixa := 'VE';
          with fdsVenda do
          begin
            Close;
            Open;
            Append;
            idVenda := fdsVendaID.AsInteger;
            fdsVendaDT_INC.AsDateTime := Now;
            fdsVendaSTATUS.AsString := 'AB';
            fdsVendaPREFIXO.AsString := 'VE';
            fdsVendaIDCLIENTE.AsString := DM.fdsConfigIDCLIENTEPADRAO.AsString;
            cliente := 'CLIENTE PADR�O';
            fdsVendaIDVENDEDOR.AsString := DM.fdsConfigIDVENDEDORPADRAO.AsString;
            fdsVendaIDFORMA_PAG.AsString := '1';
            fdsVendaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            fdsVendaIDCAIXA.AsInteger := DM.numCaixa; // Tomar cuidado pois est� puchando o n�mero do caixa no ini e passando como ID do caixa para a venda
            Post;
          end;
          transFrmPrincipal.CommitRetaining;

    //      cupomConfigInicio := Chr(27) + Chr(116) + Chr(1);
    //      Cupom := cupomConfigInicio + 'TEXTO IMPRESSO NA IPRESSORA MP 4200TH '+ #13 + #10;

        end;

        if exibirImgItem = True then
          imgItem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\content\produtos\' + IntToStr(idProduto) + '.JPG');

        fdsVendaItens.ParamByName('IDVENDA').AsInteger := idVenda;
      //  ShowMessage(IntToStr(fdsVendaItens.RecordCount) + ' ' + fdsVendaItensNOME.AsString);
        fdsVendaItens.Open;
       // ShowMessage(IntToStr(fdsVendaItens.RecordCount) + ' ' + fdsVendaItensNOME.AsString);
        fdsVendaItens.Append;
        fdsVendaItensIDVENDA.AsInteger := idVenda;
        fdsVendaItensIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        fdsVendaItensIDPROD_ITEM.AsInteger := idItem;
        fdsVendaItensDT_INC.AsDateTime := Now;
        fdsVendaItensVLR_UNITARIO.AsCurrency :=  RoundTo(itemVlrUnitario+vlrIPI,-2);
        fdsVendaItensPESO.AsCurrency := itemPeso;
        fdsVendaItensREFERENCIA.AsString := edtItemRef.Text;
        fdsVendaItensIDGRUPO.AsInteger:= idGrupo;
        if (DM.fdsConfigQTN_SOLICITAR.AsString ='S') and (edtItemQtn.Text>'0') then
        begin
          fdsVendaItensQTN.AsFloat := StrToFloat(edtItemQtn.Text);
          edtItemQtn.Text := edtItemQtn.Text;
        end
        else
        begin
          fdsVendaItensQTN.AsFloat := 1;
          edtItemQtn.Text := '1';
        end;
        fdsVendaItensNOME.AsString := lblProduto.Caption;
        fdsVendaItensCOD_FABRICA.AsString := edtItemRef.Text;
        fdsVendaItensITEM.AsInteger := totItem + 1;
        fdsVendaItensPRECO_CUSTO.AsFloat := precoCustoItem;
        fdsVendaItensPREC_CUSTO_MEDIO.AsFloat:= PrecCustoMedioItem;
        fdsVendaItensUTILIZA_BALANCA.AsString := utBalanca;
        fdsVendaItensCFOP.AsString := CFOP_VENDA;
        fdsVendaItensCST_CSOSN.AsString := CSOSN_VENDA;
        fdsVendaItensCST_PIS.AsString :=CST_PIS;
        fdsVendaItensCST_COFINS.AsString:=CST_COFINS;
        fdsVendaItensVLR_IPI.AsFloat:= vlrIPI;
        fdsVendaItensVLR_ICMS.AsFloat:= vlrICMS;
        if (DM.fdsConfigQTN_SOLICITAR.AsString ='S')then
        begin
         edtItemQtnEnter(self);
          key:=#13;
          edtItemQtnKeyPress(self,key);
        end
        else
        begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
        end;

      end
      else
      begin
        edtItemRef.Clear;
        Key := #0;
        edtItemRef.SetFocus;
      end;
    end;
//    else
//      edtItemRef.Text := fdsVendaItensREFERENCIA.AsString;


  //end;
end;

procedure TfrmPrincipal.edtLarguraExit(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Width := StrToInt(edtLargura.Text);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Width := StrToInt(edtLargura.Text);
    end;
  end;

  if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;

    if (componente is TRzLabel) then
    begin
      with (componente as TRzLabel) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;
end;

function TfrmPrincipal.ExcluirParteReceber(id: Integer; vlrDescontar : Double): double;
var
  tempIDReceber: Integer;
  tempVlrReceber: Double;
  tempVlrParcelas, tempTotParcelas: Double;
begin
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID, VALOR, TOT_PARCELA FROM CNT_RECEBER R WHERE R.IDVENDA = ' + IntToStr(id));
    Prepare;
    ExecQuery;
  end;

  if qryComand.RecordCount > 0 then
  begin
    tempIDReceber := qryComand.FieldByName('ID').AsInteger;
    tempVlrReceber := qryComand.FieldByName('VALOR').AsFloat;
    if (tempVlrReceber <= vlrDescontar) then
    begin
      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM CNT_RECEBER_ITEM WHERE IDRECEBER = :ID');
        ParamByName('ID').AsInteger := tempIDReceber;
        Prepare;
        ExecQuery;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM CNT_RECEBER WHERE ID = :ID');
        ParamByName('ID').AsInteger := tempIDReceber;
        Prepare;
        ExecQuery;
      end;
      result := vlrDescontar - tempVlrReceber;

    end
    else
    begin
      tempVlrReceber := RoundTo(qryComand.FieldByName('VALOR').AsFloat - vlrDescontar, -2);
      tempTotParcelas := qryComand.FieldByName('TOT_PARCELA').AsFloat;
      tempVlrParcelas := RoundTo(tempVlrReceber / tempTotParcelas, -2);

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CNT_RECEBER SET VALOR = :VALOR WHERE ID = :ID');
        ParamByName('VALOR').AsFloat := tempVlrReceber;
        ParamByName('ID').AsInteger := tempIDReceber;
        Prepare;
        ExecQuery;
      end;

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CNT_RECEBER_ITEM SET VALOR = :VALOR WHERE IDRECEBER = :IDRECEBER');
        ParamByName('VALOR').AsFloat := tempVlrParcelas;
        ParamByName('IDRECEBER').AsInteger := tempIDReceber;
        Prepare;
        ExecQuery;
      end;

      result := 0;
    end;

    transFrmPrincipal.CommitRetaining;
  end;
end;

procedure TfrmPrincipal.ExcluirReceber(id : integer);
var
  tempIDReceber: Integer;
begin
  //Selecionando o ID de recebimento
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CNT_RECEBER R WHERE R.IDVENDA = ' + IntToStr(id));
    Prepare;
    ExecQuery;
  end;

  tempIDReceber := qryComand.FieldByName('ID').AsInteger;

  // Deleta o contas a receber da tabela de Cheque
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER_CHEQUE RC WHERE RC.IDRECEBER_ITEM IN (SELECT ID FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = ' + IntToStr(tempIDReceber) + ')');
    Prepare;
    ExecQuery;
  end;

  //Deleta o contas a receber Item
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = ' + IntToStr(tempIDReceber));
    Prepare;
    ExecQuery;
  end;

  //Deleta contas a receber
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER R WHERE R.ID = ' + IntToStr(tempIDReceber));
    Prepare;
    ExecQuery;
  end;

  transFrmPrincipal.CommitRetaining;
end;

procedure TfrmPrincipal.ExcluirRecebimento(idReceber: Integer);
var
  tempidReceber :Integer;
begin
  tempIDReceber := idReceber;

  //Deleta Contas a receber da tabela CNT_RECEBER_CHEQUE
  with qryDeletaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER_CHEQUE RC WHERE RC.IDRECEBER_ITEM IN (SELECT ID FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = ' + IntToStr(tempIDReceber) + ')');
    Prepare;
    ExecQuery;

  end;

  //Deleta o contas a receber Item
  with qryDeletaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = ' + IntToStr(tempIDReceber));
    Prepare;
    ExecQuery;

  end;

  //Deleta contas a receber
  with qryDeletaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM CNT_RECEBER R WHERE R.ID = ' + IntToStr(tempIDReceber));
    Prepare;
    ExecQuery;
  end;
  transFrmPrincipal.CommitRetaining;
end;

procedure TfrmPrincipal.ExibeNumeroNotaTimer(Sender: TObject);
begin
  keybd_event(VK_RETURN,0,0,0);

  ExibeNumeroNota.Enabled := False;
end;

procedure TfrmPrincipal.fdsVendaItensBeforeOpen(DataSet: TDataSet);
begin
  fdsVendaItens.ParamByName('IDFILIAL').AsInteger := dm.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmPrincipal.FecharSistema;
begin
  if statusCaixa = 'LV' then
 begin

//           Case MessageBox(Application.Handle, Pchar('Deseja realmente fechar o sistema?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    Case TFrmMensagens.Mensagem('Deseja realmente fechar o sistema?','Aten��o','S',[mbNao,mbSim])of
         true: begin
            with qryComand do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM VENDA WHERE TIPO = ' + QuotedStr('OF'));
              Prepare;
              ExecQuery;
            end;

            if qryComand.RecordCount > 0 then
              //Application.MessageBox('Lembrando que voc� possui Cupons Fiscais emitidos em modo OFF-Line, que devem ser transmitidos em menos de 24h.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
             TFrmMensagens.Mensagem('Lembrando que voc� possui Cupons Fiscais emitidos em modo OFF-Line, que devem ser transmitidos em menos de 24h.','Aten��o','C',[mbOk]);
            Application.Terminate;
         end;
    end;
 end
 else
 begin
//            if fdsVendaItens.State in [dsInsert, dsEdit] then
//
//            else
      AbandonaVenda;
 end;
            //Application.MessageBox('Voc� n�o pode fechar o sistema com uma venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.FinalizarVenda;
var
idMovCaixa:Integer;
begin

  imprimir := False;

  if statusCaixa = 'VE' then
  begin
    if fdsVendaItens.State in [dsInsert, dsEdit] then
    begin
      Application.MessageBox('Voc� n�o terminou de lan�ar o item atual, cancele ou confirme este item antes de fechar a venda.', 'Aten��o', MB_OK+MB_ICONWARNING);
    end
    else
    begin
      Try
        frmVendaFinalizacao                      := TfrmVendaFinalizacao.Create(nil);
        frmVendaFinalizacao.idVenda              := idVenda;
        frmVendaFinalizacao.idCliente            := fdsVendaIDCLIENTE.AsInteger;
        frmVendaFinalizacao.idVendedor           := fdsVendaIDVENDEDOR.AsInteger;
        frmVendaFinalizacao.edtCliente.Text      := cliente;
        frmVendaFinalizacao.edtIDVenda.Text      := IntToStr(idVenda);
        frmVendaFinalizacao.edtPrefixoVenda.Text := 'VE';
        frmVendaFinalizacao.tipoVenda            := 'VE';
        frmVendaFinalizacao.valorDevolucao       := vlrDevolucao;
        frmVendaFinalizacao.creditoTotal         := 0;
        frmVendaFinalizacao.valorDoc             := fdsVendaVLR_VENDA.AsFloat;
        frmVendaFinalizacao.pesoEntregar         := 0;
        frmVendaFinalizacao.valorDesconto        := RoundTo(frmVendaFinalizacao.valorDoc * fdsVendaVLR_DESCONTO.AsFloat / 100, -2);

        if idCliente <> DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
        begin
           with frmVendaFinalizacao.fdsCliente do
           begin
              Close;
              Conditions.AddCondition('ID', 'CL.ID = ' + IntToStr(idCliente), True);
              Conditions.Apply;
              Open;
           end;

           frmVendaFinalizacao.edtCliente.Text := frmVendaFinalizacao.fdsClienteNOME.AsString;
           frmVendaFinalizacao.idCliente       := frmVendaFinalizacao.fdsClienteID.AsInteger;
           frmVendaFinalizacao.valorDevolucao  := 0;
           frmVendaFinalizacao.creditoTotal    := frmVendaFinalizacao.fdsClienteCREDITO.AsFloat;
        end;

        if modoPreVenda  then
        begin
          frmVendaFinalizacao.edtIdVendedor.Enabled   := False;
          frmVendaFinalizacao.btnPesqVendedor.Enabled := False;
          frmVendaFinalizacao.mmoOBS.Lines.Add(fdsVendaOBS.AsString);
        end;

        frmVendaFinalizacao.ShowModal;
      Finally
        if frmVendaFinalizacao.ModalResult = mrOk then
        begin
          fdsVenda.Edit;
          if frmVendaFinalizacao.vendaEntregar then
          begin
            fdsVendaSTATUS.AsString   := 'CF';
            fdsVendaENTREGAR.AsString := 'S';
            fdsVendaPESO.AsFloat      := frmVendaFinalizacao.pesoEntregar;
          end
          else
            fdsVendaSTATUS.AsString := 'FC';

          fdsVendaOBS.AsString := Trim(frmVendaFinalizacao.mmoObs.Text);

          //end;

          if (frmVendaFinalizacao.idFormaPag = 1) or (frmVendaFinalizacao.idFormaPag = 2) or (frmVendaFinalizacao.idFormaPag = 3)  or (frmVendaFinalizacao.idFormaPag = 9) then
            fdsVendaDT_PAGAMENTO.AsDateTime := Now;

          fdsVendaTOT_PARCELA.AsInteger := frmVendaFinalizacao.parcelas;

          if frmVendaFinalizacao.valorDinheiro > 0 then
          fdsVendaVLR_ENTRADA.AsFloat := frmVendaFinalizacao.valorDinheiro - frmVendaFinalizacao.troco
          else
          fdsVendaVLR_ENTRADA.AsFloat := frmVendaFinalizacao.valorDinheiro;

          fdsVendaIDFORMA_PAG.AsInteger := frmVendaFinalizacao.idFormaPag;
          fdsVendaIDVENDEDOR.AsInteger  := frmVendaFinalizacao.idVendedor;
          fdsVendaIDCLIENTE.AsInteger   := frmVendaFinalizacao.idCliente;
          fdsVendaVLR_DESCONTO.AsFloat  := frmVendaFinalizacao.valorDesconto;
          //Valor da venda continua o mesmo, somente com os descontos nos itens, o valor total � o valor da venda - desconto no total

          if frmVendaFinalizacao.valorDesconto > 0 then
          fdsVendaTIPO_DESC_ACRESC.AsString := frmVendaFinalizacao.cbxDescAcre.Value;

          if frmVendaFinalizacao.cbxDescAcre.Value = 'D' then
            fdsVendaVLR_TOTAL.AsFloat := fdsVendaVLR_TOTAL.AsFloat - fdsVendaVLR_DESCONTO.AsFloat
          else
            fdsVendaVLR_TOTAL.AsFloat := fdsVendaVLR_TOTAL.AsFloat + fdsVendaVLR_DESCONTO.AsFloat;

          fdsVenda.Post;
          transFrmPrincipal.CommitRetaining;

          fdsMovimentoCaixa.Open;
          fdsMovimentoCaixa.Append;
          idMovCaixa:= fdsMovimentoCaixaID.AsInteger;
          fdsMovimentoCaixaCONTROLE.AsInteger       := DM.fdsCaixaCONTROLE.AsInteger;
          fdsMovimentoCaixaIDUSUARIO.AsInteger      := DM.idUsuario;
          fdsMovimentoCaixaTIPO.AsString            := 'VE';
          fdsMovimentoCaixaMOEDA.AsString           := frmVendaFinalizacao.moeda;
          fdsMovimentoCaixaVLR_DESCONTO.AsFloat     := frmVendaFinalizacao.valorDesconto;
          fdsMovimentoCaixaVLR_VENDA.AsFloat        := vlrTotal;
          fdsMovimentoCaixaVLR_TOTAL.AsFloat        := vlrTotal - frmVendaFinalizacao.valorDesconto;
          fdsMovimentoCaixaVLR_ENTRADA.AsFloat      := frmVendaFinalizacao.valorDinheiro;
          fdsMovimentoCaixaVLR_CARTAO.AsFloat       := frmVendaFinalizacao.valorCartao;
          fdsMovimentoCaixaVLR_CHEQUE.AsFloat       := frmVendaFinalizacao.valorCheque;
          fdsMovimentoCaixaVLR_NOTA.AsFloat         := frmVendaFinalizacao.valorParcelar;
          fdsMovimentoCaixaVLR_FINANCEIRA.AsFloat   := frmVendaFinalizacao.valorFinanceira;
          fdsMovimentoCaixaVLR_VALEDESCONTO.AsFloat := frmVendaFinalizacao.valorValeDesconto;
          fdsMovimentoCaixaVLR_TICKET.AsFloat       := frmVendaFinalizacao.valorTicket;
          fdsMovimentoCaixaVLR_CREDITO.AsFloat      := frmVendaFinalizacao.valorCredito;
          fdsMovimentoCaixaIDMOVIMENTO.AsInteger    := idVenda;
          fdsMovimentoCaixaIDCAIXA.AsInteger        := DM.numCaixa;
          fdsMovimentoCaixaIDFILIAL.AsInteger       := DM.fdsConfigIDFILIAL.AsInteger;
          fdsMovimentoCaixaTROCO.AsFloat            := frmVendaFinalizacao.Troco;
          fdsMovimentoCaixaHISTORICO.AsString       := 'Venda Cliente: ' + frmVendaFinalizacao.edtCliente.Text;

          if vlrDevolucao > 0 then
          begin
            fdsMovimentoCaixaHISTORICO.AsString := 'Abatido ' + FormatFloat('R$ #,##0.00', vlrDevolucao) + ' de Cr�dito';
            fdsMovimentoCaixaHISTORICO.AsString := fdsMovimentoCaixaHISTORICO.AsString + ' da devolou��o de itens da venda n� ' + IntToStr(idVendaDevolvida);
          end
          else
          begin
            if frmVendaFinalizacao.valorCredito > 0 then
            begin
              fdsMovimentoCaixaHISTORICO.AsString := 'Abatido ' + FormatFloat('R$ #,##0.00', frmVendaFinalizacao.valorCredito) + ' de Cr�dito do cliente';
            end;
          end;

          fdsMovimentoCaixa.Post;
          transFrmPrincipal.CommitRetaining;
          fdsMovimentoCaixa.Locate('ID',idMovCaixa,[]);
          if (DM.impVenda <> 0) then
          begin
            if (perguntaImp = 'S') then
            begin
              Case MessageBox(Application.Handle, Pchar('Deseja imprimir venda?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                idYes:
                  begin
                    imprimir := True;
                  end;
              end;
            end
            else
            begin
              imprimir := True;
            end;
          end;

          if emitirFiscal then
          begin
            BuscarVenda(idVenda);
            ConsultaItem;
            if DM.fdsCaixaMODELO_IMPRESSORA.AsString = '2' then
            begin
            //  AbrirGaveta;
              PreparaEmissaoNFCe;
            end
            else
            begin
              PreparaEmissaoNFCe;
             // AbrirGaveta;
            end;
          end
          else if imprimir then
          begin
            VerificaTipoImpressao;
           // AbrirGaveta;
          end;

          Application.ProcessMessages;



          if modoPreVenda then
          begin
            with qryComand do
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE PREVENDA SET STATUS = ' + QuotedStr('FC') + 'WHERE ID = ' + IntToStr(idPreVenda));
              Prepare;
              ExecQuery;
              idPreVenda := 0;
            end;
            transFrmPrincipal.CommitRetaining;
          end;

          ResetarCaixa;

          if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S' then
          begin
           PescCaixa;
           DM.fdsCaixa.Edit;
           DM.fdsCaixaTAB_PRECO.AsInteger:=DM.fdsConfigTAB_PADRAO_PDV.AsInteger;
           lblTabelaPreco.Caption:='Tab.Pre�o '+IntToStr(DM.fdsConfigTAB_PADRAO_PDV.AsInteger);
           DM.fdsCaixa.Post;
           dm.conexao.CommitRetaining;
          end;
        end;
      End;
      frmVendaFinalizacao.Free;
    end;
  end;
  end;

function TfrmPrincipal.FormataNumeroItem(numero: integer): string;
var
  temp : string;
begin
  temp := IntToStr(numero);
  while Length(temp) < 3 do
  begin
    temp := '0' + temp;
  end;

  Result := temp;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  AbriuBanco: Boolean;
  utils:TUtils;
begin
  Application.OnMessage := AppMessage;
  Try
     try
       dm.Conexao.Connected := False;
       LeIni;
       dm.Conexao.Connected := True;
       dm.fdsConfig.Open;
       DM.fdsConfig.Edit;
       DM.fdsConfigHOJE.AsString := DateToStr(Now);
       DM.fdsConfig.Post;
       DM.conexao.CommitRetaining;
       dm.Conexao.Connected := True;
       transFrmPrincipal.Active := True;
       dm.fdsConfigNFe.Open;
       ConfiguraBalanca;


     Except on E : Exception do
       begin
        ShowMessage(E.Message);
        Application.Terminate;
       end;
     end;

     ControleRegistro;

     frmLogin := TfrmLogin.Create(nil);
     frmLogin.ShowModal;

   Finally
     if frmLogin.ModalResult = mrOk then
     begin
        DM.idUsuario := frmLogin.fdsUserID.AsInteger;
        DM.operador := frmLogin.fdsUserNOME.AsString;

        with dm.fdsUsuarioPermic do
        begin
          Close;
          ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
          ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
          Open;
        end;

        lblOperador.Caption := 'OPERADOR: '  + DM.operador;
        lblNumCaixa.Caption := 'CAIXA: 0' + IntToStr(DM.numCaixa);
        AbrirCaixa;
        
        if dm.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S' then
          lblTabelaPreco.Caption:= VerificaTabelaPrecos(DM.fdsCaixaTAB_PRECO.AsInteger)
        else
          lblTabelaPreco.Visible:=false;

        if DM.fdscaixaPADRAO_LAYOUT.AsString = 'P' then
          ConfiguraLayout
        else
        begin
          utils.ConfiguraLeyalt(IntToStr(Screen.Width),IntToStr(Screen.Height));
         // ShowMessage(IntToStr(Screen.Width)+'x'+IntToStr(Screen.Height));
        end;

        modoPreVenda := False;

        //if NFCE = 'S' then
        if DM.fdsCaixaNF_F9.AsString <> 'N' then
          ConfiguraNFCe
        else
        begin
          ACBrNFe1.SSL.Clear;
        end;

        if abilitaPrecUnit = 'S' then
        begin
          edtItemPrec.Enabled := True;
          edtItemDesc.Enabled := True;
        end;
        if DM.fdsConfigQTN_SOLICITAR.AsString='S' then
        begin
          edtItemQtn.Enabled:=false;
        end
        else
          edtItemQtn.Enabled:=true;

        ComponentesEdicao;
        cdsFormaPagamento.CreateDataSet;
        cdsTransmitirVendas.CreateDataSet;
        TimerEventos.Enabled:= true;
     end
     else
        Application.Terminate;
  End;


//  if (Date > StrToDate('30/08/2015')) or (dm.fdsConfigFABRICA.AsString <> 'N') then //alterar o nome do campo e utilizar para quando o sistema explirar alterar essa letra para um J, qualquer uma diferente dessa expira, juntar com l�gica de CNPJ gavado no config
//  begin   //criar logica para toda vez que abrir, armazenar a data atual, se abri denovo com data menor, o sistema informar� data incorreta. Armazenar a data atual criptografada no banco para compara��o.
//    with DM do
//    begin
//      fdsConfig.Edit;
//      fdsConfigFABRICA.AsString := 'S';
//      fdsConfig.Post;
//      Conexao.CommitRetaining;       d
//    end;
//    Application.MessageBox('Seu sistema expirou, por favor entre em contato com V�tor Ferreira Rodrigues.', 'Aten��o', MB_OK+MB_ICONWARNING);
//    Application.Terminate;
//  end;

end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  uVerificaPermicao:TVerificaPermicao;
begin
  //If (GetKeyState(Ord('Q'))<0) and (GetKeyState(Ord('N'))<0) and (GetKeyState(VK_CONTROL)<0) then
  If ((GetKeyState(VK_CONTROL)<0) and (GetKeyState(VK_F12)<0)) and (modoEdicaoTela = False) then
  begin
    Configuracoes;
  end;
 
  if (Key = VK_F5) and (modoEdicaoTela = False) then
  begin
   if uVerificaPermicao.Verifica('ABRIR_GAVETA')=true then
   begin
    if DM.fdsCaixaPDV_UTILIZA_GAVETA.AsString = 'S' then
    begin
     if DM.fdsCaixaMODELO_IMPRESSORA.AsString = '2'  then
     ACBrNFeDANFeESCPOS1.PosPrinter.Ativar;
    // ShowMessage('Vai abrir');
     AbrirGaveta;

     if DM.fdsCaixaMODELO_IMPRESSORA.AsString = '2'  then
     ACBrNFeDANFeESCPOS1.PosPrinter.Desativar;
    end;
    //ShowMessage('Abrir');
   end
   else
   begin
    TFrmMensagens.Mensagem('Desculpe, Usu�rio sem permiss�o para abrir a Gaveta.', 'N�o permitido abrir gaveta.', 'I',[mbOK]);
      Abort;
   end;

  end;
 
  If ( ((GetKeyState(VK_CONTROL)<0) and (Key = 103 )) or ((GetKeyState(VK_CONTROL)<0) and (Key = 71 )) )  and (modoEdicaoTela = False) then
  begin
    
   if uVerificaPermicao.Verifica('ABRIR_GAVETA')=true then
   begin
    //ShowMessage('Vai abrir');
    if DM.fdsCaixaPDV_UTILIZA_GAVETA.AsString = 'S' then
    begin
     if DM.fdsCaixaMODELO_IMPRESSORA.AsString = '2'  then
       ACBrNFeDANFeESCPOS1.PosPrinter.Ativar;

        AbrirGaveta;

     if DM.fdsCaixaMODELO_IMPRESSORA.AsString = '2'  then
     ACBrNFeDANFeESCPOS1.PosPrinter.Desativar;
    end;
   // ShowMessage('Abrir');
   end
   else
   begin
      TFrmMensagens.Mensagem('Desculpe, Usu�rio sem permiss�o para abrir Gaveta.', 'N�o permitido abrir gaveta.','I' ,[mbOK]);
      Abort;
   end;
    
  end;

  if (Key = VK_F2) and (modoEdicaoTela = False) then
  begin
     LancNumPreVenda;
    // OrdemServico;
  end;
 
  if (Key = VK_F3) and (modoEdicaoTela = False) then
  begin
     Opcoes;
   //   MovimentoCaixa;
     //FecharCaixa;
  end;
 
  if (Key = VK_F4) and (modoEdicaoTela = False) then
  begin
     Recebimento;
  end;

 { if (Key = VK_F5) and (modoEdicaoTela = False) then
  begin
    CadastroCliente;
  end;   }

  if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S') then
  begin
    if (Key = VK_F6) and ( modoEdicaoTela = False) and (statusCaixa = 'LV') then
    begin
        TabelaPrecos;
    end;
  end;

  if (Key = VK_F7) and (modoEdicaoTela = False) then
  begin
    ACBrCalculadora1.Execute;
  end;

  if (Key = VK_F8) and (modoEdicaoTela = False) then
  begin
    if statusCaixa = 'LV' then
    begin
      if VerificaPermicao('DEVOLUCAO') then
        DevolucaoTroca;
    end;
  end;

  if Dm.fdsConfigBLOQUEAR_F9.AsString = 'N' then
  begin
    if (Key = VK_F9) and (modoEdicaoTela = False) then
    begin
       emitirFiscal := not(emitirFiscal);
       imgNFCe.Visible := emitirFiscal;

       // RestaurarVenda;
    end;
  end;

  if (Key = VK_F10) and (modoEdicaoTela = False) then
  begin
    FinalizarVenda;
  end;

  if (Key = VK_F11) and (modoEdicaoTela = False) then
  begin
      CancelaItem;
  end;
 
  if (Key = VK_F12) and (modoEdicaoTela = False) then
  begin
      AbandonaVenda;
  end;
 
  if (Key = VK_ESCAPE) and (modoEdicaoTela = False) then
  begin
      FecharSistema;
  end;

  if DM.fdsConfigQTN_SOLICITAR.AsString='S' then
  begin
    If ((GetKeyState(VK_CONTROL)<0) and (Key = 98 )) or ((GetKeyState(VK_CONTROL)<0) and (Key = 66)) then
    begin
       PescCaixa;
       if (DM.fdsCaixaMODELO_BALANCA.AsString > '0') then
       begin
        LeBalanca;
       end
       else
       Application.MessageBox('Nenhum Modelo Especificado!', 'Aten��o',MB_OK+MB_ICONQUESTION)
    end;
  end
  else
  begin
    if (statusCaixa = 'VE') and (fdsVendaItens.State in [dsInsert]) then
    begin
      If ((GetKeyState(VK_CONTROL)<0) and (Key = 98 )) or ((GetKeyState(VK_CONTROL)<0) and (Key = 66)) then
      begin
         PescCaixa;
         if (DM.fdsCaixaMODELO_BALANCA.AsString > '0') then
         begin
          LeBalanca;
         end
         else
         Application.MessageBox('Nenhum Modelo Especificado!', 'Aten��o',MB_OK+MB_ICONQUESTION)
      end;
    end;
  end;

  if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S') and (modoEdicaoTela = False) then
  begin
    If ((GetKeyState(VK_CONTROL)<0) and (Key = 116 )) or ((GetKeyState(VK_CONTROL)<0) and (Key = 84)) and (statusCaixa = 'LV') then
    begin
      SelecionaTabPreco;
    end;
  end;

  If (GetKeyState(VK_CONTROL)<0) and (GetKeyState(VK_F9)<0) and (GetKeyState(VK_F10)<0) then
  begin
    modoEdicaoTela := True;
    lblProduto.Caption := 'Sistema em Modo de edi��o';
    pnlEdicao.Visible := True;
  end;

  if (modoEdicaoTela = True) then
  begin
    if (Key = VK_LEFT) then
      btnComponenteLeft.Click;

    if (Key = VK_RIGHT) then
      btnComponenteRight.Click;

    if (Key = VK_UP) then
      btnComponenteUp.Click;

    if (Key = VK_DOWN) then
      btnComponenteDown.Click;
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmPrincipal.Top := 0;
  frmPrincipal.Left := 0;
  frmPrincipal.Width := Screen.Width;
  frmPrincipal.Height := Screen.Height;
  ResetarCaixa;
end;

procedure TfrmPrincipal.gdrItensEnter(Sender: TObject);
begin
//if fdsVendaItens.State in [dsInsert] then
//    begin
//      Application.MessageBox('Por favor,primeiro termine de lan�ar o item', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
//      fdsVendaItens.Last;
//      abort;
//    end;
end;

procedure TfrmPrincipal.imgVencidoClick(Sender: TObject);
begin
 TimerEventos.Interval:= 500;
 TimerEventos.Enabled:=true;
end;

procedure TfrmPrincipal.ImpressoraCupom;
Var
  cArquivo: TextFile;
begin
//  Use Printers
//  Printer.PrinterIndex := -1; Seleciona impressora default, para evitar erro ap�s muitas impressoes
//  RichEdit1.Print('teste');

  try
     // printer.canvas.pen.width:=9;
     // AssignFile(cArquivo, 'COM3');
   //  AssignFile(cArquivo, 'D:\Cupom.txt');
      //AssignFile(cArquivo, impcupom); DM.fdsConfigIMP_CUPOM.AsString;
      with DM.fdsCaixa do
      begin
        Close;
        ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        Prepare;
        Open;
      end;
      //AssignFile(cArquivo, DM.fdsConfigIMP_CUPOM.AsString);
      AssignFile(cArquivo, DM.fdsCaixaIMP_CUPOM.AsString);
      Rewrite(cArquivo);
      Writeln(cArquivo, redItens.Text);
      Writeln(cArquivo);
      CloseFile(cArquivo);

    except on e: Exception do
    begin
      ShowMessage(e.Message);
    end;

  end;
end;

procedure TfrmPrincipal.ImprimeCupomFastReport;
begin
  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDVENDA', 'V.ID = ' + IntToStr(idVenda), True);
    Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  with fdsVendaItens do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := idVenda;
    Prepare;
    Open;
  end;

  with cdsFormaPagamento do
  begin
    EmptyDataSet;
    if fdsMovimentoCaixaVLR_CARTAO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CARTAO.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'A Prazo: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_NOTA.AsFloat;
      Post;

      with fdsCntReceber_Item do
      begin
        Close;
        ParamByName('IDVENDA').AsInteger := idVenda;
        ParamByName('IDFILIAL').AsInteger := dm.fdsConfigIDFILIAL.AsInteger;
        ParamByName('TIPO_VENDA').AsString := 'VE';
        Prepare;
        Open;
      end;

    end;
    if fdsMovimentoCaixaVLR_CHEQUE.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CHEQUE.AsFloat;
      Post;
    end;

    with qryComand do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VENDA_ITEM WHERE VLR_DESC_ACRE >'+quotedStr('0')+'AND IDVENDA ='+quotedStr(IntToStr(idVenda)));
    Prepare;
    ExecQuery
    end;
    if (qryComand.RecordCount>0) and (fdsMovimentoCaixaVLR_DESCONTO.AsFloat = 0) then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Sub.Total:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_TOTAL.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_DESCONTO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Desconto:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_DESCONTO.AsFloat;
      Post;

      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Sub.Total:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_TOTAL.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_CREDITO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cr�dito:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CREDITO.AsFloat;
      Post;
    end;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
    cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_ENTRADA.AsFloat;
    Post;

    if fdsMovimentoCaixaTROCO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaTROCO.AsFloat;
      Post;
    end;
  end;

  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  DM.valor := FloatToStr(fdsVendaVLR_TOTAL.AsFloat + fdsVendaVLR_DESCONTO.AsFloat);
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxVendaM3.fr3');
 //DM.fdsConfigIMP_CUPOM.AsString; impcupom;// Printer.Printers[1];
 // DM.frxReport1.PrintOptions.Printer := DM.fdsConfigIMP_CUPOM.AsString;
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := False;
  DM.frxReport1.PrepareReport(True);
  //DM.frxReport1.ShowReport(True);     //lembrar de comentar
  DM.frxReport1.Print;
end;

procedure TfrmPrincipal.ImprimeCupomSimplificado;
var
 linhas:Integer;
begin
 linhas:=0;
 with cdsFormaPagamento do
  begin
    EmptyDataSet;
    if fdsMovimentoCaixaVLR_CARTAO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CARTAO.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'A Prazo: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_NOTA.AsFloat;
      Post;

      with fdsCntReceber_Item do
      begin
        Close;
        ParamByName('IDVENDA').AsInteger := idVenda;
        ParamByName('IDFILIAL').AsInteger := dm.fdsConfigIDFILIAL.AsInteger;
        ParamByName('TIPO_VENDA').AsString := 'VE';
        Prepare;
        Open;
        linhas:=fdsCntReceber_Item.RecordCount;
      end;

    end;
    if fdsMovimentoCaixaVLR_CHEQUE.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CHEQUE.AsFloat;
      Post;
    end;

    with qryComand do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM VENDA_ITEM WHERE VLR_DESC_ACRE >'+quotedStr('0')+'AND IDVENDA ='+quotedStr(IntToStr(idVenda)));
    Prepare;
    ExecQuery
    end;
    if (qryComand.RecordCount>0) and (fdsMovimentoCaixaVLR_DESCONTO.AsFloat = 0) then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Sub.Total:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_TOTAL.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_DESCONTO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Desconto:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_DESCONTO.AsFloat;
      Post;

      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Sub.Total:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_TOTAL.AsFloat;
      Post;
    end;

    if fdsMovimentoCaixaVLR_CREDITO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cr�dito:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CREDITO.AsFloat;
      Post;
    end;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
    cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_ENTRADA.AsFloat;
    Post;

    if fdsMovimentoCaixaTROCO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaTROCO.AsFloat;
      Post;
    end;
  end;

  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;
  DM.linhas:= linhas;
  DM.valor := FloatToStr(fdsVendaVLR_TOTAL.AsFloat + fdsVendaVLR_DESCONTO.AsFloat);
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxVendaM3Simplificado.fr3');
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := False;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.Print;
end;

procedure TfrmPrincipal.ImprimeNotaFastReport;
begin
  with fdsCntReceber_Item do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := idVenda;
    ParamByName('IDFILIAL').AsInteger := dm.fdsConfigIDFILIAL.AsInteger;
    ParamByName('TIPO_VENDA').AsString := 'VE';
    Prepare;
    Open;
  end;

  if fdsCntReceber_Item.RecordCount > 0 then
  begin
    with fdsCliente do
    begin
      Close;
      ParamByName('ID').AsInteger := fdsVendaIDCLIENTE.AsInteger;
      Prepare;
      Open;
    end;

    with fdsVenda do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDVENDA', 'V.ID = ' + IntToStr(idVenda), True);
      Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
    end;

    with fdsVendaItens do
    begin
      Close;
      ParamByName('IDVENDA').AsInteger := idVenda;
      Prepare;
      Open;
    end;

     with DM.fdsCaixa do
     begin
      Close;
      ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      Open;
     end;

    DM.frxReport1.Clear;

    if DM.impVenda = 1 then
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxCntReceberCupomM2.fr3');

    if DM.impVenda = 3 then
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxCntReceberCupom.fr3');

    //DM.frxReport1.PrintOptions.Printer := DM.fdsConfigIMP_CUPOM.AsString; //Printer.Printers[1];
    DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString; //Printer.Printers[1];
    DM.frxReport1.SelectPrinter;
    DM.frxReport1.PrintOptions.ShowDialog := False;
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);
    DM.frxReport1.Print;
  end;
end;

procedure TfrmPrincipal.ImprimeViaAssinatura;
begin
 idVenda := fdsVendaID.AsInteger;
  with fdsMovimentoCaixa do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDMOVIMENTO', 'IDMOVIMENTO = ' + fdsVendaID.AsString, True);
    Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + DM.fdsConfigIDFILIAL.AsString, True);
    Conditions.AddCondition('TIPO', 'TIPO = ' + QuotedStr('VE'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  if (DM.impVenda = 1) or (DM.impVenda = 3) then
  begin
    if (fdsMovimentoCaixaVLR_NOTA.AsFloat > 0) and ((fdsVendaTIPO.AsString = 'CF')or (fdsVendaTIPO.AsString= 'OF')) then
    begin
      if DM.fdsConfigCUPOM_CREDIARIO_SIMPLIFIC.AsString ='S' then
      begin
        ImprimeCupomSimplificado;
      end
      else
      ImprimeCupomFastReport;
    end;
    fdsCntReceber_Item.Close;
    frxReceber_Item.Close;
    cdsFormaPagamento.EmptyDataSet;
  end;
end;

procedure TfrmPrincipal.ImprimirComprovanteDev(relatorio: String);
begin
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + relatorio);
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := false;
  DM.frxReport1.PrepareReport(True);
  //DM.frxReport1.ShowReport(True);
  DM.frxReport1.Print;
end;

procedure TfrmPrincipal.ImpressoraA4;
begin
    with fdsCntReceber_Item do
    begin
      Close;
      ParamByName('IDVENDA').AsInteger := idVenda;
      ParamByName('IDFILIAL').AsInteger := dm.fdsConfigIDFILIAL.AsInteger;
      ParamByName('TIPO_VENDA').AsString := 'VE';
      Prepare;
      Open;
    end;

    with fdsVenda do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDVENDA', 'V.ID = ' + IntToStr(idVenda), True);
      Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
    end;

    with fdsVendaItens do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDVENDA', 'IDVENDA = ' + IntToStr(idVenda), True);
      Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
    end;

    with fdsCliente do
    begin
      Close;
      ParamByName('ID').AsInteger := fdsVendaIDCLIENTE.AsInteger;
      Prepare;
      Open;
    end;

    DM.frxReport1.Clear;
    if fdsCntReceber_Item.RecordCount > 0 then    
     // DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxVendaM2.fr3')frxCarnePagamentoM1
     DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxCarnePagamentoM1.fr3')
    else
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxVendaM1.fr3');
      
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);

    fdsVenda.Close;
    fdsVenda.Conditions.Clear;
    fdsVendaItens.Close;
    fdsVendaItens.Conditions.Clear;
    fdsCliente.Close;
    fdsCntReceber_Item.Close;
end;

procedure TfrmPrincipal.LancNumPreVenda;
begin
  if statusCaixa = 'LV' then
  begin
    Try
        frmNumeroPreVenda := TfrmNumeroPreVenda.Create(nil);
        frmNumeroPreVenda.ShowModal;
     Finally
        if frmNumeroPreVenda.ModalResult = mrOk then
        begin
          PreVenda(frmNumeroPreVenda.edtNumPrevenda.Text);
        end;

        frmNumeroPreVenda.FreeOnRelease;
     End;
   end
   else
     Application.MessageBox('Venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);

end;

procedure TfrmPrincipal.LeBalanca;
Var TimeOut : Integer ;
begin
    //showMessage('Produto de Balan�a');  //lembrar de comenta
     try
     TimeOut := DM.fdsCaixaTIME_OUT.AsInteger;
     ACBrBAL1.LePeso( TimeOut );
    // showMessage('Lendo peso');
     if ACBrBAL1.LePeso > 0 then
     begin
     //showMessage('peso maior que 0');
      edtItemQtn.Text := FloatToStr(ACBrBAL1.LePeso);
    // ShowMessage(ACBrBAL1.LePeso)
    // showMessage('pegou o peso');
     end
     else
     begin
      if (FloatToStr(ACBrBAL1.LePeso) ='-9') or ( FloatToStr(ACBrBAL1.LePeso) ='-9,000') then
       begin
        showMessage('Erro na comunica��o com a balan�a!Por favor, verifique o se a balan�a esta conectada ao computador ou se o protocolo de comunica��o esta de acordo com as configura��es');
        edtItemQtn.Text := FloatToStr(ACBrBAL1.LePeso);
       end;
     end;
   // showMessage('N�o usa Balan�a');
   Except on E : Exception do
     begin
      ShowMessage('Erro na leitura da Balan�a: ' + E.Message);
     end;
  End;
end;

procedure TfrmPrincipal.LeIni;
var
  INI : TIniFile;
  caminhoBase: string;
  senha: string;
begin
  Try
    JvVigenereCipher1.Key := 'xoxota';

    INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
    caminhoBase := INI.ReadString('CAMINHOS', 'SGP', '');
    JvVigenereCipher1.Encoded := INI.ReadString('CAMINHOS', 'PWD', '');
    senha := JvVigenereCipher1.Decoded;
    imgPadrao := INI.ReadString('CONFIG', 'IMGPADRAO', '');
    DM.numCaixa := StrToInt(INI.ReadString('CONFIG', 'CAIXANUM', '')); //vitor ver isso
    DM.logo := INI.ReadString('CAMINHOS', 'LOGO', '');

    nome := INI.ReadString('DADOS', 'NOME', '');
    endereco := INI.ReadString('DADOS', 'ENDERECO', '');
    bairrocidade := INI.ReadString('DADOS', 'BAIRROCIDADE', '');
    telefone := INI.ReadString('DADOS', 'TELEFONE', '');

    DM.impVenda := StrToInt(INI.ReadString('CONFIG', 'IMPRIMIR', ''));
    impcupom := INI.ReadString('CONFIG', 'IMPCUPOM', '');
    alertaEstoqueVazio := INI.ReadString('CONFIG', 'ALERTESTVAZIO', '');
    itenscupnota := INI.ReadString('CONFIG', 'ITENSCUPNOTA', '');
    //NFCE := INI.ReadString('CONFIG', 'NFCE', '');
    TPCERTIFICADO := INI.ReadString('CAMINHOS', 'TPCERTIFICADO', '');
    selItensEntregar := INI.ReadString('CONFIG', 'SELITENSENTREGA', '');
    perguntaImp := INI.ReadString('CONFIG', 'PERGUNTAIMP', '');
    perguntaViaCli := INI.ReadString('CONFIG', 'PERGUNTAVIACLIE', '');
    abilitaPrecUnit := INI.ReadString('CONFIG', 'ABILITARPRECUNIT', '');
    telaPrimeiroVencimento := INI.ReadString('CONFIG', 'TELAPRIMVENCIMENTO', '');
    entregarDefault := INI.ReadString('CONFIG', 'ENTREGARDEFAULT', '');
    diasPrimeiroVenc := INI.ReadString('CONFIG', 'DIASPRIMEIROVENC', '');
    debitoTotal := INI.ReadString('CONFIG', 'DEBITOTAL', '');
    custoTabPrec := INI.ReadString('CONFIG', 'CUSTOTABPREC', '');
    pesqPorCodCli := INI.ReadString('CONFIG', 'PESQPORCODCLI', '');
    exibtotrecclie := INI.ReadString('CONFIG', 'EXIBITOTRECCLIE', '');

    if INI.ReadString('CONFIG', 'IMGPADRAO', '') = 'S' then
      exibirImgItem := True
    else
      exibirImgItem := False;
    imgItem.Picture.LoadFromFile(imgPadrao);

    dm.Conexao.DBName := caminhoBase;
    dm.Conexao.ConnectParams.Password := senha;

    //Configura Leitor
    if INI.ReadString('CONFIG', 'LEITORSERIAL', '') = 'S' then
    begin
       if not(ACBrLCB1.Ativo) then
       begin
         ACBrLCB1.Desativar;
         ACBrLCB1.Porta       := INI.ReadString('CONFIG', 'PORTACOMLEITOR', '') ;
         ACBrLCB1.UsarFila    := False;
         ACBrLCB1.Device.Baud := 9600 ;
         ACBrLCB1.Device.Data := 8;

         ACBrLCB1.Sufixo        := '#13' ;
         ACBrLCB1.ExcluirSufixo := True;

         ACBrLCB1.Device.HandShake := TACBrHandShake( hsNenhum ) ;
         ACBrLCB1.Device.HardFlow  := True;
         ACBrLCB1.Device.SoftFlow  := True;

         ACBrLCB1.Device.Parity := TACBrSerialParity( pNone ) ;
         ACBrLCB1.Device.Stop   := TACBrSerialStop( s1 ) ;

         ACBrLCB1.Ativar ;
        end;
    end;
    //Fim Configura Leitor
    //Configurando Balanca


    INI.Free;
  Except on E : Exception do
     begin
      ShowMessage('Erro na leitura do INI: ' + E.Message);
      Application.Terminate;
     end;
  End;
end;

procedure TfrmPrincipal.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 80 then
  begin
    ShowMessage('Apertou P');
  end;
end;

procedure TfrmPrincipal.MovimentoCaixa;
var
  temPermicao : Boolean;
  idUsuarioTemp : Integer;
begin
  temPermicao := False;

  if statusCaixa = 'LV' then
  begin

    if DM.fdsUsuarioPermicFECHAMENTO.AsString = 'N' then
     begin
       // Application.MessageBox('Desculpe, voc� n�o tem permi��o para entrar em Movimenta��o', 'Ver Movimenta��o n�o Permitido.', MB_OK+MB_ICONERROR);
        TFrmMensagens.Mensagem('Desculpe, Usu�rio sem permiss�o para fechar o caixa.', 'Sem permiss�o.', 'I',[mbOK]);
        try
         frmLogin := TfrmLogin.Create(nil);
         frmLogin.ShowModal;
        finally
         if frmLogin.ModalResult = mrOk then
         begin
            idUsuarioTemp := frmLogin.fdsUserID.AsInteger;

            with dm.fdsUsuarioPermic do
            begin
              Close;
              ParamByName('IDUSUARIO').AsInteger := idUsuarioTemp;
              ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              Open;
            end;

            if DM.fdsUsuarioPermicVER_MOVIMENTO.AsString = 'S' then
              temPermicao := True
            else
              temPermicao := False;

            with dm.fdsUsuarioPermic do
            begin
              Close;
              ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
              ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              Open;
            end;
         end
         else
         begin
           temPermicao := False;
         end;

         frmLogin.Free;
        end;

     end
     else
     begin
       temPermicao := True;
     end;

     if temPermicao then
     begin
        Try
          frmMovimentacaoCaixa := TfrmMovimentacaoCaixa.Create(nil);
          frmMovimentacaoCaixa.ShowModal;
        Finally
          frmMovimentacaoCaixa.Free;
        End;
     end
     else
     begin
       TFrmMensagens.Mensagem('Desculpe, Usu�rio sem permiss�o para fechar o caixa.', 'Sem permiss�o.', 'I',[mbOK]);
        //Application.MessageBox('Desculpe, voc� n�o tem permi��o para entrar em Movimenta��o', 'Ver Movimenta��o n�o Permitido.', MB_OK+MB_ICONERROR);
        //Abort;
     end;
  end
  else
    Application.MessageBox('Finalize ou Cancele a venda atual primeiro!', 'Aten�a�', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.OrdemServico;
begin
  if statusCaixa = 'LV' then
  begin
    Try
       //frmOrdemServicoSimples := TfrmOrdemServicoSimples.Create(nil);
       frmOrdemServico := TfrmOrdemServico.Create(nil);
       frmOrdemServico.ShowModal;
      Finally
        frmOrdemServico.Free;
    End;
  end
  else
    Application.MessageBox('Finalize ou Cancele a venda atual primeiro!', 'Aten�a�', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.PreparaEmissaoNFCe;
begin
  transFrmPrincipal.CommitRetaining;

  try
    imprimir:=imprimir;
    frmStatusNFCe := TfrmStatusNFCe.Create(nil);
    frmStatusNFCe.param := 'EMITIR';
    frmStatusNFCe.imprimir := imprimir;
    frmStatusNFCe.ShowModal;
  finally
    frmStatusNFCe.Free;
    ImprimeViaAssinatura;
  end;
end;

procedure TfrmPrincipal.PreparaInutilizar;
var
  numInicial, numFinal, modelo, serie,idTempVenda: Integer;
  justificativa: string;
  I:SmallInt;
begin
  Try
      frmInutilizarNFCe := TfrmInutilizarNFCe.Create(nil);
      frmInutilizarNFCe.ShowModal;
  Finally
      if frmInutilizarNFCe.ModalResult = mrOk then
      begin
//        if (frmInutilizarNFCe.rbxModelo.ItemIndex = 0) then
//          modelo := 55;

        if (frmInutilizarNFCe.rbxModelo.ItemIndex = 1) then
          modelo := 65;

        numInicial := fdsVendaCODIGO_NFCE.AsInteger;
        numFinal := fdsVendaCODIGO_NFCE.AsInteger;
        serie := StrToInt(frmInutilizarNFCe.edtSerie.Text);

        justificativa := frmInutilizarNFCe.mmoJustificativa.Text;
         idtempVenda := fdsVendaID.AsInteger;
        try
          frmStatusNFCe := TfrmStatusNFCe.Create(nil);
          frmStatusNFCe.param := 'INUTILIZAR';
          frmStatusNFCe.serie := serie;
          frmStatusNFCe.modelo := modelo;
          frmStatusNFCe.numInicial := numInicial;
          frmStatusNFCe.numFinal := numFinal;
          frmStatusNFCe.justificativa := justificativa;
          frmStatusNFCe.lblRetorno.Caption := 'Aguarde inutilizando numera��o';
          frmStatusNFCe.ShowModal;
        finally
          if (frmStatusNFCe.AutorizaDeletar = true) and ( frmStatusNFCe.StatusCancelada <> 'DV')then
          begin
            with qryVerificaCntReceber do
            begin
              close;
              ParamByName('IDVENDA').AsInteger := idtempVenda;
              ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              prepare;
              ExecQuery;
            end;

            if qryVerificaCntReceber.RecordCount > 0 then
            begin
              for I := 0 to qryVerificaCntReceber.RecordCount -1 do
              begin
                ExcluirRecebimento(qryVerificaCntReceber.FieldByName('ID').AsInteger);
              end;
            end;
          end;
          frmStatusNFCe.Free;
        end;
      end;
  end;
end;

procedure TfrmPrincipal.PreVenda(numero : string);
var
  achou : Boolean;
begin
  if statusCaixa = 'LV' then
  begin
    achou := False;

    try
      frmSelPreVenda := TfrmSelPreVenda.Create(nil);

      if numero <> '0' then
      begin
        if frmSelPreVenda.fdsPreVenda.Locate('NUM_PROPIO', numero, []) then
        begin
          achou := True;
          frmSelPreVenda.RetornaItens;
          frmSelPreVenda.ModalResult := mrOk;
        end
        else
          achou := false;
      end
      else
        achou := false;

      if achou = false then
      begin
        frmSelPreVenda.ShowModal;
      end;

    Finally
      if frmSelPreVenda.ModalResult = mrOk then
      begin
        modoPreVenda := True;
        statusCaixa := 'VE';
        with fdsVenda do
        begin
          Open;
          Append;
          idVenda := fdsVendaID.AsInteger;
          fdsVendaDT_INC.AsDateTime := Now;
          fdsVendaSTATUS.AsString := 'AB';
          fdsVendaPREFIXO.AsString := 'VE';
          fdsVendaIDCLIENTE.AsString := frmSelPreVenda.fdsPreVendaIDCLIENTE.AsString;
          cliente := frmSelPreVenda.fdsPreVendaCLIENTE.AsString;
          fdsVendaIDVENDEDOR.AsString := frmSelPreVenda.fdsPreVendaIDVENDEDOR.AsString;
          fdsVendaIDFORMA_PAG.AsString := frmSelPreVenda.fdsPreVendaIDFORMA_PAG.AsString;
          fdsVendaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
          fdsVendaIDCAIXA.AsInteger := DM.numCaixa; // Tomar cuidado pois est� puchando o n�mero do caixa no ini e passando como ID do caixa para a venda
          fdsVendaVLR_DESCONTO.AsFloat := frmSelPreVenda.fdsPreVendaVLR_DESCONTO.AsFloat;
          fdsVendaVLR_TOTITEM.AsFloat := frmSelPreVenda.fdsPreVendaVLR_TOTITEM.AsFloat;
          fdsVendaVLR_VENDA.AsFloat := frmSelpreVenda.fdsPreVendaVLR_VENDA.AsFloat;
          fdsVendaVLR_TOTAL.AsFloat := frmSelPreVenda.fdsPreVendaVLR_VENDA.AsFloat;  //Foi usado assim para resolver o problema do disconto do pr�-venda
          fdsVendaOBS.AsString:=frmSelPreVenda.fdsPreVendaINFO_ADICINAL.AsString;
          vlrTotal :=fdsVendaVLR_TOTAL.AsFloat;
          Post;
        end;
        transFrmPrincipal.CommitRetaining;

        redItens.SelAttributes.Style := [fsBold];
        redItens.Lines.Add(' ' + nome);
        redItens.Lines.Add(' ' + endereco);
        redItens.Lines.Add(' ' + bairrocidade);
        redItens.Lines.Add(' TEL: ' + telefone + #10 + #13); // #49 ou #45
        //redItens.Lines.Add('');
        redItens.Lines.Add('         COMPROVANTE DE VENDA');
        redItens.Lines.Add('        DOCUMENTO NAO FISCAL');
  //      redItens.Lines.Add('--------------------------------------------------------');
        redItens.Lines.Add('------------------------------------------');
        redItens.SelAttributes.Size := 12;
        redItens.Lines.Add('Venda N: ' + IntToStr(idVenda) + ' - ' + lblNumCaixa.Caption);
        redItens.Lines.Add(lblOperador.Caption);
        redItens.Lines.Add('------------------------------------------');
        redItens.SelAttributes.Size := 8;
        redItens.Lines.Add('Item ' + '  ' + '  ' + ' Descricao');
        redItens.Lines.Add('  ' + ' Qtn.  ' + ' Vlr Unt.  ' + ' Desc Unt.' + '  Tot. Item');
        redItens.Lines.Add('------------------------------------------');
        redItens.Lines.Add('');

        frmSelPreVenda.RetornaItens;//para solucionar o problema de itens duplicados da prevenda anterior
        while not(frmSelPreVenda.cdsPreVendaItens.Eof) do
        begin
          if frmSelPreVenda.cdsPreVendaItensCONFIRMADO.AsString = 'S' then
          begin
            fdsVendaItens.ParamByName('IDVENDA').AsInteger := idVenda;
            fdsVendaItens.Open;
            fdsVendaItens.Append;
            fdsVendaItensIDVENDA.AsInteger := idVenda;
            fdsVendaItensIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            fdsVendaItensIDPROD_ITEM.AsInteger := frmSelPreVenda.cdsPreVendaItensIDPROD_ITEM.AsInteger;
            fdsVendaItensIDGRUPO.AsInteger:= frmSelPreVenda.cdsPreVendaItensIDGRUPO.AsInteger;
            fdsVendaItensDT_INC.AsDateTime := Now;
            fdsVendaItensVLR_UNITARIO.AsCurrency :=  frmSelPreVenda.cdsPreVendaItensVLR_UNITARIO.AsCurrency;
            fdsVendaItensPESO.AsCurrency := 0;
            fdsVendaItensREFERENCIA.AsString := frmSelPreVenda.cdsPreVendaItensCOD_FABRICA.AsString;
            fdsVendaItensQTN.AsFloat := frmSelPreVenda.cdsPreVendaItensQTN.AsFloat;
            fdsVendaItensQTN_RESTANTE.AsFloat:= frmSelPreVenda.cdsPreVendaItensQTN.AsFloat;
            fdsVendaItensVLR_DESC_ACRE.AsFloat := frmSelPreVenda.cdsPreVendaItensVLR_DESC.AsFloat;
            fdsVendaItensVLR_TOTAL.AsFloat := frmSelPreVenda.cdsPreVendaItensVLR_TOTAL.AsFloat;
            fdsVendaItensTIPO_DESC_ACRE.AsString := 'D';
            Inc(totItem);
            redTempItens.Lines.Add('');
            redTempItens.Paragraph.Alignment := taLeftJustify;
            redTempItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + frmSelPreVenda.cdsPreVendaItensNOME.AsString);
            if not(fdsVendaItensVLR_DESC_ACRE.AsFloat > 0) then
              redTempItens.Lines.Add('      ' + fdsVendaItensQTN.AsString + ' X ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_UNITARIO.AsFloat) + '       ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat))
            else
              redTempItens.Lines.Add('      ' + fdsVendaItensQTN.AsString + ' X ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_UNITARIO.AsFloat) + '   -' + fdsVendaItensVLR_DESC_ACRE.AsString + '%      ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat));


            redTempItens.JumpTo(redItens.Lines.Count - 1, 0);

            redItens.Lines.Add('');
            redItens.Paragraph.Alignment := taLeftJustify;
            redItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + frmSelPreVenda.cdsPreVendaItensNOME.AsString);
            if not(fdsVendaItensVLR_DESC_ACRE.AsFloat > 0) then
              redItens.Lines.Add('      ' + fdsVendaItensQTN.AsString + ' X ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_UNITARIO.AsFloat) + '       ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat))
            else
              redItens.Lines.Add('      ' + fdsVendaItensQTN.AsString + ' X ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_UNITARIO.AsFloat) + '   -' + fdsVendaItensVLR_DESC_ACRE.AsString + '%      ' + FormatCurr('R$ #,##0.00', fdsVendaItensVLR_TOTAL.AsFloat));

           // vlrTotal := vlrTotal + fdsVendaItensVLR_TOTAL.AsFloat ;

            fdsVendaItensITEM.AsInteger := totItem;
            fdsVendaItens.Post;
            fdsItens.Close;

//            with fdsVenda do
//            begin
//              Edit;
//              fdsVendaVLR_TOTITEM.AsFloat := fdsVendaVLR_TOTITEM.AsFloat + fdsVendaItensVLR_UNITARIO.AsFloat * fdsVendaItensQTN.AsFloat;
//              fdsVendaVLR_VENDA.AsFloat := vlrTotal;
//              fdsVendaVLR_TOTAL.AsFloat := vlrTotal;
//              Post;
//            end;
            transFrmPrincipal.CommitRetaining;
          end;

          frmSelPreVenda.cdsPreVendaItens.Next;
        end;

        idPreVenda := frmSelPreVenda.fdsPreVendaID.AsInteger;
        edtItemRef.SetFocus;
        edtItemRef.Clear;
        edtItemPrec.Clear;
        edtItemDesc.Clear;
        edtItemQtn.Clear;
      end;
      frmSelPreVenda.Free;
      redItens.JumpTo(0,0);
    end;
  end
  else
    Application.MessageBox('Venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.Recebimento;
var
  uVerificaPermicao:TVerificaPermicao;
begin
  if uVerificaPermicao.Verifica('RECEBIMENTO')=true then
  begin
    if statusCaixa = 'LV' then
    begin
      idCliente := RetornaIdCliente;

      if not(idCliente = 0) then
      begin
        try
          frmCntReceber := TfrmCntReceber.Create(nil);
          frmCntReceber.idCliente := idCliente;
          if exibtotrecclie = 'S' then
          begin
            frmCntReceber.lblTotRecebido.Visible := True;
            frmCntReceber.lblTotReceber.Visible := True;
            frmCntReceber.lblTituloTotalRecebido.Visible := True;
            frmCntReceber.lblTituloTotalReceber.Visible := True;
          end;
          frmCntReceber.ShowModal;
        Finally
          frmCntReceber.Free;
        end;
      end;
      idCliente := DM.fdsConfigIDCLIENTEPADRAO.AsInteger;
    end
    else
      Application.MessageBox('Voc� n�o pode fazer um recebimento com uma venda em andamento, finalize ou termine primeiro.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
  end
  else
  begin
    TFrmMensagens.Mensagem('Desculpe, Usu�rio sem permiss�o para realizar recebimentos.', 'N�o permitido Receber.','I' ,[mbOK]);
    Abort;
  end;
end;

procedure TfrmPrincipal.ReimprimirNOTA;
begin
  idVenda := fdsVendaID.AsInteger;
  with fdsMovimentoCaixa do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDMOVIMENTO', 'IDMOVIMENTO = ' + fdsVendaID.AsString, True);
    Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + DM.fdsConfigIDFILIAL.AsString, True);
    Conditions.AddCondition('TIPO', 'TIPO = ' + QuotedStr('VE'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  if (DM.impVenda = 1) or (DM.impVenda = 3) then
  begin
    ImprimeCupomFastReport;
    if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
    begin
      if DM.fdsConfigCUPOM_CREDIARIO_SIMPLIFIC.AsString ='S' then
      begin
        ImprimeCupomSimplificado;
      end
      else
      ImprimeCupomFastReport;
    end;
    fdsCntReceber_Item.Close;
    frxReceber_Item.Close;
    cdsFormaPagamento.EmptyDataSet;
  end;
end;

procedure TfrmPrincipal.ReimprimirDANFE;
begin
  try
    frmStatusNFCe := TfrmStatusNFCe.Create(nil);
    frmStatusNFCe.lblRetorno.Caption := 'Aguarde Reimprimindo DANFE';
    frmStatusNFCe.param := 'ImprimirDANFE';
    frmStatusNFCe.ShowModal;
  finally
    frmStatusNFCe.Free;
    ImprimeViaAssinatura;
    ResetarCaixa;
  end;
end;

procedure TfrmPrincipal.ResetarCaixa;
begin
  fdsVenda.Close;
  fdsVenda.Conditions.Clear;
  fdsVenda.Conditions.Apply;
  fdsVendaItens.Close;
  fdsVendaItens.Conditions.Clear;
  fdsVendaItens.Conditions.Apply;
  statusCaixa := 'LV';
  edtItemRef.SetFocus;
  edtItemRef.Clear;
  edtItemQtn.Clear;
  edtItemDesc.Clear;
  edtItemPrec.Clear;
  edtTotalVenda.Clear;
  lblVlrCredito.Visible := False;
  lblProduto.Caption := 'CAIXA LIVRE';
  redItens.Clear;
  redTempItens.Clear;
  idVenda:= 0; idItem:= 0; totItem:= 0;
  itemVlrUnitario:= 0; itemPeso:= 0;  vlrTotal := 0; vlrDevolucao := 0; vlrDevRestante := 0;
  vlrIPI:=0;
  vlrICMS:=0;
  precoCustoItem:=0;
  PrecCustoMedioItem:=0;
  idCliente :=  DM.fdsConfigIDCLIENTEPADRAO.AsInteger;
  imgItem.Picture.LoadFromFile(imgPadrao);
  modoPreVenda := False;

  if dm.fdsCaixaNF_F9.AsString = 'F' then
    emitirFiscal := true
  else
    emitirFiscal := false;

  imgNFCe.Visible := emitirFiscal;
end;

procedure TfrmPrincipal.RestaurarVenda;
begin
    try
      frmRestaurarVenda := TfrmRestaurarVenda.Create(nil);
      frmRestaurarVenda.ShowModal;
    Finally
      if frmRestaurarVenda.ModalResult = mrOk then
      begin

        statusCaixa := 'VE';
        with fdsVenda do
        begin
          close;
          conditions.Clear;
          idVenda := frmRestaurarVenda.fdsVendaID.AsInteger;
          conditions.AddCondition('ID','V.ID ='+QuotedStr(IntToStr(idVenda)),true);
          Conditions.Apply;
          prepare;
          Open;
         // if Locate('ID',IntToStr(idVenda),[loCaseInsensitive,loPartialKey]) then
          //begin
          if fdsVenda.RecordCount>0 then
          begin
            vlrTotal := fdsVendaVLR_TOTAL.AsFloat;
            Edit;
            fdsVendaSTATUS.AsString := 'AB';
            fdsVendaIDCLIENTE.AsString := DM.fdsConfigIDCLIENTEPADRAO.AsString;
            fdsVendaIDCAIXA.AsInteger := DM.numCaixa;
            cliente := 'CLIENTE PADR�O';
            Post;
          end;
          //end;
        end;
        transFrmPrincipal.CommitRetaining;

        redItens.SelAttributes.Style := [fsBold];
        redItens.Lines.Add(' ' + nome);
        redItens.Lines.Add(' ' + endereco);
        redItens.Lines.Add(' ' + bairrocidade);
        redItens.Lines.Add(' TEL: ' + telefone + #10 + #13); // #49 ou #45
        //redItens.Lines.Add('');
        redItens.Lines.Add('         COMPROVANTE DE VENDA');
        redItens.Lines.Add('        DOCUMENTO NAO FISCAL');
  //      redItens.Lines.Add('--------------------------------------------------------');
        redItens.Lines.Add('------------------------------------------');
        redItens.SelAttributes.Size := 12;
        redItens.Lines.Add('Venda N: ' + IntToStr(idVenda) + ' - ' + lblNumCaixa.Caption);
        redItens.Lines.Add(lblOperador.Caption);
        redItens.Lines.Add('------------------------------------------');
        redItens.SelAttributes.Size := 8;
        redItens.Lines.Add('Item ' + '  ' + '  ' + ' Descricao');
        redItens.Lines.Add('           ' + ' Qtn.  ' + ' Vlr Unt.' + '    Tot. Item');
        redItens.Lines.Add('------------------------------------------');
        redItens.Lines.Add('');

        while not(frmRestaurarVenda.cdsVendaItens.Eof) do
        begin
          Inc(totItem);
          redTempItens.Lines.Add('');
          redTempItens.Paragraph.Alignment := taLeftJustify;
          redTempItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + frmRestaurarVenda.cdsVendaItensNOME.AsString);
          redTempItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', frmRestaurarVenda.cdsVendaItensVLR_UNITARIO.AsFloat) + '       ' + FormatCurr('R$ #,##0.00', frmRestaurarVenda.cdsVendaItensVLR_TOTAL.AsFloat));
          redTempItens.JumpTo(redItens.Lines.Count - 1, 0);

          redItens.Lines.Add('');
          redItens.Paragraph.Alignment := taLeftJustify;
          redItens.Lines.Add(' ' + FormataNumeroItem(totItem) + ' - ' + frmRestaurarVenda.cdsVendaItensNOME.AsString);
          redItens.Lines.Add('      ' + edtItemQtn.Text + ' X ' + FormatCurr('R$ #,##0.00', frmRestaurarVenda.cdsVendaItensVLR_UNITARIO.AsFloat) + '       ' + FormatCurr('R$ #,##0.00', frmRestaurarVenda.cdsVendaItensVLR_TOTAL.AsFloat));
          redItens.JumpTo(redItens.Lines.Count - 1, 0);

          frmRestaurarVenda.cdsVendaItens.Next;
        end;

        edtItemRef.SetFocus;
        edtItemRef.Clear;
        edtItemPrec.Clear;
        edtItemDesc.Clear;
        edtItemQtn.Clear;
      end;
      frmRestaurarVenda.Free;
    end;
  
end;

function TfrmPrincipal.RetornaIdCliente: integer;
begin
  try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      Result := frmPesqCliente.fdsClientesID.AsInteger;
    end
    else
      Result := 0;

    frmPesqCliente.Free;
  end;
end;

function TfrmPrincipal.RetornaItem: Boolean; // Informa encontrou o item
var
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
  pesquisar : Boolean;
  saldo : Double;
  utils:TUtils;
begin
  if not(Trim(edtItemRef.Text) = EmptyStr) then
  begin
    // Pesquisa o Produto pelo c�digo digitado
    with fdsItens do
    begin
      Close;
      ParamByName('CODIGO').AsString := edtItemRef.Text;
      ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
      Prepare;
      Open;
    end;

    //Verifica se Estoque zerado, para n�o realiza��o de venda de produto zerado
    if Dm.fdsConfigN_VENDA_ESTOQUE_ZERO.AsString ='S' then
    begin
      if fdsItensSALDO.AsFloat <=0 then
      begin
        lblProduto.Caption := fdsItensNOME.AsString;
        if (TfrmMensagens.Mensagem('Esse produto foi identificado com estoque zerado. Deseja continuar?',
          'Estoque Vazio.','Z',[mbSim,mbNao])) then
        begin
          temPermicao := uVerificaPermicao.Verifica('ESTOQUE_ZERADO_VENDER');

          if temPermicao = false then
          begin
            TFrmMensagens.Mensagem('Desculpe,Usu�rio sem permiss�o para vender produtos com estoque zerado.', 'Sem permiss�o.','I',[mbOK]);
            Abort;
          end;
        end
        else
        begin
          abort;
        end;
      end;
    end;

    if not(fdsItens.IsEmpty) then
    begin
      pesquisar := False;
      lblProduto.Caption := fdsItensNOME.AsString;
      idItem := fdsItensID.AsInteger;

      //Retorna o caixa novamente
      PescCaixa;

      if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S')and not(DM.fdsCaixaTAB_PRECO.AsInteger =0) then
      begin

        if DM.fdsCaixaTAB_PRECO.AsInteger = 1 then
        begin
          if fdsItensPREC_TAB1.AsCurrency >0 then
          begin
            itemVlrUnitario := RoundTo(fdsItensPREC_TAB1.AsCurrency, -2);
            if fdsItensDESC_MAX1.AsFloat>0 then
              vlrDescMax := fdsItensDESC_MAX1.AsFloat
            else
             vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT1.AsFloat;
          end
          else
           SelectValoresTabPrecos(DM.fdsConfigTAB_PADRAO_PDV.AsInteger);
        end;

        if DM.fdsCaixaTAB_PRECO.AsInteger = 2 then
        begin
          if fdsItensPREC_TAB2.AsCurrency >0 then
          begin
            itemVlrUnitario := RoundTo(fdsItensPREC_TAB2.AsCurrency, -2);
            if fdsItensDESC_MAX2.AsFloat>0 then
            vlrDescMax := fdsItensDESC_MAX2.AsFloat
            else
            vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT2.AsFloat
          end
          else
           SelectValoresTabPrecos(DM.fdsConfigTAB_PADRAO_PDV.AsInteger);
        end;

        if DM.fdsCaixaTAB_PRECO.AsInteger = 3 then
        begin
          if fdsItensPREC_TAB3.AsCurrency >0 then
          begin
            itemVlrUnitario := RoundTo(fdsItensPREC_TAB3.AsCurrency, -2);
            if fdsItensDESC_MAX3.AsFloat>0 then
              vlrDescMax := fdsItensDESC_MAX3.AsFloat
            else
             vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT3.AsFloat
          end
          else
          SelectValoresTabPrecos(DM.fdsConfigTAB_PADRAO_PDV.AsInteger);
        end;

        if DM.fdsCaixaTAB_PRECO.AsInteger = 4 then
        begin
          if fdsItensPREC_TAB4.AsCurrency >0 then
          begin
            itemVlrUnitario := RoundTo(fdsItensPREC_TAB4.AsCurrency, -2);
            if fdsItensDESC_MAX3.AsFloat>0 then
              vlrDescMax := fdsItensDESC_MAX4.AsFloat
            else
             vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT4.AsFloat;
          end
          else
           SelectValoresTabPrecos(DM.fdsConfigTAB_PADRAO_PDV.AsInteger);
        end;
      end
      else
      begin
        itemVlrUnitario := RoundTo(fdsItensPREC_VENDA.AsCurrency, -2);
        vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT1.AsFloat;
      end;

      vlrIPI:= RoundTo((itemVlrUnitario*fdsItensALQ_IPI.AsCurrency)/100,-2);
      vlrICMS:= RoundTo(((itemVlrUnitario+vlrIPI)*fdsItensALIQ_ICMS.AsCurrency)/100,-2);
      utBalanca :=fdsItensUTILIZA_BALANCA.AsString;
      CFOP_VENDA := fdsItensCFOP.AsString;
      CSOSN_VENDA := fdsItensCSOSN.AsString;
      itemPeso := fdsItensPESO.AsCurrency;
      idProduto := fdsItensIDPRODUTO.AsInteger;
      saldo := fdsItensSALDO.AsFloat;
      precoCustoItem := RoundTo( fdsItensPREC_CUSTO.AsFloat,-2);
      PrecCustoMedioItem:= RoundTo(fdsItensPREC_CUSTO_MEDIO.AsFloat,-2);
      CST_PIS := fdsItensCST_PIS.AsString;
      CST_COFINS := fdsItensCST_COFINS.AsString;
      idGrupo:= fdsItensIDGRUPO.AsInteger;
     // edtItemQtn.SetFocus;
      Result := True; //Encontrou o item
    end
    else
      pesquisar := True;
  end
  else
  begin
    pesquisar := True;
  end;

  // Abre tela de pesquisa de produtos para selecionar o produto desejado
  if pesquisar then
  begin
    Try
      frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
      frmPesqProdutoItens.letra:=letra;
      frmPesqProdutoItens.ShowModal;
    Finally
      if frmPesqProdutoItens.ModalResult = mrOk then
      begin
        lblProduto.Caption := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
        edtItemRef.Text := frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        idItem :=  frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
        saldo := frmPesqProdutoItens.fdsProdutoItensSALDO.AsFloat;
        if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
        begin
          itemVlrUnitario := RoundTo(frmPesqProdutoItens.precUnitario, -2);
          vlrDescMax := frmPesqProdutoItens.vlrDescMax;
        end
        else
        begin
          itemVlrUnitario := RoundTo(frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsCurrency, -2);
          vlrDescMax := 100;
        end;
        vlrIPI:=RoundTo((itemVlrUnitario*frmPesqProdutoItens.fdsProdutoItensALQ_IPI.AsFloat)/100,-2);
        vlrICMS:= RoundTo(((itemVlrUnitario+vlrIPI)*frmPesqProdutoItens.fdsProdutoItensALIQ_ICMS.AsFloat)/100,-2);
        precoCustoItem := RoundTo(frmPesqProdutoItens.fdsProdutoItensPREC_CUSTO.AsFloat,-2);
        PrecCustoMedioItem:= RoundTo(frmPesqProdutoItens.fdsProdutoItensPREC_CUSTO_MEDIO.AsFloat,-2);
        utBalanca := frmPesqProdutoItens.fdsProdutoItensUTILIZA_BALANCA.AsString;
        CFOP_VENDA := frmPesqProdutoItens.fdsProdutoItensCFOP.AsString;
        CSOSN_VENDA := frmPesqProdutoItens.fdsProdutoItensCSOSN.AsString;
        itemPeso := frmPesqProdutoItens.fdsProdutoItensPESO.AsCurrency;
        idProduto := frmPesqProdutoItens.fdsProdutoItensIDPRODUTO.AsInteger;
        CST_PIS := frmPesqProdutoItens.fdsProdutoItensCST_PIS.AsString;
        CST_COFINS :=  frmPesqProdutoItens.fdsProdutoItensCST_COFINS.AsString;
        idGrupo:= frmPesqProdutoItens.fdsProdutoItensIDGRUPO.AsInteger;
        Result := True;
      end
      else
        Result := False;

      frmPesqProdutoItens.Free;
    End;
  end;

  {if (Result = True) and (saldo <= 0) and (alertaEstoqueVazio = 'S') then
  begin
    Case MessageBox(Application.Handle, Pchar('Saldo insuficiente, deseja lan�ar assim mesmo?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   Result := True;
                 end;

          IDNO: begin
                  Result := False;
                end;
    End;
  end; }
end;

procedure TfrmPrincipal.SelecionaTabPreco;
begin
  Try
    frmSelTabPreco := TfrmSelTabPreco.Create(nil);
    frmSelTabPreco.rbtValor1.Caption := 'Tabela 1';
    frmSelTabPreco.rbtValor2.Caption := 'Tabela 2';
    frmSelTabPreco.rbtValor3.Caption := 'Tabela 3';
    frmSelTabPreco.rbtValor4.Caption := 'Tabela 4';
    frmSelTabPreco.ShowModal;
  Finally
    if frmSelTabPreco.ModalResult = mrOk then
    begin
       PescCaixa;
       DM.fdsCaixa.Edit;
       if frmSelTabPreco.rbtValor1.Checked then
       begin
        DM.fdsCaixaTAB_PRECO.AsInteger:=1;
        lblTabelaPreco.Caption:='Tab.Pre�o 1'
       end;
       if frmSelTabPreco.rbtValor2.Checked then
       begin
        DM.fdsCaixaTAB_PRECO.AsInteger:=2;
        lblTabelaPreco.Caption:='Tab.Pre�o 2'
       end;
       if frmSelTabPreco.rbtValor3.Checked then
       begin
        DM.fdsCaixaTAB_PRECO.AsInteger:=3;
        lblTabelaPreco.Caption:='Tab.Pre�o 3'
       end;
       if frmSelTabPreco.rbtValor4.Checked then
       begin
        DM.fdsCaixaTAB_PRECO.AsInteger:=4;
        lblTabelaPreco.Caption:='Tab.Pre�o 4';
       end;
       DM.fdsCaixa.Post;
       dm.conexao.CommitRetaining;
    end;
    frmSelTabPreco.Free;
  End;
end;

procedure TfrmPrincipal.SelectValoresTabPrecos(Tabela: Integer);
begin
  if Tabela = 1 then
  begin
    itemVlrUnitario := RoundTo(fdsItensPREC_TAB1.AsCurrency, -2);
    if fdsItensDESC_MAX1.AsFloat>0 then
    vlrDescMax := fdsItensDESC_MAX1.AsFloat
    else
     vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT1.AsFloat;
  end;

  if Tabela = 2 then
  begin
    itemVlrUnitario := RoundTo(fdsItensPREC_TAB2.AsCurrency, -2);
    if fdsItensDESC_MAX2.AsFloat>0 then
    vlrDescMax := fdsItensDESC_MAX2.AsFloat
    else
    vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT2.AsFloat
  end;

  if Tabela = 3 then
  begin
    itemVlrUnitario := RoundTo(fdsItensPREC_TAB3.AsCurrency, -2);
    if fdsItensDESC_MAX3.AsFloat>0 then
    vlrDescMax := fdsItensDESC_MAX3.AsFloat
    else
     vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT3.AsFloat
  end;

  if Tabela = 4 then
  begin
    itemVlrUnitario := RoundTo(fdsItensPREC_TAB4.AsCurrency, -2);
    if fdsItensDESC_MAX3.AsFloat>0 then
    vlrDescMax := fdsItensDESC_MAX4.AsFloat
    else
     vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT4.AsFloat
  end;
end;

procedure TfrmPrincipal.btnComponenteLeftClick(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Left := Left - 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Left := Left - 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Left := Left - 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Left := Left - 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  btnComponenteLeft.SetFocus;

end;

procedure TfrmPrincipal.btnComponenteRightClick(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if (componente is TRzEdit) then
  begin
    with (componente as TRzEdit) do
    begin
      Left := Left + 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Left := Left + 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Left := Left + 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Left := Left + 1;
      edtEsquerda.Text := IntToStr(Left);
    end;
  end;

  btnComponenteRight.SetFocus;
end;

procedure TfrmPrincipal.btnComponenteUpClick(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Top := Top - 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Top := Top - 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Top := Top - 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Top := Top - 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  btnComponenteUp.SetFocus;

end;

procedure TfrmPrincipal.BuscarVenda(idVenda: integer);
begin
  //Busca venda
  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDVENDA', 'V.ID = ' + IntToStr(idVenda), True);
    Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + dm.fdsConfigIDFILIAL.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  //Busca os Itens da venda
  with fdsVendaItens do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := idVenda;
    Prepare;
    Open;
  end;

  //Busca os dados do Cliente
  with fdsCliente do
  begin
    Close;
    ParamByName('ID').AsInteger := fdsVendaIDCLIENTE.AsInteger;
    Prepare;
    Open;
  end;

end;

procedure TfrmPrincipal.btnComponenteDownClick(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Top := Top + 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Top := Top + 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Top := Top + 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Top := Top + 1;
      edtTop.Text := IntToStr(Top);
    end;
  end;

  btnComponenteDown.SetFocus;
end;

procedure TfrmPrincipal.TabelaPrecos;
begin
  Try
    frmTabelaPrecos := TfrmTabelaPrecos.Create(nil);
    frmTabelaPrecos.ShowModal;
  Finally
    frmTabelaPrecos.Free;
  End;
end;

procedure TfrmPrincipal.TimerDataHoraTimer(Sender: TObject);
begin
 lblDataHora.Caption := FormatDateTime('  hh:nn:ss'+ #13+ 'DD/MM/YYYY',now);
end;

procedure TfrmPrincipal.TimerEventosTimer(Sender: TObject);
begin
  TimerEventos.Enabled:= false;
 //if Utils.EllapDate(StrToDateTime('13/11/2019'),frmPrincipal.ACBrNFe1.SSL.CertDataVenc)= 30 then
 if (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)<=30) and (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)>0)  then
 begin
    TfrmMensagens.Mensagem('O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' instalado que est� prestes a vencer,vencer� em '+
    DateToStr(frmPrincipal.ACBrNFe1.SSL.CertDataVenc)+'. Por favor, programe-se para atualiz�-lo para n�o prejudicar o processo de assinatura elet�nica de documentos. Procure a CBSistemas e agende seu hor�rio (22)3843-3963. ',
    'Aviso de Vencimento','V',[mbOk]);
    imgVencido.Visible:=false;
     ImgAVencer.Visible:=True;
 end
 else
 begin
   if (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)= 0) then
   begin
     TfrmMensagens.Mensagem('O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' utilizado para emiss�o dos documentos elet�nicos esta VENCIDO!'
    +'Por favor, atualize-o para que o sistema volte ao funcionamento normal.','Aviso de Vencimento','V',[mbOk]);
     imgVencido.Visible:=True;
     ImgAVencer.Visible:=false;
   end;
 end;
end;

procedure TfrmPrincipal.TrataCodigoEtquetaBal;
var
IndicadorprodBal,codProduto,idProd,codLeitor:String;
vlrUnitarioProd:Double;
utils:TUtils;
begin
 pegaCodDeLeitor:=false;
 if DM.fdsConfigUTILIZAR_BAL_ETIQUETA.AsString = 'S' then
 begin
  if not (edtItemRef.Text = EmptyStr) then
   begin
   //Procura no banco o EAN 13 lido pelo codigo de Barrras
     with qryComand do
     begin
      Close;
      SQL.Clear;
      SQL.Add('select ID FROM PRODUTO_ITEM WHERE (COD_FABRICA= '+ quotedStr(edtItemRef.Text)+')OR (REFERENCIA='+quotedStr(edtItemRef.Text)+')');
      Prepare;
      ExecQuery;
     end;
   //
   //Caso n�o encontre verifica o digito verificador de produto de balan�a
     if not(qryComand.RecordCount>0)then
     begin
       IndicadorprodBal:=Copy(edtItemRef.Text,1,1);
       codLeitor:=edtItemRef.Text;
       if (IndicadorprodBal=DM.fdsConfigPREFIXO_EAN.AsString) and (length(edtItemRef.Text)=13) then
       begin
       //pega o codigo do produto da etiqueta
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
          codProduto:=Copy(edtItemRef.Text,2,6);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
          codProduto:=Copy(edtItemRef.Text,2,5);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
          codProduto:=Copy(edtItemRef.Text,2,4);

         codProduto:= utils.RetirazeroEsquerda(codProduto);

          if DM.fdsConfigDADOS_COD_ETIQUETA_BAL.AsString ='CP' then
          begin
          //aqui a vari�vel pesoProdutoBalEtiq esta recebendo o peso do produto,onde ser� dividido por 1000 para acrescentar a virgula
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
            pesoProdutoBalEtiq := Copy(edtItemRef.Text,8,5);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
            pesoProdutoBalEtiq := Copy(edtItemRef.Text,7,6);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
            pesoProdutoBalEtiq := Copy(edtItemRef.Text,6,7);

           pesoProdutoBalEtiq := floatToStr(StrToint(pesoProdutoBalEtiq)/1000);
          end;

          pegaCodDeLeitor:=false;
          if DM.fdsConfigTIPO_COD_PROD_ETIQUETABAL.AsString = 'CI' then
          begin
            with qryComand do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select COD_FABRICA,ID FROM PRODUTO_ITEM WHERE ID= '+ quotedStr(codProduto));
              Prepare;
              ExecQuery;
              idProd:= FieldByName('ID').AsString;
              edtItemRef.Text := FieldByName('COD_FABRICA').AsString;
            end;

             prodBalLeitorSereal:=True;
             pegaCodDeLeitor:=True;
          end
          else       //se n�o � codigo interno procura na referencia
          begin
           pegaCodDeLeitor:=false;
           with qryComand do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select COD_FABRICA,ID FROM PRODUTO_ITEM WHERE REFERENCIA = '+ quotedStr(codProduto));
              Prepare;
              ExecQuery;
              idProd:= FieldByName('ID').AsString;
              edtItemRef.Text := FieldByName('COD_FABRICA').AsString;
            end;
             prodBalLeitorSereal:=True;
             pegaCodDeLeitor:=True;
          end;
          /// aqui a vari�vel pesoProdutoBalEtiq esta recebendo o valor total do produto pesado,mas sera encontrado o peso atrav�z do valor total
         if DM.fdsConfigDADOS_COD_ETIQUETA_BAL.AsString ='CV' then
          begin
           //verifica o tamanho dos campos do codigo e do peso(valor) na etiqueta
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
            pesoProdutoBalEtiq := Copy(codLeitor,8,5);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
            pesoProdutoBalEtiq := Copy(codLeitor,7,6);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
            pesoProdutoBalEtiq := Copy(codLeitor,6,7);
           //pega o valor do pre�o de venda para encontrar o peso
           with qryComand do
           begin
            Close;
            SQL.Clear;
            SQL.Add('select PREC_VENDA FROM PRODUTO_ITEM_ESTOQUE WHERE IDITEM = '+ quotedStr(idProd));
            Prepare;
            ExecQuery;
            vlrUnitarioProd:= FieldByName('PREC_VENDA').AsFloat;
            pesoProdutoBalEtiq:= floatToStr(StrToInt(pesoProdutoBalEtiq)/100);
            pesoProdutoBalEtiq := floatToStr(roundTo((StrToFloat(pesoProdutoBalEtiq)/vlrUnitarioProd),-3));
           end;
          end;
       end;
     end;
   end;
   leitorSerial:=False;
 end;
end;

procedure TfrmPrincipal.VerificaDescAcreItem;
var
  utils : TUtils;
  idUsuarioTemp : Integer;
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
  itemVlrDescAcreTemp : Double;
begin
  temPermicao := True;
  //fdsVendaItensVLR_DESC_ACRE.AsFloat := utils.ValidaInteiroFloat(FloatToString(itemVlrDescAcreTemp), 'F');

  if fdsVendaItensVLR_DESC_ACRE.AsFloat > 0 then
  begin
    if fdsVendaItensVLR_DESC_ACRE.AsFloat > vlrDescMax then
    begin
      temPermicao := False;
      if vlrDescMax>0 then
      Application.MessageBox(Pchar('Desconto m�ximo permitido para esse item �: ' + FloatToStr(vlrDescMax) + '%'), 'Desconto n�o permitido.', MB_OK+MB_ICONASTERISK);
      temPermicao := uVerificaPermicao.Verifica('DESC_MAX_ITEM');
    end;

    if temPermicao then
    begin
      fdsVendaItensTIPO_DESC_ACRE.AsString := 'D';
      //itemVlrUnitario := RoundTo((itemVlrUnitario - (itemVlrUnitario * fdsVendaItensVLR_DESC_ACRE.AsFloat / 100)), -2);
      //fdsVendaItensVLR_UNITARIO.AsFloat := itemVlrUnitario;
    end
    else
    begin
      fdsVendaItensVLR_DESC_ACRE.AsFloat := 0;
      TFrmMensagens.Mensagem('Desculpe, usu�rio sem permiss�o para ultrapassar o desconto m�ximo.', 'Desconto n�o permitido.','I',[mbOk]);
      Abort;
    end;
  end;
end;

function TfrmPrincipal.VerificaPermicao(campo: string): Boolean;
var
  temPermicao : Boolean;
  idUsuarioTemp : Integer;
  uVerificaPermicao : TVerificaPermicao;
begin
  temPermicao := False;

  if DM.fdsUsuarioPermic.FieldByName(campo).AsString = 'S' then
    temPermicao := True
  else
    temPermicao := uVerificaPermicao.Verifica('ALTERAR_PREC_UNIT');

  if temPermicao then
    Result := True
  else
  begin
    TFrmMensagens.Mensagem('Desculpe, voc� n�o tem permiss�o para realizar esta opera��o', 'Sem permiss�o.','I',[mbOK]);
    Result:= False;
  end;
end;

function TfrmPrincipal.VerificaTabelaPrecos(Tabela:integer =0): String;
var
 x:String;
begin
   if Tabela=1 then
   x:='Tab.Pre�o 1';
   if Tabela=2 then
   x:='Tab.Pre�o 2';
   if Tabela=3 then
   x:='Tab.Pre�o 3';
   if Tabela=4 then
   x:='Tab.Pre�o 4';
   if Tabela=0 then
   x:='';
   result:=x;
end;

procedure TfrmPrincipal.VerificaTipoImpressao;
begin
   // if DM.impVenda = 1 then
   // begin
     // ImpressoraCupom;
    //  ImprimeNotaFastReport;
//      if perguntaViaCli = 'S' then
//      begin
//        if fdsCntReceber_Item.RecordCount > 0 then
//        begin
//          Case MessageBox(Application.Handle, Pchar('Deseja imprimir a via do cliente?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
//            idYes: begin
//                      ImprimeCupomFastReport;
//                   end;
//          end;
//        end
//        else
//         ImprimeCupomFastReport;
//      end
//      else
//        ImprimeCupomFastReport;
 //   end;

    if DM.impVenda = 2 then
    begin
      ImpressoraA4;
    end;

    if (DM.impVenda = 1) or (DM.impVenda = 3) then
    begin
      ImprimeCupomFastReport;
      if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
      begin
      if DM.fdsConfigCUPOM_CREDIARIO_SIMPLIFIC.AsString ='S' then
      begin
        ImprimeCupomSimplificado;
      end
      else
        ImprimeCupomFastReport;
      end;
      fdsCntReceber_Item.Close;
      frxReceber_Item.Close;
      cdsFormaPagamento.EmptyDataSet;
    end;
end;

procedure TfrmPrincipal.edtLarguraKeyPress(Sender: TObject; var Key: Char);
var
componente: TComponent;
begin
  if key = #13 then
  begin
    componente := FindComponent(cbxComponentes.Value);
    if componente is TRzEdit then
    begin
      with (componente as TRzEdit) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;

    if (componente is TRzDBEdit) then
    begin
      with (componente as TRzDBEdit) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;

    if (componente is TRzLabel) then
    begin
      with (componente as TRzLabel) do
      begin
        Width := StrToInt(edtLargura.Text);
      end;
    end;

    Key := #0;
  end;
end;

procedure TfrmPrincipal.edtTopExit(Sender: TObject);
var
componente: TComponent;
begin
  componente := FindComponent(cbxComponentes.Value);
  if componente is TRzEdit then
  begin
    with (componente as TRzEdit) do
    begin
      Top := StrToInt(edtTop.Text);
    end;
  end;

  if (componente is TRzDBEdit) then
  begin
    with (componente as TRzDBEdit) do
    begin
      Top := StrToInt(edtTop.Text);
    end;
  end;

  if (componente is TJvDBGrid) then
  begin
    with (componente as TJvDBGrid) do
    begin
      Top := StrToInt(edtTop.Text);
    end;
  end;

  if (componente is TRzLabel) then
  begin
    with (componente as TRzLabel) do
    begin
      Top := StrToInt(edtTop.Text);
    end;
  end;

end;

procedure TfrmPrincipal.edtTopKeyPress(Sender: TObject; var Key: Char);
var
componente: TComponent;
begin
  if key = #13 then
  begin
    componente := FindComponent(cbxComponentes.Value);
    if componente is TRzEdit then
    begin
      with (componente as TRzEdit) do
      begin
        Top := StrToInt(edtTop.Text);
      end;
    end;

    if (componente is TRzDBEdit) then
    begin
      with (componente as TRzDBEdit) do
      begin
        Top := StrToInt(edtTop.Text);
      end;
    end;

    if (componente is TJvDBGrid) then
    begin
      with (componente as TJvDBGrid) do
      begin
        Top := StrToInt(edtTop.Text);
      end;
    end;

    if (componente is TRzLabel) then
    begin
      with (componente as TRzLabel) do
      begin
        Top := StrToInt(edtTop.Text);
      end;
    end;

    Key := #0;
  end;

end;

end.