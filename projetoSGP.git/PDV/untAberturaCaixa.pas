unit untAberturaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, StdCtrls, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, Mask, RzEdit, RzDBEdit, RzButton, DB,
  FIBDataSet, pFIBDataSet, Vcl.Imaging.pngimage, frxClass, frxDBSet;

type
  TfrmAberturaCaixa = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel4: TRzLabel;
    RzBackground1: TRzBackground;
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    btnOK: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    fdsMovimentoCaixa: TpFIBDataSet;
    dsMovimentoCaixa: TDataSource;
    dsCaixa: TDataSource;
    Timer1: TTimer;
    fdsMovimentoCaixaID: TFIBBCDField;
    fdsMovimentoCaixaIDCAIXA: TFIBBCDField;
    fdsMovimentoCaixaIDFILIAL: TFIBBCDField;
    fdsMovimentoCaixaDT_INC: TFIBDateField;
    fdsMovimentoCaixaHR_INC: TFIBTimeField;
    fdsMovimentoCaixaIDUSUARIO: TFIBBCDField;
    fdsMovimentoCaixaCONTROLE: TFIBBCDField;
    fdsMovimentoCaixaTIPO: TFIBStringField;
    fdsMovimentoCaixaMOEDA: TFIBStringField;
    fdsMovimentoCaixaVLR_ENTRADA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VENDA: TFIBBCDField;
    fdsMovimentoCaixaVLR_TOTAL: TFIBBCDField;
    fdsMovimentoCaixaVLR_DESCONTO: TFIBBCDField;
    fdsMovimentoCaixaTROCO: TFIBBCDField;
    fdsMovimentoCaixaENVIADO_WEB: TFIBStringField;
    fdsMovimentoCaixaIDMOVIMENTO: TFIBBCDField;
    fdsMovimentoCaixaHISTORICO: TFIBStringField;
    fdsMovimentoCaixaOPERADOR: TFIBStringField;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    var
      caixaNum, idUsuario: Integer;
      operador: string;
  end;

var
  frmAberturaCaixa: TfrmAberturaCaixa;

implementation

uses untData;

{$R *.dfm}

procedure TfrmAberturaCaixa.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAberturaCaixa.btnOKClick(Sender: TObject);
var
  tempValor : Double;
begin
  Try
      tempValor := StrToFloat(fdsMovimentoCaixaVLR_TOTAL.AsString);
      Except
      begin
        fdsMovimentoCaixaVLR_TOTAL.AsFloat := 0;
      end;
    End;

  fdsMovimentoCaixaVLR_ENTRADA.AsFloat := fdsMovimentoCaixaVLR_TOTAL.AsFloat;
  fdsMovimentoCaixaHISTORICO.AsString := 'Abertura de Caixa ' + DateTimeToStr(Now);
  fdsMovimentoCaixa.Post;
  dm.conexao.CommitRetaining;
  ModalResult := mrOk;
end;

procedure TfrmAberturaCaixa.FormActivate(Sender: TObject);
begin
  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := caixaNum;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
    Edit;
    DM.fdsCaixaCONTROLE.AsInteger  := FieldByName('CONTROLE').AsInteger + 1;
    Post;
    Dm.conexao.CommitRetaining;
  end;
  fdsMovimentoCaixa.Open;
  fdsMovimentoCaixa.Append;
  fdsMovimentoCaixaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsMovimentoCaixaIDCAIXA.AsInteger := caixaNum;
  fdsMovimentoCaixaOPERADOR.AsString := operador;
  fdsMovimentoCaixaCONTROLE.AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
  fdsMovimentoCaixaIDUSUARIO.AsInteger := idUsuario;
  fdsMovimentoCaixaTIPO.AsString := 'AB';
  fdsMovimentoCaixaMOEDA.AsString := 'DN';
  Timer1.Enabled := True;

end;

procedure TfrmAberturaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmAberturaCaixa.Timer1Timer(Sender: TObject);
begin
  fdsMovimentoCaixaHR_INC.AsString := FormatDateTime('t', Now);
end;

end.