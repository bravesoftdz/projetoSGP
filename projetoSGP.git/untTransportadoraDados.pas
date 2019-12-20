unit untTransportadoraDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBckgnd, RzButton, Vcl.StdCtrls,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzPanel,
  Vcl.Mask, RzEdit, RzDBEdit, Data.DB, FIBDataSet, pFIBDataSet;

type
  TfrmTransportadoraDados = class(TForm)
    RzPanel1: TRzPanel;
    lblTituloCliente: TRzLabel;
    RzBackground1: TRzBackground;
    btnGravar: TRzBitBtn;
    edtFrete: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    edtTraspNome: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel11: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzLabel12: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzDBEdit13: TRzDBEdit;
    RzLabel14: TRzLabel;
    btnPesqTransportadora: TRzBitBtn;
    btnPesqVeiculo: TRzBitBtn;
    fdsTranportadora: TpFIBDataSet;
    fdsTranportadoraID: TFIBBCDField;
    fdsTranportadoraRAZAO_SOCIAL: TFIBStringField;
    fdsTranportadoraCNPJ_CPF: TFIBStringField;
    fdsTranportadoraIE: TFIBStringField;
    fdsTranportadoraENDERECO: TFIBStringField;
    fdsTranportadoraNUMERO: TFIBStringField;
    fdsTranportadoraBAIRRO: TFIBStringField;
    fdsTranportadoraIDCIDADE: TFIBBCDField;
    fdsTranportadoraCIDADE: TFIBStringField;
    fdsTranportadoraCIDADE_UF: TFIBStringField;
    fdsVeiculo: TpFIBDataSet;
    fdsVeiculoID: TFIBBCDField;
    fdsVeiculoDT_INC: TFIBDateField;
    fdsVeiculoDT_ALT: TFIBDateField;
    fdsVeiculoSTATUS: TFIBStringField;
    fdsVeiculoNOME: TFIBStringField;
    fdsVeiculoMODELO: TFIBStringField;
    fdsVeiculoPLACA: TFIBStringField;
    fdsVeiculoCARGA_MAX: TFIBBCDField;
    fdsVeiculoENVIADO_WEB: TFIBStringField;
    fdsVeiculoIDTRANSPORTADORA: TFIBBCDField;
    fdsVeiculoUF: TFIBStringField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesqTransportadoraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesqVeiculoClick(Sender: TObject);
  private
    procedure GetDadosTransportadora(id: Integer);
    procedure GetDadosVeiculo(idTransportadora: Integer);
  public
    { Public declarations }
  end;

var
  frmTransportadoraDados: TfrmTransportadoraDados;

implementation

{$R *.dfm}

uses untPedidos, untNfe, untPesqTransportadora, untPesqVeiculo;

procedure TfrmTransportadoraDados.btnGravarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmTransportadoraDados.btnPesqTransportadoraClick(Sender: TObject);
begin
  Try
    frmPesqTransportadora := TfrmPesqTransportadora.Create(nil);
    frmPesqTransportadora.ShowModal;
  Finally
    if frmPesqTransportadora.ModalResult = mrOk then
    begin
      GetDadosTransportadora(frmPesqTransportadora.fdsTransportadoraID.
        AsInteger);
      GetDadosVeiculo(frmPesqTransportadora.fdsTransportadoraID.AsInteger);
    end;
    frmPesqTransportadora.Free;
    btnPesqVeiculo.SetFocus;
  End;
end;

procedure TfrmTransportadoraDados.btnPesqVeiculoClick(Sender: TObject);
begin
  Try
    frmPesqVeiculo := TfrmPesqVeiculo.Create(nil);
    frmPesqVeiculo.idTransportadora := frmNfe.fdsNFeIDTRANSPORTADORA.AsInteger;
    frmPesqVeiculo.ShowModal;
  Finally
    if frmPesqVeiculo.ModalResult = mrOk then
    begin
      frmNfe.fdsNFeIDVEICULO.AsInteger := frmPesqVeiculo.fdsVeiculoID.AsInteger;
      frmNfe.fdsNFeVEIC_PLACA.AsString :=
        frmPesqVeiculo.fdsVeiculoPLACA.AsString;
      frmNfe.fdsNFeVEIC_UF.AsString := frmPesqVeiculo.fdsVeiculoUF.AsString;
    end;
    frmPesqVeiculo.Free;
  End;
end;

procedure TfrmTransportadoraDados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmTransportadoraDados.FormShow(Sender: TObject);
begin
  if (Trim(frmNfe.fdsNFeTRANSP_NOME.AsString) = EmptyStr) then
    GetDadosTransportadora(frmNfe.fdsNFeIDTRANSPORTADORA.AsInteger);
  edtTraspNome.SetFocus;
end;

procedure TfrmTransportadoraDados.GetDadosTransportadora(id: Integer);
begin
  fdsTranportadora.Close;
  fdsTranportadora.ParamByName('IDTRANSPORTADORA').AsInteger := id;
  fdsTranportadora.Prepare;
  fdsTranportadora.Open;
  fdsTranportadora.First;

  frmNfe.fdsNFeIDTRANSPORTADORA.AsInteger := fdsTranportadoraID.AsInteger;
  frmNfe.fdsNFeTRANSP_NOME.AsString := fdsTranportadoraRAZAO_SOCIAL.AsString;
  frmNfe.fdsNFeTRANSP_CNPJ_CPF.AsString := fdsTranportadoraCNPJ_CPF.AsString;
  frmNfe.fdsNFeTRANSP_ENDERECO.AsString := fdsTranportadoraENDERECO.AsString;
  frmNfe.fdsNFeTRANSP_CIDADE.AsString := fdsTranportadoraCIDADE.AsString;
  frmNfe.fdsNFeTRANSP_UF.AsString := fdsTranportadoraCIDADE_UF.AsString;
end;

procedure TfrmTransportadoraDados.GetDadosVeiculo(idTransportadora: Integer);
begin
  fdsVeiculo.Close;
  fdsVeiculo.ParamByName('IDTRANSPORTADORA').AsInteger := idTransportadora;
  fdsVeiculo.Prepare;
  fdsVeiculo.Open;

  if fdsVeiculo.RecordCount > 0 then
  begin
    frmNfe.fdsNFeIDVEICULO.AsInteger := fdsVeiculoID.AsInteger;
    frmNfe.fdsNFeVEIC_PLACA.AsString := fdsVeiculoPLACA.AsString;
    frmNfe.fdsNFeVEIC_UF.AsString := fdsVeiculoUF.AsString;
  end
  else
  begin
    frmNfe.fdsNFeIDVEICULO.AsInteger := 1;
    frmNfe.fdsNFeVEIC_PLACA.AsString := EmptyStr;
    frmNfe.fdsNFeVEIC_UF.AsString := EmptyStr;
  end;
end;

end.
