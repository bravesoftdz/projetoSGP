unit untIncluirGastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  RzButton, RzBckgnd, Vcl.StdCtrls, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzEdit, Vcl.Mask, RzDBEdit, RzCmboBx,
  Vcl.DBCtrls, RzDBCmbo;

type
  TfrmIncluirGastos = class(TForm)
    RzPanel2: TRzPanel;
    RzBackground1: TRzBackground;
    lblCodigo: TRzLabel;
    RzLabel13: TRzLabel;
    lblTipo: TRzLabel;
    btnPesqFornec: TRzBitBtn;
    RzLabel1: TRzLabel;
    fdsCntPagar: TpFIBDataSet;
    dsCntPagar: TDataSource;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    edtDescricao: TRzDBEdit;
    edtFornecedor: TRzEdit;
    btnCancelar: TRzBitBtn;
    btnFinalizar: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTitulo: TRzLabel;
    fdsCntPagarItem: TpFIBDataSet;
    fdsCntPagarItemID: TFIBBCDField;
    fdsCntPagarItemIDFILIAL: TFIBBCDField;
    fdsCntPagarItemPOSICAO: TFIBStringField;
    fdsCntPagarItemPREFIXO: TFIBStringField;
    fdsCntPagarItemREFERENCIA: TFIBStringField;
    fdsCntPagarItemIDPAGAR: TFIBBCDField;
    fdsCntPagarItemDT_VENC: TFIBDateField;
    fdsCntPagarItemDT_PAG: TFIBDateField;
    fdsCntPagarItemACRESCIMO: TFIBBCDField;
    fdsCntPagarItemDESCONTO: TFIBBCDField;
    fdsCntPagarItemVALOR: TFIBBCDField;
    fdsCntPagarItemVALOR_PAGO: TFIBBCDField;
    fdsCntPagarItemHISTORICO: TFIBStringField;
    fdsCntPagarItemPARCELA: TFIBStringField;
    fdsCntPagarItemENVIADO_WEB: TFIBStringField;
    fdsCntPagarItemNUM_DOCUMENTO: TFIBStringField;
    fdsCntPagarItemBAIXA_AGRUPADA: TFIBStringField;
    fdsCntPagarItemPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntPagarItemPAG_DESC_ACRE: TFIBBCDField;
    fdsCntPagarItemPAG_DINHEIRO: TFIBBCDField;
    fdsCntPagarItemID_PAG_ITEM: TFIBBCDField;
    fdsCntPagarItemREC_DINHEIRO: TFIBBCDField;
    fdsCntPagarID: TFIBBCDField;
    fdsCntPagarIDFILIAL: TFIBBCDField;
    fdsCntPagarDT_INC: TFIBDateField;
    fdsCntPagarPOSICAO: TFIBStringField;
    fdsCntPagarPREFIXO: TFIBStringField;
    fdsCntPagarREFERENCIA: TFIBStringField;
    fdsCntPagarIDFORNECEDOR: TFIBBCDField;
    fdsCntPagarACRESCIMO: TFIBBCDField;
    fdsCntPagarDESCONTO: TFIBBCDField;
    fdsCntPagarVALOR: TFIBBCDField;
    fdsCntPagarVALOR_PAGO: TFIBBCDField;
    fdsCntPagarIDPORTADOR: TFIBBCDField;
    fdsCntPagarHISTORICO: TFIBStringField;
    fdsCntPagarIDFORMA_PAG: TFIBBCDField;
    fdsCntPagarIDCOMPRA: TFIBBCDField;
    fdsCntPagarTOT_PARCELA: TFIBStringField;
    fdsCntPagarPARCELAS_PG: TFIBIntegerField;
    fdsCntPagarDINHEIRO: TFIBBCDField;
    fdsCntPagarENVIADO_WEB: TFIBStringField;
    fdsCntPagarDT_ALT: TFIBDateField;
    fdsCntPagarDESCRICAO: TFIBStringField;
    lblTituloTotal: TRzLabel;
    edtValor: TRzDBEdit;
    dtpDtPagamento: TRzDateTimeEdit;
    RzLabel2: TRzLabel;
    fdsPlanoConta: TpFIBDataSet;
    fdsPlanoContaID: TFIBBCDField;
    fdsPlanoContaDT_INC: TFIBDateField;
    fdsPlanoContaDT_ALT: TFIBDateField;
    fdsPlanoContaSTATUS: TFIBStringField;
    fdsPlanoContaNOME: TFIBStringField;
    RzLabel3: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    fdsCntPagarIDPLANO_CONTA: TFIBBCDField;
    dsPlanoConta: TDataSource;
    procedure btnPesqFornecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDescricaoExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIncluirGastos: TfrmIncluirGastos;

