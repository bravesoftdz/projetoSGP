unit uUtils;

interface

uses
  RzEdit, RzDBEdit, sysUtils, StrUtils,Graphics,Windows,System.Classes,Controls,
  Dialogs,Forms,Winapi.Messages;

Type
  TLetraNoEdit = record
    key: Char;
    letra: String;
  end;
Type
  TlCredito = record
    Bloqueado: Boolean;
    vDevedor: Double;
  end;

  TUtils = class
  private const
    textEmptyColor: TColor = $000404FF;
    textNormalColor: TColor = clMoneyGreen;
    textReadyOnlyColor: TColor = clInfoBk;
  protected
    procedure Redimensiona(edit:TRzedit; Left: integer; Top: integer;
      Width: integer;Size: integer);
    procedure RedimensionaDB(edit:TRzDBedit; Left: integer; Top: integer;
      Width: integer;Size: integer);
  public
    function VerificaCampoObrigatorio(campo: TRzDBEdit): Boolean;
    function ValidaInteiroFloat(valor: string; tipo: Char): Double;
    procedure ResetColorCampo(campo: TRzDBEdit; isReadOnly: Boolean);
    function AdicionaMascaraDinheiro(valor: string): string;
    function RetiraMascaraDinheiro(valor: string): string;
    function FormataParcelas(valor: string): string;
    function RetirazeroEsquerda(S: String): String;
    procedure ConfiguraLeyalt(x: String; y: String);
    function LetraNoEdt(key: Char): TLetraNoEdit;
    function ApenasNumero(key: Char): Boolean;
    Procedure Arredondarcantos(componente: TWinControl; Y:String);

  var
    letra: String;
  published
  end;

implementation

{ TUtils }

uses untPrincipal, untData;

{ TUtils }

function TUtils.AdicionaMascaraDinheiro(valor: string): string;
var
  temp: string;
  index, countTotal, countPart, countExclud: integer;
begin
  valor := FormatCurr('R$ #,##0.00', StrToFloat(valor));
  { if not(AnsiContainsStr(valor, ',')) then
    valor := valor + ',00';

    temp:= AnsiStrPos(Pchar(valor), ',');
    if Length(temp) < 3 then
    valor := valor + '0'
    else
    if Length(temp) > 3 then
    begin
    countTotal := Length(valor);
    countPart := Length(temp);
    countExclud := (countPart - 3);
    index := (countTotal - countExclud + 1);
    Delete(valor, index, countExclud);
    end;

    Result := 'R$ ' + valor; }
  Result := valor;
end;

procedure TUtils.Redimensiona(edit:TRzEdit; Left, Top, Width,Size: integer);
begin
  edit.Left := Left;
  edit.Top := Top;
  edit.Width := Width;
  edit.Font.Size := Size;
end;

procedure TUtils.RedimensionaDB(edit: TRzDBedit; Left, Top, Width,
  Size: integer);
begin
  edit.Left := Left;
  edit.Top := Top;
  edit.Width := Width;
  //edit.Height:=Size;
  edit.Font.Size := Size;
end;

procedure TUtils.ResetColorCampo(campo: TRzDBEdit; isReadOnly: Boolean);
begin
  if not(isReadOnly) then
  begin
    campo.Color := textNormalColor;
  end
  else
  begin
    campo.Color := textReadyOnlyColor;
    campo.ReadOnlyColor := textReadyOnlyColor;
    campo.FocusColor := textReadyOnlyColor;
  end;
end;

function TUtils.RetiraMascaraDinheiro(valor: string): string;
begin
  valor := StringReplace(valor, 'R$', '', []);
  valor := StringReplace(valor, ' ', '', []);
  valor := StringReplace(valor, '.', '', []);
  if valor = EmptyStr then
    valor := '0';
  Result := valor;
end;

function TUtils.RetirazeroEsquerda(S: String): String;
var
  I, J: integer;
begin
  I := Length(S);
  while (I > 0) and (S[I] <= ' ') do
  begin
    Dec(I);
  end;
  J := 1;
  while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
  begin
    Inc(J);
  end;
  Result := Copy(S, J, (I - J) + 1);

end;

