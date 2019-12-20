unit untPesqVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmPesqVendedor = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    edtNome: TRzEdit;
    JvDBGrid1: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    dsVededores: TDataSource;
    fdsVendedores: TpFIBDataSet;
    fdsVendedoresID: TFIBBCDField;
    fdsVendedoresNOME: TFIBStringField;
    fdsVendedoresTELEFONE: TFIBStringField;
    procedure btnTodosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Pesquisar;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqVendedor: TfrmPesqVendedor;

implementation

uses untData;

{$R *.dfm}

procedure TfrmPesqVendedor.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqVendedor.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqVendedor.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqVendedor.btnTodosClick(Sender: TObject);
var
  sql : string;
begin
  fdsVendedores.Close;
  fdsVendedores.SelectSQL.Clear;
  sql := 'SELECT ID, NOME, TELEFONE FROM VENDEDOR';
  fdsVendedores.SelectSQL.Add(sql);
  fdsVendedores.OrderClause := 'NOME';
  fdsVendedores.Prepare;
  fdsVendedores.Open;
end;

procedure TfrmPesqVendedor.edtNomeChange(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqVendedor.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmPesqVendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end
  else
    if Key = VK_ESCAPE then
     begin
        btnCancelar.Click;
     end;
end;

procedure TfrmPesqVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmPesqVendedor.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsVendedores.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmPesqVendedor.Pesquisar;
var
  sql : string;
begin
  fdsVendedores.Close;
  fdsVendedores.SelectSQL.Clear;
  sql := 'SELECT ID, NOME, TELEFONE FROM VENDEDOR WHERE UPPER(NOME) LIKE '+ QuotedStr(edtNome.Text + '%');
  fdsVendedores.SelectSQL.Add(sql);
  fdsVendedores.OrderClause := 'NOME';
  fdsVendedores.Prepare;
  fdsVendedores.Open;
end;

end.
