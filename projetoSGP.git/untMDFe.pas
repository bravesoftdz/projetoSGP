unit untMDFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls, RzTabs,
  RzPanel, RzSplit, Vcl.StdCtrls, RzLabel, RzButton, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, System.Actions, Vcl.ActnList, Vcl.Menus, PngImageList, Vcl.ImgList,
  Data.DB, FIBDataSet, pFIBDataSet, Datasnap.DBClient, Vcl.Mask, RzEdit,
  RzDBEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Datasnap.Provider, System.Math, pFIBClientDataSet,
  FIBDatabase, pFIBDatabase, JvExDBGrids, JvDBGrid, Vcl.Clipbrd,
  // --------------------------------------------------------
  ACBrBase, ACBrPosPrinter, ACBrUtil, ACBrMDFeDAMDFeClass,
  ACBrMDFeDAMDFeRLClass,
  ACBrMDFe, blcksock, pmdfeConversaoMDFe,
  ACBrDFeReport, ACBrDFe, ACBrDFeSSL, pcnConversao, RzCmboBx, RzDBCmbo,
  RzRadGrp,
  RzDBRGrp, FIBQuery, pFIBQuery, JvExStdCtrls, JvButton, JvCtrls, RzRadChk,
  Vcl.ComCtrls, RzDTP, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  JvDBDatePickerEdit;

