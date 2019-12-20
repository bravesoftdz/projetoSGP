unit untConfigTabPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzDBEdit, RzLabel, Data.DB, FIBDataSet, pFIBDataSet,
  RzButton, FIBDatabase, pFIBDatabase, Datasnap.DBClient, System.Math;

type
  TfrmConfigTabPreco = class(TForm)
    RzPanel1: TRzPanel;
    lblPrec1: TRzLabel;
    edtPrec2: TRzDBEdit;
    lblPrec2: TRzLabel;
    edtPrec3: TRzDBEdit;
    lblPrec3: TRzLabel;
    edtPrec4: TRzDBEdit;
    lblPrec4: TRzLabel;
    lblPrec5: TRzLabel;
    edtPrec5: TRzDBEdit;
    edtPrec6: TRzDBEdit;
    lblPrec6: TRzLabel;
    fdsTabelaPreco: TpFIBDataSet;
    fdsTabelaPrecoID: TFIBBCDField;
    fdsTabelaPrecoDESCRICAO1: TFIBStringField;
    fdsTabelaPrecoDESCRICAO2: TFIBStringField;
    fdsTabelaPrecoDESCRICAO3: TFIBStringField;
    fdsTabelaPrecoDESCRICAO4: TFIBStringField;
    fdsTabelaPrecoDESCRICAO5: TFIBStringField;
    fdsTabelaPrecoDESCRICAO6: TFIBStringField;
    fdsTabelaPrecoPDV_DES1: TFIBStringField;
    fdsTabelaPrecoPDV_DES2: TFIBStringField;
    fdsTabelaPrecoPDV_DES3: TFIBStringField;
    fdsTabelaPrecoPDV_DES4: TFIBStringField;
    fdsTabelaPrecoPDV_DES5: TFIBStringField;
    fdsTabelaPrecoPDV_DES6: TFIBStringField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE6: TFIBBCDField;
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel6: TRzLabel;
    btnGravar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    dsTabPreco: TDataSource;
    RzLabel7: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzLabel12: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    RzLabel14: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    RzLabel15: TRzLabel;
    RzDBEdit16: TRzDBEdit;
    RzLabel16: TRzLabel;
    cdsPrecos: TClientDataSet;
    cdsPrecosPreco1: TFloatField;
    cdsPrecosPreco2: TCurrencyField;
    cdsPrecosPreco3: TCurrencyField;
    cdsPrecosPreco4: TCurrencyField;
    cdsPrecosPreco5: TCurrencyField;
    cdsPrecosPreco6: TCurrencyField;
    RzDBEdit17: TRzDBEdit;
    RzLabel17: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    RzLabel18: TRzLabel;
    cdsPrecosDesc_Max1: TFloatField;
    cdsPrecosDesc_Max2: TFloatField;
    cdsPrecosDesc_Max3: TFloatField;
    cdsPrecosDesc_Max4: TFloatField;
    cdsPrecosDesc_Max5: TFloatField;
    cdsPrecosDesc_Max6: TFloatField;
    dsPrecos: TDataSource;
    cdsPrecosPorcent_Ajuste2: TFloatField;
    cdsPrecosPorcent_Ajuste3: TFloatField;
    cdsPrecosPorcent_Ajuste4: TFloatField;
    cdsPrecosPorcent_Ajuste5: TFloatField;
    cdsPrecosPorcent_Ajuste6: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    function CalcPreco(vlrAjuste: Double): Double;
    function CalDescMax(valor: Double): Double;
    function CalcPrecPeloDesc(vlrDesc: Double): Double;
    function CalcAjust(valor: Double): Double;
    procedure edtPrec3Exit(Sender: TObject);
    procedure edtPrec4Exit(Sender: TObject);
    procedure edtPrec5Exit(Sender: TObject);
    procedure edtPrec6Exit(Sender: TObject);
    procedure cdsPrecosPreco2Change(Sender: TField);
    procedure cdsPrecosPreco3Change(Sender: TField);
    procedure cdsPrecosPreco4Change(Sender: TField);
    procedure cdsPrecosPreco5Change(Sender: TField);
    procedure cdsPrecosPreco6Change(Sender: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit13Exit(Sender: TObject);
    procedure RzDBEdit14Exit(Sender: TObject);
    procedure RzDBEdit15Exit(Sender: TObject);
    procedure RzDBEdit16Exit(Sender: TObject);
    procedure RzDBEdit12Exit(Sender: TObject);
    procedure edtPrec2Exit(Sender: TObject);
    procedure RzDBEdit7Exit(Sender: TObject);
    procedure RzDBEdit8Exit(Sender: TObject);
    procedure RzDBEdit9Exit(Sender: TObject);
    procedure RzDBEdit10Exit(Sender: TObject);
    procedure RzDBEdit11Exit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigTabPreco: TfrmConfigTabPreco;

implementation

{$R *.dfm}

uses untData, uUtils;

procedure TfrmConfigTabPreco.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmConfigTabPreco.btnGravarClick(Sender: TObject);
begin
  fdsTabelaPreco.Post;
  ModalResult := mrOk;
end;

function TfrmConfigTabPreco.CalcAjust(valor: Double): Double;
var
  utils: TUtils;
  vlrAjuste: Double;
begin
  valor := utils.ValidaInteiroFloat(FloatToStr(valor), 'F');

  if valor > 0 then
  begin
    valor := valor - cdsPrecosPreco1.AsFloat;
    vlrAjuste := RoundTo((valor * 100) / cdsPrecosPreco1.AsFloat, -2);
    Result := vlrAjuste;
  end
  else
    Result := 0;
end;

function TfrmConfigTabPreco.CalcPreco(vlrAjuste: Double): Double;
var
  utils: TUtils;
  valor: Double;
begin
  vlrAjuste := utils.ValidaInteiroFloat(FloatToStr(vlrAjuste), 'F');

  if vlrAjuste > 0 then
  begin
    valor := RoundTo((cdsPrecosPreco1.AsFloat + (cdsPrecosPreco1.AsFloat *
      vlrAjuste / 100)), -2);
    Result := valor;
  end
  else
    Result := 0;

end;

function TfrmConfigTabPreco.CalcPrecPeloDesc(vlrDesc: Double): Double;
var
  utils: TUtils;
  valor: Double;
begin
  vlrDesc := utils.ValidaInteiroFloat(FloatToStr(vlrDesc), 'F');

  if vlrDesc > 0 then
  begin
    valor := RoundTo(((cdsPrecosPreco1.AsFloat / (100 - vlrDesc)) * 100), -2);
    Result := valor;
  end
  else
    Result := 0;
end;

function TfrmConfigTabPreco.CalDescMax(valor: Double): Double;
var
  utils: TUtils;
  vlrDesc: Double;
begin
  valor := utils.ValidaInteiroFloat(FloatToStr(valor), 'F');

  if valor > 0 then
  begin
    vlrDesc := RoundTo(100 - ((cdsPrecosPreco1.AsFloat * 100) / valor), -2);
    Result := vlrDesc;
  end
  else
    Result := 0;
end;

procedure TfrmConfigTabPreco.cdsPrecosPreco2Change(Sender: TField);
begin
  // cdsPrecosDesc_Max2.AsFloat := CalDescMax(cdsPrecosPreco2.AsFloat);
end;

procedure TfrmConfigTabPreco.cdsPrecosPreco3Change(Sender: TField);
begin
  // cdsPrecosDesc_Max3.AsFloat := CalDescMax(cdsPrecosPreco3.AsFloat);
end;

procedure TfrmConfigTabPreco.cdsPrecosPreco4Change(Sender: TField);
begin
  // cdsPrecosDesc_Max4.AsFloat :=  CalDescMax(cdsPrecosPreco4.AsFloat);
end;

procedure TfrmConfigTabPreco.cdsPrecosPreco5Change(Sender: TField);
begin
  // cdsPrecosDesc_Max5.AsFloat := CalDescMax(cdsPrecosPreco5.AsFloat);
end;

procedure TfrmConfigTabPreco.cdsPrecosPreco6Change(Sender: TField);
begin
  // cdsPrecosDesc_Max6.AsFloat := CalDescMax(cdsPrecosPreco6.AsFloat);
end;

procedure TfrmConfigTabPreco.edtPrec2Exit(Sender: TObject);
begin
  cdsPrecosPreco2.AsFloat := CalcPreco(cdsPrecosPorcent_Ajuste2.AsFloat);
end;

procedure TfrmConfigTabPreco.edtPrec3Exit(Sender: TObject);
begin
  cdsPrecosPreco3.AsFloat := CalcPreco(cdsPrecosPorcent_Ajuste3.AsFloat);
end;

procedure TfrmConfigTabPreco.edtPrec4Exit(Sender: TObject);
begin
  cdsPrecosPreco4.AsFloat := CalcPreco(cdsPrecosPorcent_Ajuste4.AsFloat);
end;

procedure TfrmConfigTabPreco.edtPrec5Exit(Sender: TObject);
begin
  cdsPrecosPreco5.AsFloat := CalcPreco(cdsPrecosPorcent_Ajuste5.AsFloat);
end;

procedure TfrmConfigTabPreco.edtPrec6Exit(Sender: TObject);
begin
  cdsPrecosPreco6.AsFloat := CalcPreco(cdsPrecosPorcent_Ajuste6.AsFloat);
end;

procedure TfrmConfigTabPreco.FormCreate(Sender: TObject);
begin
  fdsTabelaPreco.Open;
  fdsTabelaPreco.Edit;
end;

procedure TfrmConfigTabPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmConfigTabPreco.RzDBEdit10Exit(Sender: TObject);
begin
  // cdsPrecosPreco5.AsFloat := CalcPrecPeloDesc(cdsPrecosDesc_Max5.AsFloat);
  // cdsPrecosPorcent_Ajuste5.AsFloat := CalcAjust(cdsPrecosPreco5.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit11Exit(Sender: TObject);
begin
  // cdsPrecosPreco6.AsFloat := CalcPrecPeloDesc(cdsPrecosDesc_Max6.AsFloat);
  // cdsPrecosPorcent_Ajuste6.AsFloat := CalcAjust(cdsPrecosPreco6.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit12Exit(Sender: TObject);
begin
  cdsPrecosPorcent_Ajuste2.AsFloat := CalcAjust(cdsPrecosPreco2.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit13Exit(Sender: TObject);
begin
  cdsPrecosPorcent_Ajuste3.AsFloat := CalcAjust(cdsPrecosPreco3.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit14Exit(Sender: TObject);
begin
  cdsPrecosPorcent_Ajuste4.AsFloat := CalcAjust(cdsPrecosPreco4.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit15Exit(Sender: TObject);
begin
  cdsPrecosPorcent_Ajuste5.AsFloat := CalcAjust(cdsPrecosPreco5.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit16Exit(Sender: TObject);
begin
  cdsPrecosPorcent_Ajuste6.AsFloat := CalcAjust(cdsPrecosPreco6.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit7Exit(Sender: TObject);
begin
  // cdsPrecosPreco2.AsFloat := CalcPrecPeloDesc(cdsPrecosDesc_Max2.AsFloat);
  // cdsPrecosPorcent_Ajuste2.AsFloat := CalcAjust(cdsPrecosPreco2.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit8Exit(Sender: TObject);
begin
  // cdsPrecosPreco3.AsFloat := CalcPrecPeloDesc(cdsPrecosDesc_Max3.AsFloat);
  // cdsPrecosPorcent_Ajuste3.AsFloat := CalcAjust(cdsPrecosPreco3.AsFloat);
end;

procedure TfrmConfigTabPreco.RzDBEdit9Exit(Sender: TObject);
begin
  // cdsPrecosPreco4.AsFloat := CalcPrecPeloDesc(cdsPrecosDesc_Max4.AsFloat);
  // cdsPrecosPorcent_Ajuste4.AsFloat := CalcAjust(cdsPrecosPreco4.AsFloat);
end;

end.