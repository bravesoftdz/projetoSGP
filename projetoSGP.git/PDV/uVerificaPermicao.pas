unit uVerificaPermicao;

interface

  uses
    sysUtils, StrUtils, Controls;

  Type

  TVerificaPermicao = class

  public
    function Verifica(campo : string): Boolean;

  end;

implementation

uses untData, untLogin, untPrincipal;

{ TVerificaPermicao }

function TVerificaPermicao.Verifica(campo: string): Boolean;
var
  temPermicao : Boolean;
  idUsuarioTemp : Integer;
begin

  temPermicao := False;

  if DM.fdsUsuarioPermic.FieldByName(campo).AsString <> 'S' then
  begin
    try
       frmLogin := TfrmLogin.Create(nil);
       frmLogin.ShowModal;
    finally
       if frmLogin.ModalResult = mrOk then
       begin
          idUsuarioTemp := frmLogin.fdsUserID.AsInteger;

          with dm.fdsUsuarioPermic do
          begin
            Close;
            ParamByName('IDUSUARIO').AsInteger := idUsuarioTemp;
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            Open;
          end;

          if DM.fdsUsuarioPermic.FieldByName(campo).AsString = 'S' then
            temPermicao := True
          else
            temPermicao := False;

          with dm.fdsUsuarioPermic do
          begin
            Close;
            ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            Open;
          end;
       end
       else
       begin
         temPermicao := False;
       end;
    end;
  end
  else
    temPermicao := True;

  Result := temPermicao;

end;

end.