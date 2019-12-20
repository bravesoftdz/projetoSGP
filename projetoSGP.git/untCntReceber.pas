unit untCntReceber;

interface

uses
  Windows, Messages, SysUtils,System.Math, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, ComCtrls, RzDTP, RzDBDTP, DBCtrls, RzDBCmbo,
  RzCmboBx, Mask, RzEdit, RzDBEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  RzTabs, RzBckgnd, DB, FIBDataSet, pFIBDataSet, FIBQuery, pFIBQuery, RzRadGrp,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  RzRadChk, JvExStdCtrls, JvCheckBox, ImgList, cxGraphics, JvButton, JvCtrls,
  ComObj,DateUtils,
  PngImageList, Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Menus,
  frxClass, frxDBSet, Datasnap.DBClient, RzDBGrid, JvNavigationPane,
  Datasnap.Provider, pFIBClientDataSet;

type
 TbtnPesq = record
  TJVImgBtn:TJvImgBtn;
  TRZBitBtn: TRzBitBtn;
  TJvImBtn: TJvImgBtn;
 end;

type
  TfrmCntReceber = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblTituloTotal: TRzLabel;
    lblTotReceber: TRzLabel;
    RzBackground1: TRzBackground;
    pgcControl: TRzPageControl;
    tbsAnalitico: TRzTabSheet;
    tbsRenegociar: TRzTabSheet;
    fdsCntReceber: TpFIBDataSet;
    dsCntReceber: TDataSource;
    qrySomaReceber: TpFIBQuery;
    tbsSintetico: TRzTabSheet;
    rgbModoVisualizacao: TRzRadioGroup;
    fdsCntReceberItens: TpFIBDataSet;
    fdsCntReceberCheque: TpFIBDataSet;
    dsCntReceberItens: TDataSource;
    dsCntReceberCheque: TDataSource;
    fdsCntReceberID: TFIBBCDField;
    fdsCntReceberDT_INC: TFIBDateField;
    fdsCntReceberDT_ALT: TFIBDateField;
    fdsCntReceberPOSICAO: TFIBStringField;
    fdsCntReceberPREFIXO: TFIBStringField;
    fdsCntReceberREFERENCIA: TFIBStringField;
    fdsCntReceberIDCLIENTE: TFIBBCDField;
    fdsCntReceberACRESCIMO: TFIBBCDField;
    fdsCntReceberDESCONTO: TFIBBCDField;
    fdsCntReceberVALOR: TFIBBCDField;
    fdsCntReceberVALOR_PAGO: TFIBBCDField;
    fdsCntReceberIDPORTADOR: TFIBBCDField;
    fdsCntReceberHISTORICO: TFIBStringField;
    fdsCntReceberIDFORMA_PAG: TFIBBCDField;
    fdsCntReceberIDVENDA: TFIBBCDField;
    fdsCntReceberTIPO_VENDA: TFIBStringField;
    fdsCntReceberTOT_PARCELA: TFIBStringField;
    fdsCntReceberPARCELAS_PG: TFIBIntegerField;
    fdsCntReceberItensID: TFIBBCDField;
    fdsCntReceberItensPOSICAO: TFIBStringField;
    fdsCntReceberItensPREFIXO: TFIBStringField;
    fdsCntReceberItensREFERENCIA: TFIBStringField;
    fdsCntReceberItensIDRECEBER: TFIBBCDField;
    fdsCntReceberItensDT_VENC: TFIBDateField;
    fdsCntReceberItensDT_PAG: TFIBDateField;
    fdsCntReceberItensACRESCIMO: TFIBBCDField;
    fdsCntReceberItensDESCONTO: TFIBBCDField;
    fdsCntReceberItensVALOR: TFIBBCDField;
    fdsCntReceberItensVALOR_PAGO: TFIBBCDField;
    fdsCntReceberItensHISTORICO: TFIBStringField;
    fdsCntReceberItensPARCELA: TFIBStringField;
    gdrReceberSintetico: TJvDBGrid;
    fdsCntReceberCLIENTE: TFIBStringField;
    fdsCntReceberFORMA_PAG: TFIBStringField;
    fdsCliente: TpFIBDataSet;
    dsCliente: TDataSource;
    fdsCntReceberDINHEIRO: TFIBBCDField;
    dsCntReceberItensForm: TDataSource;
    imgFlagYellow: TImage;
    imgFlagRed: TImage;
    imgFlagGreen: TImage;
    imgFlagYellow2: TImage;
    imgFlagRed2: TImage;
    imgFlagGreen2: TImage;
    fdsCntReceberItensIDCLIENTE: TFIBBCDField;
    fdsCntReceberItensCLIENTE: TFIBStringField;
    fdsCntReceberItensForm: TpFIBDataSet;
    fdsCntReceberItensFormID: TFIBBCDField;
    fdsCntReceberItensFormPOSICAO: TFIBStringField;
    fdsCntReceberItensFormPREFIXO: TFIBStringField;
    fdsCntReceberItensFormREFERENCIA: TFIBStringField;
    fdsCntReceberItensFormIDRECEBER: TFIBBCDField;
    fdsCntReceberItensFormDT_VENC: TFIBDateField;
    fdsCntReceberItensFormDT_PAG: TFIBDateField;
    fdsCntReceberItensFormACRESCIMO: TFIBBCDField;
    fdsCntReceberItensFormDESCONTO: TFIBBCDField;
    fdsCntReceberItensFormVALOR: TFIBBCDField;
    fdsCntReceberItensFormVALOR_PAGO: TFIBBCDField;
    fdsCntReceberItensFormHISTORICO: TFIBStringField;
    fdsCntReceberItensFormPARCELA: TFIBStringField;
    fdsCntReceberItensFormNOME: TFIBStringField;
    fdsClienteID: TFIBBCDField;
    fdsClienteNOME: TFIBStringField;
    fdsClienteTELEFONE: TFIBStringField;
    fdsClienteTIPO: TFIBStringField;
    fdsClienteCIDADE: TFIBStringField;
    fdsCntReceberIDFILIAL: TFIBBCDField;
    fdsCntReceberItensENVIADO_WEB: TFIBStringField;
    fdsCntReceberItensIDFILIAL: TFIBBCDField;
    fdsCntReceberItensFormENVIADO_WEB: TFIBStringField;
    fdsCntReceberItensFormIDFILIAL: TFIBBCDField;
    PngImageList1: TPngImageList;
    RzLabel12: TRzLabel;
    lblTotRecebido: TRzLabel;
    fdsCntReceberItensBAIXA_AGRUPADA: TFIBStringField;
    fdsCntReceberItensPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntReceberItensFormBAIXA_AGRUPADA: TFIBStringField;
    fdsCntReceberItensFormPAGAMENTO_MOEDA: TFIBStringField;
    imgDN: TImage;
    imgCH: TImage;
    imgDN2: TImage;
    imgCH2: TImage;
    imgCT: TImage;
    imgNT: TImage;
    fdsCntReceberTOT_RECEBIDO: TFloatField;
    fdsCntReceberTOT_RECEBER: TFloatField;
    fdsCntReceberItensTOT_RECEBIDO: TFloatField;
    fdsCntReceberItensTOT_RECEBER: TFloatField;
    fdsCntReceberItensREC_DESC_ACRE: TFIBBCDField;
    fdsCntReceberItensREC_DINHEIRO: TFIBBCDField;
    fdsCntReceberItensID_REC_ITEM: TFIBBCDField;
    fdsCntReceberItensVALOR_JUROS_PAGO: TFIBBCDField;
    fdsCntReceberItensFormREC_DESC_ACRE: TFIBBCDField;
    fdsCntReceberItensFormREC_DINHEIRO: TFIBBCDField;
    fdsCntReceberItensFormID_REC_ITEM: TFIBBCDField;
    fdsCntReceberItensFormVALOR_JUROS_PAGO: TFIBBCDField;
    qryComando: TpFIBQuery;
    fdsCntReceberItensIDVENDA: TFIBBCDField;
    fdsCntReceberItensCREDITO: TFIBBCDField;
    fdsCntReceberItensFormIDVENDA: TFIBBCDField;
    fdsCntReceberItensFormCREDITO: TFIBBCDField;
    btnIncluir: TRzBitBtn;
    btnCancelarReceber: TRzBitBtn;
    lblTotSelecionado: TRzLabel;
    edtValorSelect: TRzEdit;
    btnReceber: TRzBitBtn;
    btnBoletos: TRzBitBtn;
    btnBaixarBoletos: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnInprimir: TRzBitBtn;
    ActionList1: TActionList;
    ppmImprimir: TPopupMenu;
    relExtratoCliente: TAction;
    relExtratoCliente1: TMenuItem;
    relAnalitico: TAction;
    RelatrioAnaltico1: TMenuItem;
    frxCntReceberItens: TfrxDBDataset;
    frxCntReceber: TfrxDBDataset;
    fdsCntReceberItensSTATUS: TStringField;
    fdsnotasClientesDevedores: TpFIBDataSet;
    fdsNotasClientesEmAtraso: TpFIBDataSet;
    fdsClienteAtraso: TpFIBDataSet;
    fdsClienteAtrasoNOME: TFIBStringField;
    fdsClienteAtrasoVALOR_RECEBER_TOTAL: TFIBBCDField;
    fdsClienteAtrasoVALOR_TOT_PAGO_TOTAL: TFIBBCDField;
    fdsClienteAtrasoVALOR_DEVEDOR_TOTAL: TFIBBCDField;
    relClienteEmAtraso: TAction;
    ClienteEmAtraso1: TMenuItem;
    frxNotasClienteAtraso: TfrxDBDataset;
    frxClienteAtraso: TfrxDBDataset;
    fdsNotasClientesEmAtrasoNOME: TFIBStringField;
    fdsNotasClientesEmAtrasoREFERENCIA: TFIBStringField;
    fdsNotasClientesEmAtrasoDT_VENC: TFIBDateField;
    fdsNotasClientesEmAtrasoVALOR_RECEBER: TFIBBCDField;
    fdsNotasClientesEmAtrasoVALOR_TOT_PAGO: TFIBBCDField;
    fdsNotasClientesEmAtrasoVALOR_DEVEDOR: TFIBBCDField;
    fdsNotasClientesEmAtrasoID: TFIBBCDField;
    relReiprimirReceber: TAction;
    CartasdeCobrana1: TMenuItem;
    CCModeloAmigavel: TAction;
    CCModeloSPC: TAction;
    CCCartaComum: TAction;
    CCSpcSerasa: TAction;
    menuCartaCobranca: TAction;
    CCModeloAmigavel1: TMenuItem;
    ModeloSPC1: TMenuItem;
    CartaComum1: TMenuItem;
    CartaSPCeSERASA1: TMenuItem;
    fdsClientesDevedores: TpFIBDataSet;
    fdsnotasClientesDevedoresNOME: TFIBStringField;
    fdsnotasClientesDevedoresID: TFIBBCDField;
    fdsnotasClientesDevedoresDT_INC: TFIBDateField;
    fdsnotasClientesDevedoresREFERENCIA: TFIBStringField;
    fdsnotasClientesDevedoresDT_VENC: TFIBDateField;
    fdsnotasClientesDevedoresDT_ULTIMO_PAG: TFIBDateField;
    fdsnotasClientesDevedoresVALOR_RECEBER: TFIBBCDField;
    fdsnotasClientesDevedoresVALOR_TOT_PAGO: TFIBBCDField;
    fdsnotasClientesDevedoresVALOR_DEVEDOR: TFIBBCDField;
    fdsClientesDevedoresID: TFIBBCDField;
    fdsClientesDevedoresDT_INC: TFIBDateField;
    fdsClientesDevedoresDT_ALT: TFIBDateField;
    fdsClientesDevedoresSTATUS: TFIBStringField;
    fdsClientesDevedoresNOME: TFIBStringField;
    fdsClientesDevedoresDT_NASC: TFIBDateField;
    fdsClientesDevedoresTELEFONE: TFIBStringField;
    fdsClientesDevedoresENDERECO: TFIBStringField;
    fdsClientesDevedoresBAIRRO: TFIBStringField;
    fdsClientesDevedoresIDCIDADE: TFIBBCDField;
    fdsClientesDevedoresCEP: TFIBStringField;
    fdsClientesDevedoresRG: TFIBStringField;
    fdsClientesDevedoresCPF: TFIBStringField;
    fdsClientesDevedoresSEXO: TFIBStringField;
    fdsClientesDevedoresCELULAR: TFIBStringField;
    fdsClientesDevedoresTIPO: TFIBStringField;
    fdsClientesDevedoresRAZAOSOCIAL: TFIBStringField;
    fdsClientesDevedoresCONTATO: TFIBStringField;
    fdsClientesDevedoresDT_ULTIMO_CONTATO: TFIBDateField;
    fdsClientesDevedoresLIMITE_CREDITO: TFIBBCDField;
    fdsClientesDevedoresIDFILIAL: TFIBBCDField;
    fdsClientesDevedoresREFERENCIA: TFIBStringField;
    fdsClientesDevedoresCREDITO: TFIBBCDField;
    fdsClientesDevedoresNUMERO: TFIBStringField;
    fdsClientesDevedoresCOMPLEMENTO: TFIBStringField;
    fdsClientesDevedoresOBSERVACAO: TFIBStringField;
    fdsClientesDevedoresCODCIDADE: TFIBStringField;
    fdsClientesDevedoresULTIMO_CREDITO: TFIBBCDField;
    fdsClientesDevedoresDT_ULTIMO_CREDITO: TFIBDateField;
    fdsClientesDevedoresCIDADE: TFIBStringField;
    frxnotasClientesDevedores: TfrxDBDataset;
    frxClientesDevedores: TfrxDBDataset;
    fdsCntReceberItensFormDT_ULTIMO_PAG: TDateField;
    fdsCntReceberItensVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsCntReceberItensVALOR_JUROS: TFloatField;
    fdsCntReceberItensDIAS_ATRASO: TIntegerField;
    fdsCntReceberItensVALOR_RESTANTE: TFloatField;
    fdsMovCntReceber: TpFIBDataSet;
    fdsMovCntReceberItem: TpFIBDataSet;
    fdsMovCntReceberID: TFIBBCDField;
    fdsMovCntReceberIDFILIAL: TFIBBCDField;
    fdsMovCntReceberIDCAIXA: TFIBIntegerField;
    fdsMovCntReceberIDCAIXA_MOV: TFIBIntegerField;
    fdsMovCntReceberDT_MOVIMENTO: TFIBDateField;
    fdsMovCntReceberVLR_TOTAL_PG: TFIBBCDField;
    fdsMovCntReceberVLR_TOT_RECEBIDO: TFIBBCDField;
    fdsMovCntReceberVLR_DINHEIRO: TFIBBCDField;
    fdsMovCntReceberVLR_CARTAO_DT: TFIBBCDField;
    fdsMovCntReceberVLR_CARTAO_CR: TFIBBCDField;
    fdsMovCntReceberVLR_CHEQUE: TFIBBCDField;
    fdsMovCntReceberVLR_NOTA: TFIBBCDField;
    fdsMovCntReceberVLR_CREDITO: TFIBBCDField;
    fdsMovCntReceberVLR_DESCONTO: TFIBBCDField;
    fdsMovCntReceberVLR_ACRESCIMO: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS_PAGO: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsMovCntReceberVLR_TROCO: TFIBBCDField;
    fdsMovCntReceberUSAR_JUROS: TFIBStringField;
    fdsMovCntReceberHISTORICO: TFIBStringField;
    fdsMovCntReceberItemID: TFIBBCDField;
    fdsMovCntReceberItemIDFILIAL: TFIBBCDField;
    fdsMovCntReceberItemITEM: TFIBIntegerField;
    fdsMovCntReceberItemIDMOVIMENTO: TFIBBCDField;
    fdsMovCntReceberItemIDDOC: TFIBBCDField;
    fdsMovCntReceberItemIDVENDA: TFIBIntegerField;
    fdsMovCntReceberItemDT_MOVIMENTO: TFIBDateField;
    fdsMovCntReceberItemVLR_DOC: TFIBBCDField;
    fdsMovCntReceberItemVLR_PAGO: TFIBBCDField;
    fdsMovCntReceberItemVLR_PAGO_ATUAL: TFIBBCDField;
    fdsMovCntReceberItemVLR_DESCONTO: TFIBBCDField;
    fdsMovCntReceberItemVLR_ACRESCIMO: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS_PAGO: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsMovCntReceberItemVLR_RESTANTE: TFIBBCDField;
    fdsMovCntReceberItemREFERENCIA: TFIBStringField;
    frxMovCntReceberItem: TfrxDBDataset;
    fdsMovCntReceberHR_MOVIMENTO: TFIBTimeField;
    fdsCntReceberItensDT_INC: TFIBDateField;
    fdsCntReceberItensDOCUMENTO: TFIBStringField;
    fdsCntReceberItensTOT_RESTANTE: TFloatField;
    cdsFormaPagamento: TClientDataSet;
    frxFormaPagamento: TfrxDBDataset;
    cdsFormaPagamentoMOEDA: TStringField;
    cdsFormaPagamentoVALOR: TFloatField;
    cdsDescAcre: TClientDataSet;
    frxDescAcre: TfrxDBDataset;
    cdsDescAcreMOEDA: TStringField;
    cdsDescAcreVALOR: TFloatField;
    Reiprimir1: TMenuItem;
    ComprovantedePagamento1: TMenuItem;
    tbsHistorico: TRzTabSheet;
    pnlInfo: TPanel;
    rgbPeriodoMov: TRzGroupBox;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    dtpFimMov: TJvDatePickerEdit;
    rgbClienteMov: TRzGroupBox;
    edtPesqClienteMov: TRzEdit;
    btnPesqClienteMov: TRzBitBtn;
    edtCodigoClienteMov: TRzEdit;
    rgbVendaMov: TRzGroupBox;
    edtVendaMov: TRzEdit;
    pnlPeriodo: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    pnlCliente: TRzGroupBox;
    edtPesqCliente: TRzEdit;
    btnPesqCliente: TRzBitBtn;
    edtClienteCodigo: TRzEdit;
    pnlTipoDoc: TRzGroupBox;
    cbxTipoDoc: TRzComboBox;
    pnlReferencia: TRzGroupBox;
    edtPesqRef: TRzEdit;
    chkReferencia: TJvCheckBox;
    pnlNumVenda: TRzGroupBox;
    edtPesqNVenda: TRzEdit;
    chkNumVenda: TJvCheckBox;
    btnPesquisar: TJvImgBtn;
    dsMovCntRecber: TDataSource;
    Panel1: TPanel;
    RzGroupBox6: TRzGroupBox;
    RzGroupBox7: TRzGroupBox;
    gdrHistorico: TDBGrid;
    DBGrid2: TDBGrid;
    rgbOrigemReceber: TRzRadioGroup;
    fdsNotasClientesEmAtrasoVLR_RESTANTE: TFloatField;
    fdsNotasClientesEmAtrasoDT_PAG: TFIBDateField;
    fdsNotasClientesEmAtrasoVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsNotasClientesEmAtrasoVALOR_JUROS_PAGO: TFIBBCDField;
    fdsNotasClientesEmAtrasoACRESCIMO: TFIBBCDField;
    fdsNotasClientesEmAtrasoDESCONTO: TFIBBCDField;
    fdsCntReceberItensDT_ULTIMO_PAG: TDateField;
    chkCliente: TJvCheckBox;
    chkPeriodo: TJvCheckBox;
    chkTipoDoc: TJvCheckBox;
    UltimoRecebimento1: TMenuItem;
    btnPesqMov: TJvImgBtn;
    dsMovCntReceberItem: TDataSource;
    fdsMovCntReceberIDCLIENTE: TFIBBCDField;
    fdsMovCntReceberCLIENTE: TFIBStringField;
    dtpInicioMov: TJvDatePickerEdit;
    qrySomaMov: TpFIBQuery;
    btnRenegociar: TRzBitBtn;
    pnlPesq: TPanel;
    pnlPosicao: TPanel;
    rgbPosicao: TRzRadioGroup;
    Label1: TLabel;
    RzDBEdit11: TRzDBEdit;
    fdsMov_RegociarItem: TpFIBDataSet;
    fdsMov_Renegociar: TpFIBDataSet;
    dsMovRenegociar: TDataSource;
    dsMovRenegociarItem: TDataSource;
    Panel2: TPanel;
    rgbPeriodoRene: TRzGroupBox;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    dtpInicioRene: TJvDatePickerEdit;
    dtpFimRene: TJvDatePickerEdit;
    pnlClienteRene: TRzGroupBox;
    edtPesqClienteRene: TRzEdit;
    btnPesqClienteRene: TRzBitBtn;
    edtCodigoClienteRene: TRzEdit;
    pnlVendaRene: TRzGroupBox;
    edtVendaRene: TRzEdit;
    cdsRenegociarItem: TClientDataSet;
    dspRenegociarItem: TDataSetProvider;
    btnPesqRene: TRzBitBtn;
    fdsMov_RenegociarID: TFIBBCDField;
    fdsMov_RenegociarIDFILIAL: TFIBBCDField;
    fdsMov_RenegociarIDCLIENTE: TFIBBCDField;
    fdsMov_RenegociarIDUSUARIO: TFIBBCDField;
    fdsMov_RenegociarDT_MOVIMENTO: TFIBDateField;
    fdsMov_RenegociarHR_MOVIMENTO: TFIBTimeField;
    fdsMov_RenegociarVLR_TOTAL: TFIBBCDField;
    fdsMov_RenegociarVLR_ENTRADA: TFIBBCDField;
    fdsMov_RenegociarVLR_TROCO: TFIBIntegerField;
    fdsMov_RenegociarVLR_RENEGOCIADO: TFIBBCDField;
    fdsMov_RenegociarNUM_PARCELAS: TFIBIntegerField;
    fdsMov_RenegociarVLR_TOT_JUROS: TFIBBCDField;
    fdsMov_RenegociarHISTORICO: TFIBStringField;
    fdsMov_RegociarItemID: TFIBBCDField;
    fdsMov_RegociarItemIDFILIAL: TFIBBCDField;
    fdsMov_RegociarItemITEM: TFIBBCDField;
    fdsMov_RegociarItemIDRENEGOCIAR: TFIBBCDField;
    fdsMov_RegociarItemIDDOC: TFIBBCDField;
    fdsMov_RegociarItemIDVENDA: TFIBBCDField;
    fdsMov_RegociarItemDT_MOVIENTO: TFIBDateField;
    fdsMov_RegociarItemVLR_DOC: TFIBBCDField;
    fdsMov_RegociarItemVLR_PAGO: TFIBBCDField;
    fdsMov_RegociarItemVLR_RENEGOCIADO: TFIBBCDField;
    fdsMov_RegociarItemVLR_JUROS: TFIBBCDField;
    fdsMov_RegociarItemREFERENCIA: TFIBStringField;
    cdsRenegociarItemID: TBCDField;
    cdsRenegociarItemIDFILIAL: TBCDField;
    cdsRenegociarItemITEM: TBCDField;
    cdsRenegociarItemIDRENEGOCIAR: TBCDField;
    cdsRenegociarItemIDDOC: TBCDField;
    cdsRenegociarItemIDVENDA: TBCDField;
    cdsRenegociarItemDT_MOVIENTO: TDateField;
    cdsRenegociarItemVLR_DOC: TBCDField;
    cdsRenegociarItemVLR_PAGO: TBCDField;
    cdsRenegociarItemVLR_RENEGOCIADO: TBCDField;
    cdsRenegociarItemVLR_JUROS: TBCDField;
    cdsRenegociarItemREFERENCIA: TStringField;
    fdsMov_RegociarItemVLR_JUROS_PAG: TFIBBCDField;
    fdsMov_RegociarItemVLR_DESCONTO: TFIBBCDField;
    fdsMov_RegociarItemVLR_ACRESCIMO: TFIBBCDField;
    cdsRenegociarItemVLR_JUROS_PAG: TBCDField;
    cdsRenegociarItemVLR_DESCONTO: TBCDField;
    cdsRenegociarItemVLR_ACRESCIMO: TBCDField;
    fdsMov_RenegociarVLR_NOTA: TFIBBCDField;
    fdsMov_RenegociarVLR_CHEQUE: TFIBBCDField;
    fdsMov_RenegociarVLR_CARTAO_CT: TFIBBCDField;
    fdsMov_RenegociarVLR_CARTAO_CD: TFIBBCDField;
    fdsMov_RenegociarID_REC_CH: TFIBBCDField;
    fdsMov_RenegociarID_REC_CT: TFIBBCDField;
    fdsMov_RenegociarVLR_DINHEIRO: TFIBBCDField;
    fdsMov_RenegociarID_REC_NT: TFIBBCDField;
    fdsMov_RenegociarCLIENTE: TFIBStringField;
    fdsMov_RenegociarUSUARIO: TFIBStringField;
    fdsMov_RenegociarUSA_JUROS: TFIBStringField;
    Panel3: TPanel;
    RzGroupBox4: TRzGroupBox;
    gdrRenegociarItem: TDBGrid;
    gdrRenegociar: TDBGrid;
    Panel4: TPanel;
    RzPageControl1: TRzPageControl;
    tbsNotas: TRzTabSheet;
    gdrReceberAnalitico: TJvDBGrid;
    tbsFormulario: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    lblNome: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    lblVenda: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel13: TRzLabel;
    edtClienteNome: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    edtNumVenda: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    gdrParcelas: TJvDBGrid;
    fdsMov_RenegociarDESCONTO: TFIBBCDField;
    fdsMov_RenegociarACRESCIMO: TFIBBCDField;
    cdsParcelas: TClientDataSet;
    cdsParcelasREFERENCIA: TStringField;
    cdsParcelasDT_VENC: TDateTimeField;
    cdsParcelasVALOR: TFloatField;
    frxMovRenegociarItem: TfrxDBDataset;
    frxParcelas: TfrxDBDataset;
    relReiprimirRenegociacao: TAction;
    Renegociao1: TMenuItem;
    rgbCaixa: TRzGroupBox;
    edtCaixa: TRzEdit;
    Label2: TLabel;
    edtTotRecebidoMov: TEdit;
    rgbRef: TRzGroupBox;
    edtReferencia: TRzEdit;
    Label3: TLabel;
    Label4: TLabel;
    fdsClienteCELULAR: TFIBStringField;
    RzDBEdit14: TRzDBEdit;
    RzLabel20: TRzLabel;
    edtTotRecebido: TRzEdit;
    edtTotReceber: TRzEdit;
    procedure gdrReceberAnaliticoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RetornaTotalReceber(index: Integer);
    procedure RetornaTotalRecebido(index: Integer);
    procedure rgbModoVisualizacaoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure gdrReceberSinteticoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure tbsSinteticoShow(Sender: TObject);
    procedure gdrReceberAnaliticoTitleClick(Column: TColumn);
    procedure gdrReceberSinteticoTitleClick(Column: TColumn);
    procedure btnReceberClick(Sender: TObject);
    procedure fdsCntReceberBeforeOpen(DataSet: TDataSet);
    procedure fdsCntReceberItensAfterScroll(DataSet: TDataSet);
    procedure RetornaCntReceberItemIDReceber(idReceber: string);
    procedure RetornaClienteId(idCliente: string);
    procedure RetornaIDCliente(cliente: string);
    procedure RetornaCntReceberIdReceberItem(idReceber: string);
    procedure fdsCntReceberItensFormAfterScroll(DataSet: TDataSet);
    procedure gdrParcelasDblClick(Sender: TObject);
    procedure gdrParcelasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrReceberSinteticoKeyPress(Sender: TObject; var Key: Char);
    procedure PesquisaReceberCliente;
    procedure PesquisaReceberStatus;
    procedure RetornaTodosReceber;
    procedure PesquisarSintetico;
    procedure PesquisarAnalitico(index: Integer);
    procedure RetornaDadosForm;
    procedure VerificaModoVisualizacao;
    procedure VerificaModoVisualizacaoPOG;
    procedure gdrReceberAnaliticoKeyPress(Sender: TObject; var Key: Char);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkTipoDocClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesqClienteExit(Sender: TObject);
    procedure edtPesqClienteEnter(Sender: TObject);
    procedure btnBoletosClick(Sender: TObject);
    procedure btnBaixarBoletosClick(Sender: TObject);
    procedure LerArquivoRetorno;
    procedure lblVendaMouseLeave(Sender: TObject);
    procedure lblVendaMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lblVendaClick(Sender: TObject);
    procedure gdrReceberAnaliticoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gdrReceberAnaliticoCellClick(Column: TColumn);
    procedure chkReferenciaClick(Sender: TObject);
    procedure edtPesqRefEnter(Sender: TObject);
    procedure edtPesqRefExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure rgbPosicaoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure fdsCntReceberAfterClose(DataSet: TDataSet);
    procedure CalculaTotais(index: Integer);
    procedure btnCancelarReceberClick(Sender: TObject);
    procedure edtPesqNVendaEnter(Sender: TObject);
    procedure edtPesqNVendaExit(Sender: TObject);
    procedure chkNumVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure edtClienteCodigoEnter(Sender: TObject);
    procedure edtClienteCodigoExit(Sender: TObject);
    procedure relExtratoClienteExecute(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure relAnaliticoExecute(Sender: TObject);
    procedure fdsCntReceberItensCalcFields(DataSet: TDataSet);
    procedure ClientesDevedores1Click(Sender: TObject);
    procedure relClienteEmAtrasoExecute(Sender: TObject);
    procedure CCModeloAmigavelExecute(Sender: TObject);
    procedure CCModeloSPCExecute(Sender: TObject);
    procedure CCCartaComumExecute(Sender: TObject);
    procedure CCSpcSerasaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdrReceberAnaliticoDrawColumnTitle(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; AColumn: TColumn;
      var ASortMarker: TJvDBGridBitmap; IsDown: Boolean; var Offset: Integer;
      var DefaultDrawText, DefaultDrawSortMarker: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarReceberMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure tbsHistoricoShow(Sender: TObject);
    procedure rgbOrigemReceberChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure fdsNotasClientesEmAtrasoCalcFields(DataSet: TDataSet);
    procedure ppmImprimirPopup(Sender: TObject);
    procedure UltimoRecebimento1Click(Sender: TObject);
    procedure fdsMovCntReceberAfterScroll(DataSet: TDataSet);
    procedure btnPesqMovClick(Sender: TObject);
    procedure edtVendaMovEnter(Sender: TObject);
    procedure edtVendaMovExit(Sender: TObject);
    procedure edtCodigoClienteMovEnter(Sender: TObject);
    procedure edtCodigoClienteMovExit(Sender: TObject);
    procedure btnPesqClienteMovClick(Sender: TObject);
    procedure pgcControlChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure relReiprimirReceberExecute(Sender: TObject);
    procedure btnRenegociarClick(Sender: TObject);
    procedure tbsFormularioShow(Sender: TObject);
    procedure RzPageControl1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure tbsNotasShow(Sender: TObject);
    procedure fdsMov_RenegociarAfterScroll(DataSet: TDataSet);
    procedure tbsRenegociarShow(Sender: TObject);
    procedure btnPesqReneClick(Sender: TObject);
    procedure btnPesqClienteReneClick(Sender: TObject);
    procedure rgbClienteMovCheckBoxClick(Sender: TObject);
    procedure edtCodigoClienteReneEnter(Sender: TObject);
    procedure edtCodigoClienteReneExit(Sender: TObject);
    procedure edtPesqClienteMovEnter(Sender: TObject);
    procedure edtPesqClienteMovExit(Sender: TObject);
    procedure edtPesqClienteReneEnter(Sender: TObject);
    procedure edtPesqClienteReneExit(Sender: TObject);
    procedure edtVendaReneEnter(Sender: TObject);
    procedure relReiprimirRenegociacaoExecute(Sender: TObject);
    procedure gdrRenegociarTitleClick(Column: TColumn);
    procedure rgbRefCheckBoxClick(Sender: TObject);
    procedure pnlVendaReneCheckBoxClick(Sender: TObject);
    procedure rgbVendaMovCheckBoxClick(Sender: TObject);
    procedure rgbCaixaCheckBoxClick(Sender: TObject);
    procedure edtCaixaEnter(Sender: TObject);
    procedure edtCaixaExit(Sender: TObject);
    procedure edtReferenciaEnter(Sender: TObject);
    procedure edtReferenciaExit(Sender: TObject);

  private
   procedure CalculaJuros;
   procedure calculaTotalMov(origem:Integer);
   procedure LimpaSelecionado;
   procedure ImprimeComprovante(idMov:String);
   procedure ImprimeComprovanteRene(idMov:String);
   procedure ImpComprovantePag(Modo:String='PG');
   procedure PesquisaMovimentoRec(origem:Integer);
   procedure PesqRenegociar;
   procedure PesqClientes(EditCod:TRZEdit;EditNome:TRZEdit;BtnPesq:TComponent);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCntReceber: TfrmCntReceber;
  LocalClicadoX: Integer;
  vlr_TotReceber, vlr_TotRecebido: Double;
  checkTodos:String[1];
  vlrSelecionado, vlrTotalJuros: Double;

implementation

uses untData, uUtils, untCheque, untPesqCliente,
  untPesqStatusDoc, untEmissaoBoleto, untPedidos, untRecebimentoDetalhe,
  untPagIncReceber, untVendas;

{$R *.dfm}

procedure TfrmCntReceber.btnReceberClick(Sender: TObject);
var
  idReceberTemp, idReceberItemTemp,idVendaTemp,historico: string;
 TempIdMov,i:Integer;
begin
  if not(chkCliente.Checked) or
    ((chkCliente.Checked) and (Trim(edtPesqCliente.Text) = 'TODOS')) then
  begin
    Application.MessageBox
    ('Por favor, informe um cliente para e realiza��o do Recebimento.',
    'Aten��o',MB_OK+MB_ICONASTERISK);
    abort;
  end;

  if vlrSelecionado <= 0 then
  begin
    Application.MessageBox('Por favor,selecione as notas para a realiza��o do Recebimento.',
      'Aten��o',MB_OK+MB_ICONASTERISK);
    abort;
  end;
  Try
    frmPagIncReceber := TfrmPagIncReceber.Create(nil);
    frmPagIncReceber.Caption := 'Baixa de Documento de Cliente';
    frmPagIncReceber.lblTitulo.Caption := 'Baixa de Documento de Cliente';

    if rgbModoVisualizacao.ItemIndex = 1 then
    begin
      fdsCntReceberItens.First;
      while not(fdsCntReceberItens.Eof) do
      begin
        RetornaCntReceberIdReceberItem(fdsCntReceberItensIDRECEBER.AsString);
        if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
        begin
          idReceberItemTemp := fdsCntReceberItensID.AsString;
          // frmPagIncReceber.idDoc := fdsCntReceberItensID.AsInteger;
          // frmPagIncReceber.idFilial := fdsCntReceberItensIDFILIAL.AsInteger;

          frmPagIncReceber.cdsDocumentos.Append;
          frmPagIncReceber.cdsDocumentosIdDoc.AsInteger :=
            fdsCntReceberItensID.AsInteger;
          frmPagIncReceber.cdsDocumentosIdVenda.AsInteger :=
            fdsCntReceberItensIDVENDA.AsInteger;
          frmPagIncReceber.cdsDocumentosREFERENCIA.AsString :=
            fdsCntReceberItensREFERENCIA.AsString;
          frmPagIncReceber.cdsDocumentosIdFilial.AsInteger :=
            fdsCntReceberItensIDFILIAL.AsInteger;
          frmPagIncReceber.cdsDocumentosVALOR_PAGO.AsFloat :=
            fdsCntReceberItensVALOR_PAGO.AsFloat;
          frmPagIncReceber.cdsDocumentosVALOR_DOC.AsFloat :=
            fdsCntReceberItensVALOR.AsFloat - fdsCntReceberItensDESCONTO.AsFloat;

          frmPagIncReceber.cdsDocumentosVALOR_JUROS.AsFloat :=
            fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;

          frmPagIncReceber.cdsDocumentosJUROS_RESTANTE.AsFloat := fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
          frmPagIncReceber.cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
          frmPagIncReceber.cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
          frmPagIncReceber.cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := 0;
          frmPagIncReceber.cdsDocumentosVLR_RENEGOCIADO.AsFloat:=0;
          frmPagIncReceber.cdsDocumentosVALOR_RESTANTE.AsFloat :=
            fdsCntReceberItensVALOR.AsFloat -
            fdsCntReceberItensVALOR_PAGO.AsFloat;

          frmPagIncReceber.cdsDocumentosREC_DINHEIRO.AsFloat :=
            fdsCntReceberItensREC_DINHEIRO.AsFloat;
          frmPagIncReceber.cdsDocumentosPAGAMENTO_MOEDA.AsString :=
            fdsCntReceberItensPAGAMENTO_MOEDA.AsString;
          frmPagIncReceber.cdsDocumentosPARCELA.AsString :=
            fdsCntReceberItensPARCELA.AsString;
          frmPagIncReceber.cdsDocumentosIDRECEBER.AsInteger :=
            fdsCntReceberItensIDRECEBER.AsInteger;
          frmPagIncReceber.cdsDocumentosDT_VENCIMENTO.AsDateTime :=
                fdsCntReceberItensDT_VENC.AsDateTime;
          frmPagIncReceber.cdsDocumentos.Post;

          fdsCntReceberItens.Edit;
          fdsCntReceberItensBAIXA_AGRUPADA.AsString := EmptyStr;
          fdsCntReceberItens.Post;
        end;
         fdsCntReceberItens.Next;
      end;

//      frmPagIncReceber.valorDoc := fdsCntReceberItensVALOR.AsFloat -
//        fdsCntReceberItensDESCONTO.AsFloat -
//        fdsCntReceberItensVALOR_PAGO.AsFloat;
        frmPagIncReceber.valorDoc := vlrSelecionado;
      frmPagIncReceber.creditoTotal := fdsCntReceberItensCREDITO.AsFloat;
    end
    else
    begin
      fdsCntReceberItens.First;
      while not(fdsCntReceberItens.Eof) do
      begin
        frmPagIncReceber.cdsDocumentos.Append;
        frmPagIncReceber.cdsDocumentosIdDoc.AsInteger :=
          fdsCntReceberItensFormID.AsInteger;
        frmPagIncReceber.cdsDocumentosIdVenda.AsInteger :=
          fdsCntReceberItensFormIDVENDA.AsInteger;
        frmPagIncReceber.cdsDocumentosREFERENCIA.AsString :=
          fdsCntReceberItensFormREFERENCIA.AsString;
        frmPagIncReceber.cdsDocumentosIdFilial.AsInteger :=
          fdsCntReceberItensFormIDFILIAL.AsInteger;
        frmPagIncReceber.cdsDocumentosVALOR_PAGO.AsFloat :=
          fdsCntReceberItensFormVALOR_PAGO.AsFloat;
        frmPagIncReceber.cdsDocumentosVALOR_DOC.AsFloat :=
          fdsCntReceberItensFormVALOR.AsFloat -
          fdsCntReceberItensDESCONTO.AsFloat;
        frmPagIncReceber.cdsDocumentosREC_DINHEIRO.AsFloat :=
          fdsCntReceberItensFormREC_DINHEIRO.AsFloat;
        frmPagIncReceber.cdsDocumentosPAGAMENTO_MOEDA.AsString :=
          fdsCntReceberItensFormPAGAMENTO_MOEDA.AsString;
        frmPagIncReceber.cdsDocumentosPARCELA.AsString :=
          fdsCntReceberItensFormPARCELA.AsString;
        frmPagIncReceber.cdsDocumentosIDRECEBER.AsInteger :=
          fdsCntReceberItensFormIDRECEBER.AsInteger;
        frmPagIncReceber.cdsDocumentosDT_VENCIMENTO.AsDateTime :=
                fdsCntReceberItensDT_VENC.AsDateTime;
        frmPagIncReceber.cdsDocumentos.Post;
      end;
       fdsCntReceberItens.Next;
//      frmPagIncReceber.valorDoc := fdsCntReceberItensFormVALOR.AsFloat -
//        fdsCntReceberItensFormDESCONTO.AsFloat -
//        fdsCntReceberItensVALOR_PAGO.AsFloat;
       frmPagIncReceber.valorDoc := vlrSelecionado;
      frmPagIncReceber.creditoTotal := fdsCntReceberItensFormCREDITO.AsFloat;
    end;

    frmPagIncReceber.valorJuros := vlrTotalJuros;
    frmPagIncReceber.usarJuros:='S';
    frmPagIncReceber.idCliente := fdsCntReceberIDCLIENTE.AsInteger;
    frmPagIncReceber.modo := 'Pagamento';
    frmPagIncReceber.edtNota.Enabled := False;
    frmPagIncReceber.edtParcelasNT.Enabled := False;

    frmPagIncReceber.edtCliente.Text := fdsCntReceberCLIENTE.AsString;

    frmPagIncReceber.ShowModal;
  Finally
    if frmPagIncReceber.ModalResult = mrOk then
    begin
      // idReceberTemp := fdsCntReceberID.AsString;
      // RetornaCntReceberItemIDReceber(fdsCntReceberID.AsString);
      //
      // if rgbModoVisualizacao.ItemIndex = 1 then
      // begin
      // fdsCntReceber.Close;
      // fdsCntReceberItensForm.Close;
      // fdsCntReceberItens.Locate('ID',idReceberItemTemp, []);
      // end
      // else
      // begin
      // fdsCntReceber.Close;
      // fdsCntReceber.Open;
      // fdsCntReceber.Locate('ID',idReceberTemp, []);
      // end;
      historico:='RECEBIMENTO VENDA(S):' + ' \';
      frmPagIncReceber.cdsDocumentos.First;
      while not(frmPagIncReceber.cdsDocumentos.Eof) do
      begin
        if not(frmPagIncReceber.cdsDocumentosIdVenda.AsString =
          idVendaTemp) then
        begin
          idVendaTemp :=
            frmPagIncReceber.cdsDocumentosIdVenda.AsString;
          historico :=historico + ' ' +idVendaTemp + ' \ ';
        end;
        frmPagIncReceber.cdsDocumentos.Next;
      end;
      DM.cliente:= fdsCntReceberCLIENTE.AsString;
      historico := historico + ' CLIENTE: ' +fdsCntReceberItensCLIENTE.AsString;
      DM.valor :=FloatToStr((frmPagIncReceber.valorDinheiro +frmPagIncReceber.valorCheque
        + frmPagIncReceber.valorCartao) - (frmPagIncReceber.troco)); //Retirei o cr�dito pq eraldo reclamou
      frmPagIncReceber.cdsDocumentos.First;
      with fdsMovCntReceber do
       begin
         open ;
         Append;
          fdsMovCntReceberIDFILIAL.AsInteger:= DM.fdsConfigIDFILIAL.AsInteger;
          fdsMovCntReceberIDCAIXA.AsInteger:= 0;
          fdsMovCntReceberDT_MOVIMENTO.AsDateTime:=now;
          fdsMovCntReceberHR_MOVIMENTO.AsDateTime:=time;
          fdsMovCntReceberIDCLIENTE.AsInteger:= frmPagIncReceber.idCliente;
          fdsMovCntReceberIDCAIXA_MOV.AsInteger:= 0;
          fdsMovCntReceberVLR_TOTAL_PG.AsFloat:= StrToFloat(DM.valor);
          fdsMovCntReceberVLR_TOT_RECEBIDO.AsFloat :=(frmPagIncReceber.valorDinheiro +frmPagIncReceber.valorCartao + frmPagIncReceber.valorCheque+ frmPagIncReceber.valorParcelar); //Retirei o cr�dito pq eraldo reclamou
          fdsMovCntReceberVLR_DINHEIRO.AsFloat:=frmPagIncReceber.valorDinheiro;
          fdsMovCntReceberVLR_CARTAO_DT.AsFloat:= frmPagIncReceber.valorCartao;
          fdsMovCntReceberVLR_CHEQUE.AsFloat:= frmPagIncReceber.valorCheque;
          fdsMovCntReceberVLR_NOTA.AsFloat:= frmPagIncReceber.valorParcelar;
          fdsMovCntReceberVLR_CREDITO.AsFloat:= frmPagIncReceber.valorCredito;
          fdsMovCntReceberVLR_DESCONTO.AsFloat:= frmPagIncReceber.valorDesconto;
          fdsMovCntReceberVLR_ACRESCIMO.AsFloat:= frmPagIncReceber.valorAcrescimo;
          fdsMovCntReceberVLR_JUROS.AsFloat:= frmPagIncReceber.valorJuros;
          fdsMovCntReceberVLR_JUROS_PAGO.AsFloat:=frmPagIncReceber.ValorJurosPago;
          fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat:= frmPagIncReceber.valorJurosRestante;
          fdsMovCntReceberUSAR_JUROS.AsString:= frmPagIncReceber.usarJuros;
          fdsMovCntReceberVLR_TROCO.AsFloat:=frmPagIncReceber.troco;
          fdsMovCntReceberHISTORICO.AsString:= historico;
         post;
         DM.transPricipal.CommitRetaining;
       end;
      i:=0;
      while not(frmPagIncReceber.cdsDocumentos.Eof) do
      begin
       inc(i);
       with fdsMovCntReceberItem do
       begin
         open;
         Append;
          fdsMovCntReceberItemIDFILIAL.AsInteger:= DM.fdsConfigIDFILIAL.AsInteger;
          fdsMovCntReceberItemITEM.AsInteger:= i;
          fdsMovCntReceberItemIDMOVIMENTO.AsInteger:= fdsMovCntReceberID.AsInteger;
          fdsMovCntReceberItemDT_MOVIMENTO.AsDateTime:=now;
          fdsMovCntReceberItemIDDOC.AsInteger:= frmPagIncReceber.cdsDocumentosIdDoc.AsInteger;
          fdsMovCntReceberItemIDVENDA.AsInteger:= frmPagIncReceber.cdsDocumentosIdVenda.AsInteger;
          fdsMovCntReceberItemVLR_DOC.AsFloat :=frmPagIncReceber.cdsDocumentosVALOR_DOC.AsFloat;
          fdsMovCntReceberItemVLR_PAGO_ATUAL.AsFloat:= frmPagIncReceber.cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
          fdsMovCntReceberItemVLR_DESCONTO.AsFloat:= frmPagIncReceber.cdsDocumentosDESCONTO_PARCIAL.AsFloat;
          fdsMovCntReceberItemVLR_ACRESCIMO.AsFloat:= frmPagIncReceber.cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
          fdsMovCntReceberItemVLR_JUROS.AsFloat:= frmPagIncReceber.cdsDocumentosVALOR_JUROS.AsFloat;
          fdsMovCntReceberItemVLR_JUROS_PAGO.AsFloat:=frmPagIncReceber.cdsDocumentosVLR_JUROS_PAGO.AsFloat;
          fdsMovCntReceberItemVLR_JUROS_RESTANTE.AsFloat:=frmPagIncReceber.cdsDocumentosJUROS_RESTANTE.AsFloat;
          fdsMovCntReceberItemVLR_JUROS_PAGO.AsFloat:= frmPagIncReceber.cdsDocumentosVLR_JUROS_PAGO.AsFloat;
          fdsMovCntReceberItemVLR_RESTANTE.AsFloat:= frmPagIncReceber.cdsDocumentosVALOR_RESTANTE.AsFloat;
          fdsMovCntReceberItemREFERENCIA.AsString:= frmPagIncReceber.cdsDocumentosREFERENCIA.AsString;
         post;
       end;
       frmPagIncReceber.cdsDocumentos.Next;
       DM.transPricipal.CommitRetaining;
      end;
      case MessageBox(Application.Handle,pchar('Deseja imprimir o comprovante?'),'Aten��o',MB_YESNO+MB_ICONQUESTION) of
        IDYES:begin
                ImprimeComprovante(fdsMovCntReceberID.AsString);
              end;
      end;
    end;

    frmPagIncReceber.Free;
    vlrSelecionado := 0;
    vlrTotalJuros := 0;
    edtValorSelect.Text := 'R$ 0,00';
    btnPesquisar.Click;
  End;
end;

procedure TfrmCntReceber.btnRenegociarClick(Sender: TObject);
var
  TempUsarJuros:String[1];
  historico:String;
  i:SmallInt;
  idRenegociar:Integer;
begin
  if not(chkCliente.Checked) or
    ((chkCliente.Checked) and (Trim(edtPesqCliente.Text) = 'TODOS')) then
  begin
    Application.MessageBox
    ('Por favor, informe um cliente para a realiza��o da renegocia��a.',
    'Aten��o',MB_OK+MB_ICONASTERISK);
    abort;
  end;
  if vlrSelecionado <= 0 then
  begin
    Application.MessageBox('Por favor, selecione as notas para a realiza��o da renegocia��o.',
      'Aten��o', MB_OK+MB_ICONASTERISK);
    abort;
  end;
  Try
    fdsCntReceberItens.First;
    historico:='Renegocia��o referente as parcelas: ';
    frmPagIncReceber := TfrmPagIncReceber.Create(nil);
    frmPagIncReceber.lblTitulo.Caption := 'Renegocia��o de Notas de Cliente';
    while not(fdsCntReceberItens.Eof) do
    begin
      if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      begin
        frmPagIncReceber.cdsDocumentos.Append;
        frmPagIncReceber.cdsDocumentosIdDoc.AsInteger     := fdsCntReceberItensID.AsInteger;
        frmPagIncReceber.cdsDocumentosIdVenda.AsInteger   := fdsCntReceberItensIDVENDA.AsInteger;
        frmPagIncReceber.cdsDocumentosREFERENCIA.AsString := fdsCntReceberItensREFERENCIA.AsString;
        frmPagIncReceber.cdsDocumentosIdFilial.AsInteger  := fdsCntReceberItensIDFILIAL.AsInteger;
        frmPagIncReceber.cdsDocumentosVALOR_PAGO.AsFloat  := fdsCntReceberItensVALOR_PAGO.AsFloat;
        frmPagIncReceber.cdsDocumentosVALOR_DOC.AsFloat   := fdsCntReceberItensVALOR.AsFloat - fdsCntReceberItensDESCONTO.AsFloat;
        frmPagIncReceber.cdsDocumentosVALOR_JUROS.AsFloat := fdsCntReceberItensVALOR_JUROS.AsFloat + fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;

        frmPagIncReceber.cdsDocumentosJUROS_RESTANTE.AsFloat := fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
        frmPagIncReceber.cdsDocumentosVLR_JUROS_PAGO.AsFloat := 0;
        frmPagIncReceber.cdsDocumentosTEMP_JUROS_RESTANTE.AsString :='S';
        frmPagIncReceber.cdsDocumentosVALOR_PAGO_ATUAL.AsFloat     := 0;

        frmPagIncReceber.cdsDocumentosVALOR_RESTANTE.AsFloat  := fdsCntReceberItensTOT_RESTANTE.AsFloat;
        frmPagIncReceber.cdsDocumentosVLR_RENEGOCIADO.AsFloat :=0;
        frmPagIncReceber.cdsDocumentosREC_DINHEIRO.AsFloat    := 0;
        frmPagIncReceber.cdsDocumentosPAGAMENTO_MOEDA.AsString := fdsCntReceberItensPAGAMENTO_MOEDA.AsString;
        frmPagIncReceber.cdsDocumentosPARCELA.AsString         := fdsCntReceberItensPARCELA.AsString;
        frmPagIncReceber.cdsDocumentosIDRECEBER.AsInteger      := fdsCntReceberItensIDRECEBER.AsInteger;
        frmPagIncReceber.cdsDocumentosDT_VENCIMENTO.AsDateTime := fdsCntReceberItensDT_VENC.AsDateTime;
        frmPagIncReceber.cdsDocumentos.Post;
        historico := historico + fdsCntReceberItensREFERENCIA.AsString+' \\';
        fdsCntReceberItens.Edit;
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := EmptyStr;
        fdsCntReceberItens.Post;
      end;
      fdsCntReceberItens.next;
    end;
      historico := historico + ' CLIENTE: ' +edtPesqCliente.Text;

    frmPagIncReceber.valorJuros := vlrTotalJuros;
    frmPagIncReceber.usarJuros :='S';
    frmPagIncReceber.valorDoc  := vlrSelecionado;
    frmPagIncReceber.idCliente := StrToInt(edtClienteCodigo.Text);
    frmPagIncReceber.edtCliente.Text := edtPesqCliente.Text;
    frmPagIncReceber.edtDescricao.Text := historico;
    frmPagIncReceber.modo := 'Renegociar';

    frmPagIncReceber.ShowModal;
  Finally
    if frmPagIncReceber.ModalResult = mrOk then
    begin
      cdsRenegociarItem.Close;
      cdsRenegociarItem.Open;
      cdsRenegociarItem.EmptyDataSet;
      frmPagIncReceber.cdsDocumentos.First;
     try
       with fdsMov_Renegociar do
       begin
         open ;
         Append;
         idRenegociar:= fdsMov_RenegociarID.AsInteger;
         fdsMov_RenegociarIDCLIENTE.AsInteger := frmPagIncReceber.idCliente;
         fdsMov_RenegociarIDFILIAL.AsInteger  := Dm.fdsConfigIDFILIAL.AsInteger;
         fdsMov_RenegociarIDUSUARIO.AsInteger := Dm.fdsUsuarioPermicIDUSUARIO.AsInteger;
         fdsMov_RenegociarID_REC_NT.AsInteger := frmPagIncReceber.idRecNT;
         fdsMov_RenegociarID_REC_CT.AsInteger := frmPagIncReceber.idRecCT;
         fdsMov_RenegociarID_REC_CH.AsInteger := frmPagIncReceber.idRecCH;
         fdsMov_RenegociarDT_MOVIMENTO.AsDateTime := date;
         fdsMov_RenegociarHR_MOVIMENTO.AsDateTime := time;
         fdsMov_RenegociarVLR_TOTAL.AsFloat     :=RoundTo(frmPagIncReceber.valorDoc,-2);
         fdsMov_RenegociarVLR_ENTRADA.AsFloat   := RoundTo(frmPagIncReceber.valorDinheiro + frmPagIncReceber.valorCheque+ frmPagIncReceber.valorCartao,-2);
         fdsMov_RenegociarVLR_DINHEIRO.AsFloat  := frmPagIncReceber.valorDinheiro;
         fdsMov_RenegociarVLR_CHEQUE.AsFloat    := frmPagIncReceber.valorCheque;
         fdsMov_RenegociarVLR_NOTA.AsFloat      := frmPagIncReceber.valorNota;

         if frmPagIncReceber.tipoCartao = 'CD' then
         fdsMov_RenegociarVLR_CARTAO_CD.AsFloat := frmPagIncReceber.valorCartao;

         if frmPagIncReceber.tipoCartao = 'CT' then
         fdsMov_RenegociarVLR_CARTAO_CT.AsFloat := frmPagIncReceber.valorCartao;

         fdsMov_RenegociarVLR_TROCO.AsFloat     := frmPagIncReceber.troco;
         fdsMov_RenegociarVLR_RENEGOCIADO.AsFloat := frmPagIncReceber.valorNota;
         fdsMov_RenegociarUSA_JUROS.AsString      := frmPagIncReceber.usarJuros;
         fdsMov_RenegociarVLR_TOT_JUROS.AsFloat   :=frmPagIncReceber.valorJuros;
         fdsMov_RenegociarDESCONTO.AsFloat := frmPagIncReceber.valorDesconto;
         fdsMov_RenegociarACRESCIMO.AsFloat := frmPagIncReceber.valorAcrescimo;
         fdsMov_RenegociarHISTORICO.AsString      := frmPagIncReceber.edtDescricao.Text;
         post;
         DM.transPricipal.CommitRetaining;
       end;
       i:=0;

       while not(frmPagIncReceber.cdsDocumentos.Eof) do
       begin
         inc(i);
         with cdsRenegociarItem do
         begin
           Append;
           cdsRenegociarItemIDFILIAL.AsInteger := Dm.fdsConfigIDFILIAL.AsInteger;
           cdsRenegociarItemITEM.AsInteger     := i;
           cdsRenegociarItemIDRENEGOCIAR.AsInteger := idRenegociar;
           cdsRenegociarItemIDDOC.AsInteger        := frmPagIncReceber.cdsDocumentosIdDoc.AsInteger;
           cdsRenegociarItemIDVENDA.AsInteger      := frmPagIncReceber.cdsDocumentosIdVenda.AsInteger;
           cdsRenegociarItemDT_MOVIENTO.AsDateTime := date;
           cdsRenegociarItemVLR_DOC.AsFloat        := frmPagIncReceber.cdsDocumentosVALOR_DOC.AsFloat;
           cdsRenegociarItemVLR_PAGO.AsFloat       := frmPagIncReceber.cdsDocumentosVLR_ENTRADA.AsFloat;
           cdsRenegociarItemVLR_RENEGOCIADO.AsFloat := frmPagIncReceber.cdsDocumentosVLR_RENEGOCIADO.AsFloat;
           cdsRenegociarItemVLR_JUROS.AsFloat       := frmPagIncReceber.cdsDocumentosVALOR_JUROS.AsFloat;
           cdsRenegociarItemREFERENCIA.AsString     := frmPagIncReceber.cdsDocumentosREFERENCIA.AsString;
           cdsRenegociarItemVLR_JUROS_PAG.AsFloat   := frmPagIncReceber.cdsDocumentosVLR_JUROS_PAGO.AsFloat;
           cdsRenegociarItemVLR_DESCONTO.AsFloat    := frmPagIncReceber.cdsDocumentosDESCONTO_PARCIAL.AsFloat;
           cdsRenegociarItemVLR_ACRESCIMO.AsFloat   := frmPagIncReceber.cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
           post;
         end;
         frmPagIncReceber.cdsDocumentos.Next;
       end;
       cdsRenegociarItem.ApplyUpdates(0);
       DM.transPricipal.CommitRetaining;
     finally
        Application.MessageBox('Renegocia��o Realizada com Sucesso!', 'Conta Renegociada.',
        MB_OK + MB_ICONEXCLAMATION);
        case MessageBox(Application.Handle,pchar('Deseja imprimir o comprovante de Renegocia��o?'),'Aten��o',MB_YESNO+MB_ICONQUESTION) of
        IDYES:begin
                DM.cliente:= edtPesqCliente.Text;
                ImprimeComprovanteRene(IntToStr(idRenegociar));
              end;
        end;
     end;
    end;
    frmPagIncReceber.Free;
    vlrSelecionado := 0;
    vlrTotalJuros := 0;
    edtValorSelect.Text := 'R$ 0,00';
    btnPesquisar.Click;
  End;
end;

procedure TfrmCntReceber.CalculaJuros;
var
  diasAtraso, vlrJuros: Double;
begin
  diasAtraso := 0;
  vlrJuros := 0;
  if fdsCntReceberItensDT_PAG.IsNull then
  begin
    diasAtraso := (fdsCntReceberItensDT_VENC.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  end
  else
    diasAtraso := (fdsCntReceberItensDT_PAG.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  //

  if (diasAtraso <0) and (fdsCntReceberItensPOSICAO.AsString = 'AB') then
  begin
    diasAtraso := Abs(Round(diasAtraso)); // fun��o ABS retorna valor absoluto
    vlrJuros := diasAtraso * (fdsCntReceberItensVALOR.AsFloat *
      (DM.fdsConfigJUROS_DIA_PORCENTAGEM.AsFloat / 100)) * (DM.fdsConfigVALOR_MULTA_ATRASO.AsFloat/100);
  end
  else
    diasAtraso := 0;

  fdsCntReceberItensDIAS_ATRASO.AsInteger := Round(diasAtraso);
  fdsCntReceberItensVALOR_JUROS.AsFloat := vlrJuros;

  fdsCntReceberItensVALOR_RESTANTE.AsFloat :=RoundTo(fdsCntReceberItensVALOR.AsFloat -
    fdsCntReceberItensVALOR_PAGO.AsFloat, -2);
  fdsCntReceberItensTOT_RESTANTE.AsFloat:= RoundTo((fdsCntReceberItensVALOR.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+vlrJuros+fdsCntReceberItensACRESCIMO.AsFloat-fdsCntReceberItensDESCONTO.AsFloat) -
    fdsCntReceberItensVALOR_PAGO.AsFloat, -2);
end;

procedure TfrmCntReceber.CalculaTotais(index: Integer);
var
  utils: TUtils;
begin

  vlr_TotRecebido := 0;
  vlr_TotReceber := 0;

  if Index = 0 then
  begin
    fdsCntReceber.First;

    while not(fdsCntReceber.Eof) do
    begin
      vlr_TotRecebido := vlr_TotRecebido + fdsCntReceberVALOR_PAGO.AsFloat;

      if fdsCntReceberPOSICAO.AsString = 'AB' then
      begin
        vlr_TotReceber := vlr_TotReceber + fdsCntReceberVALOR.AsFloat -
          fdsCntReceberVALOR_PAGO.AsFloat;
      end;

      fdsCntReceber.Next;
    end;
  end
  else
  begin
    fdsCntReceberItens.First;

    while not(fdsCntReceberItens.Eof) do
    begin
      vlr_TotRecebido := vlr_TotRecebido + fdsCntReceberItensVALOR_PAGO.AsFloat;

      if fdsCntReceberItensPOSICAO.AsString = 'AB' then
      begin
       { vlr_TotReceber := vlr_TotReceber + fdsCntReceberItensVALOR.AsFloat -
          fdsCntReceberItensVALOR_PAGO.AsFloat;}
        vlr_TotReceber := vlr_TotReceber + fdsCntReceberItensTOT_RESTANTE.AsFloat
      end;

      fdsCntReceberItens.Next;
    end;
  end;

  lblTotRecebido.Caption := utils.AdicionaMascaraDinheiro
    (FloatToStr(vlr_TotRecebido));
  lblTotReceber.Caption := utils.AdicionaMascaraDinheiro
    (FloatToStr(vlr_TotReceber)) ;

  edtTotRecebido.Text := utils.AdicionaMascaraDinheiro
    (FloatToStr(vlr_TotRecebido));
  edtTotReceber.Text := utils.AdicionaMascaraDinheiro
    (FloatToStr(vlr_TotReceber)) ;
end;

procedure TfrmCntReceber.calculaTotalMov(origem:Integer);
 var
  utils: TUtils;
  posicao, tempTotal: string;
begin
  tempTotal := '';
  with qrySomaMov do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_TOTAL_PG) AS TOTAL FROM MOVIMENTO_CNT_RECEBER WHERE ');
    SQL.Add('DT_MOVIMENTO <= ' +QuotedStr(FormatDateTime('MM/DD/YYYY', Now)));

    if (rgbClienteMov.Checked) and not(Trim(edtPesqClienteMov.Text) = 'TODOS') and not(Trim(edtCodigoClienteMov.Text) = 'C�DIGO') then
    begin
      SQL.Add(' AND IDCLIENTE = :IDCLIENTE');
      ParamByName('IDCLIENTE').AsInteger := StrToInt(Trim(edtCodigoClienteMov.Text));
    end;

    if (rgbPeriodoMov.Checked) then
    begin
      SQL.Add('AND DT_MOVIMENTO BETWEEN :DT_INICIO AND :DT_FIM ');
      ParamByName('DT_INICIO').AsDateTime := dtpInicioMov.Date;
      ParamByName('DT_FIM').AsDateTime := dtpFimMov.Date;
    end;

    if (origem = 0)then
    begin
      SQL.Add('AND IDCAIXA = 0 ');
    end;
    if (origem=1)then
    begin
      SQL.Add('AND IDCAIXA <> 0 ');
    end;

    if (rgbCaixa.Checked) and not(Trim(edtCaixa.Text) = 'TODOS') then
    SQL.Add('AND MR.IDCAIXA ='+QuotedStr(edtCaixa.Text));

    if (rgbVendaMov.Checked) and not(Trim(edtVendaMov.Text) = 'TODOS') then
    Begin
      SQL.Add('AND MOVIMENTO_CNT_RECEBER.ID = (select MAX(M.IDMOVIMENTO) from MOVIMENTO_CNT_RECEBER_ITEM AS M WHERE M.IDMOVIMENTO = MOVIMENTO_CNT_RECEBER.ID AND M.IDVENDA = '+ edtVendaMov.Text+' GROUP BY M.IDMOVIMENTO)');
    End;

     if (rgbVendaMov.Checked) and not(Trim(edtVendaMov.Text) = 'TODOS') then
    begin
       SQL.Add(
        'AND MR.ID = (select MAX(IDMOVIMENTO) from MOVIMENTO_CNT_RECEBER_ITEM WHERE IDMOVIMENTO = MR.ID AND REFERENCIA = '
          + edtReferencia.Text+' GROUP BY IDMOVIMENTO)');
    end;

    Prepare;
    ExecQuery;
  end;
  tempTotal := qrySomaMov.FieldByName('TOTAL').AsString;

  if tempTotal = '' then
      tempTotal := '0';

  edtTotRecebidoMov.Text := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmCntReceber.chkClienteClick(Sender: TObject);
begin
  pnlCliente.Enabled := chkCliente.Checked;

  if not(chkCliente.Checked) then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtClienteCodigo.Text := 'C�DIGO';
    edtPesqCliente.Font.Color := clGray;
  end
  else
  begin
    edtPesqCliente.Font.Color := clBtnText;
    edtClienteCodigo.SetFocus;
  end;
end;

procedure TfrmCntReceber.chkNumVendaClick(Sender: TObject);
begin
  pnlNumVenda.Enabled := chkNumVenda.Checked;

  if not(chkNumVenda.Checked) then
  begin
    edtPesqNVenda.Text := 'TODOS';
    edtPesqNVenda.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.chkReferenciaClick(Sender: TObject);
begin
  pnlReferencia.Enabled := chkReferencia.Checked;

  if not(chkReferencia.Checked) then
  begin
    edtPesqRef.Text := 'TODOS';
    edtPesqRef.Font.Color := clGray;
  end;

  rgbModoVisualizacao.ItemIndex := 1;
  VerificaModoVisualizacao;
end;

procedure TfrmCntReceber.chkPeriodoClick(Sender: TObject);
begin
  pnlPeriodo.Enabled := chkPeriodo.Checked;

end;

procedure TfrmCntReceber.chkTipoDocClick(Sender: TObject);
begin
  pnlTipoDoc.Enabled := chkTipoDoc.Checked;
  // rgbModoVisualizacao.ItemIndex := 1;
  // VerificaModoVisualizacao;
end;

procedure TfrmCntReceber.ClientesDevedores1Click(Sender: TObject);
begin
//
end;

procedure TfrmCntReceber.edtCaixaEnter(Sender: TObject);
begin
  if Trim(edtCaixa.Text) = 'TODOS' then
  begin
    edtCaixa.Text := EmptyStr;
    edtCaixa.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtCaixaExit(Sender: TObject);
begin
  if Trim(edtCaixa.Text) = EmptyStr then
  begin
    edtCaixa.Text := 'TODOS';
    edtCaixa.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtClienteCodigoEnter(Sender: TObject);
begin
  if Trim(edtClienteCodigo.Text) = 'C�DIGO' then
  begin
    edtClienteCodigo.Text := EmptyStr;
    edtClienteCodigo.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtClienteCodigoExit(Sender: TObject);
begin
  if Trim(edtClienteCodigo.Text) = EmptyStr then
  begin
    edtClienteCodigo.Text := 'C�DIGO';
    edtClienteCodigo.Font.Color := clGray;
  end
  else
  begin
    RetornaClienteId(edtClienteCodigo.Text);
    if fdsCliente.RecordCount = 0 then
      btnPesqCliente.Click
    else
    begin
      edtPesqCliente.Text := fdsClienteNOME.AsString;
      btnPesquisar.Click;
    end;
  end;
end;

procedure TfrmCntReceber.edtCodigoClienteMovEnter(Sender: TObject);
begin
  if Trim(edtCodigoClienteMov.Text) = 'C�DIGO' then
  begin
    edtCodigoClienteMov.Text := EmptyStr;
    edtCodigoClienteMov.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtCodigoClienteMovExit(Sender: TObject);
begin
  if Trim(edtCodigoClienteMov.Text) = EmptyStr then
  begin
    edtCodigoClienteMov.Text := 'C�DIGO';
    edtCodigoClienteMov.Font.Color := clGray;
  end
  else
  begin
    RetornaClienteId(edtCodigoClienteMov.Text);
    if fdsCliente.RecordCount = 0 then
      btnPesqClienteMov.Click
    else
    begin
      edtPesqClienteMov.Text := fdsClienteNOME.AsString;
      btnPesqMov.Click;
    end;
  end;
end;

procedure TfrmCntReceber.edtCodigoClienteReneEnter(Sender: TObject);
begin
  if Trim(edtCodigoClienteRene.Text) = 'C�DIGO' then
  begin
    edtCodigoClienteRene.Text := EmptyStr;
    edtCodigoClienteRene.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtCodigoClienteReneExit(Sender: TObject);
begin
  if Trim(edtCodigoClienteRene.Text) = EmptyStr then
  begin
    edtCodigoClienteRene.Text := 'C�DIGO';
    edtCodigoClienteRene.Font.Color := clGray;
  end
  else
  begin
    RetornaClienteId(edtCodigoClienteRene.Text);
    if fdsCliente.RecordCount = 0 then
      btnPesqClienteRene.Click
    else
    begin
      edtPesqClienteRene.Text := fdsClienteNOME.AsString;
      btnPesqRene.Click;
    end;
  end;
end;

procedure TfrmCntReceber.edtPesqClienteEnter(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = 'TODOS' then
  begin
    edtPesqCliente.Text := EmptyStr;
    edtPesqCliente.Font.Color := clBlack;
  end;

end;

procedure TfrmCntReceber.edtPesqClienteExit(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = EmptyStr then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtPesqClienteMovEnter(Sender: TObject);
begin
  if Trim(edtPesqClienteMov.Text) = 'TODOS' then
  begin
    edtPesqClienteMov.Text := EmptyStr;
    edtPesqClienteMov.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtPesqClienteMovExit(Sender: TObject);
begin
  if Trim(edtPesqClienteMov.Text) = EmptyStr then
  begin
    edtPesqClienteMov.Text := 'TODOS';
    edtPesqClienteMov.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtPesqClienteReneEnter(Sender: TObject);
begin
  if Trim(edtPesqClienteRene.Text) = 'TODOS' then
  begin
    edtPesqClienteRene.Text := EmptyStr;
    edtPesqClienteRene.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtPesqClienteReneExit(Sender: TObject);
begin
  if Trim(edtPesqClienteRene.Text) = EmptyStr then
  begin
    edtPesqClienteRene.Text := 'TODOS';
    edtPesqClienteRene.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtPesqRefEnter(Sender: TObject);
begin
  if Trim(edtPesqRef.Text) = 'TODOS' then
  begin
    edtPesqRef.Text := EmptyStr;
    edtPesqRef.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtPesqRefExit(Sender: TObject);
begin
  if Trim(edtPesqRef.Text) = EmptyStr then
  begin
    edtPesqRef.Text := 'TODOS';
    edtPesqRef.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtReferenciaEnter(Sender: TObject);
begin
  if Trim(edtReferencia.Text) = 'TODOS' then
  begin
    edtReferencia.Text := EmptyStr;
    edtReferencia.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtReferenciaExit(Sender: TObject);
begin
  if Trim(edtReferencia.Text) = EmptyStr then
  begin
    edtReferencia.Text := 'TODOS';
    edtReferencia.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtPesqNVendaEnter(Sender: TObject);
begin
  if Trim(edtPesqNVenda.Text) = 'TODOS' then
  begin
    edtPesqNVenda.Text := EmptyStr;
    edtPesqNVenda.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtPesqNVendaExit(Sender: TObject);
begin
  if Trim(edtPesqNVenda.Text) = EmptyStr then
  begin
    edtPesqNVenda.Text := 'TODOS';
    edtPesqNVenda.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtVendaMovEnter(Sender: TObject);
begin
  if Trim(edtVendaMov.Text) = 'TODOS' then
  begin
    edtVendaMov.Text := EmptyStr;
    edtVendaMov.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.edtVendaMovExit(Sender: TObject);
begin
  if Trim(edtVendaMov.Text) = EmptyStr then
  begin
    edtVendaMov.Text := 'TODOS';
    edtVendaMov.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.edtVendaReneEnter(Sender: TObject);
begin
  if Trim(edtVendaRene.Text) = 'TODOS' then
  begin
    edtVendaRene.Text := EmptyStr;
    edtVendaRene.Font.Color := clBlack;
  end;
end;

procedure TfrmCntReceber.fdsCntReceberAfterClose(DataSet: TDataSet);
begin
  vlr_TotReceber := 0;
  vlr_TotRecebido := 0;
end;

procedure TfrmCntReceber.fdsCntReceberBeforeOpen(DataSet: TDataSet);
begin
  fdsCntReceber.OrderClause := 'ID';
end;

procedure TfrmCntReceber.fdsCntReceberItensAfterScroll(DataSet: TDataSet);
begin
  if fdsCntReceberItensPOSICAO.AsString = 'AB' then
  begin
    btnReceber.Enabled := True ;
    btnRenegociar.Enabled := True;
  end
  else
  begin
    btnReceber.Enabled := False;
    btnRenegociar.Enabled := False;
  end;
end;

procedure TfrmCntReceber.fdsCntReceberItensCalcFields(DataSet: TDataSet);
begin
  if (fdsCntReceberItensPOSICAO.AsString = 'AB') and
    (fdsCntReceberItensDT_VENC.AsDateTime <= Now) then
    fdsCntReceberItensSTATUS.AsString := 'Vencido'
  else
    fdsCntReceberItensSTATUS.AsString := 'A vencer';

  if (fdsCntReceberItensPOSICAO.AsString = 'PG') then
    fdsCntReceberItensSTATUS.AsString := 'Pago';

  if (fdsCntReceberItensPOSICAO.AsString = 'AB') then
  CalculaJuros;

  WITH qryComando do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT MAX(RI.DT_PAG)AS ULTIMO_PAG FROM CNT_RECEBER_ITEM RI,CNT_RECEBER R WHERE RI.IDRECEBER=R.ID  AND R.idcliente='+
      quotedStr(fdsCntReceberItensIDCLIENTE.AsString));
    prepare;
    ExecQuery;
    fdsCntReceberItensDT_ULTIMO_PAG.AsDateTime:= FieldByName('ULTIMO_PAG').AsDateTime;
  end;
  //fdsCntReceberItensDT_ULTIMO_PAG.AsDateTime:=fdsCntReceberItensDT_PAG.
end;

procedure TfrmCntReceber.fdsCntReceberItensFormAfterScroll(DataSet: TDataSet);
begin
  if fdsCntReceberItensFormPOSICAO.AsString = 'AB' then
    btnReceber.Enabled := True
  else
    btnReceber.Enabled := False;
end;

procedure TfrmCntReceber.fdsMovCntReceberAfterScroll(DataSet: TDataSet);
begin
 with fdsMovCntReceberItem do
 begin
   close;
   Conditions.Clear;
   Conditions.AddCondition('IDMOVIMENTO','IDMOVIMENTO='+QuotedStr(fdsMovCntReceberID.AsString),true);
   Conditions.Apply;
   prepare;
   open;
 end;
end;

procedure TfrmCntReceber.fdsMov_RenegociarAfterScroll(DataSet: TDataSet);
begin
  if not(fdsMov_Renegociar.State in [dsInsert]) and (fdsMov_Renegociar.RecordCount > 0) then
  begin
    with fdsMov_RegociarItem do
    begin
      cdsRenegociarItem.Close;
      close;
      Conditions.Clear;
      Conditions.AddCondition('IDRENEGOCIAR','IDRENEGOCIAR='+QuotedStr(fdsMov_RenegociarID.AsString),true);
      Conditions.AddCondition('FILIAL','IDFILIAL ='+QuotedStr(fdsMov_RenegociarIDFILIAL.AsString),True);
      Conditions.Apply;
      prepare;
      open;
      cdsRenegociarItem.Open;
    end;
  end;
end;

procedure TfrmCntReceber.fdsNotasClientesEmAtrasoCalcFields(DataSet: TDataSet);
var
  diasAtraso, vlrJuros: Double;
begin
  diasAtraso := 0;
  vlrJuros := 0;
  if fdsNotasClientesEmAtrasoDT_PAG.IsNull then
  begin
    diasAtraso := (fdsNotasClientesEmAtrasoDT_VENC.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  end
  else
    diasAtraso := (fdsNotasClientesEmAtrasoDT_PAG.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  //

  if (diasAtraso <0)then
  begin
    diasAtraso := Abs(Round(diasAtraso)); // fun��o ABS retorna valor absoluto
    vlrJuros := diasAtraso * (fdsNotasClientesEmAtrasoVALOR_RECEBER.AsFloat *
      (DM.fdsConfigJUROS_DIA_PORCENTAGEM.AsFloat / 100)) * (DM.fdsConfigVALOR_MULTA_ATRASO.AsFloat/100);
  end
  else
    diasAtraso := 0;

  fdsNotasClientesEmAtrasoVLR_RESTANTE.AsFloat:=RoundTo(fdsNotasClientesEmAtrasoVALOR_DEVEDOR.AsFloat+fdsNotasClientesEmAtrasoVALOR_JUROS_PAGO.AsFloat+fdsNotasClientesEmAtrasoVLR_JUROS_RESTANTE.AsFloat+vlrJuros+fdsNotasClientesEmAtrasoACRESCIMO.AsFloat-fdsNotasClientesEmAtrasoDESCONTO.AsFloat, -2);
end;

procedure TfrmCntReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmCntReceber := nil;
end;

procedure TfrmCntReceber.FormCreate(Sender: TObject);
begin
  pgcControl.Pages[0].TabVisible := False;
  // fdsCntReceber.Open;
  checkTodos:='N';
  fdsCntReceberItens.Conditions.AddCondition('POSICAO',
    'RI.POSICAO = ' + QuotedStr('AB'), True);
  fdsCntReceberItens.Conditions.AddCondition('PREFIXO','RI.PREFIXO = '+ QuotedStr('NT'), True);
  fdsCntReceberItens.Conditions.Apply;
  fdsCntReceberItens.Prepare;
  fdsCntReceberItens.Open;
  tbsAnalitico.Show;
  chkTipoDoc.Enabled := True;
  cdsFormaPagamento.CreateDataSet;
  cdsParcelas.CreateDataSet;
  cdsDescAcre.CreateDataSet;
  RetornaTotalReceber(0);
  RetornaTotalRecebido(0);
end;

procedure TfrmCntReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 i:integer;
begin

end;

procedure TfrmCntReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmCntReceber.FormShow(Sender: TObject);
begin
  vlrSelecionado := 0;
  vlrTotalJuros := 0;
  Case MessageBox(Application.Handle,
      Pchar('Deseja selecionar um cliente neste momento?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          Try
            frmPesqCliente := TfrmPesqCliente.Create(nil);
            frmPesqCliente.ShowModal;
          Finally
            if frmPesqCliente.ModalResult = mrOk then
            begin
              edtClienteCodigo.Text := frmPesqCliente.fdsClientesID.AsString;
              edtPesqCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
              RetornaClienteId(edtClienteCodigo.Text);
              chkCliente.Checked:=true;
              btnPesquisar.Click;
            end;
            frmPesqCliente.Free;
          End;
        end;
  End;
end;

procedure TfrmCntReceber.gdrReceberAnaliticoCellClick(Column: TColumn);
var
  ColunaClicada, SomaXColunas: Integer;
  utils:Tutils;
begin
  //
  // ColunaClicada := -1;
  // SomaXColunas := 0;
  //
  // while LocalClicadoX > SomaXColunas do
  // begin
  // colunaClicada := ColunaClicada +1;
  //
  // if colunaClicada = 8 then
  // Break;
  //
  // SomaxColunas := SomaxColunas + gdrReceberAnalitico.Columns[ColunaClicada].Width;
  // end;
  // // showmessage('Coluna: ' + intToStr(ColunaClicada));
  // if ColunaClicada = 1 then
  // begin
  // if fdsCntReceberItensPREFIXO.AsString = 'CH' then
  // begin
  // Try
  // frmCheque := TfrmCheque.Create(nil);
  // frmCheque.idDoc := fdsCntReceberItensID.AsInteger;
  // frmCheque.posicao := fdsCntReceberItensPOSICAO.AsString;
  // frmCheque.ShowModal;
  // Finally
  // frmCheque.Free;
  // End;
  // end;
  // end
  // else if ColunaClicada = 8 then
  // begin
  // Try
  // frmRecebimentoDetalhe := TfrmRecebimentoDetalhe.Create(nil);
  // frmRecebimentoDetalhe.ShowModal;
  // Finally
  // frmCheque.Free;
  // End;
  // end;

  // showmessage('Coluna: ' + intToStr(ColunaClicada) + '   T�tulo: ' + gdrReceberAnalitico.Columns[ColunaClicada].Title.Caption + '    Field: ' + gdrReceberAnalitico.Columns[ColunaClicada].FieldName);

  if (gdrReceberAnalitico.SelectedIndex = 10)and ((rgbPosicao.ItemIndex<> 3) OR (rgbPosicao.ItemIndex<>4)) then
  begin
    if (chkCliente.Checked = false) or (edtClienteNome.Text=EmptyStr) then
   begin
     Application.MessageBox('� necess�rio informar um cliente para efetuar o recebimento.', 'Aten��o.',
      MB_OK + MB_ICONEXCLAMATION);
      abort;
   end;
    if fdsCntReceberItensPOSICAO.AsString = 'AB' then
    begin
      fdsCntReceberItens.Edit;
      if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      begin
         fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'N';
          vlrSelecionado := vlrSelecionado -(fdsCntReceberItensVALOR.AsFloat +
          fdsCntReceberItensVALOR_JUROS.AsFloat + fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat -
          fdsCntReceberItensVALOR_PAGO.AsFloat -
          fdsCntReceberItensDESCONTO.AsFloat);
        vlrTotalJuros := vlrTotalJuros - fdsCntReceberItensVALOR_JUROS.AsFloat-fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
      end
      else
      begin
         fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'S';
         vlrSelecionado := vlrSelecionado +
          (fdsCntReceberItensVALOR.AsFloat +
          fdsCntReceberItensVALOR_JUROS.AsFloat +fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat-
          fdsCntReceberItensVALOR_PAGO.AsFloat -
          fdsCntReceberItensDESCONTO.AsFloat);
        vlrTotalJuros := vlrTotalJuros + fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
      end;

      fdsCntReceberItens.Post;
      edtValorSelect.Text := FloatToStr(vlrSelecionado);
      edtValorSelect.Text := utils.AdicionaMascaraDinheiro(edtValorSelect.Text);
    end;
  end;

end;

procedure TfrmCntReceber.gdrReceberAnaliticoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
  Check: Integer;
  R: TRect;
begin
  if not odd(fdsCntReceberItens.RecNo) then
  begin
    gdrReceberAnalitico.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrReceberAnalitico.Brush.Color :=clHighlight;
    gdrReceberAnalitico.Canvas.FillRect(Rect);
    gdrReceberAnalitico.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.index = 1) and not(fdsCntReceberItens.IsEmpty) then
    begin
      posicao := fdsCntReceberItensPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        if fdsCntReceberItensDT_VENC.AsDateTime >= Now then
        begin
          Bitmap := imgFlagYellow2.Picture.Bitmap
        end
        else
          Bitmap := imgFlagRed2.Picture.Bitmap
      end
      else
      begin
        if (posicao = 'PG') or (posicao = 'RN') then
        begin
          Bitmap := imgFlagGreen2.Picture.Bitmap;
        end;
      end;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end
  else
  begin
    if Column.index = 1 then
    begin
      posicao := fdsCntReceberItensPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        if fdsCntReceberItensDT_VENC.AsDateTime >= Now then
        begin
          Bitmap := imgFlagYellow.Picture.Bitmap
        end
        else
          Bitmap := imgFlagRed.Picture.Bitmap
      end
      else
      begin
        if (posicao = 'PG') or (posicao = 'RN') then
        begin
          Bitmap := imgFlagGreen.Picture.Bitmap;
        end;

      end;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;

  end;

  if (Column.index = 10) and not(fdsCntReceberItens.IsEmpty)and ((rgbPosicao.ItemIndex = 3) OR (rgbPosicao.ItemIndex = 4) ) then
  begin
    if not(fdsCntReceberItensPAGAMENTO_MOEDA.AsString = '') then
    begin
      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'DN' then
      begin
        Bitmap := imgDN.Picture.Bitmap;
      end;

      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'CH' then
      begin
        Bitmap := imgCH.Picture.Bitmap;
      end;

      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'TR' then
      begin
        Bitmap := imgNT.Picture.Bitmap;
      end;

      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'RA' then
      begin
        Bitmap := imgNT.Picture.Bitmap;
      end;
      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'NT' then
      begin
        Bitmap := imgNT.Picture.Bitmap;
      end;
      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'CT' then
      begin
        Bitmap := imgCT.Picture.Bitmap;
      end;
      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'CR' then
      begin
        Bitmap := imgNT.Picture.Bitmap;
      end;
      if fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'CD' then
      begin
        Bitmap := imgCT.Picture.Bitmap;
      end;

      if not(fdsCntReceberItensPAGAMENTO_MOEDA.AsString = 'AB') then
      begin
        with TDBGrid(Sender) do
        begin
          Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 4 + Rect.Left,
            (Rect.Bottom - Rect.Top - Bitmap.Height) div 4 + Rect.Top, Bitmap);
          // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
        end;
      end;
    end;

  end;

  if (Column.Index = 10)and ((rgbPosicao.ItemIndex<>3) AND (rgbPosicao.ItemIndex<>4) ) then
  begin
    gdrReceberAnalitico.Canvas.FillRect(Rect);
    Check := 0;

    if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TfrmCntReceber.gdrReceberAnaliticoDrawColumnTitle(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; AColumn: TColumn;
  var ASortMarker: TJvDBGridBitmap; IsDown: Boolean; var Offset: Integer;
  var DefaultDrawText, DefaultDrawSortMarker: Boolean);
  var
  posicao: string[2];
  Bitmap: TBitmap;
  Check: Integer;
  R: TRect;
begin
 if (AColumn.Index = 10) and not((rgbPosicao.ItemIndex = 3) OR (rgbPosicao.ItemIndex = 4))then
  begin
    gdrReceberAnalitico.Canvas.FillRect(ARect);
    Check := 0;

    if checkTodos='S'then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R :=ARect;
    InflateRect(R, 0, 0);
    DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmCntReceber.gdrReceberAnaliticoKeyPress(Sender: TObject;
  var Key: Char);
var
  coluna: string;
  R:TRect;
begin
  if (Key = 'p') then
  begin
    coluna := gdrReceberSintetico.SelectedField.FieldName;
    if coluna = 'CLIENTE' then
    Begin
      PesquisaReceberCliente;
    end;
  end;

end;

procedure TfrmCntReceber.gdrReceberAnaliticoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LocalClicadoX := X;
end;

procedure TfrmCntReceber.gdrReceberAnaliticoTitleClick(Column: TColumn);
var
utils:TUtils;
begin
  if (not(Column.index = 1)) and (not(Column.index = 10))  then
  begin
    fdsCntReceberItens.Close;
    fdsCntReceberItens.OrderClause := Column.FieldName;
    fdsCntReceberItens.Open;
  end;

  if (Column.index = 10)and ((rgbPosicao.ItemIndex<> 3) OR (rgbPosicao.ItemIndex<>4))then
  begin
     if (chkCliente.Checked = false) or (edtClienteNome.Text=EmptyStr) then
     begin
       Application.MessageBox('� necess�rio informar um cliente para efetuar o recebimento.', 'Aten��o.',
        MB_OK + MB_ICONEXCLAMATION);
        abort;
     end;
     If checkTodos='N' then
       checkTodos:='S'
     else
      checkTodos:='N';

     fdsCntReceberItens.first;
     while not(fdsCntReceberItens.Eof) do
     begin
        fdsCntReceberItens.Edit;
        if fdsCntReceberItensPOSICAO.AsString = 'AB' then
        begin
          if (checkTodos='N') then
          begin
             if (fdsCntReceberItensBAIXA_AGRUPADA.AsString='S') then
             begin
               vlrSelecionado := vlrSelecionado -(fdsCntReceberItensVALOR.AsFloat +
                fdsCntReceberItensVALOR_JUROS.AsFloat + fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat -
                fdsCntReceberItensVALOR_PAGO.AsFloat -
                fdsCntReceberItensDESCONTO.AsFloat);
               vlrTotalJuros := vlrTotalJuros - fdsCntReceberItensVALOR_JUROS.AsFloat-fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
             end;

             fdsCntReceberItensBAIXA_AGRUPADA.AsString :='N';
          end
          else
          begin
             if (fdsCntReceberItensBAIXA_AGRUPADA.AsString=EmptyStr)or (fdsCntReceberItensBAIXA_AGRUPADA.AsString ='N') then
             begin
               vlrSelecionado := vlrSelecionado +
              (fdsCntReceberItensVALOR.AsFloat +
              fdsCntReceberItensVALOR_JUROS.AsFloat +fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat-
              fdsCntReceberItensVALOR_PAGO.AsFloat -
              fdsCntReceberItensDESCONTO.AsFloat);

              vlrTotalJuros := vlrTotalJuros + fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
             end;

               fdsCntReceberItensBAIXA_AGRUPADA.AsString :='S';
          end;
          fdsCntReceberItens.Post;
        end;
        fdsCntReceberItens.next;
     end;
      edtValorSelect.Text := FloatToStr(vlrSelecionado);
      edtValorSelect.Text := utils.AdicionaMascaraDinheiro(edtValorSelect.Text);
     //dm.Conexao.CommitRetaining;
  end;

end;

procedure TfrmCntReceber.gdrReceberSinteticoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
begin
  if not odd(fdsCntReceber.RecNo) then
  begin
    gdrReceberSintetico.Canvas.Brush.Color := DM.gridOddColor;
    gdrReceberSintetico.Canvas.FillRect(Rect);
    gdrReceberSintetico.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.index = 1) and not(fdsCntReceber.IsEmpty) then
    begin
      posicao := fdsCntReceberPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        Bitmap := imgFlagYellow2.Picture.Bitmap
      end
      else if (posicao = 'PG')or(posicao='RN') then
        Bitmap := imgFlagGreen2.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end
  else
  begin
    if Column.index = 1 then
    begin
      posicao := fdsCntReceberPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        Bitmap := imgFlagYellow.Picture.Bitmap
      end
      else if (posicao = 'PG') or(posicao='RN') then
        Bitmap := imgFlagGreen.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end;
end;

procedure TfrmCntReceber.gdrReceberSinteticoKeyPress(Sender: TObject;
  var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') then
  begin
    if (gdrReceberSintetico.SelectedIndex = 1) then
    begin
      PesquisaReceberStatus;
    end
    else
    begin
      coluna := gdrReceberSintetico.SelectedField.FieldName;
      if coluna = 'CLIENTE' then
      Begin
        PesquisaReceberCliente;
      end;
    end;
  end;
end;

procedure TfrmCntReceber.gdrReceberSinteticoTitleClick(Column: TColumn);
begin
  if not(Column.index = 1) then
  begin
    fdsCntReceber.Close;
    fdsCntReceber.OrderClause := Column.FieldName;
    fdsCntReceber.Open;
  end;
end;

procedure TfrmCntReceber.gdrRenegociarTitleClick(Column: TColumn);
begin
  fdsMov_Renegociar.Close;
  fdsMov_Renegociar.OrderClause := Column.FieldName;
  fdsMov_Renegociar.Open;
end;

procedure TfrmCntReceber.ImpComprovantePag(Modo:String='PG');
begin
  //DM.cliente := fdsMovCntReceberCLIENTE.AsString;
  DM.frxReport1.Clear;
  if Modo = 'PG' then
  begin
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxComprovantePagamentoNota.fr3');
  end;
  if Modo = 'RN' then
  begin
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxComprovanteRenegociar.fr3');
  end;
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmCntReceber.ImprimeComprovante(idMov:String);
begin
 with fdsMovCntReceberItem do
 begin
   close;
   Conditions.Clear;
   Conditions.AddCondition('IDMOVIMENTO','IDMOVIMENTO='+QuotedStr(fdsMovCntReceberID.AsString),true);
   Conditions.Apply;
   prepare;
   open;
 end;

  with cdsDescAcre do
  begin
    Close;
    Open;
    EmptyDataSet;

    if fdsMovCntReceberVLR_DESCONTO.AsFloat > 0 then
    begin
      Append;
      cdsDescAcreMOEDA.AsString := 'Devido ao Desconto de:';
      cdsDescAcreVALOR.AsFloat := fdsMovCntReceberVLR_DESCONTO.AsFloat;
      Post;
    end;
    if fdsMovCntReceberVLR_ACRESCIMO.AsFloat>0 then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Devido ao Acrescimo de:';
     cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_ACRESCIMO.AsFloat;
     Post;
    end;
    if (fdsMovCntReceberVLR_JUROS.AsFloat>0) and (fdsMovCntReceberUSAR_JUROS.AsString='S') then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Juros total:';
     cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS.AsFloat;
     Post;
    end;
    if (fdsMovCntReceberVLR_JUROS.AsFloat>0) and (fdsMovCntReceberUSAR_JUROS.AsString='S') then
    begin
     if fdsMovCntReceberVLR_JUROS_PAGO.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Pago:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_PAGO.AsFloat;
       Post;
     end;
     if fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Restante:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat;
       Post;
     end;
    end;
  end;
  with cdsFormaPagamento do
  begin
    Close;
    Open;
    EmptyDataSet;
    if fdsMovCntReceberVLR_CARTAO_DT.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CARTAO_DT.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_CHEQUE.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CHEQUE.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_NOTA.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := '  A Prazo: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_NOTA.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_CREDITO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cr�dito:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CREDITO.AsFloat;
      Post;
    end;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
    cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_DINHEIRO.AsFloat;
    Post;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Total Recebido:';
    cdsFormaPagamentoVALOR.AsFloat :=
        (fdsMovCntReceberVLR_CARTAO_DT.AsFloat +
        fdsMovCntReceberVLR_CHEQUE.AsFloat + fdsMovCntReceberVLR_NOTA.AsFloat
        +fdsMovCntReceberVLR_DINHEIRO.AsFloat); //Retirei o cr�dito pq eraldo reclamou
    Post;

    if fdsMovCntReceberVLR_TROCO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_TROCO.AsFloat;
      Post;
    end;
  end;
  cdsDescAcre.First;
  cdsFormaPagamento.First;
  //DM.cliente:= fdsMovCntReceberCLIENTE.AsString;
  Dm.dtInicio:= fdsMovCntReceberDT_MOVIMENTO.AsDateTime + fdsMovCntReceberHR_MOVIMENTO.AsDateTime;
    ImpComprovantePag;
  cdsFormaPagamento.Close;
  cdsDescAcre.Close;

  {if not(recebimento) then
  begin
    {if (DM.impVenda = 1) or (DM.impVenda = 3) then
      ImprimirExtratoCliente;
    // ReimprimirNTCupom;

    if DM.impVenda = 2 then
      ReimprimirNota;
  end
  else }

end;

procedure TfrmCntReceber.ImprimeComprovanteRene(idMov: String);
begin
  with fdsMov_RegociarItem do
  begin
    close;
    Conditions.Clear;
    Conditions.AddCondition('IDRENEGOCIAR','IDRENEGOCIAR='+QuotedStr(idMov),true);
    Conditions.Apply;
    prepare;
    open;
  end;

  with cdsDescAcre do
  begin
    Close;
    Open;
    EmptyDataSet;

    if fdsMov_RenegociarDESCONTO.AsFloat > 0 then
    begin
      Append;
      cdsDescAcreMOEDA.AsString := 'Desconto:';
      cdsDescAcreVALOR.AsFloat := fdsMov_RenegociarDESCONTO.AsFloat;
      Post;
    end;
    if fdsMov_RenegociarACRESCIMO.AsFloat>0 then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Acrescimo:';
     cdsDescAcreVALOR.AsFloat :=fdsMov_RenegociarACRESCIMO.AsFloat;
     Post;
    end;
    if (fdsMov_RenegociarVLR_TOT_JUROS.AsFloat>0) and (fdsMov_RenegociarUSA_JUROS.AsString='S') then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Juros total Aplicado:';
     cdsDescAcreVALOR.AsFloat :=fdsMov_RenegociarVLR_TOT_JUROS.AsFloat;
     Post;
    end;
    Append;
    cdsDescAcreMOEDA.AsString := 'Valor L�quido:';
    cdsDescAcreVALOR.AsFloat :=
        (fdsMov_RenegociarVLR_CARTAO_CT.AsFloat + fdsMov_RenegociarVLR_CARTAO_CD.AsFloat+
        fdsMov_RenegociarVLR_CHEQUE.AsFloat + fdsMov_RenegociarVLR_NOTA.AsFloat
        + fdsMov_RenegociarVLR_DINHEIRO.AsFloat);
    Post;
    {if (fdsMovCntReceberVLR_JUROS.AsFloat>0) and (fdsMovCntReceberUSAR_JUROS.AsString='S') then
    begin
     if fdsMovCntReceberVLR_JUROS_PAGO.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Pago:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_PAGO.AsFloat;
       Post;
     end;
     if fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Restante:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat;
       Post;
     end;
    end;}
  end;
  with cdsFormaPagamento do
  begin
    Close;
    Open;
    EmptyDataSet;
    if fdsMov_RenegociarVLR_CARTAO_CT.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o Cr�dito: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMov_RenegociarVLR_CARTAO_CT.AsFloat;
      Post;
    end;
    if fdsMov_RenegociarVLR_CARTAO_CD.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o D�bito: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMov_RenegociarVLR_CARTAO_CD.AsFloat;
      Post;
    end;

    if fdsMov_RenegociarVLR_CHEQUE.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMov_RenegociarVLR_CHEQUE.AsFloat;
      Post;
    end;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
    cdsFormaPagamentoVALOR.AsFloat := fdsMov_RenegociarVLR_DINHEIRO.AsFloat;
    Post;

    if fdsMov_RenegociarVLR_TROCO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMov_RenegociarVLR_TROCO.AsFloat;
      Post;
    end;
  end;
  if fdsMov_RenegociarID_REC_NT.AsInteger > 0 then
  begin
    with cdsParcelas do
    begin
      Close;
      Open;
      EmptyDataSet;
      with qryComando do
      begin
        close;
        SQL.Clear;
        SQL.Add('SELECT REFERENCIA, DT_VENC, VALOR FROM CNT_RECEBER_ITEM WHERE IDRECEBER ='+
          QuotedStr(fdsMov_RenegociarID_REC_NT.AsString)+'AND PREFIXO = '+QuotedStr('NT'));
        Prepare;
        ExecQuery;
      end;
      if qryComando.RecordCount > 0 then
      begin
        While not(qryComando.Eof) do
        begin
          Append;
          cdsParcelasREFERENCIA.AsString := qryComando.FieldByName('REFERENCIA').AsString;
          cdsParcelasDT_VENC.AsDateTime := qryComando.FieldByName('DT_VENC').AsDateTime;
          cdsParcelasVALOR.AsFloat:= qryComando.FieldByName('VALOR').AsFloat;
          post;
          qryComando.Next;
        end;
      end;

    end;
  end;

  cdsDescAcre.First;
  cdsFormaPagamento.First;
  cdsParcelas.First;
  DM.dtInicio:= fdsMov_RenegociarDT_MOVIMENTO.AsDateTime + fdsMov_RenegociarHR_MOVIMENTO.AsDateTime;
  DM.valor := fdsMov_RenegociarVLR_TOTAL.AsString;
  DM.vlrTotal := fdsMov_RenegociarVLR_RENEGOCIADO.AsString;
    ImpComprovantePag('RN');
  cdsFormaPagamento.Close;
  cdsDescAcre.Close;

end;

procedure TfrmCntReceber.btnPesqMovClick(Sender: TObject);
begin
 PesquisaMovimentoRec(rgbOrigemReceber.ItemIndex);
 tbsHistorico.Show;
end;

procedure TfrmCntReceber.btnPesqReneClick(Sender: TObject);
begin
 PesqRenegociar;
end;

procedure TfrmCntReceber.LerArquivoRetorno;
var
  planilha, sheet: OleVariant;
  linha, coluna, i: Integer;
begin
  // Crio o objeto que gerencia o arquivo excel
  planilha := CreateOleObject('Excel.Application');

  // Abro o arquivo
  planilha.WorkBooks.Open('D:\vitor\Delphi\Sistemas\SGP\Boleto\Retorno\1.xlsx');

  // Pego a primeira planilha do arquivo

  for i := 1 to planilha.WorkSheets.count do
  begin
    sheet := planilha.WorkSheets[i];

    // Aqui pego o Nosso N�mero
    linha := 5;
    coluna := 1;
    ShowMessage(IntToStr(i) + ' - Doc N�mero: ' + sheet.cells[linha,
      coluna].Text);

    // Aqui pego Dt.Pagamento
    linha := 5;
    coluna := 11;
    ShowMessage(IntToStr(i) + ' - Dt.Pagamento: ' + sheet.cells[linha,
      coluna].Text);

    // Aqui pego o Valor Pago
    linha := 5;
    coluna := 16;
    ShowMessage(IntToStr(i) + ' - Vlr.Pago: ' + sheet.cells[linha,
      coluna].Text);

    with fdsCntReceber do
    begin
      Close;
      Conditions.Clear;
      // Conditions.AddCondition('nossonumero')
    end;
  end;

  // Fecho a planilha
  planilha.WorkBooks.Close;
end;

procedure TfrmCntReceber.LimpaSelecionado;
begin
  vlrSelecionado := 0;
  vlrTotalJuros := 0;
  edtValorSelect.Text := 'R$ 0,00';
end;

procedure TfrmCntReceber.CCCartaComumExecute(Sender: TObject);
begin
  if not(rgbPosicao.ItemIndex = 3)  then
  begin
    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      with fdsClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:= strToInt(edtClienteCodigo.Text);
        prepare;
        open;
      end;
      with fdsnotasClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:=fdsClientesDevedoresID.AsInteger;
        prepare;
        open;
      end;
      with fdsCntReceberItens do
      begin
        filter:= 'BAIXA_AGRUPADA='+QuotedStr('S');
        Filtered:=true;
        prepare;
        open;
      end;

      if fdsCntReceberItens.RecordCount>0 then
      begin
        DM.carta:='CARTA COMUM';
        DM.obs:=' Lamentamos que V.Sa n�o tenha comparecido em nosso departamento de cr�dito e cobran�a,';
        DM.Obs:= DM.Obs +' para buscar uma solu��o para o seu d�bito.'+#13+'  V.Sa dispor� ainda de 72 horas(tr�s dias �teis)';
        DM.Obs:= DM.Obs +' para solucionar esta pend�ncia diretamente em nossa loja.'+ #13;
        DM.Obs:= DM.Obs +'Fim tal praso nos consideramos liberados para a tomada das medidas necess�rias, ou seja, registro no Servi�o';
        DM.Obs:= DM.Obs +' de Prote��o ao Cr�dito(SPC) do Brasil Ltda, e cobran�a judicial.'+#13;
        DM.Obs:= DM.Obs +'Caso j� tenha efetuado o pagamento favor desconsiderar esta.';
        DM.frxReport1.Clear;
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelCartaCobranca.fr3');
        DM.frxReport1.PrintOptions.ShowDialog := True;
        DM.frxReport1.PrepareReport(True);
        DM.frxReport1.ShowReport(True);

        with fdsCntReceberItens do
        begin
          Filtered:=false;
          filter:= '';
          Filtered:=true;
          prepare;
          open;
        end;
        fdsCntReceberItens.First;
        while not(fdsCntReceberItens.Eof) do
        begin
          if (fdsCntReceberItensBAIXA_AGRUPADA.AsString='S') and (fdsCntReceberItensPOSICAO.AsString='AB') then
          begin
            fdsCntReceberItens.Edit;
            fdsCntReceberItensBAIXA_AGRUPADA.AsString:= EmptyStr;
            fdsCntReceberItens.Post;
          end;
          fdsCntReceberItens.Next;
        end;
        DM.Conexao.CommitRetaining;
        checkTodos:='N';
        LimpaSelecionado;
        fdsCntReceberItens.Close;
        fdsCntReceberItens.Open;
        fdsCntReceberItens.First;
      end
      else
      begin
        Application.MessageBox('N�o foram selecionadas notas para a impress�o de cobran�a.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
      end;
    end
    else
    begin
      Application.MessageBox('Antes informe um cliente.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfrmCntReceber.CCModeloAmigavelExecute(Sender: TObject);
begin
  if not(rgbPosicao.ItemIndex = 3)  then
  begin
    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      with fdsClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:= strToInt(edtClienteCodigo.Text);
        prepare;
        open;
      end;
      with fdsnotasClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:=fdsClientesDevedoresID.AsInteger;
        prepare;
        open;
      end;
      with fdsCntReceberItens do
      begin
        Filtered:=false;
        filter:= 'BAIXA_AGRUPADA='+QuotedStr('S');
        Filtered:=true;
        prepare;
        open;
      end;

      if fdsCntReceberItens.RecordCount>0 then
      begin
        DM.carta:='MODELO AMIG�VEL';
        DM.obs:='Caso j� tenha efetuado o pagamento favor desconsiderar esta.'+#13+#13+'  VENHA NEGOCIAR SUA D�VIDA!';
        DM.frxReport1.Clear;
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelCartaCobranca.fr3');
        DM.frxReport1.PrintOptions.ShowDialog := True;
        DM.frxReport1.PrepareReport(True);
        DM.frxReport1.ShowReport(True);
        with fdsCntReceberItens do
        begin
          Filtered:=false;
          filter:= '';
          Filtered:=true;
          prepare;
          open;
        end;
        fdsCntReceberItens.First;
        while not(fdsCntReceberItens.Eof) do
        begin
          if (fdsCntReceberItensBAIXA_AGRUPADA.AsString='S') and (fdsCntReceberItensPOSICAO.AsString='AB') then
          begin
            fdsCntReceberItens.Edit;
            fdsCntReceberItensBAIXA_AGRUPADA.AsString:= EmptyStr;
            fdsCntReceberItens.Post;
          end;
          fdsCntReceberItens.Next;
        end;
        DM.Conexao.CommitRetaining;
        checkTodos:='N';
        LimpaSelecionado;
        fdsCntReceberItens.Close;
        fdsCntReceberItens.Open;
        fdsCntReceberItens.First;
      end
      else
      begin
        Application.MessageBox('N�o foram selecionadas notas para a impress�o de cobran�a.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
      end;
    end
    else
    begin
      Application.MessageBox('Antes informe um cliente.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfrmCntReceber.CCModeloSPCExecute(Sender: TObject);
begin
  if not(rgbPosicao.ItemIndex = 3)  then
  begin
    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      with fdsClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:= strToInt(edtClienteCodigo.Text);
        prepare;
        open;
      end;
      with fdsnotasClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:=fdsClientesDevedoresID.AsInteger;
        prepare;
        open;
      end;
      with fdsCntReceberItens do
      begin
        filter:= 'BAIXA_AGRUPADA='+QuotedStr('S');
        Filtered:=true;
        prepare;
        open;
      end;
      if fdsCntReceberItens.RecordCount>0 then
      begin
        DM.carta:='MODELO SPC';
        DM.obs:='Como n�o compreceu para negociar seu d�bito, seu nome foi inserido no SPC/SERASA';
        DM.Obs:= DM.Obs +' assim sendo fica impossibilitado de utilizar seu cr�dito em outras entidades.';
        DM.Obs:= DM.Obs +' Estamos lhe esperando para renegociarmos seu d�bito perante a loja, caso ja tenha efetuado o pagamento favor desconsiderar esta.';
        DM.Obs:= DM.Obs +#13+#13+' OBRIGADA A GER�NCIA.';
        DM.frxReport1.Clear;
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelCartaCobranca.fr3');
        DM.frxReport1.PrintOptions.ShowDialog := True;
        DM.frxReport1.PrepareReport(True);
        DM.frxReport1.ShowReport(True);

        with fdsCntReceberItens do
        begin
          Filtered:=false;
          filter:= '';
          Filtered:=true;
          prepare;
          open;
        end;
        fdsCntReceberItens.First;
        while not(fdsCntReceberItens.Eof) do
        begin
          if (fdsCntReceberItensBAIXA_AGRUPADA.AsString='S') and (fdsCntReceberItensPOSICAO.AsString='AB') then
          begin
            fdsCntReceberItens.Edit;
            fdsCntReceberItensBAIXA_AGRUPADA.AsString:= EmptyStr;
            fdsCntReceberItens.Post;
          end;
          fdsCntReceberItens.Next;
        end;
        DM.Conexao.CommitRetaining;
        checkTodos:='N';
        LimpaSelecionado;
        fdsCntReceberItens.Close;
        fdsCntReceberItens.Open;
        fdsCntReceberItens.First;
      end
      else
      begin
        Application.MessageBox('N�o foram selecionadas notas para a impress�o de cobran�a.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
      end;
    end
    else
    begin
      Application.MessageBox('Antes informe um cliente.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfrmCntReceber.CCSpcSerasaExecute(Sender: TObject);
begin
 if not(rgbPosicao.ItemIndex = 3)  then
  begin
    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      with fdsClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:= strToInt(edtClienteCodigo.Text);
        prepare;
        open;
      end;
      with fdsnotasClientesDevedores do
      begin
        close;
        ParamByName('IDCLIENTE').AsInteger:=fdsClientesDevedoresID.AsInteger;
        prepare;
        open;
      end;
      with fdsCntReceberItens do
      begin
        filter:= 'BAIXA_AGRUPADA='+QuotedStr('S');
        Filtered:=true;
        prepare;
        open;
      end;

      if fdsCntReceberItens.RecordCount>0 then
      begin
        DM.carta:='CARTA SPC E SERASA';
        DM.obs:='Estamos verificando atrav�s de sua ficha de Cr�dito que v.sa est� em atraso.';
        DM.Obs:= DM.Obs +' Acreditamos que algo tenha acontecido, por isso gstar�amos de merecer sua justificativa pessoal.'+#13;
        DM.Obs:= DM.Obs +'Caso n�o compare�a no prazo de at� 5 dias �teis a partir do recebimento desta carta, n�o nos responsabilizaremos';
        DM.Obs:= DM.Obs +' pelo envio dos seus dados para entidades tipo SPC e SERASA.'+#13;
        DM.Obs:= DM.Obs +'Sem mais para o momento, departamento de cr�dito e cobran�a.'+#13#13;
        DM.Obs:= DM.Obs +'Caso ja tenha efetuado o pagamento, favor desconsiderar esta.';
        DM.frxReport1.Clear;
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelCartaCobranca.fr3');
        DM.frxReport1.PrintOptions.ShowDialog := True;
        DM.frxReport1.PrepareReport(True);
        DM.frxReport1.ShowReport(True);

        with fdsCntReceberItens do
        begin
          Filtered:=false;
          filter:= '';
          Filtered:=true;
          prepare;
          open;
        end;
        fdsCntReceberItens.First;
        while not(fdsCntReceberItens.Eof) do
        begin
          if (fdsCntReceberItensBAIXA_AGRUPADA.AsString='S') and (fdsCntReceberItensPOSICAO.AsString='AB') then
          begin
            fdsCntReceberItens.Edit;
            fdsCntReceberItensBAIXA_AGRUPADA.AsString:= EmptyStr;
            fdsCntReceberItens.Post;
          end;
          fdsCntReceberItens.Next;
        end;
        DM.Conexao.CommitRetaining;
        checkTodos:='N';
        LimpaSelecionado;
        fdsCntReceberItens.Close;
        fdsCntReceberItens.Open;
        fdsCntReceberItens.First;
      end
      else
      begin
        Application.MessageBox('N�o foram selecionadas notas para a impress�o de cobran�a.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
      end;
    end
    else
    begin
      Application.MessageBox('Antes informe um cliente.','Aten��o',MB_OK+MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfrmCntReceber.btnBaixarBoletosClick(Sender: TObject);
begin
  LerArquivoRetorno;
end;

procedure TfrmCntReceber.btnBoletosClick(Sender: TObject);
begin
  Try
    frmEmissaoBoleto := TfrmEmissaoBoleto.Create(nil);
    frmEmissaoBoleto.ShowModal;
  Finally
    frmEmissaoBoleto.Free;
  End;
end;

procedure TfrmCntReceber.btnCancelarReceberClick(Sender: TObject);
var
  idReceber: string;
begin
  idReceber := fdsCntReceberID.AsString;

  if fdsCntReceberVALOR_PAGO.AsFloat = 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir essa Conta a Receber?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          with qryComando do
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM CNT_RECEBER_CHEQUE RC WHERE RC.IDRECEBER_ITEM IN (SELECT RI.ID FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = '
              + idReceber + ')');
            Prepare;
            ExecQuery;
          end;

          with qryComando do
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM CNT_RECEBER_ITEM RI WHERE RI.IDRECEBER = ' +
              idReceber);
            Prepare;
            ExecQuery;
          end;

          with qryComando do
          begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM CNT_RECEBER R WHERE R.ID = ' + idReceber);
            Prepare;
            ExecQuery;
          end;


          DM.Conexao.CommitRetaining;
          btnPesquisar.Click;
        end;
    end;
  end
  else
    Application.MessageBox
      ('Voc� n�o pode Excluir uma conta que j� tenha tido recebimento.',
      'Aten��o', MB_OK + MB_ICONERROR);
end;

procedure TfrmCntReceber.btnCancelarReceberMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 btnCancelarReceber.Hint:='S� ser� poss�vel excluir notas que ainda n�o foram '+#13+'efetuadas nenhuma forma pagamento.'
end;

procedure TfrmCntReceber.btnIncluirClick(Sender: TObject);
begin
  Try
    frmPagIncReceber := TfrmPagIncReceber.Create(nil);

    frmPagIncReceber.valorDoc := 0;
    frmPagIncReceber.idCliente := 0;
    frmPagIncReceber.modo := 'Inclus�o';

    frmPagIncReceber.ShowModal;
  Finally
    if frmPagIncReceber.ModalResult = mrOk then
    begin
      Application.MessageBox('Conta Lan�ada com Sucesso!', 'Conta Lan�ada.',
        MB_OK + MB_ICONEXCLAMATION);
      btnPesquisar.Click;
    end;
  End;
end;

procedure TfrmCntReceber.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmCntReceber.Left + 110, frmCntReceber.Top + 85);
end;

procedure TfrmCntReceber.btnPesqClienteClick(Sender: TObject);
begin
  PesqClientes(edtClienteCodigo,edtPesqCliente,btnPesquisar);
end;

procedure TfrmCntReceber.btnPesqClienteMovClick(Sender: TObject);
begin
  PesqClientes(edtCodigoClienteMov,edtPesqClienteMov,btnPesqMov);
end;

procedure TfrmCntReceber.btnPesquisarClick(Sender: TObject);
begin
  if (rgbModoVisualizacao.ItemIndex <> 3)then
  begin
    if rgbModoVisualizacao.ItemIndex = 0 then
    begin
      PesquisarSintetico;
    end
    else
    begin
      PesquisarAnalitico(rgbPosicao.ItemIndex);

      //tbsAnalitico.Show;
    end;

    //RetornaTotalReceber(rgbPosicao.ItemIndex);
    //RetornaTotalRecebido(rgbPosicao.ItemIndex);
    tbsAnalitico.Show;
  end;
  if rgbModoVisualizacao.ItemIndex = 3 then
  begin
   // PesqHistorico;
  end;
  // case rgbPosicao.ItemIndex of
  // 0 :
  // begin
  // RetornaTotalReceber(rgbPosicao.ItemIndex);
  // RetornaTotalRecebido(rgbPosicao.ItemIndex);
  // end;
  // 1 :
  // begin
  // RetornaTotalReceber(rgbPosicao.ItemIndex);
  // lblTotRecebido.Caption := 'R$ 0,00';
  // end;
  // 2 :
  // begin
  // RetornaTotalReceber(rgbPosicao.ItemIndex);
  // lblTotRecebido.Caption := 'R$ 0,00';
  // end;
  // 3 :
  // begin
  // RetornaTotalRecebido(rgbPosicao.ItemIndex);
  // lblTotReceber.Caption := 'R$ 0,00';
  // end;
  // end;
end;

procedure TfrmCntReceber.PesquisarSintetico;
var
  posicao: string[2];
begin
  case rgbPosicao.ItemIndex of
    1:
      posicao := 'AB';
    2:
      posicao := 'AB';
    3:
      posicao := 'PG';
    4:
      posicao:='RN';
  end;

  with fdsCntReceber do
  begin
    Close;
    Conditions.Clear;
    if (chkPeriodo.Checked) then
      Conditions.AddCondition('LANCAMENTO', 'R.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'Todos') then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'R.IDCLIENTE = ' +
          fdsClienteID.AsString, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'R.IDCLIENTE = 0', True);
    end;

    if rgbPosicao.ItemIndex = 1 then
    begin
      Conditions.AddCondition('POSICAO',
        'R.ID IN (SELECT IDRECEBER FROM CNT_RECEBER_ITEM WHERE POSICAO  = ' +
        QuotedStr('AB') + ' AND DT_VENC > ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', Now)) + ')', True);
    end
    else
    begin
      if rgbPosicao.ItemIndex = 2 then
      begin
        Conditions.AddCondition('POSICAO',
          'R.ID IN (SELECT IDRECEBER FROM CNT_RECEBER_ITEM WHERE POSICAO  = ' +
          QuotedStr('AB') + ' AND DT_VENC <= ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', Now)) + ')', True);
      end
      else
      begin
        if rgbPosicao.ItemIndex = 3 then
        begin
          Conditions.AddCondition('POSICAO',
            'R.POSICAO = ' + QuotedStr('PG'), True);
        end;
        if rgbPosicao.ItemIndex = 4 then
        begin
          Conditions.AddCondition('POSICAO',
            'R.POSICAO = ' + QuotedStr('RN'), True);
        end;
      end;
    end;

    Conditions.Apply;
    Prepare;
    OrderClause := 'R.ID';
    Open;
  end;
end;

procedure TfrmCntReceber.pgcControlChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if (NewIndex <> 3)or(NewIndex <> 4) then
  begin
    btnReceber.Visible:=True;
    btnRenegociar.Visible:= True;
    btnIncluir.Visible:=True;
    btnCancelarReceber.Visible:=True;
    edtValorSelect.Visible:=true;
    lblTotSelecionado.Visible:=true;
  end;
end;

procedure TfrmCntReceber.pnlVendaReneCheckBoxClick(Sender: TObject);
begin
  if not(pnlVendaRene.Checked) then
  begin
    edtVendaRene.Text := 'TODOS';
    edtVendaRene.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.ppmImprimirPopup(Sender: TObject);
begin
  if (pgcControl.Pages[0].Showing = True) or (pgcControl.Pages[1].Showing = True) then
  begin
   ppmImprimir.Items[0].Enabled:=True;
   ppmImprimir.Items[3].Enabled:=True;
   ppmImprimir.Items[4].Items[1].Enabled:=False;
   ppmImprimir.Items[4].Items[2].Enabled:=False;
  end;
  if (pgcControl.Pages[2].Showing = True) then
  begin
   ppmImprimir.Items[0].Enabled:=false;
   ppmImprimir.Items[3].Enabled:=false;
   ppmImprimir.Items[4].Items[1].Enabled:=False;
   ppmImprimir.Items[4].Items[2].Enabled:=True;
  end;
  if (pgcControl.Pages[3].Showing = True) then
  begin
   ppmImprimir.Items[0].Enabled:=false;
   ppmImprimir.Items[3].Enabled:=false;
   ppmImprimir.Items[4].Items[1].Enabled:=True;
   ppmImprimir.Items[4].Items[2].Enabled:=false;
  end;



 { if pgcControl.Pages[3].TabVisible = True then
  begin
   ppmImprimir.Items[0].Enabled:=False;
  end }

end;

procedure TfrmCntReceber.relAnaliticoExecute(Sender: TObject);
begin
  ShowMessage('IMPRIMINDO...');
end;

procedure TfrmCntReceber.relClienteEmAtrasoExecute(Sender: TObject);
begin
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelClienteAtraso.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmCntReceber.relExtratoClienteExecute(Sender: TObject);
begin
  // ShowMessage('Imprimindo...');
  DM.filial := DM.fdsConfigFilial.AsString;
  DM.cliente := edtPesqCliente.Text;
  DM.vlrTotDev :=edtTotReceber.Text;
  DM.vlrTotal := edtTotRecebido.Text;//lblTotReceber.Caption;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxCntReceberSintetico.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmCntReceber.relReiprimirReceberExecute(Sender: TObject);
begin
 if fdsMovCntReceber.RecordCount > 0 then
 begin
   DM.cliente:= fdsMovCntReceberCLIENTE.AsString;
   DM.valor:= fdsMovCntReceberVLR_TOTAL_PG.AsString;
   DM.dtInicio:=fdsMovCntReceberDT_MOVIMENTO.AsDateTime + fdsMovCntReceberHR_MOVIMENTO.AsDateTime;
   ImprimeComprovante(fdsMovCntReceberID.AsString);
   if tbsHistorico.Showing = true then
   begin
    PesquisaMovimentoRec(rgbOrigemReceber.ItemIndex);
   end
   else
   begin
     PesquisarAnalitico(rgbPosicao.ItemIndex);
   end;
 end;
end;

procedure TfrmCntReceber.relReiprimirRenegociacaoExecute(Sender: TObject);
begin
 if fdsMov_Renegociar.RecordCount > 0 then
 begin
   DM.cliente:= fdsMov_RenegociarCLIENTE.AsString;
   ImprimeComprovanteRene(fdsMov_RenegociarID.AsString);
   if tbsRenegociar.Showing = true then
   begin
    PesqRenegociar;
   end
   else
   begin
    if tbsHistorico.Showing = true then
    begin
       PesquisaMovimentoRec(rgbOrigemReceber.ItemIndex);
    end
    else
     PesquisarAnalitico(rgbPosicao.ItemIndex);
   end;
 end;
end;

procedure TfrmCntReceber.PesqClientes(EditCod, EditNome: TRZEdit;
  BtnPesq: TComponent);
begin
  Try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      EditCod.Text := frmPesqCliente.fdsClientesID.AsString;
      EditNome.Text := frmPesqCliente.fdsClientesNOME.AsString;
      RetornaClienteId(EditCod.Text);

      if BtnPesq is TJvImgBtn then
      TJvImgBtn(BtnPesq).Click;
      if BtnPesq is TRzBitBtn then
      TRzBitBtn(BtnPesq).Click;
    end;
    frmPesqCliente.Free;
  End;
end;

procedure TfrmCntReceber.PesqRenegociar;
begin
  with fdsMov_Renegociar do
  begin
    Close;
    Conditions.Clear;

    if (pnlClienteRene.Checked) and not(Trim(edtPesqClienteRene.Text) = 'TODOS') then
    begin
        Conditions.AddCondition('IDCLIENTE', 'MR.IDCLIENTE ='+edtCodigoClienteRene.Text, True);
    end;

    if (rgbPeriodoRene.Checked) then
     begin
      Conditions.AddCondition('PERIODO', 'MR.DT_MOVIMENTO BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicioRene.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFimRene.Date)), True);
     end
     else
     Conditions.AddCondition('PERIODO', 'MR.DT_MOVIMENTO <= ' +QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);
    // Fim Pesquisa Por Periodo

    if (pnlVendaRene.Checked) and not(Trim(edtVendaRene.Text) = 'TODOS') then
      Conditions.AddCondition('NVENDA', 'MR.ID = (select MAX(IDRENEGOCIAR) from MOVIMENTO_RENEGOCIAR_ITEM WHERE IDRENEGOCIAR = MR.ID AND IDVENDA = '+ edtVendaRene.Text+' GROUP BY IDMOVIMENTO)', True);

    Conditions.Apply;
    Prepare;
    fdsMov_Renegociar.OrderClause := 'MR.DT_MOVIMENTO DESC';
    Open;
  end;
end;

procedure TfrmCntReceber.PesquisaMovimentoRec(origem:integer);
begin
 with fdsMovCntReceber do
  begin
    Close;
    Conditions.Clear;

    if (rgbClienteMov.Checked) and not(Trim(edtPesqClienteMov.Text) = 'TODOS') then
    begin
        Conditions.AddCondition('IDCLIENTE', 'MR.IDCLIENTE ='+edtCodigoClienteMov.Text, True);
    end;

    if (rgbPeriodoMov.Checked) then
     begin
      Conditions.AddCondition('PERIODO', 'MR.DT_MOVIMENTO BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicioMov.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFimMov.Date)), True);
     end
    else
     Conditions.AddCondition('PERIODO', 'MR.DT_MOVIMENTO <= ' +QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);
    // Fim Pesquisa Por Periodo

    if (origem = 0)then
    begin
      Conditions.AddCondition('ORIGEM', 'MR.IDCAIXA = 0 ', True);
    end;
    if (origem=1)then
    begin
      Conditions.AddCondition('ORIGEM', 'MR.IDCAIXA <> 0 ', True);
    end;

    if (rgbCaixa.Checked) and not(Trim(edtCaixa.Text) = 'TODOS') then
    Conditions.AddCondition('CAIXA', 'MR.IDCAIXA ='+QuotedStr(edtCaixa.Text), True);

    if (rgbVendaMov.Checked) and not(Trim(edtVendaMov.Text) = 'TODOS') then
    begin
      Conditions.AddCondition('NVENDA',
        'MR.ID = (select MAX(IDMOVIMENTO) from MOVIMENTO_CNT_RECEBER_ITEM WHERE IDMOVIMENTO = MR.ID AND IDVENDA = '
          + edtVendaMov.Text+' GROUP BY IDMOVIMENTO)', True);
    end;

    if (rgbVendaMov.Checked) and not(Trim(edtVendaMov.Text) = 'TODOS') then
    begin
      Conditions.AddCondition('NVENDA',
        'MR.ID = (select MAX(IDMOVIMENTO) from MOVIMENTO_CNT_RECEBER_ITEM WHERE IDMOVIMENTO = MR.ID AND REFERENCIA = '
          + edtReferencia.Text+' GROUP BY IDMOVIMENTO)', True);
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
  calculaTotalMov(origem);
end;

procedure TfrmCntReceber.PesquisarAnalitico(index: Integer);
begin

  with fdsCntReceberItens do
  begin
    Close;
    Conditions.Clear;

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      // RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'R.IDCLIENTE = ' +
          edtClienteCodigo.Text, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'R.IDCLIENTE = 0', True);
    end;

    // In�cio Pesquisa Por Periodo
    if index = 0 then
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('AB'), True);
      if (chkPeriodo.Checked) then
        Conditions.AddCondition('DT_VENC', 'RI.DT_VENC BETWEEN ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    end;

    if index = 1 then
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('AB'), True);
      if (chkPeriodo.Checked) then
        Conditions.AddCondition('DT_VENC', 'RI.DT_VENC BETWEEN ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True)
      else
        Conditions.AddCondition('DT_VENC', 'RI.DT_VENC > ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);
    end;

    if index = 2 then
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('AB'), True);
      Conditions.AddCondition('DT_VENC', 'RI.DT_VENC <= ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);
    end;

    if index = 3 then
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('PG'), True);
      if (chkPeriodo.Checked) then
       begin
        Conditions.AddCondition('PAGAMENTO', 'RI.DT_PAG BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
       end
       else
       Conditions.AddCondition('DT_PAG', 'RI.DT_PAG <= ' +QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);

    end;
    if index = 4 then      //RENEGOCIADA
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('RN'), True);
      if (chkPeriodo.Checked) then
       begin
        Conditions.AddCondition('PAGAMENTO', 'RI.DT_PAG BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
       end
       else
       Conditions.AddCondition('DT_PAG', 'RI.DT_PAG <= ' +QuotedStr(FormatDateTime('MM/DD/YYYY', Now)), True);
    end;
    // Fim Pesquisa Por Periodo

   if (chkTipoDoc.Checked = false)then
    Conditions.AddCondition('DOCUMENTO', 'RI.PREFIXO <> ' +
        QuotedStr('CT') + ' AND RI.PREFIXO <>'+QuotedStr('CD')+
         ' AND RI.PREFIXO <> '+QuotedStr('CH'), True);

   if (chkTipoDoc.Checked) and (cbxTipoDoc.Value = 'TD') then
     Conditions.AddCondition('DOCUMENTO', 'RI.PREFIXO = ' +
        QuotedStr('NT'), True);

    if (chkTipoDoc.Checked) and not(cbxTipoDoc.Value = 'TD') then
      Conditions.AddCondition('DOCUMENTO', 'RI.PREFIXO = ' +
        QuotedStr(cbxTipoDoc.Value), True);

    if (chkReferencia.Checked) and not(Trim(edtPesqRef.Text) = 'TODOS') then
      Conditions.AddCondition('REFERENCIA',
        'RI.REFERENCIA = '+ QuotedStr(edtPesqRef.Text), True);

    if (chkNumVenda.Checked) and not(Trim(edtPesqNVenda.Text) = 'TODOS') then
      Conditions.AddCondition('NVENDA', 'R.IDVENDA = ' +
        edtPesqNVenda.Text, True);

    Conditions.Apply;
    Prepare;
    Open;
  end;
  CalculaTotais(1);
  ShowScrollBar(gdrReceberAnalitico.Handle, SB_VERT, True);
end;

procedure TfrmCntReceber.PesquisaReceberCliente;
var
  tempIdCliente: string;
begin
  Try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      tempIdCliente := frmPesqCliente.fdsClientesID.AsString;
      if rgbModoVisualizacao.ItemIndex = 0 then
      begin
        with fdsCntReceber do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('IDCLIENTE',
            'R.IDCLIENTE = ' + tempIdCliente, True);
          Conditions.Apply;
          Prepare;
          OrderClause := 'R.ID';
          Open;
        end;
      end
      else
      begin
        with fdsCntReceberItens do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('IDCLIENTE', 'C.ID = ' + tempIdCliente, True);
          Conditions.Apply;
          Prepare;
          OrderClause := 'RI.ID';
          Open;
        end;
      end;
    end;
    frmPesqCliente.Free;
  End;
end;

procedure TfrmCntReceber.PesquisaReceberStatus;
var
  tempStatus: string;
begin
  Try
    frmPesqStatusDoc := TfrmPesqStatusDoc.Create(nil);
    frmPesqStatusDoc.ShowModal;
  Finally
    if frmPesqStatusDoc.ModalResult = mrOk then
    begin

    end;
  End;
end;

procedure TfrmCntReceber.gdrParcelasDblClick(Sender: TObject);
var
  prefixo: string[2];
begin
  prefixo := fdsCntReceberItensFormPREFIXO.AsString;

  if prefixo = 'CH' then
  begin
    Try
      frmCheque := TfrmCheque.Create(nil);
      frmCheque.tipo := 'Receber';
      frmCheque.idDoc := fdsCntReceberItensFormID.AsInteger;
      frmCheque.posicao := fdsCntReceberItensFormPOSICAO.AsString;
      frmCheque.ShowModal;
    Finally
      frmCheque.Free;
    End;
  end
  else if prefixo = 'BL' then
  begin
    Try

    Finally

    End;
  end;
end;

procedure TfrmCntReceber.gdrParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
begin
  posicao := fdsCntReceberItensFormPOSICAO.AsString;
  if Column.index = 1 then
  begin
    if posicao = 'AB' then
    begin
      if fdsCntReceberItensFormDT_VENC.AsDateTime <= Now then
      begin
        Bitmap := imgFlagRed.Picture.Bitmap
      end
      else
      begin
        Bitmap := imgFlagYellow.Picture.Bitmap
      end;
    end
    else if (posicao = 'PG')OR (posicao = 'RN') then
      Bitmap := imgFlagGreen.Picture.Bitmap;

    with TDBGrid(Sender) do
    begin
      Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
        (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
      // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
    end;
  end;
end;

procedure TfrmCntReceber.RetornaTodosReceber;
begin
  if rgbModoVisualizacao.ItemIndex = 0 then
  begin
    with fdsCntReceber do
    begin
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Prepare;
      OrderClause := 'R.ID';
      Open;
    end;
  end
  else
  begin
    with fdsCntReceberItens do
    begin
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Prepare;
      OrderClause := 'RI.ID';
      Open;
    end;
  end;
end;

procedure TfrmCntReceber.RetornaTotalReceber(index: Integer);
var
  utils: TUtils;
  posicao, tempTotal: string;
begin

  tempTotal := '0';
  if index <> 3  then
  begin
    with qrySomaReceber do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VALOR - VALOR_PAGO) AS TOTAL FROM CNT_RECEBER_ITEM RI ');

      if index = 0 then
      begin
        SQL.Add('WHERE RI.POSICAO = :POSICAO');
        ParamByName('POSICAO').AsString := 'AB';

        if (chkPeriodo.Checked) then
        begin
          SQL.Add(' AND RI.DT_VENC BETWEEN :DT_INC1 AND :DT_INC2');
          ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
          ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
        end;
      end;

      if index = 1 then
      begin
        if (chkPeriodo.Checked) then
        begin
          SQL.Add('WHERE RI.POSICAO = :POSICAO AND (RI.DT_VENC BETWEEN :DT_INC1 AND :DT_INC2)');
          ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
          ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
        end
        else
        begin
          SQL.Add('WHERE RI.POSICAO = :POSICAO AND RI.DT_VENC > :DT_VENC');
          ParamByName('DT_VENC').AsDateTime := Now;
        end;
        ParamByName('POSICAO').AsString := 'AB';
      end;

      if index = 2 then
      begin
        SQL.Add('WHERE RI.POSICAO = :POSICAO AND RI.DT_VENC <= :DT_VENC');
        ParamByName('POSICAO').AsString := 'AB';
        ParamByName('DT_VENC').AsDateTime := Now;
      end;

      if index = 4 then
      begin
        SQL.Add('WHERE RI.POSICAO = :POSICAO');
        ParamByName('POSICAO').AsString := 'RN';
      end;

      if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
      begin
        // RetornaIDCliente(Trim(edtPesqCliente.Text));
        if fdsCliente.RecordCount > 0 then
        begin
          SQL.Add(' AND RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE)');
          ParamByName('IDCLIENTE').AsInteger := fdsClienteID.AsInteger;
        end
      end;

      if (chkTipoDoc.Checked) and not(cbxTipoDoc.Value = 'TD') then
      begin
        SQL.Add(' AND RI.PREFIXO = :PREFIXO');
        ParamByName('PREFIXO').AsString := cbxTipoDoc.Value;
      end;

      if (chkReferencia.Checked) and not(Trim(edtPesqRef.Text) = 'TODOS') then
      begin
        SQL.Add(' AND RI.REFERENCIA = :REFERENCIA');
        ParamByName('REFERENCIA').AsString := Trim(edtPesqRef.Text);
      end;

      if (chkNumVenda.Checked) and not(Trim(edtPesqNVenda.Text) = 'TODOS') then
      begin
        SQL.Add(' AND RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDVENDA = :IDVENDA)');
        ParamByName('IDVENDA').AsString := Trim(edtPesqNVenda.Text);
      end;

      Prepare;
      ExecQuery;

      tempTotal := qrySomaReceber.FieldByName('TOTAL').AsString;

      if tempTotal = '' then
        tempTotal := '0';
    end;
  end;

  lblTotReceber.Caption := utils.AdicionaMascaraDinheiro(tempTotal);

end;

procedure TfrmCntReceber.RetornaTotalRecebido(index: Integer);
var
  utils: TUtils;
  posicao, tempTotal: string;
begin
  tempTotal := '';
  with qrySomaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VALOR_PAGO) AS TOTAL FROM CNT_RECEBER_ITEM RI ');

    SQL.Add('WHERE RI.POSICAO = :POSICAO');

    if index = 0 then
    begin
      ParamByName('POSICAO').AsString := 'AB';
      // SQL.Add('WHERE RI.POSICAO <> :POSICAO');
      // ParamByName('POSICAO').AsString := 'CA';
    end;
    // else
    // SQL.Add('WHERE RI.POSICAO = :POSICAO');

    if index = 1 then
    begin
      SQL.Add(' AND RI.DT_VENC > CURRENT_DATE');
      ParamByName('POSICAO').AsString := 'AB';
    end;

    if index = 2 then
    begin
      SQL.Add(' AND RI.DT_VENC <= CURRENT_DATE');
      ParamByName('POSICAO').AsString := 'AB';
    end;

    if index = 3 then
    begin
      ParamByName('POSICAO').AsString := 'PG';
    end;

    if index = 4 then
    begin
      ParamByName('POSICAO').AsString := 'RN';
    end;

    if (chkPeriodo.Checked) then
    begin
      if (index = 0) or (index = 1)  then
        SQL.Add(' AND RI.DT_VENC BETWEEN :DT_INC1 AND :DT_INC2');

      if (index = 3) or(index = 4) then
        SQL.Add(' AND RI.DT_PAG BETWEEN :DT_INC1 AND :DT_INC2');

      ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
      ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
    end;

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      // RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
      begin
        SQL.Add(' AND RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE)');
        ParamByName('IDCLIENTE').AsInteger := fdsClienteID.AsInteger;
      end
    end;

    if (chkTipoDoc.Checked) and not(cbxTipoDoc.Value = 'TD') then
    begin
      SQL.Add(' AND RI.PREFIXO = :PREFIXO');
      ParamByName('PREFIXO').AsString := cbxTipoDoc.Value;
    end;

    {if (chkNCheque.Checked) and not(Trim(edtPesqNCheque.Text) = 'TODOS') then
    begin
      SQL.Add(' AND RI.ID IN (SELECT CH.IDRECEBER_ITEM FROM CNT_RECEBER_CHEQUE CH WHERE NUM_CHEQUE = :NUM_CHEQUE)');
      ParamByName('NUM_CHEQUE').AsString := Trim(edtPesqNCheque.Text);
    end;}
    if (chkReferencia.Checked) and not(Trim(edtPesqRef.Text) = 'TODOS') then
    begin
      SQL.Add(' AND RI.REFERENCIA = :REFERENCIA');
      ParamByName('REFERENCIA').AsString := Trim(edtPesqRef.Text);
    end;

    if (chkNumVenda.Checked) and not(Trim(edtPesqNVenda.Text) = 'TODOS') then
    begin
      SQL.Add(' AND RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDVENDA = :IDVENDA)');
      ParamByName('IDVENDA').AsString := Trim(edtPesqNVenda.Text);
    end;

    Prepare;
    ExecQuery;

    tempTotal := qrySomaReceber.FieldByName('TOTAL').AsString;

    if tempTotal = '' then
      tempTotal := '0';
  end;

  lblTotRecebido.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmCntReceber.rgbClienteMovCheckBoxClick(Sender: TObject);
begin
  if not(rgbClienteMov.Checked) then
  begin
    edtPesqClienteMov.Text := 'TODOS';
    edtCodigoClienteMov.Text := 'C�DIGO';
    edtPesqClienteMov.Font.Color := clGray;
  end
  else
  begin
    edtPesqClienteMov.Font.Color := clBtnText;
    edtCodigoClienteMov.SetFocus;
  end;
end;

procedure TfrmCntReceber.rgbModoVisualizacaoChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  VerificaModoVisualizacaoPOG;
  CalculaTotais(NewIndex);
end;

procedure TfrmCntReceber.rgbOrigemReceberChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  PesquisaMovimentoRec(NewIndex);
end;

procedure TfrmCntReceber.rgbPosicaoChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  fdsCntReceberItens.First;
  while not(fdsCntReceberItens.Eof) do
  begin
    if fdsCntReceberItensBAIXA_AGRUPADA.AsString='S' then
    begin
      fdsCntReceberItens.Edit;
      fdsCntReceberItensBAIXA_AGRUPADA.AsString:='N';
      fdsCntReceberItens.Post;
    end;
    fdsCntReceberItens.Next;
  end;

  if NewIndex = 2 then
    chkPeriodo.Checked := False;

  if NewIndex = 3 then
    pnlPeriodo.Caption := 'Pagamento'
  else
    pnlPeriodo.Caption := 'Vencimento';

  PesquisarAnalitico(NewIndex);

  RetornaTotalReceber(NewIndex);
  RetornaTotalRecebido(NewIndex);
end;

procedure TfrmCntReceber.rgbRefCheckBoxClick(Sender: TObject);
begin
   if not(rgbRef.Checked) then
  begin
    edtReferencia.Text := 'TODOS';
    edtReferencia.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.rgbVendaMovCheckBoxClick(Sender: TObject);
begin
  if not(rgbVendaMov.Checked) then
  begin
    edtVendaMov.Text := 'TODOS';
    edtVendaMov.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.btnPesqClienteReneClick(Sender: TObject);
begin
 PesqClientes(edtCodigoClienteRene,edtPesqClienteRene,btnPesqRene);
end;

procedure TfrmCntReceber.rgbCaixaCheckBoxClick(Sender: TObject);
begin
  if not(rgbCaixa.Checked) then
  begin
    edtVendaRene.Text := 'TODOS';
    edtVendaRene.Font.Color := clGray;
  end;
end;

procedure TfrmCntReceber.RzPageControl1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  if NewIndex = 1 then
  begin
   pnlPosicao.visible:= false;
  end;
end;

procedure TfrmCntReceber.tbsFormularioShow(Sender: TObject);
begin
 pnlPosicao.visible:= false;
 RetornaDadosForm;
end;

procedure TfrmCntReceber.tbsHistoricoShow(Sender: TObject);
begin
 btnReceber.Visible:=false;
 btnRenegociar.Visible:= false;
 btnIncluir.Visible:=false;
 btnCancelarReceber.Visible:=false;
 edtValorSelect.Visible:=false;
 lblTotSelecionado.Visible:=false;
// rgbPosicao.visible:=false;
 PesquisaMovimentoRec(rgbOrigemReceber.ItemIndex);
end;

procedure TfrmCntReceber.tbsNotasShow(Sender: TObject);
begin
  pnlPosicao.visible:= True;
  fdsCntReceber.Close;
  fdsCntReceberItensForm.Close;
  btnReceber.Visible := True;

  if fdsCntReceberItensPOSICAO.AsString = 'AB' then
    btnReceber.Enabled := True
  else
    btnReceber.Enabled := False;
end;

procedure TfrmCntReceber.tbsRenegociarShow(Sender: TObject);
begin
 btnReceber.Visible:=false;
 btnRenegociar.Visible:= false;
 btnIncluir.Visible:=false;
 btnCancelarReceber.Visible:=false;
 edtValorSelect.Visible:=false;
 lblTotSelecionado.Visible:=false;
 dtpInicioRene.Date := StartOfTheMonth(Date);
 PesqRenegociar;
end;

procedure TfrmCntReceber.lblVendaClick(Sender: TObject);
begin
  Try
    if fdsCntReceberTIPO_VENDA.AsString = 'VE' then
    begin
      if frmVendas = nil then
      begin
        frmVendas := TfrmVendas.Create(nil);
        frmVendas.chkNumVenda.Checked := True;
        frmVendas.edtPesqNumVenda.Text := edtNumVenda.Text;
        frmVendas.btnPesquisar.Click;
      end;
    end;

    if fdsCntReceberTIPO_VENDA.AsString = 'PD' then
    begin
      if frmPedidos = nil then
      begin
        frmPedidos := TfrmPedidos.Create(nil);
        frmPedidos.chkNumVenda.Checked := True;
        frmPedidos.edtPesqNumVenda.Text := edtNumVenda.Text;
        frmPedidos.btnPesquisar.Click;
      end;
    end;

  Finally
  End;
end;

procedure TfrmCntReceber.lblVendaMouseLeave(Sender: TObject);
begin
  lblVenda.Font.Color := clWindowText;
  lblVenda.Cursor := crDefault;
end;

procedure TfrmCntReceber.lblVendaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lblVenda.Font.Color := clBlue;
  lblVenda.Cursor := crHandPoint;
end;

procedure TfrmCntReceber.RetornaClienteId(idCliente: string);
begin
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDCLIENTE', 'CL.ID = ' + idCliente, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCntReceber.RetornaCntReceberIdReceberItem(idReceber: string);
begin
  with fdsCntReceber do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('ID', 'R.ID = ' + idReceber + ' AND R.IDFILIAL = ' +
      fdsCntReceberItensIDFILIAL.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCntReceber.RetornaCntReceberItemIDReceber(idReceber: string);
begin
  with fdsCntReceberItensForm do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDRECEBER', 'RI.IDRECEBER = ' + idReceber +
      ' AND RI.IDFILIAL = ' + fdsCntReceberItensIDFILIAL.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCntReceber.RetornaDadosForm;
begin
  if fdsCntReceberItens.RecordCount > 0 then
  begin
    if rgbModoVisualizacao.ItemIndex = 1 then
      RetornaCntReceberIdReceberItem(fdsCntReceberItensIDRECEBER.AsString);

    RetornaCntReceberItemIDReceber(fdsCntReceberItensIDRECEBER.AsString);

    RetornaClienteId(fdsCntReceberIDCLIENTE.AsString);

    btnReceber.Visible := True;
  end
  else
  begin
    fdsCntReceberItensForm.Close;
    fdsCntReceber.Close;
    fdsCliente.Close;
  end;
end;

procedure TfrmCntReceber.RetornaIDCliente(cliente: string);
begin
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('NOMECLIENTE', 'Upper(CL.NOME) like UPPER(' +
      QuotedStr(cliente + '%') + ')', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCntReceber.tbsSinteticoShow(Sender: TObject);
begin
  fdsCntReceberItens.Close;
  fdsCntReceberItensForm.Close;
  btnReceber.Visible := False;
  chkTipoDoc.Checked := False;
  chkReferencia.Checked := False;
end;

procedure TfrmCntReceber.UltimoRecebimento1Click(Sender: TObject);
begin
  if tbsHistorico.Showing = true then
  begin
   with fdsMovCntReceber do
   begin
     close;
     Conditions.Clear;
     if (edtCodigoClienteMov.Text<>'C�DIGO') AND (edtCodigoClienteMov.Text<>EmptyStr) then
     begin
      Conditions.AddCondition('ID','MR.ID = (SELECT MAX(ID)FROM MOVIMENTO_CNT_RECEBER WHERE IDCLIENTE ='+QuotedStr(edtCodigoClienteMov.Text)+')',true);
     end
     else
     begin
      Conditions.AddCondition('ID','MR.ID = (SELECT MAX(ID) FROM MOVIMENTO_CNT_RECEBER )',true);
     end;
     Conditions.Apply;
     Prepare;
     open;
   end;

  end
  else
  begin
   with fdsMovCntReceber do
   begin
     close;
     Conditions.Clear;
     if (edtClienteCodigo.Text<>'C�DIGO') AND (edtClienteCodigo.Text<>EmptyStr) then
     begin
      Conditions.AddCondition('ID','MR.ID = (SELECT MAX(ID) FROM MOVIMENTO_CNT_RECEBER WHERE IDCLIENTE ='+QuotedStr(edtClienteCodigo.Text)+')',true);
     end
     else
     begin
       Conditions.AddCondition('ID','MR.ID = (SELECT MAX(ID) FROM MOVIMENTO_CNT_RECEBER )',true);
     end;
     Conditions.Apply;
     Prepare;
     open;
   end;
  end;
 DM.cliente:= fdsMovCntReceberCLIENTE.AsString;
 DM.valor:= fdsMovCntReceberVLR_TOTAL_PG.AsString;
 DM.dtInicio:=fdsMovCntReceberDT_MOVIMENTO.AsDateTime+fdsMovCntReceberHR_MOVIMENTO.AsDateTime;
 ImprimeComprovante(fdsMovCntReceberID.AsString);
 if tbsHistorico.Showing = true then
 begin
  PesquisaMovimentoRec(rgbOrigemReceber.ItemIndex);
 end
 else
 begin
   PesquisarAnalitico(rgbPosicao.ItemIndex);
 end;
end;

procedure TfrmCntReceber.VerificaModoVisualizacao;
begin
  if rgbModoVisualizacao.ItemIndex = 0 then
  begin
    fdsCntReceberItens.Close;
    fdsCntReceber.Close;
    fdsCntReceber.Conditions.Clear;
    fdsCntReceber.Conditions.Apply;
    fdsCntReceber.Open;
    pgcControl.Pages[0].TabVisible := True;
    pgcControl.Pages[1].TabVisible := False;
    pgcControl.ActivePageIndex := 0;
    pnlPeriodo.Caption := 'Lan�amento';
  end
  else
  begin
    fdsCntReceber.Close;
    fdsCntReceberItens.Close;
    fdsCntReceberItens.Conditions.Clear;
    fdsCntReceberItens.Conditions.Apply;
    fdsCntReceberItens.Open;
    pgcControl.Pages[0].TabVisible := False;
    pgcControl.Pages[1].TabVisible := True;
    pgcControl.ActivePageIndex := 1;
    pnlPeriodo.Caption := 'Vencimento';
  end;

  chkPeriodo.Checked := False;
  chkCliente.Checked := False;
  edtPesqCliente.Text := 'Todos';
  edtPesqCliente.Font.Color := clGray;
  rgbPosicao.ItemIndex := 0;
end;

procedure TfrmCntReceber.VerificaModoVisualizacaoPOG;
begin
  if rgbModoVisualizacao.ItemIndex = 0 then
  begin
    fdsCntReceber.Close;
    fdsCntReceberItens.Close;
    fdsCntReceberItens.Conditions.Clear;
    fdsCntReceberItens.Conditions.Apply;
    fdsCntReceberItens.Open;
    pgcControl.Pages[0].TabVisible := False;
    pgcControl.Pages[1].TabVisible := True;
    pgcControl.ActivePageIndex := 1;
    pnlPeriodo.Caption := 'Vencimento';
    btnCancelarReceber.Visible := False;
  end
  else
  begin
    fdsCntReceberItens.Close;
    fdsCntReceber.Close;
    fdsCntReceber.Conditions.Clear;
    fdsCntReceber.Conditions.Apply;
    fdsCntReceber.Open;
    pgcControl.Pages[0].TabVisible := True;
    pgcControl.Pages[1].TabVisible := False;
    pgcControl.ActivePageIndex := 0;
    pnlPeriodo.Caption := 'Lan�amento';
    btnCancelarReceber.Visible := True;
  end;

  chkPeriodo.Checked := False;
  chkCliente.Checked := False;
  edtPesqCliente.Text := 'Todos';
  edtPesqCliente.Font.Color := clGray;
  rgbPosicao.ItemIndex := 0;
end;

end.
