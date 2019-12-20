unit untCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzLabel, dxGDIPlusClasses,
  ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB, FIBDataSet, pFIBDataSet,
  RzDBEdit, Vcl.Imaging.pngimage;

type
  TfrmCheque = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel1: TRzLabel;
    RzPanel3: TRzPanel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    btnSair: TRzBitBtn;
    imgFlagGreen: TJvImage;
    fdsCheque: TpFIBDataSet;
    dsCheque: TDataSource;
    fdsChequeID: TFIBBCDField;
    fdsChequeIDBANCO: TFIBBCDField;
    fdsChequeAGENCIA: TFIBStringField;
    fdsChequeCONTA: TFIBStringField;
    fdsChequeNUM_CHEQUE: TFIBStringField;
    fdsChequeDT_EMISSAO: TFIBDateField;
    fdsChequeEMITENTE: TFIBStringField;
    fdsChequeVALOR: TFIBBCDField;
    fdsChequeDT_VENCIMENTO: TFIBDateField;
    fdsChequeBANCO: TFIBStringField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    imgFlagRed: TJvImage;
    imgFlagYellow: TJvImage;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ControlaFlag;
  private
    { Private declarations }
  public
    idDoc: Integer;
    posicao: string[2];
    tipo: string;
  end;

var
  frmCheque: TfrmCheque;

implementation

uses untData;

{$R *.dfm}

procedure TfrmCheque.btnSairClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCheque.ControlaFlag;
begin
  if posicao = 'AB' then
  begin
    if fdsChequeDT_VENCIMENTO.AsDateTime <= Now then
    begin
      imgFlagGreen.Visible := False;
      imgFlagRed.Visible := True;
      imgFlagYellow.Visible := False;
    end
    else
    begin
      imgFlagGreen.Visible := False;
      imgFlagRed.Visible := False;
      imgFlagYellow.Visible := True;
    end;
  end
  else
  begin
    if posicao = 'PG' then
    begin
      imgFlagGreen.Visible := True;
      imgFlagRed.Visible := False;
      imgFlagYellow.Visible := False;
    end
    else
    begin
      imgFlagGreen.Visible := False;
      imgFlagRed.Visible := False;
      imgFlagYellow.Visible := True;
    end;
  end;

end;

procedure TfrmCheque.FormActivate(Sender: TObject);
var
  sqlConta, nomeCampoPai: string;
begin
  if tipo = 'Receber' then
  begin
    sqlConta := 'CNT_RECEBER';
    nomeCampoPai := 'IDRECEBER';
  end
  else
  begin
    sqlConta := 'CNT_PAGAR';
    nomeCampoPai := 'IDPAGAR';
  end;

  with fdsCheque do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT CH.*, B.DESCRICAO BANCO FROM ' + sqlConta +
      '_CHEQUE CH, BANCO B WHERE ');
    SelectSQL.Add('CH.' + nomeCampoPai +
      '_ITEM = :IDCONTA_ITEM AND B.ID = CH.IDBANCO');
    ParamByName('IDCONTA_ITEM').AsInteger := idDoc;
    Prepare;
    Open;
  end;

  ControlaFlag;

end;

end.
