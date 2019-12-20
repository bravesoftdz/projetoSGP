unit untConfigTabPrecoGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, RzLabel, Vcl.ExtCtrls, RzPanel, Data.DB, FIBDataSet,
  pFIBDataSet, Datasnap.DBClient, RzPrgres, Math;

type
  TfrmConfigTabPrecGeral = class(TForm)
    RzPanel1: TRzPanel;
    lblPrec1: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    edtDescricao1: TRzDBEdit;
    edtDescricao2: TRzDBEdit;
    edtDescricao3: TRzDBEdit;
    edtDescricao4: TRzDBEdit;
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
    dsTabPreco: TDataSource;
    fdsProdutoItem: TpFIBDataSet;
    gbxGeraItens: TRzGroupBox;
    pgbProgresso: TRzProgressBar;
    RzLabel7: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel9: TRzLabel;
    fdsTabelaPrecoDESC_MAX_PORCENT1: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT2: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT3: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT4: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT5: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT6: TFIBBCDField;
    RzLabel15: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    fdsProdutoItemIDITEM: TFIBBCDField;
    fdsProdutoItemIDFILIAL: TFIBBCDField;
    fdsProdutoItemPREC_VENDA: TFIBBCDField;
    fdsProdutoItemENVIADO_WEB: TFIBStringField;
    fdsProdutoItemPREC_TAB1: TFIBBCDField;
    fdsProdutoItemPREC_TAB2: TFIBBCDField;
    fdsProdutoItemPREC_TAB3: TFIBBCDField;
    fdsProdutoItemPREC_TAB4: TFIBBCDField;
    fdsProdutoItemPREC_TAB5: TFIBBCDField;
    fdsProdutoItemPREC_TAB6: TFIBBCDField;
    RzPanel2: TRzPanel;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    procedure btnGravarClick(Sender: TObject);
    procedure VerificaCamposVazios;
    procedure AtualizaPrecos;
    function CalcPreco(vlrPrec1, vlrTabAtual, vlrAjuste: Double): Double;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigTabPrecGeral: TfrmConfigTabPrecGeral;

implementation

{$R *.dfm}

uses uUtils, untData;

procedure TfrmConfigTabPrecGeral.AtualizaPrecos;
begin
  fdsProdutoItem.Open;
  fdsProdutoItem.Last;
  fdsProdutoItem.First;

  gbxGeraItens.Visible := True;
  pgbProgresso.Percent := 0;
  pgbProgresso.PartsComplete := 0;
  pgbProgresso.TotalParts := 0;
  Application.ProcessMessages;

  pgbProgresso.TotalParts := fdsProdutoItem.RecordCount;
  Application.ProcessMessages;


  while not(fdsProdutoItem.Eof) do
  begin
    fdsProdutoItem.Edit;

    // if fdsTabelaPrecoDESC_MAX_PORCENT1.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX1.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT1.AsFloat;
    //
    // if not(Trim(edtDescricao2.Text) = EmptyStr) then
    // begin
    // fdsProdutoItemPORCENTAGEM_AJUSTE2.AsFloat := StrToFloat(edtAjuste2.Text);
    // fdsProdutoItemPREC_TAB2.AsFloat := CalcPreco(fdsProdutoItemPREC_TAB1.AsFloat, fdsProdutoItemPREC_TAB2.AsFloat, fdsProdutoItemPORCENTAGEM_AJUSTE2.AsFloat);
    //
    // if fdsTabelaPrecoDESC_MAX_PORCENT2.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX2.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT2.AsFloat;
    // end;
    //
    // if not(Trim(edtDescricao3.Text) = EmptyStr) then
    // begin
    // fdsProdutoItemPORCENTAGEM_AJUSTE3.AsFloat := StrToFloat(edtAjuste3.Text);
    // fdsProdutoItemPREC_TAB3.AsFloat := CalcPreco(fdsProdutoItemPREC_TAB1.AsFloat, fdsProdutoItemPREC_TAB3.AsFloat, fdsProdutoItemPORCENTAGEM_AJUSTE3.AsFloat);;
    //
    // if fdsTabelaPrecoDESC_MAX_PORCENT3.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX3.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT3.AsFloat;
    // end;
    //
    // if not(Trim(edtDescricao4.Text) = EmptyStr) then
    // begin
    // fdsProdutoItemPORCENTAGEM_AJUSTE4.AsFloat := StrToFloat(edtAjuste4.Text);
    // fdsProdutoItemPREC_TAB4.AsFloat := CalcPreco(fdsProdutoItemPREC_TAB1.AsFloat, fdsProdutoItemPREC_TAB4.AsFloat, fdsProdutoItemPORCENTAGEM_AJUSTE4.AsFloat);;
    //
    // if fdsTabelaPrecoDESC_MAX_PORCENT4.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX4.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT4.AsFloat;
    // end;
    //
    // if not(Trim(edtDescricao5.Text) = EmptyStr) then
    // begin
    // fdsProdutoItemPORCENTAGEM_AJUSTE5.AsFloat := StrToFloat(edtAjuste5.Text);
    // fdsProdutoItemPREC_TAB5.AsFloat := CalcPreco(fdsProdutoItemPREC_TAB1.AsFloat, fdsProdutoItemPREC_TAB5.AsFloat, fdsProdutoItemPORCENTAGEM_AJUSTE5.AsFloat);;
    //
    // if fdsTabelaPrecoDESC_MAX_PORCENT5.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX5.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT5.AsFloat;
    // end;
    //
    // if not(Trim(edtDescricao6.Text) = EmptyStr) then
    // begin
    // fdsProdutoItemPORCENTAGEM_AJUSTE6.AsFloat := StrToFloat(edtAjuste6.Text);
    // fdsProdutoItemPREC_TAB6.AsFloat := CalcPreco(fdsProdutoItemPREC_TAB1.AsFloat, fdsProdutoItemPREC_TAB6.AsFloat, fdsProdutoItemPORCENTAGEM_AJUSTE6.AsFloat);;
    //
    // if fdsTabelaPrecoDESC_MAX_PORCENT6.AsFloat > 0 then
    // fdsProdutoItemDESC_MAX6.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT6.AsFloat;
    // end;

    fdsProdutoItem.Post;
    pgbProgresso.PartsComplete := pgbProgresso.PartsComplete + 1;
    fdsProdutoItem.Next;
  end;

  DM.Conexao.CommitRetaining;

