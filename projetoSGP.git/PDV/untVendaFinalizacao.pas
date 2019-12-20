unit untVendaFinalizacao;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzDBEdit, DB, FIBDataSet,
  pFIBDataSet, RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage,
  RzPanel, RzBckgnd, Grids, DBGrids, RzDBGrid, RzTabs, RzButton, JvExMask,
  JvToolEdit, JvMaskEdit, RzCmboBx, FIBQuery, pFIBQuery, pFIBClientDataSet,
  DBClient, Math, JvExDBGrids, JvDBGrid, RzRadChk, Vcl.Imaging.pngimage,
  frxClass, frxDBSet, FIBDatabase, pFIBDatabase,uUtils;

type
  TfrmVendaFinalizacao = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel1: TRzLabel;
    RzPanel3: TRzPanel;
    lblTituloTotal: TRzLabel;
    lblCidade: TRzLabel;
    edtCliente: TRzEdit;
    fdsFormaPagamento: TpFIBDataSet;
    dsFormaPagamento: TDataSource;
    fdsFormaPagamentoID: TFIBBCDField;
    fdsFormaPagamentoDT_INC: TFIBDateField;
    fdsFormaPagamentoDT_ALT: TFIBDateField;
    fdsFormaPagamentoNOME: TFIBStringField;
    fdsFormaPagamentoPARCELA_MAXIMA: TFIBSmallIntField;
    fdsFormaPagamentoMOEDA: TFIBStringField;
    dsCntReceber: TDataSource;
    pgcParcelas: TRzPageControl;
    tbsNota: TRzTabSheet;
    tbsCheque: TRzTabSheet;
    gdrNota: TRzDBGrid;
    gdrCheque: TRzDBGrid;
    edtValorVenda: TRzEdit;
    qryGenDoc: TpFIBQuery;
    cdsCntReceber_Item: TpFIBClientDataSet;
    cdsCntReceber_ItemID: TpFIBClientBCDField;
    cdsCntReceber_ItemPOSICAO: TStringField;
    cdsCntReceber_ItemPREFIXO: TStringField;
    cdsCntReceber_ItemREFERENCIA: TStringField;
    cdsCntReceber_ItemDT_VENC: TDateField;
    cdsCntReceber_ItemDT_PAG: TDateField;
    cdsCntReceber_ItemDESCONTO: TpFIBClientBCDField;
    cdsCntReceber_ItemVALOR: TpFIBClientBCDField;
    cdsCntReceber_ItemVALOR_PAGO: TpFIBClientBCDField;
    cdsCntReceber_ItemHISTORICO: TStringField;
    cdsCntReceber_ItemPARCELA: TStringField;
    cdsChequeCntReceber: TpFIBClientDataSet;
    dsChequeCntReceber: TDataSource;
    cdsChequeCntReceberIDBANCO: TpFIBClientBCDField;
    cdsChequeCntReceberAGENCIA: TStringField;
    cdsChequeCntReceberCONTA: TStringField;
    cdsChequeCntReceberNUM_CHEQUE: TStringField;
    cdsChequeCntReceberEMITENTE: TStringField;
    cdsChequeCntReceberVALOR: TpFIBClientBCDField;
    cdsChequeCntReceberDT_VENCIMENTO: TDateField;
    cdsChequeCntReceberPREFIXO: TStringField;
    cdsChequeCntReceberNUM_BANCO: TIntegerField;
    cdsChequeCntReceberPARCELA: TStringField;
    qryRetornaIDCntReceber_Item: TpFIBQuery;
    fdsCntReceber: TpFIBDataSet;
    fdsCntReceberID: TFIBBCDField;
    fdsCntReceberDT_INC: TFIBDateField;
    fdsCntReceberDT_ALT: TFIBDateField;
    fdsCntReceberPOSICAO: TFIBStringField;
    fdsCntReceberPREFIXO: TFIBStringField;
    fdsCntReceberREFERENCIA: TFIBStringField;
    fdsCntReceberIDCLIENTE: TFIBBCDField;
    fdsCntReceberACRESCIMO: TFIBBCDField;
    fdsCntReceberDESCONTO: TFIBBCDField;
    fdsCntReceberVALOR: TFIBBCDField;
    fdsCntReceberVALOR_PAGO: TFIBBCDField;
    fdsCntReceberIDPORTADOR: TFIBBCDField;
    fdsCntReceberHISTORICO: TFIBStringField;
    fdsCntReceberIDFORMA_PAG: TFIBBCDField;
    fdsCntReceberIDVENDA: TFIBBCDField;
    fdsCntReceberTIPO_VENDA: TFIBStringField;
    fdsCntReceberTOT_PARCELA: TFIBStringField;
    fdsCntReceberPARCELAS_PG: TFIBIntegerField;
    fdsCntReceberDINHEIRO: TFIBBCDField;
    cdsChequeCntReceberIDRECEBER_ITEM: TIntegerField;
    lblCodigo: TRzLabel;
    RzLabel5: TRzLabel;
    edtIDVenda: TRzEdit;
    edtPrefixoVenda: TRzEdit;
    btnPesqCliente: TRzBitBtn;
    edtVendedor: TRzEdit;
    RzLabel7: TRzLabel;
    btnPesqVendedor: TRzBitBtn;
    gbxEntregar: TRzGroupBox;
    chkVendaEntregar: TRzCheckBox;
    mmoOBS: TRzMemo;
    fdsCntReceberIDFILIAL: TFIBBCDField;
    fdsCntReceberENVIADO_WEB: TFIBStringField;
    cdsCntReceber_ItemIDFILIAL: TIntegerField;
    cdsChequeCntReceberIDFILIAL: TIntegerField;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    RzPanel2: TRzPanel;
    RzLabel12: TRzLabel;
    edtDinheiro: TRzEdit;
    RzLabel2: TRzLabel;
    edtCheque: TRzEdit;
    RzLabel3: TRzLabel;
    edtCartao: TRzEdit;
    btnGerarParcelas: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    fdsCntReceber_Item: TpFIBDataSet;
    fdsCntReceber_ItemID: TFIBBCDField;
    fdsCntReceber_ItemPOSICAO: TFIBStringField;
    fdsCntReceber_ItemPREFIXO: TFIBStringField;
    fdsCntReceber_ItemREFERENCIA: TFIBStringField;
    fdsCntReceber_ItemIDRECEBER: TFIBBCDField;
    fdsCntReceber_ItemDT_VENC: TFIBDateField;
    fdsCntReceber_ItemDT_PAG: TFIBDateField;
    fdsCntReceber_ItemACRESCIMO: TFIBBCDField;
    fdsCntReceber_ItemDESCONTO: TFIBBCDField;
    fdsCntReceber_ItemVALOR: TFIBBCDField;
    fdsCntReceber_ItemVALOR_PAGO: TFIBBCDField;
    fdsCntReceber_ItemHISTORICO: TFIBStringField;
    fdsCntReceber_ItemPARCELA: TFIBStringField;
    fdsCntReceber_ItemENVIADO_WEB: TFIBStringField;
    fdsCntReceber_ItemIDFILIAL: TFIBBCDField;
    fdsCntReceber_ItemBAIXA_AGRUPADA: TFIBStringField;
    fdsCntReceber_ItemPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntReceber_ItemREC_DESC_ACRE: TFIBBCDField;
    fdsCntReceber_ItemREC_DINHEIRO: TFIBBCDField;
    fdsCntReceber_ItemID_REC_ITEM: TFIBBCDField;
    frxReceber: TfrxDBDataset;
    frxReceber_Item: TfrxDBDataset;
    fdsCliente: TpFIBDataSet;
    fdsClienteID: TFIBBCDField;
    fdsClienteDT_INC: TFIBDateField;
    fdsClienteDT_ALT: TFIBDateField;
    fdsClienteSTATUS: TFIBStringField;
    fdsClienteNOME: TFIBStringField;
    fdsClienteDT_NASC: TFIBDateField;
    fdsClienteTELEFONE: TFIBStringField;
    fdsClienteENDERECO: TFIBStringField;
    fdsClienteBAIRRO: TFIBStringField;
    fdsClienteIDCIDADE: TFIBBCDField;
    fdsClienteCEP: TFIBStringField;
    fdsClienteRG: TFIBStringField;
    fdsClienteCPF: TFIBStringField;
    fdsClienteSEXO: TFIBStringField;
    fdsClientePROFISSAO: TFIBStringField;
    fdsClienteEMAIL: TFIBStringField;
    fdsClienteCELULAR: TFIBStringField;
    fdsClienteTIPO: TFIBStringField;
    fdsClienteRAZAOSOCIAL: TFIBStringField;
    fdsClienteCONTATO: TFIBStringField;
    fdsClienteCNPJ: TFIBStringField;
    fdsClienteIE: TFIBStringField;
    fdsClienteIDVENDEDOR: TFIBBCDField;
    fdsClienteEMAIL_NFE: TFIBStringField;
    fdsClienteKM_TOTAL: TFIBSmallIntField;
    fdsClienteDT_ULTIMO_CONTATO: TFIBDateField;
    fdsClienteLIMITE_CREDITO: TFIBBCDField;
    fdsClienteIDFORMA_PAGAMENTO: TFIBBCDField;
    num: TFIBBCDField;
    fdsClienteENVIADO_WEB: TFIBStringField;
    fdsClienteIDFILIAL: TFIBBCDField;
    fdsClienteREFERENCIA: TFIBStringField;
    frxCliente: TfrxDBDataset;
    fdsClienteCIDADE: TFIBStringField;
    fdsClienteUF: TFIBStringField;
    edtNota: TRzEdit;
    RzLabel4: TRzLabel;
    edtParcelasNT: TRzEdit;
    RzLabel11: TRzLabel;
    RzLabel9: TRzLabel;
    edtParcelasCT: TRzEdit;
    RzLabel10: TRzLabel;
    RzLabel13: TRzLabel;
    edtParcelasCH: TRzEdit;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    qryInsertCntReceber_Item: TpFIBQuery;
    qryInsertChequeCntReceber: TpFIBQuery;
    btnOutrosPagamentos: TRzBitBtn;
    fdsFormaPagamentoENVIADO_WEB: TFIBStringField;
    edtIdVendedor: TRzEdit;
    RzLabel6: TRzLabel;
    lblVlrCredito: TRzLabel;
    lblPagar: TRzLabel;
    fdsClientePROPRIETARIO: TFIBStringField;
    fdsClienteCREDITO: TFIBBCDField;
    qryComand: TpFIBQuery;
    RzLabel8: TRzLabel;
    cbxDescAcre: TRzComboBox;
    cbxTipoDesconto: TRzComboBox;
    edtDesconto: TRzEdit;
    fdsClienteLOCAL_TRABALHO: TFIBStringField;
    fdsClienteTEM_EMPILHADEIRA: TFIBStringField;
    fdsClienteIDCLIENTE_APP: TFIBBCDField;
    fdsClienteNUMERO: TFIBStringField;
    transVendaFinal: TpFIBTransaction;
    btnInfoAdicional: TRzBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDinheiroExit(Sender: TObject);
    procedure edtDinheiroEnter(Sender: TObject);
    procedure edtChequeEnter(Sender: TObject);
    procedure edtCartaoEnter(Sender: TObject);
    procedure edtCartaoExit(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure GravaCntReceber(valorTotal: Double; parcelasTotal: string; idFormaPag: integer);
    procedure GeraParcelaCheque(prefixo : string; parcelas: Integer; vlrParcelar: Double);
    procedure GeraParcelaNota(prefixo: string; parcelas: Integer; vlrParcelar: Double);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure gdrChequeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrNotaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkVendaEntregarClick(Sender: TObject);
    procedure RetornaCliente;
    procedure RetornaVendedor;
    procedure CalculaDescontoTotal;
    procedure ImprimirNota;
    procedure GerarDocumentos();
    procedure VerificaTroco;
    procedure VerificaSituacaoCliente;
    procedure RecalculaParcelas(vlrAlterado : Double; prefixo: string; index: integer);
    procedure VerificaFormaPagamento;
    procedure CalculaValorRestante();
    procedure GravaCntReceberItem(prefixo, parcela: string; dtVenc: TDate; valor: Double);
    function RetornaCntReceberItemID(idFilial: Integer; valor: Double; dt_venc: TDate): Integer;
    procedure btnPesqClienteClick(Sender: TObject);
    procedure btnPesqVendedorClick(Sender: TObject);
    procedure edtDescontoEnter(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure btnOutrosPagamentosClick(Sender: TObject);
    procedure cdsCntReceber_ItemAfterEdit(DataSet: TDataSet);
    procedure cdsCntReceber_ItemAfterPost(DataSet: TDataSet);
    procedure cdsChequeCntReceberAfterPost(DataSet: TDataSet);
    procedure cdsChequeCntReceberAfterEdit(DataSet: TDataSet);
    procedure edtParcelasCHExit(Sender: TObject);
    procedure edtParcelasCTExit(Sender: TObject);
    procedure edtParcelasNTExit(Sender: TObject);
    procedure edtIdVendedorExit(Sender: TObject);
    procedure cbxTipoDescontoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNotaExit(Sender: TObject);
    procedure edtNotaEnter(Sender: TObject);
    procedure btnInfoAdicionalClick(Sender: TObject);
    function  NotasAtraso(IDCliente:Integer):TlCredito;

  private

    { Private declarations }
  public
      var
        idVenda, idReceber, idFormaPag, idBanco, nBanco, nAgencia, nConta, celula, parcelas : Integer;
        idCliente, idVendedor, nParcelasFinanceira : Integer;
        tipoVenda, moeda, tipoCartao: string[2];
        valorDoc, valorParcelar, valorDinheiro, valorDesconto, valorCheque, valorCartao, troco, valorRestante : Double;
        valorFinanceira, valorValeDesconto, valorTicket, valorCredito, valorDevolucao, creditoTotal: Double;
        cliente, emitente: string;
        vendaEntregar, editouParcela, autoParcela, gerouParcelas, btnPesqClienteClk : Boolean;
        pesoEntregar : Double;

  end;

var
  frmVendaFinalizacao: TfrmVendaFinalizacao;

implementation

uses untData, untLancDadosBasicCheque, untPesqCliente, untPesqVendedor,
  untItensEntregar, untTroco, untOutrosPagamentos, untLogin, untPrincipal,
  uVerificaPermicao, untSelDtPrimeiroVencimento, untTipoCartaoCredito,
  UntVendaInfo, untMensagens;

{$R *.dfm}

{ TfrmVendaFinalizacao }

procedure TfrmVendaFinalizacao.FormCreate(Sender: TObject);
begin
  transVendaFinal.Active := True;
end;

procedure TfrmVendaFinalizacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    btnCancelar.Click;
  end
  else if Key = VK_F10 then
       begin
          SelectNext(ActiveControl, True, True);
          btnGravar.Click;
       end;
end;

procedure TfrmVendaFinalizacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;

   if (Key = #110) or (Key = #78) then
  begin
    Key := #0;
    edtNota.Enabled := True;
    edtParcelasNT.Enabled := True;
    edtNota.Color := clMoneyGreen;
    edtParcelasNT.Color := clMoneyGreen;
    edtNota.SetFocus;
  end;


   if (Key = #100) or (Key = #68) then
  begin
    Key := #0;
    edtDinheiro.Enabled := True;
    edtDinheiro.Color := clMoneyGreen;
    edtDinheiro.SetFocus;
  end;

  if (Key = #104) or (Key =#72) then
  begin
    Key := #0;
    edtCheque.Enabled := True;
    edtParcelasCH.Enabled := True;
    edtCheque.Color := clMoneyGreen;
    edtParcelasCH.Color := clMoneyGreen;
    edtCheque.SetFocus;
  end;

  if (Key = #116) or ( Key = #84) then
  begin
    Key := #0;
    edtCartao.Enabled := True;
    edtParcelasCT.Enabled := True;
    edtCartao.Color := clMoneyGreen;
    edtParcelasCT.Color := clMoneyGreen;
    edtCartao.SetFocus;
  end;
end;

procedure TfrmVendaFinalizacao.FormShow(Sender: TObject);
var
  utils : TUtils;
begin
  edtValorVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmPrincipal.fdsVendaVLR_TOTAL.AsFloat));
  edtDesconto.Text := FloatToStr(frmPrincipal.fdsVendaVlr_Desconto.AsFloat);
  valorDinheiro := 0;
 // valorDesconto := 0;
  troco:=0;
  valorCheque := 0;
  valorCartao := 0;
  valorFinanceira := 0;
  valorValeDesconto := 0;
  valorTicket := 0;
 // vendaEntregar := True;//vitor

  if creditoTotal > 0 then
  begin
    valorCredito := creditoTotal;
  end
  else
  begin
    if vlrDevolucao > 0 then
    begin
      valorCredito := vlrDevolucao;
    end;
  end;

  if valorCredito > 0 then
  begin
    lblVlrCredito.Visible := True;
    lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', valorCredito);
    lblPagar.Visible := True;

    if valorCredito > valorDoc then
    begin
       valorCredito := valorDoc;
       lblPagar.Caption := 'Pagar: R$ 0,00';
    end
     else
     begin
       lblPagar.Caption := 'Pagar: ' + FormatFloat('R$ #,##0.00', valorDoc - valorCredito);
     end;
  end;

  CalculaValorRestante;

  fdsFormaPagamento.Open;
  cdsCntReceber_Item.CreateDataSet;
  cdsChequeCntReceber.CreateDataSet;
  cdsCntReceber_Item.Open;
  fdsVendedor.Open;
  edtIdVendedor.Text := IntToStr(idVendedor);
  fdsVendedor.Locate('ID', IntToStr(idVendedor), []);
  edtVendedor.Text := fdsVendedorNOME.AsString;
  idFormaPag := DM.fdsConfigIDFORM_PAG_PAD.AsInteger;
  edtDesconto.SetFocus;
  moeda := 'DN';
  editouParcela := False;
  autoParcela:= False;
  gerouParcelas := False;
  btnPesqClienteClk := False;

  if edtIdVendedor.Enabled = True then
    edtIdVendedor.SetFocus
  else
    edtDesconto.SetFocus;

//  //Vitor est� parte foi feita para n�o ter que alterar a forma como calcula o valor inicial a pagar
    btnGerarParcelas.Enabled := False;

  if entregarDefault = 'S' then
    chkVendaEntregar.Checked := True;

end;

procedure TfrmVendaFinalizacao.gdrChequeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsChequeCntReceber.RecNo) then
    begin
    gdrCheque.Canvas.Brush.Color := DM.gridOddColor;
    gdrCheque.Canvas.FillRect(Rect);
    gdrCheque.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmVendaFinalizacao.gdrNotaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsCntReceber_Item.RecNo) then
    begin
    gdrNota.Canvas.Brush.Color := DM.gridOddColor;
    gdrNota.Canvas.FillRect(Rect);
    gdrNota.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmVendaFinalizacao.GeraParcelaCheque(prefixo: string;
  parcelas: Integer; vlrParcelar: Double);
var
  i : integer;
  parcelasTemp : string[3];
  valorParcela : Double;
  dataParcela : TDateTime;
  utils: TUtils;
begin
  i := 1;

  parcelasTemp := utils.FormataParcelas(IntToStr(parcelas));

  valorParcela := vlrParcelar / parcelas;

  valorParcela := RoundTo(valorParcela, -2);

  dataParcela := Now;

  for i := 1 to parcelas do
  begin
    cdsChequeCntReceber.Append;
    cdsChequeCntReceberIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsChequeCntReceberEMITENTE.AsString := emitente;
    cdsChequeCntReceberIDBANCO.AsInteger := idBanco;
    cdsChequeCntReceberAGENCIA.AsInteger := nAgencia;
    cdsChequeCntReceberCONTA.AsInteger := nConta;
    cdsChequeCntReceberNUM_BANCO.AsInteger := nBanco;
    dataParcela := dataParcela + DM.fdsConfigDIAS_PRIMEIRA_PARCELA.AsInteger;
    cdsChequeCntReceberDT_VENCIMENTO.AsDateTime := dataParcela;
    cdsChequeCntReceberPARCELA.AsString:= utils.FormataParcelas(IntToStr(i)) + parcelasTemp;

      if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas)); //joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsChequeCntReceberVALOR.AsFloat := valorParcela;

    cdsChequeCntReceber.Post;
    tbsCheque.Show;
  end;
