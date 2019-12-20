unit untEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzBckgnd, StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  JvCheckBox, RzCmboBx, RzEdit, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, RzPanel, RzRadGrp, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, DB, FIBDataSet,
  pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid, ImgList, cxGraphics,
  RzDBCmbo, RzTabs, RzDBEdit, Vcl.Imaging.pngimage, PngImageList, RzSplit,
  FIBQuery, pFIBQuery, Vcl.Menus, System.Actions, Vcl.ActnList, frxClass,
  System.DateUtils,System.Math,
  frxDBSet, ACBrDevice, ACBrETQ, ACBrBase, Datasnap.DBClient, pFIBClientDataSet,
  Datasnap.Provider;

type

  TfrmEstoque = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnSair: TRzBitBtn;
    fdsCor_Grupo: TpFIBDataSet;
    fdsCor_GrupoID: TFIBBCDField;
    fdsCor_GrupoNOME: TFIBStringField;
    fdsCor_GrupoREFERENCIA: TFIBStringField;
    fdsGrupo: TpFIBDataSet;
    fdsGrupoID: TFIBBCDField;
    fdsGrupoNOME: TFIBStringField;
    fdsGrupoREFERENCIA: TFIBStringField;
    dsGrupo: TDataSource;
    dsCor: TDataSource;
    fdsTamanho_Grupo: TpFIBDataSet;
    fdsTamanho_GrupoID: TFIBBCDField;
    fdsTamanho_GrupoNOME: TFIBStringField;
    fdsTamanho_GrupoREFERENCIA: TFIBStringField;
    dsTamanho_Grupo: TDataSource;
    fdsItens: TpFIBDataSet;
    dsItens: TDataSource;
    fdsFilial: TpFIBDataSet;
    dsFilial: TDataSource;
    fdsFilialID: TFIBBCDField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    fdsMovItens: TpFIBDataSet;
    dsMovItens: TDataSource;
    fdsMovItensID: TFIBBCDField;
    fdsMovItensDT_INC: TFIBDateField;
    fdsMovItensIDITEM: TFIBBCDField;
    fdsMovItensIDFILIAL: TFIBBCDField;
    fdsMovItensMOVIMENTO: TFIBStringField;
    fdsMovItensIDMOVIMENTO: TFIBBCDField;
    fdsMovItensTIPO: TFIBStringField;
    fdsMovItensQTN: TFIBBCDField;
    fdsMovItensSALDO: TFIBBCDField;
    fdsMovItensNOME: TFIBStringField;
    fdsMovItensTP: TFIBStringField;
    fdsMovItensIDFILIAL_DESTINO: TFIBBCDField;
    fdsMovItensMV: TFIBStringField;
    PngImageList1: TPngImageList;
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
    fdsItensPREC_CUSTO: TFIBBCDField;
    fdsItensPREC_VENDA: TFIBBCDField;
    fdsItensENVIADO_WEB: TFIBStringField;
    fdsItensPREC_TAB1: TFIBBCDField;
    fdsItensPREC_TAB2: TFIBBCDField;
    fdsItensPREC_TAB3: TFIBBCDField;
    fdsItensPREC_TAB4: TFIBBCDField;
    fdsItensPREC_TAB5: TFIBBCDField;
    fdsItensPREC_TAB6: TFIBBCDField;
    fdsItensCOD_FABRICA: TFIBStringField;
    fdsItensCUSTO_TOTAL: TFIBFloatField;
    fdsItensVENDA_TOTAL: TFIBFloatField;
    fdsItensTAMANHO: TFIBStringField;
    fdsItensALTURA_I: TFIBBCDField;
    fdsItensLARGURA_I: TFIBBCDField;
    fdsItensPROFUNDIDADE_I: TFIBBCDField;
    fdsItensALTURA_E: TFIBBCDField;
    fdsItensLARGURA_E: TFIBBCDField;
    fdsItensPROFUNDIDADE_E: TFIBBCDField;
    fdsItensCOR: TFIBStringField;
    fdsItensESTOQUE: TFIBBCDField;
    fdsItensESTOQUE_MINIMO: TFIBBCDField;
    fdsItensIDFILIAL: TFIBBCDField;
    fdsItensFILIAL: TFIBStringField;
    d: TRzSplitter;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    gdrProdutoItem: TJvDBGrid;
    tbsHistorico: TRzTabSheet;
    JvDBGrid1: TJvDBGrid;
    RzPanel3: TRzPanel;
    lblNome: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel6: TRzLabel;
    edtClienteNome: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    RzPanel4: TRzPanel;
    pnlFilial: TRzGroupBox;
    cbxFilial: TRzComboBox;
    chkFilial: TJvCheckBox;
    chkNomeItem: TJvCheckBox;
    pnlNome: TRzGroupBox;
    edtPesqItem: TRzEdit;
    chkEAN: TJvCheckBox;
    pnlEan: TRzGroupBox;
    edtPesqEAN: TRzEdit;
    btnPesquisar: TJvImgBtn;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnInprimir: TRzBitBtn;
    lblTotalItens: TRzLabel;
    lblTituloTotal: TRzLabel;
    RzLabel7: TRzLabel;
    lblTotalCusto: TRzLabel;
    RzLabel9: TRzLabel;
    lblTotalVenda: TRzLabel;
    qrySomaTotal: TpFIBQuery;
    ActionList1: TActionList;
    impInventarioGeral: TAction;
    ppmImprimir: TPopupMenu;
    ImprimirInventarioGeral: TMenuItem;
    pnlTipo: TRzGroupBox;
    chkTipo: TJvCheckBox;
    cbxTipo: TRzComboBox;
    frxItens: TfrxDBDataset;
    RzDBEdit7: TRzDBEdit;
    RzLabel8: TRzLabel;
    fdsItensPREC_ULTIMO_CUSTO: TFIBBCDField;
    fdsItensDT_VALIDADE: TFIBDateField;
    fdsItensMARGEM_LUCRO: TFIBBCDField;
    fdsItensTIPO: TFIBStringField;
    rgbSaldo: TRzRadioGroup;
    pnlGrupo: TRzGroupBox;
    cbxGrupo: TRzComboBox;
    chkGrupo: TJvCheckBox;
    impEtiqPrateleira: TAction;
    EtiquetadePrateleira1: TMenuItem;
    ACBrETQ: TACBrETQ;
    fdsTabPreco: TpFIBDataSet;
    frxTabPreco: TfrxDBDataset;
    impTabPrecos: TAction;
    abeladePreos1: TMenuItem;
    fdsTabPrecoID: TFIBBCDField;
    fdsTabPrecoDESCRICAO1: TFIBStringField;
    fdsTabPrecoDESCRICAO2: TFIBStringField;
    fdsTabPrecoDESCRICAO3: TFIBStringField;
    fdsTabPrecoDESCRICAO4: TFIBStringField;
    fdsTabPrecoDESCRICAO5: TFIBStringField;
    fdsTabPrecoDESCRICAO6: TFIBStringField;
    fdsTabPrecoPDV_DES1: TFIBStringField;
    fdsTabPrecoPDV_DES2: TFIBStringField;
    fdsTabPrecoPDV_DES3: TFIBStringField;
    fdsTabPrecoPDV_DES4: TFIBStringField;
    fdsTabPrecoPDV_DES5: TFIBStringField;
    fdsTabPrecoPDV_DES6: TFIBStringField;
    fdsTabPrecoPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE6: TFIBBCDField;
    cdsTabPreco: TpFIBClientDataSet;
    cdsTabPrecoTAB1: TStringField;
    cdsTabPrecoTAB2: TStringField;
    cdsTabPrecoTAB3: TStringField;
    cdsTabPrecoTAB4: TStringField;
    cdsTabPrecoTAB5: TStringField;
    cdsTabPrecoTAB6: TStringField;
    fdsMovItensENVIADO_WEB: TFIBStringField;
    fdsMovItensORDEM: TFIBIntegerField;
    impEtiq3Colunas: TAction;
    Etiquetacomum1: TMenuItem;
    fdsItensDESC_MAX1: TFIBBCDField;
    fdsItensDESC_MAX2: TFIBBCDField;
    fdsItensCOD_FABRICANTE: TFIBStringField;
    fdsItensCOMISSAO_DN: TFIBBCDField;
    fdsItensCOMISSAO_CH: TFIBBCDField;
    fdsItensCOMISSAO_CT: TFIBBCDField;
    fdsItensUNIDADE: TFIBStringField;
    fdsItensESTOQUE_GREN: TFIBBCDField;
    lblSaldoGerencial: TRzLabel;
    lblTotalGerencial: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel5: TRzLabel;
    pnlFornecedor: TRzGroupBox;
    edtPesqFornecedor: TRzEdit;
    chkFornecedor: TJvCheckBox;
    tbsRazao: TRzTabSheet;
    RzPanel5: TRzPanel;
    gdrRazaoProduto: TJvDBGrid;
    pnlData: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel12: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    rgbPeriodo: TRzRadioGroup;
    fdsRazaoProdDia: TpFIBDataSet;
    fdsRazaoProdMes: TpFIBDataSet;
    cdsRazaoProduto: TpFIBClientDataSet;
    fdsRazaoProdDiaDT_INC: TFIBDateField;
    cdsRazaoProdutoDT_INC: TDateField;
    fdsRazaoProdDiaQTN: TFIBBCDField;
    dsRazaoProduto: TDataSource;
    btnPesqRazaoProd: TJvImgBtn;
    cdsRazaoProdutoTOTAL_ENTRADA: TFloatField;
    cdsRazaoProdutoTOTAL_SAIDA: TFloatField;
    lblNomeProduto: TRzLabel;
    impRazaoProduto: TAction;
    frxRazaoProduto: TfrxDBDataset;
    RazodoProduto1: TMenuItem;
    fdsRazaoProdDiaTIPO: TFIBStringField;
    cdsRazaoProdutoMES_MOV: TStringField;
    fdsRazaoProdMesDT: TFIBDateField;
    fdsRazaoProdMesTIPO: TFIBStringField;
    fdsRazaoProdMesQTN: TFIBBCDField;
    btnPesqProduto: TRzBitBtn;
    tbsFaltas: TRzTabSheet;
    gdrFaltas: TJvDBGrid;
    fdsFaltas: TpFIBDataSet;
    dsFaltas: TDataSource;
    fdsFaltasIDITEM: TFIBBCDField;
    fdsFaltasIDFILIAL: TFIBBCDField;
    fdsFaltasDT_INC: TFIBDateField;
    fdsFaltasENVIADO_WEB: TFIBStringField;
    fdsFaltasNOME: TFIBStringField;
    fdsFaltasCOD_FABRICA: TFIBStringField;
    imgDeletar: TImage;
    imgDeletar2: TImage;
    impRelFaltas: TAction;
    RelatriodeFaltas1: TMenuItem;
    PngImageList2: TPngImageList;
    frxFaltas: TfrxDBDataset;
    lblTotCustoGerencial: TRzLabel;
    lblCustoGerencial: TRzLabel;
    fdsItensCUSTO_TOT_GEREN: TFIBFloatField;
    fdsMovItensTIPO_ESTOQUE: TFIBStringField;
    fdsItensIDITEM: TFIBBCDField;
    fdsItensSALDO: TFIBBCDField;
    fdsItensSALDO_GERENCIAL: TFIBBCDField;
    fdsItensSALDO_MINIMO: TFIBBCDField;
    impFaturamentoCliente: TAction;
    FaturamentoporCliente1: TMenuItem;
    fdsFaturamentoCliente: TpFIBDataSet;
    fdsFaturamentoClienteIDCLIENTE: TFIBBCDField;
    fdsFaturamentoClienteDT_INC: TFIBDateField;
    fdsFaturamentoClienteIDPROD_ITEM: TFIBBCDField;
    fdsFaturamentoClienteQTN_TOT: TFIBBCDField;
    frxFaturamentoCliente: TfrxDBDataset;
    fdsFaturamentoClienteNOME: TFIBStringField;
    fdsFaturamentoClienteCODIGO_CLIENTE: TFIBBCDField;
    fdsFaturamentoClienteID: TFIBBCDField;
    RelatrioSinttico1: TMenuItem;
    RelatrioAnaltico1: TMenuItem;
    EntradadeItensnoPrerodo1: TMenuItem;
    fdsRelSintetico: TpFIBDataSet;
    OrdenadoporFornecedor1: TMenuItem;
    OrdenadoPorPerodo1: TMenuItem;
    N1: TMenuItem;
    fdsRelAnalitico: TpFIBDataSet;
    fdsRelSinteticoID: TFIBBCDField;
    fdsRelSinteticoDT_INC: TFIBDateField;
    fdsRelSinteticoTIPO: TFIBStringField;
    fdsRelSinteticoPREFIXO: TFIBStringField;
    fdsRelSinteticoMOVIMENTO: TFIBStringField;
    fdsRelSinteticoTIPO_MOV: TFIBStringField;
    fdsRelSinteticoNOTA_NUM: TFIBStringField;
    fdsRelSinteticoCHAVE_NOTA: TFIBStringField;
    fdsRelSinteticoVLR_TOTAL: TFIBBCDField;
    fdsRelSinteticoIDFORNECEDOR: TFIBBCDField;
    fdsRelSinteticoNOME: TFIBStringField;
    frxRelSintetico: TfrxDBDataset;
    AgruparporMovimentao1: TMenuItem;
    NoAgrupar1: TMenuItem;
    frxRelAnalitico: TfrxDBDataset;
    fdsRelSinteticoTP_MOV: TFIBStringField;
    fdsRelAnaliticoIDMOV: TFIBBCDField;
    fdsRelAnaliticoQTN: TFIBBCDField;
    fdsRelAnaliticoPREC_CUSTO: TFIBBCDField;
    fdsRelAnaliticoPREC_VENDA: TFIBBCDField;
    fdsRelAnaliticoNOME: TFIBStringField;
    fdsRelAnaliticoTIPO_MOV: TFIBStringField;
    AgruparporMovimentao2: TMenuItem;
    AgruparporFornecedor1: TMenuItem;
    AgruparporData1: TMenuItem;
    NoAgrupar2: TMenuItem;
    fdsRelAnaliticoIDPROD_ITEM: TFIBBCDField;
    fdsRelAnaliticoCOD_FABRICA: TFIBStringField;
    fdsEntradaItenPeriodo: TpFIBDataSet;
    frxEntradaItenPeriodo: TfrxDBDataset;
    PorFornecedor1: TMenuItem;
    PorMovimentao1: TMenuItem;
    Compras1: TMenuItem;
    MovimentaoInterna1: TMenuItem;
    odos1: TMenuItem;
    btnpesqFornecedor: TRzBitBtn;
    edtIdFornecedor: TRzEdit;
    ExtratodasMovimentaes1: TMenuItem;
    PorPerodo1: TMenuItem;
    Sinttico1: TMenuItem;
    Analtico1: TMenuItem;
    ItensnoPerodo1: TMenuItem;
    frxItensPeriodoMov: TfrxDBDataset;
    fdsItensPeriodoMov: TpFIBDataSet;
    fdsItensPeriodoMovIDPROD_ITEM: TFIBBCDField;
    fdsItensPeriodoMovNOME: TFIBStringField;
    fdsItensPeriodoMovCOD_FABRICA: TFIBStringField;
    fdsItensPeriodoMovQUANTIDADE: TFIBBCDField;
    fdsItensPeriodoMovPRECO_VENDA: TFIBBCDField;
    fdsItensPeriodoMovPRECO_CUSTO: TFIBBCDField;
    fdsItensPeriodoMovCUSTO_TOTAL: TFIBFloatField;
    fdsItensPeriodoMovFORNECEDOR: TFIBStringField;
    fdsItensPeriodoMovMOVIMENTACAO: TFIBStringField;
    fdsEntradaItenPeriodoIDPROD_ITEM: TFIBBCDField;
    fdsEntradaItenPeriodoNOME: TFIBStringField;
    fdsEntradaItenPeriodoCOD_FABRICA: TFIBStringField;
    fdsEntradaItenPeriodoQUANTIDADE: TFIBBCDField;
    fdsEntradaItenPeriodoPRECO_VENDA: TFIBBCDField;
    fdsEntradaItenPeriodoPRECO_CUSTO: TFIBBCDField;
    fdsEntradaItenPeriodoCUSTO_TOTAL: TFIBFloatField;
    fdsEntradaItenPeriodoFORNECEDOR: TFIBStringField;
    cdsRelSintetico: TpFIBClientDataSet;
    dspRelSintetico: TpFIBDataSetProvider;
    cdsRelSinteticoVALOR_TOTAL: TAggregateField;
    cdsRelSinteticoVLR_TOTAL: TpFIBClientBCDField;
    frxTotaisSintetico: TfrxDBDataset;
    dspEntradaPeriodo: TpFIBDataSetProvider;
    cdsEntradaPeriodo: TpFIBClientDataSet;
    frxTotEntradaPeriodo: TfrxDBDataset;
    cdsEntradaPeriodoCUSTO_TOTAL: TFloatField;
    cdsEntradaPeriodoVALOR_TOTAL: TAggregateField;
    dspItensPeriodoMov: TpFIBDataSetProvider;
    cdsItensPeriodoMov: TpFIBClientDataSet;
    frxTotItensPeriodoMov: TfrxDBDataset;
    cdsItensPeriodoMovCUSTO_TOTAL: TFloatField;
    cdsItensPeriodoMovVALOR_TOTAL: TAggregateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gdrProdutoItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure chkEANClick(Sender: TObject);
    procedure chkNomeItemClick(Sender: TObject);
    procedure edtPesqEANEnter(Sender: TObject);
    procedure edtPesqItemEnter(Sender: TObject);
    procedure edtPesqEANExit(Sender: TObject);
    procedure edtPesqItemExit(Sender: TObject);
    procedure fdsItensAfterOpen(DataSet: TDataSet);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure RetornaMovItens;
    procedure tbsHistoricoShow(Sender: TObject);
    procedure fdsItensAfterScroll(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSairClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure SomaTotal(index: Integer);
    procedure btnTodosClick(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure ImpInvetarioGeral;
    procedure impInventarioGeralExecute(Sender: TObject);
    procedure chkTipoClick(Sender: TObject);
    procedure gdrProdutoItemTitleClick(Column: TColumn);
    procedure rgbSaldoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure impEtiqPrateleiraExecute(Sender: TObject);
    procedure impTabPrecosExecute(Sender: TObject);
    procedure fdsGrupoAfterOpen(DataSet: TDataSet);
    procedure chkGrupoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure impEtiq3ColunasExecute(Sender: TObject);
    procedure ConfImprimir(tipo: string);
    procedure tbsTabelaShow(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure edtPesqFornecedorEnter(Sender: TObject);
    procedure edtPesqFornecedorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbsRazaoShow(Sender: TObject);
    procedure btnPesqRazaoProdClick(Sender: TObject);
    procedure gdrRazaoProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure impRazaoProdutoExecute(Sender: TObject);
    procedure rgbPeriodoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure gdrProdutoItemDblClick(Sender: TObject);
    procedure btnPesqProdutoClick(Sender: TObject);
    procedure tbsFaltasShow(Sender: TObject);
    procedure gdrFaltasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrFaltasCellClick(Column: TColumn);
    procedure impRelFaltasExecute(Sender: TObject);
    procedure impFaturamentoClienteExecute(Sender: TObject);
    procedure N1MovInterna1Click(Sender: TObject);
    procedure N1Compras1Click(Sender: TObject);
    procedure OrdenadoporFornecedor1Click(Sender: TObject);
    procedure OrdenadoPorPerodo1Click(Sender: TObject);
    procedure AgruparporMovimentao1Click(Sender: TObject);
    procedure NoAgrupar1Click(Sender: TObject);
    procedure fdsRelSinteticoAfterScroll(DataSet: TDataSet);
    procedure AgruparporMovimentao2Click(Sender: TObject);
    procedure AgruparporFornecedor1Click(Sender: TObject);
    procedure AgruparporData1Click(Sender: TObject);
    procedure NoAgrupar2Click(Sender: TObject);
    procedure btnpesqFornecedorClick(Sender: TObject);
    procedure PorFornecedor1Click(Sender: TObject);
    procedure MovimentaoInterna1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure Sinttico2Click(Sender: TObject);
    procedure Analtico1Click(Sender: TObject);
    procedure ItensnoPerodo1Click(Sender: TObject);
  private
    procedure Pesquisar(index: Integer);
    procedure RetornaRazaoProdDia;
    procedure RetornaRazaoProdMes;
    procedure RazaoProdutoDia;
    procedure RazaoProdutoMes;
    procedure ImpRelSintetico(movimento: String;descricao:String);
    procedure ImpRelAnalitico(movimento: String;descricao:String);
    procedure ImpEntradaItens(filtro:String;descricao:String);
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;
  tempCustoTotal, tempCustoTotGeren, tempVendaTotal, tempSaldo,
    tempSaldoGerencial,ordemMov: string;
  ordem: string[5];
  Inv_totVendas,Inv_TotCusto,Inv_TotItens:Double;

implementation

uses untData, uUtils, untEtiquetaPrateleira, untSelTabPreco,
  untPesqProdutoItens, untPrincipal, untPesqFornecedor;

{$R *.dfm}

procedure TfrmEstoque.AgruparporData1Click(Sender: TObject);
begin
 ordemMov :='D';// ordenar por data.
 ImpRelAnalitico(ordemMov,'Por Data');
end;

procedure TfrmEstoque.AgruparporFornecedor1Click(Sender: TObject);
begin
 ordemMov:='F'; // ordenar por fornecedor.
 ImpRelAnalitico(ordemMov,'Por Fornecedor');
end;

procedure TfrmEstoque.AgruparporMovimentao1Click(Sender: TObject);
begin
 ordemMov:='M';
 ImpRelSintetico(ordemMov,'Por Origem de Movimentação');
end;

procedure TfrmEstoque.AgruparporMovimentao2Click(Sender: TObject);
begin
 ordemMov:='M';
 ImpRelAnalitico(ordemMov,'Por Origem de Movimentação');
end;

procedure TfrmEstoque.Analtico1Click(Sender: TObject);
begin
 ordemMov:='E';
 ImpRelAnalitico(ordemMov,'Por Movimentação de Estoque');
end;

procedure TfrmEstoque.btnFirstClick(Sender: TObject);
begin
  fdsItens.Prior;
end;

procedure TfrmEstoque.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmEstoque.Left + 245, frmEstoque.top + 100);
end;

procedure TfrmEstoque.btnLastClick(Sender: TObject);
begin
  fdsItens.Last;
end;

procedure TfrmEstoque.btnNextClick(Sender: TObject);
begin
  fdsItens.Next;
end;

procedure TfrmEstoque.btnPesqProdutoClick(Sender: TObject);
begin
  Try
    frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
    frmPesqProdutoItens.ShowModal;
  Finally
    if frmPesqProdutoItens.ModalResult = mrOk then
    begin
      edtPesqItem.Text := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
    end;
    frmPesqProdutoItens.Free;
  End;
end;

procedure TfrmEstoque.btnPesqRazaoProdClick(Sender: TObject);
begin
  if rgbPeriodo.ItemIndex = 0 then
    RazaoProdutoDia
  else
    RazaoProdutoMes;
end;

procedure TfrmEstoque.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar(rgbSaldo.ItemIndex);
end;

procedure TfrmEstoque.btnPriorClick(Sender: TObject);
begin
  fdsItens.First;
end;

procedure TfrmEstoque.btnSairClick(Sender: TObject);
begin
  frmEstoque.Close;
end;

procedure TfrmEstoque.btnTodosClick(Sender: TObject);
begin
  with fdsItens do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Open;
    First;
  end;

  rgbSaldo.ItemIndex := 0;
  chkFilial.Checked := False;
  chkNomeItem.Checked := False;
  chkEAN.Checked := False;
  chkNomeItem.Checked := False;
end;

procedure TfrmEstoque.chkFilialClick(Sender: TObject);
begin
  pnlFilial.Enabled := chkFilial.Checked;
  if not(chkFilial.Checked) then
    cbxFilial.ItemIndex := 0;
end;

procedure TfrmEstoque.chkFornecedorClick(Sender: TObject);
begin
  pnlFornecedor.Enabled := chkFornecedor.Checked;

  if not(chkFornecedor.Checked) then
  begin
    edtPesqFornecedor.Text := 'Todos';
    edtPesqFornecedor.Font.Color := clGray;
  end;
end;

procedure TfrmEstoque.chkGrupoClick(Sender: TObject);
begin
  pnlGrupo.Enabled := chkGrupo.Checked;

  if not(chkGrupo.Checked) then
    cbxGrupo.ItemIndex := 0;
end;

procedure TfrmEstoque.chkNomeItemClick(Sender: TObject);
begin
  pnlNome.Enabled := chkNomeItem.Checked;

  if not(chkNomeItem.Checked) then
  begin
    edtPesqItem.Text := 'Todos';
  end;
end;

procedure TfrmEstoque.chkEANClick(Sender: TObject);
begin
  pnlEan.Enabled := chkEAN.Checked;

  if not(chkEAN.Checked) then
  begin
    edtPesqEAN.Text := 'Todos';
    edtPesqEAN.Font.Color := clGray;
  end;

end;

procedure TfrmEstoque.chkTipoClick(Sender: TObject);
begin
  pnlTipo.Enabled := chkTipo.Checked;

  if not(chkTipo.Checked) then
  begin
    cbxTipo.Value := 'TD';
  end;
end;

procedure TfrmEstoque.Compras1Click(Sender: TObject);
begin
  ImpEntradaItens('C','a Compras');
end;

procedure TfrmEstoque.ConfImprimir(tipo: string);
begin
  if DM.fdsConfigMODELO_ETIQ_PROD.AsString <>'NENHUM' then
  begin
    Try
      frmEtiquetaPrateleira := TfrmEtiquetaPrateleira.Create(nil);
      frmEtiquetaPrateleira.totImprimir := fdsItens.RecordCount;
      frmEtiquetaPrateleira.tipo := tipo;
      while not(fdsItens.Eof) do
      begin
        frmEtiquetaPrateleira.fdsItens.Append;
        frmEtiquetaPrateleira.fdsItensNOME.AsString := fdsItensNOME.AsString;
        frmEtiquetaPrateleira.fdsItensIMPRIMIR.AsString := 'S';
        frmEtiquetaPrateleira.fdsItensSALDO.AsFloat := fdsItensESTOQUE.AsFloat;
        frmEtiquetaPrateleira.fdsItensCOD_FABRICA.AsString :=
          fdsItensCOD_FABRICA.AsString;
        frmEtiquetaPrateleira.fdsItensPREC_VENDA.AsCurrency :=
          fdsItensPREC_VENDA.AsCurrency;
        frmEtiquetaPrateleira.fdsItensPREC_VENDA2.AsCurrency :=
          fdsItensPREC_TAB2.AsCurrency;
        frmEtiquetaPrateleira.fdsItens.Post;
        fdsItens.Next;
      end;

      frmEtiquetaPrateleira.ShowModal;

    Finally
      frmEtiquetaPrateleira.Free;
    End;
  end;
end;

procedure TfrmEstoque.edtPesqItemEnter(Sender: TObject);
begin
  if Trim(edtPesqItem.Text) = 'TODOS' then
  begin
    edtPesqItem.Text := EmptyStr;
    edtPesqItem.Font.Color := clBlack;
  end;
end;

procedure TfrmEstoque.edtPesqItemExit(Sender: TObject);
begin
  if Trim(edtPesqItem.Text) = EmptyStr then
  begin
    edtPesqItem.Text := 'Todos';
    edtPesqItem.Font.Color := clGray;
  end;
end;

procedure TfrmEstoque.edtPesqEANEnter(Sender: TObject);
begin
  if Trim(edtPesqEAN.Text) = 'TODOS' then
  begin
    edtPesqEAN.Text := EmptyStr;
    edtPesqEAN.Font.Color := clBlack;
  end;
end;

procedure TfrmEstoque.edtPesqEANExit(Sender: TObject);
begin
  if Trim(edtPesqEAN.Text) = EmptyStr then
  begin
    edtPesqEAN.Text := 'Todos';
    edtPesqEAN.Font.Color := clGray;
  end;
end;

procedure TfrmEstoque.edtPesqFornecedorEnter(Sender: TObject);
begin
  if Trim(edtPesqFornecedor.Text) = 'TODOS' then
  begin
    edtPesqFornecedor.Text := EmptyStr;
    edtPesqFornecedor.Font.Color := clBlack;
  end;
end;

procedure TfrmEstoque.edtPesqFornecedorExit(Sender: TObject);
begin
  if Trim(edtPesqFornecedor.Text) = EmptyStr then
  begin
    edtPesqFornecedor.Text := 'Todos';
    edtPesqFornecedor.Font.Color := clGray;
  end;
end;

procedure TfrmEstoque.fdsFilialAfterOpen(DataSet: TDataSet);
begin
  cbxFilial.AddItemValue('TODOS', '0');
  fdsFilial.First;
  while not(fdsFilial.Eof) do
  begin
    cbxFilial.AddItemValue(fdsFilialNOME.AsString, fdsFilialID.AsString);
    fdsFilial.Next;
  end;
  cbxFilial.ItemIndex := DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmEstoque.fdsGrupoAfterOpen(DataSet: TDataSet);
begin
  cbxGrupo.AddItemValue('TODOS', '0');
  fdsGrupo.First;
  while not(fdsGrupo.Eof) do
  begin
    cbxGrupo.AddItemValue(fdsGrupoNOME.AsString, fdsGrupoID.AsString);
    fdsGrupo.Next;
  end;
  cbxGrupo.ItemIndex := 0;
end;

procedure TfrmEstoque.fdsItensAfterOpen(DataSet: TDataSet);
begin
  fdsItens.Last;
  fdsItens.First;
end;

procedure TfrmEstoque.fdsItensAfterScroll(DataSet: TDataSet);
var
  utils: TUtils;
begin
  if pgcControl.ActivePageIndex = 1 then
  begin
    RetornaMovItens;
    lblTotalCusto.Caption := utils.AdicionaMascaraDinheiro
      (fdsItensCUSTO_TOTAL.AsString);
    lblTotalVenda.Caption := utils.AdicionaMascaraDinheiro
      (fdsItensVENDA_TOTAL.AsString);
    lblTotalItens.Caption := fdsItensESTOQUE.AsString;
    lblTotalGerencial.Caption := fdsItensESTOQUE_GREN.AsString;
  end;

  if pgcControl.ActivePageIndex = 2 then
  begin
    lblNomeProduto.Caption := fdsItensNOME.AsString;
    RazaoProdutoDia;
  end;
end;

procedure TfrmEstoque.fdsRelSinteticoAfterScroll(DataSet: TDataSet);
begin
   if fdsRelSintetico.RecordCount > 0 then
  begin
    with fdsRelAnalitico do
    begin
      Close;
      ParamByName('IDMOV').AsInteger:=fdsRelSinteticoID.AsInteger;
      ParamByName('TIPO_MOV').AsString:= fdsRelSinteticoTIPO_MOV.AsString;
      Prepare;
      Open;
    end;
  end;
end;

procedure TfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmEstoque := nil;
end;

procedure TfrmEstoque.FormCreate(Sender: TObject);
var
  gerencial: Boolean;
begin
  cdsTabPreco.CreateDataSet;
  cdsRazaoProduto.CreateDataSet;
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;

  if DM.fdsConfigESTOQUE_GERENCIAL.AsString = 'S' then
    gerencial := True
  else
    gerencial := False;

  lblCustoGerencial.Visible := gerencial;
  lblSaldoGerencial.Visible := gerencial;
  lblTotCustoGerencial.Visible := gerencial;
  lblTotalGerencial.Visible := gerencial;
  gdrProdutoItem.Columns[2].Visible := gerencial;

end;

procedure TfrmEstoque.FormShow(Sender: TObject);
begin
  fdsItens.Open;
  fdsFilial.Open;
  fdsGrupo.Open;
  cbxTipo.Value := 'TD';
  ordem := 'ASC';
  Pesquisar(rgbSaldo.ItemIndex);
end;

procedure TfrmEstoque.gdrFaltasCellClick(Column: TColumn);
begin
  if gdrFaltas.SelectedIndex = 3 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente Excluir o Produto ' + fdsFaltasNOME.AsString +
      ' da lista de faltas?'), 'Atenção', MB_YESNO + MB_ICONQUESTION +
      MB_DEFBUTTON2) of
      idYes:
        begin
          fdsFaltas.Delete;
          fdsFaltas.Close;
          fdsFaltas.Open;
          DM.Conexao.CommitRetaining;
        end;
    end;
  end;

