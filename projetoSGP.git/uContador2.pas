unit uContador2;

interface

uses System.Classes, System.SysUtils;

type
  TContador2 = class(TThread)
  protected
    procedure Execute; override;
    procedure Contador2;
  end;

implementation

uses untBalanco;

procedure TContador2.Execute;
begin

  Contador2;

  inherited;
end;

procedure TContador2.Contador2;
begin
  Priority := tpLower;
  Inc(Tempo);
  Inc(Tempo);
  frmBalanco.pgbProgresso.Percent := Tempo;
  if (Tempo >= 100) then
  begin
    Tempo := 0;
  end;
  Sleep(10);

  if self.Terminated then
    abort
  else
    Contador2;
end;

end.