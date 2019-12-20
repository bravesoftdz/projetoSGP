unit untPesqVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvCheckBox, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, RzPanel,
  Vcl.Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, RzBckgnd, Data.DB, FIBDataSet, pFIBDataSet,
  Vcl.ImgList, PngImageList, Datasnap.Provider, Datasnap.DBClient,
  System.DateUtils;

type
  TfrmPesqVendas = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    RzLabel1: TRzLabel;
    btnTodos: TRzBitBtn;
    edtNome: TRzEdit;
    edtNumero: TRzEdit;
    pnlPeriodo: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    gbxVendas: TRzGroupBox;
    gdrVendas: TJvDBGrid;
    RzGroupBox1: TRzGroupBox;
    gdrItens: TJvDBGrid;
    PngImageList1: TPngImageList;
    btnPesquisar: TJvImgBtn;
    fdsVendas: TpFIBDataSet;
    fdsVendasID: TFIBBCDField;
    fdsVendasIDFILIAL: TFIBBCDField;
    fdsVendasIDCAIXA: TFIBBCDField;
    fdsVendasDT_INC: TFIBDateField;
    fdsVendasSTATUS: TFIBStringField;
    fdsVendasIDCLIENTE: TFIBBCDField;
    fdsVendasIDVENDEDOR: TFIBBCDField;
    fdsVendasIDFORMA_PAG: TFIBBCDField;
    fdsVendasVLR_TOTITEM: TFIBBCDField;
    fdsVendasVLR_DESCONTO: TFIBBCDField;
    fdsVendasVLR_ENTRADA: TFIBBCDField;
    fdsVendasVLR_FRETE: TFIBBCDField;
    fdsVendasVLR_TOTAL: TFIBBCDField;
    fdsVendasVLR_VENDA: TFIBBCDField;
    fdsVendasPESO: TFIBBCDField;
    fdsVendasPREFIXO: TFIBStringField;
    fdsVendasDT_FECHAMENTO: TFIBDateField;
    fdsVendasSUBTRIBUTARIA: TFIBBCDField;
    fdsVendasENVIADO_WEB: TFIBStringField;
    fdsVendasENTREGAR: TFIBStringField;
    fdsVendasOBS: TFIBStringField;
    fdsVendasTOT_PARCELA: TFIBSmallIntField;
    fdsVendasVLR_RETORNADO: TFIBBCDField;
    fdsVendasDT_PAGAMENTO: TFIBDateField;
    fdsVendasVISUALIZADO: TFIBStringField;
    fdsVendasCODIGO_NFCE: TFIBIntegerField;
    fdsVendasTIPO: TFIBStringField;
    fdsVendasCHAVE_CONSULTA: TFIBStringField;
    fdsVendasCLIENTE: TFIBStringField;
    fdsVendasFORMA_PAG: TFIBStringField;
    fdsVendasVENDEDOR: TFIBStringField;
    fdsVendaItens: TpFIBDataSet;
    fdsVendaItensIDVENDA: TFIBBCDField;
    fdsVendaItensITEM: TFIBSmallIntField;
    fdsVendaItensIDPROD_ITEM: TFIBBCDField;
    fdsVendaItensDT_INC: TFIBDateField;
    fdsVendaItensQTN: TFIBBCDField;
    fdsVendaItensVLR_UNITARIO: TFIBBCDField;
    fdsVendaItensVLR_DESC_ACRE: TFIBBCDField;
    fdsVendaItensVLR_TOTAL: TFIBBCDField;
    fdsVendaItensPESO: TFIBBCDField;
    fdsVendaItensQTN_RETORNO: TFIBIntegerField;
    fdsVendaItensMOTIVO_RETORNO: TFIBStringField;
    fdsVendaItensENVIADO_WEB: TFIBStringField;
    fdsVendaItensIDFILIAL: TFIBBCDField;
    fdsVendaItensENTREGAR: TFIBStringField;
    fdsVendaItensTIPO_DESC_ACRE: TFIBStringField;
    fdsVendaItensPRODUTO: TFIBStringField;
    fdsVendaItensTIPO_RETORNO: TFIBStringField;
    dsVendas: TDataSource;
    dsVendaItens: TDataSource;
    cdsVendas: TClientDataSet;
    cdsVendasID: TBCDField;
    cdsVendasIDFILIAL: TBCDField;
    cdsVendasIDCAIXA: TBCDField;
    cdsVendasDT_INC: TDateField;
    cdsVendasSTATUS: TStringField;
    cdsVendasIDCLIENTE: TBCDField;
    cdsVendasIDVENDEDOR: TBCDField;
    cdsVendasIDFORMA_PAG: TBCDField;
    cdsVendasVLR_TOTITEM: TBCDField;
    cdsVendasVLR_DESCONTO: TBCDField;
    cdsVendasVLR_ENTRADA: TBCDField;
    cdsVendasVLR_FRETE: TBCDField;
    cdsVendasVLR_TOTAL: TBCDField;
    cdsVendasVLR_VENDA: TBCDField;
    cdsVendasPESO: TBCDField;
    cdsVendasPREFIXO: TStringField;
    cdsVendasDT_FECHAMENTO: TDateField;
    cdsVendasSUBTRIBUTARIA: TBCDField;
    cdsVendasENVIADO_WEB: TStringField;
    cdsVendasENTREGAR: TStringField;
    cdsVendasOBS: TStringField;
    cdsVendasTOT_PARCELA: TSmallintField;
    cdsVendasVLR_RETORNADO: TBCDField;
    cdsVendasDT_PAGAMENTO: TDateField;
    cdsVendasVISUALIZADO: TStringField;
    cdsVendasCODIGO_NFCE: TIntegerField;
    cdsVendasTIPO: TStringField;
    cdsVendasCHAVE_CONSULTA: TStringField;
    cdsVendasCLIENTE: TStringField;
    cdsVendasFORMA_PAG: TStringField;
    cdsVendasVENDEDOR: TStringField;
    cdsVendasSELECIONAR: TStringField;
    cdsVendasSEL: TStringField;
    fdsVendaItensCOD_FABRICA: TFIBStringField;
    fdsVendasNUMERO_PROTOCOLO: TFIBStringField;
    fdsVendasTIPO_DESC_ACRESC: TFIBStringField;
    cdsVendasTIPO_DESC_ACRESC: TStringField;
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure fdsVendasAfterOpen(DataSet: TDataSet);
    procedure cdsVendasAfterScroll(DataSet: TDataSet);
    procedure gdrVendasCellClick(Column: TColumn);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure fdsVendasBeforeOpen(DataSet: TDataSet);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  frmPesqVendas: TfrmPesqVendas;

