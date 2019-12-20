unit untTipoCartaoCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzBckgnd, RzButton;

type
  TfrmTipoCartaoCredito = class(TForm)
    RzBackground1: TRzBackground;
    imgCartaoDebito: TJvImage;
    imgCartaoCredito: TJvImage;
    RzLabel1: TRzLabel;
    btnCancelar: TRzBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure imgCartaoDebitoClick(Sender: TObject);
    procedure imgCartaoCreditoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoCartaoCredito: TfrmTipoCartaoCredito;

implementation

{$R *.dfm}

uses untVendaFinalizacao, untPagIncReceber;

procedure TfrmTipoCartaoCredito.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmTipoCartaoCredito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    imgCartaoDebitoClick(frmTipoCartaoCredito);

  if Key = VK_F5 then
    imgCartaoCreditoClick(frmTipoCartaoCredito);
end;

procedure TfrmTipoCartaoCredito.imgCartaoDebitoClick(Sender: TObject);
begin
  //if Assigned(frmVendaFinalizacao) then
  if frmVendaFinalizacao<>nil then
  begin
    frmVendaFinalizacao.tipoCartao := 'CD';
  end;
  //if Assigned(frmPagIncReceber) then
  if frmPagIncReceber<>nil then
  begin
    frmPagIncReceber.tipoCartao := 'CD';
  end;

  //aquique vou colocar para informar a bandeira do cart�o
  ModalResult := mrOk;
end;

procedure TfrmTipoCartaoCredito.imgCartaoCreditoClick(Sender: TObject);
begin
  //if Assigned(frmVendaFinalizacao) then
  if frmVendaFinalizacao<>nil then
  begin
    frmVendaFinalizacao.tipoCartao := 'CT';
  end;
  //if Assigned(frmPagIncReceber) then
  if frmPagIncReceber<>nil then
  begin
    frmPagIncReceber.tipoCartao := 'CT';
  end;

  ModalResult := mrOk;
end;

end.