end;

procedure TfrmEstoque.gdrFaltasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Bitmap: TBitmap;
begin
  if not odd(fdsFaltas.RecNo) then
  begin
    gdrFaltas.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrFaltas.Canvas.Brush.Color := clHighlight;
    gdrFaltas.Canvas.FillRect(Rect);
    gdrFaltas.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.index = 3) and not(fdsFaltas.IsEmpty) then
    begin
      Bitmap := imgDeletar2.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.top - Bitmap.Height) div 2 + Rect.top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end
  else
  begin
    if (Column.index = 3) and not(fdsFaltas.IsEmpty) then
    begin
      Bitmap := imgDeletar.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.top - Bitmap.Height) div 2 + Rect.top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end;
end;

procedure TfrmEstoque.gdrProdutoItemDblClick(Sender: TObject);
begin
  if fdsItens.RecordCount > 0 then
    tbsHistorico.Show;
end;

procedure TfrmEstoque.gdrProdutoItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsItens.RecNo) then
  begin
    gdrProdutoItem.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
    gdrProdutoItem.Canvas.Brush.Color := clHighlight;
    gdrProdutoItem.Canvas.FillRect(Rect);
    gdrProdutoItem.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmEstoque.gdrProdutoItemTitleClick(Column: TColumn);
begin
  fdsItens.Close;
  fdsItens.OrderClause := Column.FieldName + ' ' + ordem;
  fdsItens.Open;

  if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';