type
  TfrmMDFe = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    RzSplitter1: TRzSplitter;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    Panel2: TPanel;
    lblTituloCliente: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnAcoesMDFe: TRzBitBtn;
    ImageList1: TImageList;
    PngImageList1: TPngImageList;
    ActionList1: TActionList;
    ppmMDFe: TPopupMenu;
    admEmitir: TAction;
    Panel3: TPanel;
    fdsManifesto: TpFIBDataSet;
    dsManifesto: TDataSource;
    tbsFormulario: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dsConfigMDFe: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
    btnIncluir: TRzBitBtn;
    RzGroupBox2: TRzGroupBox;
    JvDatePickerEdit1: TJvDatePickerEdit;
    RzDBEdit14: TRzDBEdit;
    Label14: TLabel;
    JvDatePickerEdit2: TJvDatePickerEdit;
    Label15: TLabel;
    Label16: TLabel;
    btnAlterar: TRzBitBtn;
    btnIncluirNfe: TRzBitBtn;
    btnExcluirNFe: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    edtVlrTotalManifesto: TRzDBEdit;
    Label17: TLabel;
    fdsCliente: TpFIBDataSet;
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
    fdsClienteLOCAL_TRABALHO: TFIBStringField;
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
    fdsClienteNUMERO: TFIBStringField;
    fdsClienteCOMPLEMENTO: TFIBStringField;
    fdsClienteOBSERVACAO: TFIBStringField;
    fdsClienteCODCIDADE: TFIBStringField;
    fdsClienteINDICADOR_IE: TFIBStringField;
    gdrMDFe: TJvDBGrid;
    gdrNFe: TJvDBGrid;
    fdsManifestoItem: TpFIBDataSet;
    cdsManifesto_Item: TpFIBClientDataSet;
    dsManifestoItem: TDataSource;
    dspManifestoItem: TDataSetProvider;
    btnExcluirMDFe: TRzBitBtn;
    edtQTNTotNFe: TRzDBEdit;
    Label9: TLabel;
    Action1: TAction;
    admCancelar: TAction;
    admEmitirDAMDFe: TAction;
    EmitirMDFe1: TMenuItem;
    ImprimirDANFe1: TMenuItem;
    CancelarMDFe1: TMenuItem;
    ACBrMDFe1: TACBrMDFe;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    fdsManifestoItemID: TFIBBCDField;
    fdsManifestoItemIDMANIFESTO: TFIBBCDField;
    fdsManifestoItemIDCLIENTE: TFIBBCDField;
    fdsManifestoItemIDFILIAL: TFIBBCDField;
    fdsManifestoItemITEM: TFIBSmallIntField;
    fdsManifestoItemCODIGO_NFE: TFIBIntegerField;
    fdsManifestoItemCHAVE_NFE: TFIBStringField;
    fdsManifestoItemPROTOCOLO_NFE: TFIBStringField;
    fdsManifestoItemSERIE_NFE: TFIBIntegerField;
    fdsManifestoItemVLR_TOTAL: TFIBBCDField;
    fdsManifestoItemNOMECLIENTE: TFIBStringField;
    tbsConfig: TRzTabSheet;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBComboBox1: TRzDBComboBox;
    Label18: TLabel;
    RzGroupBox3: TRzGroupBox;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    Label19: TLabel;
    OpenDialog1: TOpenDialog;
    btnSelecionaCert: TRzBitBtn;
    Label20: TLabel;
    btnCancelaConfig: TRzBitBtn;
    btnSalvarConfig: TRzBitBtn;
    btnIncluirXML: TRzBitBtn;
    RzDBEdit15: TRzDBEdit;
    Label21: TLabel;
    RzDBEdit16: TRzDBEdit;
    Label22: TLabel;
    RzDBRadioGroup2: TRzDBRadioGroup;
    btnEditaConfig: TRzBitBtn;
    RzGroupBox4: TRzGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    RzDBEdit22: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    RzDBEdit24: TRzDBEdit;
    RzDBEdit25: TRzDBEdit;
    RzDBEdit26: TRzDBEdit;
    RzDBEdit27: TRzDBEdit;
    RzDBRadioGroup3: TRzDBRadioGroup;
    tbsRodoviario: TRzTabSheet;
    RzGroupBox5: TRzGroupBox;
    RzGroupBox6: TRzGroupBox;
    RzGroupBox7: TRzGroupBox;
    RzDBComboBox3: TRzDBComboBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    btnPesquisaVe�culo: TRzBitBtn;
    btnPesquisarMotorista: TRzBitBtn;
    edtNomeCondutor: TRzDBEdit;
    edtCPFcondutor: TRzDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    btnCadastroVe�culo: TRzBitBtn;
    Label41: TLabel;
    Label42: TLabel;
    admEncerrarMDFe: TAction;
    EncerrarMDFe1: TMenuItem;
    rgbTranportadora: TRzGroupBox;
    btnPesqTransportadora: TRzBitBtn;
    btnCadTansportadora: TRzBitBtn;
    edtNomeProprietario: TRzDBEdit;
    RzDBEdit33: TRzDBEdit;
    RzDBEdit31: TRzDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    fdsVeiculo: TpFIBDataSet;
    edtDescri��o: TRzDBEdit;
    RzDBEdit29: TRzDBEdit;
    RzDBEdit30: TRzDBEdit;
    RzDBEdit35: TRzDBEdit;
    RzDBEdit38: TRzDBEdit;
    RzDBEdit39: TRzDBEdit;
    dsVeiculo: TDataSource;
    btnSalvarveiculo: TRzBitBtn;
    RzDBEdit40: TRzDBEdit;
    Label49: TLabel;
    btnSalvaTransportadora: TRzBitBtn;
    RzDBComboBox8: TRzDBComboBox;
    RzDBComboBox7: TRzDBComboBox;
    fdsTransportadora: TpFIBDataSet;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    dsTransportadora: TDataSource;
    fdsMotorista: TpFIBDataSet;
    dsMotorista: TDataSource;
    btnCadastrarCondutor: TRzBitBtn;
    btnSalvarCadMotorista: TRzBitBtn;
    btnEditarCadMotorista: TRzBitBtn;
    btnEditarTransportadora: TRzBitBtn;
    fdsManifestoItemPESO_BRUTO: TFIBBCDField;
    fdsManifestoItemCLIENTE: TFIBStringField;
    edtPesoBruto: TRzDBEdit;
    Label54: TLabel;
    RzDBEdit32: TRzDBEdit;
    Label52: TLabel;
    Label55: TLabel;
    RzDBEdit36: TRzDBEdit;
    RzDBEdit37: TRzDBEdit;
    Label56: TLabel;
    RzDBEdit34: TRzDBEdit;
    Label57: TLabel;
    btnPesqCidadeDescarga: TRzBitBtn;
    fdsMotoristaID: TFIBBCDField;
    fdsMotoristaNOME: TFIBStringField;
    fdsMotoristaCPF: TFIBStringField;
    cdsManifesto_ItemID: TpFIBClientBCDField;
    cdsManifesto_ItemIDMANIFESTO: TpFIBClientBCDField;
    cdsManifesto_ItemIDCLIENTE: TpFIBClientBCDField;
    cdsManifesto_ItemIDFILIAL: TpFIBClientBCDField;
    cdsManifesto_ItemITEM: TSmallintField;
    cdsManifesto_ItemCODIGO_NFE: TIntegerField;
    cdsManifesto_ItemCHAVE_NFE: TStringField;
    cdsManifesto_ItemPROTOCOLO_NFE: TStringField;
    cdsManifesto_ItemSERIE_NFE: TIntegerField;
    cdsManifesto_ItemVLR_TOTAL: TpFIBClientBCDField;
    cdsManifesto_ItemNOMECLIENTE: TStringField;
    cdsManifesto_ItemPESO_BRUTO: TpFIBClientBCDField;
    cdsManifesto_ItemCLIENTE: TStringField;
    RzDBComboBox5: TRzDBComboBox;
    RzDBComboBox4: TRzDBComboBox;
    fdsVeiculoID: TFIBBCDField;
    fdsVeiculoIDTRANSPORTADORA: TFIBBCDField;
    fdsVeiculoDESCRICAO: TFIBStringField;
    fdsVeiculoCIOT: TFIBStringField;
    fdsVeiculoRNTRC: TFIBStringField;
    fdsVeiculoPLACA: TFIBStringField;
    fdsVeiculoTARA: TFIBBCDField;
    fdsVeiculoRENAVAM: TFIBStringField;
    fdsVeiculoCAPACIDADE_KG: TFIBBCDField;
    fdsVeiculoCAPACIDADE_M3: TFIBBCDField;
    fdsVeiculoTIPO_CARROCERIA: TFIBIntegerField;
    fdsVeiculoTIPO_RODADO: TFIBIntegerField;
    fdsVeiculoUF: TFIBStringField;
    fdsVeiculoSTATUS: TFIBStringField;
    tbsReboque: TRzTabSheet;
    gdrReboque: TRzGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    edtPlacaReboque: TRzDBEdit;
    RzDBEdit43: TRzDBEdit;
    RzDBComboBox6: TRzDBComboBox;
    RzDBEdit44: TRzDBEdit;
    RzDBEdit45: TRzDBEdit;
    RzDBEdit46: TRzDBEdit;
    Label65: TLabel;
    RzDBEdit47: TRzDBEdit;
    RzBitBtn2: TRzBitBtn;
    fdsReboque: TpFIBDataSet;
    dsReboque: TDataSource;
    fdsManifestoID: TFIBBCDField;
    fdsManifestoIDFILIAL: TFIBBCDField;
    fdsManifestoSTATUS: TFIBStringField;
    fdsManifestoCODIGO_MANIFESTO: TFIBIntegerField;
    fdsManifestoCHAVE_MANIFESTO: TFIBStringField;
    fdsManifestoPROTOCOLO_MANIFESTO: TFIBStringField;
    fdsManifestoSERIE_MANIFESTO: TFIBIntegerField;
    fdsManifestoCNPJ_CPF: TFIBStringField;
    fdsManifestoIE: TFIBStringField;
    fdsManifestoNOME: TFIBStringField;
    fdsManifestoRAZAO: TFIBStringField;
    fdsManifestoENDERECO: TFIBStringField;
    fdsManifestoNUMERO: TFIBStringField;
    fdsManifestoBAIRRO: TFIBStringField;
    fdsManifestoCODCIDADE: TFIBBCDField;
    fdsManifestoCIDADE: TFIBStringField;
    fdsManifestoUF: TFIBStringField;
    fdsManifestoCEP: TFIBStringField;
    fdsManifestoVLR_TOTAL_CARGA: TFIBBCDField;
    fdsManifestoQTN_TOTAL_CARGA: TFIBBCDField;
    fdsManifestoQTN_TOTAL_NF: TFIBIntegerField;
    fdsManifestoPESO_BRUTO: TFIBBCDField;
    fdsManifestoDT_INC: TFIBDateField;
    fdsManifestoDT_ALT: TFIBDateField;
    fdsManifestoDT_EMISSAO: TFIBDateField;
    fdsManifestoIDTRANSPORTADORA: TFIBBCDField;
    fdsManifestoIDVEICULO: TFIBBCDField;
    fdsManifestoIDREBOQUE: TFIBBCDField;
    fdsManifestoIDMOTORISTA: TFIBBCDField;
    fdsManifestoCOD_CIDADE_DESTINO: TFIBBCDField;
    fdsManifestoCIDADE_DESTINO: TFIBStringField;
    fdsManifestoUF_DESTINO: TFIBStringField;
    fdsManifestoUF_PERCUCO: TFIBStringField;
    fdsManifestoCHAVE_ENCERRAMENTO: TFIBStringField;
    fdsManifestoPROTOCOLO_ENCERRAMENTO: TFIBStringField;
    Label71: TLabel;
    Label72: TLabel;
    qrySQL: TpFIBQuery;
    rgbStatus: TRzRadioGroup;
    pnlNumVenda: TRzGroupBox;
    edtPesqNumVenda: TRzEdit;
    pnlPeriodoINC: TRzGroupBox;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    btnPesquisar: TJvImgBtn;
    pnlPeriodoEMISS: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    dtpFimEmiss: TJvDatePickerEdit;
    dtpInicioEmiss: TJvDatePickerEdit;
    Label73: TLabel;
    RzDBEdit41: TRzDBEdit;
    cbxUnidade: TRzDBComboBox;
    Label74: TLabel;
    fdsManifestoUNIDADE_CARGA: TFIBIntegerField;
    fdsManifestoCOD_CIDADE_CARREGA: TFIBBCDField;
    fdsManifestoCIDADE_CARREGA: TFIBStringField;
    RzDBEdit28: TRzDBEdit;
    Label75: TLabel;
    RzDBComboBox10: TRzDBComboBox;
    Label77: TLabel;
    ImageList2: TImageList;
    Label76: TLabel;
    RzDBComboBox11: TRzDBComboBox;
    fdsManifestoUF_PERCURCO2: TFIBStringField;
    fdsManifestoDT_SAIDA: TFIBDateField;
    fdsManifestoHORA_SAIDA: TFIBTimeField;
    Label78: TLabel;
    RzDBDateTimeEdit3: TRzDBDateTimeEdit;
    RzDBDateTimeEdit4: TRzDBDateTimeEdit;
    qryConsulta: TpFIBQuery;
    rgbDadosPropReboque: TRzDBCheckBoxGroup;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label58: TLabel;
    edtNomeProprietarioReboque: TRzDBEdit;
    RzDBEdit49: TRzDBEdit;
    RzDBEdit50: TRzDBEdit;
    RzDBEdit51: TRzDBEdit;
    RzDBEdit52: TRzDBEdit;
    RzDBComboBox9: TRzDBComboBox;
    btnPesqReboque: TRzBitBtn;
    btnCadastraReboque: TRzBitBtn;
    btnEditarReboque: TRzBitBtn;
    btnSalvarReboque: TRzBitBtn;
    btnLimpar: TRzBitBtn;
    fdsTransportadoraID: TFIBBCDField;
    fdsTransportadoraDT_INC: TFIBDateField;
    fdsTransportadoraDT_ALT: TFIBDateField;
    fdsTransportadoraSTATUS: TFIBStringField;
    fdsTransportadoraRAZAO_SOCIAL: TFIBStringField;
    fdsTransportadoraCNPJ_CPF: TFIBStringField;
    fdsTransportadoraIE: TFIBStringField;
    fdsTransportadoraENDERECO: TFIBStringField;
    fdsTransportadoraNUMERO: TFIBStringField;
    fdsTransportadoraBAIRRO: TFIBStringField;
    fdsTransportadoraIDCIDADE: TFIBBCDField;
    fdsTransportadoraENVIADO_WEB: TFIBStringField;
    fdsTransportadoraUF: TFIBStringField;
    fdsTransportadoraTIPO_PROPRIETARIO: TFIBIntegerField;
    fdsTransportadoraRNTRC: TFIBStringField;
    fdsReboqueID: TFIBBCDField;
    fdsReboqueDT_INC: TFIBDateField;
    fdsReboqueDT_ALT: TFIBDateField;
    fdsReboqueSTATUS: TFIBStringField;
    fdsReboquePLACA: TFIBStringField;
    fdsReboqueTARA: TFIBBCDField;
    fdsReboqueRENAVAM: TFIBStringField;
    fdsReboqueCAPACIDADE_KG: TFIBBCDField;
    fdsReboqueCAPACIDADE_M3: TFIBBCDField;
    fdsReboqueUF: TFIBStringField;
    fdsReboqueTIPO_CARROCERIA: TFIBIntegerField;
    fdsReboqueEMITENTE_MDFE: TFIBStringField;
    fdsReboqueRAZAO: TFIBStringField;
    fdsReboqueCNPJ_CPF_PROP: TFIBStringField;
    fdsReboqueRNTRC_PROP: TFIBStringField;
    fdsReboqueUF_PROP: TFIBStringField;
    fdsReboqueIE_PROP: TFIBStringField;
    fdsReboqueTIPO_PROPRIETARIO: TFIBIntegerField;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label12: TLabel;
    RzDBEdit12: TRzDBEdit;
    RzBitBtn1: TRzBitBtn;
    fdsManifestoNUM_ALEATORIO_MDFE: TFIBIntegerField;
    fdsManifestoItemCHAVE_CONTIGENCIA: TFIBStringField;
    cdsManifesto_ItemCHAVE_CONTIGENCIA: TStringField;
    procedure admEmitirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbsFormularioShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnIncluirNfeClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure fdsManifestoAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirNFeClick(Sender: TObject);
    procedure cdsManifesto_ItemAfterPost(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure gdrMDFeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbsTabelaShow(Sender: TObject);
    procedure cdsManifesto_ItemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure fdsManifestoGetRecordError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure gdrMDFeDblClick(Sender: TObject);
    procedure btnExcluirMDFeClick(Sender: TObject);
    procedure fdsManifestoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnAcoesMDFeClick(Sender: TObject);
    procedure btnSelecionaCertClick(Sender: TObject);
    procedure btnIncluirXMLClick(Sender: TObject);
    procedure btnEditaConfigClick(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure tbsConfigShow(Sender: TObject);
    procedure btnCancelaConfigClick(Sender: TObject);
    procedure tbsConfigHide(Sender: TObject);
    procedure admEncerrarMDFeExecute(Sender: TObject);
    procedure btnCadastroVe�culoClick(Sender: TObject);
    procedure btnPesquisaVe�culoClick(Sender: TObject);
    procedure btnSalvarveiculoClick(Sender: TObject);
    procedure btnPesquisarMotoristaClick(Sender: TObject);
    procedure btnEditarCadMotoristaClick(Sender: TObject);
    procedure btnSalvarCadMotoristaClick(Sender: TObject);
    procedure btnCadastrarCondutorClick(Sender: TObject);
    procedure tbsRodoviarioShow(Sender: TObject);
    procedure btnPesqTransportadoraClick(Sender: TObject);
    procedure btnCadTansportadoraClick(Sender: TObject);
    procedure btnEditarTransportadoraClick(Sender: TObject);
    procedure btnSalvaTransportadoraClick(Sender: TObject);
    procedure btnPesqCidadeDescargaClick(Sender: TObject);
    procedure tbsReboqueShow(Sender: TObject);
    procedure btnPesqReboqueClick(Sender: TObject);
    procedure btnCadastraReboqueClick(Sender: TObject);
    procedure btnEditarReboqueClick(Sender: TObject);
    procedure btnSalvarReboqueClick(Sender: TObject);
    procedure fdsVeiculoAfterCancel(DataSet: TDataSet);
    procedure fdsManifestoBeforeCancel(DataSet: TDataSet);
    procedure btnNextClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure pnlNumVendaCheckBoxClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure admCancelarExecute(Sender: TObject);
    procedure admEmitirDAMDFeExecute(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cdsManifesto_ItemBeforeEdit(DataSet: TDataSet);
  private
    procedure EmitirMDFe;
    procedure EditaInsere;
    procedure GravaCancela;
    procedure ControlaBtnsItens;
    procedure RetornaItensMDFe;
    procedure ConfiguraMDFe;
    procedure PreencheManifestoEmitent;
    Procedure RetornaDadosRodoviario;
    Procedure RetornaDadosReboque;
    procedure Pesquisar(tipo: String);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmMDFe: TfrmMDFe;
  alterandoIten, permiteEdicao: Boolean;
  idManifesto, ultimoMDFe: Integer;

implementation

{$R *.dfm}

uses untData, untPesqNFe, uUtils, untPrincipal, untStatusNFe, untCadVeiculos,
  untPesqVeiculo, untPesqVeiculoMDFe, untPesqMotoristaMDFe,
  untPesqTransportadora, untPesqCidade, untpesqReboqueMDFe;

procedure TfrmMDFe.admCancelarExecute(Sender: TObject);
var
  tempIdManifesto, idFilialTemp: String;
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    tempIdManifesto := fdsManifestoID.AsString;
    idFilialTemp := fdsManifestoIDFILIAL.AsString;

    with fdsManifesto do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDNF', 'ID = ' + tempIdManifesto, true);
      Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + idFilialTemp, true);
      Conditions.Apply;
      Prepare;
      Open;
    end;
    try
      frmStatusNFe := TfrmStatusNFe.Create(nil);
      frmStatusNFe.param := 'CancelarMDFE';
      frmStatusNFe.ShowModal;
    finally
      if frmStatusNFe.ModalResult = mrOk then
      begin
        frmStatusNFe.Free;
      end;
    end;
    rgbStatus.ItemIndex := 3;
    fdsManifesto.Locate('ID', tempIdManifesto, []);
  end;
end;

procedure TfrmMDFe.admEmitirDAMDFeExecute(Sender: TObject);
var
  tempIdManifesto, idFilialTemp: string;
begin
  if fdsManifesto.RecordCount > 0 then
  begin

    tempIdManifesto := fdsManifestoID.AsString;
    idFilialTemp := fdsManifestoIDFILIAL.AsString;

    with fdsManifesto do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDNF', 'ID = ' + tempIdManifesto, true);
      Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + idFilialTemp, true);
      Conditions.Apply;
      Prepare;
      Open;
    end;
    try
      frmStatusNFe := TfrmStatusNFe.Create(nil);
      frmStatusNFe.param := 'EmitirDAMDFE';
      frmStatusNFe.ShowModal;
    finally
      if frmStatusNFe.ModalResult = mrOk then
      begin
        frmStatusNFe.Free;
      end;
    end;
    btnPesquisar.Click;
    fdsManifesto.Locate('ID', tempIdManifesto, []);
  end;
end;

procedure TfrmMDFe.admEmitirExecute(Sender: TObject);
begin
  EmitirMDFe;
end;

procedure TfrmMDFe.btnAlterarClick(Sender: TObject);
begin
  // RzPanel3.Enabled:=False;
  permiteEdicao := true;
  fdsManifesto.Edit;
  RetornaItensMDFe;
  EditaInsere;
end;

procedure TfrmMDFe.btnCancelaConfigClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja Realmente Cancelar as Altera��es realizadas?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        if dm.fdsConfigMDFe.State in [dsInsert, dsEdit] then
        begin
          dm.fdsConfigMDFe.Cancel;
          dm.Conexao.RollbackRetaining;
          btnEditaConfig.Enabled := true;
          btnCancelaConfig.Enabled := false;
          btnSalvarConfig.Enabled := false;
          RzBitBtn1.Enabled := false;
        end;
        ModalResult := mrCancel;
      end;

    idNo:
      begin
        Abort;
      end;
  end;
end;

procedure TfrmMDFe.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar a Inclus�o/Altera��o deste Manifesto?'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        if pgcControl.ActivePageIndex = 3 then
        begin
          pgcControl.ActivePageIndex := 1;
        end;
        fdsManifesto.Cancel;
        cdsManifesto_Item.Cancel;
        cdsManifesto_Item.EmptyDataSet;
        dm.Conexao.RollbackRetaining;
        GravaCancela;
        // RzPanel3.Enabled:=True;
      end;
  end;
end;

procedure TfrmMDFe.btnSalvarveiculoClick(Sender: TObject);
begin

  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente Cadastrar esse ve�culo?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsVeiculo.Post;
        dm.Conexao.CommitRetaining;
      end;
    idNo:
      begin
        fdsVeiculo.Cancel;
        dm.Conexao.RollbackRetaining;
      end;
  End;
  btnPesquisaVe�culo.Enabled := true;
  btnSalvarveiculo.Enabled := false;
  btnCadastroVe�culo.Enabled:=true
end;

procedure TfrmMDFe.btnSalvaTransportadoraClick(Sender: TObject);
var
  mensagem: String;
  cadastrando: Boolean;
begin
  cadastrando := false;
  if fdsTransportadora.State in [dsInsert] then
  begin
    mensagem := 'Deseja realmente Cadastrar esse Propriet�rio?';
    cadastrando := true;
  end
  else
  begin
    if fdsTransportadora.State in [dsEdit] then
    begin
      mensagem :=
        'Deseja realmente Salvar as Autera��es feitas no cadastro desse Propriet�rio?';
      cadastrando := false;
    end;
  end;
  Case MessageBox(Application.Handle, Pchar(mensagem), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsTransportadora.Post;
        dm.Conexao.CommitRetaining;
        if cadastrando = true then
        begin
          fdsManifestoIDTRANSPORTADORA.AsInteger :=
            fdsTransportadoraID.AsInteger;
        end;
      end;
    idNo:
      begin
        fdsTransportadora.Cancel;
        dm.Conexao.RollbackRetaining;
        fdsTransportadora.Close;
      end;
  End;
  btnPesqTransportadora.Enabled := true;
  btnPesqTransportadora.SetFocus;
  btnEditarTransportadora.Enabled := true;
  btnCadTansportadora.Enabled := true;
  btnSalvaTransportadora.Enabled := false;
end;

procedure TfrmMDFe.btnExcluirNFeClick(Sender: TObject);
var
  i: SmallInt;
begin
  if cdsManifesto_Item.RecordCount > 0 then
  begin
    i := 1;

    fdsManifestoVLR_TOTAL_CARGA.AsFloat := fdsManifestoVLR_TOTAL_CARGA.AsFloat - cdsManifesto_ItemVLR_TOTAL.AsFloat;
    fdsManifestoQTN_TOTAL_NF.AsInteger := fdsManifestoQTN_TOTAL_NF.AsInteger - 1;
    fdsManifestoPESO_BRUTO.AsFloat := fdsManifestoPESO_BRUTO.AsFloat - cdsManifesto_ItemPESO_BRUTO.AsFloat;

    cdsManifesto_Item.Delete;
    cdsManifesto_Item.First;
    while not(cdsManifesto_Item.Eof) do
    begin
      cdsManifesto_Item.Edit;
      cdsManifesto_ItemITEM.AsInteger := i;
      cdsManifesto_Item.Post;
      Inc(i);
      cdsManifesto_Item.Next;
    end;
  end;
end;

procedure TfrmMDFe.btnFirstClick(Sender: TObject);
begin
  fdsManifesto.Prior;
end;

procedure TfrmMDFe.btnGravarClick(Sender: TObject);
begin
  if fdsManifesto.State in [dsEdit, dsInsert] then
  begin

    if cdsManifesto_Item.RecordCount = 0 then
    begin
      Application.MessageBox
        ('Voc� n�o pode gravar um Manifesto sem notas Fiscais.', 'Ante��o',
        MB_OK + MB_ICONERROR);
      pgcControl.ActivePageIndex := 1;
      btnIncluirNfe.SetFocus;
      Abort;
    end;
    PreencheManifestoEmitent;
    // coloquei pra preencher de novo pq o usu�rio pode gravar e mudar dados na configura��o e voltar a editar o manifesto
    permiteEdicao := false;
    fdsManifesto.Post;
    cdsManifesto_Item.ApplyUpdates(0);
    dm.Conexao.CommitRetaining;
    GravaCancela;
  end;
  // RzPanel3.Enabled:=True;

end;

procedure TfrmMDFe.btnIncluirClick(Sender: TObject);
begin
  if dm.fdsConfigMDFeCERT_NUM_SERIE.AsString = EmptyStr then
  begin
    Application.MessageBox
      ('N�o existe nenhum certificado selecionado!Por favor,v� a aba de configura��es e selecione um cetificado.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    tbsTabela.Show;
    Abort;
  end;
  permiteEdicao := true;

  cdsManifesto_Item.Close;
  cdsManifesto_Item.Open;
  cdsManifesto_Item.EmptyDataSet;
  fdsManifesto.Append;
  fdsManifestoSTATUS.AsString := 'AB';
  fdsManifestoDT_INC.AsDateTime := Now;
  fdsManifestoDT_EMISSAO.AsDateTime := Now;
  fdsManifestoIDFILIAL.AsInteger := 1;
  fdsManifestoCODIGO_MANIFESTO.AsInteger := 0;
  PreencheManifestoEmitent;
  btnExcluirNFe.Enabled := false;
  EditaInsere;
end;

procedure TfrmMDFe.btnIncluirNfeClick(Sender: TObject);
begin
  try
    frmPesqNFe := TfrmPesqNFe.Create(nil);
    with frmPesqNFe.fdsNFe do
    begin
      close;
      Conditions.Clear;
      Conditions.AddCondition('STATUS','N.STATUS ='+ QuotedStr('NF') +'OR (N.STATUS = '+QuotedStr('OF') + ')',true);
      conditions.Apply;
      Prepare;
      open;
    end;
    frmPesqNFe.ShowModal;
  finally
    if frmPesqNFe.ModalResult = mrOk then
    begin
      if cdsManifesto_Item.Locate('CHAVE_NFE',
        frmPesqNFe.fdsNFeCHAVE_CONSULTA.AsString, [loCaseInsensitive]) then
      begin
        showMessage('Essa Nota ja foi inclusa. Por favor inclua outra nota.');
        frmPesqNFe.Free;
        btnIncluirNfe.Click;
        Abort
      end;

      with frmPesqNFe do
      begin
        cdsManifesto_Item.Append;
        cdsManifesto_ItemIDMANIFESTO.AsInteger := fdsManifestoID.AsInteger;
        cdsManifesto_ItemIDCLIENTE.AsInteger := fdsNFeIDCLIENTE.AsInteger;
        cdsManifesto_ItemIDFILIAL.AsInteger := fdsNFeIDFILIAL.AsInteger;
        cdsManifesto_ItemCODIGO_NFE.AsInteger := fdsNFeCODIGO_NFE.AsInteger;
        cdsManifesto_ItemCHAVE_NFE.AsString := fdsNFeCHAVE_CONSULTA.AsString;
        cdsManifesto_ItemCHAVE_CONTIGENCIA.AsString := fdsNFeCHAVE_CONTIGENCIA.AsString;
        cdsManifesto_ItemPROTOCOLO_NFE.AsString :=
          fdsNFeNUMERO_PROTOCOLO.AsString;
        cdsManifesto_ItemVLR_TOTAL.AsFloat := fdsNFeVLR_TOTAL.AsFloat;
        cdsManifesto_ItemITEM.AsInteger := cdsManifesto_Item.RecordCount + 1;
        cdsManifesto_Item.Post;
      end;
    end;
    frmPesqNFe.Free;
  end;
end;

procedure TfrmMDFe.cdsManifesto_ItemAfterPost(DataSet: TDataSet);
begin
  if permiteEdicao = true then
  begin
    fdsManifestoVLR_TOTAL_CARGA.AsFloat := fdsManifestoVLR_TOTAL_CARGA.AsFloat + cdsManifesto_ItemVLR_TOTAL.AsFloat;
    fdsManifestoQTN_TOTAL_NF.AsInteger :=fdsManifestoQTN_TOTAL_NF.AsInteger + 1;
    fdsManifestoPESO_BRUTO.AsFloat := fdsManifestoPESO_BRUTO.AsFloat +cdsManifesto_ItemPESO_BRUTO.AsFloat;
  end;
end;

procedure TfrmMDFe.cdsManifesto_ItemBeforeEdit(DataSet: TDataSet);
begin
  if permiteEdicao = true then
  begin
    if fdsManifesto.State in [dsInsert, dsEdit] then
    begin
      fdsManifestoVLR_TOTAL_CARGA.AsFloat := fdsManifestoVLR_TOTAL_CARGA.AsFloat - cdsManifesto_ItemVLR_TOTAL.AsFloat;
      fdsManifestoQTN_TOTAL_NF.AsInteger :=fdsManifestoQTN_TOTAL_NF.AsInteger - 1;
      fdsManifestoPESO_BRUTO.AsFloat := fdsManifestoPESO_BRUTO.AsFloat - cdsManifesto_ItemPESO_BRUTO.AsFloat;
    end;
  end;
end;

procedure TfrmMDFe.cdsManifesto_ItemReconcileError
  (DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showMessage(E.Message);
end;

procedure TfrmMDFe.ConfiguraMDFe;
var
  Ok: Boolean;
  PathMensal: String;
begin

  if dm.fdsConfigMDFeTIPO_CERT.AsString = 'A1' then
  begin
    // ACBrMDFe1.Configuracoes.Certificados.ArquivoPFX := 'C:\Users\CBSistemas\Desktop\CERTIFICADO\Z� Elias';
    ACBrMDFe1.Configuracoes.Certificados.Senha :=
      dm.fdsConfigMDFeCERT_SENHA.AsString;
    ACBrMDFe1.Configuracoes.Geral.SSLLib := TSSLLib(3);
  end;

  if dm.fdsConfigMDFeTIPO_CERT.AsString = 'A3' then
  begin
    ACBrMDFe1.Configuracoes.Geral.SSLLib := TSSLLib(3);
  end;
  ACBrMDFe1.Configuracoes.Certificados.NumeroSerie :=dm.fdsConfigMDFeCERT_NUM_SERIE.AsString;

  with ACBrMDFe1.Configuracoes.Geral do
  begin
    VersaoDF := ve300;
    FormaEmissao := teNormal;
    Salvar := true;
    // ExibirErroSchema:=False;
    IdentarXML := false;
  end;

  ACBrMDFe1.Configuracoes.Arquivos.AdicionarLiteral := false;
  ACBrMDFe1.Configuracoes.Arquivos.EmissaoPathMDFe := true;
  ACBrMDFe1.Configuracoes.Arquivos.SepararPorMes := false;
  ACBrMDFe1.Configuracoes.Arquivos.SepararPorCNPJ := false;
  ACBrMDFe1.Configuracoes.Arquivos.PathMDFe :=
    PathWithDelim(ExtractFilePath(Application.ExeName)) + '\MDFeLogs';
  PathMensal := ACBrMDFe1.Configuracoes.Arquivos.GetPathMDFe(0);
  ACBrMDFe1.Configuracoes.Arquivos.PathSalvar := PathMensal;
  ACBrMDFe1.Configuracoes.Arquivos.PathEvento :=
    ExtractFilePath(Application.ExeName) + '\MDFeLogs\Eventos';
  ACBrMDFe1.Configuracoes.Arquivos.PathSchemas :=
    PathWithDelim(ExtractFilePath(Application.ExeName)) + '\Schemas\MDFe';
  ACBrMDFe1.Configuracoes.WebServices.UF := dm.fdsConfigMDFeWS_UF.AsString;
  ACBrMDFe1.Configuracoes.WebServices.Ambiente :=
    StrToTpAmb(Ok, IntToStr(dm.fdsConfigMDFeWS_AMBIENTE.AsInteger));;
  ACBrMDFe1.Configuracoes.WebServices.Visualizar := false;
  ACBrMDFe1.Configuracoes.WebServices.Salvar := true;

  if ACBrMDFe1.DAMDFE <> nil then
  begin
    ACBrMDFe1.DAMDFE.TipoDAMDFe := StrToTpImp(Ok, IntToStr(1));
    ACBrMDFe1.DAMDFE.Logo := dm.fdsConfigLOGO_IMG_CAMINHO.AsString;
    ACBrMDFe1.DAMDFE.TamanhoPapel := tpA4_2vias;
    ACBrMDFe1.DAMDFE.PathPDF := PathMensal;
    ACBrMDFe1.DAMDFE.ExpandeLogoMarca := false;
    ACBrMDFe1.DAMDFE.MostraPreview := true;
  end;
end;

procedure TfrmMDFe.ControlaBtnsItens;
begin
  // btnItemCancelar.Enabled := alterandoIten;
  // btnItemGravar.Enabled := alterandoIten;
  // btnInfoAdicional.Enabled := alterandoIten;
  btnIncluirNfe.Enabled := not(alterandoIten);
  // btnItemAlterar.Enabled := not(alterandoIten);
  btnExcluirNFe.Enabled := not(alterandoIten);
  gdrNFe.Enabled := not(alterandoIten);
  alterandoIten := not(alterandoIten);
  RzGroupBox1.Enabled := alterandoIten;
end;

procedure TfrmMDFe.EditaInsere;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex := 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := false;
      TRzPageControl(Components[i]).Pages[4].TabVisible := false;
    end;

    if ((Components[i] is TRzBitBtn)) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := false
      else
      begin
        if Components[i].Tag = 5 then
          TRzBitBtn(Components[i]).Enabled := false
        else
          TRzBitBtn(Components[i]).Enabled := true;
      end;

    end;
  end;
  ControlaBtnsItens;
  idManifesto := fdsManifestoID.AsInteger;
end;

procedure TfrmMDFe.EmitirMDFe;
var
  tempIdManifesto, idFilialTemp: string;
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    // with qryConsulta do
    // begin
    // Close;
    // SQL.Clear;
    // SQL.Add('SELECT CODIGO_MANIFESTO,IDVEICULO FROM MANIFESTO WHERE STATUS ='+QuotedStr('MF')+'AND ID='+QuotedStr(fdsManifestoIDVEICULO.AsString));
    // Prepare;
    // ExecQuery
    // end;
    // if qryConsulta.RecordCount>0 then
    // begin
    //
    // Application.MessageBox
    // (pWideChar('Existe um manifesto n�o encerrado com esse mesmo tranporte,por favor efetue o Encerramento do manifesto '+qryConsulta.FieldByName('CODIGO_MANIFESTO').AsString+' antes de realizar esta opera��o.'),'Aten��o', MB_OK + MB_ICONWARNING);
    // Abort;
    // end;

    tempIdManifesto := fdsManifestoID.AsString;
    idFilialTemp := fdsManifestoIDFILIAL.AsString;

    with fdsManifesto do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDNF', 'ID = ' + tempIdManifesto, true);
      Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + idFilialTemp, true);
      Conditions.Apply;
      Prepare;
      Open;
    end;
    RetornaItensMDFe;

    try
      frmStatusNFe := TfrmStatusNFe.Create(nil);
      frmStatusNFe.param := 'EmitirMDFE';
      frmStatusNFe.ShowModal;
    finally
      if frmStatusNFe.ModalResult = mrOk then
      begin
        frmStatusNFe.Free;
      end;
    end;

    rgbStatus.ItemIndex := 1;
    fdsManifesto.Locate('ID', tempIdManifesto, []);

    // case rgbStatus.ItemIndex of
    // 0:
    // pesquisar('AB');
    // 1:
    // pesquisar('NT');
    // 2:
    // pesquisar('ER');
    // end;
    tbsTabela.Show;
  end;
end;

procedure TfrmMDFe.fdsManifestoAfterScroll(DataSet: TDataSet);
begin
  if (pgcControl.ActivePageIndex = 1) then
  begin
    RetornaItensMDFe;
  end;
  if (pgcControl.ActivePageIndex = 2) then
  begin
    RetornaDadosRodoviario;
  end;
  if (pgcControl.ActivePageIndex = 3) then
  begin
    RetornaDadosReboque;
  end;

  if (fdsManifestoSTATUS.AsString = 'MF') then
  begin
    EmitirMDFe1.Enabled := false;
    ImprimirDANFe1.Enabled := true;
    CancelarMDFe1.Enabled := true;
    btnAlterar.Enabled := false;
    btnExcluirMDFe.Enabled := false;
    EncerrarMDFe1.Enabled := true;
  end
  else
  begin
    EmitirMDFe1.Enabled := true;
    ImprimirDANFe1.Enabled := false;
    CancelarMDFe1.Enabled := false;
    EncerrarMDFe1.Enabled := false;
    btnAlterar.Enabled := true;
  end;

  if fdsManifestoSTATUS.AsString = 'FN' then
  begin
    EmitirMDFe1.Enabled := false;
    btnAlterar.Enabled := false;
    btnExcluirMDFe.Enabled := false;
  end;

  if fdsManifestoSTATUS.AsString = 'CL' then
  begin
    btnAlterar.Enabled := false;
    EmitirMDFe1.Enabled := false;
    btnAlterar.Enabled := false;
    btnExcluirMDFe.Enabled := false;
  end;

  if fdsManifestoSTATUS.AsString = 'OF' then
  begin
    btnAlterar.Enabled := false;
    EmitirMDFe1.Enabled := true;
    btnExcluirMDFe.Enabled := false;
  end;
  if fdsManifestoSTATUS.AsString = 'ER' then
  begin
    btnExcluirMDFe.Enabled := false;
  end;
end;

procedure TfrmMDFe.fdsManifestoBeforeCancel(DataSet: TDataSet);
var
  utils: TUtils;
begin
  if fdsManifesto.State in [dsInsert] then
    utils.CancelarGENDecrementa('GEN_ID_MANIFESTO', '-1', qrySQL);
  // Dm.Conexao.CommitRetaining;
end;

procedure TfrmMDFe.fdsManifestoGetRecordError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  showMessage(E.Message);
end;

procedure TfrmMDFe.fdsManifestoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  showMessage(E.Message);
end;

procedure TfrmMDFe.fdsVeiculoAfterCancel(DataSet: TDataSet);
var
  utils: TUtils;
begin
  // utils.CancelarGENDecrementa('GEN_ID_VEICULO_MDFE',-1,qrySQL);
end;

procedure TfrmMDFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdsManifesto.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Voce est� Inserindo ou Editando um manifesto,por favor Salve ou Cancele antes de realizar esta opera��o.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Abort;
  end;
  FreeAndNil(frmMDFe);
end;

procedure TfrmMDFe.FormCreate(Sender: TObject);
begin
  // dtpInicio.Date := StartOfTheYear(Date);
  // fdsManifesto.Open;
  dm.fdsConfigMDFe.Open;
 // if dm.fdsConfigMDFeCERT_NUM_SERIE.AsString <> EmptyStr then
    ConfiguraMDFe;
  Pesquisar('AB');
  tbsTabela.Show;
end;

procedure TfrmMDFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TfrmMDFe.GravaCancela;
var
  i: SmallInt;
  utils: TUtils;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).Pages[0].TabVisible := true;
      TRzPageControl(Components[i]).Pages[4].TabVisible := true;
      TRzPageControl(Components[i]).ActivePageIndex := 0;
    end
    else
    begin
      if ((Components[i] is TRzBitBtn)) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := true
        else
          TRzBitBtn(Components[i]).Enabled := false;
      end
      else
      begin
        if Components[i].Tag = 15 then
        begin
          if (Components[i] is TRzEdit) then
            utils.ResetColorCampo(TRzDBEdit(Components[i]), true)
          else
            utils.ResetColorCampo(TRzDBEdit(Components[i]), false);
        end;
      end;
    end;
  end;

  alterandoIten := false;
  // rgbStatus.ItemIndex := 0;
  tbsTabela.Show;
  fdsManifesto.Locate('ID', idManifesto, []);
end;

procedure TfrmMDFe.Pesquisar(tipo: String);
var
  utils: TUtils;
  numVenda: Double;
begin
  fdsManifestoItem.Close;
  tbsTabela.Show;

  with fdsManifesto do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('TIPO', 'STATUS = ' + QuotedStr(tipo), true);

    if (pnlNumVenda.Checked) then
    begin
      numVenda := utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numVenda > 0 then
        Conditions.AddCondition('CODIGO', 'CODIGO_MANIFESTO = ' +
          QuotedStr(FloatToStr(numVenda)), true);
    end;

    if pnlPeriodoINC.Checked then
      Conditions.AddCondition('DTINCLUSAO', 'DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), true);

    if pnlPeriodoEMISS.Checked then
      Conditions.AddCondition('DTEMISSAO', 'DT_EMISSAO BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicioEmiss.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFimEmiss.Date)), true);

    Conditions.Apply;
    OrderClause := 'DT_INC DESC,DT_EMISSAO DESC ,CODIGO_MANIFESTO DESC';
    Prepare;
    Open;
  end;
end;

procedure TfrmMDFe.pnlNumVendaCheckBoxClick(Sender: TObject);
begin
  if not(fdsManifesto.State in [dsInsert, dsEdit]) then
  begin
    if not(pnlNumVenda.Checked) then
    begin
      edtPesqNumVenda.Text := 'TODOS';
      edtPesqNumVenda.Font.Color := clGray;
      btnPesquisar.Click;
    end
    else
      edtPesqNumVenda.SetFocus;
  end;
end;

procedure TfrmMDFe.PreencheManifestoEmitent;
begin
  fdsManifestoCNPJ_CPF.AsString := dm.fdsConfigCNPJ.AsString;
  fdsManifestoIE.AsString := dm.fdsConfigMDFeIE.AsString;
  fdsManifestoNOME.AsString := dm.fdsConfigMDFeNOME.AsString;
  fdsManifestoRAZAO.AsString := dm.fdsConfigMDFeRAZAO.AsString;
  fdsManifestoENDERECO.AsString := dm.fdsConfigMDFeENDERECO.AsString;
  fdsManifestoNUMERO.AsString := dm.fdsConfigMDFeNUMERO.AsString;
  fdsManifestoBAIRRO.AsString := dm.fdsConfigMDFeBAIRRO.AsString;
  fdsManifestoCODCIDADE.AsString := dm.fdsConfigMDFeCODCIDADE.AsString;
  fdsManifestoCIDADE.AsString := dm.fdsConfigMDFeCIDADE.AsString;
  //fdsManifestoUF.AsString := dm.fdsConfigMDFeUF.AsString;
  fdsManifestoCEP.AsString := dm.fdsConfigMDFeCEP.AsString;
  fdsManifestoSERIE_MANIFESTO.AsInteger :=
    dm.fdsConfigMDFeSERIE_MANIFESTO.AsInteger;
end;

procedure TfrmMDFe.btnIncluirXMLClick(Sender: TObject);
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter :=
    'Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    frmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    try
      frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    except
      showMessage('Arquivo NFe Inv�lido');
      exit;
    end;
    with frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe do
    begin
      if cdsManifesto_Item.Locate('CHAVE_NFE', infNFe.ID, [loCaseInsensitive])
      then
      begin
        Application.MessageBox('Esta nota j� foi lan�ada, escolha outra nota.',
          'Aten��o', MB_OK + MB_ICONWARNING);
        btnIncluirXML.Click;
        Abort;
      end;

      with frmPrincipal.ACBrNFe1.NotasFiscais.Items[0].NFe do
      begin
        cdsManifesto_Item.Append;
        cdsManifesto_ItemIDMANIFESTO.AsInteger := fdsManifestoID.AsInteger;
        cdsManifesto_ItemIDCLIENTE.AsInteger := 99999;
        cdsManifesto_ItemIDFILIAL.AsInteger :=
          dm.fdsConfigNFeIDFILIAL.AsInteger;
        cdsManifesto_ItemCODIGO_NFE.AsString := IntToStr(ide.nNF);
        cdsManifesto_ItemCHAVE_NFE.AsString := infNFe.ID;
        cdsManifesto_ItemVLR_TOTAL.AsFloat := Total.ICMSTot.vNF;
        cdsManifesto_ItemCHAVE_CONTIGENCIA.AsString:= frmPrincipal.ACBrNFe1.GerarChaveContingencia(frmPrincipal.ACBrNFe1.NotasFiscais.Items[0].NFe);
        if Transp.Vol.Items[0].pesoB > 0 then
          cdsManifesto_ItemPESO_BRUTO.AsFloat := Transp.Vol.Items[0].pesoB
        else
          cdsManifesto_ItemPESO_BRUTO.AsFloat := 0;

        cdsManifesto_ItemITEM.AsInteger := cdsManifesto_Item.RecordCount + 1;
        cdsManifesto_Item.Post;
      end;
    end;

  end;

end;

procedure TfrmMDFe.btnLastClick(Sender: TObject);
begin
  fdsManifesto.Last;
end;

procedure TfrmMDFe.btnLimparClick(Sender: TObject);
begin
  if fdsReboque.RecordCount > 0 then
  begin
    fdsReboque.Close;
    fdsManifestoIDREBOQUE.AsInteger := 0;
  end;
end;

procedure TfrmMDFe.btnNextClick(Sender: TObject);
begin
  fdsManifesto.Next;
end;

procedure TfrmMDFe.btnPesqCidadeDescargaClick(Sender: TObject);
begin
  try
    frmPesqCidade := TfrmPesqCidade.Create(nil);
    frmPesqCidade.ShowModal;
  finally
    if frmPesqCidade.ModalResult = mrOk then
    begin
      fdsManifestoCOD_CIDADE_DESTINO.AsInteger :=
        frmPesqCidade.fdsCidadesCODIGO.AsInteger;
      fdsManifestoCIDADE_DESTINO.AsString :=
        frmPesqCidade.fdsCidadesNOME.AsString;
    end;
    frmPesqCidade.Free;
  end;
end;

procedure TfrmMDFe.btnPesqReboqueClick(Sender: TObject);
begin
  if gdrReboque.Checked then
  begin
    // frmPesqReboqueMDFe
    try
      frmPesqReboqueMDFe := TfrmPesqReboqueMDFe.Create(nil);
      frmPesqReboqueMDFe.ShowModal;
    finally
      if frmPesqReboqueMDFe.ModalResult = mrOk then
      begin
        with fdsReboque do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('ID',
            'ID=' + QuotedStr
            (IntToStr(frmPesqReboqueMDFe.fdsReboqueID.AsInteger)), true);
          Conditions.Apply;
          Prepare;
          Open;
        end;
        fdsManifestoIDREBOQUE.AsInteger := fdsReboqueID.AsInteger;
      end;
      frmPesqReboqueMDFe.Free;
      btnLimpar.Enabled := true;
      btnEditarReboque.Enabled := true;
    end;
  end;
end;

procedure TfrmMDFe.btnPesqTransportadoraClick(Sender: TObject);
begin
  try
    frmPesqTransportadora := TfrmPesqTransportadora.Create(nil);
    frmPesqTransportadora.ShowModal;
  finally
    if frmPesqTransportadora.ModalResult = mrOk then
    begin
      with fdsTransportadora do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('ID',
          'ID=' + QuotedStr(IntToStr(frmPesqTransportadora.fdsTransportadoraID.
          AsInteger)), true);
        Conditions.Apply;
        Prepare;
        Open;
      end;
      fdsManifestoIDTRANSPORTADORA.AsInteger := fdsTransportadoraID.AsInteger;
    end;
    frmPesqTransportadora.Free;
    btnEditarTransportadora.Enabled := true;
  end;
end;

procedure TfrmMDFe.btnPesquisarClick(Sender: TObject);
begin
  if rgbStatus.ItemIndex = 0 then
    Pesquisar('AB');
  if rgbStatus.ItemIndex = 1 then
    Pesquisar('MF');
  if rgbStatus.ItemIndex = 2 then
    Pesquisar('ER');
  if rgbStatus.ItemIndex = 3 then
    Pesquisar('CL');
  if rgbStatus.ItemIndex = 4 then
    Pesquisar('OF');
  if rgbStatus.ItemIndex = 5 then
    Pesquisar('FN');
  tbsTabela.Show;
end;

procedure TfrmMDFe.btnPesquisarMotoristaClick(Sender: TObject);
begin
  if not(fdsMotorista.State in [dsEdit, dsInsert]) then
  begin
    try
      frmPesqMotoristaMDFe := TfrmPesqMotoristaMDFe.Create(nil);
      frmPesqMotoristaMDFe.ShowModal;
    finally
      if frmPesqMotoristaMDFe.ModalResult = mrOk then
      begin
        with fdsMotorista do
        begin
          Close;
          Conditions.Clear;
          Conditions.AddCondition('ID',
            'ID=' + QuotedStr(IntToStr(frmPesqMotoristaMDFe.fdsMotoristaMDFeID.
            AsInteger)), true);
          Conditions.Apply;
          Prepare;
          Open;
        end;
        fdsManifestoIDMOTORISTA.AsInteger := fdsMotoristaID.AsInteger;
      end;
      frmPesqMotoristaMDFe.Free;
      btnEditarCadMotorista.Enabled := true;
    end;
  end
  else
  begin
    Application.MessageBox
      ('Primeiro Salve ou cancele o cadastramento do Motorista', 'Aten��o',
      MB_OK + MB_ICONINFORMATION)
  end;
end;

procedure TfrmMDFe.btnPesquisaVe�culoClick(Sender: TObject);
begin
  if not(fdsVeiculo.State in [dsEdit, dsInsert]) then
  begin
    try
      frmPesqVeiculoMDFe := TfrmPesqVeiculoMDFe.Create(nil);
      frmPesqVeiculoMDFe.ShowModal;
    finally
      if frmPesqVeiculoMDFe.ModalResult = mrOk then
      begin
        with fdsVeiculo do
        begin
          Close;
          ParamByName('IDVEICULO').AsInteger :=
            frmPesqVeiculoMDFe.fdsVeiculosMDFeID.AsInteger;
          Prepare;
          Open;
        end;
        fdsManifestoIDVEICULO.AsInteger :=
          frmPesqVeiculoMDFe.fdsVeiculosMDFeID.AsInteger;
      end;
      frmPesqVeiculoMDFe.Free;
    end;
  end
  else
  begin
    Application.MessageBox('Primeiro Salve o cadastramento do Ve�culo',
      'Aten��o', MB_OK + MB_ICONINFORMATION)
  end;
end;

procedure TfrmMDFe.btnPriorClick(Sender: TObject);
begin
  fdsManifesto.First;
end;

procedure TfrmMDFe.RetornaDadosReboque;
begin
  with fdsReboque do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDREBOQUE',
      'ID=' + QuotedStr(fdsManifestoIDREBOQUE.AsString), true);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmMDFe.RetornaDadosRodoviario;
begin
  with fdsVeiculo do
  begin
    Close;
    ParamByName('IDVEICULO').AsInteger := fdsManifestoIDVEICULO.AsInteger;
    Prepare;
    Open;
  end;

  with fdsTransportadora do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDTRANSPORTADORA',
      'ID=' + QuotedStr(fdsManifestoIDTRANSPORTADORA.AsString), true);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  with fdsMotorista do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDMOTORISTA',
      'ID=' + QuotedStr(fdsManifestoIDMOTORISTA.AsString), true);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmMDFe.RetornaItensMDFe;
begin
  if not(fdsManifesto.State in [dsInsert]) and (fdsManifesto.RecordCount > 0)
  then
  begin
    with fdsManifestoItem do
    begin
      cdsManifesto_Item.Close;
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDMANIFESTO', 'MI.IDMANIFESTO=' +
        QuotedStr(fdsManifestoID.AsString), true);
      Conditions.AddCondition('IDFILIAL',
        'MI.IDFILIAL=' + QuotedStr(fdsManifestoIDFILIAL.AsString), true);
      Conditions.Apply;
      Prepare;
      Open;
      cdsManifesto_Item.Open;
    end;
  end;
