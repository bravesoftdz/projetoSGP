unit untBaixaDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, RzButton, RzBckgnd, Mask, RzEdit, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB, FIBDataSet,
  pFIBDataSet, RzDBCmbo, FIBQuery, pFIBQuery, Vcl.Imaging.pngimage, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, RzTabs, Datasnap.DBClient, pFIBClientDataSet, Math,
  Vcl.ComCtrls, FIBDatabase, pFIBDatabase, frxClass, frxDBSet;

type
  TfrmBaixaDocumento = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel1: TRzLabel;
    lblTituloTotal: TRzLabel;
    edtValorDoc: TRzEdit;
    RzPanel3: TRzPanel;
    RzBackground1: TRzBackground;
    btnReceber: TRzBitBtn;
    fdsPortador: TpFIBDataSet;
    dsPortador: TDataSource;
    fdsPortadorID: TFIBBCDField;
    fdsPortadorDESCRICAO: TFIBStringField;
    btnCancelar: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    edtDinheiro: TRzEdit;
    edtCheque: TRzEdit;
    edtCartao: TRzEdit;
    edtParcelasCH: TRzEdit;
    btnGerarParcelas: TRzBitBtn;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    edtParcelasCT: TRzEdit;
    pgcParcelas: TRzPageControl;
    tbsNota: TRzTabSheet;
    cdsDocumentos: TpFIBClientDataSet;
    cdsDocumentosIdDoc: TIntegerField;
    cdsDocumentosIdFilial: TIntegerField;
    cdsCntReceber_Item: TpFIBClientDataSet;
    cdsCntReceber_ItemID: TpFIBClientBCDField;
    cdsCntReceber_ItemPOSICAO: TStringField;
    cdsCntReceber_ItemPREFIXO: TStringField;
    cdsCntReceber_ItemREFERENCIA: TStringField;
    cdsCntReceber_ItemDT_VENC: TDateField;
    cdsCntReceber_ItemDT_PAG: TDateField;
    cdsCntReceber_ItemACRESCIMO: TpFIBClientBCDField;
    cdsCntReceber_ItemDESCONTO: TpFIBClientBCDField;
    cdsCntReceber_ItemVALOR: TpFIBClientBCDField;
    cdsCntReceber_ItemVALOR_PAGO: TpFIBClientBCDField;
    cdsCntReceber_ItemHISTORICO: TStringField;
    cdsCntReceber_ItemPARCELA: TStringField;
    cdsCntReceber_ItemIDFILIAL: TIntegerField;
    cdsChequeCntReceber: TpFIBClientDataSet;
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
    cdsChequeCntReceberIDRECEBER_ITEM: TIntegerField;
    cdsChequeCntReceberIDFILIAL: TIntegerField;
    dsCntReceber: TDataSource;
    dsChequeCntReceber: TDataSource;
    RzPageControl1: TRzPageControl;
    RzTabSheet2: TRzTabSheet;
    RzDBGrid2: TRzDBGrid;
    gdrNota: TRzDBGrid;
    qryInsertChequeCntReceber: TpFIBQuery;
    qryInsertCntReceber_Item: TpFIBQuery;
    qryEditCntReceber_Item: TpFIBQuery;
    qryEditChequeCntReceber_Item: TpFIBQuery;
    cdsDocumentosVALOR_PAGO: TFloatField;
    cdsDocumentosREC_DINHEIRO: TFloatField;
    cdsDocumentosVALOR_DOC: TFloatField;
    cdsDocumentosPOSICAO: TStringField;
    cdsDocumentosPAGAMENTO_MOEDA: TStringField;
    cdsDocumentosPARCELA: TStringField;
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
    fdsCntReceberIDFILIAL: TFIBBCDField;
    fdsCntReceberENVIADO_WEB: TFIBStringField;
    cdsDocumentosID_REC_ITEM: TIntegerField;
    qryRetornaIDCntReceber_Item: TpFIBQuery;
    fdsReceber_Pagamento: TpFIBDataSet;
    fdsReceber_PagamentoIDCONTA: TFIBBCDField;
    fdsReceber_PagamentoIDPAGAMENTO: TFIBBCDField;
    fdsReceber_PagamentoIDFILIAL: TFIBBCDField;
    cdsRec_Pag: TpFIBClientDataSet;
    cdsRec_PagIDFILIAL: TIntegerField;
    cdsRec_PagIDCONTA: TIntegerField;
    cdsRec_PagIDPAGAMENTO: TIntegerField;
    cdsRec_PagPREFIXO_PAGAMENTO: TStringField;
    qryConsulta: TpFIBQuery;
    cdsDocumentosIDRECEBER: TIntegerField;
    RzGroupBox1: TRzGroupBox;
    edtJurosTotal: TRzEdit;
    RzLabel13: TRzLabel;
    cdsDocumentosDT_VENCIMENTO: TDateField;
    cdsDocumentosVALOR_JUROS: TCurrencyField;
    redComp: TRzRichEdit;
    cdsDocumentosREFERENCIA: TStringField;
    edtCredito: TRzEdit;
    RzLabel3: TRzLabel;
    lblVlrCredito: TRzLabel;
    cdsDocumentosIdVenda: TIntegerField;
    RzLabel8: TRzLabel;
    cbxDescAcre: TRzComboBox;
    cbxTipoDesconto: TRzComboBox;
    edtDesconto: TRzEdit;
    transBaixaDoc: TpFIBTransaction;
    frxDocumentos: TfrxDBDataset;
    cdsDocumentosVALOR_PAGO_ATUAL: TFloatField;
    cdsDocumentosVALOR_RESTANTE: TFloatField;
    cdsDocumentosDESCONTO_PARCIAL: TFloatField;
    cdsDocumentosACRESCIMO_PARCIAL: TFloatField;
    cdsDocumentosVLR_JUROS_PAGO: TFloatField;
    cdsDocumentosJUROS_RESTANTE: TFloatField;
    cdsDocumentosTEMP_JUROS_RESTANTE: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDinheiroEnter(Sender: TObject);
    procedure edtDinheiroExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure VerificaFormaPagamento;
    procedure BaixarDocumento();
    procedure GerarDocumentos();
    procedure MontaComprovante();
    procedure AbateCredtioConta();
    procedure VerificaContaQuitada(idFormaPag : Integer);
    procedure GravaCntReceberItem(prefixo, parcela: string; dtVenc: TDate; valor: Double);
    procedure GravaCntReceber(valorTotal: Double; parcelasTotal: string; idFormaPag: integer);
    procedure GeraParcelaNota(prefixo: string; parcelas: Integer; vlrParcelar: Double);
    procedure GeraParcelaCheque(prefixo : string; parcelas: Integer; vlrParcelar: Double);
    function RetornaCntReceberItemID(idFilial: Integer; valor: Double; dt_venc: TDate): Integer;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure edtCartaoExit(Sender: TObject);
    procedure edtDescontoEnter(Sender: TObject);
    procedure edtChequeEnter(Sender: TObject);
    procedure edtCartaoEnter(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure edtCreditoEnter(Sender: TObject);
    procedure edtCreditoExit(Sender: TObject);
    procedure RzGroupBox1CheckBoxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaTrocoRec;
  public
     var
        tipo : string[10]; //receber ou pagar
        emitente,usarJuros : string;
        valorDoc, valorJuros, valorParcelar, valorDinheiro, valorDesconto ,valorAcrescimo,ValorJurosPago,valorJurosRestante : Double;
        valorCheque, valorCartao, valorCredito, creditoTotal,troco : Double;
        idBanco, nBanco, nAgencia, nConta, idReceber, idCliente, idFormaPag: Integer;
        arqCupomComprovante: TextFile;
        gerouparcelas:boolean;
  end;

var
  frmBaixaDocumento: TfrmBaixaDocumento;

implementation

uses untData, uUtils, untLancDadosBasicCheque, untTroco, uVerificaPermicao,
  untMensagens;

{$R *.dfm}


procedure TfrmBaixaDocumento.AbateCredtioConta;
begin
  if valorCredito > 0 then
  begin
    with qryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CLIENTE C SET C.CREDITO = C.CREDITO - :CREDITO WHERE C.ID = :IDCLIENTE');
      ParamByName('CREDITO').AsFloat := valorCredito;
      ParamByName('IDCLIENTE').AsInteger := idCliente;
      Prepare;
      ExecQuery;
      transBaixaDoc.CommitRetaining;
    end;
  end;
end;

procedure TfrmBaixaDocumento.BaixarDocumento;
var
  utils: TUtils;
  descontoParcial, tempValorDesconto, dinheiroParcial, cartaoParcial, chequeParcial: Double;
  parcelarParcial, valorPago, valorPagar, valorTotNota, creditoParcial, valorPagoAtual,valorPagoAtualDN
  ,valorPagoAtualCH,valorPagoAtualCT, valorRestante,sum,tiraTroco,somaJuros : Double;
  moeda, posicao: string[2];
  foraDesconto: Integer; //Controla a quantidade de notas que possuem o valor a baixo do desconto ratiado
  descDifeArred: Double; //Armazena a diferen�a que faltar no desconto ap�s a divis�o e o arredondamento
  tempValorAcrescimo:Double;
  AcrescimoParcial:double;
  mensagem:String;
begin
  descDifeArred := 0;
  valorPago := 0;
  foraDesconto := 0;
  troco:=0;
  ValorJurosPago:=0;
  valorPagoAtualDN:=0;
  valorPagoAtualCH:=0;
  valorPagoAtualCT:=0;
  tempValorDesconto := valorDesconto;
  tempValorAcrescimo:=valorAcrescimo;
  AcrescimoParcial:=0;
  descontoParcial:=0;
  somaJuros:=0;
  cdsDocumentos.First;
  cdsCntReceber_Item.Last;
  cdsCntReceber_Item.First;
  cdsChequeCntReceber.Last;
  cdsChequeCntReceber.First;

//  if tempValorDesconto > 0 then
//  begin
//    descontoParcial := RoundTo((tempValorDesconto / cdsDocumentos.RecordCount), -2);
//
//    descDifeArred := RoundTo(tempValorDesconto - (descontoParcial * cdsDocumentos.RecordCount), -2);
//  end;
//  if tempValorJuros > 0 then
//  begin
//    descontoParcial := RoundTo((tempValorJuros / cdsDocumentos.RecordCount), -2);
//
//    descDifeArred := RoundTo(tempValorJuros - (descontoParcial * cdsDocumentos.RecordCount), -2);
//  end;

  sum:= valordinheiro + valorcheque;
  if cbxDescAcre.Value = 'D' then
  begin
    if sum > valorDoc then
    tiraTroco:= sum - valorDoc;
  end
  else
  begin
    if sum > (valorDoc+tempValorAcrescimo) then
    tiraTroco:= sum - (valorDoc+tempValorAcrescimo);
  end;


  cdsDocumentos.First;

  if valorCredito > 0 then     //Distribui o pagamento em CREDITO
  begin
    creditoParcial := valorCredito;
    TRY
      while not(cdsDocumentos.Eof) do
      begin
        with qryEditCntReceber_Item do
        begin
          Close;
          //descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

          ParamByName('DT_PAG').AsDateTime := Now;

          if usarJuros ='S' then
            valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat, -2)
          else
            valorTotNota := cdsDocumentosVALOR_DOC.AsFloat;

          if tempValorDesconto > 0 then
          begin
            if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
            descontoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorDesconto / valorDoc), -2)
            else
            descontoParcial:=cdsDocumentosDESCONTO_PARCIAL.AsFloat;
          end;
          if tempValorAcrescimo > 0 then
          begin
            if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
            AcrescimoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorAcrescimo / valorDoc), -2)
            else
            AcrescimoParcial:=cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
          end;

          if cbxDescAcre.Value = 'D' then
            valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2)
          else
            valorPagar := RoundTo(valorTotNota + AcrescimoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);

          //Inc(foraDesconto);

          if valorPagar < 0 then
          begin
            if cbxDescAcre.Value = 'D' then
            begin
              descontoParcial := valorPagar + descontoParcial;     //voltar ak
              ParamByName('DESCONTO').AsFloat := descontoParcial;
              valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
              ParamByName('ACRESCIMO').AsFloat := 0;
              //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
              //descontoParcial := RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount - foraDesconto), -2);
              //descDifeArred := RoundTo(tempValorDesconto - (descontoParcial * (cdsDocumentos.RecordCount - foraDesconto)), -2);
            end;
          end
          else
          begin
            if cbxDescAcre.Value = 'D' then
            begin
             if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
                ParamByName('DESCONTO').AsFloat := descontoParcial
             else
                 ParamByName('DESCONTO').AsFloat :=0;
             ParamByName('REC_DESC_ACRE').AsInteger := 1;
             if usarJuros='S' then
               begin
                if (creditoParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 CreditoParcial:=roundTo(CreditoParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                // valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-CreditoParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+CreditoParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+ cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    CreditoParcial:=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                    somaJuros :=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  end;
                end;

               end
             else
             begin
              cdsDocumentos.edit;
              ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
              cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
              ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
              somaJuros:=0;
              cdsDocumentos.Post;
             end;
              ParamByName('ACRESCIMO').AsFloat := 0;
            end
            else
            begin
              if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
                  ParamByName('ACRESCIMO').AsFloat := AcrescimoParcial
              else
                  ParamByName('ACRESCIMO').AsFloat :=0;
              if usarJuros='S' then
              begin
                if (creditoParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 CreditoParcial:=roundTo(CreditoParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 //valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-CreditoParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+CreditoParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    CreditoParcial:=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                    somaJuros :=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  end;
               // ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat+AcrescimoParcial
                end
              end
              else
              begin
                cdsDocumentos.edit;
                ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                somaJuros:=0;
                cdsDocumentos.Post;
                //ParamByName('VALOR_JUROS_PAGO').AsFloat :=AcrescimoParcial;
              end;
              ParamByName('REC_DESC_ACRE').AsInteger := 2;
              ParamByName('DESCONTO').AsFloat :=0;
            end;
            //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
            //descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
            //descDifeArred := 0;
          end;

          if (creditoParcial >= valorPagar) then
          begin
            valorPagoAtual := valorPagar;
            valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            creditoParcial := RoundTo(creditoParcial - valorPagar, -2);
            ParamByName('POSICAO').AsString := 'PG';
            posicao:='PG';
          end
          else
          begin
            valorPagoAtual := creditoParcial;
            valorPago := RoundTo(creditoParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            creditoParcial := 0;
            ParamByName('POSICAO').AsString := 'AB';
            posicao:='AB';
          end;

          if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CR') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
            moeda := 'RA'
          else
            moeda := 'CR';

          //ParamByName('VALOR_PAGO').AsFloat := valorPago;
           ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtual;
          //ParamByName('VALOR_JUROS_PAGO').AsFloat := descontoParcial;

          ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
          ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;

          ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
          ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
          idReceber := cdsDocumentosIDRECEBER.AsInteger;

          with cdsDocumentos do
          begin
            Edit;
            cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
            cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
            cdsDocumentosPOSICAO.AsString := posicao;
            cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
   // vanessa
            cdsDocumentosDESCONTO_PARCIAL.AsFloat:=descontoParcial;
            cdsDocumentosACRESCIMO_PARCIAL.AsFloat:=AcrescimoParcial;
           if usarJuros='S' then
           begin
            cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
            if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
              cdsDocumentosVALOR_RESTANTE.AsFloat := 0
            else
              cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat+ cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
           end
           else
           begin
            cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
            if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
              cdsDocumentosVALOR_RESTANTE.AsFloat := 0
            else
              cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
           end;
            Post;
          end;
         // ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
          with cdsRec_Pag do
          begin
            Append;
            cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'CR';
            cdsRec_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
            cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            Post;
          end;

          Prepare;
          ExecQuery;
          transBaixaDoc.CommitRetaining;
          VerificaContaQuitada(9);

        end;

        if creditoParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;

      end;
    Except on e:Exception do
    begin
    mensagem:= 'Baixa de conta cancelada devido a Erros Internos!'#13'Erro: '+ e.message;
    Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
    transBaixaDoc.RollbackRetaining;
    Abort;
    end;
    END;
  end;

  cdsDocumentos.First;

  if valorDinheiro > 0 then     //Distribui o pagamento em DINHEIRO
  begin
    if tiraTroco >= valorDinheiro then
      dinheiroParcial := valorDinheiro
    else
      dinheiroParcial := valorDinheiro - tiraTroco;

     tiraTroco := 0;
    try
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
            //descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

            ParamByName('DT_PAG').AsDateTime := Now;

            if usarJuros ='S' then
              valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat, -2)
            else
              valorTotNota := cdsDocumentosVALOR_DOC.AsFloat;

            //valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat, -2);
            if tempValorDesconto > 0 then
            begin
              if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
              descontoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorDesconto / valorDoc), -2)
              else
              descontoParcial:=cdsDocumentosDESCONTO_PARCIAL.AsFloat;
            end;
            if tempValorAcrescimo > 0 then
            begin
              if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
              AcrescimoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorAcrescimo / valorDoc), -2)
              else
              AcrescimoParcial:=cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
            end;

            if cbxDescAcre.Value = 'D' then
              valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2)
            else
              valorPagar := RoundTo(valorTotNota + AcrescimoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);

            //Inc(foraDesconto);

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
                //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
                //descontoParcial := RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount - foraDesconto), -2);
                //descDifeArred := RoundTo(tempValorDesconto - (descontoParcial * (cdsDocumentos.RecordCount - foraDesconto)), -2);
              end;
            end
            else
            begin
              if cbxDescAcre.Value = 'D' then
              begin
               if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
                ParamByName('DESCONTO').AsFloat := descontoParcial
               else
                 ParamByName('DESCONTO').AsFloat :=0;
               ParamByName('REC_DESC_ACRE').AsInteger := 1;
               if usarJuros='S' then
               begin
                if (dinheiroParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 dinheiroParcial:=roundTo(dinheiroParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosREC_DINHEIRO.AsFloat:= cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 //valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-dinheiroParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+dinheiroParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosREC_DINHEIRO.AsFloat:= cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    dinheiroParcial:=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                    somaJuros :=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  end;
                end;

               end
               else
               begin
                cdsDocumentos.edit;
                ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                somaJuros:=0;
                cdsDocumentos.Post
               end;

                ParamByName('ACRESCIMO').AsFloat := 0;
              end
              else
              begin
                if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
                  ParamByName('ACRESCIMO').AsFloat := AcrescimoParcial
                else
                  ParamByName('ACRESCIMO').AsFloat :=0;
                if usarJuros='S' then
                begin
                  if (dinheiroParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                  begin
                   ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   somaJuros :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   dinheiroParcial:=roundTo(dinheiroParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentos.Edit;
                   cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                   cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                   cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosREC_DINHEIRO.AsFloat:= cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   //valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                   cdsDocumentos.Post;
                   ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                    begin
                      cdsDocumentos.Edit;
                      cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-dinheiroParcial;
                      cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+dinheiroParcial;
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      somaJuros :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosREC_DINHEIRO.AsFloat:= cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                      cdsDocumentos.Post;
                      dinheiroParcial:=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                    end
                    else
                    begin
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                      somaJuros :=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                    end;
                  end;
                 //   ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat+AcrescimoParcial
                end
                else
                begin
                  cdsDocumentos.edit;
                  ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                  cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                  ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  somaJuros:=0;
                  cdsDocumentos.Post;
                 //ParamByName('VALOR_JUROS_PAGO').AsFloat :=AcrescimoParcial;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
               //o descontoParcial tamb�m esta servindo para acrescimo
              //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
              //descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
              //descDifeArred := 0;
            end;

              if (dinheiroParcial >= valorPagar) then
              begin
                valorPagoAtualDN := valorPagar ;
                valorPagoAtual := valorPagoAtualDN + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
                valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
                ParamByName('REC_DINHEIRO').AsFloat := RoundTo(cdsDocumentosREC_DINHEIRO.AsFloat + valorPagar, -2);
                dinheiroParcial := RoundTo(dinheiroParcial - valorPagar, -2);
                ParamByName('POSICAO').AsString := 'PG';
                posicao:='PG';
              end
              else
              begin
                valorPagoAtualDN:= dinheiroParcial;
                valorPagoAtual := dinheiroParcial+ cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
                valorPago := RoundTo(dinheiroParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
                ParamByName('REC_DINHEIRO').AsFloat := RoundTo(cdsDocumentosREC_DINHEIRO.AsFloat + dinheiroParcial, -2);
                dinheiroParcial := 0;
                ParamByName('POSICAO').AsString := 'AB';
                posicao:='AB';
              end;

            if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'DN') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
              moeda := 'RA'
            else
              moeda := 'DN';

            //ParamByName('VALOR_PAGO').AsFloat := valorPago;
            ParamByName('VALOR_PAGO').AsFloat := somaJuros+ valorPagoAtualDN;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat :=valorPago;
              cdsDocumentosREC_DINHEIRO.AsFloat := ParamByName('REC_DINHEIRO').AsFloat;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

              cdsDocumentosDESCONTO_PARCIAL.AsFloat:=descontoParcial;
              cdsDocumentosACRESCIMO_PARCIAL.AsFloat:=AcrescimoParcial;
             // cdsDocumentosVLR_JUROS_PAGO.AsFloat:= ParamByName('VALOR_JUROS_PAGO').AsFloat;

              if usarJuros='S' then
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat+ cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end
              else
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end;
              Post;
            end;
           // ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
            Prepare;
            ExecQuery;
            transBaixaDoc.CommitRetaining;
            VerificaContaQuitada(1);

          end;
        end;

        if dinheiroParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;

      end;
    Except on e:Exception do
    begin
    mensagem:= 'Baixa de conta cancelada devido a Erros Internos!'#13'Erro: '+ e.message;
    Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
    transBaixaDoc.RollbackRetaining;
    Abort;
    end;
    END;
  end;

  cdsDocumentos.First;

  if valorCartao > 0 then //Distribui o pagamento em CART�O
  begin
    cartaoParcial := valorCartao;  //TERMINAR CART�O E TERMINAR DE VER A QUEST�O DO JUROS
    try
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
            //descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

            ParamByName('DT_PAG').AsDateTime := Now;

            if usarJuros ='S' then
            valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat, -2)
            else
            valorTotNota := cdsDocumentosVALOR_DOC.AsFloat;

            if tempValorDesconto > 0 then
            begin
              if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
                descontoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorDesconto / valorDoc), -2)
              else
               descontoParcial :=cdsDocumentosDESCONTO_PARCIAL.AsFloat;
            end;
            if tempValorAcrescimo > 0 then
            begin
              if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
              AcrescimoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorAcrescimo / valorDoc), -2)
              else
               AcrescimoParcial :=cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
            end;

            if cbxDescAcre.Value = 'D' then
              valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2)
            else
              valorPagar := RoundTo(valorTotNota + AcrescimoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);

            //Inc(foraDesconto);

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
                //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
                //descontoParcial := RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount - foraDesconto), -2);
                //descDifeArred := RoundTo(tempValorDesconto - (descontoParcial * (cdsDocumentos.RecordCount - foraDesconto)), -2);
              end;
            end
            else
            begin
              if cbxDescAcre.Value = 'D' then
              begin
               if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
                ParamByName('DESCONTO').AsFloat := descontoParcial
               else
                 ParamByName('DESCONTO').AsFloat :=0;
               ParamByName('REC_DESC_ACRE').AsInteger := 1;
               if usarJuros='S' then
               begin
                if (CartaoParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 cartaoParcial:=roundTo(CartaoParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 //valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-CartaoParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+CartaoParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    CartaoParcial:=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                    somaJuros :=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  end;
                end;

               end
               else
               begin
                cdsDocumentos.edit;
                ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                somaJuros:=0;
                cdsDocumentos.Post
               end;

                ParamByName('ACRESCIMO').AsFloat := 0;
              end
              else
              begin
                if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
                  ParamByName('ACRESCIMO').AsFloat := AcrescimoParcial
                else
                  ParamByName('ACRESCIMO').AsFloat :=0;
                if usarJuros='S' then
                begin
                  if (CartaoParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                  begin
                   ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   cartaoParcial:=roundTo(CartaoParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentos.Edit;
                   cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                   cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                   cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   //valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                   cdsDocumentos.Post;
                   ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                    begin
                      cdsDocumentos.Edit;
                      cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-CartaoParcial;
                      cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+CartaoParcial;
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                      cdsDocumentos.Post;
                      CartaoParcial:=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                    end
                    else
                    begin
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                      somaJuros :=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                    end;
                  end;
                  //ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat+AcrescimoParcial
                end
                else
                begin
                  cdsDocumentos.edit;
                  ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                  cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                  ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  somaJuros:=0;
                  cdsDocumentos.Post;
                 //ParamByName('VALOR_JUROS_PAGO').AsFloat :=AcrescimoParcial;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
              //tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
             // descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
              //descDifeArred := 0;
            end;

            if (cartaoParcial >= valorPagar) then
            begin
              valorPagoAtualCT := valorPagar ;
              valorPagoAtual := valorPagoAtualCT + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              cartaoParcial := RoundTo(cartaoParcial - valorPagar, -2);
              ParamByName('POSICAO').AsString := 'PG';
              posicao:='PG';
            end
            else
            begin
              valorPagoAtualCT :=cartaoParcial;
              valorPagoAtual := valorPagoAtualCT + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(cartaoParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              cartaoParcial := 0;
              ParamByName('POSICAO').AsString := 'AB';
              posicao:='AB';
            end;

            if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CT') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
              moeda := 'RA'
            else
              moeda := 'CT';


            //ParamByName('VALOR_PAGO').AsFloat := valorPago;
           // ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat;
           ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCT;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;

            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idreceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

              cdsDocumentosDESCONTO_PARCIAL.AsFloat:=descontoParcial;
              cdsDocumentosACRESCIMO_PARCIAL.AsFloat:=AcrescimoParcial;
              //cdsDocumentosVLR_JUROS_PAGO.AsFloat:= ParamByName('VALOR_JUROS_PAGO').AsFloat;
              if usarJuros='S' then
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat+ cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end
              else
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end;
              Post;
            end;
            //ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
            with cdsRec_Pag do
            begin
              Append;
              cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'CT';
              cdsRec_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
              cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
              Post;
            end;

            Prepare;
            ExecQuery;
            transBaixaDoc.CommitRetaining;
            VerificaContaQuitada(2);

          end;
        end;

        if cartaoParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;

      end;
    Except on e:Exception do
    begin
    mensagem:= 'Baixa de conta cancelada devido a Erros Internos!'#13'Erro: '+ e.message;
    Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
    transBaixaDoc.RollbackRetaining;
    Abort;
    end;
    END;
  end;

  cdsDocumentos.First;

  if valorCheque > 0 then //Distribui o pagamento em CHEQUE
  begin
     if (tiraTroco < valorCheque) and (tiraTroco > 0) then
     begin
       chequeParcial:= valorCheque - troco;
     end
     else
      chequeParcial := valorCheque;
    try
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;

            ParamByName('DT_PAG').AsDateTime := Now;

           // descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

           if usarJuros ='S' then
            valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat, -2)
            else
            valorTotNota := cdsDocumentosVALOR_DOC.AsFloat;

            if tempValorDesconto > 0 then
            begin
              if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
              descontoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorDesconto / valorDoc), -2)
              else
              descontoParcial:=cdsDocumentosDESCONTO_PARCIAL.AsFloat;
            end;
            if tempValorAcrescimo > 0 then
            begin
              if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
              AcrescimoParcial := RoundTo(((valorTotNota-cdsDocumentosVALOR_PAGO.AsFloat)*tempValorAcrescimo / valorDoc), -2)
              else
              AcrescimoParcial:=cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
            end;

            if cbxDescAcre.Value = 'D' then
              valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2)
            else
              valorPagar := RoundTo(valorTotNota + AcrescimoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);

            //Inc(foraDesconto);

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
               // tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
                //descontoParcial := RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount - foraDesconto), -2);
                //descDifeArred := RoundTo(tempValorDesconto - (descontoParcial * (cdsDocumentos.RecordCount - foraDesconto)), -2);
              end;
            end
            else
            begin
              if cbxDescAcre.Value = 'D' then
              begin
               if cdsDocumentosDESCONTO_PARCIAL.AsFloat=0 then
                ParamByName('DESCONTO').AsFloat := descontoParcial
               else
                 ParamByName('DESCONTO').AsFloat :=0;
               ParamByName('REC_DESC_ACRE').AsInteger := 1;
               if usarJuros='S' then
               begin
                if (chequeParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 chequeParcial:=roundTo(chequeParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                // valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-chequeParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+chequeParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+ cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    chequeParcial:=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                    somaJuros :=0;
                    ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                  end;
                end;

               end
               else
               begin
                cdsDocumentos.edit;
                ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                somaJuros:=0;
                cdsDocumentos.Post;
               end;

                ParamByName('ACRESCIMO').AsFloat := 0;
              end
              else
              begin
                if cdsDocumentosACRESCIMO_PARCIAL.AsFloat=0 then
                  ParamByName('ACRESCIMO').AsFloat := AcrescimoParcial
                else
                  ParamByName('ACRESCIMO').AsFloat :=0;
                if usarJuros='S' then
                begin
                  if (chequeParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                  begin
                   ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   chequeParcial:=roundTo(chequeParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentos.Edit;
                   cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                   cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                   cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                  // valorPagar:=roundTo(valorPagar-cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                   cdsDocumentos.Post;
                   ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                    begin
                      cdsDocumentos.Edit;
                      cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-chequeParcial;
                      cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+chequeParcial;
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO.AsFloat:=roundTo(cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                      cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                      cdsDocumentos.Post;
                      chequeParcial:=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                    end
                    else
                    begin
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                      somaJuros :=0;
                      ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                    end;
                  end;
                 // ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat+AcrescimoParcial;
                end
                else
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=0;
                 cdsDocumentos.edit;
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=0;
                 somaJuros:=0;
                 cdsDocumentos.Post;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
//              tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
//              descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
//              descDifeArred := 0;
            end;

            if (chequeParcial >= valorPagar) then
            begin
              valorPagoAtualCH := valorPagar;
              valorPagoAtual := valorPagoAtualCH + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              chequeParcial := RoundTo(chequeParcial - valorPagar, -2);
              ParamByName('POSICAO').AsString := 'PG';
              posicao:='PG';
            end
            else
            begin
              valorPagoAtualCH := chequeParcial;
              valorPagoAtual := valorPagoAtualCH + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(chequeParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              chequeParcial := 0;
              ParamByName('POSICAO').AsString := 'AB';
              posicao:='AB';
            end;

            if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CH') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
              moeda := 'RA'
            else
              moeda := 'CH';


            //ParamByName('VALOR_PAGO').AsFloat := valorPago;
            //ParamByName('VALOR_JUROS_PAGO').AsFloat := cdsDocumentosVALOR_JUROS.AsFloat;
            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCH;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;

            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

              cdsDocumentosDESCONTO_PARCIAL.AsFloat:=descontoParcial;
              cdsDocumentosACRESCIMO_PARCIAL.AsFloat:=AcrescimoParcial;
            //  cdsDocumentosVLR_JUROS_PAGO.AsFloat:= ParamByName('VALOR_JUROS_PAGO').AsFloat;

              if usarJuros='S' then
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat + cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat+ cdsDocumentosVALOR_JUROS.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end
              else
              begin
                cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
                if cdsDocumentosVALOR_RESTANTE.AsFloat < 0 then
                  cdsDocumentosVALOR_RESTANTE.AsFloat := 0
                else
                  cdsDocumentosVALOR_RESTANTE.AsFloat := RoundTo(cdsDocumentosVALOR_DOC.AsFloat - (cdsDocumentosVALOR_PAGO.AsFloat + descontoParcial-AcrescimoParcial),-2);
              end;
              Post;
            end;
            //ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
            with cdsRec_Pag do
            begin
              Append;
              cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'CH';
              cdsRec_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
              cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
              Post;
            end;

            Prepare;
            ExecQuery;
            transBaixaDoc.CommitRetaining;
            VerificaContaQuitada(4);

          end;
        end;

        if chequeParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;

      end;
    Except on e:Exception do
    begin
    mensagem:= 'Baixa de conta cancelada devido a Erros Internos!'#13'Erro: '+ e.message;
    Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
    transBaixaDoc.RollbackRetaining;
    Abort;
    end;
    END;
  end;

  transBaixaDoc.CommitRetaining;
  while not(cdsDocumentos.Eof) do
  begin
    ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
    valorJurosRestante:= valorJurosRestante+cdsDocumentosJUROS_RESTANTE.AsFloat;
    cdsDocumentos.Next;
  end;
end;

procedure TfrmBaixaDocumento.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmBaixaDocumento.btnGerarParcelasClick(Sender: TObject);
var
  parcelas : Integer;
  utils : TUtils;
begin

  cdsCntReceber_Item.EmptyDataSet;
  cdsChequeCntReceber.EmptyDataSet;
  parcelas := 0;

  if valorCheque > 0 then
  begin
    Try
      frmLancDadosBasicCheque := TfrmLancDadosBasicCheque.Create(nil);
      frmLancDadosBasicCheque.edtEmitente.Text := emitente;
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
    GeraParcelaNota('CT', parcelas, valorCartao);
  end;

//  parcelas := 0;
//
//  if valorParcelar > 0 then
//  begin
//    parcelas := StrToInt(edtParcelasNT.Text);
//    GeraParcelaNota('NT', parcelas, valorParcelar);
//  end;
  gerouparcelas:=true;
  btnReceber.SetFocus;
end;

procedure TfrmBaixaDocumento.btnReceberClick(Sender: TObject);
begin

  if (valorDinheiro = 0) and (valorCheque = 0) and (valorCartao = 0) and (valorCredito = 0) then
  begin
    Application.MessageBox('Informe o valor de pagamento em uma das moedas.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
    edtDinheiro.SetFocus;
    Abort;
  end;
  if ((valorCheque > 0) or (valorParcelar > 0) or (valorCartao > 0)) and (gerouParcelas = False) then
  begin
    Application.MessageBox('Primeiro gere as parcelas a receber.', 'Aten��o', MB_OK+MB_ICONEXCLAMATION);
    btnGerarParcelas.SetFocus;
    Abort;
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

  VerificaFormaPagamento;
  BaixarDocumento;
  GerarDocumentos;
  MontaComprovante;
  AbateCredtioConta;
  VerificaTrocoRec;
  Application.MessageBox('Documento Baixado Com Sucesso!','Confirma��o de Baixa', MB_OK+MB_ICONEXCLAMATION);
  ModalResult := mrOk;
end;

procedure TfrmBaixaDocumento.edtCartaoEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtCartao.Text := utils.RetiraMascaraDinheiro(edtCartao.Text);
  edtCartao.SelectAll;
end;

procedure TfrmBaixaDocumento.edtCartaoExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtCartao.Text := FloatToStr(utils.ValidaInteiroFloat(edtCartao.Text, 'F'));
  valorCartao :=  StrToFloat(edtCartao.Text);
  edtCartao.Text := utils.AdicionaMascaraDinheiro(edtCartao.Text);

//  valorParcelar := valorDoc - valorDesconto - valorDinheiro - valorCheque - valorCartao;
//
//  if valorParcelar >= 0 then
//    edtNota.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorParcelar));

end;

procedure TfrmBaixaDocumento.edtChequeEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtCheque.Text := utils.RetiraMascaraDinheiro(edtCheque.Text);
  edtCheque.SelectAll;
end;

procedure TfrmBaixaDocumento.edtChequeExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtCheque.Text := FloatToStr(utils.ValidaInteiroFloat(edtCheque.Text, 'F'));
  valorCheque :=  StrToFloat(edtCheque.Text);
  edtCheque.Text := utils.AdicionaMascaraDinheiro(edtCheque.Text);

//  valorParcelar := valorDoc - valorDesconto - valorDinheiro - valorCheque - valorCartao;
//
//  if valorParcelar >= 0 then
//    edtNota.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorParcelar));

end;

procedure TfrmBaixaDocumento.edtCreditoEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtCredito.Text := utils.RetiraMascaraDinheiro(edtCredito.Text);
  edtCredito.SelectAll;
end;

procedure TfrmBaixaDocumento.edtCreditoExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtCredito.Text := FloatToStr(utils.ValidaInteiroFloat(edtCredito.Text, 'F'));
  valorCredito :=  StrToFloat(edtCredito.Text);

  if valorCredito > creditoTotal then
  begin
    Application.MessageBox('Cr�dito informado � maior que o cr�dito em conta do cliente.', 'Aten��o', MB_OK+MB_ICONINFORMATION);
    valorCredito := creditoTotal;
    edtCredito.Text := FloatToStr(valorCredito);
    edtCredito.SetFocus;
  end
  else
    edtCredito.Text := utils.AdicionaMascaraDinheiro(edtCredito.Text);
end;

procedure TfrmBaixaDocumento.edtDescontoEnter(Sender: TObject);
begin
  edtDesconto.SelectAll;
end;

procedure TfrmBaixaDocumento.edtDescontoExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtDesconto.Text := FloatToStr(utils.ValidaInteiroFloat(edtDesconto.Text, 'F'));
  if cbxDescAcre.Value = 'D' then
  begin
    valorDesconto :=  StrToFloat(edtDesconto.Text);
    valorAcrescimo:=0;
  end
  else
  begin
    valorDesconto := 0;
    valorAcrescimo:=StrToFloat(edtDesconto.Text);
  end;

  if (valorDesconto > 0) or (valorAcrescimo>0) then
  begin
    if cbxTipoDesconto.Value = 'P' then
    begin
      if cbxDescAcre.Value = 'D' then
      begin
        valorDesconto := RoundTo(valorDoc * valorDesconto / 100, -2);
        //edtJurosTotal.Text:='R$ 0,00';
      end
      else
      begin
       valorAcrescimo:=RoundTo(valorDoc * valorAcrescimo / 100, -2);
       //edtJurosTotal.Text:= utils.AdicionaMascaraDinheiro(FloatToStr(valorJuros));
      end;
    end;

    if cbxDescAcre.Value = 'D' then
      valorDinheiro := RoundTo(valorDoc - valorDesconto, -2)
    else
      valorDinheiro := RoundTo(valorDoc + valorAcrescimo, -2);

    if valorDinheiro < 0 then
      valorDinheiro := 0;

    edtDinheiro.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDinheiro));
  end;
end;

procedure TfrmBaixaDocumento.edtDinheiroEnter(Sender: TObject);
var
  utils : TUtils;
begin
  edtDinheiro.Text := utils.RetiraMascaraDinheiro(edtDinheiro.Text);
  edtDinheiro.SelectAll;
end;

procedure TfrmBaixaDocumento.edtDinheiroExit(Sender: TObject);
var
  utils : TUtils;
begin
  edtDinheiro.Text := FloatToStr(utils.ValidaInteiroFloat(edtDinheiro.Text, 'F'));
  valorDinheiro :=  StrToFloat(edtDinheiro.Text);
  edtDinheiro.Text := utils.AdicionaMascaraDinheiro(edtDinheiro.Text);

//  valorParcelar := valorDoc - valorDesconto - valorDinheiro - valorCheque - valorCartao;
//
//  if valorParcelar >= 0 then
//    edtNota.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorParcelar));

end;

procedure TfrmBaixaDocumento.FormActivate(Sender: TObject);
var
 utils : TUtils;
 uVerificaPermicao:TVerificaPermicao;
 mensagem:String;
begin
  edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
  edtJurosTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorJuros));
  edtDesconto.SetFocus;
  fdsPortador.Open;
  fdsPortador.Last;
  fdsPortador.First;

  valorDinheiro := 0;
  valorDesconto := 0;
  valorCheque := 0;
  valorCartao:= 0;
  //valorJuros:=0;

  if creditoTotal > 0 then
  begin
    lblVlrCredito.Visible := True;
    lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00', creditoTotal);
  end;

  if tipo = 'receber' then
  begin
    frmBaixaDocumento.Caption := 'Baixa de Documentos - Contas a Receber';
  end;

  cdsDocumentos.First;

  if DM.fdsUsuarioPermicDESC_ACRE_RECEBER.AsString <>'S' then
  begin
    mensagem:='Usu�rio sem Permiss�o para dar #13descontos e acrescimos no recebimento';
    edtDesconto.Enabled:=false;
    edtDesconto.TextHint:= mensagem;
    cbxDescAcre.Enabled:=false;
    cbxDescAcre.TextHint:=mensagem;
    cbxTipoDesconto.Enabled:=false;
    cbxTipoDesconto.TextHint:= mensagem;
  end
  else
  begin
    mensagem:='';
    edtDesconto.Enabled:=True;
    edtDesconto.TextHint:= mensagem;
    cbxDescAcre.Enabled:=True;
    cbxDescAcre.TextHint:=mensagem;
    cbxTipoDesconto.Enabled:=True;
    cbxTipoDesconto.TextHint:= mensagem;
  end;

//  while not(cdsDocumentos.Eof) do
//  begin
//    ShowMessage(cdsDocumentosVALOR_DOC.AsString);
//    cdsDocumentos.Next;
//  end;

end;

procedure TfrmBaixaDocumento.FormCreate(Sender: TObject);
begin
  transBaixaDoc.Active := True;

  cdsDocumentos.CreateDataSet;
  cdsDocumentos.IndexFieldNames := 'DT_VENCIMENTO';
  cdsDocumentos.Open;

  cdsCntReceber_Item.CreateDataSet;
  cdsCntReceber_Item.Open;

  cdsChequeCntReceber.CreateDataSet;
  cdsChequeCntReceber.Open;

  cdsRec_Pag.CreateDataSet;
  cdsRec_Pag.Open;

end;

procedure TfrmBaixaDocumento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmBaixaDocumento.FormShow(Sender: TObject);
begin
  gerouparcelas:=false;
end;

procedure TfrmBaixaDocumento.GeraParcelaCheque(prefixo : string; parcelas: Integer; vlrParcelar: Double);
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
    dataParcela := dataParcela + 30;
    cdsChequeCntReceberDT_VENCIMENTO.AsDateTime := dataParcela;
    cdsChequeCntReceberPARCELA.AsString:= utils.FormataParcelas(IntToStr(i)) + parcelasTemp;

      if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas)); //joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsChequeCntReceberVALOR.AsFloat := valorParcela;

    cdsChequeCntReceber.Post;

  end;
end;

procedure TfrmBaixaDocumento.GeraParcelaNota(prefixo : string; parcelas: Integer; vlrParcelar: Double);
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
    cdsCntReceber_Item.Append;
    cdsCntReceber_ItemIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsCntReceber_ItemPOSICAO.AsString := 'AB';
    cdsCntReceber_ItemPARCELA.AsString:= utils.FormataParcelas(IntToStr(i)) + parcelasTemp;
    cdsCntReceber_ItemPREFIXO.AsString := prefixo;
    dataParcela := dataParcela + DM.fdsConfigDIAS_PRIMEIRA_PARCELA.AsInteger;
    cdsCntReceber_ItemDT_VENC.AsDateTime := dataParcela;

    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas)); //joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsCntReceber_ItemVALOR.AsFloat := valorParcela;

    cdsCntReceber_Item.Post;
  end;
