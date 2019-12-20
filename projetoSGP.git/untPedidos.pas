unit untPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzEdit, StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzDBEdit,
  RzLabel, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzButton, RzPanel,
  RzBckgnd, DBCtrls, Provider, pFIBClientDataSet, DBClient, frxClass, frxDBSet,
  frxExportPDF, ImgList, cxGraphics, RzRadChk, RzDBChk, FIBQuery, pFIBQuery,
  Menus, RzSplit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExStdCtrls, JvCheckBox, JvButton, JvCtrls, ActnList,
  RzRadGrp, System.Actions, Vcl.Imaging.pngimage, PngImageList, DateUtils,
  Vcl.Buttons, PngBitBtn, ClipBrd, System.Math, JvMemoryDataset, JvBaseDlg,
  JvProgressDialog;

type
  TfrmPedidos = class(TForm)
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    fdsPedido: TpFIBDataSet;
    dsPedido: TDataSource;
    fdsPedidoID: TFIBBCDField;
    fdsPedidoDT_INC: TFIBDateField;
    fdsPedidoSTATUS: TFIBStringField;
    fdsPedidoIDCLIENTE: TFIBBCDField;
    fdsPedidoIDVENDEDOR: TFIBBCDField;
    fdsPedidoIDFORMA_PAG: TFIBBCDField;
    fdsPedidoVLR_TOTITEM: TFIBBCDField;
    fdsPedidoVLR_DESCONTO: TFIBBCDField;
    fdsPedidoVLR_FRETE: TFIBBCDField;
    fdsPedidoVLR_TOTAL: TFIBBCDField;
    fdsPedidoPESO: TFIBBCDField;
    fdsPedidoPREFIXO: TFIBStringField;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    dsVendedor: TDataSource;
    fdsFormaPagamento: TpFIBDataSet;
    FIBBCDField1: TFIBBCDField;
    FIBStringField1: TFIBStringField;
    dsFormaPagamento: TDataSource;
    fdsPedidoDT_ALT: TFIBDateField;
    fdsPedidoDT_CONFIRMACAO: TFIBDateField;
    fdsPedidoDT_FECHAMENTO: TFIBDateField;
    cdsItensPedido: TpFIBClientDataSet;
    dspItensPedido: TpFIBDataSetProvider;
    fdsItensPedido: TpFIBDataSet;
    dsItensPedido: TDataSource;
    dsItensPedidoTemp: TDataSource;
    fdsPedidoTELEFONE: TFIBStringField;
    fdsPedidoNOTA: TFIBStringField;
    fdsPedidoCLIENTE: TFIBStringField;
    fdsPedidoVENDEDOR: TFIBStringField;
    fdsPedidoST: TFIBStringField;
    btnConfirmaPedido: TRzBitBtn;
    btnFechaPedido: TRzBitBtn;
    fdsPedidoKM_TOTAL: TFIBSmallIntField;
    fdsPedidoRAZAOSOCIAL: TFIBStringField;
    fdsPedidoEMAIL: TFIBStringField;
    fdsPedidoENDERECO: TFIBStringField;
    fdsPedidoCEP: TFIBStringField;
    fdsPedidoBAIRRO: TFIBStringField;
    fdsPedidoCIDADE: TFIBStringField;
    fdsPedidoDOCUMENTO: TFIBStringField;
    fdsPedidoSUBTRIBUTARIA: TFIBBCDField;
    fdsPedidoFORMA_PAG: TFIBStringField;
    fdsPedidoCONTATO: TFIBStringField;
    fdsPedidoIDFILIAL: TFIBBCDField;
    fdsItensPedidoIDPEDIDO: TFIBBCDField;
    fdsItensPedidoITEM: TFIBSmallIntField;
    fdsItensPedidoIDPROD_ITEM: TFIBBCDField;
    fdsItensPedidoDT_INC: TFIBDateField;
    fdsItensPedidoDT_ALT: TFIBDateField;
    fdsItensPedidoQTN: TFIBBCDField;
    fdsItensPedidoVLR_UNITARIO: TFIBBCDField;
    fdsItensPedidoVLR_DESCONTO: TFIBBCDField;
    fdsItensPedidoVLR_TOTAL: TFIBBCDField;
    fdsItensPedidoPESO: TFIBBCDField;
    fdsItensPedidoQTN_RETORNO: TFIBBCDField;
    fdsItensPedidoMOTIVO_RETORNO: TFIBStringField;
    fdsItensPedidoNOME: TFIBStringField;
    cdsItensPedidoIDPEDIDO: TpFIBClientBCDField;
    cdsItensPedidoITEM: TSmallintField;
    cdsItensPedidoIDPROD_ITEM: TpFIBClientBCDField;
    cdsItensPedidoDT_INC: TDateField;
    cdsItensPedidoDT_ALT: TDateField;
    cdsItensPedidoQTN: TpFIBClientBCDField;
    cdsItensPedidoVLR_UNITARIO: TpFIBClientBCDField;
    cdsItensPedidoVLR_DESCONTO: TpFIBClientBCDField;
    cdsItensPedidoVLR_TOTAL: TpFIBClientBCDField;
    cdsItensPedidoPESO: TpFIBClientBCDField;
    cdsItensPedidoQTN_RETORNO: TpFIBClientBCDField;
    cdsItensPedidoMOTIVO_RETORNO: TStringField;
    cdsItensPedidoNOME: TStringField;
    fdsPedidoFILIAL: TFIBStringField;
    fdsItensPedidoETRE: TStringField;
    fdsItensPedidoENTREGUE: TFIBStringField;
    cdsItensPedidoENTREGUE: TStringField;
    fdsItensPedidoIDFILIAL: TFIBBCDField;
    fdsItensPedidoENVIADO_WEB: TFIBStringField;
    cdsItensPedidoIDFILIAL: TpFIBClientBCDField;
    cdsItensPedidoENVIADO_WEB: TStringField;
    qrySql: TpFIBQuery;
    ppmImprimir: TPopupMenu;
    RzSplitter1: TRzSplitter;
    RzPanel3: TRzPanel;
    pnlFilial: TRzGroupBox;
    cbxFilial: TRzComboBox;
    pnlNumVenda: TRzGroupBox;
    edtPesqNumVenda: TRzEdit;
    chkFilial: TJvCheckBox;
    chkNumVenda: TJvCheckBox;
    pnlPeriodo: TRzGroupBox;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    chkPeriodo: TJvCheckBox;
    pnlCliente: TRzGroupBox;
    edtPesqCliente: TRzEdit;
    chkCliente: TJvCheckBox;
    pnlTipoDoc: TRzGroupBox;
    cbxTipoDoc: TRzComboBox;
    chkTipoDoc: TJvCheckBox;
    btnPesquisar: TJvImgBtn;
    ActionList1: TActionList;
    impAtual: TAction;
    impSintetico: TAction;
    impAnalitico: TAction;
    ImprimirPedidoAtual1: TMenuItem;
    RelatriodePedidosSinttico1: TMenuItem;
    RelatriodePedidosAnaltico1: TMenuItem;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    pgcStatus: TRzPageControl;
    tbsStatusFechados: TRzTabSheet;
    gdrPedidoFechado: TJvDBGrid;
    tbsStatusConfirmados: TRzTabSheet;
    gdrPedidoConfirmado: TJvDBGrid;
    tbsStatusAberto: TRzTabSheet;
    gdrPedidoAberto: TJvDBGrid;
    tbsForm: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    lblCidade: TRzLabel;
    lblDtInc: TRzLabel;
    RzLabel1: TRzLabel;
    lblVendedor: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    btnPesqCliente: TRzBitBtn;
    edtDt_Inc: TRzDBEdit;
    edtID: TRzDBEdit;
    lcbVendedor: TRzDBLookupComboBox;
    lbcFormaPagamento: TRzDBLookupComboBox;
    RzDBEdit2: TRzDBEdit;
    edtDesconto: TRzDBEdit;
    edtFrete: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    edtSubTrib: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    gdrItens: TJvDBGrid;
    pnlLancItens: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    edtQtnItem: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    edtItemDesconto: TRzDBEdit;
    btnItemGravar: TRzBitBtn;
    btnItemCancelar: TRzBitBtn;
    btnItemExcluir: TRzBitBtn;
    btnItemAlterar: TRzBitBtn;
    btnItensIncluir: TRzBitBtn;
    edtItemNome: TRzEdit;
    fdsFilial: TpFIBDataSet;
    fdsFilialID: TFIBBCDField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    rgbStatus: TRzRadioGroup;
    fdsCliente: TpFIBDataSet;
    fdsClienteID: TFIBBCDField;
    fdsClienteNOME: TFIBStringField;
    fdsClienteTELEFONE: TFIBStringField;
    fdsClienteTIPO: TFIBStringField;
    fdsClienteCIDADE: TFIBStringField;
    qrySomaTotal: TpFIBQuery;
    frxDBPedido: TfrxDBDataset;
    frxDBItensPedido: TfrxDBDataset;
    PngImageList1: TPngImageList;
    fdsPedidoENVIADO_WEB: TFIBStringField;
    fdsPedidoREFERENCIA: TFIBStringField;
    RzDBEdit12: TRzDBEdit;
    RzLabel22: TRzLabel;
    fdsPedidoPRAZO: TFIBStringField;
    RzLabel23: TRzLabel;
    edtItemCodigo: TRzEdit;
    RzLabel24: TRzLabel;
    fdsItensPedidoCOD_FABRICA: TFIBStringField;
    cdsItensPedidoENTRE: TStringField;
    cdsItensPedidoCOD_FABRICA: TStringField;
    fdsPedidoVISUALIZADO: TFIBStringField;
    fdsCntReceber_Item: TpFIBDataSet;
    fdsCntReceber_ItemREFERENCIA: TFIBStringField;
    fdsCntReceber_ItemPARCELA: TFIBStringField;
    fdsCntReceber_ItemDT_VENC: TFIBDateField;
    fdsCntReceber_ItemVALOR: TFIBBCDField;
    frxReceber_Item: TfrxDBDataset;
    fdsPedidoDT_PAGAMENTO: TFIBDateField;
    fdsPedidoIDPEDIDO_APP: TFIBBCDField;
    fdsPedidoCELULAR: TFIBStringField;
    btnFaturar: TRzBitBtn;
    pnlVendedor: TRzGroupBox;
    cbxVendedor: TRzComboBox;
    chkVendedor: TJvCheckBox;
    fdsPedidoUF: TFIBStringField;
    fdsPedidoIE: TFIBStringField;
    fdsPedidoCIDADE_CODIGO: TFIBBCDField;
    fdsItensPedidoNCM: TFIBStringField;
    fdsItensPedidoCEST: TFIBStringField;
    fdsItensPedidoUNIDADE: TFIBStringField;
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblTituloTotal: TRzLabel;
    lblTotal: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnInprimir: TRzBitBtn;
    fdsPedidoCODIGO_NFE: TFIBIntegerField;
    fdsPedidoCHAVE_CONSULTA: TFIBStringField;
    fdsItensPedidoCSOSN: TFIBStringField;
    fdsItensPedidoIBPT_NACIONA_FEDERAL: TFIBBCDField;
    fdsPedidoNUMERO_PROTOCOLO: TFIBStringField;
    fdsNF_Cancelada: TpFIBDataSet;
    fdsNF_CanceladaID: TFIBBCDField;
    fdsNF_CanceladaIDFILIAL: TFIBBCDField;
    fdsNF_CanceladaDT_INC: TFIBDateField;
    fdsNF_CanceladaIDPEDIDO: TFIBBCDField;
    fdsNF_CanceladaIDCLIENTE: TFIBBCDField;
    fdsNF_CanceladaDT_EMISSAO: TFIBDateField;
    fdsNF_CanceladaVLR_TOTAL: TFIBBCDField;
    fdsNF_CanceladaCHAVE_CONSULTA_NF: TFIBStringField;
    fdsNF_CanceladaNUMERO_PROTOCOLO_NF: TFIBStringField;
    fdsNF_CanceladaCHAVE_CONSULTA_CANC: TFIBStringField;
    fdsNF_CanceladaNUMERO_PROTOCOLO_CANC: TFIBStringField;
    fdsNF_CanceladaENVIADO_WEB: TFIBStringField;
    PngImageList2: TPngImageList;
    cdsItensPedidoNCM: TStringField;
    cdsItensPedidoCEST: TStringField;
    cdsItensPedidoUNIDADE: TStringField;
    cdsItensPedidoCSOSN: TStringField;
    cdsItensPedidoIBPT_NACIONA_FEDERAL: TpFIBClientBCDField;
    fdsPedidoNUMERO: TFIBStringField;
    fdsItensPedidoORDEM: TFIBIntegerField;
    cdsItensPedidoORDEM: TIntegerField;
    fdsPedidoTIPO_DESC_ACRESC: TFIBStringField;
    fdsPedidoOBS: TFIBStringField;
    fdsPedidoCHAVE_NF_DEVOLUCAO: TFIBStringField;
    fdsPedidoCOMPLEMENTO: TFIBStringField;
    RzDBEdit1: TRzDBEdit;
    impItensVendidos: TAction;
    RelatriodeItensVendidos1: TMenuItem;
    fdsItensVendidos: TpFIBDataSet;
    fdsItensVendidosIDPROD_ITEM: TFIBBCDField;
    fdsItensVendidosNOMEPRODUTO: TFIBStringField;
    fdsItensVendidosSUM: TFIBBCDField;
    frxItensVendidos: TfrxDBDataset;
    ImpTotalPorCliente: TAction;
    fdsPedidosClienteAgrup: TpFIBDataSet;
    frxPedidosClienteAgrup: TfrxDBDataset;
    fdsPedidosClienteAgrupID: TFIBBCDField;
    fdsPedidosClienteAgrupCLIENTE: TFIBStringField;
    fdsPedidosClienteAgrupQTN_TOTAL_VENDAS: TFIBIntegerField;
    fdsPedidosClienteAgrupVLR_TOTAL_VENDA: TFIBBCDField;
    RelatrioTatalporCliente1: TMenuItem;
    fdsPedidosClienteAgrupPORCENT_QTN_VENDAS: TFloatField;
    fdsPedidosClienteAgrupPORCENT_VLR_VENDAS: TFloatField;
    fdsCntReceber_ItemIDRECEBER: TFIBBCDField;
    fdsItensPedidoDESCONTO_FORMA: TFIBStringField;
    cdsItensPedidoDESCONTO_FORMA: TStringField;
    cbxTipoDesconto: TRzComboBox;
    fdsPedidoCNPJ: TFIBStringField;
    cdsFormaPag: TClientDataSet;
    cdsFormaPagMOEDA: TStringField;
    cdsFormaPagVALOR: TFloatField;
    fdsPedidoVLR_ENTRADA: TFIBBCDField;
    fdsPedidoVLR_CHEQUE: TFIBBCDField;
    fdsPedidoVLR_CARTAO: TFIBBCDField;
    fdsPedidoVLR_NOTA: TFIBBCDField;
    fdsPedidoVLR_FINANCEIRA: TFIBBCDField;
    fdsPedidoVLR_VALEDESONTO: TFIBBCDField;
    fdsPedidoVLR_TICKET: TFIBBCDField;
    fdsPedidoTROCO: TFIBBCDField;
    frxFormaPagPedido: TfrxDBDataset;
    cdsContReceberItens: TJvMemoryData;
    cdsContReceberItensREFERENCIA: TStringField;
    cdsContReceberItensPARCELA: TStringField;
    cdsContReceberItensDT_VENC: TDateTimeField;
    cdsContReceberItensVALOR: TFloatField;
    cdsContReceberItensIDRECEBER: TIntegerField;
    fdsCntReceber: TpFIBDataSet;
    fdsCntReceberID: TFIBBCDField;
    cdsContReceberItensPREFIXO: TStringField;
    fdsCntReceber_ItemPREFIXO: TFIBStringField;
    btnReiprimirNota: TRzBitBtn;
    frxPDFExport1: TfrxPDFExport;
    fdsOrcamento: TpFIBDataSet;
    fdsOrcamentoID: TFIBBCDField;
    fdsOrcamentoIDFILIAL: TFIBBCDField;
    fdsOrcamentoIDVENDEDOR: TFIBBCDField;
    fdsOrcamentoIDCLIENTE: TFIBBCDField;
    fdsOrcamentoDT_INC: TFIBDateField;
    fdsOrcamentoVLR_TOTITEM: TFIBBCDField;
    fdsOrcamentoVLR_FRETE: TFIBBCDField;
    fdsOrcamentoVLR_TOTAL: TFIBBCDField;
    fdsOrcamentoDT_ALT: TFIBDateField;
    fdsOrcamentoPREFIXO: TFIBStringField;
    fdsOrcamentoOBS: TFIBStringField;
    fdsOrcamentoSTATUS: TFIBStringField;
    rgbTipo: TRzRadioGroup;
    edtClienteCodigo: TRzEdit;
    btnPesqClientes: TRzBitBtn;
    PngImageList3: TPngImageList;
    fdsItensPedidoCFOP: TFIBStringField;
    png20x20: TPngImageList;
    JvProgressDialog1: TJvProgressDialog;
    fdsNFesFaturamento: TpFIBDataSet;
    fdsNFesFaturamentoID: TFIBBCDField;
    fdsNFesFaturamentoIDFILIAL: TFIBBCDField;
    fdsNFesFaturamentoDT_INC: TFIBDateField;
    fdsNFesFaturamentoDT_ALT: TFIBDateField;
    fdsNFesFaturamentoDT_EMISSAO: TFIBDateField;
    fdsNFesFaturamentoSTATUS: TFIBStringField;
    fdsNFesFaturamentoIDCLIENTE: TFIBBCDField;
    fdsNFesFaturamentoVLR_TOTITEM: TFIBBCDField;
    fdsNFesFaturamentoVLR_DESCONTO: TFIBBCDField;
    fdsNFesFaturamentoVLR_FRETE: TFIBBCDField;
    fdsNFesFaturamentoVLR_TOTAL: TFIBBCDField;
    fdsNFesFaturamentoCODIGO_NFE: TFIBIntegerField;
    fdsNFesFaturamentoCHAVE_CONSULTA: TFIBStringField;
    fdsNFesFaturamentoNUMERO_PROTOCOLO: TFIBStringField;
    fdsNFesFaturamentoNATUREZA_OPERACAO: TFIBStringField;
    fdsNFesFaturamentoDT_SAIDA: TFIBDateField;
    fdsNFesFaturamentoORIGEM_PEDIDO_VENDA: TFIBStringField;
    fdsNFesFaturamentoIDPEDIDO: TFIBIntegerField;
    btnDuplicar: TRzBitBtn;
    InfoPedido: TClientDataSet;
    fdsItensPedidoREFERENCIA: TFIBStringField;
    cdsItensPedidoREFERENCIA: TStringField;
    fdsItensPedidoIDGRUPO: TFIBBCDField;
    cdsItensPedidoIDGRUPO: TpFIBClientBCDField;
    qryExcluirPedidoTemp: TpFIBQuery;
    edtOutrasDespesas: TRzDBEdit;
    Label1: TLabel;
    fdsItensPedidoVLR_OUTRAS_DESPESAS: TFIBBCDField;
    fdsPedidoVLR_OUTRAS_DESPESAS: TFIBBCDField;
    cdsItensPedidoVLR_OUTRAS_DESPESAS: TpFIBClientBCDField;
    rgbEAN: TRzRadioButton;
    rgbRef: TRzRadioButton;
    rgbFab: TRzRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure btnItensIncluirClick(Sender: TObject);
    procedure btnPesqItemPedidoClick(Sender: TObject);
    procedure btnItemGravarClick(Sender: TObject);
    procedure edtItemDescontoExit(Sender: TObject);
    procedure ControlaBtnsItens;
    procedure btnItemAlterarClick(Sender: TObject);
    procedure btnItemExcluirClick(Sender: TObject);
    procedure btnItemCancelarClick(Sender: TObject);
    procedure fdsPedidoAfterScroll(DataSet: TDataSet);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure cdsItensPedidoAfterScroll(DataSet: TDataSet);
    procedure btnConfirmaPedidoClick(Sender: TObject);
    procedure btnFechaPedidoClick(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtSubTributaria(Sender: TObject);
    procedure VisualizaPorStatus(status: string);
    procedure tbsStatusConfirmadosShow(Sender: TObject);
    procedure tbsStatusAbertoShow(Sender: TObject);
    procedure tbsStatusFechadosShow(Sender: TObject);
    procedure tbsFormShow(Sender: TObject);
    procedure tbsTabelaShow(Sender: TObject);
    procedure PesquisaPedidoCliente(status: string);
    procedure PesquisaPedidoVendedor(status: string);
    procedure PesquisaPedidoRota(status: string);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrPedidoAbertoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrPedidoConfirmadoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure gdrPedidoFechadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrPedidoAbertoKeyPress(Sender: TObject; var Key: Char);
    procedure gdrPedidoConfirmadoKeyPress(Sender: TObject; var Key: Char);
    procedure gdrPedidoFechadoKeyPress(Sender: TObject; var Key: Char);
    procedure gdrPedidoAbertoTitleClick(Column: TColumn);
    procedure gdrPedidoConfirmadoTitleClick(Column: TColumn);
    procedure gdrPedidoFechadoTitleClick(Column: TColumn);
    procedure btnGraficosClick(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure impSinteticoExecute(Sender: TObject);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure chkFilialClick(Sender: TObject);
    procedure chkNumVendaClick(Sender: TObject);
    procedure edtPesqNumVendaEnter(Sender: TObject);
    procedure edtPesqNumVendaExit(Sender: TObject);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure edtPesqClienteEnter(Sender: TObject);
    procedure edtPesqClienteExit(Sender: TObject);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure impAnaliticoExecute(Sender: TObject);
    procedure impAtualExecute(Sender: TObject);
    procedure edtFreteEnter(Sender: TObject);
    procedure edtSubTribEnter(Sender: TObject);
    procedure edtFreteExit(Sender: TObject);
    procedure edtItemCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtItemCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnFaturarClick(Sender: TObject);
    procedure chkVendedorClick(Sender: TObject);
    procedure fdsVendedorAfterOpen(DataSet: TDataSet);
    procedure nfeImprimirExecute(Sender: TObject);
    procedure nfeCancelarExecute(Sender: TObject);
    procedure gdrPedidoAbertoDblClick(Sender: TObject);
    procedure gdrPedidoConfirmadoDblClick(Sender: TObject);
    procedure gdrPedidoFechadoDblClick(Sender: TObject);
    procedure nfeInutilizarNumExecute(Sender: TObject);
    procedure impItensVendidosExecute(Sender: TObject);
    procedure ImpTotalPorClienteExecute(Sender: TObject);
    procedure fdsPedidosClienteAgrupCalcFields(DataSet: TDataSet);
    procedure lbcFormaPagamentoCloseUp(Sender: TObject);
    procedure btnReiprimirNotaClick(Sender: TObject);
    procedure rgbTipoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure edtClienteCodigoEnter(Sender: TObject);
    procedure edtClienteCodigoExit(Sender: TObject);
    procedure btnPesqClientesClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure edtOutrasDespesasEnter(Sender: TObject);
    procedure edtOutrasDespesasExit(Sender: TObject);
  private
    procedure EditaInsere;
    procedure GravaCancela(status: string);
    procedure PesquisaPedidoID(status: string);
    function MyLocateItem(chave1: string): Boolean;
    procedure ImprimirPedidoAtual;
    procedure ImprimirAnalitico;
    procedure ImprimirSintetico;
    procedure ImprimirTotalPorCliente;
    procedure ImprimirComprovantePedido;
    procedure PreparaEmissaoComprovante;
    procedure PesquisarItem;
    procedure Pesquisar(tipo: String);
    procedure RetornaClienteId(idCliente: String);
    procedure SomaTotalPedidos(posicao: string);
    procedure RetornaIDCliente(cliente: string);
    procedure ImprimirDANFE;
    procedure CancelarNFe;
    procedure ShowFinalizacaoVenda;
    procedure RetornaItensPedido();
    procedure PesquisaTipoCartao;
    procedure AbreTelaNFe;
    procedure CarregaProdutosParaNFe;
    procedure CarregaProdutoParaPedido;
    function VerificaFaturamento(nPedido: Integer): Boolean;
    function VerificaStatusFaturameto(nPedido: Integer;status:String): Boolean;
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;
  alterandoIten: Boolean;
  alterandoPedido, imprimir, apenasGerarPDF, cancelFinalizacao: Boolean;
  imprimirAnalitic: Boolean;
  pesoTotal, pesoOld: Double;
  qtn_total, vlr_total: Double;
  // usadas para calculos no relat�rio de Pedidos total agrupado por cliente
  listaItenExcluidos: array of Integer;
  idPedido,idPedidoExcl: Integer;
  pedido_Ocamento,duplicando: String;
  statusPedido, tipoDeCartao,tPedidoEX: string[2];
  DT_NF_DEVOLVIDA: TDateTime;

implementation

uses uUtils, untData, untPesqCliente, untPesqProdutoItens, untVendaFinalizacao,
  untPesqVendedor, untPesqRota, untPesqPedido, untGraficoPedidos, untPrincipal,
  untStatusNFe, untPesqVendas, untNtDevolucaoInfo, untPesqTransportadora,
  untPesqVeiculo, untTransportadoraDados, untInutilizarNFe, untNfe,
  untPedidoOuOrcamento, untMsgUsuarioNaoPermitido, uVerificaPermicao;

{$R *.dfm}

procedure TfrmPedidos.AbreTelaNFe;
var
mensagem:String;
begin
  if (fdsPedidoPREFIXO.AsString = 'PD') and (VerificaStatusFaturameto(fdsPedidoID.AsInteger,'NF')= false) then
  begin
    Try
      if frmNfe = nil then
      begin
        frmNfe := TfrmNfe.Create(nil);
        frmNfe.Show;
        frmNfe.btnIncluir.Click;
        frmNfe.btnIncItensVenda.Enabled := False;
        frmNfe.btnItemExcluir.Enabled   := False;
        frmNfe.btnItensIncluir.Enabled  := False;
        frmNfe.btnItemAlterar.Enabled   := False;
        frmNFe.edtfrete.Readonly        := True;
        frmNFe.edtOutrasdespesas.Readonly        := True;
        frmNfe.btnPesqCliente.Enabled   := False;
        RetornaItensPedido;
        CarregaProdutosParaNFe;
      end;
    Finally
      // frmNfe.Free;
    End;
  end
  else
  begin
    mensagem:='Faturamento n�o permitido!'#13'N�o sera poss�vel realizar o faturamento do pedido '+fdsPedidoID.AsString+' pois o mesmo est� v�nculado a uma NFe que j� foi transmitida a SEFAZ.';
    Application.MessageBox(pWideChar(mensagem),'Opera��o Anulada', MB_ICONEXCLAMATION + MB_OK);
    //TfrmMensagemPermissao.Mensagem(mensagem,'Opera��o Anulada','E',[mbOK]);
    abort;
  end;
end;

procedure TfrmPedidos.btnAlterarClick(Sender: TObject);
begin
  fdsPedido.Edit;
  fdsPedidoDT_ALT.AsDateTime := Now;
  pesoOld := fdsPedidoPESO.AsFloat;
  EditaInsere;
  alterandoPedido := True;
end;

procedure TfrmPedidos.btnCancelarClick(Sender: TObject);
var
  statusTemp: string[2];
begin
  statusTemp := fdsPedidoSTATUS.AsString;
  fdsPedido.Cancel;
  DM.Conexao.RollbackRetaining;
  GravaCancela(statusTemp);
end;

procedure TfrmPedidos.btnConfirmaPedidoClick(Sender: TObject);
var
  prazo: Double;
  utils: TUtils;
begin
  prazo := utils.ValidaInteiroFloat(fdsPedidoPRAZO.AsString, 'I');

  if fdsPedido.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente Confirmar esse Pedido?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          fdsPedido.Edit;
          fdsPedidoDT_CONFIRMACAO.AsDateTime := Now;
          fdsPedidoSTATUS.AsString := 'CF';
          idPedido := fdsPedidoID.AsInteger;
          fdsPedido.Post;
          DM.Conexao.CommitRetaining;

          if prazo > 0 then
            ShowFinalizacaoVenda;
          GravaCancela('AB');
        end;
    end;
  end;
end;

procedure TfrmPedidos.btnDeleteClick(Sender: TObject);
var
mensagem:String;
begin
  if fdsPedidoPREFIXO.AsString = 'PD' then
  begin
    if VerificaFaturamento(fdsPedidoID.AsInteger) = True then
    begin
    mensagem:='Erro ao Excluir o pedido : '+fdsPedidoID.AsString+#13'Esse pedido n�o pode ser excluido pois est� v�nculado a uma NFe.'#13'Caso a NFe esteja em aberto � poss�vel fazer a exclus�o da mesma e excluir o pedido desejado,em outros casos n�o ser� poss�vel realizar a opera��o.';
      Application.MessageBox(pWideChar(mensagem),'Opera��o Anulada', MB_ICONEXCLAMATION + MB_OK);
      abort;
    end;
  end;
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir o pedido ou Or�amento atual? N�o ser� possivel desfazer a opera��o.'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        try
          pgcControl.ActivePageIndex := 0;
          cdsItensPedido.Close;
          fdsItensPedido.Close;

          with qrySql do
          begin
            if fdsPedidoPREFIXO.AsString = 'PD' then
            begin
              SQL.Clear;
              SQL.Add('DELETE FROM CNT_RECEBER_CHEQUE WHERE IDRECEBER_ITEM IN ');
              SQL.Add('(SELECT ID FROM CNT_RECEBER_ITEM WHERE IDRECEBER IN ');
              SQL.Add('(SELECT ID FROM CNT_RECEBER WHERE IDVENDA = ' +
                fdsPedidoID.AsString + ' AND TIPO_VENDA = ' +
                QuotedStr('PD') + '))');
              Prepare;
              ExecQuery;

              SQL.Clear;
              SQL.Add('DELETE FROM CNT_RECEBER_ITEM WHERE IDRECEBER IN ');
              SQL.Add('(SELECT ID FROM CNT_RECEBER WHERE IDVENDA = ' +
                fdsPedidoID.AsString + ' AND TIPO_VENDA = ' +
                QuotedStr('PD') + ')');
              Prepare;
              ExecQuery;

              SQL.Clear;
              SQL.Add('DELETE FROM CNT_RECEBER WHERE IDVENDA = ' +
                fdsPedidoID.AsString + ' AND TIPO_VENDA = ' + QuotedStr('PD'));
              Prepare;
              ExecQuery;
            end;

            SQL.Clear;
            SQL.Add('DELETE FROM PEDIDO_ITEM WHERE IDPEDIDO = ' +
              fdsPedidoID.AsString);
            Prepare;
            ExecQuery;
          end;

          fdsPedido.Delete;
          DM.Conexao.CommitRetaining;

          Application.MessageBox('Pedido ou Or�amento exclu�do com sucesso!',
            'Sucesso', MB_ICONEXCLAMATION + MB_OK);

          lblTotal.Caption := intToStr(fdsPedido.RecordCount);

        except
          Application.MessageBox
            ('Erro ao excluir Pedido ou Or�amento, opera��o anulada.', 'Erro',
            MB_ICONERROR + MB_OK);
          DM.Conexao.RollbackRetaining;

        end;
      end;
  end;
end;

procedure TfrmPedidos.btnFaturarClick(Sender: TObject);
begin
  // with qrySql do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('SELECT COUNT(*) AS QTN FROM CNT_RECEBER WHERE IDVENDA = ' +
  // fdsPedidoID.AsString + ' AND TIPO_VENDA = ' + QuotedStr('PD') +
  // ' AND IDFILIAL = ' + fdsPedidoIDFILIAL.AsString);
  // Prepare;
  // ExecQuery;
  // end;
  //
  // if qrySql.FieldByName('QTN').AsInteger = 0 then
  // ShowFinalizacaoVenda
  // else
  // Application.MessageBox
  // ('Este Pedido j� foi faturado, consulte em Contas a Receber.', 'Aten��o',
  // MB_OK + MB_ICONEXCLAMATION);
  //
  // qrySql.Close;
  AbreTelaNFe;
end;

procedure TfrmPedidos.btnFechaPedidoClick(Sender: TObject);
begin
  if fdsPedido.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente Fechar esse Pedido?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          fdsPedido.Edit;
          fdsPedidoDT_FECHAMENTO.AsDateTime := Now;
          fdsPedidoSTATUS.AsString := 'FC';
          fdsPedido.Post;
          DM.Conexao.CommitRetaining;

          with qrySql do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT COUNT(*) AS QTN FROM CNT_RECEBER WHERE IDVENDA = ' +
              fdsPedidoID.AsString + ' AND TIPO_VENDA = ' + QuotedStr('PD') +
              ' AND IDFILIAL = ' + fdsPedidoIDFILIAL.AsString);
            Prepare;
            ExecQuery;
          end;

          if qrySql.FieldByName('QTN').AsInteger = 0 then
            ShowFinalizacaoVenda;

          GravaCancela('CF');
          // A id�ia � que a tela continue nos pedidos a serem confirmados
          qrySql.Close;
        end;
    end;
  end;
end;

procedure TfrmPedidos.btnFirstClick(Sender: TObject);
begin
  fdsPedido.Prior;
end;

procedure TfrmPedidos.btnGraficosClick(Sender: TObject);
begin
  { Try
    frmGraficoPedidos := TfrmGraficoPedidos.Create(nil);
    frmGraficoPedidos.ShowModal;
    Finally
    frmGraficoPedidos.Free;
    End; }
end;

procedure TfrmPedidos.btnGravarClick(Sender: TObject);
var
  utils: TUtils;
  i: Smallint;
  campoVazio: Boolean;
  tipoOperacao, tempIdItem, tempItem,mensagem: string;
  statusTemp: string[2];

begin
  campoVazio := False;
  if fdsPedidoIDVENDEDOR.AsInteger = 0 then
  begin
    Application.MessageBox('Informe um vendedor.', 'Ante��o',
      MB_OK + MB_ICONERROR);
    abort;
  end;
  if fdsPedidoIDCLIENTE.AsInteger = 0 then
  begin
    Application.MessageBox('Informe um Cliente.', 'Ante��o',
      MB_OK + MB_ICONERROR);
    abort;
  end;
  if fdsPedidoIDFORMA_PAG.AsInteger = 0 then
  begin
    Application.MessageBox('Informe um vendedor.', 'Ante��o',
      MB_OK + MB_ICONERROR);
    abort;
  end;

  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Tag = 15) then
    begin
      if utils.VerificaCampoObrigatorio(TRzDBEdit(Components[i])) then
        campoVazio := True;
    end;
  end;

  if campoVazio then
    Application.MessageBox('Existem campos obrigat�rios sem preencher.',
      'Ante��o', MB_OK + MB_ICONERROR)
  else
  begin
    if not(alterandoIten) then
    begin
      Application.MessageBox
        ('Voc� est� incluindo ou alterando um item, grave a inclus�o/altera��o deste primeiro e depois grave o pedido ou o Or�amento.',
        'Ante��o', MB_OK + MB_ICONERROR);
      edtQtnItem.SetFocus;
      abort;
    end;

    if cdsItensPedido.RecordCount = 0 then
    begin
      Application.MessageBox
        ('Voc� n�o pode gravar um Pedido ou um Or�amento sem itens vendidos.',
        'Ante��o', MB_OK + MB_ICONERROR);
      btnItensIncluir.SetFocus;
      abort;
    end;

    if fdsPedido.State = dsInsert then
      tipoOperacao := 'insert'
    else
      tipoOperacao := 'edit';
    if duplicando='S' then
    begin
      Case MessageBox(Application.Handle, Pchar('Deseja Excluir o pedido ou or�amento duplicados?'),
      'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes:
        begin
          if VerificaFaturamento(idPedidoExcl) = True then
          begin
            mensagem:='Erro ao Excluir o Pedido/Or�amento : '+fdsPedidoID.AsString+#13'Esse Pedido/Or�amento n�o pode ser excluido pois est� v�nculado a uma NFe.'#13'Caso a NFe esteja em aberto � poss�vel fazer a exclus�o da mesma e excluir o pedido/Or�amento desejado,em outros casos n�o ser� poss�vel realizar a opera��o.';
            Application.MessageBox(pWideChar(mensagem),'Opera��o Anulada.Pedido/Or�amento n�o Excluido.', MB_ICONEXCLAMATION + MB_OK);
          end
          else
          begin
            with qryExcluirPedidoTemp do
            begin
               close;
               SQL.clear;
               SQL.Add('UPDATE PEDIDO SET STATUS = '+QuotedStr('EX')+'WHERE ID = '+QuotedStr(IntToStr(idPedidoExcl)));
               prepare;
               ExecQuery;

                if tPedidoEX = 'PD' then
                begin
                  SQL.Clear;
                  SQL.Add('DELETE FROM CNT_RECEBER_CHEQUE WHERE IDRECEBER_ITEM IN ');
                  SQL.Add('(SELECT ID FROM CNT_RECEBER_ITEM WHERE IDRECEBER IN ');
                  SQL.Add('(SELECT ID FROM CNT_RECEBER WHERE IDVENDA = ' +
                    IntToStr(idPedidoExcl) + ' AND TIPO_VENDA = ' +
                    QuotedStr('PD') + '))');
                  Prepare;
                  ExecQuery;

                  SQL.Clear;
                  SQL.Add('DELETE FROM CNT_RECEBER_ITEM WHERE IDRECEBER IN ');
                  SQL.Add('(SELECT ID FROM CNT_RECEBER WHERE IDVENDA = ' +
                    IntToStr(idPedidoExcl) + ' AND TIPO_VENDA = ' +
                    QuotedStr('PD') + ')');
                  Prepare;
                  ExecQuery;

                  SQL.Clear;
                  SQL.Add('DELETE FROM CNT_RECEBER WHERE IDVENDA = ' +
                    IntToStr(idPedidoExcl) + ' AND TIPO_VENDA = ' + QuotedStr('PD'));
                  Prepare;
                  ExecQuery;
                end;
            end;
          end;
        End;
      end;
    end;

    statusTemp := fdsPedidoSTATUS.AsString;
    fdsPedidoENVIADO_WEB.AsString := 'N';
    fdsPedidoVISUALIZADO.AsString := 'S';
    fdsPedido.Post;
    cdsItensPedido.ApplyUpdates(0);
    if fdsPedidoPREFIXO.AsString = 'PD' then
    begin
      if (frmPrincipal.pedidoSimples = 'S') then
        ShowFinalizacaoVenda;
    end
    else
    Begin
      Case MessageBox(Application.Handle, Pchar('Deseja imprimir Or�amento?'),
        'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes:
          begin
            ImprimirComprovantePedido;
          end;
      End;
    End;
    DM.Conexao.CommitRetaining;

    if not(tipoOperacao = 'insert') then
    begin
      // Caso o pedido esteja em algum romaneio e o seu peso tenha sido alterado, atualiza o romaneio
      if pesoTotal <> pesoOld then
        with qrySql do
        begin
          Close;
          SQL.Clear; // Vitor Problema aqui devido a virgula
          SQL.Add('UPDATE ROMANEIO SET PESO_TOTAL = PESO_TOTAL + ' +
            StringReplace(FloatToStr(pesoTotal - pesoOld), ',', '.', []) +
            ' WHERE IDFILIAL = ' + fdsPedidoIDFILIAL.AsString +
            ' AND ID = (SELECT IDROMANEIO FROM ROMANEIO_ITEM RI WHERE RI.IDVENDA = '
            + fdsPedidoID.AsString + ' AND RI.IDFILIAL = ' +
            fdsPedidoIDFILIAL.AsString + ')');
          Prepare;
          ExecQuery;
        end;
    end;
    duplicando:='N';
    DM.Conexao.CommitRetaining;
    GravaCancela(statusTemp);
    qrySql.Close;
  end;
end;

procedure TfrmPedidos.btnIncluirClick(Sender: TObject);
begin
  pedido_Ocamento   := 'PD';
  fdsVendedor.First;
  alterandoPedido   := True;
  cdsItensPedido.Close;
  cdsItensPedido.Open;
  cdsItensPedido.EmptyDataSet;
  edtItemNome.Clear;
  fdsPedido.Append;
  fdsPedidoIDVENDEDOR.AsInteger := fdsVendedorID.AsInteger;
  fdsPedidoIDFILIAL.AsInteger   := DM.fdsConfigIDFILIAL.AsInteger;
  fdsPedidoFILIAL.AsString      := DM.fdsConfigFILIAL.AsString;
  fdsPedidoDT_INC.AsDateTime    := Now;
  if frmPrincipal.pedidoSimples = 'S' then
    fdsPedidoSTATUS.AsString := 'FC'
  else
    fdsPedidoSTATUS.AsString := 'AB';

  try
    frmPedidoOuOrcamento := TfrmPedidoOuOrcamento.Create(nil);
    frmPedidoOuOrcamento.ShowModal;
  finally
    if frmPedidoOuOrcamento.ModalResult = mrOk then
    begin
      fdsPedidoPREFIXO.AsString := pedido_Ocamento;
    end;
    frmPedidoOuOrcamento.free;
  end;

  fdsPedidoVISUALIZADO.AsString := 'S';
  fdsPedidoVLR_TOTITEM.AsFloat  := 0;
  fdsPedidoVLR_TOTAL.AsFloat    := 0;
  fdsPedidoVLR_DESCONTO.AsFloat := 0;
  btnItemAlterar.Enabled        := False;
  btnItemExcluir.Enabled        := False;
  pesoTotal                     := 0;
  EditaInsere;
  edtItemCodigo.Clear;
end;

procedure TfrmPedidos.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmPedidos.Left + 180, frmPedidos.top + 110);
end;

procedure TfrmPedidos.btnItemAlterarClick(Sender: TObject);
begin
  cdsItensPedido.Edit;

  pesoTotal := pesoTotal - (cdsItensPedidoPESO.AsFloat *
    cdsItensPedidoQTN.AsFloat);
  fdsPedidoVLR_DESCONTO.AsFloat := fdsPedidoVLR_DESCONTO.AsFloat -
    (cdsItensPedidoVLR_DESCONTO.AsFloat * cdsItensPedidoQTN.AsFloat);
  fdsPedidoVLR_TOTITEM.AsFloat  := fdsPedidoVLR_TOTITEM.AsFloat -
    (cdsItensPedidoVLR_UNITARIO.AsFloat * cdsItensPedidoQTN.AsFloat);
  fdsPedidoVLR_TOTAL.AsFloat    := fdsPedidoVLR_TOTAL.AsFloat -
    cdsItensPedidoVLR_TOTAL.AsFloat;

  edtItemDesconto.SetFocus;
  ControlaBtnsItens;
end;

procedure TfrmPedidos.btnItemCancelarClick(Sender: TObject);
begin
  if cdsItensPedido.State = dsEdit then
  begin
    fdsPedidoVLR_DESCONTO.AsFloat := fdsPedidoVLR_DESCONTO.AsFloat +
      (cdsItensPedidoVLR_DESCONTO.AsFloat * cdsItensPedidoQTN.AsFloat);
    pesoTotal := pesoTotal + (cdsItensPedidoPESO.AsFloat *
      cdsItensPedidoQTN.AsFloat);
    fdsPedidoPESO.AsFloat         := pesoTotal;
    fdsPedidoVLR_TOTITEM.AsFloat  := fdsPedidoVLR_TOTITEM.AsFloat +
      (cdsItensPedidoVLR_UNITARIO.AsFloat * cdsItensPedidoQTN.AsFloat);
    fdsPedidoVLR_TOTAL.AsFloat    := fdsPedidoVLR_TOTAL.AsFloat +
      cdsItensPedidoVLR_TOTAL.AsFloat;
  end;
  cdsItensPedido.Cancel;
  ControlaBtnsItens;
end;

procedure TfrmPedidos.btnItemExcluirClick(Sender: TObject);
var
  i: Smallint;
begin
  i := 1;
  if fdsPedido.State = dsEdit then
  begin
    SetLength(listaItenExcluidos, Length(listaItenExcluidos) + 1);
    listaItenExcluidos[Length(listaItenExcluidos) - 1] :=
      cdsItensPedidoIDPROD_ITEM.AsInteger;
  end;

  pesoTotal := pesoTotal - (cdsItensPedidoPESO.AsFloat *
    cdsItensPedidoQTN.AsFloat);
  fdsPedidoPESO.AsFloat := pesoTotal;
  fdsPedidoVLR_DESCONTO.AsFloat := fdsPedidoVLR_DESCONTO.AsFloat -
    (cdsItensPedidoVLR_DESCONTO.AsFloat * cdsItensPedidoQTN.AsFloat);
  fdsPedidoVLR_TOTITEM.AsFloat := fdsPedidoVLR_TOTITEM.AsFloat -
    (cdsItensPedidoVLR_UNITARIO.AsFloat * cdsItensPedidoQTN.AsFloat);
  fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat -
    cdsItensPedidoVLR_TOTAL.AsFloat;
  cdsItensPedido.Delete;

  cdsItensPedido.First;
  while not(cdsItensPedido.Eof) do
  begin
    cdsItensPedido.Edit;
    cdsItensPedidoORDEM.AsInteger := i;
    cdsItensPedido.Post;
    Inc(i);
    cdsItensPedido.Next;
  end;

end;

procedure TfrmPedidos.btnItemGravarClick(Sender: TObject);
begin
  if not(Trim(edtQtnItem.Text) = EmptyStr) and (cdsItensPedidoQTN.AsInteger > 0)
  then
  begin
    cdsItensPedidoVLR_TOTAL.AsFloat :=
      (cdsItensPedidoVLR_UNITARIO.AsFloat - cdsItensPedidoVLR_DESCONTO.AsFloat)
      * cdsItensPedidoQTN.AsFloat;
    if cdsItensPedidoENTREGUE.AsString = '' then
      cdsItensPedidoENTREGUE.AsString := 'N';

    if cdsItensPedido.State in [dsInsert] then
      cdsItensPedidoORDEM.AsInteger := cdsItensPedido.RecordCount + 1;

    fdsPedidoVLR_DESCONTO.AsFloat := fdsPedidoVLR_DESCONTO.AsFloat +
      (cdsItensPedidoVLR_DESCONTO.AsFloat * cdsItensPedidoQTN.AsFloat);
    pesoTotal := pesoTotal + (cdsItensPedidoPESO.AsFloat *
      cdsItensPedidoQTN.AsFloat);
    fdsPedidoPESO.AsFloat := pesoTotal;
    fdsPedidoVLR_TOTITEM.AsFloat := fdsPedidoVLR_TOTITEM.AsFloat +
      (cdsItensPedidoVLR_UNITARIO.AsFloat * cdsItensPedidoQTN.AsFloat);
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat +
      cdsItensPedidoVLR_TOTAL.AsFloat;

    cdsItensPedido.Post;

    alterandoIten := False;
    ControlaBtnsItens;
    edtItemCodigo.Clear;
    btnItensIncluir.SetFocus;
  end
  else
    edtQtnItem.SetFocus;

end;

procedure TfrmPedidos.btnItensIncluirClick(Sender: TObject);
begin
  cdsItensPedido.Append;
  cdsItensPedidoIDPEDIDO.AsInteger := fdsPedidoID.AsInteger;
  cdsItensPedidoIDFILIAL.AsInteger := fdsPedidoIDFILIAL.AsInteger;
  cdsItensPedidoDT_INC.AsDateTime := Now;
  cdsItensPedidoVLR_TOTAL.AsFloat := 0;
  cdsItensPedidoDESCONTO_FORMA.AsString := 'V';

  edtItemCodigo.SetFocus;
  alterandoIten := True;
  ControlaBtnsItens;
end;

procedure TfrmPedidos.btnLastClick(Sender: TObject);
begin
  fdsPedido.Last;
end;

procedure TfrmPedidos.btnNextClick(Sender: TObject);
begin
  fdsPedido.Next;
end;

procedure TfrmPedidos.btnPesqClienteClick(Sender: TObject);
begin
  Try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      fdsPedidoCLIENTE.AsString := frmPesqCliente.fdsClientesNOME.AsString;
      fdsPedidoIDCLIENTE.AsInteger := frmPesqCliente.fdsClientesID.AsInteger;
      fdsPedidoIDFORMA_PAG.AsInteger :=
        frmPesqCliente.fdsClientesIDFORMA_PAGAMENTO.AsInteger;
    end;
    frmPesqCliente.free;
    lbcFormaPagamento.SetFocus;
  End;
end;

procedure TfrmPedidos.btnPesqClientesClick(Sender: TObject);
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
      btnPesquisar.Click;
    end;
    frmPesqCliente.free;
  End
end;

procedure TfrmPedidos.btnPesqItemPedidoClick(Sender: TObject);
begin
  cdsItensPedido.Cancel;
  PesquisarItem;
end;

procedure TfrmPedidos.btnPesquisarClick(Sender: TObject);
begin
  if rgbTipo.ItemIndex = 0 then
    Pesquisar('PD');
  if rgbTipo.ItemIndex = 1 then
    Pesquisar('OR');
  if rgbTipo.ItemIndex = 2 then
    Pesquisar('TD');
  tbsTabela.Show;
end;

procedure TfrmPedidos.btnPriorClick(Sender: TObject);
begin
  fdsPedido.First;
end;

procedure TfrmPedidos.btnReiprimirNotaClick(Sender: TObject);
var
  dinheiro, cartaoDB, credito: String;
begin
  // tipoDeCartao:='';
  // PesquisaTipoCartao;

  // if (fdsPedidoVLR_NOTA.AsFloat >0) or ((fdsPedidoVLR_CARTAO.AsFloat>0) and (tipoDeCartao ='CT')) or (fdsPedidoVLR_CHEQUE.AsFloat>0) then
  // begin
  idPedido := fdsPedidoID.AsInteger;
  ImprimirComprovantePedido;
  // end
  // else
  // begin
  // dinheiro:='';
  // cartaoDB :='';
  // credito:='';
  // if fdsPedidoVLR_ENTRADA.AsFloat >0 then
  // dinheiro:= 'dinheiro, ';
  // if fdsPedidoVLR_CARTAO.AsFloat >0 then
  // cartaoDB:= 'cart�o de d�bito, ';
  // ShowMessage('N�o foi poss�vel completar a a��o!Pois o pagamento desse pedido foi efetuado em '+dinheiro+cartaoDB+'n�o possuindo parcelas.');
  // Abort;
  // end;
end;

procedure TfrmPedidos.btnTodosClick(Sender: TObject);
begin
  // VisualizaPorStatus(statusPedido);
  // With fdsPedido do
  // begin
  // close;
  // conditions.Clear;
  // Prepare;
  // open;
  // tbsTabela.Show;
  // end;
  Pesquisar('TD');
end;

procedure TfrmPedidos.CancelarNFe;
begin
  // if not(fdsPedidoCHAVE_CONSULTA.AsString = string.Empty) and not(fdsPedidoNUMERO_PROTOCOLO.AsString = string.Empty) then
  // begin
  // try
  // frmStatusNFe := TfrmStatusNFe.Create(nil);
  // frmStatusNFe.param := 'CANCELAR';
  // frmStatusNFe.ShowModal;
  // finally
  // if frmStatusNFe.ModalResult = mrOk then
  // begin
  // fdsPedido.Locate('ID', frmStatusNFe.cdsPedidoID.AsString, []);
  // fdsNF_Cancelada.Open;
  // fdsNF_Cancelada.Append;
  // fdsNF_CanceladaIDFILIAL.AsInteger := fdsPedidoIDFILIAL.AsInteger;
  // fdsNF_CanceladaIDPEDIDO.AsInteger := fdsPedidoID.AsInteger;
  // fdsNF_CanceladaIDCLIENTE.AsInteger := fdsPedidoIDCLIENTE.AsInteger;
  // fdsNF_CanceladaDT_EMISSAO.AsDateTime := fdsPedidoDT_INC.AsDateTime;
  // fdsNF_CanceladaVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat;
  // fdsNF_CanceladaCHAVE_CONSULTA_NF.AsString := fdsPedidoCHAVE_CONSULTA.AsString;
  // fdsNF_CanceladaNUMERO_PROTOCOLO_NF.AsString := fdsPedidoNUMERO_PROTOCOLO.AsString;
  // fdsNF_CanceladaCHAVE_CONSULTA_CANC.AsString := frmStatusNFe.ChaveCancelamento;
  // fdsNF_CanceladaNUMERO_PROTOCOLO_CANC.AsString := frmStatusNFe.NumeroProtocolo;
  // fdsNF_Cancelada.Post;
  //
  // fdsPedido.Edit;
  // fdsPedidoTIPO.AsString := 'NT';
  // fdsPedidoCHAVE_CONSULTA.AsString := string.Empty;
  // fdsPedidoNUMERO_PROTOCOLO.AsString := string.Empty;
  // fdsPedidoCODIGO_NFE.AsInteger := 0;
  // fdsPedido.Post;
  // DM.conexao.CommitRetaining;
  //
  // Application.MessageBox('Canclamento de NFe realizado com sucesso!', 'Sucesso', MB_ICONEXCLAMATION+MB_OK);
  // end;
  // frmStatusNFe.Free;
  // end;
  // end;
end;

procedure TfrmPedidos.CarregaProdutoParaPedido;
begin
  fdsItensPedido.First;
  while not(fdsItensPedido.Eof) do
  begin
   with cdsItensPedido do
   begin
     append;
     cdsItensPedidoIDPEDIDO.AsInteger:= fdsPedidoID.AsInteger;
     cdsItensPedidoIDPROD_ITEM.AsInteger:= fdsItensPedidoIDPROD_ITEM.AsInteger;
     cdsItensPedidoQTN.AsFloat := fdsItensPedidoQTN.AsFloat;
     cdsItensPedidoVLR_UNITARIO.AsFloat:= fdsItensPedidoVLR_UNITARIO.AsFloat;
     cdsItensPedidoVLR_TOTAL.AsFloat:= fdsItensPedidoVLR_TOTAL.AsFloat;
     cdsItensPedidoVLR_DESCONTO.AsFloat:= fdsItensPedidoVLR_DESCONTO.AsFloat;
     cdsItensPedidoNOME.AsString:= fdsItensPedidoNOME.AsString;
     cdsItensPedidoREFERENCIA.AsString:= fdsItensPedidoREFERENCIA.AsString;
     cdsItensPedidoIDFILIAL.AsInteger:= fdsItensPedidoIDFILIAL.AsInteger;
     cdsItensPedidoITEM.AsInteger:= fdsItensPedidoITEM.AsInteger;
     cdsItensPedidoDT_INC.AsDateTime:= Now;
     cdsItensPedidoPESO.AsFloat:= fdsItensPedidoPESO.AsFloat;
     cdsItensPedidoQTN_RETORNO.AsFloat:= fdsItensPedidoQTN_RETORNO.AsFloat;
     cdsItensPedidoCOD_FABRICA.AsString:= fdsItensPedidoCOD_FABRICA.AsString;
     cdsItensPedidoNCM.AsString:= fdsItensPedidoNCM.AsString;
     cdsItensPedidoCEST.AsString:= fdsItensPedidoCEST.AsString;
     cdsItensPedidoUNIDADE.AsString:= fdsItensPedidoUNIDADE.AsString;
     cdsItensPedidoCSOSN.AsString := fdsItensPedidoCSOSN.AsString;
     cdsItensPedidoIBPT_NACIONA_FEDERAL.AsFloat:= fdsItensPedidoIBPT_NACIONA_FEDERAL.AsFloat;
     cdsItensPedidoORDEM.AsInteger := fdsItensPedidoORDEM.AsInteger;
     cdsItensPedidoENTREGUE.AsString:='N';
     post;
   end;
   fdsItensPedido.Next;
  end;
  cdsItensPedido.Open;
end;

procedure TfrmPedidos.CarregaProdutosParaNFe;
var
  descParcial, descTotal: Double;
  i: Integer;
  mensagem:String;
begin
  with frmNfe do
  begin
    fdsNFeORIGEM_PEDIDO_VENDA.AsString := fdsPedidoPREFIXO.AsString;
    fdsNFeIDPEDIDO.AsInteger           := fdsPedidoID.AsInteger;

    Try
      frmPesqCliente              := TfrmPesqCliente.Create(nil);
      frmPesqCliente.edtNome.Text := fdsPedidoCLIENTE.AsString;
      frmPesqCliente.Show;
      frmPesqCliente.btnPesquisar.Click;
      frmPesqCliente.ModalResult  := mrOk;
    Finally
      if frmPesqCliente.ModalResult = mrOk then
      begin
        fdsNFeIDCLIENTE.AsInteger := frmPesqCliente.fdsClientesID.AsInteger;
        fdsNFeCLIENTE.AsString    := frmPesqCliente.fdsClientesNOME.AsString;
        fdsNFeUF.AsString         := frmPesqCliente.fdsClientesUF.AsString;
        fdsNFeVLR_FRETE.AsFloat   := fdsPedidoVLR_FRETE.AsFloat;
        fdsNFeOUTRAS_DESPESAS.AsFloat:=fdsPedidoVLR_OUTRAS_DESPESAS.AsFloat;
//        fdsNFeVLR_TOTAL.AsFloat := fdsPedidoVLR_FRETE.AsFloat -fdsPedidoVLR_DESCONTO.AsFloat;
        fdsNFeVLR_TOTAL.AsFloat   := fdsPedidoVLR_FRETE.AsFloat;
      end;
      frmPesqCliente.free;
    End;
    if fdsPedidoVLR_DESCONTO.AsFloat >0 then
    begin
      mensagem:='Devido ao lan�amento do desconto no valor de R$'+fdsPedidoVLR_DESCONTO.AsString+' na finaliza��o do pedido PD'+fdsPedidoID.AsString+' ,ser� feito o rateamento desse valor nos itens desse pedido.';
      Application.MessageBox(pWideChar(mensagem),'Aten��o', MB_ICONINFORMATION + MB_OK);
    end;
    fdsItensPedido.FetchAll;
    JvProgressDialog1.Min      := 0;
    JvProgressDialog1.Max      := fdsItensPedido.RecordCount;
    JvProgressDialog1.Position := 0;
    JvProgressDialog1.Show;
    fdsItensPedido.First;
    while not(fdsItensPedido.Eof) do
    begin
      cdsNFe_Item.Append;
      cdsNFe_ItemIDNFE.AsInteger       := fdsNFeID.AsInteger;
      cdsNFe_ItemIDFILIAL.AsInteger    := fdsNFeIDFILIAL.AsInteger;
      cdsNFe_ItemIDGRUPO.AsInteger     := fdsItensPedidoIDGRUPO.AsInteger;
      cdsNFe_ItemDT_INC.AsDateTime     := Now;
      cdsNFe_ItemIDPROD_ITEM.AsInteger := fdsItensPedidoIDPROD_ITEM.AsInteger;
      cdsNFe_ItemVLR_UNITARIO.AsFloat  := fdsItensPedidoVLR_UNITARIO.AsFloat;
      cdsNFe_ItemVLR_OUTRAS_DESPESAS.AsFloat := roundTo(fdsItensPedidoVLR_UNITARIO.AsFloat* fdsPedidoVLR_OUTRAS_DESPESAS.AsFloat /fdsPedidoVLR_TOTITEM.AsFloat,-2);
      if (fdsItensPedidoDESCONTO_FORMA.AsString = 'P') then
        descTotal := RoundTo(fdsItensPedidoVLR_UNITARIO.AsFloat * fdsItensPedidoVLR_DESCONTO.AsFloat / 100, -2)
      else
        descTotal := fdsItensPedidoVLR_DESCONTO.AsFloat;

      if fdsPedidoVLR_DESCONTO.AsFloat > 0 then
      begin
        descParcial := roundTo(fdsItensPedidoVLR_UNITARIO.AsFloat* fdsPedidoVLR_DESCONTO.AsFloat /fdsPedidoVLR_TOTITEM.AsFloat,-2);
      end;

      cdsNFe_ItemVLR_DESCONTO.AsFloat         := descTotal + descParcial;
      cdsNFe_ItemPESO.AsFloat                 := fdsItensPedidoPESO.AsFloat;
      cdsNFe_ItemPRODUTO.AsString             := fdsItensPedidoNOME.AsString;
      cdsNFe_ItemCOD_FABRICA.AsString         := fdsItensPedidoCOD_FABRICA.AsString;
      cdsNFe_ItemQTN.AsFloat                  := fdsItensPedidoQTN.AsFloat;
      cdsNFe_ItemVLR_TOTAL.AsFloat            := fdsItensPedidoVLR_TOTAL.AsFloat-(fdsItensPedidoQTN.AsFloat*descParcial);
      cdsNFe_ItemINFO_ADICIONAL.AsString      := '';
      cdsNFe_ItemORIGEM_VENDA_PEDIDO.AsString := fdsPedidoPREFIXO.AsString;
      cdsNFe_ItemNUM_VENDA_PEDIDO.AsInteger   := fdsItensPedidoIDPEDIDO.AsInteger;

      if fdsNatOperacaoCAT_SAIDA_CFOP.AsString <> 'VD' then
      begin;
        cdsNFe_ItemCFOP.AsString      := CFOP_NOVO;
        cdsNFe_ItemCST_CSOSN.AsString := CST_CSOSN_NOVO;
      end
      else
      begin
        cdsNFe_ItemCFOP.AsString      := fdsItensPedidoCFOP.AsString;
        if fdsNFeUF.AsString <> DM.fdsConfigUF.AsString then
          cdsNFe_ItemCFOP.AsString    := StringReplace(cdsNFe_ItemCFOP.AsString,
            '5', '6', []);
        cdsNFe_ItemCST_CSOSN.AsString := fdsItensPedidoCSOSN.AsString;
      end;

      cdsNFe_ItemITEM.AsInteger  := cdsNFe_Item.RecordCount + 1;
      cdsNFe_Item.Post;
      JvProgressDialog1.Position := JvProgressDialog1.Position + 1;
      fdsItensPedido.Next;
    end;
    JvProgressDialog1.Hide;
  end;
end;

procedure TfrmPedidos.cdsItensPedidoAfterScroll(DataSet: TDataSet);
begin
  edtItemNome.Text   := cdsItensPedidoNOME.AsString;
  edtItemCodigo.Text := cdsItensPedidoCOD_FABRICA.AsString;
end;

procedure TfrmPedidos.chkClienteClick(Sender: TObject);
begin
  pnlCliente.Enabled := chkCliente.Checked;
  if not(chkCliente.Checked) then
  begin
    edtPesqCliente.Text       := 'TODOS';
    edtClienteCodigo.Text     := 'C�DIGO';
    edtPesqCliente.Font.Color := clGray;
    btnPesqClientes.Enabled   := False;
    btnPesquisar.Click;
  end
  else
  begin
    edtPesqCliente.Font.Color := clBtnText;
    edtClienteCodigo.SetFocus;
    btnPesqClientes.Enabled   := True;
  end;
end;

procedure TfrmPedidos.chkFilialClick(Sender: TObject);
begin
  pnlFilial.Enabled := chkFilial.Checked;

  if not(chkFilial.Checked) then
    cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmPedidos.chkNumVendaClick(Sender: TObject);
begin
  pnlNumVenda.Enabled := chkNumVenda.Checked;
  if not(chkNumVenda.Checked) then
  begin
    edtPesqNumVenda.Text       := 'Todos';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmPedidos.chkPeriodoClick(Sender: TObject);
begin
  pnlPeriodo.Enabled := chkPeriodo.Checked;
  if not(chkVendedor.Checked) then
  begin
    btnPesquisar.Click;
  end;
end;

procedure TfrmPedidos.chkVendedorClick(Sender: TObject);
begin
  pnlVendedor.Enabled := chkVendedor.Checked;
  if not(chkVendedor.Checked) then
  begin
    cbxVendedor.ItemIndex := 0;
  end;
end;

procedure TfrmPedidos.ControlaBtnsItens;
begin
  btnItemCancelar.Enabled := alterandoIten;
  btnItemGravar.Enabled   := alterandoIten;
  btnItensIncluir.Enabled := not(alterandoIten);
  btnItemAlterar.Enabled  := not(alterandoIten);
  btnItemExcluir.Enabled  := not(alterandoIten);
  gdrItens.Enabled        := not(alterandoIten);
  alterandoIten           := not(alterandoIten);
end;

procedure TfrmPedidos.EditaInsere;
var
  i: Smallint;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex     := 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    end;

    if ((Components[i] is TRzBitBtn) or (Components[i] is TPngBitBtn)) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := False
      else
        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;
  // cdsItensPedido.Close;

  lcbVendedor.SetFocus;
  ControlaBtnsItens;
  idPedido := fdsPedidoID.AsInteger;
  DT_NF_DEVOLVIDA := Now;
end;

procedure TfrmPedidos.edtClienteCodigoEnter(Sender: TObject);
begin
  if Trim(edtClienteCodigo.Text) = 'C�DIGO' then
  begin
    edtClienteCodigo.Text       := EmptyStr;
    edtClienteCodigo.Font.Color := clBlack;
  end;
end;

procedure TfrmPedidos.edtClienteCodigoExit(Sender: TObject);
begin
  if Trim(edtClienteCodigo.Text) = EmptyStr then
  begin
    edtClienteCodigo.Text       := 'C�DIGO';
    edtClienteCodigo.Font.Color := clGray;
  end
  else
  begin
    RetornaClienteId(edtClienteCodigo.Text);
    if fdsCliente.RecordCount = 0 then
      btnPesqClientes.Click
    else
    begin
      edtPesqCliente.Text := fdsClienteNOME.AsString;
      btnPesquisar.Click;
    end;
  end;
end;

procedure TfrmPedidos.edtDescontoExit(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
  begin
    if fdsPedidoVLR_TOTITEM.AsFloat > 0 then
    begin
      fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTITEM.AsFloat -
        fdsPedidoVLR_DESCONTO.AsFloat + fdsPedidoVLR_FRETE.AsFloat +
        fdsPedidoSUBTRIBUTARIA.AsFloat;
    end;
  end;
end;

procedure TfrmPedidos.edtItemCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    PesquisarItem;
  end;
end;

procedure TfrmPedidos.edtItemCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PesquisarItem;
  end;
end;

procedure TfrmPedidos.edtItemDescontoExit(Sender: TObject);
begin
  if Trim(edtItemDesconto.Text) = EmptyStr then
    edtItemDesconto.Text := '0';

end;

procedure TfrmPedidos.edtPesqClienteEnter(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = 'TODOS' then
  begin
    edtPesqCliente.Text       := EmptyStr;
    edtPesqCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmPedidos.edtPesqClienteExit(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = EmptyStr then
  begin
    edtPesqCliente.Text       := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmPedidos.edtPesqNumVendaEnter(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = 'TODOS' then
  begin
    edtPesqNumVenda.Text       := EmptyStr;
    edtPesqNumVenda.Font.Color := clBlack;
  end;
end;

procedure TfrmPedidos.edtPesqNumVendaExit(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = EmptyStr then
  begin
    edtPesqNumVenda.Text       := 'TODOS';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmPedidos.fdsFilialAfterOpen(DataSet: TDataSet);
begin
  cbxFilial.AddItemValue('TODOS', '0');
  fdsFilial.First;
  while not(fdsFilial.Eof) do
  begin
    cbxFilial.AddItemValue(fdsFilialNOME.AsString, fdsFilialID.AsString);
    fdsFilial.Next;
  end;
  cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmPedidos.fdsPedidoAfterScroll(DataSet: TDataSet);
begin
  if not(imprimir) then
  begin
    pesoTotal := fdsPedidoPESO.AsFloat;

    if alterandoPedido = False then
    begin
      if frmPrincipal.pedidoSimples <> 'S' then
      begin
        statusPedido := fdsPedidoSTATUS.AsString;
        if statusPedido = 'AB' then
        begin
          btnConfirmaPedido.Enabled := True;
          btnFechaPedido.Enabled    := False;
          btnAlterar.Enabled        := True;
          btnDelete.Enabled         := True;
        end
        else
        begin
          if statusPedido = 'CF' then
          begin
            btnConfirmaPedido.Enabled := False;
            btnFechaPedido.Enabled    := True;
            btnAlterar.Enabled        := True;
            btnDelete.Enabled         := True;
          end
          else
          begin
            if statusPedido = 'FC' then
            begin
              btnConfirmaPedido.Enabled := False;
              btnFechaPedido.Enabled    := False;
              btnAlterar.Enabled        := False;
              btnDelete.Enabled         := False;
            end
            else
            begin
              if statusPedido = 'CC' then
              begin
                btnConfirmaPedido.Enabled := False;
                btnFechaPedido.Enabled    := False;
                btnAlterar.Enabled        := False;
              end
            end;
          end;
        end;
      end;
    end;
  end;

  if (pgcControl.ActivePageIndex = 1) then
    RetornaItensPedido;

end;

procedure TfrmPedidos.fdsPedidosClienteAgrupCalcFields(DataSet: TDataSet);
begin
  fdsPedidosClienteAgrupPORCENT_QTN_VENDAS.AsFloat :=
    RoundTo(((fdsPedidosClienteAgrupQTN_TOTAL_VENDAS.AsFloat * 100) /
    qtn_total), -2);
  fdsPedidosClienteAgrupPORCENT_VLR_VENDAS.AsFloat :=
    RoundTo(((fdsPedidosClienteAgrupVLR_TOTAL_VENDA.AsFloat * 100) /
    vlr_total), -1);
end;

procedure TfrmPedidos.fdsVendedorAfterOpen(DataSet: TDataSet);
begin
  fdsVendedor.First;
  cbxVendedor.ClearItems;
  cbxVendedor.AddItemValue('TODOS', '0');
  while not(fdsVendedor.Eof) do
  begin
    cbxVendedor.AddItemValue(fdsVendedorNOME.AsString, fdsVendedorID.AsString);
    fdsVendedor.Next;
  end;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele a Inclus�o/Altera��o do pedido antes de sair.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    abort;
  end
  else
  begin
    Action     := caFree;
    frmPedidos := nil;
  end;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  apenasGerarPDF        := False;
  imprimirAnalitic      := False;
  imprimir := False;
  alterandoPedido       := False;
  tbsTabela.Show;
  cdsItensPedido.CreateDataSet;
  tbsStatusAberto.Show;
  fdsFilial.Open;
  fdsFilial.Close;
  fdsVendedor.Open;
  fdsVendedor.Last;
  fdsVendedor.First;
  cdsFormaPag.CreateDataSet;
  cdsContReceberItens.Open;
  cbxVendedor.ItemIndex := 0;
  fdsFormaPagamento.Open;
  fdsFormaPagamento.Last;
  fdsFormaPagamento.First;
  alterandoIten         := False;
  dtpInicio.Date        := StartOfTheMonth(Date);
  dtpFim.Date           := EndOfTheMonth(Date);
end;

procedure TfrmPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPedidos.FormShow(Sender: TObject);
begin
  if frmPrincipal.pedidoSimples <> 'S' then
  begin
    if frmPrincipal.locIdPedido > 0 then
    begin
      if frmPrincipal.fdsPedidoSTATUS.AsString = 'AB' then
        tbsStatusAberto.Show;

      if frmPrincipal.fdsPedidoSTATUS.AsString = 'CF' then
        tbsStatusConfirmados.Show;

      if frmPrincipal.fdsPedidoSTATUS.AsString = 'FC' then
        tbsStatusFechados.Show;

      Application.ProcessMessages;

      fdsPedido.Locate('ID', intToStr(frmPrincipal.locIdPedido), []);
      frmPrincipal.locIdPedido := 0;
      // frmPrincipal.Cursor := crDefault;
    end;
  end
  else
  begin
    pgcStatus.ActivePageIndex := 0;
    pgcStatus.Pages[2].TabVisible := False;
    pgcStatus.Pages[1].TabVisible := False;
    tbsStatusFechados.Show;
  end;
  duplicando:='N';
end;

procedure TfrmPedidos.GravaCancela(status: string);
var
  i: Smallint;
  utils: TUtils;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).Pages[0].TabVisible := True;
      TRzPageControl(Components[i]).ActivePageIndex := 0;
    end
    else
    begin
      if ((Components[i] is TRzBitBtn) or (Components[i] is TPngBitBtn)) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := True
        else
          TRzBitBtn(Components[i]).Enabled := False;
      end;
      // else
      // begin
      if Components[i].Tag = 15 then
      begin
        if (Components[i] is TRzEdit) then
          utils.ResetColorCampo(TRzDBEdit(Components[i]), True)
        else
          utils.ResetColorCampo(TRzDBEdit(Components[i]), False);
      end;
      // end;

      if (Components[i] is TRzDBLookupComboBox) then
      begin
        if Components[i].Tag = 1 then
          TRzDBLookupComboBox(Components[i]).Enabled := True
        else
          TRzDBLookupComboBox(Components[i]).Enabled := False;
      end;
    end;

  end;
  SetLength(listaItenExcluidos, 0);
  alterandoPedido := False;
  alterandoIten   := False;

  if status = 'AB' then
    tbsStatusAberto.Show
  else if status = 'CF' then
    tbsStatusConfirmados.Show
  else
    tbsStatusFechados.Show;
  fdsPedido.Locate('ID', idPedido, []);
  lblTotal.Caption := intToStr(fdsPedido.RecordCount);
  fdsVendedor.Close;
  fdsVendedor.Open;
  fdsVendedor.Last;
  fdsFormaPagamento.Close;
  fdsFormaPagamento.Open;
  fdsFormaPagamento.Last;

  if frmPrincipal.pnlPedidosDia.Visible = True then
  begin
    frmPrincipal.fdsPedido.Close;
    frmPrincipal.fdsPedido.Open;
  end;

end;

procedure TfrmPedidos.impAnaliticoExecute(Sender: TObject);
begin
  ImprimirAnalitico;
end;

procedure TfrmPedidos.impAtualExecute(Sender: TObject);
begin
  ImprimirPedidoAtual;
end;

procedure TfrmPedidos.impItensVendidosExecute(Sender: TObject);
begin
  if not(chkPeriodo.Checked) then
  begin
    Application.MessageBox('Primeiro informe um per�odo de vendas.', 'Aten��o',
      MB_ICONWARNING + MB_OK);
    abort;
  end;

  with fdsItensVendidos do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('DT_INC', 'P.DT_INC BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VVPI.QTN) as TOTAL FROM v_venda_pedido_item VVPI, produto_item PI, pedido P');
    SQL.Add(' WHERE VVPI.idvenda = P.id AND VVPI.idfilial = P.IDFILIAL AND VVPI.prefixo = ''PD'' AND PI.ID = VVPI.idprod_item');
    SQL.Add(' AND P.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    Prepare;
    ExecQuery;
  end;

  DM.totItens := qrySql.FieldByName('TOTAL').AsString;

  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxItensVendidos.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  qrySql.Close;
end;

procedure TfrmPedidos.ImprimirAnalitico;
var
  total: Double;
begin
  with fdsPedido do
  begin
    Close;
    Conditions.AddCondition('PREFIXO', 'P.PREFIXO =''PD''', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
  RetornaItensPedido;
  fdsPedido.First;
  while not(fdsPedido.Eof) do
  begin
    total := total + fdsPedidoVLR_TOTAL.AsFloat;
    fdsPedido.Next;
  end;

  imprimirAnalitic := True;
  imprimir         := True;
  DM.dtInicio      := dtpInicio.Date;
  DM.dtFim         := dtpFim.Date;
  DM.totVendas     := fdsPedido.RecordCount;
  DM.vlrTotal      := FloatToStr(total);
  DM.filial        := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelPedidosAnalitico.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimirAnalitic := False;
  imprimir         := False;
end;

procedure TfrmPedidos.ImprimirComprovantePedido;
begin
  PreparaEmissaoComprovante;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelComprovantePedido.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

end;

procedure TfrmPedidos.ImprimirDANFE;
begin
  try
    frmStatusNFe                    := TfrmStatusNFe.Create(nil);
    frmStatusNFe.param              := 'ImprimirDANFE';
    frmStatusNFe.lblRetorno.Caption := 'Aguarde reimprimindo DANFE';
    frmStatusNFe.ShowModal;
  finally
    frmStatusNFe.free;
  end;
end;

procedure TfrmPedidos.ImprimirPedidoAtual;
var
  idTemp: string;
  idFilialTemp: string;
  statusTemp: string[2];
var
  faltando, i: Integer;
begin
  faltando         := 0;
  imprimirAnalitic := False;
  imprimir         := True;
  fdsPedido.First;
  while not(fdsPedido.Eof) do
  // bof indica que o registro esta no promeiro e eof indica q esta no ultimo
  begin
    if fdsPedidoPREFIXO.AsString = 'PD' then
    begin
      idTemp       := fdsPedidoID.AsString;
      idFilialTemp := fdsPedidoIDFILIAL.AsString;
      statusTemp   := fdsPedidoSTATUS.AsString;
    end;
    if fdsPedidoPREFIXO.AsString = 'PD' then
      Break
    else
      fdsPedido.Next;
    // prior indica para voltar ao anterior e next para proseguir para o pr�ximo
  end;

  tbsTabela.Show;

  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDPEDIDO', 'P.ID = ' + idTemp, True);
    Conditions.AddCondition('IDFILIAL', 'P.IDFILIAL = ' + idFilialTemp, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  RetornaItensPedido;
  DM.totItens := intToStr(cdsItensPedido.RecordCount);

  DM.frxReport1.Clear;

  if frmPrincipal.tipoPedido = '1' then
  begin
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxPedido.fr3');

    if cdsItensPedido.RecordCount <= 29 then
      // Ao todo cabem 25 itens na primeira p�gina de um pedido
      faltando := 30 - (cdsItensPedido.RecordCount mod 30)
    else if cdsItensPedido.RecordCount > 31 then
      faltando := 72 - (cdsItensPedido.RecordCount mod 72);

    if faltando > 0 then
    begin
      for i := 1 to faltando do
      begin
        cdsItensPedido.Append;
        cdsItensPedidoIDFILIAL.AsInteger := 1;
        cdsItensPedido.Post;
      end;
    end;

  end
  else
  begin
    if cdsItensPedido.RecordCount <= 24 then
      // Ao todo cabem 25 itens na primeira p�gina de um pedido
      faltando := 25 - (cdsItensPedido.RecordCount mod 25)
    else if cdsItensPedido.RecordCount > 26 then
      faltando := 64 - (cdsItensPedido.RecordCount mod 64);

    if faltando > 0 then
    begin
      for i := 1 to faltando do
      begin
        cdsItensPedido.Append;
        cdsItensPedidoIDFILIAL.AsInteger := 1;
        cdsItensPedido.Post;
      end;
    end;

    DM.formaPagamento := fdsPedidoFORMA_PAG.AsString;
    if not(Trim(fdsPedidoPRAZO.AsString) = EmptyStr) then
      DM.formaPagamento := fdsPedidoFORMA_PAG.AsString + ' ' +
        fdsPedidoPRAZO.AsString + ' dias';

    if fdsCntReceber_Item.RecordCount > 0 then
    begin
      with qrySql do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT VALOR FROM CNT_RECEBER WHERE ID = ' +
          fdsCntReceber_ItemIDRECEBER.AsString);
        Prepare;
        ExecQuery;
      end;
      DM.vlrTotal     := qrySql.FieldByName('VALOR').AsString;
      DM.dtVencimento := fdsCntReceber_ItemDT_VENC.AsString;

      if (fdsPedidoIDFORMA_PAG.AsInteger = 10) and
        (DM.fdsConfigTARIFA_BOLETO.AsFloat > 0) then
        DM.formaPagamento := DM.formaPagamento + ' - Tarifa: ' +
          FormatFloat('R$ #,##0.00', DM.fdsConfigTARIFA_BOLETO.AsFloat);
    end
    else
    begin
      DM.vlrTotal := fdsPedidoVLR_TOTAL.AsString;
      if (fdsPedidoIDFORMA_PAG.AsInteger = 1) then
        DM.dtVencimento := DateToStr(Now)
      else
        DM.dtVencimento := '';
    end;

    if frmPrincipal.tipoPedido = '3' then
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '/Relatorios/frxPedidoM3.fr3')
    else
    begin
      // with fdsCntReceber_Item do
      // begin
      // Close;
      // ParamByName('IDVENDA').AsString := idTemp;
      // ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      // ParamByName('TIPO_VENDA').AsString := 'PD';
      // Prepare;
      // Open;
      // end;
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '/Relatorios/frxPedidoM1_Novo.fr3');
    end;
  end;

  DM.frxReport1.PrepareReport(True);

  if apenasGerarPDF then
  begin
    frxPDFExport1.FileName   := 'd:\testePDF.pdf';
    frxPDFExport1.ShowDialog := False;
    DM.frxReport1.Export(frxPDFExport1);
  end
  else
    DM.frxReport1.ShowReport(True);

  imprimir       := False;
  apenasGerarPDF := False;
  cdsItensPedido.CancelUpdates;
  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;

  tbsTabela.Show;

  if statusTemp = 'AB' then
  begin
    VisualizaPorStatus('AB');
    tbsStatusAberto.Show;
  end
  else if statusTemp = 'CF' then
  begin
    VisualizaPorStatus('CF');
    tbsStatusConfirmados.Show;
  end
  else
  begin
    VisualizaPorStatus('FC');
    tbsStatusFechados.Show;
  end;

  fdsPedido.Locate('ID', idTemp, []);

end;

procedure TfrmPedidos.ImprimirSintetico;
var
  total: Double;
  vendas: Integer;
begin
  total := 0;
  vendas := 0;
  fdsPedido.First;
  While not(fdsPedido.Eof) do
  begin
    if fdsPedidoPREFIXO.AsString = 'PD' then
    Begin
      total  := total + fdsPedidoVLR_TOTAL.AsFloat;
      vendas := vendas + 1;
    End;
    fdsPedido.Next;
  end;

  imprimirAnalitic := False;
  imprimir         := True;
  DM.dtInicio      := dtpInicio.Date;
  DM.dtFim         := dtpFim.Date;
  DM.totVendas     := vendas;
  DM.vlrTotal      := FloatToStr(total);
  DM.filial        := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelPedidosSintetico.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimir         := False;
end;

procedure TfrmPedidos.ImprimirTotalPorCliente;
begin
  qtn_total   := 0;
  vlr_total   := 0;
  DM.vendedor := cbxVendedor.Text;

  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(P.ID) AS QTN_TOTAL, SUM(P.VLR_TOTAL) AS VLR_TOTAL FROM PEDIDO P WHERE');
    SQL.Add(' P.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    SQL.Add(' AND ((P.STATUS = ' + QuotedStr('CF') + ') OR (P.STATUS = ' +
      QuotedStr('FC') + '))');
    SQL.Add(' AND P.PREFIXO = ' + QuotedStr('PD'));

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
    begin
      SQL.Add(' AND P.IDVENDEDOR = ' + cbxVendedor.Value);
    end;
    Prepare;
    ExecQuery;
  end;

  qtn_total := qrySql.FieldByName('QTN_TOTAL').AsFloat;
  vlr_total := qrySql.FieldByName('VLR_TOTAL').AsFloat;

  if qtn_total > 0 then
  begin
    with fdsPedidosClienteAgrup do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('PERIODO', 'P.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

      if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
      begin
        Conditions.AddCondition('IDVENDEDOR', 'P.IDVENDEDOR = ' +
          cbxVendedor.Value, True);
      end;
      Conditions.Apply;
      Prepare;
      Open;
    end;

    DM.dtInicio  := dtpInicio.Date;
    DM.dtFim     := dtpFim.Date;
    DM.vlrTotal  := FloatToStr(vlr_total);
    DM.totVendas := Trunc(qtn_total);
    DM.totItens  := intToStr(fdsPedidosClienteAgrup.RecordCount);
    DM.filial    := cbxFilial.Text;
    DM.frxReport1.Clear;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxRelTotalPedidosPorClientes.fr3');
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);
    fdsPedidosClienteAgrup.Close;
  end
  else
    Application.MessageBox('N�o existe venda no per�odo informado.', 'Aten��o',
      MB_ICONINFORMATION + MB_OK);
  qrySql.Close;
end;

procedure TfrmPedidos.ImpTotalPorClienteExecute(Sender: TObject);
begin
  ImprimirTotalPorCliente
end;

procedure TfrmPedidos.lbcFormaPagamentoCloseUp(Sender: TObject);
begin
  //
end;

procedure TfrmPedidos.impSinteticoExecute(Sender: TObject);
begin
  ImprimirSintetico;
end;

procedure TfrmPedidos.gdrPedidoFechadoDblClick(Sender: TObject);
begin
  if fdsPedido.RecordCount > 0 then
  begin
    // Clipboard.AsText := fdsPedidoCHAVE_CONSULTA.AsString;
    tbsForm.Show;
  end;
end;

procedure TfrmPedidos.gdrPedidoFechadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPedido.RecNo) then
  begin
    gdrPedidoFechado.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
    gdrPedidoFechado.Canvas.Brush.Color := clHighlight;
    gdrPedidoFechado.Canvas.FillRect(Rect);
    gdrPedidoFechado.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsPedidoVISUALIZADO.AsString = 'N' then
  begin
    gdrPedidoFechado.Canvas.Font.Style := [fsBold];
    gdrPedidoFechado.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if (fdsPedidoPREFIXO.AsString = 'OR') then
  begin
    gdrPedidoFechado.Canvas.Font.Color := clBlue;
    gdrPedidoFechado.Canvas.FillRect(Rect);
    gdrPedidoFechado.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPedidos.gdrPedidoFechadoKeyPress(Sender: TObject; var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') then
  begin
    coluna := gdrPedidoFechado.SelectedField.FieldName;
    if coluna = 'CLIENTE' then
    Begin
      PesquisaPedidoCliente('FC');
    end
    else
    begin
      if coluna = 'VENDEDOR' then
      begin
        PesquisaPedidoVendedor('FC');
      end
      else
      begin
        if coluna = 'ROTA' then
        begin
          PesquisaPedidoRota('FC');
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidos.gdrPedidoFechadoTitleClick(Column: TColumn);
begin
  fdsPedido.Close;
  fdsPedido.OrderClause := Column.FieldName;
  fdsPedido.Open;
end;

procedure TfrmPedidos.gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if not odd(cdsItensPedido.RecNo) then
  begin
    if not(gdSelected in State) then
    begin
      gdrItens.Canvas.Brush.Color := clMoneyGreen;
      gdrItens.Canvas.FillRect(Rect);
      gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
    end;
  end;
end;

function TfrmPedidos.MyLocateItem(chave1: string): Boolean;
begin
  Result := False;
  cdsItensPedido.First;
  while not(cdsItensPedido.Eof) do
  begin
    if cdsItensPedidoIDPROD_ITEM.AsString = chave1 then
    begin
      Result := True;
      Break;
    end;
    cdsItensPedido.Next;
  end;
end;

procedure TfrmPedidos.nfeCancelarExecute(Sender: TObject);
begin
  CancelarNFe;
end;

procedure TfrmPedidos.nfeImprimirExecute(Sender: TObject);
begin
  ImprimirDANFE;
end;

procedure TfrmPedidos.nfeInutilizarNumExecute(Sender: TObject);
var
  numInicial, numFinal, modelo: Integer;
  justificativa: string;
begin
  Try
    frmInutilizarNFe := TfrmInutilizarNFe.Create(nil);
    frmInutilizarNFe.ShowModal;
  Finally
    if frmInutilizarNFe.ModalResult = mrOk then
    begin
      if (frmInutilizarNFe.rbxModelo.ItemIndex = 0) then
        modelo := 55;

      if (frmInutilizarNFe.rbxModelo.ItemIndex = 1) then
        modelo := 65;

      numInicial := StrToInt(frmInutilizarNFe.edtNumInical.Text);
      numFinal   := StrToInt(frmInutilizarNFe.edtNumFinal.Text);

      justificativa := frmInutilizarNFe.mmoJustificativa.Text;

      try
        frmStatusNFe                    := TfrmStatusNFe.Create(nil);
        frmStatusNFe.param              := 'INUTILIZAR';
        frmStatusNFe.modelo             := modelo;
        frmStatusNFe.numInicial         := numInicial;
        frmStatusNFe.numFinal           := numFinal;
        frmStatusNFe.justificativa      := justificativa;
        frmStatusNFe.lblRetorno.Caption := 'Aguarde inutilizando numera��o';
        frmStatusNFe.ShowModal;
      finally
        frmStatusNFe.free;
      end;

    end;
  End;
end;

procedure TfrmPedidos.gdrPedidoConfirmadoDblClick(Sender: TObject);
begin
  if fdsPedido.RecordCount > 0 then
  begin
    // Clipboard.AsText := fdsPedidoCHAVE_CONSULTA.AsString;
    tbsForm.Show;
  end;
end;

procedure TfrmPedidos.gdrPedidoConfirmadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPedido.RecNo) then
  begin
    gdrPedidoConfirmado.Canvas.Brush.Color := DM.gridOddColor;
    gdrPedidoConfirmado.Canvas.FillRect(Rect);
    gdrPedidoConfirmado.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsPedidoVISUALIZADO.AsString = 'N' then
  begin
    gdrPedidoConfirmado.Canvas.Font.Style := [fsBold];
    gdrPedidoConfirmado.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TfrmPedidos.gdrPedidoConfirmadoKeyPress(Sender: TObject;
  var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') then
  begin
    coluna := gdrPedidoConfirmado.SelectedField.FieldName;
    if coluna = 'CLIENTE' then
    Begin
      PesquisaPedidoCliente('CF');
    end
    else
    begin
      if coluna = 'VENDEDOR' then
      begin
        PesquisaPedidoVendedor('CF');
      end
      else
      begin
        if coluna = 'ROTA' then
        begin
          PesquisaPedidoRota('CF');
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidos.gdrPedidoConfirmadoTitleClick(Column: TColumn);
begin
  fdsPedido.Close;
  fdsPedido.OrderClause := Column.FieldName;
  fdsPedido.Open;
end;

procedure TfrmPedidos.gdrPedidoAbertoDblClick(Sender: TObject);
begin
  if fdsPedido.RecordCount > 0 then
  begin
    // Clipboard.AsText := fdsPedidoCHAVE_CONSULTA.AsString;
    tbsForm.Show;
  end;
end;

procedure TfrmPedidos.gdrPedidoAbertoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPedido.RecNo) then
  begin
    gdrPedidoAberto.Canvas.Brush.Color := DM.gridOddColor;
    gdrPedidoAberto.Canvas.FillRect(Rect);
    gdrPedidoAberto.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsPedidoVISUALIZADO.AsString = 'N' then
  begin
    gdrPedidoAberto.Canvas.Font.Style := [fsBold];
    gdrPedidoAberto.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPedidos.gdrPedidoAbertoKeyPress(Sender: TObject; var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') then
  begin
    coluna := gdrPedidoAberto.SelectedField.FieldName;
    if coluna = 'CLIENTE' then
    Begin
      PesquisaPedidoCliente('AB');
    end
    else
    begin
      if coluna = 'VENDEDOR' then
      begin
        PesquisaPedidoVendedor('AB');
      end
      else
      begin
        if coluna = 'ROTA' then
        begin
          PesquisaPedidoRota('AB');
        end
        else
        begin
          if coluna = 'NOTA' then
          begin
            // PesquisaPedidoID('AB');
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidos.gdrPedidoAbertoTitleClick(Column: TColumn);
begin
  fdsPedido.Close;
  fdsPedido.OrderClause := Column.FieldName;
  fdsPedido.Open;
end;

procedure TfrmPedidos.PesquisaPedidoCliente(status: string);
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

      with fdsPedido do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'P.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('IDCLIENTE', 'P.IDCLIENTE = ' +
          tempIdCliente, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'P.ID';
        Open;
      end;
    end;
    frmPesqCliente.free;
  End;
end;

procedure TfrmPedidos.PesquisaPedidoID(status: string);
var
  tempIdPedido: string;
begin
  Try
    frmPesqPedido := TfrmPesqPedido.Create(nil);
    frmPesqPedido.isRomaneio := False;
    frmPesqPedido.ShowModal;
  Finally
    if frmPesqPedido.ModalResult = mrOk then
    begin
      tempIdPedido := frmPesqPedido.fdsPedidosID.AsString;

      with fdsPedido do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'P.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('ID', 'P.ID = ' + tempIdPedido, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'P.ID';
        Open;
      end;
    end;
    frmPesqPedido.free;
  End;
end;

procedure TfrmPedidos.PesquisaPedidoRota(status: string);
var
  tempIdRota: string;
begin
  Try
    frmPesqRota := TfrmPesqRota.Create(nil);
    frmPesqRota.ShowModal;
  Finally
    if frmPesqRota.ModalResult = mrOk then
    begin
      tempIdRota := frmPesqRota.fdsRotasID.AsString;

      with fdsPedido do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'P.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('IDROTA', 'C.IDROTA = ' + tempIdRota, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'P.ID';
        Open;
      end;
    end;
    frmPesqRota.free;
  End;
end;

procedure TfrmPedidos.PesquisaPedidoVendedor(status: string);
var
  tempIdVendedor: string;
begin
  Try
    frmPesqVendedor := TfrmPesqVendedor.Create(nil);
    frmPesqVendedor.ShowModal;
  Finally
    if frmPesqVendedor.ModalResult = mrOk then
    begin
      tempIdVendedor := frmPesqVendedor.fdsVendedoresID.AsString;

      with fdsPedido do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'P.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('IDVENDEDOR', 'P.IDVENDEDOR = ' +
          tempIdVendedor, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'P.ID';
        Open;
      end;
    end;
    frmPesqVendedor.free;
  End;
end;

procedure TfrmPedidos.Pesquisar(tipo: string);
var
  numPedido: Double;
  utils: TUtils;
  status: string[2];
begin
  cdsItensPedido.Close;
  tbsTabela.Show;

  // if rgbStatus.ItemIndex = 0 then
  // status := 'AB'
  // else if rgbStatus.ItemIndex = 1 then
  // status := 'CF'
  // else if rgbStatus.ItemIndex = 2 then
  // status := 'FC'
  // else
  status := 'TD';

  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    if tipo <> 'TD' then
      Conditions.AddCondition('PREFIXO',
        'P.PREFIXO = ' + QuotedStr(tipo), True);

    if (chkNumVenda.Checked) then
    begin
      numPedido := utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numPedido > 0 then
        Conditions.AddCondition('ID',
          ' P.ID = ' + QuotedStr(FloatToStr(numPedido)), True);
    end;

    if (chkPeriodo.Checked) then
      Conditions.AddCondition('DTVENDA', 'P.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if cbxFilial.Value <> '0' then
      Conditions.AddCondition('FILIAL', ' P.IDFILIAL = ' +
        QuotedStr(cbxFilial.Value), True);

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'Todos') then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'P.IDCLIENTE = ' +
          fdsClienteID.AsString, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'P.IDCLIENTE = 0', True);
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
    begin
      Conditions.AddCondition('IDVENDEDOR', 'P.IDVENDEDOR = ' +
        cbxVendedor.Value, True);
    end;

    { if chkTipoDoc.Checked then
      Conditions.AddCondition('MOEDA', ' FP.MOEDA = ' + QuotedStr(cbxTipoDoc.Value), True);
    }

    // if rgbStatus.ItemIndex <> 3 then
    // Conditions.AddCondition('STATUS',
    // 'P.STATUS = ' + QuotedStr(status), True);

    Conditions.Apply;
    Prepare;
    Open;
  end;

  SomaTotalPedidos(status);

end;

procedure TfrmPedidos.PesquisarItem;
var
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
begin
  if cdsItensPedido.State in [dsInsert, dsEdit] then
  begin
    with qrySql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PI.*, P.CFOP,P.IDGRUPO,PIE.PREC_VENDA,PIE.SALDO FROM PRODUTO_ITEM PI, PRODUTO P, PRODUTO_ITEM_ESTOQUE PIE ');
     // SQL.Add('WHERE P.ID = PI.IDPRODUTO AND ((PI.COD_FABRICA = :COD_FABRICA) OR (PI.REFERENCIA = UPPER(:COD_FABRICA))) AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL');
      SQL.Add('WHERE P.ID = PI.IDPRODUTO AND');
      if rgbEan.Checked=true then
      SQL.Add('PI.COD_FABRICA = :COD_FABRICA');
      if rgbFab.Checked = true then
      SQL.Add('PI.COD_FABRICANTE = :COD_FABRICA');
      if rgbRef.Checked = true then
      SQL.Add('PI.REFERENCIA = :COD_FABRICA');

      SQL.Add('AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL');
      ParamByName('COD_FABRICA').AsString := edtItemCodigo.Text;
      ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
      Prepare;
      ExecQuery;
    end;

    if qrySql.RecordCount = 0 then
    begin
      Try
        frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
        frmPesqProdutoItens.ShowModal;
      Finally
        if frmPesqProdutoItens.ModalResult = mrOk then
        begin
          if Dm.fdsConfigN_VENDA_ESTOQUE_ZERO.AsString ='S' then
          begin
            if qrySql.FieldByName('SALDO').AsFloat <=0 then
            begin

              if (TfrmMenssagens.Mensagem('"'+frmPesqProdutoItens.fdsProdutoItensNOME.AsString+'" foi identificado com estoque zerado. Deseja continuar?',
                'Estoque Vazio.','Z',[mbSim,mbNao])) then
              begin
                temPermicao := uVerificaPermicao.Verifica('ESTOQUE_ZERADO_VENDER');

                if temPermicao = false then
                begin
                  TfrmMenssagens.Mensagem('Desculpe,Usu�rio sem permiss�o para vender produtos com estoque zerado.', 'Sem permiss�o.','I',[mbOK]);
                  Abort;
                end;
              end
              else
              begin
                abort;
              end;
            end;
          end;
          cdsItensPedidoIDPROD_ITEM.AsInteger := frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
          cdsItensPedidoVLR_UNITARIO.AsFloat  := frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
          cdsItensPedidoPESO.AsFloat          := frmPesqProdutoItens.fdsProdutoItensPESO.AsFloat;
          cdsItensPedidoNOME.AsString         := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
          cdsItensPedidoCOD_FABRICA.AsString  := frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
          cdsItensPedidoREFERENCIA.AsString   := frmPesqProdutoItens.fdsProdutoItensREFERENCIA.AsString;
          cdsItensPedidoIDGRUPO.AsInteger     := frmPesqProdutoItens.fdsProdutoItensIDGRUPO.AsInteger;
          cdsItensPedidoUNIDADE.AsString      := frmPesqProdutoItens.fdsProdutoItensUNIDADE.AsString;
          cdsItensPedidoQTN.AsFloat           := 1;
          edtItemNome.Text                    := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
          edtItemCodigo.Text                  := cdsItensPedidoCOD_FABRICA.AsString;
        end;
      end;
    end
    else
    begin
      //Verifica se Estoque zerado, para n�o realiza��o de venda de produto zerado
      if Dm.fdsConfigN_VENDA_ESTOQUE_ZERO.AsString ='S' then
      begin
        if qrySql.FieldByName('SALDO').AsFloat <=0 then
        begin

          if (TfrmMenssagens.Mensagem('"'+qrySql.FieldByName('NOME').AsString+'" foi identificado com estoque zerado. Deseja continuar?',
            'Estoque Vazio.','Z',[mbSim,mbNao])) then
          begin
            temPermicao := uVerificaPermicao.Verifica('ESTOQUE_ZERADO_VENDER');

            if temPermicao = false then
            begin
              TfrmMenssagens.Mensagem('Desculpe,Usu�rio sem permiss�o para vender produtos com estoque zerado.', 'Sem permiss�o.','I',[mbOK]);
              Abort;
            end;
          end
          else
          begin
            abort;
          end;
        end;
      end;
      cdsItensPedidoIDPROD_ITEM.AsInteger := qrySql.FieldByName('ID').AsInteger;
      cdsItensPedidoNOME.AsString         := qrySql.FieldByName('NOME').AsString;
      cdsItensPedidoVLR_UNITARIO.AsFloat  := qrySql.FieldByName('PREC_VENDA').AsFloat; // vitor ver sobre tabela de pre�o
      cdsItensPedidoCOD_FABRICA.AsString  := qrySql.FieldByName('COD_FABRICA').AsString;
      cdsItensPedidoREFERENCIA.AsString   := qrySql.FieldByName('REFERENCIA').AsString;
      cdsItensPedidoPESO.AsString         := qrySql.FieldByName('PESO').AsString;
      cdsItensPedidoIDGRUPO.AsInteger      := qrySql.FieldByName('IDGRUPO').AsInteger;
      cdsItensPedidoUNIDADE.AsString      := qrySql.FieldByName('UNIDADE').AsString;
      edtItemCodigo.Text                  := cdsItensPedidoCOD_FABRICA.AsString;
      edtItemNome.Text                    := cdsItensPedidoNOME.AsString;
      cdsItensPedidoQTN.AsInteger         := 1;
    end;
    qrySql.Close;
  end;
end;

procedure TfrmPedidos.PesquisaTipoCartao;
begin
  With qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT RI.* FROM CNT_RECEBER_ITEM RI ,cnt_receber R WHERE RI.idreceber = R.ID AND R.idvenda ='
      + QuotedStr(intToStr(fdsPedidoID.AsInteger)));
    SQL.Add('AND R.tipo_venda = ' + QuotedStr('PD') + ' AND RI.posicao=' +
      QuotedStr('AB') + 'and RI.prefixo =' + QuotedStr('CT'));
    Prepare;
    ExecQuery;
  end;
  if qrySql.RecordCount > 0 then
  begin
    tipoDeCartao := 'CT';
  end
  else
    tipoDeCartao := 'CD';

end;

procedure TfrmPedidos.PreparaEmissaoComprovante;
begin
  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDPEDIDO', 'P.ID = ' + intToStr(idPedido), True);
    Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' +
      DM.fdsConfigIDFILIAL.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  with fdsItensPedido do
  begin
    cdsItensPedido.Close;
    Close;
    Conditions.AddCondition('IDPEDIDO', 'PI.IDPEDIDO = ' +
      intToStr(idPedido), True);
    Conditions.Apply;
    Prepare;
    Open;
    cdsItensPedido.Open;
  end;

  if fdsPedidoPREFIXO.AsString = 'PD' then
  begin
    /// ///Tive que fazer assim porque pode haver mais de um IDReceber da venda por ter feito pagamento parcial na finalizacao
    with fdsCntReceber do
    begin
      Close;
      ParamByName('IDVENDA').AsInteger   := idPedido;
      ParamByName('IDFILIAL').AsInteger  := DM.fdsConfigIDFILIAL.AsInteger;
      ParamByName('TIPO_VENDA').AsString := 'PD';
      Prepare;
      Open;
    end;

    fdsCntReceber.First;
    cdsContReceberItens.EmptyTable;
    while not(fdsCntReceber.Eof) do
    begin
      with fdsCntReceber_Item do
      begin
        Close;
        ParamByName('IDRECEBER').AsInteger := fdsCntReceberID.AsInteger;
        ParamByName('IDFILIAL').AsInteger  := DM.fdsConfigIDFILIAL.AsInteger;
        Prepare;
        Open;
      end;
      if fdsCntReceber_Item.RecordCount > 0 then
      begin
        while not(fdsCntReceber_Item.Eof) do
        begin
          cdsContReceberItens.Append;
          cdsContReceberItensREFERENCIA.AsString := fdsCntReceber_ItemREFERENCIA.AsString;
          cdsContReceberItensPARCELA.AsString    := fdsCntReceber_ItemPARCELA.AsString;
          cdsContReceberItensDT_VENC.AsString    := fdsCntReceber_ItemDT_VENC.AsString;
          cdsContReceberItensVALOR.AsString      := fdsCntReceber_ItemVALOR.AsString;
          cdsContReceberItensPREFIXO.AsString    := fdsCntReceber_ItemPREFIXO.AsString;
          cdsContReceberItens.Post;

          fdsCntReceber_Item.Next;
        end;
      end;

      fdsCntReceber.Next;
    end;
    cdsContReceberItens.Open;
    /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    with cdsFormaPag do
    begin
      EmptyDataSet;

      if fdsPedidoVLR_CARTAO.AsFloat > 0 then
      begin
        Append;
        cdsFormaPagMOEDA.AsString := 'Cart�o: ';
        cdsFormaPagVALOR.AsFloat  := fdsPedidoVLR_CARTAO.AsFloat;
        Post;
      end;

      if fdsPedidoVLR_NOTA.AsFloat > 0 then
      begin
        Append;
        cdsFormaPagMOEDA.AsString := 'A Prazo: ';
        cdsFormaPagVALOR.AsFloat  := fdsPedidoVLR_NOTA.AsFloat;
        Post;
      end;

      if fdsPedidoVLR_ENTRADA.AsFloat > 0 then
      begin
        Append;
        cdsFormaPagMOEDA.AsString := 'Dinheiro:';
        cdsFormaPagVALOR.AsFloat  := fdsPedidoVLR_ENTRADA.AsFloat;
        Post;
      end;
      if fdsPedidoVLR_CHEQUE.AsFloat > 0 then
      begin
        Append;
        cdsFormaPagMOEDA.AsString := 'Cheque: ';
        cdsFormaPagVALOR.AsFloat  := fdsPedidoVLR_CHEQUE.AsFloat;
        Post;
      end;
      if fdsPedidoTROCO.AsFloat > 0 then
      begin
        Append;
        cdsFormaPagMOEDA.AsString := 'Troco:';
        cdsFormaPagVALOR.AsFloat  := fdsPedidoTROCO.AsFloat;
        Post;
      end;
    end;
  end
  else
  begin
    cdsContReceberItens.EmptyTable;
    cdsFormaPag.EmptyDataSet;
  end;

end;

procedure TfrmPedidos.RetornaClienteId(idCliente: String);
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

procedure TfrmPedidos.RetornaIDCliente(cliente: string);
begin
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('NOMECLIENTE', 'CL.NOME like UPPER(' +
      QuotedStr(cliente + '%') + ')', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmPedidos.RetornaItensPedido;
begin
  if (alterandoPedido = False) and (fdsPedido.RecordCount > 0) then
  begin
    with fdsItensPedido do
    begin
      cdsItensPedido.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDPEDIDO',
        'IDPEDIDO=' + fdsPedidoID.AsString, True);
      Conditions.AddCondition('IDFILIAL',
        'IDFILIAL=' + fdsPedidoIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      fdsItensPedido.OrderClause :='ORDEM, NOME ASC';
      Open;
      cdsItensPedido.Open;
    end;
  end;
end;

procedure TfrmPedidos.rgbStatusChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 0 then
  begin
    if not(tbsStatusAberto.Showing) then
      tbsStatusAberto.Show
  end;

  if NewIndex = 1 then
  begin
    if not(tbsStatusConfirmados.Showing) then
      tbsStatusConfirmados.Show
  end;

  if NewIndex = 2 then
  begin
    if not(tbsStatusFechados.Showing) then
      tbsStatusFechados.Show;
  end;

end;

procedure TfrmPedidos.rgbTipoChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 0 then
    Pesquisar('PD');

  if NewIndex = 1 then
    Pesquisar('OR');

  if NewIndex = 2 then
    Pesquisar('TD');
end;

procedure TfrmPedidos.edtOutrasDespesasEnter(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat -
      fdsPedidoVLR_OUTRAS_DESPESAS.AsFloat;
end;

procedure TfrmPedidos.edtOutrasDespesasExit(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat +
      fdsPedidoVLR_OUTRAS_DESPESAS.AsFloat;
end;

procedure TfrmPedidos.btnDuplicarClick(Sender: TObject);
var
  valorTot,valorFrete,valorDesc,subTributaria,ValorTotItens,pesoTot:Double;
  idVendedor, idCliente,idFormaPag:Integer;
  cliente,Prefixo:String;
begin
  valorTot:=0;valorFrete:=0;valorDesc:=0;subTributaria:=0;ValorTotItens:=0;
  idVendedor:=0 ;idCliente:=0;
  cliente:='';

  valorTot:=fdsPedidoVLR_TOTAL.AsFloat;
  valorFrete:=fdsPedidoVLR_FRETE.AsFloat;
  valorDesc:=fdsPedidoVLR_DESCONTO.AsFloat;
  subTributaria:=fdsPedidoSUBTRIBUTARIA.AsFloat;
  ValorTotItens:=fdsPedidoVLR_TOTITEM.AsFloat;
  idVendedor:=fdsPedidoIDVENDEDOR.AsInteger;
  idCliente:=fdsPedidoIDCLIENTE.AsInteger;
  idFormaPag:= fdsPedidoIDFORMA_PAG.AsInteger;
  cliente:= fdsPedidoCLIENTE.AsString;
  idPedidoExcl:=fdsPedidoID.AsInteger;
  tPedidoEX := fdsPedidoPREFIXO.AsString;
  try
    frmPedidoOuOrcamento := TfrmPedidoOuOrcamento.Create(nil);
    frmPedidoOuOrcamento.ShowModal;
  finally
    if frmPedidoOuOrcamento.ModalResult = mrOk then
    begin
      prefixo := pedido_Ocamento;
    end;
    frmPedidoOuOrcamento.free;
  end;

  RetornaItensPedido;

  fdsVendedor.First;
  alterandoPedido   := True;
  cdsItensPedido.Close;
  cdsItensPedido.Open;
  cdsItensPedido.EmptyDataSet;

  edtItemNome.Clear;
  edtItemCodigo.Clear;
  fdsPedido.Append;
  fdsPedidoIDVENDEDOR.AsInteger := idVendedor;
  Try
      frmPesqCliente              := TfrmPesqCliente.Create(nil);
      frmPesqCliente.edtNome.Text := cliente;
      frmPesqCliente.Show;
      frmPesqCliente.btnPesquisar.Click;
      frmPesqCliente.ModalResult  := mrOk;
  Finally
      if frmPesqCliente.ModalResult = mrOk then
      begin
        fdsPedidoIDCLIENTE.AsInteger := frmPesqCliente.fdsClientesID.AsInteger;
        fdsPedidoCLIENTE.AsString    := frmPesqCliente.fdsClientesNOME.AsString;
      end;
      frmPesqCliente.free;
  End;

  if frmPrincipal.pedidoSimples = 'S' then
    fdsPedidoSTATUS.AsString := 'FC'
  else
    fdsPedidoSTATUS.AsString := 'AB';

  fdsPedidoIDFILIAL.AsInteger   := DM.fdsConfigIDFILIAL.AsInteger;
  fdsPedidoFILIAL.AsString      := DM.fdsConfigFILIAL.AsString;
  fdsPedidoDT_INC.AsDateTime    := Now;
  fdsPedidoVISUALIZADO.AsString := 'S';
  fdsPedidoVLR_TOTITEM.AsFloat  := ValorTotItens;
  fdsPedidoVLR_TOTAL.AsFloat    := valorTot;
  fdsPedidoVLR_DESCONTO.AsFloat := valorDesc;
  fdsPedidoSUBTRIBUTARIA.AsFloat:= subTributaria;
  fdsPedidoPREFIXO.AsString := prefixo;
  btnItemAlterar.Enabled        := False;
  btnItemExcluir.Enabled        := False;
  pesoTotal                     := pesoTot;
  CarregaProdutoParaPedido;
  duplicando:='S';
  EditaInsere;
end;

procedure TfrmPedidos.edtFreteEnter(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat -
      fdsPedidoVLR_FRETE.AsFloat;
end;

procedure TfrmPedidos.edtFreteExit(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat +
      fdsPedidoVLR_FRETE.AsFloat;
end;

procedure TfrmPedidos.edtSubTribEnter(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat -
      fdsPedidoSUBTRIBUTARIA.AsFloat;
end;

procedure TfrmPedidos.edtSubTributaria(Sender: TObject);
begin
  if fdsPedido.State in [dsInsert, dsEdit] then
    fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat +
      fdsPedidoSUBTRIBUTARIA.AsFloat;
end;

procedure TfrmPedidos.ShowFinalizacaoVenda;
var
  prazo: Double;
  utils: TUtils;
begin
  Try
    prazo := utils.ValidaInteiroFloat(fdsPedidoPRAZO.AsString, 'I');

    frmVendaFinalizacao                      := TfrmVendaFinalizacao.Create(nil);
    frmVendaFinalizacao.idVenda              := fdsPedidoID.AsInteger;
    frmVendaFinalizacao.edtIDVenda.Text      := fdsPedidoID.AsString;
    frmVendaFinalizacao.edtPrefixoVenda.Text := fdsPedidoPREFIXO.AsString;
    frmVendaFinalizacao.tipoVenda            := 'PD';
    frmVendaFinalizacao.idVendedor           := fdsPedidoIDVENDEDOR.AsInteger;
    if fdsPedidoIDVENDEDOR.AsInteger <> 1 then
      frmVendaFinalizacao.edtIdVendedor.Enabled := False;
    frmVendaFinalizacao.cliente              := fdsPedidoCLIENTE.AsString;
    frmVendaFinalizacao.idCliente            := fdsPedidoIDCLIENTE.AsInteger;
    frmVendaFinalizacao.idFormaPag           := fdsPedidoIDFORMA_PAG.AsInteger;
    with frmVendaFinalizacao.fdsCliente do
    begin
        Close;
        Conditions.AddCondition('ID', 'CL.ID = ' + IntToStr(fdsPedidoIDCLIENTE.AsInteger), True);
        Conditions.Apply;
        Open;
     end;
    // if (fdsPedidoIDFORMA_PAG.AsInteger = 10) then
    // frmVendaFinalizacao.valorDoc := RoundTo(fdsPedidoVLR_TOTAL.AsFloat + DM.fdsConfigTARIFA_BOLETO.AsFloat, -2)
    // else
    frmVendaFinalizacao.valorDoc             := fdsPedidoVLR_TOTAL.AsFloat;
    frmVendaFinalizacao.edtCliente.Text      := fdsPedidoCLIENTE.AsString;

    if prazo > 0 then
      frmVendaFinalizacao.prazo := prazo;

    frmVendaFinalizacao.ShowModal;
  Finally
    if frmVendaFinalizacao.ModalResult = mrOk then
    begin
      idPedido := frmVendaFinalizacao.idVenda;
      fdsPedido.Edit;
      fdsPedidoIDFORMA_PAG.AsInteger   := frmVendaFinalizacao.idFormaPag;
      // fdsPedidoVLR_TOTAL.AsFloat := fdsPedidoVLR_TOTAL.AsFloat - frmVendaFinalizacao.valorDesconto;
      fdsPedidoVLR_DESCONTO.AsFloat    := frmVendaFinalizacao.valorDesconto;
      fdsPedidoVLR_ENTRADA.AsFloat     := frmVendaFinalizacao.valorDinheiro;
      fdsPedidoVLR_CHEQUE.AsFloat      := frmVendaFinalizacao.valorCheque;
      fdsPedidoVLR_CARTAO.AsFloat      := frmVendaFinalizacao.valorCartao;
      fdsPedidoVLR_NOTA.AsFloat        := frmVendaFinalizacao.valorParcelar;
      fdsPedidoVLR_FINANCEIRA.AsFloat  := frmVendaFinalizacao.valorFinanceira;
      fdsPedidoVLR_VALEDESONTO.AsFloat := frmVendaFinalizacao.valorValeDesconto;
      fdsPedidoTROCO.AsFloat           := frmVendaFinalizacao.troco;
      fdsPedidoVLR_TICKET.AsFloat      := frmVendaFinalizacao.valorTicket;
      fdsPedido.Post;
      DM.Conexao.CommitRetaining;

      // if (fdsPedidoVLR_NOTA.AsFloat > 0)or (fdsPedidoVLR_CHEQUE.AsFloat>0) or
      // ((fdsPedidoVLR_CARTAO.AsFloat>0) and (frmVendaFinalizacao.prefixoIdentCartao='CT'))then
      // begin
      Case MessageBox(Application.Handle,
        Pchar('Deseja imprimir o comprovante de Parcelamento do pedido?'),
        'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes:
          begin
            ImprimirComprovantePedido;
          end;
      End;
      // end;
      Application.MessageBox('Pedido faturado com sucesso.', 'Secesso',
        MB_OK + MB_ICONEXCLAMATION);
      frmVendaFinalizacao.free;
    end
    else
    begin
      frmVendaFinalizacao.free;
      fdsPedido.Edit;
      abort;
    end;

  End;
end;

procedure TfrmPedidos.SomaTotalPedidos(posicao: string);
var
  tempTotal: string;
  utils: TUtils;
  numPedido: Double;
begin
  tempTotal := '';
  with qrySomaTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(P.VLR_TOTAL) AS TOTAL FROM PEDIDO P, FORMA_PAGAMENTO FP WHERE FP.ID = P.IDFORMA_PAG');

    if posicao <> 'TD' then
    begin
      SQL.Add(' AND P.STATUS = :STATUS');
      ParamByName('STATUS').AsString := posicao;
    end;

    if (chkNumVenda.Checked) then
    begin
      numPedido := utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numPedido > 0 then
      begin
        SQL.Add(' AND P.ID = :ID');
        ParamByName('ID').AsString := FloatToStr(numPedido);
      end;
    end;

    if (chkPeriodo.Checked) then
    begin
      SQL.Add(' AND P.DT_INC BETWEEN :DT_INC1 AND :DT_INC2');
      ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
      ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
    end;

    if chkFilial.Checked then
    begin
      SQL.Add(' AND P.IDFILIAL = :IDFILIAL');
      ParamByName('IDFILIAL').AsString := cbxFilial.Value;
    end;

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'Todos') then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
      begin
        SQL.Add(' AND P.IDCLIENTE = :IDCLIENTE');
        ParamByName('IDCLIENTE').AsInteger := fdsClienteID.AsInteger;
      end
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
    begin
      SQL.Add(' AND P.IDVENDEDOR = :IDVENDEDOR');
      ParamByName('IDVENDEDOR').AsString := cbxVendedor.Value;
    end;
    { if chkTipoDoc.Checked then
      begin
      SQL.Add(' AND FP.MOEDA = :MOEDA');
      ParamByName('MOEDA').AsString:= cbxTipoDoc.Value;
      end; }

    Prepare;
    ExecQuery;
    tempTotal := FieldByName('TOTAL').AsString;
  end;
  if tempTotal = '' then
    tempTotal := '0';

  // lblTotal.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmPedidos.tbsFormShow(Sender: TObject);
begin
  if (alterandoPedido = False) and (fdsPedido.RecordCount > 0) then
  begin
    if fdsPedidoVISUALIZADO.AsString = 'N' then
    begin
      fdsPedido.Edit;
      fdsPedidoVISUALIZADO.AsString := 'S';
      fdsPedido.Post;
      DM.Conexao.CommitRetaining;

      if frmPrincipal.pnlPedidosDia.Visible = True then
      begin
        frmPrincipal.fdsPedido.Close;
        frmPrincipal.fdsPedido.Open;
      end;
    end;
  end;
  RetornaItensPedido;
end;

procedure TfrmPedidos.tbsStatusAbertoShow(Sender: TObject);
begin
  VisualizaPorStatus('AB');
  SomaTotalPedidos('AB');
  rgbStatus.ItemIndex := 0;
end;

procedure TfrmPedidos.tbsStatusConfirmadosShow(Sender: TObject);
begin
  VisualizaPorStatus('CF');
  SomaTotalPedidos('CF');
  rgbStatus.ItemIndex := 1;
end;

procedure TfrmPedidos.tbsStatusFechadosShow(Sender: TObject);
begin
  VisualizaPorStatus('FC');
  SomaTotalPedidos('FC');
  rgbStatus.ItemIndex := 2;
end;

procedure TfrmPedidos.tbsTabelaShow(Sender: TObject);
begin
  cdsItensPedido.Close;
  fdsItensPedido.Close;
end;

function TfrmPedidos.VerificaFaturamento(nPedido: Integer): Boolean;
var
  x: Boolean;
begin
  x := False;
  fdsNFesFaturamento.Close;
  fdsNFesFaturamento.Open;
  if fdsNFesFaturamento.Locate('IDPEDIDO;ORIGEM_PEDIDO_VENDA',
    VarArrayOf([nPedido, 'PD']), []) then
  begin
    x := True;
  end;
  Result := x;
end;

function TfrmPedidos.VerificaStatusFaturameto(nPedido: Integer;
  status: String): Boolean;
var
  x: Boolean;
begin
  x := False;
  fdsNFesFaturamento.Close;
  fdsNFesFaturamento.Open;
  if fdsNFesFaturamento.Locate('IDPEDIDO;ORIGEM_PEDIDO_VENDA;STATUS',VarArrayOf([nPedido, 'PD',status]), []) then
  begin
    x := True;
  end;
  Result := x;
end;

procedure TfrmPedidos.VisualizaPorStatus(status: string);
begin
  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Conditions.AddCondition('STATUS', 'P.STATUS = ' + QuotedStr(status), True);
    Conditions.Apply;
    Prepare;
    OrderClause := 'P.DT_INC DESC, P.ID DESC';
    Open;
  end;
end;

end.
