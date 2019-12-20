unit untPrecItemAtualizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, RzDBEdit, Math;

type
  TfrmPrecItemAtualizacao = class(TForm)
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzPanel1: TRzPanel;
    lblPrec1: TRzLabel;
    btnGravar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzLabel11: TRzLabel;
    gbxPrecTab1: TGroupBox;
    RzLabel3: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel8: TRzLabel;
    edtPrecVendaAtual1: TRzDBEdit;
    lblPrec2: TRzLabel;
    edtPrec2: TRzDBEdit;
    RzLabel13: TRzLabel;
    gbxPrecTab2: TGroupBox;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    edtPrecVendaAtual2: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzLabel12: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzLabel15: TRzLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit8Exit(Sender: TObject);
    procedure RzDBEdit9Exit(Sender: TObject);
    procedure edtPrecVendaAtual1Exit(Sender: TObject);
    procedure edtPrecVendaAtual2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrecItemAtualizacao: TfrmPrecItemAtualizacao;

implementation

{$R *.dfm}

uses untMovInt, uUtils, untCompras;

procedure TfrmPrecItemAtualizacao.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPrecItemAtualizacao.btnGravarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPrecItemAtualizacao.FormCreate(Sender: TObject);
begin
  gbxPrecTab1.Caption := ' ' + frmCompras.fdsTabPrecoDESCRICAO1.AsString + ': ';
  gbxPrecTab2.Caption := ' ' + frmCompras.fdsTabPrecoDESCRICAO2.AsString + ': ';
end;

procedure TfrmPrecItemAtualizacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPrecItemAtualizacao.edtPrecVendaAtual1Exit(Sender: TObject);
var
  utils: TUtils;
  prec_venda: Double;
begin
  if (frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat > 0) then
  begin
    prec_venda := StrToFloat(utils.RetiraMascaraDinheiro
      (edtPrecVendaAtual1.Text));

    if utils.ValidaInteiroFloat(FloatToStr(prec_venda), 'F') > 0 then
    begin
      frmCompras.cdsItemPrecMG_LUCRO_ATUAL.AsFloat :=
        (((prec_venda - frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat) * 100) /
        frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat);
    end;
  end;
end;

procedure TfrmPrecItemAtualizacao.edtPrecVendaAtual2Exit(Sender: TObject);
var
  utils: TUtils;
  prec_venda2: Double;
begin
  if (frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat > 0) then
  begin
    prec_venda2 := StrToFloat
      (utils.RetiraMascaraDinheiro(edtPrecVendaAtual2.Text));

    if utils.ValidaInteiroFloat(FloatToStr(prec_venda2), 'F') > 0 then
    begin
      frmCompras.cdsItemPrecMG_LUCRO_ATUAL2.AsFloat :=
        (((prec_venda2 - frmCompras.cdsItemPrecPREC_VENDA_ATUAL.AsFloat) * 100)
        / frmCompras.cdsItemPrecPREC_VENDA_ATUAL.AsFloat);

      if (frmCompras.cdsItemPrecMG_LUCRO_ATUAL2.AsFloat < 0) then
      begin
        frmCompras.cdsItemPrecMG_LUCRO_ATUAL2.AsFloat := 0;
      end;
    end;
  end;
end;

procedure TfrmPrecItemAtualizacao.RzDBEdit8Exit(Sender: TObject);
var
  utils: TUtils;
begin
  if (frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat > 0) then
  begin
    if utils.ValidaInteiroFloat
      (FloatToStr(frmCompras.cdsItemPrecMG_LUCRO_ATUAL.AsFloat), 'F') > 0 then
    begin
      frmCompras.cdsItemPrecPREC_VENDA_ATUAL.AsFloat :=
        RoundTo((frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat +
        (frmCompras.cdsItemPrecCUSTO_ATUAL.AsFloat *
        frmCompras.cdsItemPrecMG_LUCRO_ATUAL.AsFloat / 100)), -2);
      // cdsItensPREC_TAB1.AsFloat := cdsItensPREC_VENDA.AsFloat;
    end;
  end;
end;

procedure TfrmPrecItemAtualizacao.RzDBEdit9Exit(Sender: TObject);
var
  utils: TUtils;
begin
  if utils.ValidaInteiroFloat
    (FloatToStr(frmCompras.cdsItemPrecMG_LUCRO_ATUAL2.AsFloat), 'F') > 0 then
  begin
    frmCompras.cdsItemPrecPREC_VENDA_ATUAL2.AsFloat :=
      RoundTo((frmCompras.cdsItemPrecPREC_VENDA_ATUAL.AsFloat +
      (frmCompras.cdsItemPrecPREC_VENDA_ATUAL.AsFloat *
      frmCompras.cdsItemPrecMG_LUCRO_ATUAL2.AsFloat / 100)), -2);
    // cdsItensPREC_TAB1.AsFloat := cdsItensPREC_VENDA.AsFloat;
  end;
end;

end.