end;

procedure TfrmBaixaDocumento.GerarDocumentos;
var
   prefixoTemp : string[2];
   idReceberItem: Integer;
begin
  fdsReceber_Pagamento.Open;
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
      transBaixaDoc.CommitRetaining;
      cdsChequeCntReceber.Next;
    end;

    cdsRec_Pag.First;

    while not(cdsRec_Pag.Eof) do
    begin
      if cdsRec_PagPREFIXO_PAGAMENTO.AsString = 'CH' then          //vitor
      begin
        fdsReceber_Pagamento.Append;
        fdsReceber_PagamentoIDCONTA.AsInteger := cdsRec_PagIDCONTA.AsInteger;
        fdsReceber_PagamentoIDPAGAMENTO.AsInteger := idReceber;
        fdsReceber_PagamentoIDFILIAL.AsInteger := cdsRec_PagIDFILIAL.AsInteger;
        fdsReceber_Pagamento.Post;
      end;
      cdsRec_Pag.Next;
    end;

    transBaixaDoc.CommitRetaining;
  end;

  cdsCntReceber_Item.First;
  prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;

  while not(cdsCntReceber_Item.Eof) do
  Begin
    if prefixoTemp = 'CT' then
    begin
      GravaCntReceber(valorCartao, edtParcelasCT.Text, 2);

      while (prefixoTemp = 'CT') and not(cdsCntReceber_Item.Eof) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString, cdsCntReceber_ItemDT_VENC.AsDateTime, cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
    end;

    cdsRec_Pag.First;

    while not(cdsRec_Pag.Eof) do
    begin
      if cdsRec_PagPREFIXO_PAGAMENTO.AsString = prefixoTemp then
      begin
        fdsReceber_Pagamento.Append;
        fdsReceber_PagamentoIDCONTA.AsInteger := cdsRec_PagIDCONTA.AsInteger;
        fdsReceber_PagamentoIDPAGAMENTO.AsInteger := idReceber;
        fdsReceber_PagamentoIDFILIAL.AsInteger := cdsRec_PagIDFILIAL.AsInteger;
        fdsReceber_Pagamento.Post;
      end;
      cdsRec_Pag.Next;
    end;
    transBaixaDoc.CommitRetaining;
  End;
