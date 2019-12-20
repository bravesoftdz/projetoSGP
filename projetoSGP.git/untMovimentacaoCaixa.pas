unit untMovimentacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, frxClass, frxDBSet, FIBQuery, pFIBQuery, ImgList,
  cxGraphics, DB, FIBDataSet, pFIBDataSet, StdCtrls, DBCtrls, RzDBEdit, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzRadGrp, JvExStdCtrls, JvButton,
  JvCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Mask, RzEdit, JvCheckBox, RzCmboBx, RzPanel, RzSplit,
  RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage,
  RzBckgnd,
  PngImageList, Vcl.Imaging.pngimage, Datasnap.DBClient, pFIBClientDataSet,
  System.Actions, RzLstBox, RzChkLst, frxExportPDF;

type
  TfrmMovCaixa = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblTot: TRzLabel;
    lblTotal: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    RzSplitter1: TRzSplitter;
    RzPanel4: TRzPanel;
    pnlFilial: TRzGroupBox;
    chkFilial: TJvCheckBox;
    pnlNumVenda: TRzGroupBox;
    edtPesqNumOp: TRzEdit;
    chkNumVenda: TJvCheckBox;
    pnlPeriodo: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    chkPeriodo: TJvCheckBox;
    pnlTipoMovimento: TRzGroupBox;
    cbxTipoMovimento: TRzComboBox;
    chkMoeda: TJvCheckBox;
    btnPesquisar: TJvImgBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    fdsMovCaixa: TpFIBDataSet;
    dsMovCaixa: TDataSource;
    fdsMovCaixaID: TFIBBCDField;
    fdsMovCaixaIDCAIXA: TFIBBCDField;
    fdsMovCaixaIDFILIAL: TFIBBCDField;
    fdsMovCaixaDT_INC: TFIBDateField;
    fdsMovCaixaHR_INC: TFIBTimeField;
    fdsMovCaixaIDUSUARIO: TFIBBCDField;
    fdsMovCaixaCONTROLE: TFIBBCDField;
    fdsMovCaixaTIPO: TFIBStringField;
    fdsMovCaixaMOEDA: TFIBStringField;
    fdsMovCaixaVLR_ENTRADA: TFIBBCDField;
    fdsMovCaixaVLR_VENDA: TFIBBCDField;
    fdsMovCaixaVLR_TOTAL: TFIBBCDField;
    fdsMovCaixaVLR_DESCONTO: TFIBBCDField;
    fdsMovCaixaTROCO: TFIBBCDField;
    fdsMovCaixaENVIADO_WEB: TFIBStringField;
    fdsMovCaixaIDMOVIMENTO: TFIBBCDField;
    fdsMovCaixaHISTORICO: TFIBStringField;
    fdsMovCaixaFILIAL: TFIBStringField;
    fdsMovCaixaNUM_CAIXA: TFIBIntegerField;
    fdsFilial: TpFIBDataSet;
    fdsFilialID: TFIBBCDField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    dsFilial: TDataSource;
    cbxFilial: TRzComboBox;
    pnlMoeda: TRzGroupBox;
    cbxMoeda: TRzComboBox;
    chkTipoMovimento: TJvCheckBox;
    PngImageList1: TPngImageList;
    pnlControle: TRzGroupBox;
    edtPesqControle: TRzEdit;
    chkControle: TJvCheckBox;
    tbsResumoCaixa: TRzTabSheet;
    RzBackground2: TRzBackground;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    edtDinheiroAbertura: TRzEdit;
    edtDinheiroVenda: TRzEdit;
    edtCartaoVenda: TRzEdit;
    edtChequeVenda: TRzEdit;
    edtTotalEntrada: TRzEdit;
    edtChequeSaida: TRzEdit;
    edtDinheiroSaida: TRzEdit;
    edtTotalSaida: TRzEdit;
    edtTotalFechamento: TRzEdit;
    edtSuprimento: TRzEdit;
    edtNtVenda: TRzEdit;
    edtMovData: TRzEdit;
    RzLabel18: TRzLabel;
    edtMovControle: TRzEdit;
    RzLabel19: TRzLabel;
    qrySomatorio: TpFIBQuery;
    btnInprimir: TRzBitBtn;
    cdsFechamento: TpFIBClientDataSet;
    cdsFechamentovlrAbertura: TFloatField;
    cdsFechamentoData: TDateField;
    cdsFechamentoControle: TIntegerField;
    cdsFechamentovlrDinheiroEN: TFloatField;
    cdsFechamentovlrSuprimento: TFloatField;
    cdsFechamentovlrNota: TFloatField;
    cdsFechamentovlrCartao: TFloatField;
    cdsFechamentovlrChequeEN: TFloatField;
    cdsFechamentovlrTotalEN: TFloatField;
    cdsFechamentovlrDinheiroSA: TFloatField;
    cdsFechamentovlrChequeSA: TFloatField;
    cdsFechamentovlrTotalSA: TFloatField;
    cdsFechamentovlrTotalFE: TFloatField;
    frxFechamento: TfrxDBDataset;
    ppmImprimir: TPopupMenu;
    ImprimirPedidoAtual1: TMenuItem;
    ActionList1: TActionList;
    impMovCaixaSint: TAction;
    impMovCaixaAna: TAction;
    frxMovCaixa: TfrxDBDataset;
    MovimentodeCaixaAnaltico1: TMenuItem;
    fdsMovCaixaVLR_CHEQUE: TFIBBCDField;
    fdsMovCaixaVLR_CARTAO: TFIBBCDField;
    fdsMovCaixaVLR_NOTA: TFIBBCDField;
    fdsMovCaixaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovCaixaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovCaixaVLR_TICKET: TFIBBCDField;
    lblStatus: TRzLabel;
    edtFinanceira: TRzEdit;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    edtTicket: TRzEdit;
    edtValeDesconto: TRzEdit;
    RzLabel22: TRzLabel;
    cdsFechamentovlrFinanceira: TFloatField;
    cdsFechamentovlrTicket: TFloatField;
    cdsFechamentovlrValeDesconto: TFloatField;
    cdsFechamentodtAbertura: TDateField;
    cdsFechamentodtFechamento: TDateField;
    impMovCaixaSangSupr: TAction;
    RelatriodeSangriaseSuprementos1: TMenuItem;
    pnlCaixa: TRzGroupBox;
    edtPesqCaixa: TRzEdit;
    chkCaixa: TJvCheckBox;
    RzLabel23: TRzLabel;
    edtCaixa: TRzEdit;
    impMovoCaixaPeriodo: TAction;
    QryCommand: TpFIBQuery;
    impMovoCaixaPeriodo1: TMenuItem;
    fdsMovCaixaVLR_CREDITO: TFIBBCDField;
    fdsMovCaixaDETALHE: TFIBStringField;
    fdsPeriodo: TpFIBDataSet;
    fdsPeriodoDT_INC: TFIBDateField;
    fdsPeriodoNUM_CAIXA: TFIBIntegerField;
    fdsPeriodoFILIAL: TFIBStringField;
    MovimentodeCaixaDetalhado1: TMenuItem;
    frxPEriodo: TfrxDBDataset;
    cdsFechamentoDetalhado: TpFIBClientDataSet;
    cdsFechamentoDetalhadovlrDinheiroEN: TFloatField;
    cdsFechamentoDetalhadovlrSuprimento: TFloatField;
    cdsFechamentoDetalhadovlrNota: TFloatField;
    cdsFechamentoDetalhadovlrCartao: TFloatField;
    cdsFechamentoDetalhadovlrChequeEN: TFloatField;
    cdsFechamentoDetalhadovlrTotalEN: TFloatField;
    cdsFechamentoDetalhadovlrDinheiroSA: TFloatField;
    frxFechamentoDetalhado: TfrxDBDataset;
    fdsPeriodoCONTROLE: TFIBBCDField;
    gdrMovimentos: TJvDBGrid;
    btnSair: TRzBitBtn;
    qryPesquisa: TpFIBQuery;
    fdsMovCaixaNOME: TFIBStringField;
    tbsListaMovimento: TRzTabSheet;
    gdrListaMov: TJvDBGrid;
    fdsMovCaixaFech: TpFIBDataSet;
    dsMovCaixaFech: TDataSource;
    fdsMovCaixaFechID: TFIBBCDField;
    fdsMovCaixaFechIDCAIXA: TFIBBCDField;
    fdsMovCaixaFechIDFILIAL: TFIBBCDField;
    fdsMovCaixaFechDT_INC: TFIBDateField;
    fdsMovCaixaFechHR_INC: TFIBTimeField;
    fdsMovCaixaFechIDUSUARIO: TFIBBCDField;
    fdsMovCaixaFechCONTROLE: TFIBBCDField;
    fdsMovCaixaFechTIPO: TFIBStringField;
    fdsMovCaixaFechMOEDA: TFIBStringField;
    fdsMovCaixaFechVLR_ENTRADA: TFIBBCDField;
    fdsMovCaixaFechVLR_CHEQUE: TFIBBCDField;
    fdsMovCaixaFechVLR_CARTAO: TFIBBCDField;
    fdsMovCaixaFechVLR_NOTA: TFIBBCDField;
    fdsMovCaixaFechVLR_FINANCEIRA: TFIBBCDField;
    fdsMovCaixaFechVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovCaixaFechVLR_TICKET: TFIBBCDField;
    fdsMovCaixaFechVLR_VENDA: TFIBBCDField;
    fdsMovCaixaFechVLR_TOTAL: TFIBBCDField;
    fdsMovCaixaFechVLR_DESCONTO: TFIBBCDField;
    fdsMovCaixaFechTROCO: TFIBBCDField;
    fdsMovCaixaFechENVIADO_WEB: TFIBStringField;
    fdsMovCaixaFechIDMOVIMENTO: TFIBBCDField;
    fdsMovCaixaFechHISTORICO: TFIBStringField;
    fdsMovCaixaFechVLR_CREDITO: TFIBBCDField;
    fdsMovCaixaFechNUM_CAIXA: TFIBIntegerField;
    fdsMovCaixaFechFILIAL: TFIBStringField;
    fdsMovCaixaFechNOME: TFIBStringField;
    cdsFechamentoVlrDinheiroDV: TFloatField;
    cdsFechamentovlrRecebimento: TFloatField;
    RzLabel13: TRzLabel;
    edtTotalReceb: TRzEdit;
    RzLabel24: TRzLabel;
    procedure gdrMovimentosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure chkFilialClick(Sender: TObject);
    procedure chkNumVendaClick(Sender: TObject);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkTipoMovimentoClick(Sender: TObject);
    procedure chkMoedaClick(Sender: TObject);
    procedure edtPesqNumOpEnter(Sender: TObject);
    procedure edtPesqNumOpExit(Sender: TObject);
    procedure Pesquisar;
    procedure PesqMovCaixa;
    procedure CalculaFechamento;
    procedure CalculaTotalDNTipo;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure chkControleClick(Sender: TObject);
    procedure edtPesqControleEnter(Sender: TObject);
    procedure edtPesqControleExit(Sender: TObject);
    procedure fdsMovCaixaAfterScroll(DataSet: TDataSet);
    procedure btnInprimirClick(Sender: TObject);
    procedure impMovCaixaSintExecute(Sender: TObject);
    procedure impMovCaixaAnaExecute(Sender: TObject);
    procedure impMovCaixaSangSuprExecute(Sender: TObject);
    procedure tbsResumoCaixaShow(Sender: TObject);
    procedure chkCaixaClick(Sender: TObject);
    procedure edtPesqCaixaEnter(Sender: TObject);
    procedure edtPesqCaixaExit(Sender: TObject);
    procedure impMovoCaixaPeriodoExecute(Sender: TObject);
    procedure fdsPeriodoAfterScroll(DataSet: TDataSet);
    procedure MovimentodeCaixaDetalhado1Click(Sender: TObject);
    procedure CalculaTotaisPeriodo();
    procedure gdrMovimentosDblClick(Sender: TObject);
    procedure gdrListaMovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrListaMovDblClick(Sender: TObject);
    procedure gdrMovimentosCellClick(Column: TColumn);
    procedure gdrMovimentosMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure tbsListaMovimentoShow(Sender: TObject);
    procedure tbsTabelaShow(Sender: TObject);
  private
    { Private declarations }
  public
  var
    controle, numCaixa: Integer;
    imprimir: Boolean;
  end;

