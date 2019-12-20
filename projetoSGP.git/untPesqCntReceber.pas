unit untPesqCntReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Datasnap.DBClient, Data.DB, FIBDataSet,
  pFIBDataSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzButton, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Datasnap.Provider, JvExStdCtrls,
  JvCheckBox, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Vcl.ImgList, PngImageList, JvButton, JvCtrls,
  dxGDIPlusClasses, RzCmboBx;

type
  TfrmPesqCntReceber = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblNome: TRzLabel;
    RzLabel1: TRzLabel;
    btnTodos: TRzBitBtn;
    edtNome: TRzEdit;
    edtNumero: TRzEdit;
    gdrNotas: TJvDBGrid;
    dsCntReceber: TDataSource;
    fdsCntReceberItens: TpFIBDataSet;
    fdsCntReceberItensID: TFIBBCDField;
    fdsCntReceberItensPOSICAO: TFIBStringField;
    fdsCntReceberItensPREFIXO: TFIBStringField;
    fdsCntReceberItensREFERENCIA: TFIBStringField;
    fdsCntReceberItensDT_VENC: TFIBDateField;
    fdsCntReceberItensDT_PAG: TFIBDateField;
    fdsCntReceberItensVALOR: TFIBBCDField;
    fdsCntReceberItensVALOR_PAGO: TFIBBCDField;
    fdsCntReceberItensPARCELA: TFIBStringField;
    fdsCntReceberItensBAIXA_AGRUPADA: TFIBStringField;
    fdsCntReceberItensREC: TStringField;
    fdsCntReceberItensCLIENTE: TFIBStringField;
    pnlPeriodo: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    btnPesquisar: TJvImgBtn;
    PngImageList1: TPngImageList;
    fdsCntReceberItensIDRECEBER: TFIBBCDField;
    fdsCntReceberItensACRESCIMO: TFIBBCDField;
    fdsCntReceberItensDESCONTO: TFIBBCDField;
    fdsCntReceberItensHISTORICO: TFIBStringField;
    fdsCntReceberItensENVIADO_WEB: TFIBStringField;
    fdsCntReceberItensIDFILIAL: TFIBBCDField;
    fdsCntReceberItensPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntReceberItensREC_DESC_ACRE: TFIBBCDField;
    fdsCntReceberItensREC_DINHEIRO: TFIBBCDField;
    fdsCntReceberItensID_REC_ITEM: TFIBBCDField;
    fdsCntReceberItensVALOR_JUROS_PAGO: TFIBBCDField;
    chkPeriodo: TJvCheckBox;
    btnCancelar: TRzBitBtn;
    btnSelecionar: TRzBitBtn;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    fdsVendedorVLR_TOTAL_VENDA: TFloatField;
    fdsVendedorVLR_COMISSAO: TFloatField;
    cbxVendedor: TRzComboBox;
    RzLabel2: TRzLabel;
    fdsCntReceberItensIDVENDA: TFIBBCDField;
    fdsCntReceberItensVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsCntReceberItensVALOR_JUROS: TFloatField;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    edtJurosTotal: TEdit;
    procedure gdrNotasCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gdrNotasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkPeriodoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure fdsVendedorAfterOpen(DataSet: TDataSet);
  private
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  frmPesqCntReceber: TfrmPesqCntReceber;

implementation

{$R *.dfm}

uses untData;

procedure TfrmPesqCntReceber.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqCntReceber.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqCntReceber.btnTodosClick(Sender: TObject);
begin
  fdsCntReceberItens.Close;
  fdsCntReceberItens.Conditions.Clear;
  fdsCntReceberItens.Conditions.Apply;
  fdsCntReceberItens.Open;
end;

procedure TfrmPesqCntReceber.chkPeriodoClick(Sender: TObject);
begin
  pnlPeriodo.Enabled := chkPeriodo.Checked;
end;

procedure TfrmPesqCntReceber.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnPesquisar.Click;
  end;
end;

procedure TfrmPesqCntReceber.fdsVendedorAfterOpen(DataSet: TDataSet);
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

procedure TfrmPesqCntReceber.FormShow(Sender: TObject);
begin
  fdsCntReceberItens.Open;
  fdsVendedor.Open;
  cbxVendedor.ItemIndex := 0
end;

procedure TfrmPesqCntReceber.gdrNotasCellClick(Column: TColumn);
begin
  if gdrNotas.SelectedField.FieldName = 'REC' then
  begin
    if fdsCntReceberItensPOSICAO.AsString = 'AB' then
    begin
      fdsCntReceberItens.Edit;

      if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      begin
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'N';
      end
      else
      begin
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'S';
      end;

      fdsCntReceberItens.Post;
    end;
  end;
end;

procedure TfrmPesqCntReceber.gdrNotasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
  Check: Integer;
  R: TRect;
begin
  if not odd(fdsCntReceberItens.RecNo) then
  begin
    gdrNotas.Canvas.Brush.Color := DM.gridOddColor;
    gdrNotas.Canvas.FillRect(Rect);
    gdrNotas.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if Column.FieldName = 'REC' then
  begin
    gdrNotas.Canvas.FillRect(Rect);
    Check := 0;

    if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrNotas.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TfrmPesqCntReceber.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqCntReceber.Pesquisar;
begin
  with fdsCntReceberItens do
  begin
    Close;
    Conditions.Clear;

    if Trim(edtNome.Text) <> EmptyStr then
      Conditions.AddCondition('CLIENTE', 'CL.NOME LIKE ' +
        QuotedStr('%' + Trim(edtNome.Text) + '%'), True);

    if Trim(edtNumero.Text) <> EmptyStr then
      Conditions.AddCondition('IDVENDA', 'IDVENDA = ' + edtNumero.Text, True);

    if chkPeriodo.Checked then
      Conditions.AddCondition('DTVENCIMENTO', 'DT_VENC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if not(cbxVendedor.ItemIndex = 0) then
      Conditions.AddCondition('IDVENDEDOR', ' CL.IDVENDEDOR = ' +
        cbxVendedor.Value, True);

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

end.