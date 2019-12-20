unit untPesqTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel, RzBckgnd;

type
  TfrmPesqTransportadora = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    JvDBGrid1: TJvDBGrid;
    dsTransportadora: TDataSource;
    fdsTransportadora: TpFIBDataSet;
    btnCancelar: TRzBitBtn;
    btnSelecionar: TRzBitBtn;
    fdsTransportadoraID: TFIBBCDField;
    fdsTransportadoraRAZAO_SOCIAL: TFIBStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  frmPesqTransportadora: TfrmPesqTransportadora;

implementation

{$R *.dfm}

procedure TfrmPesqTransportadora.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqTransportadora.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqTransportadora.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqTransportadora.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Pesquisar;
    Key := #0;
  end;
end;

procedure TfrmPesqTransportadora.Pesquisar;
var
  sql: string;
begin
  fdsTransportadora.Close;
  fdsTransportadora.ParamByName('RAZAO_SOCIAL').AsString := edtNome.Text;
  fdsTransportadora.Prepare;
  fdsTransportadora.Open;
end;

end.
