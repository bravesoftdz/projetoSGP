unit untVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzBckgnd, RzDBEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  RzTabs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvCheckBox, Mask, RzEdit,
  RzRadGrp, RzCmboBx, RzPanel, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, DB, FIBDataSet, pFIBDataSet, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, ImgList, cxGraphics,
  FIBQuery, pFIBQuery, RzDTP, ComCtrls, JvExComCtrls, JvDateTimePicker,
  frxClass, frxDBSet, RzSplit, Menus, ActnList, DBCtrls, System.Actions,
  DateUtils,System.Math,
  PngImageList, Vcl.Imaging.pngimage, Datasnap.DBClient, RzPrgres, RzStatus,
  uContador, frxExportPDF;

type
  TfrmVendas = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblTituloTotal: TRzLabel;
    lblTotalItens: TRzLabel;
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnGravar: TRzBitBtn;
    fdsVenda: TpFIBDataSet;
    fdsVendaItem: TpFIBDataSet;
    dsVenda: TDataSource;
    dsVendaItem: TDataSource;
    fdsVendaItemIDVENDA: TFIBBCDField;
    fdsVendaItemITEM: TFIBSmallIntField;
    fdsVendaItemIDPROD_ITEM: TFIBBCDField;
    fdsVendaItemDT_INC: TFIBDateField;
    fdsVendaItemQTN: TFIBBCDField;
    fdsVendaItemVLR_UNITARIO: TFIBBCDField;
    fdsVendaItemVLR_TOTAL: TFIBBCDField;
    fdsVendaItemPESO: TFIBBCDField;
    fdsVendaItemMOTIVO_RETORNO: TFIBStringField;
    fdsVendaItemENVIADO_WEB: TFIBStringField;
    fdsVendaItemIDFILIAL: TFIBBCDField;
    fdsVendaItemPRODUTO: TFIBStringField;
    fdsVendaItemREFERENCIA: TFIBStringField;
    fdsFilial: TpFIBDataSet;
    fdsFilialID: TFIBBCDField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    dsFilial: TDataSource;
    fdsCliente: TpFIBDataSet;
    fdsClienteID: TFIBBCDField;
    fdsClienteNOME: TFIBStringField;
    fdsClienteTELEFONE: TFIBStringField;
    fdsClienteTIPO: TFIBStringField;
    fdsClienteCIDADE: TFIBStringField;
    RzLabel13: TRzLabel;
    lblVlrTotal: TRzLabel;
    qrySomaTotal: TpFIBQuery;
    fdsVendaItemENTREGAR: TFIBStringField;
    fdsVendaItemENTRE: TStringField;
    frxDBVendas: TfrxDBDataset;
    frxDBItensVenda: TfrxDBDataset;
    RzSplitter1: TRzSplitter;
    RzPanel4: TRzPanel;
    pnlFilial: TRzGroupBox;
    cbxFilial: TRzComboBox;
    chkFilial: TJvCheckBox;
    pnlNumVenda: TRzGroupBox;
    edtPesqNumVenda: TRzEdit;
    chkNumVenda: TJvCheckBox;
    pnlPeriodo: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
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
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnInprimir: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsVenda: TRzTabSheet;
    tbsItens: TRzTabSheet;
    gdrItens: TJvDBGrid;
    RzPanel3: TRzPanel;
    lblCliente: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    edtClienteNome: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    ActionList1: TActionList;
    impAtual: TAction;
    impSintetico: TAction;
    impAnalitico: TAction;
    ppmImprimir: TPopupMenu;
    ImprimirPedidoAtual1: TMenuItem;
    RelatriodePedidosSinttico1: TMenuItem;
    RelatriodePedidosAnaltico1: TMenuItem;
    RzLabel15: TRzLabel;
    mmoMensagem: TRzDBMemo;
    fdsVendaItemVLR_DESC_ACRE: TFIBBCDField;
    fdsVendaItemTIPO_DESC_ACRE: TFIBStringField;
    fdsVendaItemTP: TFIBStringField;
    RzDBEdit12: TRzDBEdit;
    RzLabel16: TRzLabel;
    PngImageList1: TPngImageList;
    imgFlagYellow: TImage;
    imgFlagRed: TImage;
    imgFlagGreen: TImage;
    imgFlagYellow2: TImage;
    imgFlagRed2: TImage;
    imgFlagGreen2: TImage;
    gdrVendas: TJvDBGrid;
    RzDBEdit13: TRzDBEdit;
    RzLabel17: TRzLabel;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    RzLabel18: TRzLabel;
    lblTotal: TRzLabel;
    otaisporMoedas1: TMenuItem;
    fdsTotalMoedas: TpFIBDataSet;
    fdsTotalMoedasDN: TFIBBCDField;
    fdsTotalMoedasCH: TFIBBCDField;
    fdsTotalMoedasCT: TFIBBCDField;
    fdsTotalMoedasNT: TFIBBCDField;
    fdsTotalMoedasFN: TFIBBCDField;
    fdsTotalMoedasVD: TFIBBCDField;
    fdsTotalMoedasTK: TFIBBCDField;
    impTotFormaPag: TAction;
    frxTotalMoedas: TfrxDBDataset;
    impItensVendidos: TAction;
    Itensvendidosnoperodo1: TMenuItem;
    fdsItensVendidos: TpFIBDataSet;
    frxItensVendidos: TfrxDBDataset;
    impComissaoVendedores: TAction;
    pnlVendedor: TRzGroupBox;
    cbxVendedor: TRzComboBox;
    chkVendedor: TJvCheckBox;
    frxVendedor: TfrxDBDataset;
    fdsVendedorVLR_TOTAL_VENDA: TFloatField;
    fdsVendedorVLR_COMISSAO: TFloatField;
    lblVlrComissao: TRzLabel;
    lblTituloComis: TRzLabel;
    fdsGrupo: TpFIBDataSet;
    fdsGrupoID: TFIBBCDField;
    pnlProgresso: TRzGroupBox;
    pgbProgresso: TRzProgressBar;
    RzLabel19: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    btnAlterarEntrega: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    qrySql: TpFIBQuery;
    fdsVendaID: TFIBBCDField;
    fdsVendaIDFILIAL: TFIBBCDField;
    fdsVendaIDCAIXA: TFIBBCDField;
    fdsVendaDT_INC: TFIBDateField;
    fdsVendaSTATUS: TFIBStringField;
    fdsVendaIDCLIENTE: TFIBBCDField;
    fdsVendaIDVENDEDOR: TFIBBCDField;
    fdsVendaIDFORMA_PAG: TFIBBCDField;
    fdsVendaVLR_TOTITEM: TFIBBCDField;
    fdsVendaVLR_DESCONTO: TFIBBCDField;
    fdsVendaVLR_ENTRADA: TFIBBCDField;
    fdsVendaVLR_FRETE: TFIBBCDField;
    fdsVendaVLR_TOTAL: TFIBBCDField;
    fdsVendaVLR_VENDA: TFIBBCDField;
    fdsVendaPESO: TFIBBCDField;
    fdsVendaPREFIXO: TFIBStringField;
    fdsVendaDT_FECHAMENTO: TFIBDateField;
    fdsVendaSUBTRIBUTARIA: TFIBBCDField;
    fdsVendaENVIADO_WEB: TFIBStringField;
    fdsVendaENTREGAR: TFIBStringField;
    fdsVendaTOT_PARCELA: TFIBSmallIntField;
    fdsVendaVLR_RETORNADO: TFIBBCDField;
    fdsVendaDT_PAGAMENTO: TFIBDateField;
    fdsVendaORDEM: TFIBStringField;
    fdsVendaFILIAL: TFIBStringField;
    fdsVendaCLIENTE: TFIBStringField;
    fdsVendaCONTATO: TFIBStringField;
    fdsVendaRAZAOSOCIAL: TFIBStringField;
    fdsVendaEMAIL: TFIBStringField;
    fdsVendaENDERECO: TFIBStringField;
    fdsVendaCEP: TFIBStringField;
    fdsVendaBAIRRO: TFIBStringField;
    fdsVendaREFERENCIA: TFIBStringField;
    fdsVendaTELEFONE: TFIBStringField;
    fdsVendaKM_TOTAL: TFIBSmallIntField;
    fdsVendaCIDADE: TFIBStringField;
    fdsVendaDOCUMENTO: TFIBStringField;
    fdsVendaROTA: TFIBStringField;
    fdsVendaFORMA_PAG: TFIBStringField;
    fdsVendaVENDEDOR: TFIBStringField;
    fdsVendaVISUALIZADO: TFIBStringField;
    RzDBEdit11: TRzDBEdit;
    RzLabel14: TRzLabel;
    fdsVendaCELULAR: TFIBStringField;
    btnPesqCliente: TRzBitBtn;
    impTotalPorCliente: TAction;
    RelatrioTotalporCliente1: TMenuItem;
    edtClienteCodigo: TRzEdit;
    RelatrioDetalhadodeVenda1: TMenuItem;
    impVendaDetalhado: TAction;
    fdsVendaCFOP: TpFIBDataSet;
    frxVendaCFOP: TfrxDBDataset;
    fdsVendaMoeda: TpFIBDataSet;
    fdsVendaFormaPagF: TpFIBDataSet;
    frxVendaFormaPagF: TfrxDBDataset;
    fdsVendaFormaPagFFORMA_PAG: TFIBBCDField;
    fdsVendaFormaPagFNOME_FORMA_PAG: TFIBStringField;
    fdsVendaFormaPagFQTN: TFIBBCDField;
    fdsVendaFormaPagFVLR_TOTAL: TFIBBCDField;
    fdsVendaFormaPagFPREFIXO: TFIBStringField;
    RzGroupBox1: TRzGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    fdsItensVendidosID_PROD_ITEM: TFIBBCDField;
    fdsItensVendidosNOME: TFIBStringField;
    fdsItensVendidosQTN_TOTAL: TFIBBCDField;
    fdsItensVendidosVLR_TOT: TFIBFloatField;
    fdsVendaItemQTN_RETORNO: TFIBBCDField;
    fdsVendaDATA_EMISSAO: TFIBDateField;
    fdsItensVendidosPRECO_CUSTO_TOT: TFIBFloatField;
    BalloonHint1: TBalloonHint;
    impDetalhadoTodos: TAction;
    RelatriodetalhadodetodasasVendas1: TMenuItem;
    fdsTodasVendasFormaPag: TpFIBDataSet;
    frxTodasVendasFormaPag: TfrxDBDataset;
    fdsTodasVendasFormaPagFORMA_PAG: TFIBBCDField;
    fdsTodasVendasFormaPagNOME_FORMA_PAG: TFIBStringField;
    fdsTodasVendasFormaPagQTN: TFIBBCDField;
    fdsTodasVendasFormaPagVLR_TOTAL: TFIBBCDField;
    fdsTodasVendasFormaPagPREFIXO: TFIBStringField;
    fdsVendaCFOPPREFIXO: TFIBStringField;
    fdsVendaCFOPCFOP: TFIBStringField;
    fdsVendaCFOPCST_CSOSN: TFIBStringField;
    fdsVendaCFOPQTN: TFIBBCDField;
    fdsVendaCFOPVLR_TOTAL: TFIBBCDField;
    pnlInfoAdicional: TRzGroupBox;
    edtInfo: TRzEdit;
    fdsNFe: TpFIBDataSet;
    fdsNFCe: TpFIBDataSet;
    impVendaDelhadoAnalitico: TAction;
    fdsNFCeID: TFIBBCDField;
    fdsNFCeVLR_TOTAL: TFIBBCDField;
    fdsNFCeVLR_VENDA: TFIBBCDField;
    fdsNFCeCODIGO_NFCE: TFIBIntegerField;
    fdsNFCeSERIE: TFIBIntegerField;
    fdsNFCeTIPO: TFIBStringField;
    fdsNFCeCHAVE_CONSULTA: TFIBStringField;
    fdsNFCeNUMERO_PROTOCOLO: TFIBStringField;
    fdsNFCeDATA_EMISSAO: TFIBDateField;
    fdsNFCeQTN_ITENS: TFIBIntegerField;
    fdsNFeID: TFIBBCDField;
    fdsNFeDT_EMISSAO: TFIBDateField;
    fdsNFeSTATUS: TFIBStringField;
    fdsNFeVLR_TOTAL: TFIBBCDField;
    fdsNFeCODIGO_NFE: TFIBIntegerField;
    fdsNFeSERIE: TFIBIntegerField;
    fdsNFeCHAVE_CONSULTA: TFIBStringField;
    fdsNFeNUMERO_PROTOCOLO: TFIBStringField;
    fdsNFeQTN_ITENS: TFIBIntegerField;
    frXNFe: TfrxDBDataset;
    frxNFCe: TfrxDBDataset;
    fdsNFCeSTATUS: TFIBStringField;
    fdsNFeSTATUS_NF: TFIBStringField;
    rgbStatus: TRzRadioGroup;
    gbxGrupo: TRzGroupBox;
    cbxGrupo: TRzComboBox;
    fdsGrupoCOMISSAO_DN: TFIBBCDField;
    fdsGrupoNOME: TFIBStringField;
    fdsItensVendidosCUSTO_MEDIO_TOT: TFIBFloatField;
    fdsVendaOBS: TFIBStringField;
    procedure fdsVendaAfterScroll(DataSet: TDataSet);
    procedure tbsItensShow(Sender: TObject);
    procedure gdrVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkFilialClick(Sender: TObject);
    procedure chkNumVendaClick(Sender: TObject);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkTipoDocClick(Sender: TObject);
    procedure edtPesqClienteEnter(Sender: TObject);
    procedure edtPesqNumVendaEnter(Sender: TObject);
    procedure edtPesqNumVendaExit(Sender: TObject);
    procedure edtPesqClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure impSinteticoExecute(Sender: TObject);
    procedure impAnaliticoExecute(Sender: TObject);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure chkVendedorClick(Sender: TObject);
    procedure impTotFormaPagExecute(Sender: TObject);
    procedure impItensVendidosExecute(Sender: TObject);
    procedure fdsItensVendidosAfterScroll(DataSet: TDataSet);
    procedure impComissaoVendedoresExecute(Sender: TObject);
    procedure fdsVendedorAfterOpen(DataSet: TDataSet);
    procedure fdsVendedorAfterScroll(DataSet: TDataSet);
    procedure fdsVendedorCalcFields(DataSet: TDataSet);
    procedure btnTodosClick(Sender: TObject);
    procedure btnAlterarEntregaClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure gdrItensCellClick(Column: TColumn);
    procedure impAtualExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure gdrVendasDblClick(Sender: TObject);
    procedure impTotalPorClienteExecute(Sender: TObject);
    procedure edtClienteCodigoEnter(Sender: TObject);
    procedure edtClienteCodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure impVendaDetalhadoExecute(Sender: TObject);
    procedure impDetalhadoTodosExecute(Sender: TObject);
    procedure pnlInfoAdicionalCheckBoxClick(Sender: TObject);
    procedure gbxGrupoCheckBoxClick(Sender: TObject);
  private
    function RetornaComissaoVendedor(idVendedor: Integer): Double;
    procedure IniciaContador;
    procedure RetornaItensVenda;
    procedure Pesquisar(status: string);
    procedure SomaTotalVendas(posicao: string);
    procedure RetornaIDCliente(cliente: string);
    procedure RetornaIDVendedor(vendedor: string);
    procedure TerminaContador;
    procedure EditaInsere;
    procedure GravaCancela;
    procedure ImprimirVendaAtual;
    procedure ImprimirAnalitico;
    procedure ImprimirSintetico;
    procedure ImprimirTotalPorCliente;
    procedure RetornaClienteId(idCliente: string);
  public

  end;