var
  frmMovCaixa: TfrmMovCaixa;

implementation

uses untData, uUtils;

{$R *.dfm}

procedure TfrmMovCaixa.btnFirstClick(Sender: TObject);
begin
  fdsMovCaixa.Prior;
end;

procedure TfrmMovCaixa.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmMovCaixa.Left + 240, frmMovCaixa.top + 110);
end;

procedure TfrmMovCaixa.btnLastClick(Sender: TObject);
begin
  fdsMovCaixa.Last;
end;

procedure TfrmMovCaixa.btnNextClick(Sender: TObject);
begin
  fdsMovCaixa.Next;
end;

procedure TfrmMovCaixa.btnPesquisarClick(Sender: TObject);
begin
if tbsListaMovimento.Showing = True then
  Pesquisar;

 if tbsTabela.Showing = True then
  PesqMovCaixa;

end;

procedure TfrmMovCaixa.btnPriorClick(Sender: TObject);
begin
  fdsMovCaixa.First;
end;

procedure TfrmMovCaixa.btnSairClick(Sender: TObject);
begin
  frmMovCaixa.Close;
end;

procedure TfrmMovCaixa.btnTodosClick(Sender: TObject);
begin
  fdsMovCaixa.Close;
  fdsMovCaixa.Conditions.Clear;
  fdsMovCaixa.Conditions.Apply;
  chkFilial.Checked := false;
  chkNumVenda.Checked := false;
  chkMoeda.Checked := false;
  chkTipoMovimento.Checked := false;
  chkPeriodo.Checked := false;
  chkControle.Checked := false;
  fdsMovCaixa.Open;

  With fdsMovCaixaFech do
  begin
  Close;
  conditions.Clear;
  Conditions.AddCondition('MOVIMENTO','MC.TIPO = '+ QuotedStr('FE'),True);
  Conditions.Apply;
  Prepare;
  Open;
  First;
  end;
  chkFilial.Checked := false;
  chkNumVenda.Checked := false;
  chkMoeda.Checked := false;
  chkTipoMovimento.Checked := false;
  chkPeriodo.Checked := false;
  chkControle.Checked := false;
  chkFilial.Enabled := True;
  chkCaixa.Enabled := True;
  tbsTabela.Show;