end;

procedure TfrmVendaFinalizacao.GeraParcelaNota(prefixo: string; parcelas: Integer; vlrParcelar: Double);
var
  i, diasParcela : integer;
  parcelasTemp : string[3];
  valorParcela : Double;
  dataParcela : TDateTime;
  utils: TUtils;
  Result:boolean;
begin
  i := 1;
  result:=false;
  parcelasTemp := utils.FormataParcelas(IntToStr(parcelas));

  valorParcela := vlrParcelar / parcelas;

  valorParcela := RoundTo(valorParcela, -2);

  if frmPrincipal.telaPrimeiroVencimento = 'S' then
  begin
    try
      frmSelDtPrimeiroVencimento := TfrmSelDtPrimeiroVencimento.Create(nil);
      frmSelDtPrimeiroVencimento.ShowModal;
    finally
      if frmSelDtPrimeiroVencimento.ModalResult = mrOk then
      begin
        dataParcela := frmSelDtPrimeiroVencimento.dtpPrimeiroVencimento.Date;
        diasParcela := StrToInt(frmSelDtPrimeiroVencimento.edtDiasParcelas.Text);
        result:=true;
      end
      else
      begin
        dataParcela := Now;
        diasParcela :=DM.fdsConfigDIAS_PRIMEIRA_PARCELA.AsInteger;
        result:=false;
      end;
    end;
  end
  else
  begin
    dataParcela := Now;
    diasParcela := DM.fdsConfigDIAS_PRIMEIRA_PARCELA.AsInteger;
    result:=false;
  end;

  for i := 1 to parcelas do
  begin
    cdsCntReceber_Item.Append;
    cdsCntReceber_ItemIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsCntReceber_ItemPOSICAO.AsString := 'AB';
    cdsCntReceber_ItemPARCELA.AsString:= utils.FormataParcelas(IntToStr(i)) + parcelasTemp;
    cdsCntReceber_ItemPREFIXO.AsString := prefixo;

    if ((prefixo = 'CT') and (DM.fdsConfigCARTAO_CREDITO_AVISTA.AsString = 'S')) or (prefixo = 'CD') then
      dataParcela := Now
    else
    begin
      if (i=1) and (frmPrincipal.telaPrimeiroVencimento = 'S') and (result=true) then
        dataParcela:= dataParcela
      else
      dataParcela := dataParcela + diasParcela;
    end;

    cdsCntReceber_ItemDT_VENC.AsDateTime := dataParcela;

    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas)); //joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsCntReceber_ItemVALOR.AsFloat := valorParcela;

    cdsCntReceber_Item.Post;
  end;
