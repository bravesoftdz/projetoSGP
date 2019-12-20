unit untPagIncPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, RzButton, RzBckgnd, Mask, RzEdit, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB, FIBDataSet,
  pFIBDataSet, RzDBCmbo, FIBQuery, pFIBQuery, Vcl.Imaging.pngimage, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, RzTabs, pFIBClientDataSet, Datasnap.DBClient, Math,
  RzDBEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfrmPagIncPagar = class(TForm)
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
    btnPesqFornec: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTitulo: TRzLabel;
    lblTituloTotal: TRzLabel;
    edtValorDoc: TRzEdit;
    edtCredito: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    edtNota: TRzEdit;
    edtParcelasNT: TRzEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel14: TRzLabel;
    qryRetornaIDCntPagar_Item: TpFIBQuery;
    qryConsulta: TpFIBQuery;
    qryInsertCntPagar_Item: TpFIBQuery;
    qryEditCntPagar_Item: TpFIBQuery;
    fdsCntPagar: TpFIBDataSet;
    fdsPagar_Pagamento: TpFIBDataSet;
    fdsPagar_PagamentoIDCONTA: TFIBBCDField;
    fdsPagar_PagamentoIDPAGAMENTO: TFIBBCDField;
    fdsPagar_PagamentoIDFILIAL: TFIBBCDField;
    qryEditChequeCntPagar_Item: TpFIBQuery;
    qryInsertChequeCntPagar: TpFIBQuery;
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
    cdsPagar_Pag: TpFIBClientDataSet;
    cdsPagar_PagIDFILIAL: TIntegerField;
    cdsPagar_PagIDCONTA: TIntegerField;
    cdsPagar_PagIDPAGAMENTO: TIntegerField;
    cdsPagar_PagPREFIXO_PAGAMENTO: TStringField;
    cdsCntPagar_Item: TpFIBClientDataSet;
    cdsCntPagar_ItemID: TpFIBClientBCDField;
    cdsCntPagar_ItemPOSICAO: TStringField;
    cdsCntPagar_ItemPREFIXO: TStringField;
    cdsCntPagar_ItemREFERENCIA: TStringField;
    cdsCntPagar_ItemDT_VENC: TDateField;
    cdsCntPagar_ItemDT_PAG: TDateField;
    cdsCntPagar_ItemACRESCIMO: TpFIBClientBCDField;
    cdsCntPagar_ItemDESCONTO: TpFIBClientBCDField;
    cdsCntPagar_ItemVALOR: TpFIBClientBCDField;
    cdsCntPagar_ItemVALOR_PAGO: TpFIBClientBCDField;
    cdsCntPagar_ItemHISTORICO: TStringField;
    cdsCntPagar_ItemPARCELA: TStringField;
    cdsCntPagar_ItemIDFILIAL: TIntegerField;
    cdsChequeCntPagar: TpFIBClientDataSet;
    cdsChequeCntPagarIDBANCO: TpFIBClientBCDField;
    cdsChequeCntPagarAGENCIA: TStringField;
    cdsChequeCntPagarCONTA: TStringField;
    cdsChequeCntPagarNUM_CHEQUE: TStringField;
    cdsChequeCntPagarEMITENTE: TStringField;
    cdsChequeCntPagarVALOR: TpFIBClientBCDField;
    cdsChequeCntPagarDT_VENCIMENTO: TDateField;
    cdsChequeCntPagarPREFIXO: TStringField;
    cdsChequeCntPagarNUM_BANCO: TIntegerField;
    cdsChequeCntPagarPARCELA: TStringField;
    cdsChequeCntPagarIDFILIAL: TIntegerField;
    dsChequeCntPagar: TDataSource;
    dsCntPagarItem: TDataSource;
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
    edtDescricao: TRzEdit;
    cdsChequeCntPagarIDPAGAR_ITEM: TIntegerField;
    edtDesconto: TRzEdit;
    cbxTipoDesconto: TRzComboBox;
    cbxDescAcre: TRzComboBox;
    RzLabel8: TRzLabel;
    lblCodigo: TRzLabel;
    dtpPagamento: TJvDatePickerEdit;
    fdsPlanoConta: TpFIBDataSet;
    fdsPlanoContaID: TFIBBCDField;
    fdsPlanoContaDT_INC: TFIBDateField;
    fdsPlanoContaDT_ALT: TFIBDateField;
    fdsPlanoContaSTATUS: TFIBStringField;
    fdsPlanoContaNOME: TFIBStringField;
    RzLabel13: TRzLabel;
    cbxPlanoConta: TRzComboBox;
    fdsCntPagarIDPLANO_CONTA: TFIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDinheiroEnter(Sender: TObject);
    procedure edtDinheiroExit(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDescontoEnter(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtChequeEnter(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure edtCartaoEnter(Sender: TObject);
    procedure edtCartaoExit(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnPesqFornecClick(Sender: TObject);
    procedure edtValorDocEnter(Sender: TObject);
    procedure edtValorDocExit(Sender: TObject);
    procedure edtCreditoEnter(Sender: TObject);
    procedure edtCreditoExit(Sender: TObject);
    procedure edtNotaEnter(Sender: TObject);
    procedure edtNotaExit(Sender: TObject);
    procedure edtDescricaoExit(Sender: TObject);
    procedure RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxDescAcreChange(Sender: TObject);
    procedure cbxTipoDescontoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fdsPlanoContaAfterOpen(DataSet: TDataSet);
  private
    procedure GeraParcelaCheque(prefixo: string; parcelas: Integer;
      vlrParcelar: Double);
    procedure GeraParcelaNota(prefixo: string; parcelas: Integer;
      vlrParcelar: Double);
    procedure BaixarDocumento();
    procedure GerarDocumentos();
    procedure GerarGastoAvulso;
    procedure VerificaTipoConta;
    procedure VerificaContaQuitada;
    procedure CalculaValorParcelar;
    procedure GravaCntPagar(valorTotal: Double; parcelasTotal: string;
      idFormaPag: Integer);
    procedure GravaCntPagarItem(prefixo, parcela: string; dtVenc: TDate;
      valor: Double);
    function RetornaCntPagarItemID(idFilial: Integer; valor: Double;
      dt_venc: TDate): Integer;
  public
  var
    modo: string[10];
    // tipo = receber ou pagar / modo = inclus�o ou pagamento serve para os 2 tipos
    emitente: string;
    valorDoc, valorJuros, valorParcelar, valorDinheiro, valorDesconto: Double;
    valorCheque, valorCartao, valorCredito, creditoTotal, valorNota: Double;
    idBanco, nBanco, idPagar, idFornec: Integer;
    nAgencia, nConta: string;
    gerouParcelas: Boolean;
  end;

var
  frmPagIncPagar: TfrmPagIncPagar;

implementation

uses untData, uUtils, untLancDadosBasicCheque, untPesqFornecedor;

{$R *.dfm}

procedure TfrmPagIncPagar.BaixarDocumento;
var
  utils: TUtils;
  descontoParcial, tempValorDesconto, dinheiroParcial, cartaoParcial,
    chequeParcial: Double;
  parcelarParcial, valorPago, valorPagar, valorTotNota, creditoParcial: Double;
  moeda, posicao: string[2];
  foraDesconto: Integer;
  // Controla a quantidade de notas que possuiem o valor a baixo do desconto ratiado
  descDifeArred: Double;
  // Armazena a diferen�a que faltar no desconto ap�s a divis�o e o arredondamento
begin
  descDifeArred := 0;
  valorPago := 0;
  foraDesconto := 0;
  tempValorDesconto := valorDesconto;
  cdsDocumentos.First;
  cdsCntPagar_Item.Last;
  cdsCntPagar_Item.First;
  cdsChequeCntPagar.Last;
  cdsChequeCntPagar.First;

  if tempValorDesconto > 0 then
  begin
    descontoParcial :=
      RoundTo((tempValorDesconto / cdsDocumentos.RecordCount), -2);

    descDifeArred := RoundTo(tempValorDesconto -
      (descontoParcial * cdsDocumentos.RecordCount), -2);
  end;

  if valorDinheiro > 0 then // Distribui o pagamento em DINHEIRO
  begin
    dinheiroParcial := valorDinheiro;

    while not(cdsDocumentos.Eof) do
    begin
      with qryEditCntPagar_Item do
      begin
        Close;

        descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

        ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

        valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat +
          cdsDocumentosVALOR_JUROS.AsFloat, -2);

        if cbxDescAcre.Value = 'D' then
          valorPagar := RoundTo(valorTotNota - descontoParcial -
            cdsDocumentosVALOR_PAGO.AsFloat, -2)
        else
          valorPagar := RoundTo(valorTotNota + descontoParcial -
            cdsDocumentosVALOR_PAGO.AsFloat, -2);

        Inc(foraDesconto);

        if valorPagar < 0 then
        begin
          if cbxDescAcre.Value = 'D' then
          begin
            descontoParcial := valorPagar + descontoParcial;
            ParamByName('DESCONTO').AsFloat := descontoParcial;
            valorPagar := RoundTo(valorTotNota - descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2);
            tempValorDesconto :=
              RoundTo(tempValorDesconto - descontoParcial, -2);
            descontoParcial :=
              RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount -
              foraDesconto), -2);
            descDifeArred :=
              RoundTo(tempValorDesconto -
              (descontoParcial * (cdsDocumentos.RecordCount -
              foraDesconto)), -2);
          end;
        end
        else
        begin
          ParamByName('DESCONTO').AsFloat := descontoParcial;
          tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
          descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
          descDifeArred := 0;
        end;

        if (dinheiroParcial >= valorPagar) then
        begin
          valorPago :=
            RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
          ParamByName('REC_DINHEIRO').AsFloat :=
            RoundTo(cdsDocumentosREC_DINHEIRO.AsFloat + valorPagar, -2);
          dinheiroParcial := RoundTo(dinheiroParcial - valorPagar, -2);
          ParamByName('POSICAO').AsString := 'PG';
        end
        else
        begin
          valorPago :=
            RoundTo(dinheiroParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
          ParamByName('REC_DINHEIRO').AsFloat :=
            RoundTo(cdsDocumentosREC_DINHEIRO.AsFloat + dinheiroParcial, -2);
          dinheiroParcial := 0;
          ParamByName('POSICAO').AsString := 'AB';
        end;

        if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'DN') and
          (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
          moeda := 'RA'
        else
          moeda := 'DN';

        ParamByName('VALOR_PAGO').AsFloat := valorPago;
        ParamByName('PAGAMENTO_MOEDA').AsString := moeda;

        ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
        ParamByName('IDFILIAL').AsInteger := cdsDocumentosIdFilial.AsInteger;
        idPagar := cdsDocumentosIDRECEBER.AsInteger;

        with cdsDocumentos do
        begin
          Edit;
          cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
          cdsDocumentosREC_DINHEIRO.AsFloat :=
            ParamByName('REC_DINHEIRO').AsFloat;
          cdsDocumentosPOSICAO.AsString := posicao;
          cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
          Post;
        end;

        Prepare;
        ExecQuery;

        VerificaContaQuitada;

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

  if valorCredito > 0 then // Distribui o pagamento em CREDITO
  begin
    creditoParcial := valorCredito;

    while not(cdsDocumentos.Eof) do
    begin
      with qryEditCntPagar_Item do
      begin
        Close;

        descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

        ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

        valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat +
          cdsDocumentosVALOR_JUROS.AsFloat, -2);

        if cbxDescAcre.Value = 'D' then
          valorPagar := RoundTo(valorTotNota - descontoParcial -
            cdsDocumentosVALOR_PAGO.AsFloat, -2)
        else
          valorPagar := RoundTo(valorTotNota + descontoParcial -
            cdsDocumentosVALOR_PAGO.AsFloat, -2);

        Inc(foraDesconto);

        if valorPagar < 0 then
        begin
          if cbxDescAcre.Value = 'D' then
          begin
            descontoParcial := valorPagar + descontoParcial;
            ParamByName('DESCONTO').AsFloat := descontoParcial;
            valorPagar := RoundTo(valorTotNota - descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2);
            tempValorDesconto :=
              RoundTo(tempValorDesconto - descontoParcial, -2);
            descontoParcial :=
              RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount -
              foraDesconto), -2);
            descDifeArred :=
              RoundTo(tempValorDesconto -
              (descontoParcial * (cdsDocumentos.RecordCount -
              foraDesconto)), -2);
          end;
        end
        else
        begin
          ParamByName('DESCONTO').AsFloat := descontoParcial;
          tempValorDesconto := RoundTo(tempValorDesconto - descontoParcial, -2);
          descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
          descDifeArred := 0;
        end;

        if (creditoParcial >= valorPagar) then
        begin
          valorPago :=
            RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
          creditoParcial := RoundTo(creditoParcial - valorPagar, -2);
          ParamByName('POSICAO').AsString := 'PG';
        end
        else
        begin
          valorPago :=
            RoundTo(creditoParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
          creditoParcial := 0;
          ParamByName('POSICAO').AsString := 'AB';
        end;

        if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CR') and
          (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
          moeda := 'RA'
        else
          moeda := 'CR';

        ParamByName('VALOR_PAGO').AsFloat := valorPago;
        ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
        ParamByName('REC_DINHEIRO').AsFloat :=
          cdsDocumentosREC_DINHEIRO.AsFloat;

        ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
        ParamByName('IDFILIAL').AsInteger := cdsDocumentosIdFilial.AsInteger;
        idPagar := cdsDocumentosIDRECEBER.AsInteger;

        with cdsDocumentos do
        begin
          Edit;
          cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
          cdsDocumentosPOSICAO.AsString := posicao;
          cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
          Post;
        end;

        with cdsPagar_Pag do
        begin
          Append;
          cdsPagar_PagPREFIXO_PAGAMENTO.AsString := 'CR';
          cdsPagar_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
          cdsPagar_PagIDFILIAL.AsInteger := cdsDocumentosIdFilial.AsInteger;
          Post;
        end;

        Prepare;
        ExecQuery;

        VerificaContaQuitada;

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

  if valorCartao > 0 then // Distribui o pagamento em CART�O
  begin
    cartaoParcial := valorCartao;

    while not(cdsDocumentos.Eof) do
    begin
      if cdsDocumentosPOSICAO.AsString <> 'PG' then
      begin
        with qryEditCntPagar_Item do
        begin
          Close;

          descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

          ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

          valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat +
            cdsDocumentosVALOR_JUROS.AsFloat, -2);

          if cbxDescAcre.Value = 'D' then
            valorPagar := RoundTo(valorTotNota - descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2)
          else
            valorPagar := RoundTo(valorTotNota + descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2);

          Inc(foraDesconto);

          if valorPagar < 0 then
          begin
            if cbxDescAcre.Value = 'D' then
            begin
              descontoParcial := valorPagar + descontoParcial;
              ParamByName('DESCONTO').AsFloat := descontoParcial;
              valorPagar := RoundTo(valorTotNota - descontoParcial -
                cdsDocumentosVALOR_PAGO.AsFloat, -2);
              tempValorDesconto :=
                RoundTo(tempValorDesconto - descontoParcial, -2);
              descontoParcial :=
                RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount -
                foraDesconto), -2);
              descDifeArred :=
                RoundTo(tempValorDesconto -
                (descontoParcial * (cdsDocumentos.RecordCount -
                foraDesconto)), -2);
            end;
          end
          else
          begin
            ParamByName('DESCONTO').AsFloat := descontoParcial;
            tempValorDesconto :=
              RoundTo(tempValorDesconto - descontoParcial, -2);
            descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
            descDifeArred := 0;
          end;

          if (cartaoParcial >= valorPagar) then
          begin
            valorPago :=
              RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            cartaoParcial := RoundTo(cartaoParcial - valorPagar, -2);
            ParamByName('POSICAO').AsString := 'PG';
          end
          else
          begin
            valorPago :=
              RoundTo(cartaoParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            cartaoParcial := 0;
            ParamByName('POSICAO').AsString := 'AB';
          end;

          if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CT') and
            (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
            moeda := 'RA'
          else
            moeda := 'CT';

          ParamByName('VALOR_PAGO').AsFloat := valorPago;
          ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
          ParamByName('REC_DINHEIRO').AsFloat :=
            cdsDocumentosREC_DINHEIRO.AsFloat;

          ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
          ParamByName('IDFILIAL').AsInteger := cdsDocumentosIdFilial.AsInteger;
          idPagar := cdsDocumentosIDRECEBER.AsInteger;

          with cdsDocumentos do
          begin
            Edit;
            cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
            cdsDocumentosPOSICAO.AsString := posicao;
            cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
            Post;
          end;

          with cdsPagar_Pag do
          begin
            Append;
            cdsPagar_PagPREFIXO_PAGAMENTO.AsString := 'CT';
            cdsPagar_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
            cdsPagar_PagIDFILIAL.AsInteger := cdsDocumentosIdFilial.AsInteger;
            Post;
          end;

          Prepare;
          ExecQuery;

          VerificaContaQuitada;

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

  if valorCheque > 0 then // Distribui o pagamento em CHEQUE
  begin
    chequeParcial := valorCheque;

    while not(cdsDocumentos.Eof) do
    begin
      if cdsDocumentosPOSICAO.AsString <> 'PG' then
      begin
        with qryEditCntPagar_Item do
        begin
          Close;

          descontoParcial := RoundTo(descontoParcial + descDifeArred, -2);

          ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;

          valorTotNota := RoundTo(cdsDocumentosVALOR_DOC.AsFloat +
            cdsDocumentosVALOR_JUROS.AsFloat, -2);

          if cbxDescAcre.Value = 'D' then
            valorPagar := RoundTo(valorTotNota - descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2)
          else
            valorPagar := RoundTo(valorTotNota + descontoParcial -
              cdsDocumentosVALOR_PAGO.AsFloat, -2);

          Inc(foraDesconto);

          if valorPagar < 0 then
          begin
            if cbxDescAcre.Value = 'D' then
            begin
              descontoParcial := valorPagar + descontoParcial;
              ParamByName('DESCONTO').AsFloat := descontoParcial;
              valorPagar := RoundTo(valorTotNota - descontoParcial -
                cdsDocumentosVALOR_PAGO.AsFloat, -2);
              tempValorDesconto :=
                RoundTo(tempValorDesconto - descontoParcial, -2);
              descontoParcial :=
                RoundTo(tempValorDesconto / (cdsDocumentos.RecordCount -
                foraDesconto), -2);
              descDifeArred :=
                RoundTo(tempValorDesconto -
                (descontoParcial * (cdsDocumentos.RecordCount -
                foraDesconto)), -2);
            end;
          end
          else
          begin
            ParamByName('DESCONTO').AsFloat := descontoParcial;
            tempValorDesconto :=
              RoundTo(tempValorDesconto - descontoParcial, -2);
            descontoParcial := RoundTo(descontoParcial - descDifeArred, -2);
            descDifeArred := 0;
          end;

          if (chequeParcial >= valorPagar) then
          begin
            valorPago :=
              RoundTo(valorPagar + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            chequeParcial := RoundTo(chequeParcial - valorPagar, -2);
            ParamByName('POSICAO').AsString := 'PG';
          end
          else
          begin
            valorPago :=
              RoundTo(chequeParcial + cdsDocumentosVALOR_PAGO.AsFloat, -2);
            ParamByName('VALOR_PAGO').AsFloat := valorPago;
            chequeParcial := 0;
            ParamByName('POSICAO').AsString := 'AB';
          end;

          if (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'CH') and
            (cdsDocumentosPAGAMENTO_MOEDA.AsString <> 'AB') then
            moeda := 'RA'
          else
            moeda := 'CH';

          ParamByName('VALOR_PAGO').AsFloat := valorPago;
          ParamByName('PAGAMENTO_MOEDA').AsString := moeda;
          ParamByName('REC_DINHEIRO').AsFloat :=
            cdsDocumentosREC_DINHEIRO.AsFloat;

          ParamByName('ID').AsInteger := cdsDocumentosIdDoc.AsInteger;
          ParamByName('IDFILIAL').AsInteger := cdsDocumentosIdFilial.AsInteger;
          idPagar := cdsDocumentosIDRECEBER.AsInteger;

          with cdsDocumentos do
          begin
            Edit;
            cdsDocumentosVALOR_PAGO.AsFloat := valorPago;
            cdsDocumentosPOSICAO.AsString := posicao;
            cdsDocumentosPAGAMENTO_MOEDA.AsString := moeda;
            Post;
          end;

          with cdsPagar_Pag do
          begin
            Append;
            cdsPagar_PagPREFIXO_PAGAMENTO.AsString := 'CH';
            cdsPagar_PagIDCONTA.AsInteger := cdsDocumentosIdDoc.AsInteger;
            cdsPagar_PagIDFILIAL.AsInteger := cdsDocumentosIdFilial.AsInteger;
            Post;
          end;

          Prepare;
          ExecQuery;

          VerificaContaQuitada;

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
  DM.Conexao.CommitRetaining;
end;

procedure TfrmPagIncPagar.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar o Pagamento?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
    idYes:
      begin
        ModalResult := mrCancel;
      end;
  end;
end;

procedure TfrmPagIncPagar.btnGerarParcelasClick(Sender: TObject);
var
  parcelas: Integer;
  utils: TUtils;
begin

  cdsCntPagar_Item.EmptyDataSet;
  cdsChequeCntPagar.EmptyDataSet;
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
    GeraParcelaNota('CT', parcelas, valorCartao);
  end;

  parcelas := 0;

  if modo = 'Inclus�o' then
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

procedure TfrmPagIncPagar.btnPesqFornecClick(Sender: TObject);
begin
  Try
    frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
    frmPesqFornecedor.ShowModal;
  Finally
    if frmPesqFornecedor.ModalResult = mrOk then
    begin
      idFornec := frmPesqFornecedor.fdsFornecedorID.AsInteger;
      edtCliente.Text := frmPesqFornecedor.fdsFornecedorNOME.AsString;
      edtDescricao.SetFocus;
    end;
    frmPesqFornecedor.Free;
  End;
end;

procedure TfrmPagIncPagar.btnReceberClick(Sender: TObject);
begin
  if ((valorCheque > 0) or (valorParcelar > 0)) and
    ((idFornec = DM.fdsConfigIDCLIENTEPADRAO.AsInteger) or (idFornec = 0)) then
  begin
    Application.MessageBox
      ('Informe um Fornecedor para parcelar a conta ou informe outra modea para a venda.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    btnPesqFornec.SetFocus;
    Abort;
  end;

  if (valorDinheiro = 0) and (valorCheque = 0) and (valorCartao = 0) and
    (valorNota = 0) and (valorCredito = 0) then
  begin
    Application.MessageBox('Informe o valor de pagamento em uma das moedas.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    edtDinheiro.SetFocus;
    Abort;
  end;

  if (modo = 'Pagamento') then
  begin
    if ((valorCheque > 0) or (valorCartao > 0)) and (gerouParcelas = False) then
    begin
      Application.MessageBox('Primeiro gere as parcelas a Pagar.', 'Aten��o',
        MB_OK + MB_ICONEXCLAMATION);
      btnGerarParcelas.SetFocus;
      Abort;
    end;
  end
  else
  begin
    if ((valorCheque > 0) or (valorNota > 0) or (valorCartao > 0)) and
      (gerouParcelas = False) then
    begin
      Application.MessageBox('Primeiro gere as parcelas a Pagar.', 'Aten��o',
        MB_OK + MB_ICONEXCLAMATION);
      btnGerarParcelas.SetFocus;
      Abort;
    end;
  end;

  cdsChequeCntPagar.First;
  if cdsChequeCntPagar.RecordCount > 0 then
  begin
    while not(cdsChequeCntPagar.Eof) do
    begin
      if Trim(cdsChequeCntPagarNUM_CHEQUE.AsString) = '' then
      begin
        Application.MessageBox('Voc� deve preencher o n� de todos os cheques.',
          'Aten��o', MB_OK + MB_ICONEXCLAMATION);
        Abort;
      end
      else
        cdsChequeCntPagar.Next;
    end;
  end;

  if (modo = 'Pagamento') then
  begin
    BaixarDocumento;
    GerarDocumentos;
  end;

  if (modo = 'Inclus�o') then
  begin
    if ((valorDinheiro > 0) and ((valorCheque = 0) and (valorCartao = 0) and
      (valorNota = 0) and (valorCredito = 0))) then
      GerarGastoAvulso
    else
      GerarDocumentos;
  end;

  if (modo = 'Pagamento') then
    Application.MessageBox('Documento baixado com sucesso!',
      'Confirma��o de Baixa', MB_OK + MB_ICONEXCLAMATION)
  else
    Application.MessageBox('Inclus�o de despesa realizada com sucesso!',
      'Inclus�o de Despesa', MB_OK + MB_ICONEXCLAMATION);

  ModalResult := mrOk;
end;

procedure TfrmPagIncPagar.CalculaValorParcelar;
var
  utils: TUtils;
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

procedure TfrmPagIncPagar.cbxDescAcreChange(Sender: TObject);
begin
  edtDesconto.SetFocus;
end;

procedure TfrmPagIncPagar.cbxTipoDescontoChange(Sender: TObject);
begin
  edtDesconto.SetFocus;
end;

procedure TfrmPagIncPagar.edtCartaoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCartao.Text := utils.RetiraMascaraDinheiro(edtCartao.Text);
  edtCartao.SelectAll;
end;

procedure TfrmPagIncPagar.edtCartaoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtCartao.Text := FloatToStr(utils.ValidaInteiroFloat(edtCartao.Text, 'F'));
  valorCartao := StrToFloat(edtCartao.Text);
  edtCartao.Text := utils.AdicionaMascaraDinheiro(edtCartao.Text);
  CalculaValorParcelar;
end;

procedure TfrmPagIncPagar.edtChequeEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCheque.Text := utils.RetiraMascaraDinheiro(edtCheque.Text);
  edtCheque.SelectAll;
end;

procedure TfrmPagIncPagar.edtChequeExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtCheque.Text := FloatToStr(utils.ValidaInteiroFloat(edtCheque.Text, 'F'));
  valorCheque := StrToFloat(edtCheque.Text);
  edtCheque.Text := utils.AdicionaMascaraDinheiro(edtCheque.Text);
  CalculaValorParcelar;
end;

procedure TfrmPagIncPagar.edtCreditoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtCredito.Text := utils.RetiraMascaraDinheiro(edtCredito.Text);
  edtCredito.SelectAll;
end;

procedure TfrmPagIncPagar.edtCreditoExit(Sender: TObject);
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

procedure TfrmPagIncPagar.edtDescontoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtDesconto.SelectAll;
end;

procedure TfrmPagIncPagar.edtDescontoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtDesconto.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtDesconto.Text, 'F'));
  valorDesconto := StrToFloat(edtDesconto.Text);

  if valorDesconto > 0 then
  begin
    if cbxTipoDesconto.Value = 'P' then
      valorDesconto := RoundTo(valorDoc * valorDesconto / 100, -2);

  end;

  CalculaValorParcelar;
end;

procedure TfrmPagIncPagar.edtDescricaoExit(Sender: TObject);
begin
  // cbxPlanoConta.SetFocus;
end;

procedure TfrmPagIncPagar.edtDinheiroEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtDinheiro.Text := utils.RetiraMascaraDinheiro(edtDinheiro.Text);
  edtDinheiro.SelectAll;
end;

procedure TfrmPagIncPagar.edtDinheiroExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtDinheiro.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtDinheiro.Text, 'F'));
  valorDinheiro := StrToFloat(edtDinheiro.Text);
  edtDinheiro.Text := utils.AdicionaMascaraDinheiro(edtDinheiro.Text);
  CalculaValorParcelar;
end;

procedure TfrmPagIncPagar.edtNotaEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtNota.Text := utils.RetiraMascaraDinheiro(edtNota.Text);
  edtNota.SelectAll;
end;

procedure TfrmPagIncPagar.edtNotaExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtNota.Text := FloatToStr(utils.ValidaInteiroFloat(edtNota.Text, 'F'));
  valorNota := StrToFloat(edtNota.Text);
  edtNota.Text := utils.AdicionaMascaraDinheiro(edtNota.Text);
end;

procedure TfrmPagIncPagar.edtValorDocEnter(Sender: TObject);
var
  utils: TUtils;
begin
  if edtValorDoc.ReadOnly = False then
  begin
    edtValorDoc.Text := utils.RetiraMascaraDinheiro(edtValorDoc.Text);
    edtValorDoc.SelectAll;
  end;
end;

procedure TfrmPagIncPagar.edtValorDocExit(Sender: TObject);
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
    btnPesqFornec.SetFocus;
    CalculaValorParcelar;
  end;
end;

procedure TfrmPagIncPagar.fdsPlanoContaAfterOpen(DataSet: TDataSet);
begin
  fdsPlanoConta.First;
  cbxPlanoConta.ClearItems;
  while not(fdsPlanoConta.Eof) do
  begin
    cbxPlanoConta.AddItemValue(fdsPlanoContaNOME.AsString,
      fdsPlanoContaID.AsString);
    fdsPlanoConta.Next;
  end;
  cbxPlanoConta.ItemIndex := 0;
  fdsPlanoConta.Close;
end;

procedure TfrmPagIncPagar.FormCreate(Sender: TObject);
begin
  cdsDocumentos.CreateDataSet;
  cdsDocumentos.Open;

  cdsCntPagar_Item.CreateDataSet;
  cdsCntPagar_Item.Open;

  cdsChequeCntPagar.CreateDataSet;
  cdsChequeCntPagar.Open;

  cdsPagar_Pag.CreateDataSet;
  cdsPagar_Pag.Open;

  fdsPagar_Pagamento.Open;

  fdsPlanoConta.Open;
end;

procedure TfrmPagIncPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPagIncPagar.FormShow(Sender: TObject);
var
  utils: TUtils;
begin
  dtpPagamento.Date := Now;
  edtValorDoc.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorDoc));
  // edtJurosTotal.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorJuros));
  edtDesconto.SetFocus;

  valorDinheiro := 0;
  valorDesconto := 0;
  valorCheque := 0;
  valorCartao := 0;

  if (modo = 'Inclus�o') then
  begin
    frmPagIncPagar.Caption := 'Inclus�o de Nota de Fornecedor';
    btnPesqFornec.Enabled := True;
    edtValorDoc.ReadOnly := False;
    btnReceber.Caption := '&Finalizar';
    edtNota.Enabled := True;
    edtParcelasNT.Enabled := True;
    edtCredito.Enabled := False;
    edtDescricao.Enabled := True;
    edtValorDoc.SetFocus;
  end
  else
    cbxPlanoConta.Enabled := False;