end;

procedure TfrmMovCaixa.CalculaFechamento;
var
  tempDNAbertura, tempDNVenda, tempCTVenda, tempCHVenda, tempNTVenda: Double;
  tempSangriaDN, tempSuprimentoDN, TempSangriaCH, tempTotalEN,tempTotalRecb,
    tempTotalSA: Double;
  tempFNVenda, tempTKVenda, tempVDvenda, tempDevolucao: Double;
  dtAbertura, dtFechamento: TDate;
  status: string[15];
  utils: TUtils;
begin
  With qrySomatorio do
  begin

    // Retorna Valor de Abertura
    Close;
    SQL.Clear;
    SQL.Add('SELECT VLR_ENTRADA, DT_INC FROM MOVIMENTO_CAIXA WHERE CONTROLE = '+ IntToStr(controle) + ' AND TIPO = ' + QuotedStr('AB'));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    tempDNAbertura := FieldByName('VLR_ENTRADA').AsFloat;
    dtAbertura := FieldByName('DT_INC').AsDateTime;
    // Fim

    // Retorna Valor Suprimento em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' +
      QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SU') + ' AND CONTROLE = ' +
      IntToStr(controle));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempSuprimentoDN := FieldByName('TOT').AsFloat
    else
      tempSuprimentoDN := 0.00;

    // Fim

    // Retorna Valor Sangria em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SA') + ' AND CONTROLE = ' + IntToStr(controle));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempSangriaDN := FieldByName('TOT').AsFloat
    else
      tempSangriaDN := 0.00;

    // Fim

    // Retorna Valor de Devolu��o em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' +
      QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('DV') + ' AND CONTROLE = ' +
      IntToStr(controle));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempDevolucao := FieldByName('TOT').AsFloat
    else
      tempDevolucao := 0.00;

    // Fim

    // Retorna Valor Sangria em Cheque
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' +
      QuotedStr('CH') + ' AND TIPO = ' + QuotedStr('SA') + ' AND CONTROLE = ' +
      IntToStr(controle));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      TempSangriaCH := FieldByName('TOT').AsFloat
    else
      TempSangriaCH := 0.00;

    // Fim

    // Verifica se o caixa est� fechado
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MOVIMENTO_CAIXA WHERE CONTROLE = ' +
      IntToStr(controle) + ' AND TIPO = ' + QuotedStr('FE'));
    SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;

    if qrySomatorio.RecordCount > 0 then
    begin
      status := 'Fechado';
      // tempDNVenda := FieldByName('VLR_ENTRADA').AsFloat - tempDNAbertura + tempSangriaDN - tempSuprimentoDN;
      // tempNTVenda := FieldByName('VLR_NOTA').AsFloat;
      // tempCTVenda := FieldByName('VLR_CARTAO').AsFloat;
      // tempCHVenda := FieldByName('VLR_CHEQUE').AsFloat;
      // tempFNVenda := FieldByName('VLR_FINANCEIRA').AsFloat;
      // tempTKVenda := FieldByName('VLR_TICKET').AsFloat;
      // tempVDvenda := FieldByName('VLR_VALEDESCONTO').AsFloat;
      dtFechamento := FieldByName('DT_INC').AsDateTime;
    end
    else
    begin
      status := 'Aberto';
    end;
    // Retorna Venda(Entrada) em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_ENTRADA  - TROCO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '+ QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC') + ' OR TIPO = ' +QuotedStr('OS'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +IntToStr(numCaixa) + ' AND IDFILIAL = ' +IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempDNVenda := FieldByName('TOT').AsFloat
    else
      tempDNVenda := 0.00;

    // Retorna recebimento
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_ENTRADA  - TROCO) AS TOT FROM MOVIMENTO_CAIXA WHERE TIPO = ' + QuotedStr('RC'));
    SQL.Add(' AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +IntToStr(numCaixa) + ' AND IDFILIAL = ' +IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempTotalRecb := FieldByName('TOT').AsFloat
    else
      tempTotalRecb := 0.00;

    // Retorna Valor Venda em Cart�o
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_CARTAO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempCTVenda := FieldByName('TOT').AsFloat
    else
      tempCTVenda := 0.00;

    // Retorna Valor Venda em Cheque
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_CHEQUE) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempCHVenda := FieldByName('TOT').AsFloat
    else
      tempCHVenda := 0.00;

    // Retorna Valor Venda em Nota Promiss�ria
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_NOTA) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = ' +
      QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempNTVenda := FieldByName('TOT').AsFloat
    else
      tempNTVenda := 0.00;

    // Retorna Valor Venda em Financeira
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_FINANCEIRA) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempFNVenda := FieldByName('TOT').AsFloat
    else
      tempFNVenda := 0.00;

    // Retorna Valor Venda em Ticket
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_TICKET) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempTKVenda := FieldByName('TOT').AsFloat
    else
      tempTKVenda := 0.00;

    // Retorna Valor Venda em Vale Desconto
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VALEDESCONTO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND CONTROLE = ' + IntToStr(controle) + ' AND IDCAIXA = ' +
      IntToStr(numCaixa) + ' AND IDFILIAL = ' +
      IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempVDvenda := FieldByName('TOT').AsFloat
    else
      tempVDvenda := 0.00;
  end;

  tempTotalEN := tempDNVenda + tempCTVenda + tempCHVenda + tempNTVenda + tempSuprimentoDN + tempFNVenda + tempTKVenda + tempVDvenda;

  tempTotalSA := tempSangriaDN + TempSangriaCH + tempDevolucao;

  lblStatus.Caption := status;
  edtTotalFechamento.Text := FloatToStr(tempDNAbertura + tempDNVenda + tempSuprimentoDN - tempSangriaDN - tempDevolucao);
  edtTotalFechamento.Text := utils.AdicionaMascaraDinheiro(edtTotalFechamento.Text);
  edtTotalSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTotalSA));
  edtTotalEntrada.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTotalEN));
  edtTotalReceb.Text :=  utils.AdicionaMascaraDinheiro(FloatToStr(tempTotalRecb));
  edtNtVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempNTVenda));
  edtChequeVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempCHVenda));
  edtCartaoVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempCTVenda));
  edtDinheiroVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempDNVenda));
  edtChequeSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(TempSangriaCH));
  edtDinheiroSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempSangriaDN + tempDevolucao));
  edtSuprimento.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempSuprimentoDN));
  edtDinheiroAbertura.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempDNAbertura));
  edtFinanceira.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempFNVenda));
  edtTicket.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTKVenda));
  edtValeDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempVDvenda));

  cdsFechamento.EmptyDataSet;
  cdsFechamento.Append;
  cdsFechamentovlrAbertura.AsFloat := tempDNAbertura;
  cdsFechamentoData.AsDateTime := fdsMovCaixaDT_INC.AsDateTime;
  cdsFechamentoControle.AsInteger := controle;
  cdsFechamentovlrDinheiroEN.AsFloat := tempDNVenda;
  cdsFechamentovlrSuprimento.AsFloat := tempSuprimentoDN;
  cdsFechamentovlrNota.AsFloat := tempNTVenda;
  cdsFechamentovlrCartao.AsFloat := tempCTVenda;
  cdsFechamentovlrChequeEN.AsFloat := tempCHVenda;
  cdsFechamentovlrFinanceira.AsFloat := tempFNVenda;
  cdsFechamentovlrTicket.AsFloat := tempTKVenda;
  cdsFechamentovlrValeDesconto.AsFloat := tempVDvenda;
  cdsFechamentovlrTotalEN.AsFloat := tempTotalEN;
  cdsFechamentovlrRecebimento.AsFloat := tempTotalRecb;
  cdsFechamentovlrDinheiroSA.AsFloat := tempSangriaDN;
  cdsFechamentovlrChequeSA.AsFloat := TempSangriaCH;
  cdsFechamentovlrTotalSA.AsFloat := tempTotalSA;
  cdsFechamentovlrTotalFE.AsFloat := tempDNAbertura + tempDNVenda + tempSuprimentoDN - tempSangriaDN - tempDevolucao;
  cdsFechamentoVlrDinheiroDV.AsFloat := tempDevolucao;
  cdsFechamentodtAbertura.AsDateTime := dtAbertura;
  cdsFechamentodtFechamento.AsDateTime := dtFechamento;

  cdsFechamento.Post;