end;

procedure TfrmVendaFinalizacao.GerarDocumentos;
var
   prefixoTemp : string[2];
   idReceberItem: Integer;
begin

  cdsChequeCntReceber.First;

  if cdsChequeCntReceber.RecordCount > 0 then
  begin
    GravaCntReceber(valorCheque, edtParcelasCH.Text, 4);

    while not(cdsChequeCntReceber.Eof) do
    begin
      GravaCntReceberItem('CH', cdsChequeCntReceberPARCELA.AsString, cdsChequeCntReceberDT_VENCIMENTO.AsDateTime, cdsChequeCntReceberVALOR.AsFloat);
      idReceberItem := RetornaCntReceberItemID(cdsChequeCntReceberIDFILIAL.AsInteger, cdsChequeCntReceberVALOR.AsFloat, cdsChequeCntReceberDT_VENCIMENTO.AsDateTime);

      qryInsertChequeCntReceber.Close;
      qryInsertChequeCntReceber.ParamByName('IDRECEBER_ITEM').AsString := IntToStr(idReceberItem);
      qryInsertChequeCntReceber.ParamByName('IDFILIAL').AsInteger := cdsChequeCntReceberIDFILIAL.AsInteger;
      qryInsertChequeCntReceber.ParamByName('IDBANCO').AsString := IntToStr(idBanco);
      qryInsertChequeCntReceber.ParamByName('AGENCIA').AsString := IntToStr(nAgencia);
      qryInsertChequeCntReceber.ParamByName('CONTA').AsString := IntToStr(nConta);
      qryInsertChequeCntReceber.ParamByName('NUM_CHEQUE').AsString := cdsChequeCntReceberNUM_CHEQUE.AsString;
      qryInsertChequeCntReceber.ParamByName('DT_EMISSAO').AsDateTime := Now;
      qryInsertChequeCntReceber.ParamByName('EMITENTE').AsString := cdsChequeCntReceberEMITENTE.AsString;
      qryInsertChequeCntReceber.ParamByName('VALOR').AsFloat := cdsChequeCntReceberVALOR.AsFloat;
      qryInsertChequeCntReceber.ParamByName('DT_VENCIMENTO').AsDateTime := cdsChequeCntReceberDT_VENCIMENTO.AsDateTime;
      qryInsertChequeCntReceber.Prepare;
      qryInsertChequeCntReceber.ExecQuery;

      cdsChequeCntReceber.Next;
    end;
    moeda := 'CH';

    transVendaFinal.CommitRetaining;
  end;

  cdsCntReceber_Item.First;
  prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;

  while not(cdsCntReceber_Item.Eof) do
  Begin
    if (prefixoTemp = 'CT') or (prefixoTemp = 'CD') then
    begin
      if prefixoTemp = 'CT' then
        GravaCntReceber(valorCartao, edtParcelasCT.Text, 2);

      if prefixoTemp = 'CD' then
        GravaCntReceber(valorCartao, edtParcelasCT.Text, 3);

      while (((prefixoTemp = 'CT') or (prefixoTemp = 'CD')) and not(cdsCntReceber_Item.Eof)) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString, cdsCntReceber_ItemDT_VENC.AsDateTime, cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
      moeda := prefixoTemp;
    end;

    if (prefixoTemp = 'NT') then
    begin
      GravaCntReceber(valorParcelar, edtParcelasNT.Text, 6);

      while (prefixoTemp = 'NT') and not(cdsCntReceber_Item.Eof)  do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString, cdsCntReceber_ItemDT_VENC.AsDateTime, cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
      moeda := prefixoTemp;
    end;

    if prefixoTemp = 'FN' then
    begin
      GravaCntReceber(valorFinanceira, IntToStr(nParcelasFinanceira), 5);

      while (prefixoTemp = 'FN') and not(cdsCntReceber_Item.Eof) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString, cdsCntReceber_ItemDT_VENC.AsDateTime, cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
      moeda := prefixoTemp;
    end;
  End;