function TUtils.ValidaInteiroFloat(valor: string; tipo: Char): Double;
var
  temp: Double;
begin
  try
    valor := StringReplace(valor, '.', '', []);
    if tipo = 'I' then
      temp := StrToInt(valor)
    else
      temp := StrToFloat(valor);

    Result := temp;
  except
    Result := 0;
  end;
end;

function TUtils.VerificaCampoObrigatorio(campo: TRzDBEdit): Boolean;
var
  teste: string;
begin
  if Trim(campo.Text) = '' then
  begin
    // teste  := IntToStr(campo.Name);
    campo.Color := textEmptyColor;
    campo.ReadOnlyColor := textEmptyColor;
    Result := True;
  end
  else
  begin
    campo.Color := textNormalColor;
    Result := False;
  end;
end;

function TUtils.ApenasNumero(key: Char): Boolean;
begin
  if not(key in ['0' .. '9', #08, #13, #27, #42]) then
  begin
    key := #0;
    Result := False;
  end
  else
    Result := True;
end;

procedure TUtils.Arredondarcantos(componente: TWinControl; Y: String);
var
   BX: TRect;
   mdo: HRGN;
begin
  with componente do
  begin
    BX := ClientRect;
    mdo := CreateRoundRectRgn(BX.Left, BX.Top, BX.Right,
    BX.Bottom, StrToInt(Y), StrToInt(Y)) ;
    Perform(EM_GETRECT, 0, lParam(@BX)) ;
    InflateRect(BX, - 4, - 4) ;
    Perform(EM_SETRECTNP, 0, lParam(@BX)) ;
    SetWindowRgn(Handle, mdo, True) ;
    Invalidate;
  end;

end;

procedure TUtils.ConfiguraLeyalt(x, y: String);
begin
  if (x = '1366') and (y = '768') then
  /// /1366x768
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 30;
      lblProduto.Top := 124;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 20;

      lblOperador.Font.Size:= 15;
      lblOperador.Top := 25;

      lblNumCaixa.Font.Size:= 15;
      lblNumCaixa.Top:=25;

      lblTabelaPreco.Font.Size:= 14;
      lblTabelaPreco.Top:= 25;

      lblVlrCredito.Font.Size:=15;
      lblVlrCredito.Top:= 25;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 265, 235, 286,35);
      RedimensionaDB(frmPrincipal.edtItemPrec,265,456,282,35);
      frmPrincipal.edtItemPrec.ClientHeight:=62;
      Redimensiona(frmPrincipal.edtItemQtn, 265, 344, 286,35);
      RedimensionaDB(frmPrincipal.edtItemDesc,265,564,282,35);
      frmPrincipal.edtItemDesc.ClientHeight:=62;
      RedimensionaDB(frmPrincipal.edtTotalVenda,1005,108,323,39);
      frmPrincipal.edtTotalVenda.ClientHeight:=71;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'20');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 575;
      gdrItens.Top := 199;
      gdrItens.Width := 754;
      gdrItens.Height := 427;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// ////////////////////////////////////////////////1360x768
  if (x = '1360') and (y = '768') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 30;
      lblProduto.Top := 124;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 20;

      lblOperador.Font.Size:= 15;
      lblOperador.Top := 25;

      lblNumCaixa.Font.Size:= 15;
      lblNumCaixa.Top:=25;

      lblTabelaPreco.Font.Size:= 14;
      lblTabelaPreco.Top:= 25;

      lblVlrCredito.Font.Size:=15;
      lblVlrCredito.Top:= 25;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 263, 233, 285,37);
      RedimensionaDB(frmPrincipal.edtItemPrec,263,456,281,37);
      frmPrincipal.edtItemPrec.ClientHeight:=62;
      Redimensiona(frmPrincipal.edtItemQtn, 263, 342, 285,37);
      RedimensionaDB(frmPrincipal.edtItemDesc,263,564,281,37);
      frmPrincipal.edtItemDesc.ClientHeight:=62;
      RedimensionaDB(frmPrincipal.edtTotalVenda,1002,108,320,39);
      frmPrincipal.edtTotalVenda.ClientHeight:= 71;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'20');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 573;
      gdrItens.Top := 199;
      gdrItens.Width := 750;
      gdrItens.Height := 426;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// ////////////////////////////////////////////////////1280x768
  if (x = '1280') and (y = '768') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 30;
      lblProduto.Top := 124;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 18;

      lblOperador.Font.Size:= 15;
      lblOperador.Top := 25;

      lblNumCaixa.Font.Size:= 15;
      lblNumCaixa.Top:=25;

      lblTabelaPreco.Font.Size:= 15;
      lblTabelaPreco.Top:= 25;

      lblVlrCredito.Font.Size:=15;
      lblVlrCredito.Top:= 25;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 247, 235, 269,35);
      RedimensionaDB(frmPrincipal.edtItemPrec,247,456,265,35);
      frmPrincipal.edtItemPrec.ClientHeight:=62;
      Redimensiona(frmPrincipal.edtItemQtn, 247, 344, 269,35);
      RedimensionaDB(frmPrincipal.edtItemDesc,247,564,265,35);
      frmPrincipal.edtItemDesc.ClientHeight:=62;
      RedimensionaDB(frmPrincipal.edtTotalVenda,944,108,300,35);
      frmPrincipal.edtTotalVenda.ClientHeight:=71;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'20');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 540;
      gdrItens.Top := 200;
      gdrItens.Width := 705;
      gdrItens.Height := 425;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// //////////////////////////////////////////////////1280x720
  if (x = '1280') and (y = '720') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 40;
      lblProduto.Top := 117;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 18;

      lblOperador.Font.Size:= 18;
      lblOperador.Top := 20;

      lblNumCaixa.Font.Size:= 18;
      lblNumCaixa.Top:=20;

      lblTabelaPreco.Font.Size:= 18;
      lblTabelaPreco.Top:= 20;

      lblVlrCredito.Font.Size:=18;
      lblVlrCredito.Top:= 20;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 248, 220, 266,32);
      RedimensionaDB(frmPrincipal.edtItemPrec,248,428,263,32);
      frmPrincipal.edtItemPrec.ClientHeight:=56;
      Redimensiona(frmPrincipal.edtItemQtn, 248, 323, 267,32);
      RedimensionaDB(frmPrincipal.edtItemDesc,248,530,263,32);
      frmPrincipal.edtItemDesc.ClientHeight:=56;
      RedimensionaDB(frmPrincipal.edtTotalVenda,944,103,299,35);
      frmPrincipal.edtTotalVenda.ClientHeight:=64;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'15');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 540;
      gdrItens.Top := 187;
      gdrItens.Width := 705;
      gdrItens.Height := 400;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// /////////////////////////////////////////////////1280x600
  if (x = '1280') and (y = '600') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 40;
      lblProduto.Top := 95;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 18;

      lblOperador.Font.Size:= 18;
      lblOperador.Top := 15;

      lblNumCaixa.Font.Size:= 18;
      lblNumCaixa.Top:=15;

      lblTabelaPreco.Font.Size:= 18;
      lblTabelaPreco.Top:= 15;

      lblVlrCredito.Font.Size:=18;
      lblVlrCredito.Top:= 15;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 247, 183, 270,28);
      RedimensionaDB(frmPrincipal.edtItemPrec,247,356,266,28);
      frmPrincipal.edtItemPrec.ClientHeight:=49;
      Redimensiona(frmPrincipal.edtItemQtn, 247, 268, 270,28);
      RedimensionaDB(frmPrincipal.edtItemDesc,247,441,266,28);
      frmPrincipal.edtItemDesc.ClientHeight:=49;
      RedimensionaDB(frmPrincipal.edtTotalVenda,942,86,302,30);
      frmPrincipal.edtTotalVenda.ClientHeight:=54;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'15');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 540;
      gdrItens.Top := 155;
      gdrItens.Width := 705;
      gdrItens.Height := 333;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// //////////////////////////////////////////////1024x768
  if (x = '1024') and (y = '768') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 25;
      lblProduto.Top := 128;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 15;

      lblOperador.Font.Size:= 15;
      lblOperador.Top := 25;

      lblNumCaixa.Font.Size:= 15;
      lblNumCaixa.Top:=25;

      lblTabelaPreco.Font.Size:= 15;
      lblTabelaPreco.Top:= 25;

      lblVlrCredito.Font.Size:=15;
      lblVlrCredito.Top:= 25;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 200, 234, 212,35);
      RedimensionaDB(frmPrincipal.edtItemPrec,200,456,208,28);
      frmPrincipal.edtItemPrec.ClientHeight:=60;
      Redimensiona(frmPrincipal.edtItemQtn, 200, 344, 212,35);
      RedimensionaDB(frmPrincipal.edtItemDesc,200,565,208,28);
      frmPrincipal.edtItemDesc.ClientHeight:=60;
      RedimensionaDB(frmPrincipal.edtTotalVenda,755,109,240,30);
      frmPrincipal.edtTotalVenda.ClientHeight:=70;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'15');

      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 432;
      gdrItens.Top := 199;
      gdrItens.Width := 565;
      gdrItens.Height := 427;
      gdrItens.Font.Size := 10;
    end;
  end;
  /// //////////////////////////////////////////////////800x600
  if (x = '800') and (y = '600') then
  begin
    with frmPrincipal do
    begin
      lblProduto.Left := 17;
      lblProduto.Top := 100;
      lblProduto.Width := 447;
      lblProduto.Font.Size := 11;

      lblOperador.Font.Size:= 13;
      lblOperador.Top := 20;

      lblNumCaixa.Font.Size:= 13;
      lblNumCaixa.Top:=20;

      lblTabelaPreco.Font.Size:= 13;
      lblTabelaPreco.Top:= 20;

      lblVlrCredito.Font.Size:=13;
      lblVlrCredito.Top:= 20;

      imgItem.Left := 60;
      imgItem.Top := 240;
      imgItem.Width := 442;

      Redimensiona(frmPrincipal.edtItemRef, 155, 183, 169,28);
      RedimensionaDB(frmPrincipal.edtItemPrec,155,356,165,22);
      frmPrincipal.edtItemPrec.ClientHeight:=48;
      Redimensiona(frmPrincipal.edtItemQtn, 155, 268, 169,28);
      RedimensionaDB(frmPrincipal.edtItemDesc,155,441,165,22);
      frmPrincipal.edtItemDesc.ClientHeight:=48;
      RedimensionaDB(frmPrincipal.edtTotalVenda,590,85,188,23);
      frmPrincipal.edtTotalVenda.ClientHeight:=55;

      Arredondarcantos(frmPrincipal.edtItemRef,'15');
      Arredondarcantos(frmPrincipal.edtItemPrec,'15');
      Arredondarcantos(frmPrincipal.edtItemQtn,'15');
      Arredondarcantos(frmPrincipal.edtItemDesc,'15');
      Arredondarcantos(frmPrincipal.edtTotalVenda,'15');


      redItens.Left := 1010;
      redItens.Top := 370;
      redItens.Width := 427;
      redItens.Font.Size := 30;

      gdrItens.Left := 338;
      gdrItens.Top := 156;
      gdrItens.Width := 440;
      gdrItens.Height := 333;
      gdrItens.Font.Size := 8;
      gdrItens.TitleFont.Size:= 8;
    end;
  end;

end;

function TUtils.FormataParcelas(valor: string): string;
begin
  while Length(valor) < 3 do
  begin
    valor := '0' + valor;
  end;
  Result := valor;

end;

function TUtils.LetraNoEdt(key: Char):TLetraNoEdit;
var
Shift:TShiftState;
begin
  LetraNoEdt.letra := '';
    if (not(key in ['0' .. '9',#16,#17, #08, #13, #27,#42])) and (not((GetKeyState(VK_CONTROL)<0) and (Key =#2 )))and (not((GetKeyState(VK_CONTROL)<0) and (Key = #7 ))) and (not((GetKeyState(VK_CONTROL)<0) and (Key = #$14 ))) and (not(KEY=',')) then
    begin
      LetraNoEdt.letra := key;
      LetraNoEdt.key := #13;
    end
    else
    begin
      LetraNoEdt.letra := '';
      LetraNoEdt.key := key;
    end;
end;

end.