end;

procedure TfrmPagIncPagar.GeraParcelaCheque(prefixo: string; parcelas: Integer;
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
    cdsChequeCntPagar.Append;
    cdsChequeCntPagarIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsChequeCntPagarEMITENTE.AsString := emitente;
    cdsChequeCntPagarIDBANCO.AsInteger := idBanco;
    cdsChequeCntPagarAGENCIA.AsString := nAgencia;
    cdsChequeCntPagarCONTA.AsString := nConta;
    cdsChequeCntPagarNUM_BANCO.AsInteger := nBanco;
    dataParcela := dataParcela + 30;
    cdsChequeCntPagarDT_VENCIMENTO.AsDateTime := dataParcela;
    cdsChequeCntPagarPARCELA.AsString := utils.FormataParcelas(IntToStr(i)) +
      parcelasTemp;

    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas));
    // joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsChequeCntPagarVALOR.AsFloat := valorParcela;

    cdsChequeCntPagar.Post;

  end;
end;

procedure TfrmPagIncPagar.GeraParcelaNota(prefixo: string; parcelas: Integer;
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
    cdsCntPagar_Item.Append;
    cdsCntPagar_ItemIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsCntPagar_ItemPOSICAO.AsString := 'AB';
    cdsCntPagar_ItemPARCELA.AsString := utils.FormataParcelas(IntToStr(i)) +
      parcelasTemp;
    cdsCntPagar_ItemPREFIXO.AsString := prefixo;
    dataParcela := dataParcela + 30;
    cdsCntPagar_ItemDT_VENC.AsDateTime := dataParcela;

    if i = parcelas then
      valorParcela := valorParcela + (vlrParcelar - (valorParcela * parcelas));
    // joga os centavos faltando para a �ltima parcela. Devido ao arredondamento
    cdsCntPagar_ItemVALOR.AsFloat := valorParcela;

    cdsCntPagar_Item.Post;
  end;
end;

procedure TfrmPagIncPagar.GerarDocumentos;
var
  prefixoTemp: string[2];
  idPagarItem: Integer;
begin

  cdsChequeCntPagar.First;

  if cdsChequeCntPagar.RecordCount > 0 then
  begin
    GravaCntPagar(valorCheque, edtParcelasCH.Text, 4);

    while not(cdsChequeCntPagar.Eof) do
    begin
      GravaCntPagarItem('CH', cdsChequeCntPagarPARCELA.AsString,
        cdsChequeCntPagarDT_VENCIMENTO.AsDateTime,
        cdsChequeCntPagarVALOR.AsFloat);
      idPagarItem := RetornaCntPagarItemID(cdsChequeCntPagarIDFILIAL.AsInteger,
        cdsChequeCntPagarVALOR.AsFloat,
        cdsChequeCntPagarDT_VENCIMENTO.AsDateTime);

      qryInsertChequeCntPagar.Close;
      qryInsertChequeCntPagar.ParamByName('IDPAGAR_ITEM').AsString :=
        IntToStr(idPagarItem);
      qryInsertChequeCntPagar.ParamByName('IDFILIAL').AsInteger :=
        cdsChequeCntPagarIDFILIAL.AsInteger;
      qryInsertChequeCntPagar.ParamByName('IDBANCO').AsString :=
        IntToStr(idBanco);
      qryInsertChequeCntPagar.ParamByName('AGENCIA').AsString := nAgencia;
      qryInsertChequeCntPagar.ParamByName('CONTA').AsString := nConta;
      qryInsertChequeCntPagar.ParamByName('NUM_CHEQUE').AsString :=
        cdsChequeCntPagarNUM_CHEQUE.AsString;
      qryInsertChequeCntPagar.ParamByName('DT_EMISSAO').AsDateTime := Now;
      qryInsertChequeCntPagar.ParamByName('EMITENTE').AsString :=
        cdsChequeCntPagarEMITENTE.AsString;
      qryInsertChequeCntPagar.ParamByName('VALOR').AsFloat :=
        cdsChequeCntPagarVALOR.AsFloat;
      qryInsertChequeCntPagar.ParamByName('DT_VENCIMENTO').AsDateTime :=
        cdsChequeCntPagarDT_VENCIMENTO.AsDateTime;
      qryInsertChequeCntPagar.Prepare;
      qryInsertChequeCntPagar.ExecQuery;

      cdsChequeCntPagar.Next;
    end;

    cdsPagar_Pag.First;

    while not(cdsPagar_Pag.Eof) do
    begin
      if cdsPagar_PagPREFIXO_PAGAMENTO.AsString = 'CH' then // vitor
      begin
        fdsPagar_Pagamento.Append;
        fdsPagar_PagamentoIDCONTA.AsInteger := cdsPagar_PagIDCONTA.AsInteger;
        fdsPagar_PagamentoIDPAGAMENTO.AsInteger := idPagar;
        fdsPagar_PagamentoIDFILIAL.AsInteger := cdsPagar_PagIDFILIAL.AsInteger;
        fdsPagar_Pagamento.Post;
      end;
      cdsPagar_Pag.Next;
    end;

    DM.Conexao.CommitRetaining;
  end;

  cdsCntPagar_Item.First;
  prefixoTemp := cdsCntPagar_ItemPREFIXO.AsString;

  while not(cdsCntPagar_Item.Eof) do
  Begin
    if prefixoTemp = 'CT' then
    begin
      GravaCntPagar(valorCartao, edtParcelasCT.Text, 2);

      while (prefixoTemp = 'CT') and not(cdsCntPagar_Item.Eof) do
      begin
        GravaCntPagarItem(prefixoTemp, cdsCntPagar_ItemPARCELA.AsString,
          cdsCntPagar_ItemDT_VENC.AsDateTime, cdsCntPagar_ItemVALOR.AsFloat);
        cdsCntPagar_Item.Next;
        prefixoTemp := cdsCntPagar_ItemPREFIXO.AsString;
      end;
    end;

    if (prefixoTemp = 'NT') then
    begin
      GravaCntPagar(valorNota, edtParcelasNT.Text, 6);

      while (prefixoTemp = 'NT') and not(cdsCntPagar_Item.Eof) do
      begin
        GravaCntPagarItem(prefixoTemp, cdsCntPagar_ItemPARCELA.AsString,
          cdsCntPagar_ItemDT_VENC.AsDateTime, cdsCntPagar_ItemVALOR.AsFloat);
        cdsCntPagar_Item.Next;
        prefixoTemp := cdsCntPagar_ItemPREFIXO.AsString;
      end;
      //
    end;

    cdsPagar_Pag.First;

    while not(cdsPagar_Pag.Eof) do
    begin
      if cdsPagar_PagPREFIXO_PAGAMENTO.AsString = prefixoTemp then
      begin
        fdsPagar_Pagamento.Append;
        fdsPagar_PagamentoIDCONTA.AsInteger := cdsPagar_PagIDCONTA.AsInteger;
        fdsPagar_PagamentoIDPAGAMENTO.AsInteger := idPagar;
        fdsPagar_PagamentoIDFILIAL.AsInteger := cdsPagar_PagIDFILIAL.AsInteger;
        fdsPagar_Pagamento.Post;
      end;
      cdsPagar_Pag.Next;
    end;

    DM.Conexao.CommitRetaining;

  End;
end;

procedure TfrmPagIncPagar.GerarGastoAvulso;
begin
  fdsCntPagar.Open;
  fdsCntPagar.Append;
  idPagar := fdsCntPagarID.AsInteger;
  fdsCntPagarDT_INC.AsDateTime := dtpPagamento.Date;
  fdsCntPagarPREFIXO.Text := 'GG';
  fdsCntPagarPOSICAO.AsString := 'PG';
  fdsCntPagarIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsCntPagarIDCOMPRA.AsInteger := 0;
  fdsCntPagarIDPORTADOR.AsInteger := DM.fdsConfigIDPORTADOR_PADRAO.AsInteger;
  fdsCntPagarIDFORMA_PAG.AsInteger := 1;
  fdsCntPagarIDFORNECEDOR.AsInteger := idFornec;
  fdsCntPagarTOT_PARCELA.AsString := '001';
  fdsCntPagarPARCELAS_PG.AsString := '1';
  fdsCntPagarDINHEIRO.AsFloat := valorDinheiro;
  fdsCntPagarVALOR.AsFloat := valorDinheiro;
  fdsCntPagarIDPORTADOR.AsInteger := DM.fdsConfigIDPORTADOR_PADRAO.AsInteger;
  fdsCntPagarVALOR_PAGO.AsFloat := valorDinheiro;
  fdsCntPagarHISTORICO.AsString := edtDescricao.Text;
  fdsCntPagar.Post;
  DM.Conexao.CommitRetaining;

  GravaCntPagarItem('GG', '001001', dtpPagamento.Date, valorDinheiro);
  DM.Conexao.CommitRetaining;

  with qryConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CNT_PAGAR_ITEM WHERE IDPAGAR = ' +
      IntToStr(idPagar));
    Prepare;
    ExecQuery;
  end;

  with qryEditCntPagar_Item do
  begin
    Close;
    ParamByName('POSICAO').AsString := 'PG';
    ParamByName('DT_PAG').AsDateTime := dtpPagamento.Date;
    ParamByName('VALOR_PAGO').AsFloat := valorDinheiro;
    ParamByName('PAGAMENTO_MOEDA').AsString := 'DN';
    ParamByName('DESCONTO').AsFloat := 0;
    ParamByName('REC_DINHEIRO').AsFloat := valorDinheiro;
    ParamByName('ID').AsInteger := qryConsulta.FieldByName('ID').AsInteger;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    ExecQuery;
  end;
  DM.Conexao.CommitRetaining;
  valorDinheiro := 0;