end;

procedure TfrmEstoque.gdrRazaoProdutoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsRazaoProduto.RecNo) then
  begin
    gdrRazaoProduto.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrProdutoItem.Canvas.Brush.Color := clHighlight;
    gdrRazaoProduto.Canvas.FillRect(Rect);
    gdrRazaoProduto.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmEstoque.ImpEntradaItens(filtro: String;descricao:String);
begin
    if ((filtro ='F') and (chkFornecedor.Checked = true) and (edtIdFornecedor.Text=EmptyStr)) or ((filtro ='F')and(chkFornecedor.Checked = false)) then
    begin
       Application.MessageBox('Informe um fornecedor.','Atenção',MB_OK+MB_ICONEXCLAMATION);
       abort;
    end;
    with fdsEntradaItenPeriodo do
    begin
      cdsEntradaPeriodo.Close;
      close;
      Conditions.Clear;

      ParamByName('DT_INI').AsDateTime:= dtpInicio.Date;
      ParamByName('DT_FIM').AsDateTime:= dtpFim.Date;

      if (filtro ='MI') OR (filtro='C') then
      begin
        Conditions.AddCondition('TIPO_MOV','EI.TIPO_MOV ='+ QuotedStr(filtro),true);
      end;

      if (filtro ='F') and (chkFornecedor.Checked = true) and (edtIdFornecedor.Text<>EmptyStr)then
      begin
        //Conditions.AddCondition('TIPO_MOV','EI.TIPO_MOV ='+ QuotedStr('C'),true);
        Conditions.AddCondition('IDFORNECEDOR','EI.IDFORNECEDOR ='+ QuotedStr(edtIdFornecedor.Text),true);
        descricao:=descricao+ edtPesqFornecedor.Text;
      end;

      conditions.Apply;
      Prepare;
      Open;
      cdsEntradaPeriodo.Open;
    end;
    DM.dtInicio := dtpInicio.Date;
    DM.dtFim := dtpFim.Date;
    DM.obs:= descricao;
    DM.filial:=DM.fdsConfigIDFILIAL.AsString;
    DM.frxReport1.Clear;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxRelEstoqueEntradaItensPeriodo.fr3');
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);
end;