var
  frmVendas: TfrmVendas;
  statusVenda: string[2];
  imprimir: Boolean;
  vlrTotal, pesoTotal, pesoOld: Double;
  totalItens: Integer;
  tempo: Integer;
  TrheadContador: TContador;

implementation

uses untData, uUtils, untPrincipal, untPesqCliente;

{$R *.dfm}

procedure TfrmVendas.btnAlterarEntregaClick(Sender: TObject);
begin
  EditaInsere;
  pesoTotal := fdsVendaPESO.AsFloat;
  pesoOld := fdsVendaPESO.AsFloat;
  fdsVenda.Edit;
end;

procedure TfrmVendas.btnFirstClick(Sender: TObject);
begin
  fdsVenda.Prior;
end;

procedure TfrmVendas.btnGravarClick(Sender: TObject);
begin
  if fdsVendaItem.Locate('ENTREGAR', 'S', []) then
  begin
    fdsVendaSTATUS.AsString := 'CF';
    fdsVendaENTREGAR.AsString := 'S';

    with qrySql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE ROMANEIO SET PESO_TOTAL = PESO_TOTAL + (' +
        FloatToStr(pesoTotal - pesoOld) + ') WHERE IDFILIAL = ' +
        fdsVendaIDFILIAL.AsString +
        ' AND ID = (SELECT IDROMANEIO FROM ROMANEIO_ITEM RI WHERE RI.IDVENDA = '
        + fdsVendaID.AsString + ' AND RI.IDFILIAL = ' +
        fdsVendaIDFILIAL.AsString + ' AND PREFIXO = ' + QuotedStr('VE') + ')');
      Prepare;
      ExecQuery;
    end;
  end
  else
  begin
    fdsVendaSTATUS.AsString := 'FC';
    fdsVendaENTREGAR.AsString := 'N';
  end;

  fdsVenda.Post;
  DM.Conexao.CommitRetaining;
  GravaCancela;
