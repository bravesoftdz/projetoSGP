unit untPesqTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls,
  JvImage, RzButton, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmPesqTamanho = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzPanel1: TRzPanel;
    imgPrincipal: TJvImage;
    lblTitulo: TRzLabel;
    lblNome: TRzLabel;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    JvDBGrid1: TJvDBGrid;
    fdsTamanho: TpFIBDataSet;
    dsCor: TDataSource;
    fdsTamanhoID: TFIBBCDField;
    fdsTamanhoDT_INC: TFIBDateField;
    fdsTamanhoDT_ALT: TFIBDateField;
    fdsTamanhoSTATUS: TFIBStringField;
    fdsTamanhoNOME: TFIBStringField;
    fdsTamanhoREFERENCIA: TFIBStringField;
    fdsTamanhoALTURA_I: TFIBBCDField;
    fdsTamanhoLARGURA_I: TFIBBCDField;
    fdsTamanhoPROFUNDIDADE_I: TFIBBCDField;
    fdsTamanhoALTURA_E: TFIBBCDField;
    fdsTamanhoLARGURA_E: TFIBBCDField;
    fdsTamanhoPROFUNDIDADE_E: TFIBBCDField;
    fdsTamanhoENVIADO_WEB: TFIBStringField;
    procedure FormActivate(Sender: TObject);
    procedure Pesquisar;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqTamanho: TfrmPesqTamanho;

implementation

uses untData, untPrincipal;

{$R *.dfm}

procedure TfrmPesqTamanho.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqTamanho.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqTamanho.btnTodosClick(Sender: TObject);
var
  sql: string;
begin
  fdsTamanho.Close;
  fdsTamanho.SelectSQL.Clear;
  sql := 'SELECT * FROM TAMANHO WHERE STATUS <> ' + QuotedStr('I');
  fdsTamanho.SelectSQL.Add(sql);
  fdsTamanho.OrderClause := 'NOME';
  fdsTamanho.Prepare;
  fdsTamanho.Open;
end;

procedure TfrmPesqTamanho.edtNomeChange(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqTamanho.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;

  if frmPrincipal.autopecas = 'S' then
  begin
    frmPesqTamanho.Caption := 'Pesquisa de Aplica��es';
    lblTitulo.Caption := 'Pesquisa de Aplica��es';
    imgPrincipal.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\content\Veiculo_AutoPecas_64x64.png');
  end;

end;

procedure TfrmPesqTamanho.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmPesqTamanho.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsTamanho.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPesqTamanho.Pesquisar;
var
  sql: string;
begin
  fdsTamanho.Close;
  fdsTamanho.SelectSQL.Clear;
  sql := 'SELECT * FROM TAMANHO WHERE UPPER(NOME) LIKE ' +
    QuotedStr(edtNome.Text + '%') + ' AND STATUS <> ' + QuotedStr('I');
  fdsTamanho.SelectSQL.Add(sql);
  fdsTamanho.OrderClause := 'NOME';
  fdsTamanho.Prepare;
  fdsTamanho.Open;
end;

end.