end;

procedure TfrmMDFe.rgbStatusChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if not(fdsManifesto.State in [dsEdit, dsInsert]) then
  begin
    if NewIndex = 0 then
      Pesquisar('AB');

    if NewIndex = 1 then
      Pesquisar('MF');

    if NewIndex = 2 then
      Pesquisar('ER');

    if NewIndex = 3 then
      Pesquisar('CL');

    if NewIndex = 4 then
      Pesquisar('OF');

    if NewIndex = 5 then
      Pesquisar('FN');
  end;
end;

procedure TfrmMDFe.RzBitBtn1Click(Sender: TObject);
begin
  if dm.fdsConfigMDFe.State in [dsEdit, dsInsert] then
  begin
    try
      frmPesqCidade := TfrmPesqCidade.Create(nil);
      frmPesqCidade.ShowModal;
    finally
      if frmPesqCidade.ModalResult = mrOk then
      begin
        dm.fdsConfigMDFeCODCIDADE.AsInteger :=
          frmPesqCidade.fdsCidadesCODIGO.AsInteger;
        dm.fdsConfigMDFeCIDADE.AsString :=
          frmPesqCidade.fdsCidadesNOME.AsString;
        dm.fdsConfigMDFeUF.AsString := frmPesqCidade.fdsCidadesUF.AsString;
      end;
      frmPesqCidade.Free;
    end;
  end;
