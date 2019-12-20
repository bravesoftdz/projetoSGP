﻿unit untRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBckgnd, RzLabel, dxGDIPlusClasses, Vcl.ExtCtrls, JvExExtCtrls,
  JvImage, RzPanel, JvComponentBase, JvCipher, DateUtils, RzDBEdit, Data.DB,
  FIBDataSet, pFIBDataSet;

type
  TfrmRegistro = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel4: TRzLabel;
    RzBackground1: TRzBackground;
    RzLabel1: TRzLabel;
    btnOK: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzLabel5: TRzLabel;
    RzLabel2: TRzLabel;
    edtHoje: TRzEdit;
    edtParam: TRzEdit;
    edtChave: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    edtCNPJ: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzBitBtn2: TRzBitBtn;
    procedure RegistrarSistema;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    Function Cript(Acao, Valor: String): String;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmRegistro: TfrmRegistro;

implementation

{$R *.dfm}

uses untData, uRegistro;
{ TfrmRegistro }

procedure TfrmRegistro.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmRegistro.btnOKClick(Sender: TObject);
begin
  RegistrarSistema;
end;

function TfrmRegistro.Cript(Acao, Valor: String): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Valor = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  // KEY = Esta será a sua chave de criptografia
  Key := 'IHNG91LNCN2EXSKPCA';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Acao = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Valor) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Valor[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
      begin
        KeyPos := KeyPos + 1
      end
      else
      begin
        KeyPos := 1;
      end;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else
  begin
    if (Acao = UpperCase('D')) then
    begin
      OffSet := StrToInt('$' + copy(Valor, 1, 2));
      SrcPos := 3;
      repeat
        SrcAsc := StrToInt('$' + copy(Valor, SrcPos, 2));
        if (KeyPos < KeyLen) Then
        begin
          KeyPos := KeyPos + 1;
        end
        else
        begin
          KeyPos := 1;
        end;
        TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        if TmpSrcAsc <= OffSet then
        begin
          TmpSrcAsc := 255 + TmpSrcAsc - OffSet;
        end
        else
        begin
          TmpSrcAsc := TmpSrcAsc - OffSet;
        end;
        Dest := Dest + Chr(TmpSrcAsc);
        OffSet := SrcAsc;
        SrcPos := SrcPos + 2;
      until (SrcPos >= Length(Valor));
    end;
  end;
  Result := Dest;
Fim:
end;

procedure TfrmRegistro.RegistrarSistema;
var
  registro: TRegistro;
  dias: string;
begin
  with DM do
  begin
    fdsConfig.Edit;
    fdsConfigPARAM.AsString := edtParam.Text;
    fdsConfigCHAVE.AsString := edtChave.Text;
    fdsConfig.Post;
    Conexao.CommitRetaining;
  end;

  // dias := registro.Cript('D',(copy(DM.fdsConfigCHAVE.AsString, 1, 5)));

  Application.MessageBox(PChar('Sistema registrado com sucesso!'),
    'Sistema Registrado', MB_OK + MB_ICONEXCLAMATION);
  Application.Terminate;
end;

procedure TfrmRegistro.RzBitBtn1Click(Sender: TObject);
begin
  with DM do
  begin
    fdsConfig.Edit;
    fdsConfigCNPJ.AsString := edtCNPJ.Text;
    fdsConfig.Post;
    Conexao.CommitRetaining;
  end;
  edtCNPJ.Enabled := False;
  edtParam.SetFocus;
end;

procedure TfrmRegistro.RzBitBtn2Click(Sender: TObject);
begin
  edtCNPJ.Enabled := True;
  edtCNPJ.SetFocus;
  DM.fdsConfig.Edit;
end;

procedure TfrmRegistro.FormCreate(Sender: TObject);
begin
  edtHoje.Text := DateToStr(Now);
  edtParam.Text := DM.fdsConfigPARAM.AsString;
  edtCNPJ.Text := trim(DM.fdsConfigCNPJ.AsString);
end;

procedure TfrmRegistro.FormShow(Sender: TObject);
begin
  edtParam.SetFocus;
end;

end.
