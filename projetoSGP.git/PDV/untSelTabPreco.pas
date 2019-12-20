unit untSelTabPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, Vcl.StdCtrls,
  RzLabel, Vcl.ExtCtrls, RzPanel, Data.DB, FIBDataSet, pFIBDataSet;

type
  TfrmSelTabPreco = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel4: TRzLabel;
    lblDescTab1: TRzLabel;
    lblDescTab2: TRzLabel;
    rbtValor1: TRzRadioButton;
    rbtValor2: TRzRadioButton;
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
    rbtValor3: TRzRadioButton;
    rbtValor4: TRzRadioButton;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rbtValor1KeyPress(Sender: TObject; var Key: Char);
    procedure rbtValor2KeyPress(Sender: TObject; var Key: Char);
    procedure rbtValor3KeyPress(Sender: TObject; var Key: Char);
    procedure rbtValor4KeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelTabPreco: TfrmSelTabPreco;

implementation

{$R *.dfm}

uses untData;

procedure TfrmSelTabPreco.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSelTabPreco.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSelTabPreco.FormActivate(Sender: TObject);
begin
  fdsTabelaPreco.Open;
  lblDescTab1.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
  lblDescTab2.Caption := fdsTabelaPrecoDESCRICAO2.AsString;

end;

procedure TfrmSelTabPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmSelTabPreco.rbtValor1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmSelTabPreco.rbtValor2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmSelTabPreco.rbtValor3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmSelTabPreco.rbtValor4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmSelTabPreco.RzBitBtn1Click(Sender: TObject);
begin
 ModalResult:= mrCancel;
end;

end.