end;

procedure TfrmVendaFinalizacao.GravaCntReceber(valorTotal: Double; parcelasTotal: string; idFormaPag: integer);
var
  utils: TUtils;
begin
  fdsCntReceber.Open;
  fdsCntReceber.Append;
  idReceber := fdsCntReceberID.AsInteger;
  fdsCntReceberIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsCntReceberDT_INC.AsDateTime := Now;
  fdsCntReceberPOSICAO.AsString := 'AB';
  fdsCntReceberPREFIXO.AsString := 'CR';
  fdsCntReceberIDCLIENTE.AsInteger := idCliente;
  fdsCntReceberDINHEIRO.AsFloat := valorDinheiro;
  fdsCntReceberVALOR.AsFloat := valorTotal;
  fdsCntReceberIDPORTADOR.AsInteger := DM.fdsConfigIDPORTADOR_PADRAO.AsInteger;
  fdsCntReceberIDFORMA_PAG.AsInteger := idFormaPag;
  fdsCntReceberIDVENDA.AsInteger := idVenda;
  fdsCntReceberTIPO_VENDA.AsString := tipoVenda;
  fdsCntReceberTOT_PARCELA.AsString := utils.FormataParcelas(parcelasTotal);

  fdsCntReceber.Post;
  transVendaFinal.CommitRetaining;
end;

procedure TfrmVendaFinalizacao.GravaCntReceberItem(prefixo, parcela: string;
  dtVenc: TDate; valor: Double);
begin
  qryInsertCntReceber_Item.Close;

  qryInsertCntReceber_Item.ParamByName('POSICAO').AsString := 'AB';
  qryInsertCntReceber_Item.ParamByName('PREFIXO').AsString := prefixo;
  qryInsertCntReceber_Item.ParamByName('DT_VENC').AsDateTime := dtVenc;
  qryInsertCntReceber_Item.ParamByName('VALOR').AsFloat := valor;
  qryInsertCntReceber_Item.ParamByName('PARCELA').AsString := parcela;
  qryInsertCntReceber_Item.ParamByName('IDRECEBER').AsInteger := idReceber;
  qryInsertCntReceber_Item.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;

  qryInsertCntReceber_Item.Prepare;
  qryInsertCntReceber_Item.ExecQuery;

  transVendaFinal.CommitRetaining;
end;

procedure TfrmVendaFinalizacao.ImprimirNota;
begin
  with fdsCntReceber_Item do
  begin
    Close;
    Conditions.AddCondition('IDRECEBER', 'IDRECEBER = ' + fdsCntReceberID.AsString, True);
    Conditions.Apply;
    Open;
  end;

  DM.valor := fdsCntReceber_ItemVALOR.AsString;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxCarnePagamentoM1.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

function TfrmVendaFinalizacao.NotasAtraso(IDCliente: Integer): Tlcredito;
var
 impedido, temPermicao : Boolean;
 diasRestantes, diasTolerancia,vTotal: Double;
begin
  diasTolerancia := DM.fdsConfigDIAS_ATRASO_BLOQUEIO.AsInteger;
  impedido := False;
  vTotal := 0;
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT RI.DT_VENC,(((RI.VALOR + RI.ACRESCIMO + VALOR_JUROS_PAGO)- DESCONTO) - RI.VALOR_PAGO) AS VALOR FROM CNT_RECEBER_ITEM RI ');
    SQL.Add('WHERE RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE AND R.IDFORMA_PAG <> 2) ');
    SQL.Add('AND POSICAO = :POSICAO');
    ParamByName('IDCLIENTE').AsInteger := IDCliente;
    ParamByName('POSICAO').AsString := 'AB';
    Prepare;
    try
    ExecQuery;
    except
      On E:Exception do
        ShowMessage('Ocorreu um erro ao Executar a Query: ' + E.Message);
    end;
  end;

  if qryComand.RecordCount > 0 then
  begin
    while not(qryComand.Eof) do
    begin
      diasRestantes := qryComand.FieldByName('DT_VENC').AsDate - Now - diasTolerancia;

      if diasRestantes <= 0 then
      begin
        impedido := True;
        Break;
      end
      else
        qryComand.Next;
    end;

    //qryComand.;
    while not(qryComand.Eof) do
    begin
      vTotal:= vTotal + qryComand.FieldByName('VALOR').AsFloat;
      qryComand.Next;
    end;
  end;
  result.Bloqueado:= impedido;
  result.vDevedor := vTotal;
end;

