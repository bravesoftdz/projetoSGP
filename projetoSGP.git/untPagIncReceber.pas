unit untPagIncReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, RzButton, RzBckgnd, Mask, RzEdit, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB, FIBDataSet,
  pFIBDataSet, RzDBCmbo, FIBQuery, pFIBQuery, Vcl.Imaging.pngimage, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, RzTabs, pFIBClientDataSet, Datasnap.DBClient, Math,
  RzDBEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, FIBDatabase, pFIBDatabase;

type
  TfrmPagIncReceber = class(TForm)
    RzPanel3: TRzPanel;
    RzBackground1: TRzBackground;
    btnReceber: TRzBitBtn;
    btnProrrogar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    pgcParcelas: TRzPageControl;
    tbsNota: TRzTabSheet;
    gdrNota: TRzDBGrid;
    RzPanel2: TRzPanel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    edtDesconto: TRzEdit;
    edtDinheiro: TRzEdit;
    edtCheque: TRzEdit;
    edtCartao: TRzEdit;
    edtParcelasCH: TRzEdit;
    btnGerarParcelas: TRzBitBtn;
    edtParcelasCT: TRzEdit;
    RzPageControl1: TRzPageControl;
    RzTabSheet2: TRzTabSheet;
    RzDBGrid2: TRzDBGrid;
    edtCliente: TRzEdit;
    lblTipo: TRzLabel;
    btnPesqCliente: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTitulo: TRzLabel;
    lblTituloTotal: TRzLabel;
    edtValorDoc: TRzEdit;
    qryRetornaIDCntReceber_Item: TpFIBQuery;
    qryConsulta: TpFIBQuery;
    qryEditCntReceber_Item: TpFIBQuery;
    qryInsertCntReceber_Item: TpFIBQuery;
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
    qryInsertChequeCntReceber: TpFIBQuery;
    qryEditChequeCntReceber_Item: TpFIBQuery;
    dsCntReceber: TDataSource;
    dsChequeCntReceber: TDataSource;
    cdsDocumentos: TpFIBClientDataSet;
    cdsDocumentosIdDoc: TIntegerField;
    cdsDocumentosIdFilial: TIntegerField;
    cdsDocumentosVALOR_PAGO: TFloatField;
    cdsDocumentosREC_DINHEIRO: TFloatField;
    cdsDocumentosVALOR_DOC: TFloatField;
    cdsDocumentosPOSICAO: TStringField;
    cdsDocumentosPAGAMENTO_MOEDA: TStringField;
    cdsDocumentosPARCELA: TStringField;
    cdsDocumentosID_REC_ITEM: TIntegerField;
    cdsDocumentosIDRECEBER: TIntegerField;
    cdsDocumentosDT_VENCIMENTO: TDateField;
    cdsDocumentosVALOR_JUROS: TCurrencyField;
    cdsDocumentosREFERENCIA: TStringField;
    cdsDocumentosIdVenda: TIntegerField;
    fdsReceber_Pagamento: TpFIBDataSet;
    fdsReceber_PagamentoIDCONTA: TFIBBCDField;
    fdsReceber_PagamentoIDPAGAMENTO: TFIBBCDField;
    fdsReceber_PagamentoIDFILIAL: TFIBBCDField;
    cdsRec_Pag: TpFIBClientDataSet;
    cdsRec_PagIDFILIAL: TIntegerField;
    cdsRec_PagIDCONTA: TIntegerField;
    cdsRec_PagIDPAGAMENTO: TIntegerField;
    cdsRec_PagPREFIXO_PAGAMENTO: TStringField;
    edtCredito: TRzEdit;
    RzLabel3: TRzLabel;
    lblVlrCredito: TRzLabel;
    RzLabel1: TRzLabel;
    edtNota: TRzEdit;
    edtParcelasNT: TRzEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel14: TRzLabel;
    edtDescricao: TRzEdit;
    lblCodigo: TRzLabel;
    dtpPagamento: TJvDatePickerEdit;
    cbxDescAcre: TRzComboBox;
    cbxTipoDesconto: TRzComboBox;
    RzLabel13: TRzLabel;
    cdsDocumentosVALOR_PAGO_ATUAL: TFloatField;
    cdsDocumentosVALOR_RESTANTE: TFloatField;
    cdsDocumentosDESCONTO_PARCIAL: TFloatField;
    cdsDocumentosACRESCIMO_PARCIAL: TFloatField;
    cdsDocumentosVLR_JUROS_PAGO: TFloatField;
    cdsDocumentosJUROS_RESTANTE: TFloatField;
    cdsDocumentosTEMP_JUROS_RESTANTE: TStringField;
    RzGroupBox1: TRzGroupBox;
    edtJurosTotal: TEdit;
    Label1: TLabel;
    cdsDocumentosVLR_RENEGOCIADO: TFloatField;
    cdsDocumentosVLR_ENTRADA: TFloatField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDinheiroEnter(Sender: TObject);
    procedure edtDinheiroExit(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure GeraParcelaCheque(prefixo: string; parcelas: Integer;
      vlrParcelar: Double);
    procedure GeraParcelaNota(prefixo: string; parcelas: Integer;
      vlrParcelar: Double);
    procedure Renegociar();
    procedure BaixarDocumento();
    procedure GerarDocumentos();
    procedure AbateCredtioConta();
    procedure VerificaTipoConta;
    procedure VerificaContaQuitada(idFormaPag: Integer);
    procedure CalculaValorParcelar;
    procedure GravaCntReceber(valorTotal: Double; parcelasTotal: string;
      idFormaPag: Integer);
    procedure GravaCntReceberItem(prefixo, parcela: string; dtVenc: TDate;
      valor: Double);
    function RetornaCntReceberItemID(idFilial: Integer; valor: Double;
      dt_venc: TDate): Integer;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDescontoEnter(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtChequeEnter(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure edtCartaoEnter(Sender: TObject);
    procedure edtCartaoExit(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure edtValorDocEnter(Sender: TObject);
    procedure edtValorDocExit(Sender: TObject);
    procedure edtCreditoEnter(Sender: TObject);
    procedure edtCreditoExit(Sender: TObject);
    procedure edtNotaEnter(Sender: TObject);
    procedure edtNotaExit(Sender: TObject);
    procedure edtDescricaoExit(Sender: TObject);
    procedure RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtJurosTotalExit(Sender: TObject);
    procedure RzGroupBox1CheckBoxClick(Sender: TObject);
  private
  procedure VerificaTrocoRec;
    { Private declarations }
  public
  var
    modo: string[10];
    // tipo = receber ou pagar / modo = inclus�o ou pagamento serve para os 2 tipos
    emitente,usarJuros,historico: string;
    valorDoc, valorJuros, valorParcelar, valorDinheiro, valorDesconto,valorAcrescimo,ValorJurosPago,valorJurosRestante: Double;
    valorCheque, valorCartao, valorCredito, creditoTotal, valorNota,troco,TotRenegociado: Double;
    idBanco, nBanco, idReceber, idCliente, idRecCH,idRecCT,idRecNT: Integer;
    nAgencia, nConta,tipoCartao: string;
    gerouParcelas: Boolean;
  end;

var
  frmPagIncReceber: TfrmPagIncReceber;

implementation

uses untData, uUtils, untLancDadosBasicCheque, untPesqCliente,
  untPesqFornecedor, untMsgUsuarioNaoPermitido, uVerificaPermicao, untTroco,
  untTipoCartaoCredito;

{$R *.dfm}

procedure TfrmPagIncReceber.AbateCredtioConta;
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
      DM.conexao.CommitRetaining;
    end;
  end;
end;

procedure TfrmPagIncReceber.BaixarDocumento;
var
  utils: TUtils;
  descontoParcial, tempValorDesconto,tempValorAcrescimo,AcrescimoParcial, dinheiroParcial, cartaoParcial,
    chequeParcial: Double;
  parcelarParcial, valorPago, valorPagar, valorTotNota, creditoParcial: Double;
  moeda, posicao: string[2];
  foraDesconto: Integer;
  valorPagoAtualDN,valorPagoAtualCH,valorPagoAtualCT,valorPagoAtual, descDifeArred,tiraTroco,somaJuros,sum: Double;
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
      while not(cdsDocumentos.Eof) do
      begin
        with qryEditCntReceber_Item do
        begin
          Close;
          ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

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
              end;
              ParamByName('REC_DESC_ACRE').AsInteger := 2;
              ParamByName('DESCONTO').AsFloat :=0;
            end;
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

           ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtual;

          ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
          ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
          ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
          ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
          ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
          idReceber := cdsDocumentosIDRECEBER.AsInteger;

          with cdsDocumentos do
          begin
            Edit;
            cdsDocumentosVLR_ENTRADA.AsFloat:= 0;
            cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
            cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
            cdsDocumentosPOSICAO.AsString := posicao;
            cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
          DM.transPricipal.CommitRetaining;
          VerificaContaQuitada(9);

        end;

        if creditoParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;

      end;

  end;

  cdsDocumentos.First;

  if valorDinheiro > 0 then     //Distribui o pagamento em DINHEIRO
  begin
    if tiraTroco >= valorDinheiro then
      dinheiroParcial := valorDinheiro
    else
      dinheiroParcial := valorDinheiro - tiraTroco;

     tiraTroco := 0;
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
            ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                  cdsDocumentos.Post;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+ valorPagoAtualDN;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_ENTRADA.AsFloat:= valorPagoAtualDN;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat :=valorPago;
              cdsDocumentosREC_DINHEIRO.AsFloat := ParamByName('REC_DINHEIRO').AsFloat;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            Prepare;
            ExecQuery;
            DM.transPricipal.CommitRetaining;
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

  end;

  cdsDocumentos.First;

  if valorCartao > 0 then //Distribui o pagamento em CART�O
  begin
    cartaoParcial := valorCartao;  //TERMINAR CART�O E TERMINAR DE VER A QUEST�O DO JUROS
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                  cdsDocumentos.Post;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCT;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
            ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idreceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_ENTRADA.AsFloat:= 0;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            DM.transPricipal.CommitRetaining;
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

      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCH;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
            ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_ENTRADA.AsFloat:= 0;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            DM.transPricipal.CommitRetaining;
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
  end;

   cdsDocumentos.First;

  if valorParcelar > 0 then //Distribui o pagamento em CHEQUE
  begin
      parcelarParcial := valorCheque;

      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                if (parcelarParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 parcelarParcial:=roundTo(parcelarParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-parcelarParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+parcelarParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+ cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    parcelarParcial:=0;
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
                  if (parcelarParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                  begin
                   ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   parcelarParcial:=roundTo(parcelarParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentos.Edit;
                   cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                   cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                   cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentos.Post;
                   ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                    begin
                      cdsDocumentos.Edit;
                      cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-parcelarParcial;
                      cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+parcelarParcial;
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO.AsFloat:=roundTo(cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                      cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                      cdsDocumentos.Post;
                      parcelarParcial :=0;
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
            end;

            if (parcelarParcial >= valorPagar) then
            begin
              valorPagoAtualCH := valorPagar;
              valorPagoAtual := valorPagoAtualCH + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              parcelarParcial := RoundTo(parcelarParcial - valorPagar, -2);
              ParamByName('POSICAO').AsString := 'PG';
              posicao:='PG';
            end
            else
            begin
              valorPagoAtualCH := parcelarParcial;
              valorPagoAtual := valorPagoAtualCH + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(parcelarParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              parcelarParcial := 0;
              ParamByName('POSICAO').AsString := 'AB';
              posicao:='AB';
            end;

            if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CH') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
              moeda := 'RA'
            else
              moeda := 'CH';

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCH;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;

            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_ENTRADA.AsFloat:= 0;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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

            with cdsRec_Pag do
            begin
              Append;
              cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'NT';
              cdsRec_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
              cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
              Post;
            end;

            Prepare;
            ExecQuery;
            DM.transPricipal.CommitRetaining;
            VerificaContaQuitada(6);

          end;
        end;

        if parcelarParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;
      end;
  end;

  // cdsDocumentos.First;

  // if valorParcelar > 0 then //Distribui o pagamento em NOTA
  // begin
  // parcelarParcial := valorParcelar;
  //
  // while not(cdsDocumentos.Eof) do
  // begin
  // if cdsDocumentosPOSICAO.AsString <> 'PG' then
  // begin
  // with qryEditCntReceber_Item do
  // begin
  // Close;
  //
  // ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;
  //
  // if (parcelarParcial >= cdsDocumentosVALOR_DOC.AsFloat - cdsDocumentosVALOR_PAGO.AsFloat) then
  // begin
  // ParamByName('VALOR_PAGO').AsFloat := cdsDocumentosVALOR_DOC.AsFloat;
  // parcelarParcial := parcelarParcial - (cdsDocumentosVALOR_DOC.AsFloat - cdsDocumentosVALOR_PAGO.AsFloat);
  // end
  // else
  // begin
  // ParamByName('VALOR_PAGO').AsFloat := parcelarParcial + cdsDocumentosVALOR_PAGO.AsFloat;
  // parcelarParcial := 0;
  // end;
  //
  // if (ParamByName('VALOR_PAGO').AsFloat = cdsDocumentosVALOR_DOC.AsFloat) then
  // posicao := 'PG'
  // else
  // posicao := 'AB';
  //
  // if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'TR') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
  // moeda := 'RA'
  // else
  // moeda := 'TR';
  //
  // ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
  // ParamByName('POSICAO').AsString := posicao;
  //
  // ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
  // ParamByName('REC_DESC_ACRE').AsFloat := des_acreParcial;
  //
  // ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
  // ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
  //
  // with cdsDocumentos do
  // begin
  // Edit;
  // cdsDocumentosVALOR_PAGO.AsFloat := ParamByName('VALOR_PAGO').AsFloat;
  // cdsDocumentosPOSICAO.AsString := posicao;
  // cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
  // Post;
  // end;

  // with cdsRec_Pag do
  // begin
  // Append;
  // //  cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'CH';
  // cdsRec_PagIDRECEBER.AsInteger := cdsDocumentosIdDoc.AsInteger;
  // cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
  // Post;
  // end;
  //
  // Prepare;
  // ExecQuery;
  //
  // end;
  // end;
  //
  // if parcelarParcial <= 0 then
  // begin
  // Break;
  // end
  // else
  // cdsDocumentos.Next;
  //
  // end;
  // end;
  DM.conexao.CommitRetaining;
  cdsDocumentos.First;
  while not(cdsDocumentos.Eof) do
  begin
    ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
    valorJurosRestante:= valorJurosRestante+cdsDocumentosJUROS_RESTANTE.AsFloat;
    cdsDocumentos.Next;
  end;
end;

procedure TfrmPagIncReceber.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar o Recebimento?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
    idYes:
      begin
        ModalResult := mrCancel;
      end;
  end;
end;

procedure TfrmPagIncReceber.btnGerarParcelasClick(Sender: TObject);
var
  parcelas: Integer;
  utils: TUtils;
begin
  cdsCntReceber_Item.EmptyDataSet;
  cdsChequeCntReceber.EmptyDataSet;
  parcelas := 0;

  if valorCheque > 0 then
  begin
    if idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger then
    begin
      Try
        frmPesqCliente := TfrmPesqCliente.Create(nil);
        frmPesqCliente.ShowModal;
      Finally
        if frmPesqCliente.ModalResult = mrOk then
        begin
          idCliente := frmPesqCliente.fdsClientesID.AsInteger;
          edtCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
          edtDescricao.SetFocus;
        end;
        frmPesqCliente.Free;
      End;
    end;
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
        nAgencia := frmLancDadosBasicCheque.edtAgencia.Text;
        nConta := frmLancDadosBasicCheque.edtConta.Text;
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

  if (modo = 'Inclus�o') or (modo ='Renegociar') then
  begin
    if valorNota > 0 then
    begin
      parcelas := StrToInt(edtParcelasNT.Text);
      GeraParcelaNota('NT', parcelas, valorNota);
    end;
  end;

  gerouParcelas := True;
  btnReceber.SetFocus;
end;

procedure TfrmPagIncReceber.btnPesqClienteClick(Sender: TObject);
begin
  Try
    frmPesqCliente := TfrmPesqCliente.Create(nil);
    frmPesqCliente.ShowModal;
  Finally
    if frmPesqCliente.ModalResult = mrOk then
    begin
      idCliente := frmPesqCliente.fdsClientesID.AsInteger;
      edtCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
      edtDescricao.SetFocus;
    end;
    frmPesqCliente.Free;
  End;
end;

procedure TfrmPagIncReceber.btnReceberClick(Sender: TObject);
begin
  if ((valorCheque > 0) or (valorParcelar > 0)) and
    ((idCliente = DM.fdsConfigIDCLIENTEPADRAO.AsInteger) or (idCliente = 0))
  then
  begin
    Application.MessageBox
      ('Informe um cliente para parcelar a conta ou informe outra modea para a venda.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    btnPesqCliente.SetFocus;
    Abort;
  end;

  if (modo = 'Pagamento') then
  begin
    if (valorDinheiro = 0) and (valorCheque = 0) and (valorCartao = 0) and
      (valorCredito = 0) then
    begin
      Application.MessageBox('Informe o valor de pagamento em uma das moedas.',
        'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      edtDinheiro.SetFocus;
      Abort;
    end;
  end
  else
  begin
    if ((valorCheque > 0) or (valorParcelar > 0) or (valorCartao > 0)) and
      (gerouParcelas = False) then
    begin
      Application.MessageBox('Primeiro gere as parcelas a receber.', 'Aten��o',
        MB_OK + MB_ICONEXCLAMATION);
      btnGerarParcelas.SetFocus;
      Abort;
    end;
  end;

  cdsChequeCntReceber.First;
  if cdsChequeCntReceber.RecordCount > 0 then
  begin
    while not(cdsChequeCntReceber.Eof) do
    begin
      if Trim(cdsChequeCntReceberNUM_CHEQUE.AsString) = '' then
      begin
        Application.MessageBox('Voc� deve preencher o n� de todos os cheques.',
          'Aten��o', MB_OK + MB_ICONEXCLAMATION);
        Abort;
      end
      else
        cdsChequeCntReceber.Next;
    end;
  end;
  if (modo = 'Renegociar') then
  begin
   //BaixarDocumento;
    Renegociar;
  end;

  if (modo = 'Pagamento') then
  begin
    BaixarDocumento;
    VerificaTrocoRec;
  end;

  GerarDocumentos;
  AbateCredtioConta;

  if (modo = 'Pagamento') then
    Application.MessageBox('Documento Baixado Com Sucesso!',
      'Confirma��o de Baixa', MB_OK + MB_ICONEXCLAMATION);

  ModalResult := mrOk;
end;

procedure TfrmPagIncReceber.CalculaValorParcelar;
var
  utils: TUtils;
begin
  if modo <>'Pagamento' then
  begin
    valorNota := RoundTo(valorDoc - valorDinheiro - valorCheque -
      valorCartao, -2);

    if cbxDescAcre.Value = 'D' then
      valorNota := valorNota - valorDesconto
    else
      valorNota := valorNota + valorDesconto;

    if valorNota < 0 then
      valorNota := 0;

    edtNota.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorNota));
    gerouParcelas := False;

  end;

end;

procedure TfrmPagIncReceber.edtCartaoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCartao.Text := utils.RetiraMascaraDinheiro(edtCartao.Text);
  edtCartao.SelectAll;
end;

procedure TfrmPagIncReceber.edtCartaoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtCartao.Text := FloatToStr(utils.ValidaInteiroFloat(edtCartao.Text, 'F'));
  valorCartao := StrToFloat(edtCartao.Text);
  edtCartao.Text := utils.AdicionaMascaraDinheiro(edtCartao.Text);
  CalculaValorParcelar;
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
        CalculaValorParcelar;
        edtCartao.SetFocus;
      end;
      frmTipoCartaoCredito.Free;
    End;
  end
  else
    tipoCartao := EmptyStr;
end;

procedure TfrmPagIncReceber.edtChequeEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCheque.Text := utils.RetiraMascaraDinheiro(edtCheque.Text);
  edtCheque.SelectAll;
end;

procedure TfrmPagIncReceber.edtChequeExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtCheque.Text := FloatToStr(utils.ValidaInteiroFloat(edtCheque.Text, 'F'));
  valorCheque := StrToFloat(edtCheque.Text);
  edtCheque.Text := utils.AdicionaMascaraDinheiro(edtCheque.Text);
  CalculaValorParcelar;
end;

procedure TfrmPagIncReceber.edtCreditoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCredito.Text := utils.RetiraMascaraDinheiro(edtCredito.Text);
  edtCredito.SelectAll;
end;

procedure TfrmPagIncReceber.edtCreditoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtCredito.Text := FloatToStr(utils.ValidaInteiroFloat(edtCredito.Text, 'F'));
  valorCredito := StrToFloat(edtCredito.Text);

  if valorCredito > creditoTotal then
  begin
    Application.MessageBox
      ('Cr�dito informado � maior que o cr�dito em conta do cliente.',
      'Aten��o', MB_OK + MB_ICONINFORMATION);
    valorCredito := creditoTotal;
    edtCredito.Text := FloatToStr(valorCredito);
    edtCredito.SetFocus;
  end
  else
    edtCredito.Text := utils.AdicionaMascaraDinheiro(edtCredito.Text);
end;

procedure TfrmPagIncReceber.edtDescontoEnter(Sender: TObject);
begin
  edtDesconto.SelectAll;
end;

procedure TfrmPagIncReceber.edtDescontoExit(Sender: TObject);
var
  utils: TUtils;
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

  CalculaValorParcelar;
end;

procedure TfrmPagIncReceber.edtDescricaoExit(Sender: TObject);
begin
  edtDesconto.SetFocus;
end;

procedure TfrmPagIncReceber.edtDinheiroEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtDinheiro.Text := utils.RetiraMascaraDinheiro(edtDinheiro.Text);
  edtDinheiro.SelectAll;
end;

procedure TfrmPagIncReceber.edtDinheiroExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtDinheiro.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtDinheiro.Text, 'F'));
  valorDinheiro := StrToFloat(edtDinheiro.Text);
  edtDinheiro.Text := utils.AdicionaMascaraDinheiro(edtDinheiro.Text);
  CalculaValorParcelar;
end;

procedure TfrmPagIncReceber.edtJurosTotalExit(Sender: TObject);
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
      end
      else
      begin
       valorAcrescimo:=RoundTo(valorDoc * valorAcrescimo / 100, -2);
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

procedure TfrmPagIncReceber.edtNotaEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtNota.Text := utils.RetiraMascaraDinheiro(edtNota.Text);
  edtNota.SelectAll;
end;

procedure TfrmPagIncReceber.edtNotaExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtNota.Text := FloatToStr(utils.ValidaInteiroFloat(edtNota.Text, 'F'));
  valorNota := StrToFloat(edtNota.Text);
  edtNota.Text := utils.AdicionaMascaraDinheiro(edtNota.Text);
end;

procedure TfrmPagIncReceber.edtValorDocEnter(Sender: TObject);
var
  utils: TUtils;
begin
  if edtValorDoc.ReadOnly = False then
  begin
    edtValorDoc.Text := utils.RetiraMascaraDinheiro(edtValorDoc.Text);
    edtValorDoc.SelectAll;
  end;
end;

procedure TfrmPagIncReceber.edtValorDocExit(Sender: TObject);
var
  utils: TUtils;
begin
  if (modo = 'Inclus�o') then
  begin
    edtValorDoc.Text :=
      FloatToStr(utils.ValidaInteiroFloat(edtValorDoc.Text, 'F'));
    valorDoc := StrToFloat(edtValorDoc.Text);

    if (valorDoc <= 0) then
    begin
      Application.MessageBox('Informe um valor para o Documento.', 'Aten��o',
        MB_OK + MB_ICONEXCLAMATION);
      edtValorDoc.SetFocus;
      Abort;
    end;

    edtValorDoc.Text := utils.AdicionaMascaraDinheiro(edtValorDoc.Text);
    btnPesqCliente.SetFocus;
    CalculaValorParcelar;
  end;
end;

procedure TfrmPagIncReceber.FormCreate(Sender: TObject);
begin
  cdsDocumentos.CreateDataSet;
  cdsDocumentos.Open;

  cdsCntReceber_Item.CreateDataSet;
  cdsCntReceber_Item.Open;

  cdsChequeCntReceber.CreateDataSet;
  cdsChequeCntReceber.Open;

  cdsRec_Pag.CreateDataSet;
  cdsRec_Pag.Open;

  fdsReceber_Pagamento.Open;
end;

procedure TfrmPagIncReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPagIncReceber.FormShow(Sender: TObject);
var
  utils: TUtils;
begin
  dtpPagamento.Date := Now;
  edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
  edtJurosTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorJuros));
  edtDesconto.SetFocus;

  valorDinheiro := 0;
  valorDesconto := 0;
  valorCheque := 0;
  valorCartao := 0;

  if creditoTotal > 0 then
  begin
    lblVlrCredito.Visible := True;
    lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00',
      creditoTotal);
  end;

  if (modo = 'Inclus�o') then
  begin
    frmPagIncReceber.Caption := 'Inclus�o de Nota de Cliente';
    btnPesqCliente.Enabled := True;
    edtValorDoc.ReadOnly := False;
    btnReceber.Caption := '&Finalizar';
    edtNota.Enabled := True;
    edtParcelasNT.Enabled := True;
    edtCredito.Enabled := False;
    edtDescricao.Enabled := True;
    edtValorDoc.SetFocus;
  end;
  if (modo = 'Renegociar') then
  begin
   frmPagIncReceber.Caption := 'Renegoci��o de Nota(s) de Cliente';
   //edtDesconto.ReadOnly := true;
   edtNota.Enabled := True;
   edtCredito.Enabled:=false;
  end;

end;

procedure TfrmPagIncReceber.GeraParcelaCheque(prefixo: string;
  parcelas: Integer; vlrParcelar: Double);
var
  i: Integer;
  parcelasTemp: string[3];
  valorParcela: Double;
  dataParcela: TDateTime;
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
    cdsChequeCntReceberAGENCIA.AsString := nAgencia;
    cdsChequeCntReceberCONTA.AsString := nConta;
    cdsChequeCntReceberNUM_BANCO.AsInteger := nBanco;
    dataParcela := dataParcela + 30;
    cdsChequeCntReceberDT_VENCIMENTO.AsDateTime := dataParcela;
    cdsChequeCntReceberPARCELA.AsString := utils.FormataParcelas(IntToStr(i)) +
      parcelasTemp;

    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas));
    // joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsChequeCntReceberVALOR.AsFloat := valorParcela;

    cdsChequeCntReceber.Post;

  end;
end;

procedure TfrmPagIncReceber.GeraParcelaNota(prefixo: string; parcelas: Integer;
  vlrParcelar: Double);
var
  i: Integer;
  parcelasTemp: string[3];
  valorParcela: Double;
  dataParcela: TDateTime;
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
    cdsCntReceber_ItemPARCELA.AsString := utils.FormataParcelas(IntToStr(i)) +
      parcelasTemp;
    cdsCntReceber_ItemPREFIXO.AsString := prefixo;
    dataParcela := dataParcela + 30;
    cdsCntReceber_ItemDT_VENC.AsDateTime := dataParcela;
    cdsCntReceber_ItemHISTORICO.AsString := edtDescricao.Text;
    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas));
    // joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsCntReceber_ItemVALOR.AsFloat := valorParcela;

    cdsCntReceber_Item.Post;
  end;
end;

procedure TfrmPagIncReceber.GerarDocumentos;
var
  prefixoTemp: string[2];
  idReceberItem: Integer;
begin

  cdsChequeCntReceber.First;

  if cdsChequeCntReceber.RecordCount > 0 then
  begin
    GravaCntReceber(valorCheque, edtParcelasCH.Text, 4);
    idRecCH := idReceber;
    while not(cdsChequeCntReceber.Eof) do
    begin
      GravaCntReceberItem('CH', cdsChequeCntReceberPARCELA.AsString,
        cdsChequeCntReceberDT_VENCIMENTO.AsDateTime,
        cdsChequeCntReceberVALOR.AsFloat);
      idReceberItem := RetornaCntReceberItemID
        (cdsChequeCntReceberIDFILIAL.AsInteger,
        cdsChequeCntReceberVALOR.AsFloat,
        cdsChequeCntReceberDT_VENCIMENTO.AsDateTime);

      qryInsertChequeCntReceber.Close;
      qryInsertChequeCntReceber.ParamByName('IDRECEBER_ITEM').AsString :=
        IntToStr(idReceberItem);
      qryInsertChequeCntReceber.ParamByName('IDFILIAL').AsInteger :=
        cdsChequeCntReceberIDFILIAL.AsInteger;
      qryInsertChequeCntReceber.ParamByName('IDBANCO').AsString :=
        IntToStr(idBanco);
      qryInsertChequeCntReceber.ParamByName('AGENCIA').AsString := nAgencia;
      qryInsertChequeCntReceber.ParamByName('CONTA').AsString := nConta;
      qryInsertChequeCntReceber.ParamByName('NUM_CHEQUE').AsString :=
        cdsChequeCntReceberNUM_CHEQUE.AsString;
      qryInsertChequeCntReceber.ParamByName('DT_EMISSAO').AsDateTime := Now;
      qryInsertChequeCntReceber.ParamByName('EMITENTE').AsString :=
        cdsChequeCntReceberEMITENTE.AsString;
      qryInsertChequeCntReceber.ParamByName('VALOR').AsFloat :=
        cdsChequeCntReceberVALOR.AsFloat;
      qryInsertChequeCntReceber.ParamByName('DT_VENCIMENTO').AsDateTime :=
        cdsChequeCntReceberDT_VENCIMENTO.AsDateTime;
      qryInsertChequeCntReceber.Prepare;
      qryInsertChequeCntReceber.ExecQuery;

      cdsChequeCntReceber.Next;
    end;

    cdsRec_Pag.First;

    while not(cdsRec_Pag.Eof) do
    begin
      if cdsRec_PagPREFIXO_PAGAMENTO.AsString = 'CH' then // vitor
      begin
        fdsReceber_Pagamento.Append;
        fdsReceber_PagamentoIDCONTA.AsInteger := cdsRec_PagIDCONTA.AsInteger;
        fdsReceber_PagamentoIDPAGAMENTO.AsInteger := idReceber;
        fdsReceber_PagamentoIDFILIAL.AsInteger := cdsRec_PagIDFILIAL.AsInteger;
        fdsReceber_Pagamento.Post;
      end;
      cdsRec_Pag.Next;
    end;

    DM.conexao.CommitRetaining;
  end;

  cdsCntReceber_Item.First;
  prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;

  while not(cdsCntReceber_Item.Eof) do
  Begin
    if prefixoTemp = 'CD' then
    begin
      GravaCntReceber(valorCartao, edtParcelasCT.Text, 2);
      idRecCT := idReceber;
      while (prefixoTemp = 'CD') and not(cdsCntReceber_Item.Eof) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString,
          cdsCntReceber_ItemDT_VENC.AsDateTime,
          cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
    end;

    if prefixoTemp = 'CT' then
    begin
      GravaCntReceber(valorCartao, edtParcelasCT.Text, 2);
      idRecCT := idReceber;
      while (prefixoTemp = 'CT') and not(cdsCntReceber_Item.Eof) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString,
          cdsCntReceber_ItemDT_VENC.AsDateTime,
          cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
    end;

    if (prefixoTemp = 'NT') then
    begin
      GravaCntReceber(valorNota, edtParcelasNT.Text, 6);
      idRecNT := idReceber;
      while (prefixoTemp = 'NT') and not(cdsCntReceber_Item.Eof) do
      begin
        GravaCntReceberItem(prefixoTemp, cdsCntReceber_ItemPARCELA.AsString,
          cdsCntReceber_ItemDT_VENC.AsDateTime,
          cdsCntReceber_ItemVALOR.AsFloat);
        cdsCntReceber_Item.Next;
        prefixoTemp := cdsCntReceber_ItemPREFIXO.AsString;
      end;
      //
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
    DM.conexao.CommitRetaining;

  End;
end;

procedure TfrmPagIncReceber.GravaCntReceber(valorTotal: Double;
  parcelasTotal: string; idFormaPag: Integer);
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
  fdsCntReceberIDVENDA.AsInteger := 0;
  fdsCntReceberTIPO_VENDA.AsString := 'TR';
  fdsCntReceberTOT_PARCELA.AsString := utils.FormataParcelas(parcelasTotal);
  fdsCntReceberHISTORICO.AsString := edtDescricao.Text;

  fdsCntReceber.Post;
  DM.conexao.CommitRetaining;

  //valorDinheiro := 0;
end;

procedure TfrmPagIncReceber.GravaCntReceberItem(prefixo, parcela: string;
  dtVenc: TDate; valor: Double);
begin
  qryInsertCntReceber_Item.Close;

  qryInsertCntReceber_Item.ParamByName('POSICAO').AsString := 'AB';
  qryInsertCntReceber_Item.ParamByName('PREFIXO').AsString := prefixo;
  qryInsertCntReceber_Item.ParamByName('DT_VENC').AsDateTime := dtVenc;
  qryInsertCntReceber_Item.ParamByName('VALOR').AsFloat := valor;
  qryInsertCntReceber_Item.ParamByName('PARCELA').AsString := parcela;
  qryInsertCntReceber_Item.ParamByName('IDRECEBER').AsInteger := idReceber;
  qryInsertCntReceber_Item.ParamByName('IDFILIAL').AsInteger :=
    DM.fdsConfigIDFILIAL.AsInteger;
  qryInsertCntReceber_Item.ParamByName('HISTORICO').AsString := edtDescricao.Text;

  qryInsertCntReceber_Item.Prepare;
  qryInsertCntReceber_Item.ExecQuery;

  DM.conexao.CommitRetaining;
end;

procedure TfrmPagIncReceber.Renegociar;
var
  utils: TUtils;
  descontoParcial, tempValorDesconto,tempValorAcrescimo,AcrescimoParcial, dinheiroParcial, cartaoParcial,
    chequeParcial: Double;
  parcelarParcial, valorPago, valorPagar, valorTotNota, creditoParcial: Double;
  moeda, posicao: string[2];
  foraDesconto: Integer;
  valorPagoAtualDN,valorPagoAtualNT,valorPagoAtualCT,valorPagoAtualCH,valorPagoAtual, descDifeArred,tiraTroco,somaJuros,sum: Double;
begin
  descDifeArred := 0;
  valorPago := 0;
  foraDesconto := 0;
  troco:=0;
  ValorJurosPago:=0;
  valorPagoAtualDN:=0;
  valorPagoAtualNT:=0;
  valorPagoAtualCT:=0;
  valorPagoAtualCH:=0;
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

  if valorDinheiro > 0 then     //Distribui o pagamento em DINHEIRO
  begin
    if tiraTroco >= valorDinheiro then
      dinheiroParcial := valorDinheiro
    else
      dinheiroParcial := valorDinheiro - tiraTroco;

     tiraTroco := 0;
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
            ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                  cdsDocumentos.Post;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+ valorPagoAtualDN;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('VLR_RENEGOCIADO').AsFloat := 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_RENEGOCIADO.AsFloat:=0;
              cdsDocumentosVLR_ENTRADA.AsFloat:= cdsDocumentosVLR_ENTRADA.AsFloat + somaJuros + valorPagoAtualDN;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat :=valorPago;
              cdsDocumentosREC_DINHEIRO.AsFloat := ParamByName('REC_DINHEIRO').AsFloat;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            Prepare;
            ExecQuery;
            DM.transPricipal.CommitRetaining;
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

      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCH;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
            ParamByName('VLR_RENEGOCIADO').AsFloat:= 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_RENEGOCIADO.AsFloat:=0;
              cdsDocumentosVLR_ENTRADA.AsFloat:= cdsDocumentosVLR_ENTRADA.AsFloat + somaJuros+valorPagoAtualCH;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            DM.transPricipal.CommitRetaining;
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
  end;

  cdsDocumentos.First;

  if valorCartao > 0 then //Distribui o pagamento em CART�O
  begin
    cartaoParcial := valorCartao;  //TERMINAR CART�O E TERMINAR DE VER A QUEST�O DO JUROS
      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                  cdsDocumentos.Post;
                end;
                ParamByName('REC_DESC_ACRE').AsInteger := 2;
                ParamByName('DESCONTO').AsFloat :=0;
              end;
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

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualCT;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
            ParamByName('VLR_RENEGOCIADO').AsFloat := 0;
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idreceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_RENEGOCIADO.AsFloat:=0;
              cdsDocumentosVLR_ENTRADA.AsFloat:= RoundTo(cdsDocumentosVLR_ENTRADA.AsFloat + somaJuros+valorPagoAtualCT,-2);
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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
            DM.transPricipal.CommitRetaining;
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
  end;


   cdsDocumentos.First;

  if valorNota > 0 then //Distribui o pagamento em NOTA
  begin
      parcelarParcial := valorNota;

      while not(cdsDocumentos.Eof) do
      begin
        if cdsDocumentosPOSICAO.AsString <> 'PG' then
        begin
          with qryEditCntReceber_Item do
          begin
            Close;
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

            if valorPagar < 0 then
            begin
              if cbxDescAcre.Value = 'D' then
              begin
                descontoParcial := valorPagar + descontoParcial;
                ParamByName('DESCONTO').AsFloat := descontoParcial;
                valorPagar := RoundTo(valorTotNota - descontoParcial - cdsDocumentosVALOR_PAGO.AsFloat, -2);
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
                if (parcelarParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                begin
                 ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                 parcelarParcial:=roundTo(parcelarParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentos.Edit;
                 cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                 cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                 cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                 cdsDocumentosVALOR_PAGO.AsFloat:= cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                 cdsDocumentos.Post;
                 ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                end
                else
                begin
                  if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                  begin
                    cdsDocumentos.Edit;
                    cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-parcelarParcial;
                    cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+parcelarParcial;
                    ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+ cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                    cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                    cdsDocumentos.Post;
                    parcelarParcial:=0;
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
                  if (parcelarParcial >=cdsDocumentosJUROS_RESTANTE.AsFloat) and (cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S') then
                  begin
                   ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   somaJuros:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                   parcelarParcial:=roundTo(parcelarParcial-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   valorPagar:=roundTo(valorPagar-cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentos.Edit;
                   cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='N';
                   cdsDocumentosVLR_JUROS_PAGO.AsFloat:=roundTo(cdsDocumentosVLR_JUROS_PAGO.AsFloat+cdsDocumentosJUROS_RESTANTE.AsFloat,-2);
                   cdsDocumentosJUROS_RESTANTE.AsFloat:=0;
                   cdsDocumentosVALOR_PAGO.AsFloat:=cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                   cdsDocumentos.Post;
                   ParamByName('VLR_JUROS_RESTANTE').AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat;
                  end
                  else
                  begin
                    if cdsDocumentosTEMP_JUROS_RESTANTE.AsString='S' then
                    begin
                      cdsDocumentos.Edit;
                      cdsDocumentosJUROS_RESTANTE.AsFloat:=cdsDocumentosJUROS_RESTANTE.AsFloat-parcelarParcial;
                      cdsDocumentosVLR_JUROS_PAGO.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat+parcelarParcial;
                      ParamByName('VALOR_JUROS_PAGO').AsFloat :=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      somaJuros:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosVALOR_PAGO.AsFloat:=roundTo(cdsDocumentosVALOR_PAGO.AsFloat+cdsDocumentosVLR_JUROS_PAGO.AsFloat,-2);
                      cdsDocumentosVALOR_PAGO_ATUAL.AsFloat:=cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                      cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
                      cdsDocumentos.Post;
                      parcelarParcial :=0;
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
            end;

            if (parcelarParcial >= valorPagar) then
            begin
              valorPagoAtualNT := valorPagar;
              valorPagoAtual := valorPagoAtualNT + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              parcelarParcial := RoundTo(parcelarParcial - valorPagar, -2);
              ParamByName('POSICAO').AsString := 'RN';
              posicao:='RN';
            end
            else
            begin
              valorPagoAtualNT := parcelarParcial;
              valorPagoAtual := valorPagoAtualNT + cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
              valorPago := RoundTo(parcelarParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
              parcelarParcial := 0;
              ParamByName('POSICAO').AsString := 'RN';
              posicao:='RN';
            end;

            if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'NT') and (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
              moeda := 'RA'
            else
              moeda := 'NT';

            ParamByName('VALOR_PAGO').AsFloat := somaJuros+valorPagoAtualNT;
            ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

            ParamByName('REC_DINHEIRO').AsFloat := cdsDocumentosREC_DINHEIRO.AsFloat;
            ParamByName('VLR_RENEGOCIADO').AsFloat := RoundTo(somaJuros + valorPagoAtualNT,-2);
            ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
            ParamByName('IDFILIAL').AsInteger := cdsDocumentosIDFILIAL.AsInteger;
            idReceber := cdsDocumentosIDRECEBER.AsInteger;

            with cdsDocumentos do
            begin
              Edit;
              cdsDocumentosVLR_RENEGOCIADO.AsFloat:= RoundTo(somaJuros+valorPagoAtualNT,-2);
              cdsDocumentosVLR_ENTRADA.AsFloat:=cdsDocumentosVLR_ENTRADA.AsFloat;
              cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := valorPagoAtual;
              cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
              cdsDocumentosPOSICAO.AsString := posicao;
              cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;

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

            with cdsRec_Pag do
            begin
              Append;
              cdsRec_PagPREFIXO_PAGAMENTO.AsString := 'NT';
              cdsRec_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
              cdsRec_PagIDFILIAL.AsInteger := cdsDocumentosIDFILIAL.AsInteger;
              Post;
            end;

            Prepare;
            ExecQuery;
            DM.transPricipal.CommitRetaining;
            VerificaContaQuitada(6);

          end;
        end;

        if parcelarParcial <= 0 then
        begin
          Break;
        end
        else
          cdsDocumentos.Next;
      end;
  end;

  DM.conexao.CommitRetaining;
  cdsDocumentos.First;
  while not(cdsDocumentos.Eof) do
  begin
    ValorJurosPago:=ValorJurosPago+cdsDocumentosVLR_JUROS_PAGO.AsFloat;
    valorJurosRestante:= valorJurosRestante+cdsDocumentosJUROS_RESTANTE.AsFloat;
    cdsDocumentos.Next;
  end;
end;

function TfrmPagIncReceber.RetornaCntReceberItemID(idFilial: Integer;
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

procedure TfrmPagIncReceber.RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if cdsChequeCntReceber.State in [dsEdit] then
    begin
      cdsChequeCntReceber.Post;
    end;
  end;
end;

procedure TfrmPagIncReceber.RzGroupBox1CheckBoxClick(Sender: TObject);
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

      {if uVerificaPermicao.Verifica('NAO_USAR_JUROS_RECEBER')= false then
      begin
        TfrmMenssagens.Mensagem('Desculpe, Usu�rio n�o possui permiss�o para n�o usar o juros aplicado as parcelas.', 'Sem permiss�o.','I',[mbOK]);
        RzGroupBox1.Checked:=true;
        Abort;
      end}
    end;
end;

procedure TfrmPagIncReceber.VerificaContaQuitada(idFormaPag: Integer);
var
  tempVlrPago: Double;
begin
  with qryConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CNT_RECEBER_ITEM WHERE IDRECEBER = :IDRECEBER AND IDFILIAL = :IDFILIAL AND POSICAO = '
      + QuotedStr('AB'));
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
      SQL.Add('UPDATE CNT_RECEBER SET POSICAO = :POSICAO, IDFORMA_PAG = ' +
        IntToStr(idFormaPag) + ' WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
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

end;

procedure TfrmPagIncReceber.VerificaTipoConta;
var
  sqlConta, nomeCampoId, nomeCampoIdMov: string;
  nomeCampoPai, sqlTipo: string;

begin
  // if tipo = 'Pagar' then
  // begin
  // sqlConta := 'CNT_PAGAR';
  // nomeCampoPai := 'IDPAGAR';
  // nomeCampoId := 'IDFORNECEDOR';
  // nomeCampoIdMov := 'IDCOMPRA';
  // sqlTipo := 'PAG';
  // end
  // else
  // begin
  // sqlConta := 'CNT_RECEBER';
  // nomeCampoPai := 'IDRECEBER';
  // nomeCampoId := 'IDCLIENTE';
  // nomeCampoIdMov := 'IDVENDA';
  // sqlTipo := 'REC';
  // end;
  //
  // with fdsConta do
  // begin
  // Close;
  // AutoUpdateOptions.GeneratorName := 'GEN_ID_' + sqlConta;
  // AutoUpdateOptions.UpdateTableName := sqlConta;
  // InsertSQL.Clear;
  // InsertSQL.Add('INSERT INTO ' + sqlConta);
  // InsertSQL.Add(' (ID, IDFILIAL, DT_INC, DT_ALT, POSICAO, PREFIXO, REFERENCIA, ' + nomeCampoId + ', ');
  // InsertSQL.Add('ACRESCIMO, DESCONTO, VALOR, VALOR_PAGO, IDPORTADOR, HISTORICO, IDFORMA_PAG, ' + nomeCampoIdMov + ', ');
  // InsertSQL.Add('TOT_PARCELA, PARCELAS_PG, DINHEIRO, ENVIADO_WEB');
  //
  // if tipo = 'Pagar' then
  // begin
  // InsertSQL.Add(', DESCRICAO');
  // end
  // else
  // begin
  // InsertSQL.Add(', TIPO_VENDA');
  // end;
  //
  // InsertSQL.Add(') VALUES(:ID, :IDFILIAL, :DT_INC, :DT_ALT, :POSICAO, :PREFIXO, :REFERENCIA, :IDCLIENTE, ');
  // InsertSQL.Add(':ACRESCIMO, :DESCONTO, :VALOR, :VALOR_PAGO, :IDPORTADOR, :HISTORICO, :IDFORMA_PAG, :IDVENDA, ');
  // InsertSQL.Add(':TOT_PARCELA, :PARCELAS_PG, :DINHEIRO, :ENVIADO_WEB');
  //
  // if tipo = 'Pagar' then
  // begin
  // InsertSQL.Add(', :DESCRICAO)');
  // end
  // else
  // begin
  // InsertSQL.Add(', :TIPO_VENDA)');
  // end;
  //
  // Prepare;
  // end;
  //
  // with qryInsertContaItem do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('INSERT INTO ' + sqlConta + '_ITEM (' + nomeCampoPai + ', IDFILIAL, POSICAO, PREFIXO, DT_VENC, VALOR, PARCELA ) ');
  // SQL.Add('VALUES ( :IDCONTA, :IDFILIAL, :POSICAO, :PREFIXO, :DT_VENC, :VALOR, :PARCELA )');
  // Prepare;
  // end;
  //
  // with qryInsertChequeConta do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('INSERT INTO ' + sqlConta + '_CHEQUE ( ' + nomeCampoPai + '_ITEM, IDFILIAL, IDBANCO, AGENCIA, CONTA, NUM_CHEQUE, ');
  // SQL.Add('DT_EMISSAO, EMITENTE, VALOR, DT_VENCIMENTO) VALUES (:IDCONTA_ITEM, :IDFILIAL, :IDBANCO, :AGENCIA, ');
  // SQL.Add(':CONTA, :NUM_CHEQUE, :DT_EMISSAO, :EMITENTE, :VALOR, :DT_VENCIMENTO )');
  // Prepare;
  // end;
  //
  // with qryEditContaItem do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE ' + sqlConta + '_ITEM SET POSICAO = :POSICAO, DT_PAG = :DT_PAG, VALOR_PAGO = :VALOR_PAGO, ');
  // SQL.Add('PAGAMENTO_MOEDA = :PAGAMENTO_MOEDA, ' + sqlTipo + '_DESC_ACRE = :' + sqlTipo + '_DESC_ACRE, ' + sqlTipo + '_DINHEIRO = :' + sqlTipo + '_DINHEIRO ');
  // SQL.Add('WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
  // Prepare;
  // end;
  //
  // with qryEditChequeConta do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE ' + sqlConta + '_CHEQUE SET IDBANCO = :IDBANCO, AGENCIA = :AGENCIA, CONTA = :CONTA, ');
  // SQL.Add('NUM_CHEQUE = :NUM_CHEQUE, DT_EMISSAO = :DT_EMISSAO, EMITENTE = :EMITENTE, VALOR = :VALOR, ');
  // SQL.Add('DT_VENCIMENTO = :DT_VENCIMENTO WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
  // Prepare;
  // end;
  //
  // with qryRetornaIDContaItem do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('SELECT ID FROM ' + sqlConta + '_ITEM WHERE VALOR = :VALOR ');
  // SQL.Add('AND DT_VENC = :DT_VENC AND ' + nomeCampoPai + ' = :IDCONTA AND IDFILIAL = :IDFILIAL');
  // Prepare;
  // end;
end;

procedure TfrmPagIncReceber.VerificaTrocoRec;
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
