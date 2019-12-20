unit untCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel, Data.DB, FIBDataSet, pFIBDataSet, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzBckgnd;

type
  TfrmCFOP = class(TForm)
    RzPanel1: TRzPanel;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    JvDBGrid1: TJvDBGrid;
    fdsCFOP: TpFIBDataSet;
    dsCFOP: TDataSource;
    fdsCFOPID: TFIBBCDField;
    fdsCFOPDT_INC: TFIBDateField;
    fdsCFOPCODIGO_CFOP: TFIBStringField;
    fdsCFOPNOME: TFIBStringField;
    fdsCFOPDESCRICAO: TFIBMemoField;
    fdsCFOPENVIADO_WEB: TFIBStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure PesqCFOP;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCFOP: TfrmCFOP;

implementation

{$R *.dfm}

uses untData;

procedure TfrmCFOP.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCFOP.btnPesquisarClick(Sender: TObject);
begin
  PesqCFOP;
end;

procedure TfrmCFOP.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCFOP.edtNomeChange(Sender: TObject);
begin
  PesqCFOP;
end;

procedure TfrmCFOP.PesqCFOP;
begin
  with fdsCFOP do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('PESQUISA', ('(upper(NOME) LIKE ' + QuotedStr('%' + edtNome.Text + '%')+')') + 'OR' +('(upper(CODIGO_CFOP) LIKE' + QuotedStr( '%' +edtNome.Text+ '%' )+')'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

end;

end.