end;

procedure TfrmMovCaixa.CalculaTotaisPeriodo;
var
  tempDNAbertura, tempDNVenda, tempCTVenda, tempCHVenda, tempNTVenda: Double;
  tempSangriaDN, tempSuprimentoDN, TempSangriaCH, tempTotalEN,
    tempTotalSA: Double;
  tempFNVenda, tempTKVenda, tempVDvenda, tempDevolucao: Double;
  dtAbertura, dtFechamento: TDate;
  status: string[15];
  utils: TUtils;
begin
  With qrySomatorio do
  begin

    // Retorna Valor de Abertura
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_ENTRADA) AS VLR_ENTRADA FROM MOVIMENTO_CAIXA WHERE TIPO = ' + QuotedStr('AB'));
    SQL.Add(' AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    tempDNAbertura := FieldByName('VLR_ENTRADA').AsFloat;
    // Fim

    // Retorna Valor Suprimento em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SU'));
    SQL.Add(' AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempSuprimentoDN := FieldByName('TOT').AsFloat
    else
      tempSuprimentoDN := 0.00;

    // Fim

    // Retorna Valor Sangria em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SA'));
    SQL.Add(' AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempSangriaDN := FieldByName('TOT').AsFloat
    else
      tempSangriaDN := 0.00;

    // Fim

    // Retorna Valor de Devolu��o em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' +
      QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('DV'));
    SQL.Add(' AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempDevolucao := FieldByName('TOT').AsFloat
    else
      tempDevolucao := 0.00;

    // Fim

    // Retorna Valor Sangria em Cheque
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = ' +QuotedStr('CH') + ' AND TIPO = ' + QuotedStr('SA'));
    SQL.Add(' AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      TempSangriaCH := FieldByName('TOT').AsFloat
    else
      TempSangriaCH := 0.00;

    // Retorna Venda(Entrada) em Dinheiro
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_ENTRADA  - TROCO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '+ QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempDNVenda := FieldByName('TOT').AsFloat
    else
      tempDNVenda := 0.00;

    // Retorna Valor Venda em Cart�o
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_CARTAO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '+ QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempCTVenda := FieldByName('TOT').AsFloat
    else
      tempCTVenda := 0.00;

    // Retorna Valor Venda em Cheque
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_CHEQUE) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '+ QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempCHVenda := FieldByName('TOT').AsFloat
    else
      tempCHVenda := 0.00;

    // Retorna Valor Venda em Nota Promiss�ria
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_NOTA) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = ' +QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempNTVenda := FieldByName('TOT').AsFloat
    else
      tempNTVenda := 0.00;

    // Retorna Valor Venda em Financeira
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_FINANCEIRA) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempFNVenda := FieldByName('TOT').AsFloat
    else
      tempFNVenda := 0.00;

    // Retorna Valor Venda em Ticket
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_TICKET) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempTKVenda := FieldByName('TOT').AsFloat
    else
      tempTKVenda := 0.00;

    // Retorna Valor Venda em Vale Desconto
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VLR_VALEDESCONTO) AS TOT FROM MOVIMENTO_CAIXA WHERE (TIPO = '
      + QuotedStr('VE') + ' OR TIPO = ' + QuotedStr('RC'));
    SQL.Add(') AND DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
      dtpFim.Date)));
    Prepare;
    ExecQuery;
    if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
      tempVDvenda := FieldByName('TOT').AsFloat
    else
      tempVDvenda := 0.00;

  end;

  tempTotalEN := tempDNVenda + tempCTVenda + tempCHVenda + tempNTVenda +tempSuprimentoDN + tempFNVenda + tempTKVenda + tempVDvenda;

  tempTotalSA := tempSangriaDN + TempSangriaCH + tempDevolucao;

  lblStatus.Caption := status;
  edtTotalFechamento.Text := FloatToStr(tempDNAbertura + tempDNVenda +tempSuprimentoDN - tempSangriaDN);
  edtTotalFechamento.Text := utils.AdicionaMascaraDinheiro(edtTotalFechamento.Text);
  edtTotalSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTotalSA));
  edtTotalEntrada.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTotalEN));
  edtNtVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempNTVenda));
  edtChequeVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempCHVenda));
  edtCartaoVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempCTVenda));
  edtDinheiroVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempDNVenda));
  edtChequeSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(TempSangriaCH));
  edtDinheiroSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempSangriaDN));
  edtSuprimento.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempSuprimentoDN));
  edtDinheiroAbertura.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempDNAbertura));
  edtFinanceira.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempFNVenda));
  edtTicket.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempTKVenda));
  edtValeDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(tempVDvenda));

  cdsFechamento.EmptyDataSet;
  cdsFechamento.Append;
  cdsFechamentovlrAbertura.AsFloat := tempDNAbertura;
  cdsFechamentoData.AsDateTime := fdsMovCaixaDT_INC.AsDateTime;
  cdsFechamentoControle.AsInteger := controle;
  cdsFechamentovlrDinheiroEN.AsFloat := tempDNVenda;
  cdsFechamentovlrSuprimento.AsFloat := tempSuprimentoDN;
  cdsFechamentovlrNota.AsFloat := tempNTVenda;
  cdsFechamentovlrCartao.AsFloat := tempCTVenda;
  cdsFechamentovlrChequeEN.AsFloat := tempCHVenda;
  cdsFechamentovlrFinanceira.AsFloat := tempFNVenda;
  cdsFechamentovlrTicket.AsFloat := tempTKVenda;
  cdsFechamentovlrValeDesconto.AsFloat := tempVDvenda;
  cdsFechamentovlrTotalEN.AsFloat := tempTotalEN;
  cdsFechamentovlrDinheiroSA.AsFloat := tempSangriaDN;
  cdsFechamentovlrChequeSA.AsFloat := TempSangriaCH;
  cdsFechamentovlrTotalSA.AsFloat := tempTotalSA;
  cdsFechamentovlrTotalFE.AsFloat := tempDNAbertura + tempDNVenda +tempSuprimentoDN - tempSangriaDN;
  cdsFechamentodtAbertura.AsDateTime := dtAbertura;
  cdsFechamentodtFechamento.AsDateTime := dtFechamento;
  cdsFechamento.Post;

