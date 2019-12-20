unit untNFeCartaCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzEdit,
  RzBckgnd, RzLabel, dxGDIPlusClasses, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel;

type
  TfrmNFeCartaCorrecao = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloTotal: TRzLabel;
    lblTotal: TRzLabel;
    lblRetorno: TRzLabel;
    RzBackground1: TRzBackground;
    mmoCorrecaoTexto: TRzMemo;
    btnCancelar: TRzBitBtn;
    btnConfirmar: TRzBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFeCartaCorrecao: TfrmNFeCartaCorrecao;

implementation

{$R *.dfm}

procedure TfrmNFeCartaCorrecao.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmNFeCartaCorrecao.btnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