procedure TfrmEstoque.impEtiq3ColunasExecute(Sender: TObject);
begin
  ConfImprimir(frmPrincipal.modeloEtiqProd);
end;

procedure TfrmEstoque.impEtiqPrateleiraExecute(Sender: TObject);
begin
  ConfImprimir('Prateleira');
end;

procedure TfrmEstoque.impFaturamentoClienteExecute(Sender: TObject);
 var
 qtnTotal:Double;
begin
  if fdsItens.RecordCount>0 then
  begin
    with fdsFaturamentoCliente do
    begin
      Close;
      ParamByName('IDITEM').AsInteger:=fdsItensID.AsInteger;
      ParamByName('DT_INI').AsDateTime:= dtpInicio.Date;
      ParamByName('DT_FIM').AsDateTime:= dtpFim.Date;
      Prepare;
      Open;
    end;
    while not(fdsFaturamentoCliente.Eof) do
    begin
     qtnTotal:=qtnTotal+fdsFaturamentoClienteQTN_TOT.AsFloat;
     fdsFaturamentoCliente.Next;
    end;

    DM.dtInicio := dtpInicio.Date;
    DM.dtFim := dtpFim.Date;
    DM.vlrTotal:= FloatToStr(qtnTotal);
    DM.frxReport1.Clear;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxFaturamentoPorCliente.fr3');
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);
  end;