end;

procedure TfrmBaixaDocumento.GravaCntReceber(valorTotal: Double; parcelasTotal: string; idFormaPag: integer);
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
  fdsCntReceberDINHEIRO.AsFloat := 0;
  fdsCntReceberVALOR.AsFloat := valorTotal;
  fdsCntReceberIDPORTADOR.AsInteger := DM.fdsConfigIDPORTADOR_PADRAO.AsInteger;
  fdsCntReceberIDFORMA_PAG.AsInteger := idFormaPag;
  fdsCntReceberIDVENDA.AsInteger := 0;
  fdsCntReceberTIPO_VENDA.AsString := 'TR';
  fdsCntReceberTOT_PARCELA.AsString := utils.FormataParcelas(parcelasTotal);
  fdsCntReceber.Post;
  transBaixaDoc.CommitRetaining;
end;

procedure TfrmBaixaDocumento.GravaCntReceberItem(prefixo, parcela: string; dtVenc: TDate; valor: Double);
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
  transBaixaDoc.CommitRetaining;
end;

procedure TfrmBaixaDocumento.MontaComprovante;
begin
  with cdsDocumentos do
  begin
    First;
    while not(Eof) do
    begin
      redComp.Lines.Add(' Ref: ' + cdsDocumentosREFERENCIA.AsString + '    Valor: ' + FormatCurr('R$ #,##0.00', cdsDocumentosVALOR_DOC.AsFloat) + '   ' + cdsDocumentosPOSICAO.AsString);
      Next;
    end;
  end;

  redComp.Lines.Add('');
  redComp.Lines.Add('        FORMA DE PAGAMENTO');
  redComp.Lines.Add('');

  if valorDinheiro > 0 then
        redComp.Lines.Add(' Dinheiro                        ' + FormatCurr('R$ #,##0.00', valorDinheiro));

  if valorCartao > 0 then
        redComp.Lines.Add(' Cart�o                          ' + FormatCurr('R$ #,##0.00', valorCartao));

  if valorCheque > 0 then
        redComp.Lines.Add(' Cheque                          ' + FormatCurr('R$ #,##0.00', valorCheque));

  if valorCredito > 0 then
        redComp.Lines.Add(' Credito                          ' + FormatCurr('R$ #,##0.00', valorCredito));

