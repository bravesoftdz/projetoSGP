unit uRegistro;

interface

uses
  RzDBEdit, sysUtils, StrUtils, Windows, Graphics;

Type

  TRegistro = class

  public

    function Cript(Acao, Valor: String): String;
    function VerificaChave(): Boolean;

  end;

implementation

{ TResgistro }

uses untData;

function TRegistro.Cript(Acao, Valor: String): String;
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
  // KEY = Esta ser� a sua chave de criptografia
  Key := 'IHNG91LNCN2EXSKP';
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

function TRegistro.VerificaChave(): Boolean;
var
  chave, cnpj, newCNPJ: string;
  dtLast, dtAtual, dtAtual2, dtExpira, valorLastOpen, valorExpirar: Double;
  Valor: Integer;
begin
  try
    if Trim(DM.fdsConfigPARAM.AsString) = EmptyStr then
    begin
      Result := False;
    end
    else
    begin

      chave := DM.fdsConfigCHAVE.AsString;
      chave := Cript('D', chave);

      dtLast := StrToFloat(Cript('D', DM.fdsConfigPARAM.AsString));
      // Param � data que usou gerador de chave , para gerar a chave
      dtAtual := Int(StrToDate(DM.fdsConfigHOJE.AsString));
      // Data do �limo dia que o sitema foi aberto
      dtExpira := StrToFloat(copy(chave, 1, 5)); // Data para expirar o sistema
      cnpj := copy(chave, 6, Length(chave) - 1);
      newCNPJ := copy(DM.fdsConfigCNPJ.AsString, 1, 1) +
        copy(DM.fdsConfigCNPJ.AsString, 7, 1) +
        copy(DM.fdsConfigCNPJ.AsString, 14, 1);

      valorLastOpen := dtAtual - dtLast;
      valorExpirar := dtExpira - dtAtual;

      if (valorLastOpen >= -1) then
      begin
        if (valorExpirar <= 0) or (cnpj <> newCNPJ) then
        begin
          DM.fdsConfig.Edit;
          DM.fdsConfigPARAM.AsString := EmptyStr;
          DM.fdsConfig.Post;
          DM.Conexao.CommitRetaining;

          Result := False;
        end
        else
        begin
          DM.fdsConfig.Edit;
          DM.fdsConfigPARAM.AsString := Cript('C', FloatToStr(Int(now)));
          DM.fdsConfig.Post;
          DM.Conexao.CommitRetaining;
          Result := True;
        end;
      end
      else
      begin
        DM.fdsConfig.Edit;
        DM.fdsConfigPARAM.AsString := EmptyStr;
        DM.fdsConfig.Post;
        DM.Conexao.CommitRetaining;
        Result := False;
      end;
    end;
  except
    DM.fdsConfig.Edit;
    DM.fdsConfigPARAM.AsString := EmptyStr;
    DM.fdsConfig.Post;
    DM.Conexao.CommitRetaining;
    Result := False;
  end;
end;

end.