end;

procedure TfrmPagIncPagar.GravaCntPagar(valorTotal: Double;
  parcelasTotal: string; idFormaPag: Integer);
var
  utils: TUtils;
begin
  fdsCntPagar.Open;
  fdsCntPagar.Append;
  idPagar := fdsCntPagarID.AsInteger;
  fdsCntPagarIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsCntPagarDT_INC.AsDateTime := Now;
  fdsCntPagarPOSICAO.AsString := 'AB';
  fdsCntPagarPREFIXO.AsString := 'CP';
  fdsCntPagarIDFORNECEDOR.AsInteger := idFornec;
  fdsCntPagarDINHEIRO.AsFloat := valorDinheiro;
  fdsCntPagarVALOR.AsFloat := valorTotal;
  fdsCntPagarIDPORTADOR.AsInteger := DM.fdsConfigIDPORTADOR_PADRAO.AsInteger;
  fdsCntPagarIDFORMA_PAG.AsInteger := idFormaPag;
  fdsCntPagarIDCOMPRA.AsInteger := 0;
  fdsCntPagarTOT_PARCELA.AsString := utils.FormataParcelas(parcelasTotal);
  fdsCntPagarHISTORICO.AsString := edtDescricao.Text;
  fdsCntPagarIDPLANO_CONTA.AsString := cbxPlanoConta.Value;
  fdsCntPagar.Post;
  DM.Conexao.CommitRetaining;

  valorDinheiro := 0;