end;

procedure TfrmVendas.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmVendas.Left + 250, frmVendas.top + 104);
end;

procedure TfrmVendas.btnLastClick(Sender: TObject);
begin
  fdsVenda.Last;
end;

procedure TfrmVendas.btnNextClick(Sender: TObject);
begin
  fdsVenda.Next;
end;

procedure TfrmVendas.btnPesqClienteClick(Sender: TObject);
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
    frmPesqCliente.Free;
  End;
end;

procedure TfrmVendas.btnPesquisarClick(Sender: TObject);
begin
  // IniciaContador;

  if rgbStatus.ItemIndex = 0 then
    Pesquisar('CF')
  else if rgbStatus.ItemIndex = 1 then
    Pesquisar('FC')
  else
    Pesquisar('TD');

  // TerminaContador;

end;

procedure TfrmVendas.btnPriorClick(Sender: TObject);
begin
  fdsVenda.First;
end;

procedure TfrmVendas.btnTodosClick(Sender: TObject);
begin
  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Open;
    First;
  end;

  rgbStatus.ItemIndex := 2;
  chkFilial.Checked := False;
  chkNumVenda.Checked := False;
  chkVendedor.Checked := False;
  chkPeriodo.Checked := False;
  chkCliente.Checked := False;
  chkTipoDoc.Checked := False;

end;

procedure TfrmVendas.chkClienteClick(Sender: TObject);
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

procedure TfrmVendas.chkFilialClick(Sender: TObject);
begin
  pnlFilial.Enabled := chkFilial.Checked;

  if not(chkFilial.Checked) then
    cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmVendas.chkNumVendaClick(Sender: TObject);
begin
  pnlNumVenda.Enabled := chkNumVenda.Checked;
  if not(chkNumVenda.Checked) then
  begin
    edtPesqNumVenda.Text := 'TODOS';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.chkPeriodoClick(Sender: TObject);
begin
  //pnlPeriodo.Enabled := chkPeriodo.Checked;
  dtpInicio.Enabled := chkPeriodo.Checked;
  dtpFim.Enabled := chkPeriodo.Checked;
//  if chkDtEmissao.Checked = True then
//  begin
//   chkDtEmissao.Checked:=false;
//  end;

end;

procedure TfrmVendas.chkTipoDocClick(Sender: TObject);
begin
  pnlTipoDoc.Enabled := chkTipoDoc.Checked;
  if not(chkTipoDoc.Checked) then
    cbxTipoDoc.ItemIndex := 0;
end;

procedure TfrmVendas.chkVendedorClick(Sender: TObject);
begin
  pnlVendedor.Enabled := chkVendedor.Checked;
  if not(chkVendedor.Checked) then
  begin
    cbxVendedor.ItemIndex := 0;
  end;
end;

procedure TfrmVendas.EditaInsere;
var
  i: Smallint;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex := 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    end;

    if (Components[i] is TRzBitBtn) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := False
      else
        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;
  mmoMensagem.SetFocus;
end;