end;

procedure TfrmEstoque.impInventarioGeralExecute(Sender: TObject);
begin
  ImpInvetarioGeral;
end;

procedure TfrmEstoque.ImpInvetarioGeral;
var
utils:TUtils;
begin
  { DM.dtInicio := dtpInicio.Date;
    DM.dtFim := dtpFim.Date;
    DM.totVendas := fdsVenda.RecordCount; }
  {DM.vlrTotal := lblTotalVenda.Caption;
  DM.vlrCustoTotal := lblTotalCusto.Caption;
  DM.totItens := lblTotalItens.Caption;}
  Inv_totVendas:= 0;Inv_TotCusto:= 0;Inv_TotItens:=0;

  with fdsItens do
  begin
   first;
    While not(fdsItens.Eof) do
    begin
      Inv_totVendas:= RoundTo(Inv_totVendas + fdsItensVENDA_TOTAL.AsFloat,-2);
      Inv_TotCusto:= RoundTo(Inv_TotCusto + fdsItensCUSTO_TOTAL.AsFloat,-2);
      Inv_TotItens:= Inv_TotItens + fdsItensESTOQUE.AsFloat;
      next;
    end;
  end;
  DM.vlrTotal := utils.AdicionaMascaraDinheiro(FloatToStr(Inv_totVendas)) ;
  DM.vlrCustoTotal := utils.AdicionaMascaraDinheiro(FloatToStr(Inv_TotCusto));
  DM.totItens := FloatToStr(Inv_totItens);
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxInventarioGeral.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  // imprimir := False;
end;