end;

procedure TfrmMovCaixa.CalculaTotalDNTipo;
var
  totalDN: Double;
  utils: TUtils;
begin
  totalDN := 0;
  with fdsMovCaixa do
  begin
    First;
    while not(EOF) do
    begin
      totalDN := totalDN + fdsMovCaixaVLR_ENTRADA.AsFloat;
      Next;
    end;
  end;

//  lblTot.Visible := True;
//  lblTotal.Visible := True;
//  lblTotal.Caption := utils.AdicionaMascaraDinheiro(FloatToStr(totalDN));
end;

procedure TfrmMovCaixa.chkCaixaClick(Sender: TObject);
begin
  pnlCaixa.Enabled := chkCaixa.Checked;
  if not(chkCaixa.Checked) then
  begin
    edtPesqCaixa.Text := 'Todos';
    edtPesqCaixa.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.chkControleClick(Sender: TObject);
begin
  pnlControle.Enabled := chkControle.Checked;
  if not(chkControle.Checked) then
  begin
    edtPesqControle.Text := 'Todos';
    edtPesqControle.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.chkFilialClick(Sender: TObject);
begin
  pnlFilial.Enabled := chkFilial.Checked;

  if not(chkFilial.Checked) then
    cbxFilial.Value := '0';
end;

procedure TfrmMovCaixa.chkMoedaClick(Sender: TObject);
begin
  pnlMoeda.Enabled := chkMoeda.Checked;
  if not(chkMoeda.Checked) then
    cbxMoeda.ItemIndex := 0;
end;

procedure TfrmMovCaixa.chkNumVendaClick(Sender: TObject);
begin
  pnlNumVenda.Enabled := chkNumVenda.Checked;
  if not(chkNumVenda.Checked) then
  begin
    edtPesqNumOp.Text := 'Todos';
    edtPesqNumOp.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.chkPeriodoClick(Sender: TObject);
begin
  pnlPeriodo.Enabled := chkPeriodo.Checked;
end;

procedure TfrmMovCaixa.chkTipoMovimentoClick(Sender: TObject);
begin
  pnlTipoMovimento.Enabled := chkTipoMovimento.Checked;
  if not(chkTipoMovimento.Checked) then
    cbxTipoMovimento.ItemIndex := 0;
end;

procedure TfrmMovCaixa.edtPesqCaixaEnter(Sender: TObject);
begin
  if Trim(edtPesqCaixa.Text) = 'TODOS' then
  begin
    edtPesqCaixa.Text := EmptyStr;
    edtPesqCaixa.Font.Color := clBlack;
  end;
end;

procedure TfrmMovCaixa.edtPesqCaixaExit(Sender: TObject);
begin
  if Trim(edtPesqCaixa.Text) = EmptyStr then
  begin
    edtPesqCaixa.Text := 'Todos';
    edtPesqCaixa.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.edtPesqControleEnter(Sender: TObject);
begin
  if Trim(edtPesqControle.Text) = 'TODOS' then
  begin
    edtPesqControle.Text := EmptyStr;
    edtPesqControle.Font.Color := clBlack;
  end;
end;

procedure TfrmMovCaixa.edtPesqControleExit(Sender: TObject);
begin
  if Trim(edtPesqControle.Text) = EmptyStr then
  begin
    edtPesqControle.Text := 'Todos';
    edtPesqControle.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.edtPesqNumOpEnter(Sender: TObject);
begin
  if Trim(edtPesqNumOp.Text) = 'TODOS' then
  begin
    edtPesqNumOp.Text := EmptyStr;
    edtPesqNumOp.Font.Color := clBlack;
  end;
end;

procedure TfrmMovCaixa.edtPesqNumOpExit(Sender: TObject);
begin
  if Trim(edtPesqNumOp.Text) = EmptyStr then
  begin
    edtPesqNumOp.Text := 'Todos';
    edtPesqNumOp.Font.Color := clGray;
  end;
end;

procedure TfrmMovCaixa.fdsFilialAfterOpen(DataSet: TDataSet);
begin
  cbxFilial.AddItemValue('TODOS', '0');
  fdsFilial.First;
  while not(fdsFilial.EOF) do
  begin
    cbxFilial.AddItemValue(fdsFilialNOME.AsString, fdsFilialID.AsString);
    fdsFilial.Next;
  end;

  cbxFilial.Value := '0';
end;

procedure TfrmMovCaixa.fdsMovCaixaAfterScroll(DataSet: TDataSet);
begin

  if not(imprimir) then
  begin
    if (controle <> fdsMovCaixaCONTROLE.AsInteger) or
      (numCaixa <> fdsMovCaixaNUM_CAIXA.AsInteger) then
    begin
      controle := fdsMovCaixaCONTROLE.AsInteger;
      numCaixa := fdsMovCaixaNUM_CAIXA.AsInteger;
      edtMovData.Text := fdsMovCaixaDT_INC.AsString;
      edtMovControle.Text := IntToStr(controle);
      edtCaixa.Text := IntToStr(numCaixa);
      CalculaFechamento;
    end;
  end;
  // else
  // begin
  // CalculaFechamento;
  //
  // if cdsFechamentoDetalhado.RecordCount > 0 then
  // begin
  // cdsFechamentoDetalhado.Edit;
  // cdsFechamentoDetalhadovlrDinheiroEN.AsFloat := cdsFechamentoDetalhadovlrDinheiroEN.AsFloat + cdsFechamentovlrDinheiroEN.AsFloat;
  // cdsFechamentoDetalhadovlrSuprimento.AsFloat := cdsFechamentoDetalhadovlrSuprimento.AsFloat + cdsFechamentovlrSuprimento.AsFloat;
  // cdsFechamentoDetalhadovlrNota.AsFloat := cdsFechamentoDetalhadovlrNota.AsFloat + cdsFechamentoDetalhadovlrNota.AsFloat + cdsFechamentovlrNota.AsFloat;
  // cdsFechamentoDetalhadovlrCartao.AsFloat := cdsFechamentoDetalhadovlrCartao.AsFloat + cdsFechamentovlrCartao.AsFloat;
  // cdsFechamentoDetalhadovlrChequeEN.AsFloat := cdsFechamentoDetalhadovlrChequeEN.AsFloat + cdsFechamentovlrChequeEN.AsFloat;
  // cdsFechamentoDetalhadovlrTotalEN.AsFloat := cdsFechamentoDetalhadovlrTotalEN.AsFloat + cdsFechamentovlrTotalEN.AsFloat;
  // cdsFechamentoDetalhadovlrDinheiroSA.AsFloat := cdsFechamentoDetalhadovlrDinheiroSA.AsFloat + cdsFechamentovlrDinheiroSA.AsFloat;
  // cdsFechamentoDetalhado.Post;
  // end
  // else
  // begin
  // cdsFechamentoDetalhado.Append;;
  // cdsFechamentoDetalhadovlrDinheiroEN.AsFloat := cdsFechamentovlrDinheiroEN.AsFloat;
  // cdsFechamentoDetalhadovlrSuprimento.AsFloat := cdsFechamentovlrSuprimento.AsFloat;
  // cdsFechamentoDetalhadovlrNota.AsFloat := cdsFechamentovlrNota.AsFloat;
  // cdsFechamentoDetalhadovlrCartao.AsFloat := cdsFechamentovlrCartao.AsFloat;
  // cdsFechamentoDetalhadovlrChequeEN.AsFloat := cdsFechamentovlrChequeEN.AsFloat;
  // cdsFechamentoDetalhadovlrTotalEN.AsFloat := cdsFechamentovlrTotalEN.AsFloat;
  // cdsFechamentoDetalhadovlrDinheiroSA.AsFloat := cdsFechamentovlrDinheiroSA.AsFloat;
  // cdsFechamentoDetalhado.Post;
  // end;
  // end;