end;

procedure TfrmMDFe.RzBitBtn2Click(Sender: TObject);
begin
  try
    frmPesqCidade := TfrmPesqCidade.Create(nil);
    frmPesqCidade.fdsCidades.Close;
    frmPesqCidade.fdsCidades.Conditions.Clear;
    frmPesqCidade.fdsCidades.Conditions.AddCondition('UF',
      'UF=' + QuotedStr(fdsManifestoUF.AsString), true);
    frmPesqCidade.fdsCidades.Conditions.Apply;
    frmPesqCidade.fdsCidades.Prepare;
    frmPesqCidade.fdsCidades.Open;
    frmPesqCidade.ShowModal;
  finally
    if frmPesqCidade.ModalResult = mrOk then
    begin
      fdsManifestoCOD_CIDADE_CARREGA.AsInteger :=
        frmPesqCidade.fdsCidadesCODIGO.AsInteger;
      fdsManifestoCIDADE_CARREGA.AsString :=
        frmPesqCidade.fdsCidadesNOME.AsString;
    end;
    frmPesqCidade.Free;
  end;
end;

procedure TfrmMDFe.btnCadastrarCondutorClick(Sender: TObject);
begin
  fdsMotorista.Close;
  fdsMotorista.Open;
  fdsMotorista.Append;
  btnPesquisarMotorista.Enabled := false;
  btnSalvarCadMotorista.Enabled := true;
  btnEditarCadMotorista.Enabled := false;
  btnCadastrarCondutor.Enabled := false;
  edtNomeCondutor.SetFocus;