procedure TfrmVendas.edtClienteCodigoEnter(Sender: TObject);
begin
  if Trim(edtClienteCodigo.Text) = 'C�DIGO' then
  begin
    edtClienteCodigo.Text := EmptyStr;
    edtClienteCodigo.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtClienteCodigoExit(Sender: TObject);
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

procedure TfrmVendas.edtPesqClienteEnter(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = 'TODOS' then
  begin
    edtPesqCliente.Text := EmptyStr;
    edtPesqCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtPesqClienteExit(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = EmptyStr then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.edtPesqNumVendaEnter(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = 'TODOS' then
  begin
    edtPesqNumVenda.Text := EmptyStr;
    edtPesqNumVenda.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtPesqNumVendaExit(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = EmptyStr then
  begin
    edtPesqNumVenda.Text := 'TODOS';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.fdsFilialAfterOpen(DataSet: TDataSet);
begin
  cbxFilial.AddItemValue('TODOS', '0');
  fdsFilial.First;
  while not(fdsFilial.EOF) do
  begin
    cbxFilial.AddItemValue(fdsFilialNOME.AsString, fdsFilialID.AsString);
    fdsFilial.Next;
  end;
  cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmVendas.fdsItensVendidosAfterScroll(DataSet: TDataSet);
begin
  totalItens := totalItens + fdsItensVendidosQTN_TOTAL.AsInteger;
end;

procedure TfrmVendas.fdsVendaAfterScroll(DataSet: TDataSet);
begin
  statusVenda := fdsVendaSTATUS.AsString;
  if (pgcControl.ActivePageIndex = 1) or (imprimir = True) then
  begin
    RetornaItensVenda;
  end;

end;

procedure TfrmVendas.fdsVendedorAfterOpen(DataSet: TDataSet);
begin
  fdsVendedor.First;
  cbxVendedor.ClearItems;
  cbxVendedor.AddItemValue('TODOS', '0');
  while not(fdsVendedor.EOF) do
  begin
    cbxVendedor.AddItemValue(fdsVendedorNOME.AsString, fdsVendedorID.AsString);
    fdsVendedor.Next;
  end;
end;

procedure TfrmVendas.fdsVendedorAfterScroll(DataSet: TDataSet);
begin
  if (imprimir = True) then
  begin
    cbxVendedor.Value := fdsVendedorID.AsString;
    Pesquisar('TD');
  end;
end;

procedure TfrmVendas.fdsVendedorCalcFields(DataSet: TDataSet);
begin
  if imprimir then
  begin
    with qrySomaTotal do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(V.VLR_TOTAL) AS TOTAL FROM VENDA V WHERE V.IDVENDEDOR = :IDVENDEDOR');
      ParamByName('IDVENDEDOR').AsInteger := fdsVendedorID.AsInteger;
      SQL.Add(' AND V.STATUS <> ' + QuotedStr('AB') + ' AND V.STATUS <> ' +
        QuotedStr('CA'));
      Prepare;
      ExecQuery;
    end;
    fdsVendedorVLR_TOTAL_VENDA.AsFloat := qrySomaTotal.FieldByName
      ('TOTAL').AsFloat;

    fdsVendedorVLR_COMISSAO.AsFloat := RetornaComissaoVendedor
      (fdsVendedorID.AsInteger);
  end;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmVendas := nil;
end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  imprimir := False;
  tempo := 0;
  pgcControl.ActivePageIndex := 0;
  IniciaContador;
  fdsFilial.Open;
  fdsVendedor.Open;
  chkPeriodo.Checked := True;
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;
  cbxVendedor.ItemIndex := 0;
  Pesquisar('TD');
  TerminaContador;
end;

procedure TfrmVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  cbxGrupo.clear;
  cbxGrupo.AddItemValue('TODOS', '999');
  fdsGrupo.Open;
  fdsGrupo.First;
  while not(fdsGrupo.Eof) do
  begin
    cbxGrupo.AddItemValue(fdsGrupoNOME.AsString, fdsGrupoID.AsString);
    fdsGrupo.Next;
  end;
  cbxGrupo.ItemIndex := 0;

  fdsGrupo.First;
  if frmPrincipal.locIdVenda > 0 then
  begin
    fdsVenda.Locate('ID', IntToStr(frmPrincipal.locIdVenda), []);
    frmPrincipal.locIdVenda := 0;
  end;
end;

procedure TfrmVendas.gdrVendasDblClick(Sender: TObject);
begin
  if fdsVenda.RecordCount > 0 then
    tbsItens.Show;
end;

procedure TfrmVendas.gdrVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  status: string;
  Bitmap: TBitmap;
begin

  // gdrVendasConfirmadas.Canvas.Font.Color:= clYellow; // vitor coloque aqui a cor desejada para a fonte

  if fdsVendaVISUALIZADO.AsString = 'N' then
  begin

    status := fdsVendaSTATUS.AsString;
    if status = 'CF' then
    begin
      Bitmap := imgFlagYellow.Picture.Bitmap
    end
    else if status = 'FC' then
      Bitmap := imgFlagGreen.Picture.Bitmap
    else if status = 'DV' then
      Bitmap := imgFlagRed.Picture.Bitmap;

    gdrVendas.Canvas.Font.Style := [fsBold];
    gdrVendas.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if not odd(fdsVenda.RecNo) then
  begin
    gdrVendas.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrVendas.Canvas.Brush.Color :=clHighlight;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.Index = 1) and not(fdsVenda.IsEmpty) then
    begin
      status := fdsVendaSTATUS.AsString;
      if status = 'CF' then
      begin
        Bitmap := imgFlagYellow2.Picture.Bitmap
      end
      else if status = 'FC' then
        Bitmap := imgFlagGreen2.Picture.Bitmap
      else if status = 'DV' then
        Bitmap := imgFlagRed2.Picture.Bitmap;

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
    if Column.Index = 1 then
    begin
      status := fdsVendaSTATUS.AsString;
      if status = 'CF' then
      begin
        Bitmap := imgFlagYellow.Picture.Bitmap
      end
      else if status = 'FC' then
        Bitmap := imgFlagGreen.Picture.Bitmap
      else if status = 'DV' then
        Bitmap := imgFlagRed.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.top - Bitmap.Height) div 2 + Rect.top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end;
end;

procedure TfrmVendas.GravaCancela;
var
  i: Smallint;
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
      if (Components[i] is TRzBitBtn) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := True
        else
          TRzBitBtn(Components[i]).Enabled := False;
      end;
    end;
  end;
end;

procedure TfrmVendas.impAnaliticoExecute(Sender: TObject);
begin
  ImprimirAnalitico;
end;

procedure TfrmVendas.impAtualExecute(Sender: TObject);
begin
  ImprimirVendaAtual;
end;

procedure TfrmVendas.impComissaoVendedoresExecute(Sender: TObject);
begin
  IniciaContador;

  chkVendedor.Checked := True;
  totalItens := 0;

  fdsVendedor.Close;
  fdsVendedor.Conditions.Clear;
  fdsVendedor.Open;
  fdsVendedor.First;

  imprimir := True;
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelComissaoVendedor.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.totItens := IntToStr(totalItens);
  DM.frxReport1.ShowReport(True);
  imprimir := False;
  totalItens := 0;
  fdsVendedor.Close;
  chkVendedor.Checked := False;
  cbxVendedor.Value := '0';
  Pesquisar('TD');

  TerminaContador;
end;

procedure TfrmVendas.impDetalhadoTodosExecute(Sender: TObject);
begin
  with fdsTodasVendasFormaPag do
  begin
      Close;
      ParamByName('DTPINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
      ParamByName('DTPFIM').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);
      Prepare;
    fdsTodasVendasFormaPag.Open;
  end;

  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelVendasDetalhadoTodos.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmVendas.impItensVendidosExecute(Sender: TObject);
var
vlrTotItem,totItens,vlrLucroTotal,vlrLucroTotalMedio,margemLucro,margemLucroMed,lucratividade,lucratividadeMedia:Double;
begin
  totalItens := 0;
  vlrTotItem:=0 ;
  totItens:=0  ;
  vlrLucroTotal:=0;
  lucratividade:=0;
  fdsItensVendidos.Close;
//  if chkPeriodo.Checked then
//  begin
//    fdsItensVendidos.Conditions.AddCondition('PERIODO','VI.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)), True);
//    fdsItensVendidos.Conditions.Apply;
//    fdsItensVendidos.Prepare;
//  end;
//
//  if chkCliente.Checked then
//  begin
//    fdsItensVendidos.Conditions.AddCondition('CLIENTE','V.IDCLIENTE = ' + fdsClienteID.AsString, True);
//    fdsItensVendidos.Conditions.Apply;
//    fdsItensVendidos.Prepare;
//
//  end;
//  fdsItensVendidos.Open;
//  with qrySql do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add('SELECT SUM(VI.QTN) AS QTN_TOTAL,SUM(VI.VLR_TOTAL)AS VLR_TOT_ITENS FROM VENDA_ITEM VI, VENDA V WHERE ');
//    SQL.Add('VI.IDVENDA = V.ID ');
//    SQL.Add('AND (V.tipo = '+QuotedStr('CF')+' or (V.tipo = '+ QuotedStr('NT') +'))AND V.status = '+QuotedStr('FC'));
//
//    if chkPeriodo.Checked then
//    begin
//      SQL.Add('AND VI.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
//    end;
//
//    if chkCliente.Checked then
//    begin
//      SQL.Add('AND V.IDCLIENTE = ' + fdsClienteID.AsString);
//    end;
//
//    Prepare;
//   // SQL.SaveToFile('D:\Delphi.Text');
//    ExecQuery;
//  end;
 if chkCliente.Checked then
  begin
    fdsItensVendidos.Close;
    fdsItensVendidos.Conditions.Clear;
    fdsItensVendidos.Conditions.AddCondition('CLIENTE','ID_CLIENTE = ' + fdsClienteID.AsString, True);
    fdsItensVendidos.Conditions.Apply;
    fdsItensVendidos.Prepare;
    fdsItensVendidos.Open;
  end;
  with fdsItensVendidos do
  begin
    Close;
    ParamByName('DTINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
    ParamByName('DTFIM').AsString := FormatDateTime('MM/DD/YYYY', dtpFim.Date);
    Prepare;
    fdsItensVendidos.Open;
  end;

  fdsItensVendidos.First;

  while not (fdsItensVendidos.Eof) do
  begin
   vlrTotItem:= vlrTotItem +fdsItensVendidosVLR_TOT.AsFloat;
   totItens:= RoundTo(totItens + fdsItensVendidosQTN_TOTAL.AsFloat,-3);
   vlrLucroTotal:= vlrLucroTotal +fdsItensVendidosPRECO_CUSTO_TOT.AsFloat;
   vlrLucroTotalMedio:= vlrLucroTotalMedio+fdsItensVendidosCUSTO_MEDIO_TOT.AsFloat;
   fdsItensVendidos.Next;
  end;
  lucratividade:= RoundTo(vlrTotItem - vlrLucroTotal,-2);
  margemLucro := RoundTo((lucratividade/vlrTotItem)*100,-2);

  lucratividadeMedia:= RoundTo(vlrTotItem - vlrLucroTotalMedio,-2);
  margemLucroMed := RoundTo((lucratividadeMedia/vlrTotItem)*100,-2);

  imprimir := True;
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.filial := cbxFilial.Text;
  DM.vlrTotal := FloatToStr(vlrTotItem);
  DM.totItens :=FloatToStr(totItens);
  DM.vlrLucroTotal:= FloatToStr(lucratividade);
  DM.vlrLucroTotalMedio:=FloatToStr(lucratividadeMedia);
  DM.margemLucro:= FloatToStr(margemLucro);
  Dm.margemLucroMed:= FloatToStr(margemLucroMed);
  if not(Trim(edtPesqCliente.Text) = EmptyStr) then
    DM.cliente := edtPesqCliente.Text
  else
    DM.cliente := EmptyStr;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelItensVendidos.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimir := False;
  totalItens := 0;
  fdsItensVendidos.Close;
  fdsItensVendidos.Conditions.Clear;
  fdsItensVendidos.Conditions.Apply;
  fdsItensVendidos.Prepare;
  fdsItensVendidos.Open;
end;

procedure TfrmVendas.ImprimirAnalitico;
var
total,vlrDev:Double;
utils:TUtils;
begin
  imprimir := True;
  if cbxTipoDoc.Text = 'Todos' then
  begin
    with fdsVenda do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('PERIODO', 'V.DT_INC BETWEEN ' +QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
      Conditions.AddCondition('STATUS', 'V.STATUS <> ' + QuotedStr('AB') +' AND V.STATUS <> ' + QuotedStr('CA') + ' AND V.STATUS <> ' +QuotedStr('DV'), True);

       if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
      begin
        RetornaIDCliente(edtPesqCliente.Text);
        if fdsCliente.RecordCount > 0 then
          Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = ' +
            fdsClienteID.AsString, True)
        else
          Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = 0', True);
      end;

      if (chkFilial.Checked) and (cbxFilial.Value <> '0') then
      Conditions.AddCondition('FILIAL', ' V.IDFILIAL = ' + QuotedStr(cbxFilial.Value), True);

      Conditions.Apply;
      Prepare;
      Open;
    end;
  end;

  total:=0;
  vlrDev:=0;
  fdsVenda.Close;
  fdsVenda.Conditions.addCondition('STATUS', 'V.STATUS = ' + QuotedStr('FC') + ' AND V.STATUS <> ' + QuotedStr('CA') + ' AND V.STATUS <> ' +QuotedStr('DV'), True);
  fdsVenda.Conditions.Apply;
  fdsVenda.Prepare;
  fdsVenda.Open;
  fdsVenda.First;
  while not(fdsVenda.Eof) do
  begin
    total:=total+fdsVendaVLR_TOTAL.AsFloat;
    vlrDev := vlrDev+ fdsVendaVLR_RETORNADO.AsFloat;
    fdsVenda.Next;
  end;
   //DM.vlrTotal := utils.AdicionaMascaraDinheiro(FloatToStr(total));
  DM.vlrTotal := FloatToStr(total-vlrDev);
  DM.subTotal := FloatToStr(total);
  DM.vlrTotDev := FloatToStr(vlrDev);
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.totVendas := fdsVenda.RecordCount;
   //lblVlrTotal.Caption;
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxRelVendasAnalitico.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimir := False;
end;

procedure TfrmVendas.ImprimirTotalPorCliente;
begin
  //
end;

procedure TfrmVendas.ImprimirSintetico;
VAR
  status, tipo: STRING;
  total,vlrDev: Double;
  utils:TUtils;
begin
  if cbxTipoDoc.Text = 'Todos' then
  begin
  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('PERIODO', 'V.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    Conditions.AddCondition('STATUS', 'V.STATUS = ' + QuotedStr('FC') + ' AND V.STATUS <> ' + QuotedStr('CA') + ' AND V.STATUS <> ' +QuotedStr('DV'), True);

     if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      RetornaIDCliente(edtPesqCliente.Text);
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = ' +
          fdsClienteID.AsString, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = 0', True);
    end;
    if (chkFilial.Checked) and (cbxFilial.Value <> '0') then
    Conditions.AddCondition('FILIAL', ' V.IDFILIAL = ' + QuotedStr(cbxFilial.Value), True);

    Conditions.Apply;
    Prepare;
    Open;
  end;
  end;

  total:=0;
  vlrDev:=0;
  fdsVenda.Close;
  fdsVenda.Conditions.addCondition('STATUS', 'V.STATUS = ' + QuotedStr('FC') + ' AND V.STATUS <> ' + QuotedStr('CA') + ' AND V.STATUS <> ' +QuotedStr('DV'), True);
  fdsVenda.Conditions.Apply;
  fdsVenda.Prepare;
  fdsVenda.Open;
  fdsVenda.First;
  while not(fdsVenda.Eof) do
  begin
    total:=total+fdsVendaVLR_TOTAL.AsFloat;
    vlrDev := vlrDev + fdsVendaVLR_RETORNADO.AsFloat;
    fdsVenda.Next;
  end;
 //  DM.vlrTotal := utils.AdicionaMascaraDinheiro(FloatToStr(total-vlrDev));
  DM.vlrTotal := FloatToStr(total-vlrDev);
  DM.subTotal := FloatToStr(total);
  DM.vlrTotDev := FloatToStr(vlrDev);
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.totVendas := fdsVenda.RecordCount;
  //DM.vlrTotal := lblVlrTotal.Caption;
  DM.filial := cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelVendasSintetico.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimir := False;
end;

procedure TfrmVendas.ImprimirVendaAtual;
var
  idTemp: string;
  idFilialTemp: string;
  statusTemp: string[2];
begin
  // imprimirAnalitic := False;
  imprimir := True;
  idTemp := fdsVendaID.AsString;
  idFilialTemp := fdsVendaIDFILIAL.AsString;
  statusTemp := fdsVendaSTATUS.AsString;

  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDVENDA', 'V.ID = ' + idTemp, True);
    Conditions.AddCondition('IDFILIAL', 'V.IDFILIAL = ' + idFilialTemp, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  RetornaItensVenda;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxVenda.fr3');
   DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  imprimir := False;

  with fdsVenda do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;

  tbsVenda.Show;

  if rgbStatus.ItemIndex = 0 then
    Pesquisar('CF');

  if rgbStatus.ItemIndex = 1 then
    Pesquisar('FC');

  if rgbStatus.ItemIndex = 2 then
    Pesquisar('TD');

  fdsVenda.Locate('ID', idTemp, []);

end;

procedure TfrmVendas.impSinteticoExecute(Sender: TObject);
begin
  ImprimirSintetico;
end;

procedure TfrmVendas.impTotalPorClienteExecute(Sender: TObject);
begin
  ImprimirTotalPorCliente;
end;

procedure TfrmVendas.impTotFormaPagExecute(Sender: TObject);
begin
  with fdsTotalMoedas do
  begin
    Close;
    ParamByName('DTINICIO').AsString := FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date);
    ParamByName('DTFIM').AsString := FormatDateTime('MM/DD/YYYY', dtpFim.Date);
    Prepare;
    Open;
  end;

  imprimir := True;
  DM.vlrTotal := FloatToStr(fdsTotalMoedasDN.AsFloat + fdsTotalMoedasCH.AsFloat
    + fdsTotalMoedasCT.AsFloat + fdsTotalMoedasNT.AsFloat +
    fdsTotalMoedasFN.AsFloat);
  DM.vlrTotal := FormatCurr('R$ #,##0.00', StrToFloat(DM.vlrTotal));
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  // DM.totVendas := fdsVenda.RecordCount;
  // DM.vlrTotal :=  lblVlrTotal.Caption;
  DM.filial := DM.fdsConfigFILIAL.AsString; // cbxFilial.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelVendasTotMoedas.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
  imprimir := False;

end;

procedure TfrmVendas.impVendaDetalhadoExecute(Sender: TObject);
var
 o,c:Integer;
 vlrOffTot,vlrConfirmadaTot:double;
begin

//  fdsVendaCFOP.Close;
//  fdsVendaCFOP.Conditions.Clear;
  if (chkPeriodo.Checked) then
  begin
    with fdsVendaCFOP do
    begin
      Close;
      ParamByName('DTPINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
      ParamByName('DTPFIM').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);
      Prepare;
      fdsVendaCFOP.Open;
    end;
    with fdsVendaFormaPagF do
    begin
      Close;
      ParamByName('DTPINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
      ParamByName('DTPFIM').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);
      Prepare;
      fdsVendaFormaPagF.Open;
    end;
    with fdsNFE do
    begin
      Close;
      ParamByName('DTPINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
      ParamByName('DTPFIM').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);
      ParamByName('IDFILIAL').AsInteger:= Dm.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      open;
    end;
    with fdsNFCE do
    begin
      Close;
      ParamByName('DTPINICIO').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
      ParamByName('DTPFIM').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);
      ParamByName('IDFILIAL').AsInteger:= Dm.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      open;
    end;

    DM.dtInicio := dtpInicio.Date;
    DM.dtFim := dtpFim.Date;
    DM.filial := cbxFilial.Text;
    DM.frxReport1.Clear;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelPorPeriodoCFOP.fr3');
    DM.frxReport1.PrintOptions.ShowDialog := True;
    DM.frxReport1.PrepareReport(True);
    DM.frxReport1.ShowReport(True);

    if fdsNFe.RecordCount>0 then
    begin
      o:=0;c:=0;
      vlrConfirmadaTot:=0;vlrOffTot:=0;
      fdsNFe.first;
      while not fdsNFe.Eof do
      begin
        if fdsNFeSTATUS.AsString ='NF' then
        begin
          c:=c+1;
          vlrConfirmadaTot:=vlrConfirmadaTot+fdsNFeVLR_TOTAL.AsFloat
        end;
        if fdsNFeSTATUS.AsString ='OF' then
        begin
          o:=o+1;
          vlrOffTot:=vlrOffTot+fdsNFeVLR_TOTAL.AsFloat
        end;
        fdsNFe.Next;
      end;
      DM.qtnOff:=IntToStr(o);
      DM.qtnConfirmada:=IntToStr(c);
      DM.vlrConfirmadaTot:=FloatToStr(vlrConfirmadaTot);
      DM.vlrOffTot:= FloatToStr(vlrOffTot);
      DM.frxReport1.Clear;
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelPorPeriodoNFE.fr3');
      DM.frxReport1.PrintOptions.ShowDialog := True;
      DM.frxReport1.PrepareReport(True);
      DM.frxReport1.ShowReport(True);
    end;

    if fdsNFCE.RecordCount>0 then
    begin
      o:=0;c:=0;
      vlrConfirmadaTot:=0;vlrOffTot:=0;
      fdsNFCe.First;
      while not fdsNFCe.Eof do
      begin
        if fdsNFCeTIPO.AsString ='CF' then
        begin
          c:=c+1;
          vlrConfirmadaTot:=vlrConfirmadaTot+fdsNFCeVLR_TOTAL.AsFloat
        end;
        if fdsNFCeTIPO.AsString ='OF' then
        begin
          o:=o+1;
          vlrOffTot:=vlrOffTot+fdsNFCeVLR_TOTAL.AsFloat
        end;
        fdsNFCe.Next;
      end;
      DM.qtnOff:=IntToStr(o);
      DM.qtnConfirmada:=IntToStr(c);
      DM.vlrConfirmadaTot:=FloatToStr(vlrConfirmadaTot);
      DM.vlrOffTot:= FloatToStr(vlrOffTot);
      DM.frxReport1.Clear;
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxRelPorPeriodoNFCE.fr3');
      DM.frxReport1.PrintOptions.ShowDialog := True;
      DM.frxReport1.PrepareReport(True);
      DM.frxReport1.ShowReport(True);
    end;
   // DM.frxReport1.Print;
  end;
end;

procedure TfrmVendas.IniciaContador;
begin
  tempo := 0;
  pnlProgresso.Visible := True;
  Application.ProcessMessages;
  TrheadContador := TContador.Create(True);
  // TrheadContador.FreeOnTerminate := True;
  TrheadContador.Resume;
end;

procedure TfrmVendas.gbxGrupoCheckBoxClick(Sender: TObject);
begin
 if gbxGrupo.Checked then
 begin
  cbxGrupo.Enabled:=True;
 end
 else
 begin
   cbxGrupo.Enabled:=false
 end;
end;

procedure TfrmVendas.gdrItensCellClick(Column: TColumn);
begin
  if gdrItens.SelectedField.FieldName = 'ENTRE' then
  begin
    fdsVendaItem.Edit;

    if fdsVendaItemENTREGAR.AsString = 'S' then
    begin
      fdsVendaItemENTREGAR.AsString := 'N';
      pesoTotal := pesoTotal -
        (fdsVendaItemPESO.AsFloat * fdsVendaItemQTN.AsFloat);
    end
    else
    begin
      fdsVendaItemENTREGAR.AsString := 'S';
      pesoTotal := pesoTotal +
        (fdsVendaItemPESO.AsFloat * fdsVendaItemQTN.AsFloat);
    end;

    fdsVendaPESO.AsFloat := pesoTotal;
    fdsVendaItem.Post;

  end;
end;

procedure TfrmVendas.gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if not odd(fdsVendaItem.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrItens.Canvas.Brush.Color :=clHighlight;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if Column.FieldName = 'ENTRE' then
  begin
    gdrItens.Canvas.FillRect(Rect);
    Check := 0;
    if fdsVendaItemENTREGAR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrItens.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TfrmVendas.Pesquisar(status: string);
var
  numVenda: Double;
  utils: TUtils;
begin
  fdsVendaItem.Close;
  tbsVenda.Show;
  with fdsVenda do
  begin
    Close;
    Conditions.Clear;

    if (chkNumVenda.Checked) then
    begin
      numVenda := utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numVenda > 0 then
        Conditions.AddCondition('ID',
          ' V.ID = ' + QuotedStr(FloatToStr(numVenda)), True);
    end;

    if (chkPeriodo.Checked) then
      Conditions.AddCondition('DTVENDA', 'V.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if (chkFilial.Checked) and (cbxFilial.Value <> '0') then
      Conditions.AddCondition('FILIAL', ' V.IDFILIAL = ' +
        QuotedStr(cbxFilial.Value), True);

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS') then
    begin
      RetornaIDCliente(edtPesqCliente.Text);
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = ' +
          fdsClienteID.AsString, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = 0', True);
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
    begin
      // RetornaIDVendedor(Trim(edtPesqVendedor.Text));
      // if fdsVenddedor.RecordCount > 0 then
      Conditions.AddCondition('IDVENDEDOR', 'V.IDVENDEDOR = ' +
        cbxVendedor.Value, True);
      // lblVlrComissao.Visible := True;
      // lblTituloComis.Visible := True;
      // lblVlrComissao.Caption := FormatCurr('R$ #,##0.00', RetornaComissaoVendedor(StrToInt(cbxVendedor.Value)));

      // else
      // Conditions.AddCondition('IDVENDEDOR', 'V.IDVENDEDOR = 0', True);
    end
    else
    begin
      lblVlrComissao.Visible := False;
      lblTituloComis.Visible := False;
    end;

    if pnlInfoAdicional.Checked then
    begin
      conditions.AddCondition('OBS','V.OBS LIKE('+QuotedStr('%'+edtInfo.Text+'%')+')',true);
    end;

    if gbxGrupo.Checked AND (cbxGrupo.Value <> '999') then
    begin
     Conditions.AddCondition('GRUPO','V.ID= (select MAX(IDVENDA) from VENDA_ITEM WHERE IDVENDA=V.ID AND IDGRUPO='+cbxGrupo.Value+' GROUP BY IDVENDA)',true);
    end;

    if chkTipoDoc.Checked then
      Conditions.AddCondition('MOEDA', ' FP.MOEDA = ' +
        QuotedStr(cbxTipoDoc.Value), True);

    if status <> 'TD' then
      Conditions.AddCondition('STATUS', 'V.STATUS = ' + QuotedStr(status), True)
    else
      Conditions.AddCondition('STATUS', 'V.STATUS <> ' + QuotedStr('AB') +
        ' AND V.STATUS <> ' + QuotedStr('CA'), True);

    Conditions.Apply;
    OrderClause := 'ORDEM, V.DT_INC DESC, V.ID DESC';
    Prepare;
    Open;
    // First;
  end;

  SomaTotalVendas(status);
  lblTotal.Caption := IntToStr(fdsVenda.RecordCount);
end;

procedure TfrmVendas.RetornaClienteId(idCliente: string);
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

function TfrmVendas.RetornaComissaoVendedor(idVendedor: Integer): Double;
var
  vltTotComissao: Double;
begin

  vltTotComissao := 0;

  fdsGrupo.Open;
  fdsGrupo.First;
  // Aten��o est� desatualizada em rela��o ao do form de comiss�o

  while not(fdsGrupo.EOF) do
  begin
    with qrySomaTotal do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(((VI.QTN - VI.QTN_RETORNO) * VI.VLR_UNITARIO) * (G.COMISSAO / 100)) AS VLR_COMISSAO');
      SQL.Add(' FROM VENDA_ITEM VI, VENDA V, PRODUTO_ITEM PI, PRODUTO P, GRUPO G');
      SQL.Add(' WHERE VI.IDPROD_ITEM = PI.ID');
      SQL.Add(' AND VI.IDVENDA = V.ID');
      SQL.Add(' AND VI.IDFILIAL = V.IDFILIAL');
      SQL.Add(' AND P.IDGRUPO = G.ID');
      SQL.Add(' AND P.ID = PI.IDPRODUTO');
      SQL.Add(' AND G.ID = :IDGRUPO');
      SQL.Add(' AND V.IDFILIAL = :IDFILIAL');
      SQL.Add(' AND V.IDVENDEDOR = :IDVENDEDOR');
      SQL.Add(' AND V.STATUS <> ' + QuotedStr('AB') + ' AND V.STATUS <> ' +
        QuotedStr('CA') + ' AND V.STATUS <> ' + QuotedStr('DV'));
      SQL.Add(' AND V.ID NOT IN (SELECT IDVENDA FROM CNT_RECEBER WHERE POSICAO = '
        + QuotedStr('AB') + ')');

      if (chkPeriodo.Checked) then
        SQL.Add(' AND V.DT_INC BETWEEN ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)));

      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      ParamByName('IDVENDEDOR').AsInteger := idVendedor;
      ParamByName('IDGRUPO').AsInteger := fdsGrupoID.AsInteger;
      Prepare;
      ExecQuery;
      vltTotComissao := vltTotComissao + qrySomaTotal.FieldByName
        ('VLR_COMISSAO').AsFloat;
    end;
    fdsGrupo.Next;
  end;
  Result := vltTotComissao;
end;

procedure TfrmVendas.RetornaIDCliente(cliente: string);
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

procedure TfrmVendas.RetornaIDVendedor(vendedor: string);
begin
  with fdsVendedor do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('NOMEVENDEDOR', 'NOME like UPPER(' +
      QuotedStr(vendedor + '%') + ')', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmVendas.RetornaItensVenda;
begin
  if fdsVenda.RecordCount > 0 then
  begin
    with fdsVendaItem do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('VENDA',
        ' IDVENDA = ' + fdsVendaID.AsString, True);
      Conditions.AddCondition('FILIAL', ' IDFILIAL = ' +
        fdsVendaIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
    end;
  end;
end;

procedure TfrmVendas.rgbStatusChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 0 then
    Pesquisar('CF');

  if NewIndex = 1 then
    Pesquisar('FC');

  if NewIndex = 2 then
    Pesquisar('TD');
end;

procedure TfrmVendas.RzBitBtn1Click(Sender: TObject);
begin
  fdsVenda.Cancel;
  DM.Conexao.CommitRetaining;
  GravaCancela;
end;

procedure TfrmVendas.pnlInfoAdicionalCheckBoxClick(Sender: TObject);
begin
 if pnlInfoAdicional.Checked then
 begin
  edtInfo.Enabled:=true;
 end
 else
 begin
   edtInfo.Clear;
   edtInfo.Enabled:=false
 end;
end;

procedure TfrmVendas.SomaTotalVendas(posicao: string);
var
  tempTotal: string;
  utils: TUtils;
  numVenda: Double;
begin
  tempTotal := '';
  with qrySomaTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(V.VLR_TOTAL) AS TOTAL FROM VENDA V, FORMA_PAGAMENTO FP WHERE FP.ID = V.IDFORMA_PAG');

    if posicao <> 'TD' then
    begin
      SQL.Add(' AND V.STATUS = :STATUS');
      ParamByName('STATUS').AsString := posicao;
    end
    else
    begin
      SQL.Add(' AND V.STATUS <> ' + QuotedStr('AB') + ' AND V.STATUS <> ' +
        QuotedStr('CA') + ' AND V.STATUS <> ' + QuotedStr('DV'));
    end;

    if (chkNumVenda.Checked) then
    begin
      numVenda := utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numVenda > 0 then
      begin
        SQL.Add(' AND V.ID = :ID');
        ParamByName('ID').AsString := FloatToStr(numVenda);
      end;
    end;

    if (chkPeriodo.Checked) then
    begin
      SQL.Add(' AND V.DT_INC BETWEEN :DT_INC1 AND :DT_INC2');
      ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
      ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
    end;

    if chkFilial.Checked then
    begin
      SQL.Add(' AND V.IDFILIAL = :IDFILIAL');
      ParamByName('IDFILIAL').AsString := cbxFilial.Value;
    end;

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'Todos') then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
      begin
        SQL.Add(' AND V.IDCLIENTE = :IDCLIENTE');
        ParamByName('IDCLIENTE').AsInteger := fdsClienteID.AsInteger;
      end
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0) then
    begin
      // RetornaIDVendedor(Trim(edtPesqVendedor.Text));
      SQL.Add(' AND V.IDVENDEDOR = :IDVENDEDOR');
      ParamByName('IDVENDEDOR').AsInteger := StrToInt(cbxVendedor.Value);
    end;

    if chkTipoDoc.Checked then
    begin
      SQL.Add(' AND FP.MOEDA = :MOEDA');
      ParamByName('MOEDA').AsString := cbxTipoDoc.Value;
    end;

    Prepare;
    ExecQuery;
    tempTotal := FieldByName('TOTAL').AsString;
  end;
  if tempTotal = '' then
    tempTotal := '0';

  lblVlrTotal.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmVendas.tbsItensShow(Sender: TObject);
begin
  if not(fdsVenda.State in [dsEdit]) and (fdsVenda.RecordCount > 0) then
  begin
    if fdsVendaVISUALIZADO.AsString = 'N' then
    begin
      fdsVenda.Edit;
      fdsVendaVISUALIZADO.AsString := 'S';
      fdsVenda.Post;
      DM.Conexao.CommitRetaining;

      if frmPrincipal.pnlVendasDia.Visible = True then
      begin
        frmPrincipal.fdsVenda.Close;
        frmPrincipal.fdsVenda.Open;
      end;
    end;
  end;

  RetornaItensVenda;
end;

procedure TfrmVendas.TerminaContador;
begin
  TrheadContador.Terminate();
  pnlProgresso.Visible := False;
  pgbProgresso.Percent := 0;
  tempo := 0;
end;

end.