implementation

{$R *.dfm}

uses untData, uUtils;

procedure TfrmPesqVendas.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqVendas.btnSelecionarClick(Sender: TObject);
begin
  cdsVendas.First;
  ModalResult := mrOk;
end;

procedure TfrmPesqVendas.btnTodosClick(Sender: TObject);
begin
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;
  edtNome.Clear;
  edtNumero.Clear;
  Pesquisar;
end;

procedure TfrmPesqVendas.cdsVendasAfterScroll(DataSet: TDataSet);
begin
  with fdsVendaItens do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := cdsVendasID.AsInteger;
    ParamByName('IDFILIAL').AsInteger := cdsVendasIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;
end;

procedure TfrmPesqVendas.fdsVendasAfterOpen(DataSet: TDataSet);
begin
  fdsVendas.First;
  cdsVendas.Open;
  cdsVendas.EmptyDataSet;
  if not(fdsVendas.IsEmpty) then
  begin
    while not(fdsVendas.Eof) do
    begin
      cdsVendas.Append;
      cdsVendasID.AsInteger := fdsVendasID.AsInteger;
      cdsVendasIDFILIAL.AsInteger := fdsVendasIDFILIAL.AsInteger;
      cdsVendasIDCAIXA.AsInteger := fdsVendasIDCAIXA.AsInteger;
      cdsVendasDT_INC.AsDateTime := fdsVendasDT_INC.AsDateTime;
      cdsVendasCLIENTE.AsString := fdsVendasCLIENTE.AsString;
      cdsVendasVLR_TOTAL.AsFloat := fdsVendasVLR_TOTAL.AsFloat;
      cdsVendasVLR_DESCONTO.AsFloat := fdsVendasVLR_DESCONTO.AsFloat;
      cdsVendasVENDEDOR.AsString := fdsVendasVENDEDOR.AsString;
      cdsVendasTIPO_DESC_ACRESC.AsString := fdsVendasTIPO_DESC_ACRESC.AsString;
      cdsVendas.Post;
      fdsVendas.Next;
    end;
  end;
  fdsVendas.Close;
  cdsVendas.First;
end;

procedure TfrmPesqVendas.fdsVendasBeforeOpen(DataSet: TDataSet);
begin
  fdsVendas.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmPesqVendas.FormCreate(Sender: TObject);
begin
  cdsVendas.CreateDataSet;
end;

procedure TfrmPesqVendas.FormShow(Sender: TObject);
begin
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;
  Pesquisar;
end;

procedure TfrmPesqVendas.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsVendaItens.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPesqVendas.gdrVendasCellClick(Column: TColumn);
begin
  if gdrVendas.SelectedField.FieldName = 'SEL' then
  begin
    cdsVendas.Edit;

    if cdsVendasSELECIONAR.AsString = 'S' then
    begin
      cdsVendasSELECIONAR.AsString := 'N';
    end
    else
    begin
      cdsVendasSELECIONAR.AsString := 'S';
    end;
    cdsVendas.Post;
  end;
end;

procedure TfrmPesqVendas.gdrVendasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if not odd(cdsVendas.RecNo) then
  begin
    gdrVendas.Canvas.Brush.Color := DM.gridOddColor;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if Column.FieldName = 'SEL' then
  begin
    gdrVendas.Canvas.FillRect(Rect);
    Check := 0;

    if cdsVendasSELECIONAR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrVendas.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmPesqVendas.Pesquisar;
var
  utils: TUtils;
  numVenda: Double;
begin
  fdsVendaItens.Close;

  with fdsVendas do
  begin
    Close;
    Conditions.Clear;

    if not(Trim(edtNumero.Text) = EmptyStr) then
    begin
      numVenda := utils.ValidaInteiroFloat(Trim(edtNumero.Text), 'I');

      if numVenda > 0 then
        Conditions.AddCondition('ID',
          ' V.ID = ' + QuotedStr(FloatToStr(numVenda)), True);
    end;

    Conditions.AddCondition('DTVENDA', 'V.DT_INC BETWEEN ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
      QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if not(Trim(edtNome.Text) = EmptyStr) then
    begin
      Conditions.AddCondition('NOMECLIENTE',
        'C.NOME LIKE ' + QuotedStr('%' + Trim(edtNome.Text) + '%'), True)
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmPesqVendas.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

end.