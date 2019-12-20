unit untMsgUsuarioNaoPermitido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton,
  dxGDIPlusClasses, Vcl.ExtCtrls;
type
  TMyButtons = (mbSim, mbNao, mbOk);
type
  TfrmMenssagens = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    imgInformacao: TImage;
    btnOK: TRzBitBtn;
    lblMensagem: TLabel;
    imgUserSucesso: TImage;
    imgBeckUp: TImage;
    btnNao: TRzBitBtn;
    btnSim: TRzBitBtn;
    imgSysExpiro: TImage;
    imgSairDoSistema: TImage;
    imgCertVenc: TImage;
    imgLimitCredito: TImage;
    imgCaixaVazia: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    class function Mensagem(Texto: String;Titulo:String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  frmMenssagens: TfrmMenssagens;
  LEFTBUTTONS : array[0..2] of integer = (258, 178, 97);
implementation

{$R *.dfm}

{ TForm1 }

class function TfrmMenssagens.Mensagem(Texto: String;Titulo:String; Tipo: Char;
 Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  frm :TfrmMenssagens;

begin
  frm := TfrmMenssagens.Create(nil);
  try
    frm.lblMensagem.Caption := Texto;
    frm.Caption := Titulo;

    for i:=0 to Length(Botoes)-1 do
    begin
      case (Botoes[i]) of
        mbOk: begin
                frm.BtnOK.Visible := True;
                frm.BtnOK.Left := LEFTBUTTONS[i];
              end;

        mbSim: begin
                 frm.btnSim.Visible := True;
                 frm.btnSim.Left := LEFTBUTTONS[i];
               end;

        mbNao: begin
                 frm.BtnNao.Visible := True;
                 frm.BtnNao.Left := LEFTBUTTONS[i];
               end;

     else
     begin
      frm.BtnOK.Visible := True;
      frm.BtnOK.Left := LEFTBUTTONS[i];
     end;
     end;
    end;
//    case (FocusBotao) of
//      mbNao: begin
//               frm.BtnNao.SetFocus;
//             end
//    else
//    begin
//     frm.btnSim.Visible := True;
//     frm.btnSim.Left := LEFTBUTTONS[i];
//    end;
//    end;

    case (Tipo) of
      'I': frm.imgInformacao.Visible := True;
      'L': frm.imgUserSucesso.Visible := True;
      'B': frm.imgBeckUp.Visible := True;
      'X': frm.imgSysExpiro.Visible:=True;
      'S':  frm.imgSairDoSistema.Visible:=True;
      'V': begin
            frm.ClientHeight:= 170;
            frm.imgCertVenc.Visible:=true;
            end;
      'T': frm.imgLimitCredito.Visible:= True;
      'Z':  begin
              frm.ClientHeight:= 125;
              frm.imgCaixaVazia.Visible := True;
            end;
      //'C': frm.imgCuidado.Visible := True;
      //'E': frm.imgErro.Visible := True;
    else
        //frm.imgInformacao.Visible := True;
    end;

     frm.ShowModal;

    case (frm.ModalResult) of
      mrOk, mrYes : result := True;
      else
        result := False;
    end;

  finally
    if (frm<>nil) then
      FreeAndNil(frm);
  end;
end;

end.