end;

procedure TfrmMovCaixa.fdsPeriodoAfterScroll(DataSet: TDataSet);
begin
  if imprimir then
  begin
    chkPeriodo.Checked := True;
    dtpInicio.Date := fdsPeriodoDT_INC.AsDateTime;
    dtpFim.Date := fdsPeriodoDT_INC.AsDateTime;

    Pesquisar;
  end;
end;

procedure TfrmMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmMovCaixa := nil;
end;

procedure TfrmMovCaixa.FormCreate(Sender: TObject);
begin
  cdsFechamento.CreateDataSet;
  cdsFechamentoDetalhado.CreateDataSet;
  fdsFilial.Open;
  fdsMovCaixa.OrderClause := 'ID';
  fdsMovCaixa.Open;
  fdsMovCaixa.First;
  With fdsMovCaixaFech do
  begin
  Close;
  conditions.Clear;
  Conditions.AddCondition('MOVIMENTO','MC.TIPO = '+ QuotedStr('FE'),True);
  Conditions.Apply;
  Prepare;
  OrderClause := 'CONTROLE DESC';
  Open;
  First;
  end;
  controle := 0;
  numCaixa := fdsMovCaixaNUM_CAIXA.AsInteger;
  chkPeriodo.Checked := True;
end;

procedure TfrmMovCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmMovCaixa.gdrListaMovDblClick(Sender: TObject);
begin
  if fdsMovCaixa.RecordCount > 0 then
  begin
   tbsResumoCaixa.TabEnabled:=True;
   tbsResumoCaixa.Show;
  end;
end;

procedure TfrmMovCaixa.gdrListaMovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsMovCaixa.RecNo) then
  begin
    gdrListaMov.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrListaMov.Canvas.Brush.Color :=clHighlight;
    gdrListaMov.Canvas.FillRect(Rect);
    gdrListaMov.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmMovCaixa.gdrMovimentosCellClick(Column: TColumn);
begin
//

end;

procedure TfrmMovCaixa.gdrMovimentosDblClick(Sender: TObject);
var
controle:Integer;
begin
//  if fdsMovCaixa.RecordCount > 0 then
//    tbsResumoCaixa.Show;

   if fdsMovCaixaFech.RecordCount > 0 then
   begin
     controle := gdrMovimentos.Fields[9].AsInteger;
     //ShowMessage(IntToStr(controle));
     btnTodos.Click;
     chkControle.Checked := True;
     chkPeriodo.Checked:= False;
     edtPesqControle.Text := IntToStr(controle);
     pesquisar;
     fdsMovCaixa.Open;
     tbsListaMovimento.TabEnabled:=True;
     tbsListaMovimento.Show;
   end;
end;

procedure TfrmMovCaixa.gdrMovimentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsMovCaixaFech.RecNo) then
  begin
    gdrMovimentos.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrMovimentos.Canvas.Brush.Color :=clHighlight;
    gdrMovimentos.Canvas.FillRect(Rect);
    gdrMovimentos.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmMovCaixa.gdrMovimentosMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  fdsMovCaixa.Close;
  fdsMovCaixa.Conditions.Clear;
  fdsMovCaixa.Conditions.Apply;
  if fdsMovCaixaFech.RecordCount > 0 then
   begin
     controle := gdrMovimentos.Fields[9].AsInteger;
    // ShowMessage(IntToStr(controle));
     //btnTodos.Click;
     chkControle.Checked := True;
     chkPeriodo.Checked:= False;
     edtPesqControle.Text := IntToStr(controle);
     pesquisar;
     fdsMovCaixa.Open;
   end;
end;

