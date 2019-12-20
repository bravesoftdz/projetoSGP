unit untLancDadosBasicCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzButton, RzBckgnd, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB, FIBDataSet,
  pFIBDataSet, Vcl.Imaging.pngimage;

type
  TfrmLancDadosBasicCheque = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel1: TRzLabel;
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnGravar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    edtEmitente: TRzEdit;
    RzLabel3: TRzLabel;
    edtNumBanco: TRzEdit;
    edtBanco: TRzEdit;
    btnPesqItemPedido: TRzBitBtn;
    RzLabel4: TRzLabel;
    edtAgencia: TRzEdit;
    edtConta: TRzEdit;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    fdsBanco: TpFIBDataSet;
    fdsBancoDESCRICAO: TFIBStringField;
    fdsBancoNUM_BANCO: TFIBStringField;
    fdsBancoID: TFIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumBancoExit(Sender: TObject);
    procedure SelecionaBanco();
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    var
    idBanco : Integer;
  end;

var
  frmLancDadosBasicCheque: TfrmLancDadosBasicCheque;

implementation

uses untData, untPesqBanco;

{$R *.dfm}

procedure TfrmLancDadosBasicCheque.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmLancDadosBasicCheque.btnGravarClick(Sender: TObject);
var
  continuar : Boolean;
begin
  continuar := True;

  if Trim(edtEmitente.Text) = EmptyStr then
    continuar := False;

  if Trim(edtNumBanco.Text) = EmptyStr then
    continuar := False;

  if Trim(edtAgencia.Text) = EmptyStr then
    continuar := False;

  if Trim(edtConta.Text) = EmptyStr then
    continuar := False;

  if continuar then
  begin
    idBanco := fdsBancoID.AsInteger;
    ModalResult := mrOk;
  end
  else
    Application.MessageBox('Por favor preencha todos os campos. Mesmo que sejam para cheques diferentes, informe ao menos os dados de 1 e depois altere os outros em cada parcela.', 'Aten��o', MB_OK+MB_ICONWARNING);
end;

procedure TfrmLancDadosBasicCheque.edtNumBancoExit(Sender: TObject);
begin
  if edtNumBanco.Text = '' then
  begin
    SelecionaBanco;
  end
  else
  begin
    with fdsBanco do
    begin
      Close;
      ParamByName('NUMBANCO').AsString := edtNumBanco.Text;
      Prepare;
      Open;
    end;

    if fdsBanco.RecordCount = 1 then
      edtBanco.Text := fdsBancoDESCRICAO.AsString
    else
      SelecionaBanco;

  end;
end;

procedure TfrmLancDadosBasicCheque.FormActivate(Sender: TObject);
begin
  edtEmitente.SetFocus;
end;

procedure TfrmLancDadosBasicCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmLancDadosBasicCheque.SelecionaBanco;
begin
  Try
    frmPesqBanco := TfrmPesqBanco.Create(nil);
    frmPesqBanco.ShowModal;
  Finally
    if frmPesqBanco.ModalResult = mrOk then
    begin
      with fdsBanco do
      begin
        Close;
        ParamByName('NUMBANCO').AsString := frmPesqBanco.fdsBancosNUM_BANCO.AsString;
        Prepare;
        Open;
      end;
      edtNumBanco.Text := fdsBancoNUM_BANCO.AsString;
      edtBanco.Text := fdsBancoDESCRICAO.AsString;
    end;
  End;
end;

end.
