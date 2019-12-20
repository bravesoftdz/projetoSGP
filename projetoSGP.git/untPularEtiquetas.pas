unit untPularEtiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel;

type
  TfrmPularEtiquetas = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloImprecao: TRzLabel;
    edtPularEtiquetas: TRzEdit;
    btnConfirmar: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPularEtiquetas: TfrmPularEtiquetas;

implementation

{$R *.dfm}

uses uUtils;

procedure TfrmPularEtiquetas.btnConfirmarClick(Sender: TObject);
var
  utils: TUtils;
begin

  edtPularEtiquetas.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtPularEtiquetas.Text, 'I'));

  ModalResult := mrOk;
end;

procedure TfrmPularEtiquetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPularEtiquetas.RzBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.