end;

procedure TfrmConfigTabPrecGeral.btnCancelarClick(Sender: TObject);
begin
  frmConfigTabPrecGeral.Close;
end;

procedure TfrmConfigTabPrecGeral.btnGravarClick(Sender: TObject);
begin
  VerificaCamposVazios;
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente Confirmar a altera��o nas tabelas de pre�o?'),
    'Aten��o', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsTabelaPreco.Post;
        DM.Conexao.CommitRetaining;
        //AtualizaPrecos;
        Application.MessageBox('Atualiza��o de pre�os realizada com sucesso.',
          'Aten��o', MB_OK + MB_ICONEXCLAMATION);
        frmConfigTabPrecGeral.Close;
      end;

    idNo:
      begin
        Abort;
      end;
  end;

end;

function TfrmConfigTabPrecGeral.CalcPreco(vlrPrec1, vlrTabAtual,
  vlrAjuste: Double): Double;
var
  utils: TUtils;
  valor: Double;
begin
  vlrAjuste := utils.ValidaInteiroFloat(FloatToStr(vlrAjuste), 'F');

  if vlrAjuste > 0 then
  begin
    valor := RoundTo((vlrPrec1 + (vlrPrec1 * vlrAjuste / 100)), -2);
    Result := valor;
  end
  else
    Result := vlrTabAtual;
end;

procedure TfrmConfigTabPrecGeral.FormActivate(Sender: TObject);
begin
  fdsTabelaPreco.Close;
  fdsTabelaPreco.prepare;
  fdsTabelaPreco.Open;
  if fdsTabelaPreco.RecordCount>0 then
    fdsTabelaPreco.Edit
  else
  fdsTabelaPreco.Append;
end;

procedure TfrmConfigTabPrecGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmConfigTabPrecGeral := nil;
end;

procedure TfrmConfigTabPrecGeral.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmConfigTabPrecGeral.VerificaCamposVazios;
begin
  if Trim(edtDescricao1.Text) = EmptyStr then
  begin
    Application.MessageBox('Informe uma descri��o para o Pre�o 1 da tabela.',
      'Aten��o', MB_OK + MB_ICONERROR);
    Abort;
  end;
end;

end.