procedure TfrmVendaFinalizacao.btnGerarParcelasClick(Sender: TObject);
var
temPermicao:Boolean;
uVerificaPermicao : TVerificaPermicao;
begin

  cdsCntReceber_Item.EmptyDataSet;
  cdsChequeCntReceber.EmptyDataSet;
  parcelas := 0;
  btnPesqClienteClk := False;

  if valorCheque > 0 then
  begin
    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
          RetornaCliente;

    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
    begin
      edtDesconto.SetFocus;
      Abort;
    end;

    Try
      frmLancDadosBasicCheque := TfrmLancDadosBasicCheque.Create(nil);
      frmLancDadosBasicCheque.edtEmitente.Text := edtCliente.Text;
      frmLancDadosBasicCheque.ShowModal;
    Finally
      if frmLancDadosBasicCheque.ModalResult = mrOk then
      begin
        idBanco := frmLancDadosBasicCheque.idBanco;
        nBanco := frmLancDadosBasicCheque.fdsBancoNUM_BANCO.AsInteger;
        emitente := frmLancDadosBasicCheque.edtEmitente.Text;
        nAgencia := StrToInt(frmLancDadosBasicCheque.edtAgencia.Text);
        nConta := StrToInt(frmLancDadosBasicCheque.edtConta.Text);
        parcelas := StrToInt(edtParcelasCH.Text);
        GeraParcelaCheque('CH', parcelas, valorCheque);
      end;
      frmLancDadosBasicCheque.Free;
    End;
  end;

  parcelas := 0;

  if valorCartao > 0 then
  begin
    parcelas := StrToInt(edtParcelasCT.Text);
    GeraParcelaNota(tipoCartao, parcelas, valorCartao);
  end;

  parcelas := 0;

  if valorParcelar > 0 then
  begin
    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
    begin
      RetornaCliente;
    end;

    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
    begin
      edtDesconto.SetFocus;
      Abort;
    end;

    //if NotasAtraso(idCliente).bloqueado =true then
    //begin
      if (fdsClienteLIMITE_CREDITO.AsFloat > 0) and ((valorParcelar+NotasAtraso(idCliente).vDevedor)>fdsClienteLIMITE_CREDITO.AsFloat) then
      begin
        TFrmMensagens.Mensagem('O limite de credi�rio para esse cliente � de R$'+FloatToStr(fdsClienteLIMITE_CREDITO.AsFloat), 'Cliente Bloqueado','L',[MBOK]);

        temPermicao := uVerificaPermicao.Verifica('LIBERAR_CLIENTE_BLOQ');

        if not(temPermicao) then
        begin
          TFrmMensagens.Mensagem('Desculpe,usu�rio sem permiss�o para ultrapassar o limite de credi�rio de cliente.', 'Credi�rio n�o permitido.','I',[mbOk]);
          abort;
        end;
      end;
    //end;
    parcelas := StrToInt(edtParcelasNT.Text);
    GeraParcelaNota('NT', parcelas, valorParcelar);
  end;

  parcelas := 0;

  if valorFinanceira > 0 then
  begin
    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
      RetornaCliente;

    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
    begin
      edtDesconto.SetFocus;
      Abort;
    end;

    parcelas := nParcelasFinanceira;
    GeraParcelaNota('FN', parcelas, valorFinanceira);
  end;

  gerouParcelas := True;
  btnGravar.SetFocus;
end;

procedure TfrmVendaFinalizacao.RecalculaParcelas(vlrAlterado: Double;  prefixo: string; index: integer);
var
    valorTotConta, valorParcela : Double;
    i: Integer;
begin

  autoParcela := True;

  parcelas := 0;

  if prefixo = 'CH' then
  begin

    valorTotConta := valorCheque - vlrAlterado;

    parcelas := StrToInt(edtParcelasCH.Text);

    valorParcela := (valorTotConta / (parcelas - 1));

    valorParcela := RoundTo(valorParcela, -2);

    cdsChequeCntReceber.First;

    while not(cdsChequeCntReceber.Eof) do
    begin
      if not(cdsChequeCntReceber.RecNo = index) then
      begin
        cdsChequeCntReceber.Edit;
        cdsChequeCntReceberVALOR.AsFloat := valorParcela;
        cdsChequeCntReceber.Post;
      end;
      cdsChequeCntReceber.Next;
    end;
  end
  else
  begin
    parcelas := 0;

    if prefixo = 'NT' then
    begin
      valorTotConta := valorParcelar - vlrAlterado;
      parcelas := StrToInt(edtParcelasNT.Text)
    end
    else
    begin
      if prefixo = 'CT' then
      begin
        valorTotConta := valorCartao - vlrAlterado;
        parcelas := StrToInt(edtParcelasCT.Text);
      end;
    end;

    valorParcela := (valorTotConta / (parcelas - 1));

    valorParcela := RoundTo(valorParcela, -2);

    cdsCntReceber_Item.First;

    while not(cdsCntReceber_Item.Eof) do
    begin
      if (cdsCntReceber_ItemPREFIXO.AsString = prefixo) and not (cdsCntReceber_Item.RecNo = index) then
      begin
        cdsCntReceber_Item.Edit;
        cdsCntReceber_ItemVALOR.AsFloat := valorParcela;
        cdsCntReceber_Item.Post;
      end;
      cdsCntReceber_Item.Next;
    end;
  end;

  editouParcela := False;

  autoParcela := False;
end;

procedure TfrmVendaFinalizacao.RetornaCliente;
var
  tempIdCliente : Integer;
begin
  tempIdCliente := idCliente;

  try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      edtCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
      idCliente := frmPesqCliente.fdsClientesID.AsInteger;
      frmPrincipal.idCliente := idCliente;
     // fdsFormaPagamento.Locate('ID', frmPesqCliente.fdsClientesIDFORMA_PAGAMENTO.AsString, []);

       with fdsCliente do
       begin
          Close;
          Conditions.AddCondition('ID', 'CL.ID = ' + IntToStr(idCliente), True);
          Conditions.Apply;
          Open;
       end;

       if (tempIdCliente = dm.fdsConfigIDCLIENTEPADRAO.AsInteger) then
         creditoTotal := fdsClienteCREDITO.AsFloat + valorDevolucao
       else
         creditoTotal := fdsClienteCREDITO.AsFloat;

      if creditoTotal > 0 then
      begin
        lblVlrCredito.Visible := True;
        lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', creditoTotal);
        lblPagar.Visible := True;

        if creditoTotal > valorDoc then
        begin
           lblPagar.Caption := 'Pagar: R$ 0,00';
        end
        else
        begin
           lblPagar.Caption := 'Pagar: ' + FormatFloat('R$ #,##0.00', valorDoc - creditoTotal);
        end;
      end;

     {  if creditoTotal > 0 then
       begin
         valorCredito := creditoTotal;
       end;

      if valorCredito > 0 then
      begin
        lblVlrCredito.Visible := True;
        lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', valorCredito);
        lblPagar.Visible := True;

      if valorCredito > valorDoc then
      begin
         valorCredito := valorDoc;
         lblPagar.Caption := 'Pagar: R$ 0,00';
      end
       else
       begin
         lblPagar.Caption := 'Pagar: ' + FormatFloat('R$ #,##0.00', valorDoc - valorCredito);
       end;
      end;}

      if btnPesqClienteClk = True then
        edtDesconto.SetFocus;

       parcelas := 0;

      if DM.fdsConfigBLOQUEAR_CLIENT_ATRASO.AsString = 'S' then
        VerificaSituacaoCliente;

    end;
    frmPesqCliente.Free;
  end;
end;

function TfrmVendaFinalizacao.RetornaCntReceberItemID(idFilial: Integer;
  valor: Double; dt_venc: TDate): Integer;
begin
  qryRetornaIDCntReceber_Item.Close;
  qryRetornaIDCntReceber_Item.ParamByName('IDRECEBER').AsInteger := idReceber;
  qryRetornaIDCntReceber_Item.ParamByName('IDFILIAL').AsInteger := idFilial;
  qryRetornaIDCntReceber_Item.ParamByName('VALOR').AsFloat := valor;
  qryRetornaIDCntReceber_Item.ParamByName('DT_VENC').AsDateTime := dt_venc;
  qryRetornaIDCntReceber_Item.Prepare;
  qryRetornaIDCntReceber_Item.ExecQuery;
  Result := qryRetornaIDCntReceber_Item.FieldByName('ID').AsInteger;
end;