procedure TfrmEstoque.impRazaoProdutoExecute(Sender: TObject);
begin
  if rgbPeriodo.ItemIndex = 0 then
    DM.tipo := 'DIA'
  else
    DM.tipo := 'MES';

  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  if not(pgcControl.ActivePageIndex = 2) then
    RazaoProdutoDia;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRazaoProduto.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmEstoque.ImpRelAnalitico(movimento: String;descricao:String);
begin
  with fdsRelSintetico do
  begin
    close;
    ParamByName('DT_INI').AsDateTime:= dtpInicio.Date;
    ParamByName('DT_FIM').AsDateTime:= dtpFim.Date;
    if movimento = 'E'then
    begin
     OrderClause :='RS.MOVIMENTO,RS.DT_INC';
    end
    else
     OrderClause :='RS.TIPO_MOV,RS.DT_INC';
    Prepare;
    Open;
  end;
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.tipo:= movimento;
  DM.obs:= descricao;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelEstoqueAnalitico.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmEstoque.impRelFaltasExecute(Sender: TObject);
begin
  fdsFaltas.Open;
  fdsFaltas.Last;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxFaltasEstoque.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmEstoque.ImpRelSintetico(movimento: String;descricao:String);
begin
   //Sintetico
 with fdsRelSintetico do
 begin
  cdsRelSintetico.Close;
  close;
  ParamByName('DT_INI').AsDateTime:= dtpInicio.Date;
  ParamByName('DT_FIM').AsDateTime:= dtpFim.Date;
  if movimento = 'E'then
  begin
   OrderClause :='RS.MOVIMENTO,RS.DT_INC';
  end
  else
   OrderClause :='RS.TIPO_MOV,RS.DT_INC';
  Prepare;
  Open;
  cdsRelSintetico.Open;
 end;
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.tipo:= movimento;
  DM.obs:= descricao;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelEstoqueSintetico.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmEstoque.impTabPrecosExecute(Sender: TObject);
var
  imprimir: Boolean;
begin
  imprimir := True;
  if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
  begin
    Try
      frmSelTabPreco := TfrmSelTabPreco.Create(nil);
      cdsTabPreco.EmptyDataSet;
      fdsTabPreco.Open;

      if Trim(fdsTabPrecoDESCRICAO1.AsString) <> '' then
      begin
        frmSelTabPreco.tab1 := fdsTabPrecoDESCRICAO1.AsString;
      end
      else
        frmSelTabPreco.tab1 := 'N';

      if Trim(fdsTabPrecoDESCRICAO2.AsString) <> '' then
      begin
        frmSelTabPreco.tab2 := fdsTabPrecoDESCRICAO2.AsString;
      end
      else
        frmSelTabPreco.tab2 := 'N';

      if Trim(fdsTabPrecoDESCRICAO3.AsString) <> '' then
      begin
        frmSelTabPreco.tab3 := fdsTabPrecoDESCRICAO3.AsString;
      end
      else
        frmSelTabPreco.tab3 := 'N';

      if Trim(fdsTabPrecoDESCRICAO4.AsString) <> '' then
      begin
        frmSelTabPreco.tab4 := fdsTabPrecoDESCRICAO4.AsString;
      end
      else
        frmSelTabPreco.tab4 := 'N';

      if Trim(fdsTabPrecoDESCRICAO5.AsString) <> '' then
      begin
        frmSelTabPreco.tab5 := fdsTabPrecoDESCRICAO5.AsString;
      end
      else
        frmSelTabPreco.tab5 := 'N';

      if Trim(fdsTabPrecoDESCRICAO6.AsString) <> '' then
      begin
        frmSelTabPreco.tab6 := fdsTabPrecoDESCRICAO6.AsString;
      end
      else
        frmSelTabPreco.tab6 := 'N';

      frmSelTabPreco.ShowModal;

    Finally
      if frmSelTabPreco.ModalResult = mrOk then
      begin
        cdsTabPreco.Append;
        cdsTabPrecoTAB1.AsString := frmSelTabPreco.cdsTabPrecoTAB1.AsString;
        cdsTabPrecoTAB2.AsString := frmSelTabPreco.cdsTabPrecoTAB2.AsString;
        cdsTabPrecoTAB3.AsString := frmSelTabPreco.cdsTabPrecoTAB3.AsString;
        cdsTabPrecoTAB4.AsString := frmSelTabPreco.cdsTabPrecoTAB4.AsString;
        cdsTabPrecoTAB5.AsString := frmSelTabPreco.cdsTabPrecoTAB5.AsString;
        cdsTabPrecoTAB6.AsString := frmSelTabPreco.cdsTabPrecoTAB6.AsString;
        cdsTabPreco.Post;
      end
      else
        imprimir := False;
      frmSelTabPreco.Free;
    End;
  end;

  if imprimir then
  begin
    DM.filial := cbxFilial.Text;
    DM.frxReport1.Clear;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxTabPrecos1.fr3');
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);
  end;

end;

procedure TfrmEstoque.ItensnoPerodo1Click(Sender: TObject);
begin
  with fdsItensPeriodoMov do
  begin
    Close;
    ParamByName('DT_INI').AsDateTime:= dtpInicio.Date;
    ParamByName('DT_FIM').AsDateTime:= dtpFim.Date;
    Prepare;
    Open;
  end;
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelEstoqueMovItensPeriodo.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

end;