procedure TfrmMovCaixa.impMovCaixaAnaExecute(Sender: TObject);
begin
  chkControle.Checked := True;
  edtPesqControle.Text := IntToStr(controle);

  if (chkCaixa.Checked and (edtPesqCaixa.Text = 'TODOS')) then
  begin
    Application.MessageBox
      ('Primeiro informe um numero de CAIXA para a pesquisa.', 'Aten��o',
      MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  chkPeriodo.Checked := true;
  //edtPesqCaixa.Text :=
 // Pesquisar;
  // voltar ak
  // with fdsMovCaixa do
  // begin
  // Close;
  // Conditions.Clear;
  // if (chkTipoMovimento.Checked) and (cbxTipoMovimento.Value <> '0') then
  // begin
  // if cbxTipoMovimento.Value = 'FE' then
  // Conditions.AddCondition('MOVIMENTO', ' MC.TIPO = TD', True);
  // end;
  // Conditions.Apply;
  // Open;
  // fdsMovCaixa.First;
  // end;

  DM.tipo := cbxTipoMovimento.Text;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxMoviCaixaAnalitico.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  btnTodos.Click;
end;

procedure TfrmMovCaixa.impMovCaixaSangSuprExecute(Sender: TObject);
var
dataAbert,dataFech :TDate;
begin
  chkControle.Checked := True;
  edtPesqControle.Text := IntToStr(controle);

  with fdsMovCaixa do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('MOVIMENTO', ' MC.TIPO = ' + QuotedStr('SA') + ' OR MC.TIPO = ' + QuotedStr('SU'), True);
    Conditions.AddCondition('CONTROLE', ' MC.CONTROLE = ' + QuotedStr(IntToStr(controle)), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
  if fdsMovCaixa.RecordCount > 0 then
  Begin

  CalculaFechamento;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxMoviCaixaSangSupr.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  tbsTabela.Show;
  End
  else
  begin
  Application.MessageBox('N�o ha nenhuma movimenta��o de SANGRIA ou SUPRIMENTO nesse per�odo', 'Aten��o',MB_OK + MB_ICONEXCLAMATION);
  tbsTabela.Show;
  Abort;
  end;
end;

procedure TfrmMovCaixa.impMovCaixaSintExecute(Sender: TObject);
var
  controle: Integer;
begin

  if (chkCaixa.Checked and (edtPesqCaixa.Text = 'TODOS')) then
  begin
    Application.MessageBox
      ('Primeiro informe um numero de CAIXA para a pesquisa.', 'Aten��o',
      MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  if (chkCaixa.Checked and (edtPesqCaixa.Text <> 'TODOS') and
    (edtPesqCaixa.Text <> EmptyStr)) then
  begin
    with qryPesquisa do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM caixa WHERE ID=' + QuotedStr(edtPesqCaixa.Text));
      Prepare;
      ExecQuery;
    end;
    if not(qryPesquisa.RecordCount > 0) then
    begin
      Application.MessageBox
        ('N�mero de caixa n�o registrado! Por fovor informe um n�mero de caixa v�lido.',
        'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Abort;
    end;
    // DM.transPricipal.CommitRetaining;
  end;

  DM.dtinicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxMoviCaixaSintetico.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmMovCaixa.impMovoCaixaPeriodoExecute(Sender: TObject);
var
  tempData, tempDtFim: TDateTime;
  tempDNAbertura, tempDNVenda, tempCTVenda, tempCHVenda, tempNTVenda: Double;
  tempSangriaDN, tempSuprimentoDN, TempSangriaCH, tempTotalEN,
    tempTotalSA: Double;
  tempFNVenda, tempTKVenda, tempVDvenda, tempDevolucao: Double;
  dtAbertura, dtFechamento: TDate;
begin
  if not(chkPeriodo.Checked) then
  begin
    Application.MessageBox('Primeiro informe um per�odo para pesquisa.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  QryCommand.Close;
  QryCommand.SQL.Clear;
  QryCommand.SQL.Add
    ('SELECT IDCAIXA, CONTROLE FROM MOVIMENTO_CAIXA WHERE DT_INC = :DT_INC AND IDFILIAL = '
    + IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
  QryCommand.SQL.Add(' AND TIPO = ' + QuotedStr('FE') +
    ' GROUP BY IDCAIXA, CONTROLE');

  tempData := dtpInicio.Date;
  tempDtFim := dtpFim.Date;
  cdsFechamento.Close;
  cdsFechamento.Open;
  cdsFechamento.EmptyDataSet;

  while not(tempData > tempDtFim) do
  begin
    QryCommand.Close;
    QryCommand.ParamByName('DT_INC').AsDateTime := tempData;
    QryCommand.Prepare;
    QryCommand.ExecQuery;

    while not(QryCommand.EOF) do
    begin
      numCaixa := QryCommand.FieldByName('IDCAIXA').AsInteger;
      controle := QryCommand.FieldByName('CONTROLE').AsInteger;

      With qrySomatorio do
      begin
        // Retorna Valor de Abertura
        Close;
        SQL.Clear;
        SQL.Add('SELECT VLR_ENTRADA, DT_INC FROM MOVIMENTO_CAIXA WHERE CONTROLE = '
          + IntToStr(controle) + ' AND TIPO = ' + QuotedStr('AB'));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;
        tempDNAbertura := FieldByName('VLR_ENTRADA').AsFloat;
        dtAbertura := FieldByName('DT_INC').AsDateTime;
        // Fim

        // Retorna Valor Suprimento em Dinheiro
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = '
          + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SU') +
          ' AND CONTROLE = ' + IntToStr(controle));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;
        if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
          tempSuprimentoDN := FieldByName('TOT').AsFloat
        else
          tempSuprimentoDN := 0.00;

        // Fim

        // Retorna Valor Sangria em Dinheiro
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = '
          + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('SA') +
          ' AND CONTROLE = ' + IntToStr(controle));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;
        if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
          tempSangriaDN := FieldByName('TOT').AsFloat
        else
          tempSangriaDN := 0.00;

        // Fim

        // Retorna Valor de Devolu��o em Dinheiro
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = '
          + QuotedStr('DN') + ' AND TIPO = ' + QuotedStr('DV') +
          ' AND CONTROLE = ' + IntToStr(controle));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;
        if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
          tempDevolucao := FieldByName('TOT').AsFloat
        else
          tempDevolucao := 0.00;

        // Fim

        // Retorna Valor Sangria em Cheque
        Close;
        SQL.Clear;
        SQL.Add('SELECT SUM(VLR_VENDA) AS TOT FROM MOVIMENTO_CAIXA WHERE MOEDA = '
          + QuotedStr('CH') + ' AND TIPO = ' + QuotedStr('SA') +
          ' AND CONTROLE = ' + IntToStr(controle));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;
        if not(Trim(FieldByName('TOT').AsString) = EmptyStr) then
          TempSangriaCH := FieldByName('TOT').AsFloat
        else
          TempSangriaCH := 0.00;

        // Fim

        // Verifica se o caixa est� fechado
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM MOVIMENTO_CAIXA WHERE CONTROLE = ' +
          IntToStr(controle) + ' AND TIPO = ' + QuotedStr('FE'));
        SQL.Add(' AND IDCAIXA = ' + IntToStr(numCaixa) + ' AND IDFILIAL = ' +
          IntToStr(DM.fdsConfigIDFILIAL.AsInteger));
        Prepare;
        ExecQuery;

        if qrySomatorio.RecordCount > 0 then
        begin
          tempDNVenda := FieldByName('VLR_ENTRADA').AsFloat - tempDNAbertura +
            tempSangriaDN - tempSuprimentoDN;
          tempNTVenda := FieldByName('VLR_NOTA').AsFloat;
          tempCTVenda := FieldByName('VLR_CARTAO').AsFloat;
          tempCHVenda := FieldByName('VLR_CHEQUE').AsFloat;
          tempFNVenda := FieldByName('VLR_FINANCEIRA').AsFloat;
          tempTKVenda := FieldByName('VLR_TICKET').AsFloat;
          tempVDvenda := FieldByName('VLR_VALEDESCONTO').AsFloat;
          dtFechamento := FieldByName('DT_INC').AsDateTime;

          tempTotalEN := tempDNVenda + tempCTVenda + tempCHVenda + tempNTVenda + tempSuprimentoDN + tempFNVenda + tempTKVenda + tempVDvenda;

          tempTotalSA := tempSangriaDN + TempSangriaCH + tempDevolucao;

          cdsFechamento.Append;
          cdsFechamentovlrAbertura.AsFloat := tempDNAbertura;
          cdsFechamentoData.AsDateTime := dtAbertura;
          cdsFechamentoControle.AsInteger := controle;
          cdsFechamentovlrDinheiroEN.AsFloat := tempDNVenda;
          cdsFechamentovlrSuprimento.AsFloat := tempSuprimentoDN;
          cdsFechamentovlrNota.AsFloat := tempNTVenda;
          cdsFechamentovlrCartao.AsFloat := tempCTVenda;
          cdsFechamentovlrChequeEN.AsFloat := tempCHVenda;
          cdsFechamentovlrFinanceira.AsFloat := tempFNVenda;
          cdsFechamentovlrTicket.AsFloat := tempTKVenda;
          cdsFechamentovlrValeDesconto.AsFloat := tempVDvenda;
          cdsFechamentovlrTotalEN.AsFloat := tempTotalEN;
          cdsFechamentovlrDinheiroSA.AsFloat := tempSangriaDN;
          cdsFechamentovlrChequeSA.AsFloat := TempSangriaCH;
          cdsFechamentovlrTotalSA.AsFloat := tempTotalSA;
          cdsFechamentovlrTotalFE.AsFloat := tempDNAbertura + tempDNVenda + tempSuprimentoDN - tempSangriaDN;
          cdsFechamentodtAbertura.AsDateTime := dtAbertura;
          cdsFechamentodtFechamento.AsDateTime := dtFechamento;
          cdsFechamento.Post;
        end
      end;

      QryCommand.Next;

    end;

    tempData := tempData + 1;
  end;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +'/Relatorios/frxMoviCaixaPeriodo.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmMovCaixa.MovimentodeCaixaDetalhado1Click(Sender: TObject);
begin
  cdsFechamentoDetalhado.EmptyDataSet;
  DM.dtinicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;

  CalculaTotaisPeriodo;

  with fdsPeriodo do
  begin
    Conditions.Clear;
    Conditions.AddCondition('DT_INI', 'MC.DT_INC BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
    Conditions.Apply;
    Prepare;
    fdsPeriodo.Open;
  end;

  imprimir := True;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxMoviCaixaDetalhado.fr3');
  DM.frxReport1.PrintOptions.ShowDialog := True;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  imprimir := false;
  fdsPeriodo.Close;
  btnTodos.Click;
end;

procedure TfrmMovCaixa.PesqMovCaixa;
var
  utils: TUtils;
  numOP: Double;
  totalDN:Double;
  somarTotalDNTipo: Boolean;
begin
  lblTot.Visible := false;
  lblTotal.Visible := false;
  with fdsMovCaixaFech do
  begin
    Close;
   Conditions.Clear;

    if (chkFilial.Checked) and (cbxFilial.Value <> '0') then
    Conditions.AddCondition('FILIAL', ' MC.IDFILIAL = ' + QuotedStr(cbxFilial.Value), True);

    if (chkCaixa.Checked) then
    begin
      numOP := utils.ValidaInteiroFloat(edtPesqCaixa.Text, 'I');

      if numOP > 0 then
        Conditions.AddCondition('CAIXA', ' C.NUM_CAIXA = ' + QuotedStr(FloatToStr(numOP)), True);
    end;

//    if (chkNumVenda.Checked) then
//    begin
//      numOP := utils.ValidaInteiroFloat(edtPesqNumOp.Text, 'I');
//
//      if numOP > 0 then
//        Conditions.AddCondition('IDOP', ' MC.IDMOVIMENTO = ' + QuotedStr(FloatToStr(numOP)), True);
//    end;

//    if (chkControle.Checked) then
//    begin
//      numOP := utils.ValidaInteiroFloat(edtPesqControle.Text, 'I');
//
//      if numOP > 0 then
//        Conditions.AddCondition('CONTROLE', ' MC.CONTROLE = ' +QuotedStr(FloatToStr(numOP)), True);
//    end;

//    if (chkTipoMovimento.Checked) and (cbxTipoMovimento.Value <> '0') then
//    begin
      Conditions.AddCondition('MOVIMENTO', ' MC.TIPO ='+QuotedStr('FE'), True);
//      somarTotalDNTipo := True;
//    end;

//    if (chkMoeda.Checked) and (cbxMoeda.Value <> '0') then
//      Conditions.AddCondition('MOEDA', ' MC.MOEDA = ' +QuotedStr(cbxMoeda.Value), True);

    if (chkPeriodo.Checked) then
    Conditions.AddCondition('DT_INC', 'MC.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    Conditions.Apply;
    Open;
    fdsMovCaixaFech.First;
    controle := fdsMovCaixaFechCONTROLE.AsInteger;
    numCaixa := fdsMovCaixaFechNUM_CAIXA.AsInteger;
  end;
  if (somarTotalDNTipo= true)then
  begin
  totalDN := 0;
  with fdsMovCaixaFech do
  begin
    First;
    while not(EOF) do
    begin
      totalDN := totalDN + fdsMovCaixaFechVLR_ENTRADA.AsFloat;
      Next;
    end;
  end;

//  lblTot.Visible := True;
//  lblTotal.Visible := True;
//  lblTotal.Caption := utils.AdicionaMascaraDinheiro(FloatToStr(totalDN));
  end;

end;

procedure TfrmMovCaixa.Pesquisar;
var
  utils: TUtils;
  numOP: Double;
  somarTotalDNTipo: Boolean;
begin
  somarTotalDNTipo := false;
  lblTot.Visible := false;
  lblTotal.Visible := false;

  with fdsMovCaixa do
  begin

      Close;
      Conditions.Clear;

      if (chkFilial.Checked) and (cbxFilial.Value <> '0') then
        Conditions.AddCondition('FILIAL', ' MC.IDFILIAL = ' +
          QuotedStr(cbxFilial.Value), True);

      if (chkCaixa.Checked) then
      begin
        numOP := utils.ValidaInteiroFloat(edtPesqCaixa.Text, 'I');

        if numOP > 0 then
          Conditions.AddCondition('CAIXA', ' C.NUM_CAIXA = ' +
            QuotedStr(FloatToStr(numOP)), True);
      end;

      if (chkNumVenda.Checked) then
      begin
        numOP := utils.ValidaInteiroFloat(edtPesqNumOp.Text, 'I');

        if numOP > 0 then
          Conditions.AddCondition('IDOP', ' MC.IDMOVIMENTO = ' +
            QuotedStr(FloatToStr(numOP)), True);
      end;

      if (chkControle.Checked) then
      begin
        numOP := utils.ValidaInteiroFloat(edtPesqControle.Text, 'I');

        if numOP > 0 then
          Conditions.AddCondition('CONTROLE', ' MC.CONTROLE = ' +
            QuotedStr(FloatToStr(numOP)), True);
      end;

      if (chkTipoMovimento.Checked) and (cbxTipoMovimento.Value <> '0') then
      begin
        Conditions.AddCondition('MOVIMENTO',
          ' MC.TIPO = ' + QuotedStr(cbxTipoMovimento.Value), True);
        somarTotalDNTipo := True;
      end;

      if (chkMoeda.Checked) and (cbxMoeda.Value <> '0') then
        Conditions.AddCondition('MOEDA', ' MC.MOEDA = ' +
          QuotedStr(cbxMoeda.Value), True);

      if (chkPeriodo.Checked) then
        Conditions.AddCondition('DT_INC', 'MC.DT_INC BETWEEN ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

      Conditions.Apply;
      Open;
      fdsMovCaixa.First;
      controle := fdsMovCaixaCONTROLE.AsInteger;
      numCaixa := fdsMovCaixaNUM_CAIXA.AsInteger;

      if (somarTotalDNTipo = True) then
      begin
        CalculaTotalDNTipo;
      end;

  end;

end;

procedure TfrmMovCaixa.tbsListaMovimentoShow(Sender: TObject);
begin
  chkMoeda.Enabled:=True;
  chkTipoMovimento.Enabled := True;
  chkNumVenda.Enabled:=True;
  chkCaixa.Enabled:= False;
  chkFilial.Enabled:=False;
  btnPesquisar.Enabled:=True;
  tbsResumoCaixa.TabEnabled:=false;
end;

procedure TfrmMovCaixa.tbsResumoCaixaShow(Sender: TObject);
begin
  RzPanel4.Enabled:=False;
  if (controle <> fdsMovCaixaCONTROLE.AsInteger) or
    (numCaixa <> fdsMovCaixaNUM_CAIXA.AsInteger) then
  begin
    controle := fdsMovCaixaCONTROLE.AsInteger;
    numCaixa := fdsMovCaixaNUM_CAIXA.AsInteger;
    edtMovData.Text := fdsMovCaixaDT_INC.AsString;
    edtMovControle.Text := IntToStr(controle);
    edtCaixa.Text := IntToStr(numCaixa);
    CalculaFechamento;
  end;
end;

procedure TfrmMovCaixa.tbsTabelaShow(Sender: TObject);
begin
  tbsListaMovimento.TabEnabled:=false;
  tbsResumoCaixa.TabEnabled:=false;
  RzPanel4.Enabled:=True;
  chkMoeda.Enabled:=False;
  chkTipoMovimento.Enabled := False;
  chkNumVenda.Enabled:=False;
  btnPesquisar.Enabled:=True;
end;

end.
