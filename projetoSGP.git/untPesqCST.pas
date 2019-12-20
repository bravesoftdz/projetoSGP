unit untPesqCST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, FIBDataSet,
  pFIBDataSet, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzButton, RzLabel, RzPanel,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid;

type
  TfrmPesqCST = class(TForm)
    RzDBGrid1: TRzDBGrid;
    RzPanel1: TRzPanel;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    fdsCst: TpFIBDataSet;
    Panel1: TPanel;
    btnCancelar: TRzBitBtn;
    btnSelecionar: TRzBitBtn;
    fdsCstID: TFIBBCDField;
    fdsCstCST: TFIBStringField;
    fdsCstDESCRICAO: TFIBStringField;
    dsCst: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  procedure pesqCST;
  public
    { Public declarations }
  end;

var
  frmPesqCST: TfrmPesqCST;

implementation

{$R *.dfm}

uses untData;

{ TfrmPesqCST }

procedure TfrmPesqCST.btnPesquisarClick(Sender: TObject);
begin
 pesqCST;
end;

procedure TfrmPesqCST.btnTodosClick(Sender: TObject);
begin
 with fdsCst do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmPesqCST.edtNomeChange(Sender: TObject);
begin
 pesqCST;
end;

procedure TfrmPesqCST.FormShow(Sender: TObject);
begin
  btnTodos.Click;
end;

procedure TfrmPesqCST.pesqCST;
begin
 with fdsCst do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('PESQUISA', ('(upper(DESCRICAO) LIKE ' + QuotedStr('%' + edtNome.Text + '%')+')') + 'OR' +('(upper(CST) LIKE' + QuotedStr( '%' +edtNome.Text+ '%' )+')'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

end.