end;

procedure TfrmMDFe.btnCadastraReboqueClick(Sender: TObject);
begin
  if gdrReboque.Checked then
  begin
    fdsReboque.Close;
    fdsReboque.Open;
    fdsReboque.Append;
    fdsReboqueSTATUS.AsString := 'A';
    fdsReboqueDT_INC.AsDateTime := Now;
    btnPesqReboque.Enabled := false;
    btnSalvarReboque.Enabled := true;
    btnEditarReboque.Enabled := false;
    btnCadTansportadora.Enabled := false;
    btnLimpar.Enabled := false;
    edtPlacaReboque.SetFocus;
  end;
end;

procedure TfrmMDFe.btnEditarCadMotoristaClick(Sender: TObject);
begin
  if fdsMotorista.RecordCount > 0 then
  begin
    fdsMotorista.Edit;
    btnPesquisarMotorista.Enabled := false;
    btnSalvarCadMotorista.Enabled := true;
    btnCadastrarCondutor.Enabled := false;
    btnEditarCadMotorista.Enabled := false;
  end
  else
  begin
    Application.MessageBox
      ('Nenhum motorista selecionado para a edi��o.Por favor selecione um motorista para efetuar a opera��o',
      'Aten��o', MB_OK + MB_ICONQUESTION);
    btnPesquisarMotorista.SetFocus;
  end;