procedure TfrmVendaFinalizacao.RetornaVendedor;
begin
  try
    frmPesqVendedor := TfrmPesqVendedor.Create(nil);
    frmPesqVendedor.ShowModal;
  Finally
    if frmPesqVendedor.ModalResult = mrOk then
    begin
      edtIdVendedor.Text := frmPesqVendedor.fdsVendedoresID.AsString;
      edtVendedor.Text := frmPesqVendedor.fdsVendedoresNOME.AsString;
      idVendedor := frmPesqVendedor.fdsVendedoresID.AsInteger;
      edtDesconto.SetFocus;
    end;
    frmPesqVendedor.Free;
  end;
end;

procedure TfrmVendaFinalizacao.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle, Pchar('Deseja realmente cancelar a finaliza��o da Venda?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
          idYes: begin
                    ModalResult := mrCancel;
                 end;
        end;
end;

procedure TfrmVendaFinalizacao.btnGravarClick(Sender: TObject);
var
  utils : TUtils;
begin
  if valorRestante > 0 then
  begin
    Application.MessageBox('Total da Venda n�o atingido.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
    edtDinheiro.SetFocus;
    Abort;
  end;

  if ((valorCheque > 0) or (valorParcelar > 0) or (valorCredito > 0)) and (idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger) then
  begin
    Application.MessageBox('Informe um cliente para parcelar a conta ou informe outra modea para a venda.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
    btnPesqCliente.SetFocus;
    Abort;
  end;

  if ((valorCheque > 0) or (valorParcelar > 0) or (valorCartao > 0)) and (gerouParcelas = False) then
  begin
    Application.MessageBox('Primeiro gere as parcelas a receber.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
    btnGerarParcelas.SetFocus;
    Abort;
  end;

  if valorCredito > 0 then
  begin
    fdsCliente.Edit;
    fdsClienteCREDITO.AsFloat := creditoTotal - valorCredito;
    fdsCliente.Post;
    transVendaFinal.CommitRetaining;
  end;

  cdsChequeCntReceber.First;
  if cdsChequeCntReceber.RecordCount > 0 then
  begin
    while not(cdsChequeCntReceber.Eof) do
    begin
      if Trim(cdsChequeCntReceberNUM_CHEQUE.AsString) = '' then
          begin
            Application.MessageBox('Voc� deve preencher o n� de todos os cheques.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
            Abort;
          end
          else
            cdsChequeCntReceber.Next;
    end;
  end;

 // if frmPrincipal.selItensEntregar = 'S' then
 // begin
    if chkVendaEntregar.Checked then
    begin

      if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
      begin
        Application.MessageBox('Informe o Cliente para a entrega.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);

        if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
          RetornaCliente;

        if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
        begin
          edtDesconto.SetFocus;
          Abort;
        end
        else
        begin
          //VerificaSituacaoCliente;
//          VerificaFormaPagamento;
//          if idFormaPag <> 1 then
          VerificaSituacaoCliente;
        end;

      end;

      try
        frmItensEntregar := TfrmItensEntregar.Create(nil);
        frmItensEntregar.idVenda := idVenda;
        frmItensEntregar.pesoEntregar := 0;
        frmItensEntregar.ShowModal;
      finally
        if frmItensEntregar.ModalResult = mrOk then
          pesoEntregar := frmItensEntregar.pesoEntregar
        else
        begin
          vendaEntregar := False;
          btnGravar.SetFocus;
          Abort;
        end;

        frmItensEntregar.Free;
      end;
    end;
//    else
// // end;
//    begin
  VerificaFormaPagamento;
//     if idFormaPag <> 1 then
//     VerificaSituacaoCliente;
//    end;
  GerarDocumentos;
  frmPrincipal.AbrirGaveta;
  VerificaTroco;

//  if (valorParcelar > 0) then
//  begin
//    if (DM.impVenda = 2) then
//      ImprimirNota;
//  end;
  ModalResult := mrOk;
 // end;
end;

procedure TfrmVendaFinalizacao.btnInfoAdicionalClick(Sender: TObject);
begin
try
  frmVendaInfo := TfrmVendaInfo.Create(nil);
  if not(Trim(frmVendaFinalizacao.mmoOBS.Text) = EmptyStr) then
  begin
    frmVendaInfo.mmoInfoAdicional.Lines.Clear;
    frmVendaInfo.mmoInfoAdicional.Lines.Add(frmVendaFinalizacao.mmoOBS.Text);
  end
  else
  frmVendaInfo.mmoInfoAdicional.Lines.Clear;

  frmVendaInfo.ShowModal;
finally
  if frmVendaInfo.ModalResult = mrOk then
  begin
    frmVendaFinalizacao.mmoOBS.Lines.Clear;
    frmVendaFinalizacao.mmoOBS.Lines.Add(Trim(frmVendaInfo.mmoInfoAdicional.Text));
    btnGravar.SetFocus;
  end;
  if Trim(frmVendaInfo.mmoInfoAdicional.Text) = EmptyStr then
  edtDesconto.SetFocus;

  frmVendaInfo.Free;

end;
end;

procedure TfrmVendaFinalizacao.btnOutrosPagamentosClick(Sender: TObject);
begin
  Try
    frmOutrosPagamentos := TfrmOutrosPagamentos.Create(nil);
    frmOutrosPagamentos.valorFinanceira := valorFinanceira;
    frmOutrosPagamentos.valorValeDesconto := valorValeDesconto;
    frmOutrosPagamentos.valorTicket := valorTicket;
    frmOutrosPagamentos.valorCredito := valorCredito;
    frmOutrosPagamentos.ShowModal;
  Finally
    if frmOutrosPagamentos.ModalResult = mrOk then
    begin
      valorFinanceira := frmOutrosPagamentos.valorFinanceira;
      nParcelasFinanceira := StrToInt(frmOutrosPagamentos.edtParcelasFN.Text);
      valorValeDesconto := frmOutrosPagamentos.valorValeDesconto;
      valorTicket := frmOutrosPagamentos.valorTicket;
      valorCredito := frmOutrosPagamentos.valorCredito;
    end;

    frmOutrosPagamentos.Free;
    CalculaValorRestante;

    if btnGerarParcelas.Enabled = True then
      btnGerarParcelas.SetFocus
    else
      btnGravar.SetFocus;
  End;
end;

procedure TfrmVendaFinalizacao.btnPesqClienteClick(Sender: TObject);
begin
  btnPesqClienteClk := True;
  RetornaCliente;
  btnPesqClienteClk := False;
end;

procedure TfrmVendaFinalizacao.btnPesqVendedorClick(Sender: TObject);
begin
  RetornaVendedor;
end;

procedure TfrmVendaFinalizacao.CalculaValorRestante();
var
  utils : TUtils;
begin
    valorRestante := RoundTo(valorDoc - valorParcelar - valorDinheiro - valorCheque - valorCartao - valorFinanceira - valorValeDesconto - valorTicket - valorCredito, -2);
    if cbxDescAcre.Value = 'D' then
      valorRestante := valorRestante - valorDesconto
    else
      valorRestante := valorRestante + valorDesconto;

    if valorRestante < 0 then
      valorRestante := 0;

    if (valorParcelar > 0) or (valorCheque > 0) or (valorCartao> 0) or (valorFinanceira> 0) then
    begin
      btnGerarParcelas.Enabled := True;
      gerouParcelas := False;
    end
    else
    begin
      btnGerarParcelas.Enabled := False;
      gerouParcelas := True;
    end;
  //showMessage(FloatToStr(ValorRestante));
end;

procedure TfrmVendaFinalizacao.CalculaDescontoTotal;
var
  utils : TUtils;
  descMaxVenda, tempVlrDec : Double;
  descPassou : Boolean;
  idUsuarioTemp : integer;
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
begin
  temPermicao := False;
  descMaxVenda := DM.fdsConfigPDV_DESC_MAX_VENDA.AsFloat;
  valorDesconto := utils.ValidaInteiroFloat(edtDesconto.Text, 'F');

  if valorDesconto > 0 then
  begin
     if cbxTipoDesconto.Value = 'V' then
     begin
       tempVlrDec := valorDesconto;
       valorDesconto := valorDoc - valorDesconto;
       valorDesconto := 100 - (RoundTo((valorDesconto * 100) / valorDoc, -2));
     end;

     if cbxDescAcre.Value = 'D' then
     begin
       if valorDesconto > descMaxVenda then
       begin
          Application.MessageBox(Pchar('Desconto m�ximo permitido na venda �: ' + FloatToStr(descMaxVenda) + '%'), 'Desconto n�o permitido.', MB_OK+MB_ICONERROR);

          temPermicao := uVerificaPermicao.Verifica('DESC_MAX_TOT_VENDA');
       end
       else
       begin
         temPermicao := True;
       end;
     end
     else
      temPermicao := True;

     if temPermicao then
     begin
       if cbxTipoDesconto.Value = 'V' then
       begin
          valorDesconto := tempVlrDec;
       end
       else
          valorDesconto := RoundTo(valorDoc * valorDesconto / 100, -2);
     end
     else
     begin
        Application.MessageBox('Desculpe, voc� n�o tem permiss�o para ultrapassar o desconto m�ximo', 'Desconto n�o permitido.', MB_OK+MB_ICONERROR);
        edtDesconto.SetFocus;
        Abort;
     end;
  end;
end;

procedure TfrmVendaFinalizacao.cbxTipoDescontoChange(Sender: TObject);
begin
  edtDesconto.SetFocus;
end;

procedure TfrmVendaFinalizacao.cdsChequeCntReceberAfterEdit(DataSet: TDataSet);
begin
//  editouParcela := True;
end;

procedure TfrmVendaFinalizacao.cdsChequeCntReceberAfterPost(DataSet: TDataSet);
begin
//  if (editouParcela) and not(autoParcela) then
//    RecalculaParcelas(cdsChequeCntReceberVALOR.AsFloat, 'CH', cdsChequeCntReceber.RecNo);
end;

procedure TfrmVendaFinalizacao.cdsCntReceber_ItemAfterEdit(DataSet: TDataSet);
begin
  editouParcela := True;
end;

procedure TfrmVendaFinalizacao.cdsCntReceber_ItemAfterPost(DataSet: TDataSet);
begin
  if (editouParcela) and not(autoParcela) then
    RecalculaParcelas(cdsCntReceber_ItemVALOR.AsFloat, cdsCntReceber_ItemPREFIXO.AsString, cdsCntReceber_Item.RecNo);
end;

procedure TfrmVendaFinalizacao.chkVendaEntregarClick(Sender: TObject);
begin
  //gbxEntregar.Enabled := chkVendaEntregar.Checked;
  vendaEntregar := chkVendaEntregar.Checked;
end;

procedure TfrmVendaFinalizacao.edtCartaoEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtNota.Enabled := false;
  edtParcelasNT.Enabled := false;
  edtCheque.Enabled := false;
  edtParcelasCH.Enabled := false;

     edtCartao.Enabled := True;
     edtParcelasCT.Enabled := True;
     edtCartao.Text := utils.RetiraMascaraDinheiro(edtCartao.Text);
    if valorCartao = 0  then
    begin
      edtCartao.Text := FloatTOStr(valorRestante);
    end;
    edtCartao.SelectAll;

end;

procedure TfrmVendaFinalizacao.edtCartaoExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtCartao.Text := FloatToStr(utils.ValidaInteiroFloat(edtCartao.Text, 'F'));
  valorCartao :=  StrToFloat(edtCartao.Text);

//  if valorCartao > valorRestante  then
//  begin
//    valorCartao := valorRestante;
//    edtCartao.Text := FloatToStr(valorRestante);
//    edtCartao.SetFocus;
//    abort;
//  end;
  if(edtCartao.Text = '0') then
  begin
    valorRestante:= valorRestante;
    edtCartao.Text := utils.AdicionaMascaraDinheiro(edtCartao.Text);
    edtCartao.Enabled := false;
    edtParcelasCT.Enabled := false;
  end;

  edtCartao.Text := utils.AdicionaMascaraDinheiro(edtCartao.Text);

  CalculaValorRestante;

  if valorCartao > 0 then
  begin
    Try
      frmTipoCartaoCredito := TfrmTipoCartaoCredito.Create(nil);
      frmTipoCartaoCredito.ShowModal;
    Finally
      if not(frmTipoCartaoCredito.ModalResult = mrOk) then
      begin
        tipoCartao := EmptyStr;
        valorCartao :=  0;
        edtCartao.Text := utils.AdicionaMascaraDinheiro('0,00');
        CalculaValorRestante;
        edtCartao.SetFocus;
      end;
//      else
//        btnGerarParcelas.SetFocus;

      frmTipoCartaoCredito.Free;
    End;
  end
  else
    tipoCartao := EmptyStr;
    //    btnGerarParcelas.SetFocus;
end;

procedure TfrmVendaFinalizacao.edtChequeEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtCartao.Enabled := false;
  edtParcelasCT.Enabled := false;
  edtNota.Enabled := false;
  edtParcelasNT.Enabled := false;

  edtCheque.Enabled := True;
  edtParcelasCH.Enabled := True;
  edtCheque.Text := utils.RetiraMascaraDinheiro(edtCheque.Text);
  if valorCheque = 0  then
  begin
    edtCheque.Text := FloatTOStr(valorRestante);
  end;
  edtCheque.SelectAll;
end;

procedure TfrmVendaFinalizacao.edtChequeExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtCheque.Text := FloatToStr(utils.ValidaInteiroFloat(edtCheque.Text, 'F'));
  valorCheque :=  StrToFloat(edtCheque.Text);

//   if valorDinheiro > valorRestante  then
//  begin
//    valorCheque := valorRestante;
//    edtCheque.Text := FloatToStr(valorRestante);
//    edtCheque.SetFocus;
//    abort;
//  end;
  if (edtCheque.Text = '0') then
   begin
   valorRestante:= valorRestante;
   edtCheque.Text := utils.AdicionaMascaraDinheiro(edtCheque.Text);
   edtCheque.Enabled := false;
   edtParcelasCH.Enabled := false;
   end;

    edtCheque.Text := utils.AdicionaMascaraDinheiro(edtCheque.Text);
    CalculaValorRestante;

//  if valorCheque > 0 then
//    edtParcelasCH.SetFocus
//  else
//    edtCartao.SetFocus;

end;

procedure TfrmVendaFinalizacao.edtDescontoEnter(Sender: TObject);
begin
  edtDesconto.SelectAll;
end;

procedure TfrmVendaFinalizacao.edtDescontoExit(Sender: TObject);
var
  utils: TUtils;
begin
  CalculaDescontoTotal;
  CalculaValorRestante;

  if valorDesconto > 0 then
  begin
//    if valorDinheiro >= valorDesconto then
//    begin
//      if cbxDescAcre.Value = 'D' then
//      begin
//        valorDinheiro := valorDinheiro - valorDesconto;
//        edtValorVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(ValorDoc - ValorDesconto));
//      end
//      else
//      begin
//        valorDinheiro := valorDinheiro + valorDesconto;
//        edtValorVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(ValorDoc + ValorDesconto));
//      end;
//      edtDinheiro.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDinheiro));
//
//    end;

    if cbxDescAcre.Value = 'D' then
    begin
      edtValorVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(ValorDoc - ValorDesconto));
    end
    else
    begin
      edtValorVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(ValorDoc + ValorDesconto));
    end;

  end;
end;

procedure TfrmVendaFinalizacao.edtDinheiroEnter(Sender: TObject);
var
  utils : TUtils;
begin
  btnGerarParcelas.Enabled := False;
  edtDinheiro.Text := utils.RetiraMascaraDinheiro(edtDinheiro.Text);
  if valorDinheiro = 0  then
  begin
    edtDinheiro.Text := FloatTOStr(valorRestante);
  end;
  edtDinheiro.SelectAll;
end;

procedure TfrmVendaFinalizacao.edtDinheiroExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtDinheiro.Text := FloatToStr(utils.ValidaInteiroFloat(edtDinheiro.Text, 'F'));
  valorDinheiro :=  StrToFloat(edtDinheiro.Text);

 { if valorDinheiro > valorRestante  then
  begin
    valorDinheiro := valorRestante;
    edtDinheiro.Text := FloatToStr(valorRestante);
    edtDinheiro.SetFocus;
    abort;
  end; }

  edtDinheiro.Text := utils.AdicionaMascaraDinheiro(edtDinheiro.Text);

  CalculaValorRestante;
end;

procedure TfrmVendaFinalizacao.edtIdVendedorExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtIdVendedor.Text := FloatToStr(utils.ValidaInteiroFloat(edtIdVendedor.Text, 'I'));

  if fdsVendedor.Locate('ID', edtIdVendedor.Text, []) then
  begin
    edtIdVendedor.Text := fdsVendedorID.AsString;
    edtVendedor.Text := fdsVendedorNOME.AsString;
    idVendedor := fdsVendedorID.AsInteger;
    edtDesconto.SetFocus;
  end
  else
    RetornaVendedor;

end;

procedure TfrmVendaFinalizacao.edtNotaEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtCartao.Enabled := false;
  edtParcelasCT.Enabled := false;
  edtCheque.Enabled := false;
  edtParcelasCH.Enabled := false;


  edtParcelasNT.Enabled := True;
  edtNota.Text := utils.RetiraMascaraDinheiro(edtNota.Text);
  if valorParcelar = 0  then
  begin
    edtNota.Text := FloatTOStr(valorRestante);
  end;
  edtNota.SelectAll;
end;

procedure TfrmVendaFinalizacao.edtNotaExit(Sender: TObject);
var
  utils: Tutils;
begin
  edtNota.Text := FloatToStr(utils.ValidaInteiroFloat(edtNota.Text, 'F'));
  valorParcelar :=  StrToFloat(edtNota.Text);
//   if valorParcelar > valorRestante  then
//  begin
//    valorParcelar := valorRestante;
//    edtNota.Text := FloatToStr(valorRestante);
//    edtNota.SetFocus;
//    abort;
//  end;

   if edtNota.Text = '0'then
   begin
   valorRestante:= valorRestante;
   edtNota.Text := utils.AdicionaMascaraDinheiro(edtNota.Text);
   edtNota.Enabled := false;
   edtParcelasNT.Enabled := false;
   end;
      edtNota.Text := utils.AdicionaMascaraDinheiro(edtNota.Text);
      CalculaValorRestante;

end;

procedure TfrmVendaFinalizacao.edtParcelasCHExit(Sender: TObject);
begin
  if (valorCheque > 0) and (edtParcelasCH.Text = '0') then
    edtParcelasCH.Text := '1';
end;

procedure TfrmVendaFinalizacao.edtParcelasCTExit(Sender: TObject);
begin
  if (valorCartao > 0) and (edtParcelasCT.Text = '0') then
    edtParcelasCT.Text := '1';
end;

procedure TfrmVendaFinalizacao.edtParcelasNTExit(Sender: TObject);
begin
  if (valorParcelar > 0) and (edtParcelasNT.Text = '0') then
    edtParcelasNT.Text := '1';
  if (edtParcelasNT.Text = '0') then
    edtParcelasNT.Text := '1';
end;

procedure TfrmVendaFinalizacao.VerificaFormaPagamento;
var
  i : SmallInt;
begin

  i := 0;

  if valorDinheiro > 0 then
  begin
    Inc(i);
    idFormaPag := 1;
  end;

  if valorCheque > 0 then
  begin
    Inc(i);
    idFormaPag := 4;
  end;

  if valorCartao > 0 then
  begin
    Inc(i);
    if tipoCartao = 'CT' then
      idFormaPag := 2;

    if tipoCartao = 'CD' then
      idFormaPag := 3;
  end;

  if valorParcelar > 0 then
  begin
    Inc(i);
    idFormaPag := 6;
  end;

  if valorFinanceira > 0 then
  begin
    Inc(i);
    idFormaPag := 5;
  end;

  if valorValeDesconto > 0 then
  begin
    Inc(i);
    idFormaPag := 7;
  end;

  if valorTicket > 0 then
  begin
    Inc(i);
    idFormaPag := 8;
  end;

  if valorCredito > 0 then
  begin
    Inc(i);
    idFormaPag := 9;
  end;

//  if i > 1 then
//  begin
//    idFormaPag := 0;
//  end;
end;

procedure TfrmVendaFinalizacao.VerificaSituacaoCliente;
var
  impedido, temPermicao : Boolean;
  diasRestantes, diasTolerancia: Double;
  uVerificaPermicao : TVerificaPermicao;
begin
  diasTolerancia := DM.fdsConfigDIAS_ATRASO_BLOQUEIO.AsInteger;
  impedido := False;

  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT RI.DT_VENC, (RI.VALOR - RI.VALOR_PAGO) AS VALOR FROM CNT_RECEBER_ITEM RI ');
    SQL.Add('WHERE RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE AND R.IDFORMA_PAG <> 2) ');
    SQL.Add('AND POSICAO = :POSICAO');
    ParamByName('IDCLIENTE').AsInteger := idCliente;
    ParamByName('POSICAO').AsString := 'AB';
    Prepare;
    ExecQuery;
  end;

  if qryComand.RecordCount > 0 then
  begin
    while not(qryComand.Eof) do
    begin
      diasRestantes := qryComand.FieldByName('DT_VENC').AsDate - Now - diasTolerancia;

      if diasRestantes <= 0 then
      begin
        impedido := True;
        Break;
      end
      else
        qryComand.Next;
    end;
  end;

  if impedido then
  begin
    Application.MessageBox('Este cliente possui notas vencidas al�m do prazo.', 'Cliente Bloqueado', MB_OK+MB_ICONEXCLAMATION);

    temPermicao := uVerificaPermicao.Verifica('LIBERAR_CLIENTE_BLOQ');

    if not(temPermicao) then
    begin
      Application.MessageBox('Usu�rio sem permi��o para liberar a venda para clientes bloqueados.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
      frmPrincipal.idCliente := DM.fdsConfigIDCLIENTEPADRAO.AsInteger;
      ModalResult := mrCancel;
      abort;
    end;
  end;
end;

procedure TfrmVendaFinalizacao.VerificaTroco;
var
  utils : TUtils;
begin
  troco := RoundTo(valorDinheiro - (valorDoc - valorDevolucao - valorCheque - valorCartao - valorParcelar - valorFinanceira - valorTicket - valorValeDesconto), -2);

  if valorDesconto > 0 then
  begin
    if cbxDescAcre.Value = 'D' then
      troco := RoundTo(troco + valorDesconto, -2)
    else
      troco := RoundTo(troco - valorDesconto, -2);
  end;

  if (troco > 0) then
  begin
    try
        frmTroco := TfrmTroco.Create(nil);
        frmTroco.edtSubtotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc)); //edtValorVenda.Text;
        frmTroco.edtDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDesconto));

        if cbxDescAcre.Value = 'D' then
          frmTroco.edtTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc - valorDevolucao - valorDesconto)) //- valorCheque - valorCartao - valorParcelar - valorFinanceira - valorTicket - valorValeDesconto))
        else
        begin
          frmTroco.lblDescAcre.Caption := 'Acr�scimo';
          frmTroco.edtTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc - valorDevolucao + valorDesconto))// - valorCheque - valorCartao - valorParcelar - valorFinanceira - valorTicket - valorValeDesconto));
        end;

        frmTroco.edtRecebido.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDinheiro+valorCheque +valorCartao +valorParcelar +valorFinanceira +valorTicket +valorValeDesconto));
        frmTroco.edtTroco.Text := utils.AdicionaMascaraDinheiro(FloatToStr(Troco));
        frmTroco.ShowModal;
      finally
        frmTroco.Free;
      end;
  end
  else
    troco := 0;
end;

// ShowMessage(gdrNota.SelectedField.AsString);  L� o conte�do da c�lula celecionada
end.