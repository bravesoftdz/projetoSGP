unit untTabelaPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmTabelaPrecos = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    btnTodos: TRzBitBtn;
    gdrItens: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    fdsProdutoItens: TpFIBDataSet;
    dsProdutoItens: TDataSource;
    fdsProdutoItensID: TFIBBCDField;
    fdsProdutoItensNOME: TFIBStringField;
    fdsProdutoItensREFERENCIA: TFIBStringField;
    fdsProdutoItensIDTAMANHO: TFIBBCDField;
    fdsProdutoItensIDCOR: TFIBBCDField;
    fdsProdutoItensPESO: TFIBBCDField;
    fdsProdutoItensPREC_VENDA: TFIBBCDField;
    fdsProdutoItensIDPRODUTO: TFIBBCDField;
    fdsTabelaPreco: TpFIBDataSet;
    fdsTabelaPrecoID: TFIBBCDField;
    fdsTabelaPrecoDESCRICAO1: TFIBStringField;
    fdsTabelaPrecoDESCRICAO2: TFIBStringField;
    fdsTabelaPrecoDESCRICAO3: TFIBStringField;
    fdsTabelaPrecoDESCRICAO4: TFIBStringField;
    fdsTabelaPrecoDESCRICAO5: TFIBStringField;
    fdsTabelaPrecoDESCRICAO6: TFIBStringField;
    fdsTabelaPrecoPDV_DES1: TFIBStringField;
    fdsTabelaPrecoPDV_DES2: TFIBStringField;
    fdsTabelaPrecoPDV_DES3: TFIBStringField;
    fdsTabelaPrecoPDV_DES4: TFIBStringField;
    fdsTabelaPrecoPDV_DES5: TFIBStringField;
    fdsTabelaPrecoPDV_DES6: TFIBStringField;
    fdsProdutoItensPREC_TAB1: TFIBBCDField;
    fdsProdutoItensPREC_TAB2: TFIBBCDField;
    fdsProdutoItensPREC_TAB3: TFIBBCDField;
    fdsProdutoItensPREC_TAB4: TFIBBCDField;
    fdsProdutoItensPREC_TAB5: TFIBBCDField;
    fdsProdutoItensPREC_TAB6: TFIBBCDField;
    fdsProdutoItensSALDO: TFIBBCDField;
    edtPesquisa: TRzEdit;
    fdsProdutoItensPREC_CUSTO: TFIBBCDField;
    fdsProdutoItensMARGEM_LUCRO: TFIBBCDField;
    fdsProdutoItensCOD_FABRICA: TFIBStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Pesquisar;
    procedure btnTodosClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerificaTabelaPreco;
    procedure FormCreate(Sender: TObject);
    procedure fdsProdutoItensBeforeOpen(DataSet: TDataSet);
    procedure PesquisarEAN;
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabelaPrecos: TfrmTabelaPrecos;

implementation

uses untData, untPrincipal;

{$R *.dfm}

procedure TfrmTabelaPrecos.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmTabelaPrecos.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmTabelaPrecos.btnTodosClick(Sender: TObject);
begin
    edtPesquisa.Clear;
    Pesquisar;
end;

procedure TfrmTabelaPrecos.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Pesquisar;
end;

procedure TfrmTabelaPrecos.fdsProdutoItensBeforeOpen(DataSet: TDataSet);
begin
  fdsProdutoItens.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmTabelaPrecos.FormActivate(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TfrmTabelaPrecos.FormCreate(Sender: TObject);
begin
  if frmPrincipal.custoTabPrec <> 'S' then
  begin
    gdrItens.Columns[1].Visible := False;
    gdrItens.Columns[2].Visible := False;
  end;

  if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
  begin
    gdrItens.Columns[3].Visible := False;
    VerificaTabelaPreco;
  end
  else
  begin
    gdrItens.Columns[4].Visible := False;
    gdrItens.Columns[5].Visible := False;
    gdrItens.Columns[6].Visible := False;
    gdrItens.Columns[7].Visible := False;
    gdrItens.Columns[8].Visible := False;
    gdrItens.Columns[9].Visible := False;
  end;
  fdsProdutoItens.Open;
end;

procedure TfrmTabelaPrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end
  else
    if Key = VK_ESCAPE then
    begin
      btnSelecionar.Click;
    end;

end;

procedure TfrmTabelaPrecos.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsProdutoItens.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;       //recentemente para zebrado(Vanessa)
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmTabelaPrecos.Pesquisar;
var
  sql : string;
begin
  with fdsProdutoItens do
  begin
    Close;
    ParamByName('TEXTO').AsString := edtPesquisa.Text;
    OrderClause := 'PI.NOME';
    Prepare;
    Open;
  end;
end;

procedure TfrmTabelaPrecos.PesquisarEAN;
var
  sql : string;
begin
  if not(Trim(edtPesquisa.Text) = EmptyStr) then
  begin
    with fdsProdutoItens do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('EAN', '((PI.COD_FABRICA = '+ QuotedStr(edtPesquisa.Text) + ') OR (PI.ID = ' + QuotedStr(edtPesquisa.Text) + '))', True);
      Conditions.Apply;
      OrderClause := 'PI.NOME';
      Prepare;
      Open;
    end;
  end;
  edtPesquisa.SelectAll;
end;

procedure TfrmTabelaPrecos.VerificaTabelaPreco;
var
  tempLeft : integer;
begin
  tempLeft := 8;
  fdsTabelaPreco.Open;

  if fdsTabelaPrecoPDV_DES1.AsString = 'N' then
  begin
    gdrItens.Columns[6].Visible := False;
  end
  else
  begin
    gdrItens.Columns[6].Title.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
  end;

  if fdsTabelaPrecoPDV_DES2.AsString = 'N' then
  begin
    gdrItens.Columns[7].Visible := False;
  end
  else
  begin
    gdrItens.Columns[7].Title.Caption := fdsTabelaPrecoDESCRICAO2.AsString;
  end;

  if fdsTabelaPrecoPDV_DES3.AsString = 'N' then
  begin
    gdrItens.Columns[8].Visible := False;
  end
  else
  begin
    gdrItens.Columns[8].Title.Caption := fdsTabelaPrecoDESCRICAO3.AsString;
  end;

  if fdsTabelaPrecoPDV_DES4.AsString = 'N' then
  begin
    gdrItens.Columns[9].Visible := False;
  end
  else
  begin
    gdrItens.Columns[9].Title.Caption := fdsTabelaPrecoDESCRICAO4.AsString;
  end;

  if fdsTabelaPrecoPDV_DES5.AsString = 'N' then
  begin
    gdrItens.Columns[10].Visible := False;
  end
  else
  begin
    gdrItens.Columns[10].Title.Caption := fdsTabelaPrecoDESCRICAO5.AsString;
  end;

  if fdsTabelaPrecoPDV_DES6.AsString = 'N' then
  begin
    gdrItens.Columns[11].Visible := False;
  end
  else
  begin
    gdrItens.Columns[11].Title.Caption := fdsTabelaPrecoDESCRICAO6.AsString;
  end;
end;

end.