end;

procedure TfrmPagIncPagar.GravaCntPagarItem(prefixo, parcela: string;
  dtVenc: TDate; valor: Double);
begin
  qryInsertCntPagar_Item.Close;

  qryInsertCntPagar_Item.ParamByName('POSICAO').AsString := 'AB';
  qryInsertCntPagar_Item.ParamByName('PREFIXO').AsString := prefixo;
  qryInsertCntPagar_Item.ParamByName('DT_VENC').AsDateTime := dtVenc;
  qryInsertCntPagar_Item.ParamByName('VALOR').AsFloat := valor;
  qryInsertCntPagar_Item.ParamByName('PARCELA').AsString := parcela;
  qryInsertCntPagar_Item.ParamByName('IDPAGAR').AsInteger := idPagar;
  qryInsertCntPagar_Item.ParamByName('IDFILIAL').AsInteger :=
    DM.fdsConfigIDFILIAL.AsInteger;

  qryInsertCntPagar_Item.Prepare;
  qryInsertCntPagar_Item.ExecQuery;

  DM.Conexao.CommitRetaining;
end;

function TfrmPagIncPagar.RetornaCntPagarItemID(idFilial: Integer; valor: Double;
  dt_venc: TDate): Integer;
begin
  qryRetornaIDCntPagar_Item.Close;
  qryRetornaIDCntPagar_Item.ParamByName('IDPAGAR').AsInteger := idPagar;
  qryRetornaIDCntPagar_Item.ParamByName('IDFILIAL').AsInteger := idFilial;
  qryRetornaIDCntPagar_Item.ParamByName('VALOR').AsFloat := valor;
  qryRetornaIDCntPagar_Item.ParamByName('DT_VENC').AsDateTime := dt_venc;
  qryRetornaIDCntPagar_Item.Prepare;
  qryRetornaIDCntPagar_Item.ExecQuery;
  Result := qryRetornaIDCntPagar_Item.FieldByName('ID').AsInteger;
end;

procedure TfrmPagIncPagar.RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if cdsChequeCntPagar.State in [dsEdit] then
    begin
      cdsChequeCntPagar.Post;
    end;
  end;
end;

procedure TfrmPagIncPagar.VerificaContaQuitada;
var
  tempVlrPago: Double;
begin
  with qryConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CNT_PAGAR_ITEM WHERE IDPAGAR = :IDPAGAR AND IDFILIAL = :IDFILIAL AND POSICAO = '
      + QuotedStr('AB'));
    ParamByName('IDPAGAR').AsInteger := idPagar;
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
      SQL.Add('UPDATE CNT_PAGAR SET POSICAO = :POSICAO WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
      ParamByName('ID').AsInteger := idPagar;
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
    SQL.Add('UPDATE CNT_PAGAR SET VALOR_PAGO = (SELECT SUM(VALOR_PAGO) FROM CNT_PAGAR_ITEM WHERE IDPAGAR = :ID AND IDFILIAL = :IDFILIAL) ');
    SQL.Add(' WHERE ID = :ID AND IDFILIAL = :IDFILIAL');
    ParamByName('ID').AsInteger := idPagar;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    ExecQuery;
  end;

end;

procedure TfrmPagIncPagar.VerificaTipoConta;
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

end.