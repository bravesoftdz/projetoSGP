unit untPesqNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, FIBDataSet,
  pFIBDataSet,
   JvExDBGrids, JvDBGrid,
  Mask, RzEdit,JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmPesqNFe = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Image1: TImage;
    lblTituloCliente: TRzLabel;
    edtPesqCliente: TEdit;
    edtCodigo: TEdit;
    btnPesquisar: TRzBitBtn;
    btnPesqCliente: TRzBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    fdsNFe: TpFIBDataSet;
    dsNFe: TDataSource;
    fdsNFeID: TFIBBCDField;
    fdsNFeIDFILIAL: TFIBBCDField;
    fdsNFeDT_INC: TFIBDateField;
    fdsNFeDT_ALT: TFIBDateField;
    fdsNFeDT_EMISSAO: TFIBDateField;
    fdsNFeSTATUS: TFIBStringField;
    fdsNFeIDCLIENTE: TFIBBCDField;
    fdsNFeVLR_TOTITEM: TFIBBCDField;
    fdsNFeVLR_DESCONTO: TFIBBCDField;
    fdsNFeVLR_FRETE: TFIBBCDField;
    fdsNFeVLR_TOTAL: TFIBBCDField;
    fdsNFePESO: TFIBBCDField;
    fdsNFeSUBTRIBUTARIA: TFIBBCDField;
    fdsNFeENVIADO_WEB: TFIBStringField;
    fdsNFeCODIGO_NFE: TFIBIntegerField;
    fdsNFeCHAVE_CONSULTA: TFIBStringField;
    fdsNFeNUMERO_PROTOCOLO: TFIBStringField;
    fdsNFeNATUREZA_OPERACAO: TFIBStringField;
    fdsNFeOBS: TFIBStringField;
    fdsNFeCHAVE_NF_DEVOLUCAO: TFIBStringField;
    fdsNFeTIPO_FRETE: TFIBIntegerField;
    fdsNFeIDTRANSPORTADORA: TFIBBCDField;
    fdsNFeIDVEICULO: TFIBBCDField;
    fdsNFeTRANSP_QTN_VOLUME: TFIBIntegerField;
    fdsNFeTRANSP_ESPECIE: TFIBStringField;
    fdsNFeTRANSP_MARCA: TFIBStringField;
    fdsNFeTRANSP_NUMERACAO: TFIBIntegerField;
    fdsNFeICMS_VBC: TFIBBCDField;
    fdsNFeICMS_VLR: TFIBBCDField;
    fdsNFeDT_SAIDA: TFIBDateField;
    fdsNFeTRANSP_CNPJ_CPF: TFIBStringField;
    fdsNFeTRANSP_NOME: TFIBStringField;
    fdsNFeTRANSP_IE: TFIBStringField;
    fdsNFeTRANSP_ENDERECO: TFIBStringField;
    fdsNFeTRANSP_CIDADE: TFIBStringField;
    fdsNFeTRANSP_UF: TFIBStringField;
    fdsNFeVEIC_PLACA: TFIBStringField;
    fdsNFeVEIC_UF: TFIBStringField;
    fdsNFeINFO_ADICIONAL: TFIBMemoField;
    fdsNFeICMS_ST_VBC: TFIBBCDField;
    fdsNFeICMS_ST_VLR: TFIBBCDField;
    fdsNFeICMS_REDUCAO_BC: TFIBBCDField;
    fdsNFeOUTRAS_DESPESAS: TFIBBCDField;
    fdsNFeIDFORMA_PAG: TFIBBCDField;
    fdsNFeTOT_PARCELA: TFIBIntegerField;
    fdsNFeORIGEM_PEDIDO_VENDA: TFIBStringField;
    fdsNFeIDPEDIDO: TFIBIntegerField;
    fdsNFeORIGEM_PEDIDO: TFIBStringField;
    fdsNFeENTREG_CNPJ_CPF: TFIBStringField;
    fdsNFeENTREG_ENDERECO: TFIBStringField;
    fdsNFeENTREG_NUMERO: TFIBStringField;
    fdsNFeENTREG_COMPLEMENTO: TFIBStringField;
    fdsNFeENTREG_BAIRRO: TFIBStringField;
    fdsNFeENTREG_CIDADE_CODIGO: TFIBIntegerField;
    fdsNFeENTREG_CIDADE: TFIBStringField;
    fdsNFeENTREG_UF: TFIBStringField;
    fdsNFeENTREG_CEP: TFIBStringField;
    fdsNFeENTREG_TELEFONE: TFIBStringField;
    btnSelecionar: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    fdsNFeNOMECLIENTE: TFIBStringField;
    fdsNFeCHAVE_CONTIGENCIA: TFIBStringField;
    procedure btnPesqClienteClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
  idCliente:Integer;
    { Public declarations }
  end;

var
  frmPesqNFe: TfrmPesqNFe;

implementation

{$R *.dfm}

uses untPesqCliente, untData;

procedure TfrmPesqNFe.btnPesqClienteClick(Sender: TObject);
begin
  Try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      idCliente := frmPesqCliente.fdsClientesID.AsInteger;
      edtPesqCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
      //RetornaClienteId(edtClienteCodigo.Text);
    end;
    frmPesqCliente.Free;
  End
end;

procedure TfrmPesqNFe.btnPesquisarClick(Sender: TObject);
begin
 with fdsNFe do
 begin
   close;
   Conditions.Clear;
   if edtCodigo.Text<>EmptyStr then
   Conditions.AddCondition('CODIGO','N.CODIGO_NFE ='+QuotedStr(edtCodigo.Text),True);
   if edtPesqCliente.Text<>EmptyStr then
   Conditions.AddCondition('IDCLIENTE','N.IDCLIENTE ='+QuotedStr(IntToStr(idCliente)),True);
   Conditions.Apply;
   prepare;
   open;
 end;
end;

procedure TfrmPesqNFe.FormCreate(Sender: TObject);
begin
 fdsNFe.Open;
end;

procedure TfrmPesqNFe.btnSelecionarClick(Sender: TObject);
begin
 ModalResult:= mrOk;
end;

procedure TfrmPesqNFe.RzBitBtn2Click(Sender: TObject);
begin
 ModalResult:= mrCancel;
end;

end.