implementation

{$R *.dfm}

uses untData, untPesqFornecedor;

procedure TfrmIncluirGastos.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar o lan�amento?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
    idYes:
      begin
        fdsCntPagar.Cancel;
        DM.Conexao.RollbackRetaining;
        ModalResult := mrCancel;
      end;
  end;
end;

procedure TfrmIncluirGastos.btnFinalizarClick(Sender: TObject);
begin
  if fdsCntPagarVALOR.AsFloat <= 0 then
  begin
    Application.MessageBox('Voc� deve informar um valor par o lan�amento.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    edtValor.SetFocus;
    Abort;
  end;

  fdsCntPagarVALOR_PAGO.AsFloat := fdsCntPagarVALOR.AsFloat;
  fdsCntPagar.Post;

  fdsCntPagarItem.Open;
  fdsCntPagarItem.Append;
  fdsCntPagarItemDT_PAG.AsDateTime := dtpDtPagamento.Date;
  fdsCntPagarItemDT_VENC.AsDateTime := dtpDtPagamento.Date;
  fdsCntPagarItemIDFILIAL.AsInteger := fdsCntPagarIDFILIAL.AsInteger;
  fdsCntPagarItemPOSICAO.AsString := 'PG';
  fdsCntPagarItemPREFIXO.AsString := 'GG';
  fdsCntPagarItemIDPAGAR.AsInteger := fdsCntPagarID.AsInteger;
  fdsCntPagarItemVALOR.AsFloat := fdsCntPagarVALOR.AsFloat;
  fdsCntPagarItemVALOR_PAGO.AsFloat := fdsCntPagarVALOR.AsFloat;
  fdsCntPagarItemPARCELA.AsString := '001001';
  fdsCntPagarItemPAGAMENTO_MOEDA.AsString := 'DN';
  fdsCntPagarItemPAG_DINHEIRO.AsFloat := fdsCntPagarVALOR.AsFloat;
  fdsCntPagarItem.Post;

  DM.Conexao.CommitRetaining;
  ModalResult := mrOk;

end;

procedure TfrmIncluirGastos.btnPesqFornecClick(Sender: TObject);
begin
  Try
    frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
    frmPesqFornecedor.ShowModal;
  Finally
    if frmPesqFornecedor.ModalResult = mrOk then
    begin
      fdsCntPagarIDFORNECEDOR.AsInteger :=
        frmPesqFornecedor.fdsFornecedorID.AsInteger;
      edtFornecedor.Text := frmPesqFornecedor.fdsFornecedorNOME.AsString;
      edtDescricao.SetFocus;
    end;
    frmPesqFornecedor.Free;
  End;
end;

procedure TfrmIncluirGastos.edtDescricaoExit(Sender: TObject);
begin
  btnFinalizar.SetFocus;
end;

procedure TfrmIncluirGastos.edtValorExit(Sender: TObject);
begin
  dtpDtPagamento.SetFocus;
end;

procedure TfrmIncluirGastos.FormActivate(Sender: TObject);
begin
  dtpDtPagamento.Date := Now;
  edtValor.SetFocus;
end;

procedure TfrmIncluirGastos.FormCreate(Sender: TObject);
begin
  fdsCntPagar.Open;
  fdsCntPagar.Append;
  fdsCntPagarDT_INC.AsDateTime := Now;
  fdsCntPagarPREFIXO.Text := 'GG';
  fdsCntPagarPOSICAO.AsString := 'PG';
  fdsCntPagarIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsCntPagarIDCOMPRA.AsInteger := 0;
  fdsCntPagarIDPORTADOR.AsInteger := 1;
  fdsCntPagarIDFORMA_PAG.AsInteger := 1;
  fdsCntPagarIDFORNECEDOR.AsInteger := 1;
  edtFornecedor.Text := 'FORNECEDOR GERAL';
  fdsCntPagarTOT_PARCELA.AsString := '001';
  fdsCntPagarPARCELAS_PG.AsString := '1';
  fdsPlanoConta.Open;
  fdsPlanoConta.Last;
  fdsPlanoConta.First;
end;

procedure TfrmIncluirGastos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
