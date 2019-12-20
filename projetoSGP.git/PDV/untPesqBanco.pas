unit untPesqBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask,
  RzEdit, RzDBEdit, RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage,
  RzButton, RzPanel, DB, FIBDataSet, pFIBDataSet, Vcl.Imaging.pngimage;

type
  TfrmPesqBanco = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    btnTodos: TRzBitBtn;
    lblNome: TRzLabel;
    btnPesquisar: TRzBitBtn;
    JvDBGrid1: TJvDBGrid;
    fdsBancos: TpFIBDataSet;
    dsBanco: TDataSource;
    edtNome: TRzEdit;
    fdsBancosDESCRICAO: TFIBStringField;
    fdsBancosNUM_BANCO: TFIBStringField;
    fdsBancosID: TFIBBCDField;
    procedure FormActivate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure Pesquisar;
    procedure btnTodosClick(Sender: TObject);
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
  frmPesqBanco: TfrmPesqBanco;

implementation

uses untData;

{$R *.dfm}

procedure TfrmPesqBanco.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqBanco.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqBanco.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqBanco.btnTodosClick(Sender: TObject);
var
  sql : string;
begin
  fdsBancos.Close;
  fdsBancos.SelectSQL.Clear;
  sql := 'SELECT ID, DESCRICAO, NUM_BANCO FROM BANCO';
  fdsBancos.SelectSQL.Add(sql);
  fdsBancos.OrderClause := 'DESCRICAO';
  fdsBancos.Prepare;
  fdsBancos.Open;
end;

procedure TfrmPesqBanco.edtNomeChange(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqBanco.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmPesqBanco.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmPesqBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmPesqBanco.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsBancos.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmPesqBanco.Pesquisar;
var
  sql : string;
begin
  fdsBancos.Close;
  fdsBancos.SelectSQL.Clear;
  sql := 'SELECT ID, DESCRICAO, NUM_BANCO FROM BANCO WHERE UPPER(DESCRICAO) LIKE '+ QuotedStr('%' + edtNome.Text + '%');
  fdsBancos.SelectSQL.Add(sql);
  fdsBancos.OrderClause := 'DESCRICAO';
  fdsBancos.Prepare;
  fdsBancos.Open;
end;

end.