end;

procedure TfrmMDFe.btnEditarReboqueClick(Sender: TObject);
begin
  if fdsReboque.RecordCount > 0 then
  begin
    fdsReboque.Edit;
    btnPesqReboque.Enabled := false;
    btnSalvarReboque.Enabled := true;
    btnCadastraReboque.Enabled := false;
    btnEditarReboque.Enabled := false;
    btnLimpar.Enabled := false;
    fdsReboqueDT_ALT.AsDateTime := Now;
  end
  else
  begin
    Application.MessageBox
      ('Nenhum motorista selecionado para a edi��o.Por favor selecione um motorista para efetuar a opera��o',
      'Aten��o', MB_OK + MB_ICONQUESTION);
    btnPesqReboque.SetFocus;
  end;
end;

procedure TfrmMDFe.btnEditarTransportadoraClick(Sender: TObject);
begin
  if fdsTransportadora.RecordCount > 0 then
  begin
    fdsTransportadora.Edit;
    btnPesqTransportadora.Enabled := false;
    btnSalvaTransportadora.Enabled := true;
    btnCadTansportadora.Enabled := false;
    btnEditarTransportadora.Enabled := false;
  end
  else
  begin
    Application.MessageBox
      ('Nenhum motorista selecionado para a edi��o.Por favor selecione um motorista para efetuar a opera��o',
      'Aten��o', MB_OK + MB_ICONQUESTION);
    btnPesquisarMotorista.SetFocus;
  end;
