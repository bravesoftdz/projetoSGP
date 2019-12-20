unit untPesqFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, StdCtrls, Mask, RzEdit, RzButton,
  RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmPesqFornecedor = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    dsFornecedor: TDataSource;
    fdsFornecedor: TpFIBDataSet;
    RzBackground1: TRzBackground;
    JvDBGrid1: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    fdsFornecedorID: TFIBBCDField;
    fdsFornecedorNOME: TFIBStringField;
    fdsFornecedorRAZAOSOCIAL: TFIBStringField;
    btnCadastrar: TRzBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure Pesquisar;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCadastrarClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqFornecedor: TfrmPesqFornecedor;

implementation

uses untData, untCadFornecedor;

{$R *.dfm}

procedure TfrmPesqFornecedor.btnCadastrarClick(Sender: TObject);
begin
  if frmCadFornecedor = nil then
    frmCadFornecedor := TfrmCadFornecedor.Create(nil);
end;

procedure TfrmPesqFornecedor.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqFornecedor.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqFornecedor.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqFornecedor.btnTodosClick(Sender: TObject);
var
  sql: string;
begin
  fdsFornecedor.Close;
  fdsFornecedor.SelectSQL.Clear;
  sql := 'SELECT ID, NOME, RAZAOSOCIAL FROM FORNECEDOR WHERE STATUS = '+ QuotedStr('A');
  fdsFornecedor.SelectSQL.Add(sql);
  fdsFornecedor.OrderClause := 'NOME';
  fdsFornecedor.Prepare;
  fdsFornecedor.Open;
  fdsFornecedor.Last;
  fdsFornecedor.First;
end;

procedure TfrmPesqFornecedor.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Pesquisar;
    Key := #0;
  end;
end;

procedure TfrmPesqFornecedor.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmPesqFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmPesqFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (ActiveControl = JvDBGrid1) or (fdsFornecedor.RecordCount = 1) then
  begin
    if Key = #13 then
    begin
      btnSelecionar.Click;
    end;
  end;
end;

procedure TfrmPesqFornecedor.JvDBGrid1DblClick(Sender: TObject);
begin
  if fdsFornecedor.RecordCount > 0 then
    btnSelecionar.Click;
end;

procedure TfrmPesqFornecedor.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsFornecedor.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPesqFornecedor.Pesquisar;
var
  sql: string;
begin
  fdsFornecedor.Close;
  fdsFornecedor.SelectSQL.Clear;
  sql := 'SELECT ID, NOME, RAZAOSOCIAL FROM FORNECEDOR WHERE UPPER(NOME) LIKE '
    + QuotedStr('%' + edtNome.Text + '%')+ ' AND STATUS = '+ QuotedStr('A');
  fdsFornecedor.SelectSQL.Add(sql);
  fdsFornecedor.OrderClause := 'NOME';
  fdsFornecedor.Prepare;
  fdsFornecedor.Open;
end;

end.