procedure TfrmEstoque.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
     JvDBGrid1.Canvas.Brush.Color := clWhite;
  if not odd(fdsMovItens.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsMovItensTIPO.AsString = 'S' then
    JvDBGrid1.Canvas.Font.Color := clRed;

  if fdsMovItensTIPO.AsString = 'E' then
    JvDBGrid1.Canvas.Font.Color := clBlue;

  if fdsMovItensTIPO.AsString = 'B' then
    JvDBGrid1.Canvas.Font.Color := clGreen;

  JvDBGrid1.DefaultDrawDataCell(Rect, JvDBGrid1.Columns[DataCol].Field, State);

end;

procedure TfrmEstoque.MovimentaoInterna1Click(Sender: TObject);
begin
ImpEntradaItens('MI','a Movimentação Interna');
end;

procedure TfrmEstoque.N1Compras1Click(Sender: TObject);
begin
 ordemMov:='C'//Compras primeiro.
end;

procedure TfrmEstoque.N1MovInterna1Click(Sender: TObject);
begin
 ordemMov:='I'//movimentação interna primeiro
end;

procedure TfrmEstoque.NoAgrupar1Click(Sender: TObject);
begin
 ordemMov :='N';// ordenar por data.
 ImpRelSintetico(ordemMov,'Listagem');
end;

procedure TfrmEstoque.NoAgrupar2Click(Sender: TObject);
begin
  ordemMov :='N';// ordenar por data.
 ImpRelAnalitico(ordemMov,'Listagem');
end;

procedure TfrmEstoque.odos1Click(Sender: TObject);
begin
  ImpEntradaItens('T',' a Todas as movimentações de Entrada');
end;

procedure TfrmEstoque.OrdenadoporFornecedor1Click(Sender: TObject);
begin
 ordemMov:='F'; // ordenar por fornecedor.
 ImpRelSintetico(ordemMov,'Por Fornecedor');
end;

procedure TfrmEstoque.OrdenadoPorPerodo1Click(Sender: TObject);
begin
 ordemMov :='D';// ordenar por data.
 ImpRelSintetico(ordemMov,'Por Data');
end;

procedure TfrmEstoque.btnpesqFornecedorClick(Sender: TObject);
begin
 try
   frmPesqFornecedor:= TfrmPesqFornecedor.Create(nil);
   frmpesqFornecedor.ShowModal;
 finally
   if frmPesqFornecedor.ModalResult= mrOK then
   begin
    edtPesqFornecedor.Text:= frmPesqFornecedor.fdsFornecedorNOME.AsString;
    edtIdFornecedor.Text:= frmPesqFornecedor.fdsFornecedorID.AsString;
   end;
 end;
end;

procedure TfrmEstoque.Pesquisar(index: Integer);
var
  utils: TUtils;
  codigo: string;
begin
  tbsTabela.Show;
  Inv_totVendas:=0;Inv_TotCusto:=0;Inv_TotItens:=0;
  with fdsItens do
  begin
    Close;
    Conditions.Clear;

    if (chkFilial.Checked) and (cbxFilial.ItemIndex > 0) then
      Conditions.AddCondition('IDFILIAL', 'PIE.IDFILIAL = ' +
        cbxFilial.Value, True);

    if (chkGrupo.Checked) and (cbxGrupo.ItemIndex > 0) then
      Conditions.AddCondition('IDGRUPO', 'P.IDGRUPO = ' + cbxGrupo.Value, True);

    if ((chkEAN.Checked) and not(Trim(edtPesqEAN.Text) = 'TODOS')) then
    begin
      Conditions.AddCondition('EAN', '((PI.COD_FABRICA = ' +
        QuotedStr(Trim(edtPesqEAN.Text)) + ') OR (PI.REFERENCIA = ' +
        QuotedStr(Trim(edtPesqEAN.Text)) + '))', True);
    end;

    if ((chkNomeItem.Checked) and not(Trim(edtPesqItem.Text) = 'TODOS')) then
      Conditions.AddCondition('ITEMNOME',
        'PI.NOME LIKE' + QuotedStr('%' + Trim(edtPesqItem.Text) + '%'), True);

    if ((chkFornecedor.Checked) and not(Trim(edtPesqFornecedor.Text) = 'TODOS'))
    then
      Conditions.AddCondition('FORNECNOME',
        'FR.NOME LIKE' + QuotedStr('%' + Trim(edtPesqFornecedor.Text) +
        '%'), True);

    if (chkTipo.Checked) and (cbxTipo.ItemIndex > 0) then
      Conditions.AddCondition('TIPO',
        'P.TIPO = ' + QuotedStr(cbxTipo.Value), True);

    if not(index = 0) then
    begin
      if index = 1 then
      begin
        Conditions.AddCondition('SALDO_POSITIVO', 'PIE.SALDO > 0', True)
      end;

      if index = 2 then
      begin
        Conditions.AddCondition('SALDO_NEGATIVO', 'PIE.SALDO < 0', True)
      end;

      if index = 3 then
      begin
        Conditions.AddCondition('SALDO_MINIMO',
          'PIE.SALDO <= PIE.SALDO_MINIMO AND PIE.SALDO_MINIMO > 0', True)
      end;

      if index = 4 then
      begin
        Conditions.AddCondition('SALDO_ZERADO', 'PIE.SALDO = 0', True);
      end;
    end;

    Conditions.Apply;
    OrderClause := 'NOME';
    Prepare;
    Open;
  end;

  SomaTotal(index);

  if pgcControl.ActivePageIndex = 0 then
  begin
    lblTotalCusto.Caption := tempCustoTotal;
    lblTotCustoGerencial.Caption := tempCustoTotGeren;
    lblTotalVenda.Caption := tempVendaTotal;
    lblTotalItens.Caption := tempSaldo;
    lblTotalGerencial.Caption := tempSaldoGerencial;
  end
  else
  begin
    lblTotalCusto.Caption := utils.AdicionaMascaraDinheiro
      (fdsItensCUSTO_TOTAL.AsString);
    lblTotCustoGerencial.Caption := utils.AdicionaMascaraDinheiro
      (fdsItensCUSTO_TOT_GEREN.AsString);
    lblTotalVenda.Caption := utils.AdicionaMascaraDinheiro
      (fdsItensVENDA_TOTAL.AsString);
    lblTotalItens.Caption := fdsItensESTOQUE.AsString;
    lblTotalGerencial.Caption := fdsItensESTOQUE_GREN.AsString;
  end;
end;

procedure TfrmEstoque.PorFornecedor1Click(Sender: TObject);
begin
 ImpEntradaItens('F','ao Fornecedor : ');
end;

procedure TfrmEstoque.RetornaRazaoProdDia;
begin
  with fdsRazaoProdDia do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDITEM', 'IDITEM = ' + fdsItensID.AsString, True);
    Conditions.AddCondition('IDFILIAL',
      'IDFILIAL = ' + fdsItensIDFILIAL.AsString, True);
    Conditions.AddCondition('DT_INC', 'DT_INC BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    Conditions.Apply;
    Prepare;
    Open;
    First;
  end;
end;

procedure TfrmEstoque.RetornaMovItens;
begin
  With fdsMovItens do
  begin
    Close;
    Conditions.AddCondition('IDITEM', 'IDITEM = ' + fdsItensID.AsString, True);
    Conditions.AddCondition('IDFILIAL',
      'IDFILIAL = ' + fdsItensIDFILIAL.AsString, True);

    if DM.fdsConfigESTOQUE_GERENCIAL.AsString = 'N' then
      Conditions.AddCondition('TIPO_ESTOQUE', 'TIPO_ESTOQUE = ' +
        QuotedStr('N'), True);

    Conditions.Apply;
    Prepare;
    Open;
    Last;
  end;
end;

procedure TfrmEstoque.RetornaRazaoProdMes;
begin
  with fdsRazaoProdMes do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDITEM', 'IDITEM = ' + fdsItensID.AsString, True);
    Conditions.AddCondition('IDFILIAL',
      'IDFILIAL = ' + fdsItensIDFILIAL.AsString, True);
    Conditions.AddCondition('DT_INC', 'DT_INC BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    Conditions.Apply;
    Prepare;
    Open;
    First;
  end;
end;

procedure TfrmEstoque.RazaoProdutoDia;
begin
  if fdsItens.RecordCount > 0 then
  begin
    gdrRazaoProduto.Columns[0].Visible := True;
    gdrRazaoProduto.Columns[1].Visible := False;

    cdsRazaoProduto.EmptyDataSet;
    RetornaRazaoProdDia;

    while not(fdsRazaoProdDia.Eof) do
    begin
      if not(cdsRazaoProduto.Locate('DT_INC',
        fdsRazaoProdDiaDT_INC.AsDateTime, [])) then
      begin
        cdsRazaoProduto.Append;
        cdsRazaoProdutoDT_INC.AsDateTime := fdsRazaoProdDiaDT_INC.AsDateTime;
      end
      else
        cdsRazaoProduto.Edit;

      if fdsRazaoProdDiaTIPO.AsString = 'S' then
      begin
        if cdsRazaoProdutoTOTAL_ENTRADA.AsString = string.Empty then
          cdsRazaoProdutoTOTAL_ENTRADA.AsFloat := 0;
        cdsRazaoProdutoTOTAL_SAIDA.AsFloat := fdsRazaoProdDiaQTN.AsFloat;
      end
      else
      begin
        if cdsRazaoProdutoTOTAL_SAIDA.AsString = string.Empty then
          cdsRazaoProdutoTOTAL_SAIDA.AsFloat := 0;
        cdsRazaoProdutoTOTAL_ENTRADA.AsFloat := fdsRazaoProdDiaQTN.AsFloat;
      end;
      cdsRazaoProduto.Post;
      fdsRazaoProdDia.Next;
    end;
    cdsRazaoProduto.First;
  end;

  ShowScrollBar(gdrRazaoProduto.Handle, SB_VERT, True);
end;

procedure TfrmEstoque.RazaoProdutoMes;
begin
  if fdsItens.RecordCount > 0 then
  begin
    gdrRazaoProduto.Columns[1].Visible := True;
    gdrRazaoProduto.Columns[0].Visible := False;

    cdsRazaoProduto.EmptyDataSet;
    RetornaRazaoProdMes;

    while not(fdsRazaoProdMes.Eof) do
    begin
      if not(cdsRazaoProduto.Locate('DT_INC', fdsRazaoProdMesDT.AsDateTime, []))
      then
      begin
        cdsRazaoProduto.Append;
        cdsRazaoProdutoDT_INC.AsDateTime := fdsRazaoProdMesDT.AsDateTime;
        cdsRazaoProdutoMES_MOV.AsString := FormatDateTime('mmmm "de" yyyy',
          fdsRazaoProdMesDT.AsDateTime).ToUpper;
      end
      else
        cdsRazaoProduto.Edit;

      if fdsRazaoProdMesTIPO.AsString = 'S' then
      begin
        if cdsRazaoProdutoTOTAL_ENTRADA.AsString = string.Empty then
          cdsRazaoProdutoTOTAL_ENTRADA.AsFloat := 0;
        cdsRazaoProdutoTOTAL_SAIDA.AsFloat := fdsRazaoProdMesQTN.AsFloat;
      end
      else
      begin
        if cdsRazaoProdutoTOTAL_SAIDA.AsString = string.Empty then
          cdsRazaoProdutoTOTAL_SAIDA.AsFloat := 0;
        cdsRazaoProdutoTOTAL_ENTRADA.AsFloat := fdsRazaoProdMesQTN.AsFloat;
      end;
      cdsRazaoProduto.Post;
      fdsRazaoProdMes.Next;
    end;
    cdsRazaoProduto.First;
  end;

  ShowScrollBar(gdrRazaoProduto.Handle, SB_VERT, True);
end;

procedure TfrmEstoque.rgbPeriodoChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 0 then
    RazaoProdutoDia
  else
    RazaoProdutoMes;
end;

procedure TfrmEstoque.rgbSaldoChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  Pesquisar(NewIndex);
end;

procedure TfrmEstoque.Sinttico1Click(Sender: TObject);
begin
 ordemMov:='E';
 ImpRelSintetico(ordemMov,'Por Movimentação de estoque');
end;

procedure TfrmEstoque.Sinttico2Click(Sender: TObject);
begin
 ordemMov:='M';
 ImpRelSintetico(ordemMov,'Por Origem de Movimentação');
end;

procedure TfrmEstoque.SomaTotal(index: Integer);
var
  utils: TUtils;
begin
  tempCustoTotal := '';
  tempVendaTotal := '';
  tempSaldo := '';
  tempSaldoGerencial := '';
  tempCustoTotGeren := '';
  with qrySomaTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Sum(pi.prec_custo * pie.saldo) CUSTO_TOTAL, Sum(pi.prec_custo * pie.saldo_gerencial) CUSTO_TOT_GERENCIAL, Sum((pie.prec_venda * pie.saldo)) VENDA_TOTAL, Sum(pie.saldo) Saldo, Sum(pie.saldo_gerencial) Saldo_Gerencial');
    SQL.Add(' FROM PRODUTO_ITEM_ESTOQUE PIE, PRODUTO_ITEM PI, PRODUTO P, FORNECEDOR FR ');
    SQL.Add(' WHERE PI.ID = PIE.IDITEM AND P.ID = PI.IDPRODUTO AND P.IDFORNECEDOR = FR.ID AND PI.STATUS = '
      + QuotedStr('A'));

    if (chkFilial.Checked) and not(cbxFilial.Value = '0') then
    begin
      SQL.Add(' AND PIE.IDFILIAL = :IDFILIAL');
      ParamByName('IDFILIAL').AsString := cbxFilial.Value;
    end;

    if (chkGrupo.Checked) and not(cbxGrupo.Value = '0') then
    begin
      SQL.Add(' AND P.IDGRUPO = :IDGRUPO');
      ParamByName('IDGRUPO').AsString := cbxGrupo.Value;
    end;

    if chkEAN.Checked and not(Trim(edtPesqEAN.Text) = 'TODOS') then
    begin
      SQL.Add(' AND PI.COD_FABRICA = :COD_FABRICA');
      ParamByName('COD_FABRICA').AsString := Trim(edtPesqEAN.Text);
    end;

    if (chkNomeItem.Checked) and not(Trim(edtPesqItem.Text) = 'TODOS') then
    begin
      SQL.Add(' AND PI.NOME LIKE :NOME');
      ParamByName('NOME').AsString := '%' + Trim(edtPesqItem.Text) + '%';
    end;

    if (chkFornecedor.Checked) and not(Trim(edtPesqFornecedor.Text) = 'TODOS')
    then
    begin
      SQL.Add(' AND FR.NOME LIKE :FORNECNOME');
      ParamByName('FORNECNOME').AsString :=
        '%' + Trim(edtPesqFornecedor.Text) + '%';
    end;

    if (chkTipo.Checked) and (cbxTipo.ItemIndex > 0) then
    begin
      SQL.Add(' AND P.TIPO = :TIPO');
      ParamByName('TIPO').AsString := cbxTipo.Value;
    end;

    if not(index = 0) then
    begin
      if index = 1 then
      begin
        SQL.Add(' AND PIE.SALDO > 0')
      end;

      if index = 2 then
      begin
        SQL.Add(' AND PIE.SALDO < 0')
      end;

      if index = 3 then
      begin
        SQL.Add(' AND PIE.SALDO <= PIE.SALDO_MINIMO AND PIE.SALDO_MINIMO > 0')
      end;

      if index = 4 then
      begin
        SQL.Add(' AND PIE.SALDO = 0');
      end;
    end;

    Prepare;
    ExecQuery;
    tempCustoTotal := FieldByName('CUSTO_TOTAL').AsString;
    tempCustoTotGeren := FieldByName('CUSTO_TOT_GERENCIAL').AsString;
    tempVendaTotal := FieldByName('VENDA_TOTAL').AsString;
    tempSaldo := FieldByName('SALDO').AsString;
    tempSaldoGerencial := FieldByName('SALDO_GERENCIAL').AsString;
  end;
  if tempSaldoGerencial = '' then
    tempSaldoGerencial := '0';

  if tempCustoTotal = '' then
    tempCustoTotal := '0';

  if tempCustoTotGeren = '' then
    tempCustoTotGeren := '0';

  if tempVendaTotal = '' then
    tempVendaTotal := '0';

  tempCustoTotGeren := utils.AdicionaMascaraDinheiro(tempCustoTotGeren);
  tempCustoTotal := utils.AdicionaMascaraDinheiro(tempCustoTotal);
  tempVendaTotal := utils.AdicionaMascaraDinheiro(tempVendaTotal);
end;

procedure TfrmEstoque.tbsFaltasShow(Sender: TObject);
begin
  fdsFaltas.Close;
  fdsFaltas.Open;
end;

procedure TfrmEstoque.tbsHistoricoShow(Sender: TObject);
var
  utils: TUtils;
begin
  RetornaMovItens;
  lblTotCustoGerencial.Caption := utils.AdicionaMascaraDinheiro
    (fdsItensCUSTO_TOT_GEREN.AsString);
  lblTotalCusto.Caption := utils.AdicionaMascaraDinheiro
    (fdsItensCUSTO_TOTAL.AsString);
  lblTotalVenda.Caption := utils.AdicionaMascaraDinheiro
    (fdsItensVENDA_TOTAL.AsString);
  lblTotalItens.Caption := fdsItensESTOQUE.AsString;
  lblTotalGerencial.Caption := fdsItensESTOQUE_GREN.AsString;
end;

procedure TfrmEstoque.tbsRazaoShow(Sender: TObject);
begin
  lblNomeProduto.Caption := fdsItensNOME.AsString;

  if rgbPeriodo.ItemIndex = 0 then
    RazaoProdutoDia
  else
    RazaoProdutoMes;
end;

procedure TfrmEstoque.tbsTabelaShow(Sender: TObject);
begin
  lblTotCustoGerencial.Caption := tempCustoTotGeren;
  lblTotalCusto.Caption := tempCustoTotal;
  lblTotalVenda.Caption := tempVendaTotal;
  lblTotalItens.Caption := tempSaldo;
  lblTotalGerencial.Caption := tempSaldoGerencial;
end;

end.