end;

procedure TfrmMDFe.btnCadastroVe�culoClick(Sender: TObject);
begin
  fdsVeiculo.Close;
  fdsVeiculo.Open;
  fdsVeiculo.Append;
  btnPesquisaVe�culo.Enabled := false;
  btnSalvarveiculo.Enabled := true;
  btnCadastroVe�culo.Enabled:= False;
  edtDescri��o.SetFocus;
  // fdsVeiculoIDTRANSPORTADORA.AsIntegr:= vai receber a tranportadora
end;

procedure TfrmMDFe.btnCadTansportadoraClick(Sender: TObject);
begin
  fdsTransportadora.Close;
  fdsTransportadora.Open;
  fdsTransportadora.Append;
  fdsTransportadoraSTATUS.AsString := 'A';
  fdsTransportadoraDT_INC.AsDateTime := Now;
  fdsTransportadoraENVIADO_WEB.AsString := 'N';
  btnPesqTransportadora.Enabled := false;
  btnSalvaTransportadora.Enabled := true;
  btnEditarTransportadora.Enabled := false;
  btnCadTansportadora.Enabled := false;
  edtNomeProprietario.SetFocus;
end;

procedure TfrmMDFe.admEncerrarMDFeExecute(Sender: TObject);
var
  tempIdManifesto: String;
begin
  if fdsManifesto.RecordCount > 0 then
  begin

    tempIdManifesto := fdsManifestoID.AsString;
    // idFilialTemp := fdsManifestoIDFILIAL.AsString;

    with fdsManifesto do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDNF', 'ID = ' + tempIdManifesto, true);
      // Conditions.AddCondition('IDFILIAL', 'IDFILIAL = ' + idFilialTemp, true);
      Conditions.Apply;
      Prepare;
      Open;
    end;
    try
      frmStatusNFe := TfrmStatusNFe.Create(nil);
      frmStatusNFe.param := 'EncerrarMDFE';
      frmStatusNFe.ShowModal;
    finally
      if frmStatusNFe.ModalResult = mrOk then
      begin
        frmStatusNFe.Free;
      end;
    end;
    rgbStatus.ItemIndex := 5;
    fdsManifesto.Locate('ID', tempIdManifesto, []);
  end;
end;

procedure TfrmMDFe.btnAcoesMDFeClick(Sender: TObject);
begin
  ppmMDFe.Popup(frmMDFe.Left + 280, frmMDFe.top + 660);
end;

procedure TfrmMDFe.btnExcluirMDFeClick(Sender: TObject);
begin
  if (pgcControl.TabIndex = 0) AND (fdsManifesto.RecordCount > 0) and
    (fdsManifestoSTATUS.AsString = 'AB') then
  begin
    RetornaItensMDFe;
    if fdsManifestoItem.RecordCount > 0 then
    begin
      fdsManifestoItem.First;
      while not(fdsManifestoItem.Eof) do
      begin
        fdsManifestoItem.Delete;
        fdsManifestoItem.Next;
      end;
      dm.Conexao.CommitRetaining;
    end;
    fdsManifesto.Delete;
    dm.Conexao.CommitRetaining;
  end;
  tbsTabela.Show;
