unit untWebMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, cxGraphics, Menus,
  ExtCtrls, SHDocVw, OleCtrls, dxGDIPlusClasses, JvExExtCtrls, JvImage, RzPanel,
  StdCtrls, RzLabel, MSHTML, Buttons;

type
  TfrmWebMapa = class(TForm)
    WebBrowser1: TWebBrowser;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzPanel2: TRzPanel;
    lblNome: TRzLabel;
    lblEndereco: TRzLabel;
    lblBairroCidade: TRzLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
  var
    ConsultaEndereco, Map: string;

    complete: Boolean;
  end;

var
  frmWebMapa: TfrmWebMapa;

implementation

{$R *.dfm}

procedure TfrmWebMapa.FormActivate(Sender: TObject);

begin
  complete := False;
  Map := ExtractFilePath(Application.ExeName) + 'MapaNovo.html';
  WebBrowser1.Navigate(Map);

end;

procedure TfrmWebMapa.Timer1Timer(Sender: TObject);
begin
  if complete then
  begin
    Timer2.Enabled := True;
    Timer1.Enabled := False;
  end;
end;

procedure TfrmWebMapa.Timer2Timer(Sender: TObject);
begin

  If lblEndereco.Caption <> '' Then
    ConsultaEndereco := ConsultaEndereco + StringReplace(lblEndereco.Caption,
      ' ', '+', [rfReplaceAll]) + ',';
  If lblBairroCidade.Caption <> '' Then
    ConsultaEndereco := ConsultaEndereco +
      StringReplace(lblBairroCidade.Caption, ' ', '+', [rfReplaceAll]);

  Timer2.Enabled := False;
  with WebBrowser1.Document as IHTMLDocument2 do
    // parentWindow.execScript('codeAddress("Rua Academico Jose Luiz, Itaperuna-RJ, Brasil")', 'javascript');
    parentWindow.execScript('codeAddress("' + ConsultaEndereco + '")',
      'javascript');
end;

procedure TfrmWebMapa.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  complete := True;
end;

end.
