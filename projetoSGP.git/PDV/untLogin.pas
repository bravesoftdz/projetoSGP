unit untLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzButton, StdCtrls, Mask, RzEdit, RzLabel,
  RzBckgnd, JvComponentBase, JvCipher, Vcl.Imaging.pngimage;

type
  TfrmLogin = class(TForm)
    RzBackground1: TRzBackground;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    edtLogin: TRzEdit;
    edtSenha: TRzEdit;
    btnOK: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel4: TRzLabel;
    fdsUser: TpFIBDataSet;
    fdsUserID: TFIBBCDField;
    fdsUserNOME: TFIBStringField;
    fdsUserLOGIN: TFIBStringField;
    fdsUserSENHA: TFIBStringField;
    JvVigenereCipher1: TJvVigenereCipher;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure VerificaLogin;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  liberado: Boolean;

implementation

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
begin
  if liberado = False then
  begin
    VerificaLogin;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if liberado = False then
    ModalResult := mrCancel;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  liberado := False;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmLogin.VerificaLogin;
begin

  JvVigenereCipher1.Key := 'xoxota';
  JvVigenereCipher1.Decoded := edtSenha.Text;

  with fdsUser do
  begin
    Close;
    ParamByName('LOGIN').AsString := Trim(edtLogin.Text);
    ParamByName('SENHA').AsString := Trim(JvVigenereCipher1.Encoded);
    Prepare;
    Open;
  end;
  if not(fdsUser.IsEmpty) then
  begin
    liberado := True;
    ModalResult := mrOK;

  end
  else
  begin
    liberado := False;
    Application.MessageBox('Usu�rio ou senha inv�lido. Tente novamente.','Acesso negado',MB_OK+MB_ICONERROR);
    edtLogin.Clear;
    edtSenha.Clear;
    edtLogin.SetFocus;
  end;
end;

end.