end;

procedure TfrmMDFe.btnSalvarCadMotoristaClick(Sender: TObject);
var
  mensagem: String;
  cadastrando: Boolean;
begin
  cadastrando := false;
  if fdsMotorista.State in [dsInsert] then
  begin
    mensagem := 'Deseja realmente Cadastrar esse Motorista?';
    cadastrando := true;
  end
  else
  begin
    if fdsMotorista.State in [dsEdit] then
    begin
      mensagem :=
        'Deseja realmente Salvar as Autera��es feitas no cadastro desse Motorista?';
      cadastrando := false;
    end;
  end;
  Case MessageBox(Application.Handle, Pchar(mensagem), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsMotorista.Post;
        dm.Conexao.CommitRetaining;
        if cadastrando = true then
        begin
          // Application.MessageBox('Ap�s Esse Cadastramento voc� deve selecionar o Motorista cadastrado no bot�o de Pesquisa.', 'Aten��o',
          // MB_OK + MB_ICONQUESTION);
          fdsManifestoIDMOTORISTA.AsInteger := fdsMotoristaID.AsInteger;
        end;
      end;
    idNo:
      begin
        fdsMotorista.Cancel;
        dm.Conexao.RollbackRetaining;
        fdsMotorista.Close;
      end;
  End;
  btnPesquisarMotorista.Enabled := true;
  btnPesquisarMotorista.SetFocus;
  btnEditarCadMotorista.Enabled := true;
  btnCadastrarCondutor.Enabled := true;
  btnSalvarCadMotorista.Enabled := false;
end;

procedure TfrmMDFe.btnSalvarConfigClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja Realmente Salvar as Altera��es realizadas?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        if ultimoMDFe = 0 then
        begin
          with qrySQL do
          begin
            Close;
            SQL.Clear;
            SQL.Add('ALTER SEQUENCE GEN_CODIGO_MANIFESTO RESTART WITH ' +
              dm.fdsConfigMDFeULTIMO_MANIFESTO.AsString);
            Prepare;
            ExecQuery;
          end;
        end;
        dm.fdsConfigMDFe.Post;
        dm.Conexao.CommitRetaining;
        ConfiguraMDFe;
        btnEditaConfig.Enabled := true;
        btnCancelaConfig.Enabled := false;
        btnSalvarConfig.Enabled := false;
        RzBitBtn1.Enabled := false;
      end;
    idNo:
      begin
        Abort;
      end;
  End;
end;

procedure TfrmMDFe.btnSalvarReboqueClick(Sender: TObject);
var
  mensagem: String;
  cadastrando: Boolean;
begin
  cadastrando := false;
  if fdsReboque.State in [dsInsert] then
  begin
    mensagem := 'Deseja realmente Cadastrar esse Reboque?';
    cadastrando := true;
  end
  else
  begin
    if fdsReboque.State in [dsEdit] then
    begin
      mensagem :=
        'Deseja realmente Salvar as Autera��es feitas no cadastro desse Reboque?';
      cadastrando := false;
    end;
  end;
  Case MessageBox(Application.Handle, Pchar(mensagem), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsReboque.Post;
        dm.Conexao.CommitRetaining;
        if cadastrando = true then
        begin
          fdsManifestoIDREBOQUE.AsInteger := fdsReboqueID.AsInteger;
        end;
      end;
    idNo:
      begin
        fdsReboque.Cancel;
        dm.Conexao.RollbackRetaining;
        fdsReboque.Close;
      end;
  End;
  btnPesqReboque.Enabled := true;
  btnPesqReboque.SetFocus;
  btnEditarReboque.Enabled := true;
  btnLimpar.Enabled := true;
  btnCadastraReboque.Enabled := true;
  btnSalvarReboque.Enabled := false;
end;

procedure TfrmMDFe.btnSelecionaCertClick(Sender: TObject);
begin
  Try
    dm.fdsConfigMDFeCERT_NUM_SERIE.AsString :=ACBrMDFe1.SSL.SelecionarCertificado;
    dm.fdsConfigMDFeCERT_SENHA.AsString := ACBrMDFe1.SSL.Senha;
    dm.fdsConfigMDFeCNPJ_CPF.AsString := ACBrMDFe1.SSL.CertCNPJ;
    dm.fdsConfigMDFeRAZAO.AsString := ACBrMDFe1.SSL.CertRazaoSocial;
  Except
    on E: Exception do
    begin
      Application.MessageBox('Nenhum certificado selecionado.', 'Aten��o',
        MB_OK + MB_ICONQUESTION);
      // showMessage(e.Message);
    end;
  End;
end;

procedure TfrmMDFe.btnTodosClick(Sender: TObject);
begin
  fdsManifesto.Close;
  fdsManifesto.Open;
end;

procedure TfrmMDFe.tbsConfigHide(Sender: TObject);
var
  i: SmallInt;
  utils: TUtils;
begin
  if fdsManifesto.State in [dsEdit, dsInsert] then
  begin
    EditaInsere;
  end
  else
  begin
    // GravaCancela;
    for i := 0 to ComponentCount - 1 do
    begin
      if ((Components[i] is TRzBitBtn)) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := true
        else
          TRzBitBtn(Components[i]).Enabled := false;
      end
      else
      begin
        if Components[i].Tag = 15 then
        begin
          if (Components[i] is TRzEdit) then
            utils.ResetColorCampo(TRzDBEdit(Components[i]), true)
          else
            utils.ResetColorCampo(TRzDBEdit(Components[i]), false);
        end;
      end;
    end;

  end;
end;

procedure TfrmMDFe.tbsConfigShow(Sender: TObject);
begin
  dm.fdsConfigMDFe.Edit;
  with qrySQL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(GEN_CODIGO_MANIFESTO,0) AS MDFE FROM RDB$DATABASE');
    Prepare;
    ExecQuery;

    dm.fdsConfigMDFeULTIMO_MANIFESTO.AsString := FieldByName('MDFE').AsString;
    ultimoMDFe := dm.fdsConfigMDFeULTIMO_MANIFESTO.AsInteger;
  end;
  dm.fdsConfigMDFe.Post;
  dm.Conexao.CommitRetaining;
  btnIncluir.Enabled := false;
  btnAlterar.Enabled := false;
  btnCancelar.Enabled := false;
  btnGravar.Enabled := false;
  btnExcluirMDFe.Enabled := false;
  btnAcoesMDFe.Enabled := false;
  btnSelecionaCert.Enabled := false;
end;

procedure TfrmMDFe.btnEditaConfigClick(Sender: TObject);
begin
  dm.fdsConfigMDFe.Close;
  dm.fdsConfigMDFe.Open;
  if dm.fdsConfigMDFe.RecordCount > 0 then
    dm.fdsConfigMDFe.Edit
  else
  begin
    dm.fdsConfigMDFe.Append;
    dm.fdsConfigMDFeID.AsInteger := dm.fdsConfigMDFe.RecordCount + 1;
  end;
  btnEditaConfig.Enabled := false;
  btnCancelaConfig.Enabled := true;
  btnSalvarConfig.Enabled := true;
  btnSelecionaCert.Enabled := true;
  RzBitBtn1.Enabled := true;
  btnSelecionaCert.SetFocus;
end;

procedure TfrmMDFe.gdrMDFeDblClick(Sender: TObject);
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    Clipboard.AsText := fdsManifestoCHAVE_MANIFESTO.AsString;
    // tbsFormulario.Show;
  end;
end;

procedure TfrmMDFe.gdrMDFeDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
     gdrMDFe.Canvas.Brush.Color := clWhite;
  if not odd(fdsManifesto.RecNo) then
  begin
    gdrMDFe.Canvas.Brush.Color := dm.gridOddColor;
    gdrMDFe.Canvas.FillRect(Rect);
    gdrMDFe.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if fdsManifestoSTATUS.AsString = 'MF' then
  begin
    gdrMDFe.Canvas.Font.Color := clGreen;
    gdrMDFe.Canvas.FillRect(Rect);
    gdrMDFe.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if fdsManifestoSTATUS.AsString = 'ER' then
  begin
    gdrMDFe.Canvas.Font.Color := clRed;
    gdrMDFe.Canvas.FillRect(Rect);
    gdrMDFe.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if fdsManifestoSTATUS.AsString = 'FN' then
  begin
    gdrMDFe.Canvas.Font.Color := clBlue;
    gdrMDFe.Canvas.FillRect(Rect);
    gdrMDFe.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
  if fdsManifestoSTATUS.AsString = 'CL' then
  begin
    gdrMDFe.Canvas.Font.Color := $000080FF;
    gdrMDFe.Canvas.FillRect(Rect);
    gdrMDFe.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmMDFe.tbsFormularioShow(Sender: TObject);
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    RetornaItensMDFe;
    // RetornaChaveNFsDevolver;
  end;
end;

procedure TfrmMDFe.tbsReboqueShow(Sender: TObject);
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    RetornaDadosReboque;
  end;
end;

procedure TfrmMDFe.tbsRodoviarioShow(Sender: TObject);
begin
  if fdsManifesto.RecordCount > 0 then
  begin
    RetornaDadosRodoviario;
  end;
end;

procedure TfrmMDFe.tbsTabelaShow(Sender: TObject);
begin
  fdsManifesto.Open;
end;

end.
