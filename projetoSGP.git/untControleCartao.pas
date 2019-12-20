unit untControleCartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExDBGrids, JvDBGrid, Vcl.Grids,
  Vcl.DBGrids, RzTabs, Vcl.Mask, RzEdit, Vcl.StdCtrls, RzCmboBx, RzButton,
  RzPanel, RzRadGrp, RzLabel, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB,
  FIBDataSet, pFIBDataSet, Vcl.Menus, System.Actions, Vcl.ActnList, frxClass,
  frxDBSet, Datasnap.Provider, Datasnap.DBClient, FIBQuery, pFIBQuery,System.DateUtils,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, uUtils, JvMenus;

type
  TfrmControleCartao = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    imgPesqCartao: TImage;
    imgAberto: TImage;
    imgPago: TImage;
    imgCompensado: TImage;
    imgBanco: TImage;
    ImgCliente: TImage;
    Image14: TImage;
    rgbStatus: TRzRadioGroup;
    rgbCliente: TRzGroupBox;
    EdtCliente: TEdit;
    btnPesqCli: TRzBitBtn;
    edtCodCliente: TEdit;
    rgbFilial: TRzGroupBox;
    cbxFilial: TRzComboBox;
    rgbPeriodo: TRzGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    dtpInicio: TRzDateTimeEdit;
    dtpFim: TRzDateTimeEdit;
    rgbTipoPeriodo: TRzRadioGroup;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    gdrMovimento: TJvDBGrid;
    Panel2: TPanel;
    imgBaixa: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image8: TImage;
    Label9: TLabel;
    fdsMov: TpFIBDataSet;
    fdsCntCartao: TpFIBDataSet;
    fdsFilial: TpFIBDataSet;
    ImgAbrir: TImage;
    rgbTipoCartao: TRzRadioGroup;
    fdsCntCartaoID: TFIBBCDField;
    fdsCntCartaoPOSICAO: TFIBStringField;
    fdsCntCartaoPREFIXO: TFIBStringField;
    fdsCntCartaoREFERENCIA: TFIBStringField;
    fdsCntCartaoIDRECEBER: TFIBBCDField;
    fdsCntCartaoDT_VENC: TFIBDateField;
    fdsCntCartaoDT_PAG: TFIBDateField;
    fdsCntCartaoACRESCIMO: TFIBBCDField;
    fdsCntCartaoDESCONTO: TFIBBCDField;
    fdsCntCartaoVALOR: TFIBBCDField;
    fdsCntCartaoVALOR_PAGO: TFIBBCDField;
    fdsCntCartaoHISTORICO: TFIBStringField;
    fdsCntCartaoPARCELA: TFIBStringField;
    fdsCntCartaoENVIADO_WEB: TFIBStringField;
    fdsCntCartaoIDFILIAL: TFIBBCDField;
    fdsCntCartaoBAIXA_AGRUPADA: TFIBStringField;
    fdsCntCartaoPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntCartaoREC_DESC_ACRE: TFIBBCDField;
    fdsCntCartaoREC_DINHEIRO: TFIBBCDField;
    fdsCntCartaoID_REC_ITEM: TFIBBCDField;
    fdsCntCartaoVALOR_JUROS_PAGO: TFIBBCDField;
    fdsCntCartaoVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsCntCartaoVLR_RENEGOCIADO: TFIBBCDField;
    fdsCntCartaoTIPO: TFIBStringField;
    fdsCntCartaoMOVIMENTO: TFIBStringField;
    fdsCntCartaoIDCLIENTE: TFIBBCDField;
    fdsCntCartaoCLIENTE: TFIBStringField;
    fdsCntCartaoFILIAL: TFIBStringField;
    dsCntCartao: TDataSource;
    fdsCntCartaoDT_INC: TFIBDateField;
    dsMov: TDataSource;
    cdsCntCartao: TClientDataSet;
    dspCntCartao: TDataSetProvider;
    frxCntCartao: TfrxDBDataset;
    qryBaixa: TpFIBQuery;
    cdsCntCartaoID: TBCDField;
    cdsCntCartaoPOSICAO: TStringField;
    cdsCntCartaoPREFIXO: TStringField;
    cdsCntCartaoREFERENCIA: TStringField;
    cdsCntCartaoIDRECEBER: TBCDField;
    cdsCntCartaoDT_VENC: TDateField;
    cdsCntCartaoDT_PAG: TDateField;
    cdsCntCartaoACRESCIMO: TBCDField;
    cdsCntCartaoDESCONTO: TBCDField;
    cdsCntCartaoVALOR: TBCDField;
    cdsCntCartaoVALOR_PAGO: TBCDField;
    cdsCntCartaoHISTORICO: TStringField;
    cdsCntCartaoPARCELA: TStringField;
    cdsCntCartaoENVIADO_WEB: TStringField;
    cdsCntCartaoIDFILIAL: TBCDField;
    cdsCntCartaoBAIXA_AGRUPADA: TStringField;
    cdsCntCartaoPAGAMENTO_MOEDA: TStringField;
    cdsCntCartaoREC_DESC_ACRE: TBCDField;
    cdsCntCartaoREC_DINHEIRO: TBCDField;
    cdsCntCartaoID_REC_ITEM: TBCDField;
    cdsCntCartaoVALOR_JUROS_PAGO: TBCDField;
    cdsCntCartaoVLR_JUROS_RESTANTE: TBCDField;
    cdsCntCartaoVLR_RENEGOCIADO: TBCDField;
    cdsCntCartaoTIPO: TStringField;
    cdsCntCartaoMOVIMENTO: TStringField;
    cdsCntCartaoIDCLIENTE: TBCDField;
    cdsCntCartaoCLIENTE: TStringField;
    cdsCntCartaoFILIAL: TStringField;
    cdsCntCartaoDT_INC: TDateField;
    fdsMovID: TFIBBCDField;
    fdsMovIDRECEBER_ITEM: TFIBBCDField;
    fdsMovIDUSUARIO: TFIBBCDField;
    fdsMovIDCLIENTE: TFIBBCDField;
    fdsMovIDFILIAL: TFIBBCDField;
    fdsMovDT_MOV: TFIBDateField;
    fdsMovHR_MOV: TFIBTimeField;
    fdsMovSTATUS: TFIBStringField;
    fdsMovREFERENCIA: TFIBStringField;
    fdsMovPREFIXO: TFIBStringField;
    fdsMovBAIXA_AUTOMATICA: TFIBStringField;
    fdsMovMOVIMENTO: TFIBStringField;
    fdsMovCLIENTE: TFIBStringField;
    fdsMovUSUARIO: TFIBStringField;
    fdsMovFILIAL: TFIBStringField;
    fdsMovTIPO_BAIXA: TFIBStringField;
    fdsFilialID: TFIBBCDField;
    fdsFilialDT_INC: TFIBDateField;
    fdsFilialDT_ALT: TFIBDateField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    fdsFilialENDERECO: TFIBStringField;
    fdsFilialBAIRRO: TFIBStringField;
    fdsFilialIDCIDADE: TFIBBCDField;
    fdsFilialCEP: TFIBStringField;
    fdsFilialTELEFONE1: TFIBStringField;
    fdsFilialTELEFONE2: TFIBStringField;
    fdsFilialEMAIL: TFIBStringField;
    fdsFilialIDROTA: TFIBBCDField;
    fdsFilialENVIADO_WEB: TFIBStringField;
    fdsMovIDRECEBER_CHEQUE: TFIBBCDField;
    rgbReferencia: TRzGroupBox;
    edtPesqRef: TRzEdit;
    gdrTabela: TJvDBGrid;
    ActionList2: TActionList;
    ImpAnaliticoPeriodo: TAction;
    ImpSinteticoCliente: TAction;
    ImpSinteticoFilial: TAction;
    ImpSinteticoStatus: TAction;
    ppmImprimir: TPopupMenu;
    RelSintetico: TMenuItem;
    AgrupadoporPerodo2: TMenuItem;
    AgrupadoporCliente2: TMenuItem;
    AgrupadoporFilial2: TMenuItem;
    AgrupadoporStatus2: TMenuItem;
    RelatriodeMovimentos1: TMenuItem;
    JvPopupMenu1: TJvPopupMenu;
    imprimir: TMenuItem;
    AgrupadoporPerodo1: TMenuItem;
    AgrupadoporCliente1: TMenuItem;
    AgrupadoporFilial1: TMenuItem;
    AgrupadoporStatus1: TMenuItem;
    cdsCntCartaoTOT_CARTAO: TAggregateField;
    AgrupadoporTipode1: TMenuItem;
    ImpSinteticoTipo: TAction;
    AgrupadoTipodeCarto1: TMenuItem;
    procedure imgBaixaClick(Sender: TObject);
    procedure ImgAbrirClick(Sender: TObject);
    procedure imgPesqCartaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure cdsCntCartaoAfterScroll(DataSet: TDataSet);
    procedure rgbReferenciaCheckBoxClick(Sender: TObject);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure rgbTipoCartaoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure edtPesqRefEnter(Sender: TObject);
    procedure edtPesqRefExit(Sender: TObject);
    procedure edtCodClienteEnter(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure EdtClienteEnter(Sender: TObject);
    procedure EdtClienteExit(Sender: TObject);
    procedure rgbClienteCheckBoxClick(Sender: TObject);
    procedure gdrTabelaTitleClick(Column: TColumn);
    procedure ImpAnaliticoPeriodoExecute(Sender: TObject);
    procedure ImpSinteticoClienteExecute(Sender: TObject);
    procedure ImpSinteticoFilialExecute(Sender: TObject);
    procedure ImpSinteticoStatusExecute(Sender: TObject);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBaixaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBaixaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgAbrirMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgAbrirMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgPesqCartaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgPesqCartaoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8Click(Sender: TObject);
    procedure ImpSinteticoTipoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GeraMovimento(Status:String;Referencia:String;IDCliente:Integer;
    IDReceberItem:Integer;idFilial:Integer);
    procedure PesqCntCartao(indexStatus:Integer; indexTipo:Integer);
    procedure ImpRelSintetico(Tipo: String;Descricao:String);
  public
    { Public declarations }
  end;

var
  frmControleCartao: TfrmControleCartao;
  Utils : TUtils;
implementation
{$R *.dfm}

uses untData;

procedure TfrmControleCartao.cdsCntCartaoAfterScroll(DataSet: TDataSet);
begin
  if not(cdsCntCartao.State in [dsEdit,dsInsert]) then
  begin
    with fdsMov do
    begin
      close;
      conditions.Clear;
      Conditions.AddCondition('IDCHEQUE','M.IDRECEBER_ITEM ='+QuotedStr(cdsCntCartaoID.AsString),true);
      Conditions.AddCondition('IDFILIAL','M.IDFILIAL= '+QuotedStr(cdsCntCartaoIDFILIAL.AsString),true);
      Conditions.Apply;
      prepare;
      open;
    end;
  end;
end;

procedure TfrmControleCartao.EdtClienteEnter(Sender: TObject);
begin
  if Trim(edtCliente.Text) = 'TODOS' then
  begin
    edtCliente.Text := EmptyStr;
    edtCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmControleCartao.EdtClienteExit(Sender: TObject);
begin
  if Trim(edtCliente.Text) = EmptyStr then
  begin
    edtCliente.Text := 'TODOS';
    edtCliente.Font.Color := clGray;
  end;
end;

procedure TfrmControleCartao.edtCodClienteEnter(Sender: TObject);
begin
  if Trim(edtCodCliente.Text) = 'C�DIGO' then
  begin
    edtCodCliente.Text := EmptyStr;
    edtCodCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmControleCartao.edtCodClienteExit(Sender: TObject);
begin
  if Trim(edtCodCliente.Text) = EmptyStr then
  begin
    edtCodCliente.Text := 'C�DIGO';
    edtCodCliente.Font.Color := clGray;
  end
end;

procedure TfrmControleCartao.edtPesqRefEnter(Sender: TObject);
begin
if Trim(edtPesqRef.Text) = 'TODOS' then
  begin
    edtPesqRef.Text := EmptyStr;
    edtPesqRef.Font.Color := clBlack;
  end;
end;

procedure TfrmControleCartao.edtPesqRefExit(Sender: TObject);
begin
   if Trim(edtPesqRef.Text) = EmptyStr then
  begin
    edtPesqRef.Text := 'Todos';
    edtPesqRef.Font.Color := clGray;
  end;
end;

procedure TfrmControleCartao.fdsFilialAfterOpen(DataSet: TDataSet);
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

procedure TfrmControleCartao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmControleCartao := nil;
end;

procedure TfrmControleCartao.FormCreate(Sender: TObject);
begin
  fdsFilial.Open;
  fdsCntCartao.Open;
  cdsCntCartao.Open;
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;
end;

procedure TfrmControleCartao.FormShow(Sender: TObject);
begin
  PesqCntCartao(rgbStatus.ItemIndex,rgbTipoCartao.ItemIndex);
  fdsMov.Open;
end;

procedure TfrmControleCartao.GeraMovimento(Status, Referencia: String;
  IDCliente, IDReceberItem,idFilial: Integer);
begin
  with fdsMov do
  begin
    append;
    fdsMovIDRECEBER_ITEM.AsInteger := IDReceberItem;
    fdsMovIDRECEBER_CHEQUE.AsInteger := 0 ;
    fdsMovIDUSUARIO.AsInteger := Dm.fdsUsuarioPermicIDUSUARIO.AsInteger;
    fdsMovIDCLIENTE.AsInteger := IDCliente;
    fdsMovIDFILIAL.AsInteger := Dm.fdsConfigIDFILIAL.AsInteger;
    fdsMovDT_MOV.AsDateTime := Date;
    fdsMovHR_MOV.AsDateTime := time;
    fdsMovSTATUS.AsString := Status;
    fdsMovREFERENCIA.AsString := Referencia;
    fdsMovPREFIXO.AsString := 'CT';
    fdsMovBAIXA_AUTOMATICA.AsString := 'N';
    post;
  end;
end;

procedure TfrmControleCartao.Image8Click(Sender: TObject);
begin
  JvPopupMenu1.Popup(frmControleCartao.Left + 30, frmControleCartao.top + 580);
end;

procedure TfrmControleCartao.Image8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Utils.EfeitoAumenta(Sender);
end;

procedure TfrmControleCartao.Image8MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Utils.EfeitoDiminui(Sender);
end;

procedure TfrmControleCartao.ImgAbrirClick(Sender: TObject);
begin
  if cdsCntCartao.RecordCount > 0 then
  begin
    if cdsCntCartaoPOSICAO.AsString <> 'AB' then
    begin
      with qryBaixa do
      begin
        close;
        SQL.Clear;
        SQL.Add('UPDATE CNT_RECEBER_ITEM SET POSICAO = :POSICAO WHERE ID = :IDRECEBERITEM');
        SQL.Add('AND IDFILIAL = :IDFILIAL');
        ParamByName('POSICAO').AsString := 'AB';
        ParamByName('IDRECEBERITEM').AsInteger := cdsCntCartaoID.AsInteger;
        ParamByName('IDFILIAL').AsInteger := cdsCntCartaoIDFILIAL.AsInteger;
        prepare;
        ExecQuery;
      end;

      GeraMovimento('AB',cdsCntCartaoREFERENCIA.AsString,cdsCntCartaoIDCLIENTE.AsInteger,
        cdsCntCartaoID.AsInteger,cdsCntCartaoIDFILIAL.AsInteger) ;
      Dm.Conexao.CommitRetaining;

      imgPesqCartao.OnClick(imgPesqCartao);
      Application.MessageBox('Opera��o realizada com Sucesso!',
        'Sucesso',MB_OK+MB_ICONASTERISK);

    end;
  end;
end;

procedure TfrmControleCartao.ImgAbrirMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  utils.EfeitoAumenta(Sender);
end;

procedure TfrmControleCartao.ImgAbrirMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  utils.EfeitoDiminui(Sender);
end;

procedure TfrmControleCartao.imgBaixaClick(Sender: TObject);
begin
 if cdsCntCartao.RecordCount > 0 then
 begin
   if cdsCntCartaoPOSICAO.AsString <> 'PG' then
   begin
     with qryBaixa do
     begin
       close;
       SQL.Clear;
       SQL.Add('UPDATE CNT_RECEBER_ITEM SET POSICAO = :POSICAO WHERE ID = :IDRECEBERITEM');
       SQL.Add('AND IDFILIAL = :IDFILIAL');
       ParamByName('POSICAO').AsString := 'PG';
       ParamByName('IDRECEBERITEM').AsInteger := cdsCntCartaoID.AsInteger;
       ParamByName('IDFILIAL').AsInteger := cdsCntCartaoIDFILIAL.AsInteger;
       prepare;
       ExecQuery;
     end;

    GeraMovimento('PG',cdsCntCartaoREFERENCIA.AsString,cdsCntCartaoIDCLIENTE.AsInteger,
      cdsCntCartaoID.AsInteger,cdsCntCartaoIDFILIAL.AsInteger) ;
    Dm.Conexao.CommitRetaining;

    imgPesqCartao.OnClick(imgPesqCartao);
    Application.MessageBox('Opera��o realizada com Sucesso!',
    'Sucesso',MB_OK+MB_ICONASTERISK);

   end;
 end;
end;

procedure TfrmControleCartao.imgBaixaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Utils.EfeitoAumenta(Sender);
end;

procedure TfrmControleCartao.imgBaixaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 utils.EfeitoDiminui(Sender);
end;

procedure TfrmControleCartao.imgPesqCartaoClick(Sender: TObject);
begin
  PesqCntCartao(rgbStatus.ItemIndex, rgbTipoCartao.ItemIndex);
end;

procedure TfrmControleCartao.imgPesqCartaoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  utils.EfeitoAumenta(Sender);
end;

procedure TfrmControleCartao.imgPesqCartaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  utils.EfeitoDiminui(Sender);
end;

procedure TfrmControleCartao.ImpAnaliticoPeriodoExecute(Sender: TObject);
begin
  if rgbTipoPeriodo.ItemIndex = 0 then
   begin
    with fdsCntCartao do
    begin
      cdsCntCartao.Close;
      close;
      OrderClause :='CR.DT_INC';
      Prepare;
      Open;
      cdsCntCartao.Open;
    end;
    ImpRelSintetico('E','Agrupado por data de Emiss�o');
   end;

   if rgbTipoPeriodo.ItemIndex = 1 then
   begin
    with fdsCntCartao do
    begin
      cdsCntCartao.Close;
      close;
      OrderClause :='CI.DT_VENC';
      Prepare;
      Open;
      cdsCntCartao.Open;
    end;
    ImpRelSintetico('V','Agrupado por data de Vencimento');
   end;
end;

procedure TfrmControleCartao.ImpRelSintetico(Tipo, Descricao: String);
begin
  DM.dtInicio := dtpInicio.Date;
  DM.dtFim := dtpFim.Date;
  DM.tipo:= Tipo;
  DM.obs:= Descricao;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRelControleCartaoSintetico.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmControleCartao.ImpSinteticoClienteExecute(Sender: TObject);
begin
  with fdsCntCartao do
  begin
    cdsCntCartao.Close;
    close;
    OrderClause :='CLIENTE';
    Prepare;
    Open;
    cdsCntCartao.Open;
  end;
  ImpRelSintetico('C','Agrupado por Emitente');
end;

procedure TfrmControleCartao.ImpSinteticoFilialExecute(Sender: TObject);
begin
   with fdsCntCartao do
  begin
    cdsCntCartao.Close;
    close;
    OrderClause :='CI.IDFILIAL';
    Prepare;
    Open;
    cdsCntCartao.Open;
  end;
  ImpRelSintetico('F','Agrupado por Filial');
end;

procedure TfrmControleCartao.ImpSinteticoStatusExecute(Sender: TObject);
begin
  with fdsCntCartao do
  begin
    cdsCntCartao.Close;
    close;
    OrderClause :='MOVIMENTO';
    Prepare;
    Open;
    cdsCntCartao.Open;
  end;
  ImpRelSintetico('M','Agrupado por Status');
end;

procedure TfrmControleCartao.ImpSinteticoTipoExecute(Sender: TObject);
begin
  with fdsCntCartao do
  begin
    cdsCntCartao.Close;
    close;
    OrderClause :='TIPO';
    Prepare;
    Open;
    cdsCntCartao.Open;
  end;
  ImpRelSintetico('T','Agrupado por Tipo de Cart�o');
end;

procedure TfrmControleCartao.gdrTabelaTitleClick(Column: TColumn);
begin
  cdsCntCartao.Close;
  fdsCntCartao.Close;
  fdsCntCartao.OrderClause := Column.FieldName;
  fdsCntCartao.Open;
  cdsCntCartao.Open;
end;

procedure TfrmControleCartao.PesqCntCartao(indexStatus: Integer; indexTipo:Integer);
begin
  with fdsCntCartao do
  begin
    cdsCntCartao.Close;
    Close;
    Conditions.Clear;

    if (rgbPeriodo.Checked = true) then
    begin
      if rgbTipoPeriodo.ItemIndex = 1 then
      begin
      Conditions.AddCondition('DATA', 'CI.DT_VENC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
      end
      else
      begin
        Conditions.AddCondition('DTCARTAO', 'CR.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);
      end;

    end;

    if (rgbReferencia.Checked = true) then
    begin
      if edtPesqRef.Text <> EmptyStr then
        Conditions.AddCondition('REFERENCIA',
          ' CI.REFERENCIA= ' + QuotedStr(edtPesqRef.Text), True);
    end;

    if (rgbFilial.Checked) and (cbxFilial.Value <> '0') then
      Conditions.AddCondition('FILIAL', ' CI.IDFILIAL = ' +
        QuotedStr(cbxFilial.Value), True);

    if (rgbCliente.Checked) and not(Trim(edtCliente.Text) = 'TODOS') then
    begin
      Conditions.AddCondition('IDCLIENTE', 'CR.IDCLIENTE = ' +
        edtCodCliente.Text, True)
    end;

    if IndexStatus= 0 then
     Conditions.AddCondition('STATUS', 'CI.POSICAO = ' +
        QuotedStr('AB'), True);

    if IndexStatus = 1 then
      Conditions.AddCondition('STATUS', 'CI.POSICAO = ' +
        QuotedStr('PG'), True);

    if IndexTipo = 0 then
      Conditions.AddCondition('PREFIXO', 'CI.PREFIXO = ' +
        QuotedStr('CT'), True);
    if indexTipo = 1 then
      Conditions.AddCondition('PREFIXO', 'CI.PREFIXO = ' +
        QuotedStr('CD'), True);

    Conditions.Apply;
    if (rgbPeriodo.Checked = true) then
    begin
      if rgbTipoPeriodo.ItemIndex = 0 then
      begin
        OrderClause := 'CR.DT_INC DESC, CI.ID DESC';
      end
      else
      begin
        OrderClause := 'CI.DT_VENC DESC, CI.ID DESC';
      end;
    end;
    Prepare;
    Open;
    cdsCntCartao.Open;
    // First;
  end;
end;

procedure TfrmControleCartao.rgbClienteCheckBoxClick(Sender: TObject);
begin
  if not(rgbCliente.Checked) then
  begin
    edtCliente.Text := 'TODOS';
    edtCodCliente.Text := 'C�DIGO';
   edtCliente.Font.Color := clGray;
  end
  else
  begin
    edtCliente.Font.Color := clBtnText;
    edtCodCliente.SetFocus;
  end;
end;

procedure TfrmControleCartao.rgbReferenciaCheckBoxClick(Sender: TObject);
begin
  if not(rgbReferencia.Checked) then
  begin
    edtPesqRef.Text := 'TODOS';
    edtPesqRef.Font.Color := clGray;
  end;
end;

procedure TfrmControleCartao.rgbStatusChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
 PesqCntCartao(NewIndex,rgbTipoCartao.ItemIndex);
end;

procedure TfrmControleCartao.rgbTipoCartaoChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  PesqCntCartao(rgbStatus.ItemIndex,NewIndex);
end;

end.