end;

function TfrmBaixaDocumento.RetornaCntReceberItemID(idFilial: Integer;
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

procedure TfrmBaixaDocumento.RzGroupBox1CheckBoxClick(Sender: TObject);
var
utils:TUtils;
uVerificaPermicao : TVerificaPermicao;
begin
    if RzGroupBox1.Checked then
    begin
      usarJuros:= 'S';
      valorDoc:= roundTo(valorDoc+valorJuros,-2);
        edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
    end
    else
    begin
        usarJuros:='N';
        valorDoc:= roundTo(valorDoc-valorJuros,-2);
        if valorDoc<0 then
        begin
          edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(0.00));
        end
        else
         edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
         
      if uVerificaPermicao.Verifica('NAO_USAR_JUROS_RECEBER')= false then
      begin
        TFrmMensagens.Mensagem('Desculpe, Usu�rio n�o possui permiss�o para n�o usar o juros aplicado as parcelas.', 'Sem permiss�o.','I',[mbOK]);
        RzGroupBox1.Checked:=true;
        Abort;
      end
    end; 
end;

procedure TfrmBaixaDocumento.VerificaContaQuitada(idFormaPag : Integer);
var
  tempVlrPago : Double;
begin
  with qryConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CNT_RECEBER_ITEM WHERE IDRECEBER = :IDRECEBER AND IDFILIAL = :IDFILIAL AND POSICAO = ' + QuotedStr('AB'));
    ParamByName('IDRECEBER').AsInteger := idReceber;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    ExecQuery;
  end;

  if qryConsulta.RecordCount = 0 then
  begin
    with qryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CNT_RECEBER SET POSICAO = :POSICAO, IDFORMA_PAG = ' + IntToStr(idFormaPag) + ' WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
      ParamByName('ID').AsInteger := idReceber;
      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      ParamByName('POSICAO').AsString := 'PG';
      Prepare;
      ExecQuery;
    end;
  end;

  with qryConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CNT_RECEBER SET VALOR_PAGO = (SELECT SUM(VALOR_PAGO) FROM CNT_RECEBER_ITEM WHERE IDRECEBER = :ID AND IDFILIAL = :IDFILIAL) ');
    SQL.Add(' WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
    ParamByName('ID').AsInteger := idReceber;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    ExecQuery;
  end;

  transBaixaDoc.CommitRetaining;
end;

procedure TfrmBaixaDocumento.VerificaFormaPagamento;
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
    idFormaPag := 2;
  end;

//  if valorParcelar > 0 then
//  begin
//    Inc(i);
//    idFormaPag := 6;
//  end;
//
//  if valorCredito > 0 then
//  begin
//    Inc(i);
//    idFormaPag := 9;
//  end;

//  if i > 1 then
//  begin
//    idFormaPag := 0;
//  end;

end;

procedure TfrmBaixaDocumento.VerificaTrocoRec;
var
  utils : TUtils;
begin
  troco := RoundTo(valorDinheiro- (valorDoc - valorCheque - valorCartao - valorParcelar), -2);

  if (valorDesconto > 0)or (valorAcrescimo>0) then
  begin
    if cbxDescAcre.Value = 'D' then
      troco := RoundTo(troco + valorDesconto, -2)
    else
      troco := RoundTo(troco - valorAcrescimo, -2);
  end;

  if (troco > 0) then
  begin
    try
        frmTroco := TfrmTroco.Create(nil);
        frmTroco.edtSubtotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
        frmTroco.edtDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDesconto));

        if cbxDescAcre.Value = 'D' then
          frmTroco.edtTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc - valorDesconto))
        else
        begin
          frmTroco.lblDescAcre.Caption := 'Acr�scimo';
          frmTroco.edtDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorJuros));
          frmTroco.edtTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc + valorJuros));
        end;

        frmTroco.edtRecebido.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDinheiro + valorCheque));
        frmTroco.edtTroco.Text := utils.AdicionaMascaraDinheiro(FloatToStr(Troco));
        frmTroco.ShowModal;
      finally
        frmTroco.Free;
      end;
  end
  else
    troco := 0;
end;

end.
