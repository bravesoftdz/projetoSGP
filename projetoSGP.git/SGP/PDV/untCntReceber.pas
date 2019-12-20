unit untCntReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzRadGrp, Vcl.StdCtrls,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzButton,
  Data.DB, FIBDataSet, pFIBDataSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Mask, RzEdit, RzDBEdit, RzBckgnd, FIBQuery, pFIBQuery,
  Datasnap.Provider, pFIBClientDataSet, Datasnap.DBClient, frxClass, frxDBSet,
  Vcl.ComCtrls, FIBDatabase, pFIBDatabase, System.Math, RzDBRGrp, RzTabs;

type
  TfrmCntReceber = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    imgFlagYellow: TImage;
    imgFlagRed: TImage;
    imgFlagGreen: TImage;
    imgFlagYellow2: TImage;
    imgFlagRed2: TImage;
    imgFlagGreen2: TImage;
    rgbPosicao: TRzRadioGroup;
    lblCliente: TRzLabel;
    RzBackground1: TRzBackground;
    RzGroupBox1: TRzGroupBox;
    lblNome: TRzLabel;
    edtClienteNome: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    fdsCntReceberCheque: TpFIBDataSet;
    dsCntReceberItens: TDataSource;
    dsCntReceberCheque: TDataSource;
    dsCliente: TDataSource;
    RzPanel2: TRzPanel;
    btnCancelar: TRzBitBtn;
    btnReceber: TRzBitBtn;
    fdsCntReceber: TpFIBDataSet;
    fdsCntReceberID: TFIBBCDField;
    fdsCntReceberIDFILIAL: TFIBBCDField;
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
    fdsCntReceberENVIADO_WEB: TFIBStringField;
    lblTituloTotalRecebido: TRzLabel;
    lblTotRecebido: TRzLabel;
    lblTotReceber: TRzLabel;
    lblTituloTotalReceber: TRzLabel;
    qrySomaReceber: TpFIBQuery;
    Timer1: TTimer;
    RzLabel6: TRzLabel;
    edtValorSelect: TRzEdit;
    imgFlagBlue: TImage;
    imgFlagBlue2: TImage;
    fdsCntReceberItens: TpFIBDataSet;
    fdsCntReceberItensID: TFIBBCDField;
    fdsCntReceberItensPOSICAO: TFIBStringField;
    fdsCntReceberItensPREFIXO: TFIBStringField;
    fdsCntReceberItensIDRECEBER: TFIBBCDField;
    fdsCntReceberItensDT_VENC: TFIBDateField;
    fdsCntReceberItensDT_PAG: TFIBDateField;
    fdsCntReceberItensACRESCIMO: TFIBBCDField;
    fdsCntReceberItensDESCONTO: TFIBBCDField;
    fdsCntReceberItensVALOR: TFIBBCDField;
    fdsCntReceberItensVALOR_PAGO: TFIBBCDField;
    fdsCntReceberItensHISTORICO: TFIBStringField;
    fdsCntReceberItensPARCELA: TFIBStringField;
    fdsCntReceberItensENVIADO_WEB: TFIBStringField;
    fdsCntReceberItensIDFILIAL: TFIBBCDField;
    fdsCntReceberItensDT_INC: TFIBDateField;
    fdsCntReceberItensREC: TStringField;
    fdsCntReceberItensBAIXA_AGRUPADA: TFIBStringField;
    fdsCntReceberItensPAGAMENTO_MOEDA: TFIBStringField;
    fdsCntReceberItensREC_DESC_ACRE: TFIBBCDField;
    fdsCntReceberItensREC_DINHEIRO: TFIBBCDField;
    fdsCntReceberItensID_REC_ITEM: TFIBBCDField;
    fdsMovimentoCaixa: TpFIBDataSet;
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
    fdsMovimentoCaixaVLR_CHEQUE: TFIBBCDField;
    fdsMovimentoCaixaVLR_CARTAO: TFIBBCDField;
    fdsMovimentoCaixaVLR_NOTA: TFIBBCDField;
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
    fdsClienteIDROTA: TFIBBCDField;
    fdsClienteENVIADO_WEB: TFIBStringField;
    fdsClienteIDFILIAL: TFIBBCDField;
    fdsClienteREFERENCIA: TFIBStringField;
    fdsClienteCIDADE: TFIBStringField;
    fdsClienteUF: TFIBStringField;
    frxReceber: TfrxDBDataset;
    frxCliente: TfrxDBDataset;
    frxReceber_Item: TfrxDBDataset;
    redComprovante: TRzRichEdit;
    fdsCntReceberItensDIAS_ATRASO: TIntegerField;
    fdsCntReceberItensVALOR_JUROS: TCurrencyField;
    fdsCntReceberItensVALOR_JUROS_PAGO: TFIBBCDField;
    fdsCntReceberItensIDVENDA: TFIBBCDField;
    fdsClienteLOCAL_TRABALHO: TFIBStringField;
    fdsClientePROPRIETARIO: TFIBStringField;
    fdsClienteCREDITO: TFIBBCDField;
    fdsClienteTEM_EMPILHADEIRA: TFIBStringField;
    fdsClienteIDCLIENTE_APP: TFIBBCDField;
    fdsClienteNUMERO: TFIBStringField;
    transCntReceber: TpFIBTransaction;
    fdsCntReceberItensREFERENCIA: TFIBStringField;
    btnLancCr�dito: TRzBitBtn;
    fdsMovimentoCaixaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovimentoCaixaVLR_TICKET: TFIBBCDField;
    fdsMovimentoCaixaVLR_CREDITO: TFIBBCDField;
    fdsCntReceberItensVALOR_RESTANTE: TFloatField;
    cdsFormaPagamento: TClientDataSet;
    cdsFormaPagamentoMOEDA: TStringField;
    cdsFormaPagamentoVALOR: TFloatField;
    frxFormaPagamento: TfrxDBDataset;
    cdsDescAcre: TClientDataSet;
    cdsDescAcreVALOR: TFloatField;
    frxDescAcre: TfrxDBDataset;
    cdsDescAcreMOEDA: TStringField;
    fdsClienteCOMPLEMENTO: TFIBStringField;
    fdsClienteOBSERVACAO: TFIBStringField;
    fdsClienteCODCIDADE: TFIBStringField;
    fdsClienteINDICADOR_IE: TFIBStringField;
    fdsClienteULTIMO_CREDITO: TFIBBCDField;
    fdsClienteDT_ULTIMO_CREDITO: TFIBDateField;
    fdsMovCntReceber: TpFIBDataSet;
    fdsMovCntReceberItem: TpFIBDataSet;
    fdsMovCntReceberID: TFIBBCDField;
    fdsMovCntReceberIDFILIAL: TFIBBCDField;
    fdsMovCntReceberIDCAIXA: TFIBIntegerField;
    fdsMovCntReceberIDCAIXA_MOV: TFIBIntegerField;
    fdsMovCntReceberDT_MOVIMENTO: TFIBDateField;
    fdsMovCntReceberVLR_TOTAL_PG: TFIBBCDField;
    fdsMovCntReceberVLR_TOT_RECEBIDO: TFIBBCDField;
    fdsMovCntReceberVLR_DINHEIRO: TFIBBCDField;
    fdsMovCntReceberVLR_CARTAO_DT: TFIBBCDField;
    fdsMovCntReceberVLR_CARTAO_CR: TFIBBCDField;
    fdsMovCntReceberVLR_CHEQUE: TFIBBCDField;
    fdsMovCntReceberVLR_NOTA: TFIBBCDField;
    fdsMovCntReceberVLR_CREDITO: TFIBBCDField;
    fdsMovCntReceberVLR_DESCONTO: TFIBBCDField;
    fdsMovCntReceberVLR_ACRESCIMO: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS: TFIBBCDField;
    fdsMovCntReceberVLR_TROCO: TFIBBCDField;
    fdsMovCntReceberHISTORICO: TFIBStringField;
    fdsMovCntReceberItemID: TFIBBCDField;
    fdsMovCntReceberItemIDFILIAL: TFIBBCDField;
    fdsMovCntReceberItemITEM: TFIBIntegerField;
    fdsMovCntReceberItemIDMOVIMENTO: TFIBBCDField;
    fdsMovCntReceberItemIDDOC: TFIBBCDField;
    fdsMovCntReceberItemIDVENDA: TFIBIntegerField;
    fdsMovCntReceberItemDT_MOVIMENTO: TFIBDateField;
    fdsMovCntReceberItemVLR_DOC: TFIBBCDField;
    fdsMovCntReceberItemVLR_PAGO: TFIBBCDField;
    fdsMovCntReceberItemVLR_PAGO_ATUAL: TFIBBCDField;
    fdsMovCntReceberItemVLR_DESCONTO: TFIBBCDField;
    fdsMovCntReceberItemVLR_ACRESCIMO: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS: TFIBBCDField;
    fdsMovCntReceberItemVLR_RESTANTE: TFIBBCDField;
    fdsMovCntReceberItemREFERENCIA: TFIBStringField;
    fdsMovCntReceberUSAR_JUROS: TFIBStringField;
    frxMovCntReceberItem: TfrxDBDataset;
    btnReiprimirCredito: TRzBitBtn;
    fdsCntReceberItensVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS_PAGO: TFIBBCDField;
    fdsMovCntReceberVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS_PAGO: TFIBBCDField;
    fdsMovCntReceberItemVLR_JUROS_RESTANTE: TFIBBCDField;
    fdsCntReceberItensTOT_RECEBER: TFloatField;
    fdsMovCntReceberIDCLIENTE: TFIBBCDField;
    fdsMovCntReceberHR_MOVIMENTO: TFIBTimeField;
    fdsMovCntReceberCLIENTE: TFIBStringField;
    btnImpReceber: TRzBitBtn;
    btnReImprimirNota: TRzBitBtn;
    lblVlrCredito: TRzLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    cdsProdutos: TClientDataSet;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    gdrParcelas: TJvDBGrid;
    qryProdutos: TpFIBQuery;
    procedure gdrParcelasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnReceberClick(Sender: TObject);
    function MyLocateItem(chave1, chave2: string): Boolean;
    procedure RetornaTotalReceber;
    procedure RetornaTotalRecebido;
    procedure ReimprimirNota;
    procedure ReimprimirNTCupom;
    procedure Reimprimir;
    procedure ImprimeComprovanteCupom;
    procedure ImprimirExtratoCliente;
    procedure RetornarCntReceberItens;
    procedure rgbPosicaoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure gdrParcelasCellClick(Column: TColumn);
    procedure btnExtratoClienteClick(Sender: TObject);
    procedure fdsCntReceberItensAfterScroll(DataSet: TDataSet);
    procedure fdsCntReceberItensCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalculaTotais;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnLancCr�ditoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReiprimirCreditoClick(Sender: TObject);
    procedure btnReimprimorReceberClick(Sender: TObject);
    procedure fdsMovCntReceberAfterScroll(DataSet: TDataSet);
    procedure RzDBRadioGroup1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure RzDBRadioGroup1Enter(Sender: TObject);
  private
    procedure ImprimeComprovanteCredito(valor: string);
  public
  var
    idCliente, idReceberItem, DescAcre: Integer;
    vlrDesconto, vlrPago, vlrDoc, vlrCredito: Double;
    recebimento: Boolean;
  end;

var
  frmCntReceber: TfrmCntReceber;
  vlrSelecionado, vlrTotalJuros: Double;
  idReceber: string;

implementation

{$R *.dfm}

uses untData, uUtils, untPrincipal, untBaixaDocumento, untLancCreditoCliente,
  uVerificaPermicao, untMensagens;

procedure TfrmCntReceber.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCntReceber.btnLancCr�ditoClick(Sender: TObject);
var
  ultimoCredito: Double;
  uVerificaPermicao : TVerificaPermicao;
begin
  try
    fdsCntReceberItens.First;
    while not(fdsCntReceberItens.Eof) do
    begin
      if (fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S') then
      begin
        fdsCntReceberItens.Edit;
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := EmptyStr;
        fdsCntReceberItens.Post;
      end;
      fdsCntReceberItens.Next;

      if fdsCntReceberItensPOSICAO.AsString = 'PG' then
        Break;
    end;
    frmLancCreditoCliente := TfrmLancCreditoCliente.Create(nil);
    frmLancCreditoCliente.ShowModal;
  finally
    if frmLancCreditoCliente.ModalResult = mrOk then
    begin
      //colocar verifica��o de permi��o para ultrapassar limite de cr�dito do clinte.
      {if frmLancCreditoCliente.valor>fdsClienteLIMITE_CREDITO.AsFloat then
      begin
         Application.MessageBox(Pchar('Cr�dito m�ximo permitido para esse Cliente �: ' + FloatToStr(fdsClienteLIMITE_CREDITO.AsFloat) + '%'), 'Cr�dito n�o permitido.', MB_OK+MB_ICONASTERISK);
       if not(uVerificaPermicao.Verifica('LIMITE_CREDITO')=True) then
       begin
          TFrmMensagens.Mensagem('Desculpe, usu�rio sem permiss�o para ultrapassar o limite de cr�dito de Clientes.', 'Cr�dito n�o permitido.','I',[mbOk]);
          frmLancCreditoCliente.Free;
          abort;
       end;
      end; }
      fdsCliente.Edit;
      ultimoCredito := fdsClienteCREDITO.AsFloat;
      fdsClienteULTIMO_CREDITO.AsFloat := ultimoCredito;
      fdsClienteCREDITO.AsFloat := fdsClienteCREDITO.AsFloat +
        frmLancCreditoCliente.valor;
      fdsClienteDT_ULTIMO_CREDITO.AsDateTime := now;
      fdsCliente.Post;
      DM.conexao.CommitRetaining;

      lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00',
        fdsClienteCREDITO.AsFloat);
      lblVlrCredito.Visible := True;
      vlrCredito := fdsClienteCREDITO.AsFloat;
      DM.obs := '';
      ImprimeComprovanteCredito(FloatToStr(frmLancCreditoCliente.valor));
      ImprimeComprovanteCredito(FloatToStr(frmLancCreditoCliente.valor));
      Application.MessageBox('Cr�dito lan�ado com sucesso.', 'Sucesso',
        MB_OK + MB_ICONEXCLAMATION);
    end;
    frmLancCreditoCliente.Free;
  end;
end;

procedure TfrmCntReceber.btnReceberClick(Sender: TObject);
var
  idReceberTemp, idFilialTemp, idVendaTemp,mensagem: string;
  i:integer;
begin
  Try
    if vlrSelecionado > 0 then
    begin
      try
        Try
          idVendaTemp := 'cc';
          frmBaixaDocumento := TfrmBaixaDocumento.Create(nil);

          fdsCntReceberItens.First;
          while not(fdsCntReceberItens.Eof) do
          begin
            if (fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S') then
            begin
              idReceber := fdsCntReceberItensID.AsString;
              frmBaixaDocumento.cdsDocumentos.Append;
              frmBaixaDocumento.cdsDocumentosIdDoc.AsInteger :=
                fdsCntReceberItensID.AsInteger;
              frmBaixaDocumento.cdsDocumentosIdVenda.AsInteger :=
                fdsCntReceberItensIDVENDA.AsInteger;
              frmBaixaDocumento.cdsDocumentosREFERENCIA.AsString :=
                fdsCntReceberItensREFERENCIA.AsString;
              frmBaixaDocumento.cdsDocumentosIdFilial.AsInteger :=
                fdsCntReceberItensIDFILIAL.AsInteger;
              frmBaixaDocumento.cdsDocumentosVALOR_PAGO.AsFloat :=
                fdsCntReceberItensVALOR_PAGO.AsFloat-fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat;
              frmBaixaDocumento.cdsDocumentosVALOR_DOC.AsFloat :=
                fdsCntReceberItensVALOR.AsFloat -
                fdsCntReceberItensDESCONTO.AsFloat;
              frmBaixaDocumento.cdsDocumentosVALOR_JUROS.AsFloat :=
                fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
              frmBaixaDocumento.cdsDocumentosJUROS_RESTANTE.AsFloat := fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
              frmBaixaDocumento.cdsDocumentosVLR_JUROS_PAGO.AsFloat:=0;
              frmBaixaDocumento.cdsDocumentosTEMP_JUROS_RESTANTE.AsString:='S';
              frmBaixaDocumento.cdsDocumentosVALOR_PAGO_ATUAL.AsFloat := 0;
              frmBaixaDocumento.cdsDocumentosVALOR_RESTANTE.AsFloat :=
                fdsCntReceberItensVALOR.AsFloat -
                fdsCntReceberItensVALOR_PAGO.AsFloat;
              frmBaixaDocumento.cdsDocumentosREC_DINHEIRO.AsFloat :=
                fdsCntReceberItensREC_DINHEIRO.AsFloat;
              frmBaixaDocumento.cdsDocumentosPAGAMENTO_MOEDA.AsString :=
                fdsCntReceberItensPAGAMENTO_MOEDA.AsString;
              frmBaixaDocumento.cdsDocumentosPARCELA.AsString :=
                fdsCntReceberItensPARCELA.AsString;
              frmBaixaDocumento.cdsDocumentosIDRECEBER.AsInteger :=
                fdsCntReceberItensIDRECEBER.AsInteger;
              frmBaixaDocumento.cdsDocumentosDT_VENCIMENTO.AsDateTime :=
                fdsCntReceberItensDT_VENC.AsDateTime;
              frmBaixaDocumento.cdsDocumentos.Post;

              fdsCntReceberItens.Edit;
              fdsCntReceberItensBAIXA_AGRUPADA.AsString := EmptyStr;
              fdsCntReceberItens.Post;
            end;
            fdsCntReceberItens.Next;

            if fdsCntReceberItensPOSICAO.AsString = 'PG' then
              Break;
          end;

          frmBaixaDocumento.valorDoc := vlrSelecionado;
          frmBaixaDocumento.valorJuros := vlrTotalJuros;
          frmBaixaDocumento.creditoTotal := vlrCredito;
          frmBaixaDocumento.usarJuros:='S';
          frmBaixaDocumento.idCliente := idCliente;
          frmBaixaDocumento.tipo := 'Receber';

          frmBaixaDocumento.emitente := fdsClienteNOME.AsString;
          transCntReceber.CommitRetaining;
          frmBaixaDocumento.ShowModal;
        Finally

          if frmBaixaDocumento.ModalResult = mrOk then
          begin
            try
              fdsMovimentoCaixa.Open;
              fdsMovimentoCaixa.Append;
              fdsMovimentoCaixaCONTROLE.AsInteger :=DM.fdsCaixaCONTROLE.AsInteger;
              fdsMovimentoCaixaIDUSUARIO.AsInteger := DM.idUsuario;
              fdsMovimentoCaixaTIPO.AsString := 'RC';
              fdsMovimentoCaixaMOEDA.AsString := 'RC';

              if frmBaixaDocumento.valorDesconto > 0 then
              begin
                fdsMovimentoCaixaVLR_DESCONTO.AsFloat := frmBaixaDocumento.valorDesconto;
                DescAcre := 1;
              end;
              if frmBaixaDocumento.valorAcrescimo > 0 then
              begin
                fdsMovimentoCaixaVLR_DESCONTO.AsFloat := frmBaixaDocumento.valorAcrescimo;
                DescAcre := 2
              end
              else
              begin
                fdsMovimentoCaixaVLR_DESCONTO.AsFloat := frmBaixaDocumento.valorDesconto;
              end;

              fdsMovimentoCaixaVLR_VENDA.AsFloat := vlrSelecionado;
              if frmBaixaDocumento.valorDesconto > 0 then
                fdsMovimentoCaixaVLR_TOTAL.AsFloat := vlrSelecionado - frmBaixaDocumento.valorDesconto
              else
              begin
               if (frmBaixaDocumento.valorJuros> 0) and (frmBaixaDocumento.usarJuros='S') then
                fdsMovimentoCaixaVLR_TOTAL.AsFloat := vlrSelecionado + frmBaixaDocumento.valorJuros+frmBaixaDocumento.valorAcrescimo
               else
                 fdsMovimentoCaixaVLR_TOTAL.AsFloat := vlrSelecionado +frmBaixaDocumento.valorAcrescimo;
              end;



              fdsMovimentoCaixaVLR_ENTRADA.AsFloat := frmBaixaDocumento.valorDinheiro;
              fdsMovimentoCaixaVLR_CARTAO.AsFloat := frmBaixaDocumento.valorCartao;
              fdsMovimentoCaixaVLR_CHEQUE.AsFloat := frmBaixaDocumento.valorCheque;
              fdsMovimentoCaixaVLR_NOTA.AsFloat := frmBaixaDocumento.valorParcelar;
              fdsMovimentoCaixaVLR_CREDITO.AsFloat := frmBaixaDocumento.valorCredito;
              fdsMovimentoCaixaIDMOVIMENTO.AsInteger := idVenda;
              fdsMovimentoCaixaIDCAIXA.AsInteger := DM.numCaixa;
              fdsMovimentoCaixaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              // fdsMovimentoCaixaTROCO.AsFloat := 0;
              fdsMovimentoCaixaTROCO.AsFloat := frmBaixaDocumento.troco;
              fdsMovimentoCaixaHISTORICO.AsString :='RECEBIMENTO VENDA(S):' + ' \';

              frmBaixaDocumento.cdsDocumentos.First;
              while not(frmBaixaDocumento.cdsDocumentos.Eof) do
              begin
                if not(frmBaixaDocumento.cdsDocumentosIdVenda.AsString =
                  idVendaTemp) then
                begin
                  idVendaTemp :=
                    frmBaixaDocumento.cdsDocumentosIdVenda.AsString;
                  fdsMovimentoCaixaHISTORICO.AsString :=
                    fdsMovimentoCaixaHISTORICO.AsString + ' ' +
                    idVendaTemp + ' \ ';
                end;
                frmBaixaDocumento.cdsDocumentos.Next;
              end;

              fdsMovimentoCaixaHISTORICO.AsString :=fdsMovimentoCaixaHISTORICO.AsString + ' CLIENTE: ' +fdsClienteNOME.AsString;
              fdsMovimentoCaixa.Post;

              transCntReceber.CommitRetaining;
              frmBaixaDocumento.cdsDocumentos.First;
              // dm.valor := floattoStr(frmBaixaDocumento.valorDinheiro + frmBaixaDocumento.valorCheque + frmBaixaDocumento.valorCartao + frmBaixaDocumento.valorCredito - frmBaixaDocumento.valorDesconto);
              DM.valor :=FloatToStr((frmBaixaDocumento.valorDinheiro +frmBaixaDocumento.valorCheque + frmBaixaDocumento.valorCartao)
                 - (frmBaixaDocumento.troco));      //retirei o valor do cr�dito pois o Eraldo reclamou.
              recebimento := True;
              DM.dtInicio:= now;
               with fdsMovCntReceber do
               begin
                 open ;
                 Append;
                  fdsMovCntReceberIDFILIAL.AsInteger:= fdsMovimentoCaixaIDFILIAL.AsInteger;
                  fdsMovCntReceberIDCAIXA.AsInteger:= fdsMovimentoCaixaIDCAIXA.AsInteger;
                  fdsMovCntReceberDT_MOVIMENTO.AsDateTime:=now;
                  fdsMovCntReceberHR_MOVIMENTO.AsDateTime:=time;
                  fdsMovCntReceberIDCAIXA_MOV.AsInteger:= fdsMovimentoCaixaID.AsInteger;
                  fdsMovCntReceberIDCLIENTE.AsInteger:= fdsClienteID.AsInteger;
                  fdsMovCntReceberVLR_TOTAL_PG.AsFloat:= StrToFloat(DM.valor);
                  fdsMovCntReceberVLR_TOT_RECEBIDO.AsFloat :=(fdsMovimentoCaixaVLR_CARTAO.AsFloat +fdsMovimentoCaixaVLR_CHEQUE.AsFloat + fdsMovimentoCaixaVLR_NOTA.AsFloat+fdsMovimentoCaixaVLR_ENTRADA.AsFloat); //retirei o valor do cr�dito pois o Eraldo reclamou.
                  fdsMovCntReceberVLR_DINHEIRO.AsFloat:=fdsMovimentoCaixaVLR_ENTRADA.AsFloat;
                  fdsMovCntReceberVLR_CARTAO_DT.AsFloat:= fdsMovimentoCaixaVLR_CARTAO.AsFloat;
                  fdsMovCntReceberVLR_CHEQUE.AsFloat:= fdsMovimentoCaixaVLR_CHEQUE.AsFloat;
                  fdsMovCntReceberVLR_NOTA.AsFloat:= fdsMovimentoCaixaVLR_NOTA.AsFloat;
                  fdsMovCntReceberVLR_CREDITO.AsFloat:= fdsMovimentoCaixaVLR_CREDITO.AsFloat;
                  fdsMovCntReceberVLR_DESCONTO.AsFloat:= frmBaixaDocumento.valorDesconto;
                  fdsMovCntReceberVLR_ACRESCIMO.AsFloat:= frmBaixaDocumento.valorAcrescimo;
                  fdsMovCntReceberVLR_JUROS.AsFloat:= frmBaixaDocumento.valorJuros;
                  fdsMovCntReceberVLR_JUROS_PAGO.AsFloat:=frmBaixaDocumento.ValorJurosPago;
                  fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat:= frmBaixaDocumento.valorJurosRestante;
                  fdsMovCntReceberUSAR_JUROS.AsString:= frmBaixaDocumento.usarJuros;
                  fdsMovCntReceberVLR_TROCO.AsFloat:=frmBaixaDocumento.troco;
                  fdsMovCntReceberHISTORICO.AsString:=fdsMovimentoCaixaHISTORICO.AsString;
                 post;
                 transCntReceber.CommitRetaining;
               end;
              i:=0;
              while not(frmBaixaDocumento.cdsDocumentos.Eof) do
              begin
               inc(i);
               with fdsMovCntReceberItem do
               begin
                 open;
                 Append;
                  fdsMovCntReceberItemIDFILIAL.AsInteger:= fdsMovimentoCaixaIDFILIAL.AsInteger;
                  fdsMovCntReceberItemITEM.AsInteger:= i;
                  fdsMovCntReceberItemIDMOVIMENTO.AsInteger:= fdsMovCntReceberID.AsInteger;
                  fdsMovCntReceberItemDT_MOVIMENTO.AsDateTime:=now;
                  fdsMovCntReceberItemIDDOC.AsInteger:= frmBaixaDocumento.cdsDocumentosIdDoc.AsInteger;
                  fdsMovCntReceberItemIDVENDA.AsInteger:= frmBaixaDocumento.cdsDocumentosIdVenda.AsInteger;
                  fdsMovCntReceberItemVLR_DOC.AsFloat :=frmBaixaDocumento.cdsDocumentosVALOR_DOC.AsFloat;
                  fdsMovCntReceberItemVLR_PAGO_ATUAL.AsFloat:= frmBaixaDocumento.cdsDocumentosVALOR_PAGO_ATUAL.AsFloat;
                  fdsMovCntReceberItemVLR_DESCONTO.AsFloat:= frmBaixaDocumento.cdsDocumentosDESCONTO_PARCIAL.AsFloat;
                  fdsMovCntReceberItemVLR_ACRESCIMO.AsFloat:= frmBaixaDocumento.cdsDocumentosACRESCIMO_PARCIAL.AsFloat;
                  fdsMovCntReceberItemVLR_JUROS.AsFloat:= frmBaixaDocumento.cdsDocumentosVALOR_JUROS.AsFloat;
                  fdsMovCntReceberItemVLR_JUROS_PAGO.AsFloat:=frmBaixaDocumento.cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                  fdsMovCntReceberItemVLR_JUROS_RESTANTE.AsFloat:=frmBaixaDocumento.cdsDocumentosJUROS_RESTANTE.AsFloat;
                  fdsMovCntReceberItemVLR_JUROS_PAGO.AsFloat:= frmBaixaDocumento.cdsDocumentosVLR_JUROS_PAGO.AsFloat;
                  fdsMovCntReceberItemVLR_RESTANTE.AsFloat:= frmBaixaDocumento.cdsDocumentosVALOR_RESTANTE.AsFloat;
                  fdsMovCntReceberItemREFERENCIA.AsString:= frmBaixaDocumento.cdsDocumentosREFERENCIA.AsString;
                 post;
               end;
               frmBaixaDocumento.cdsDocumentos.Next;
               transCntReceber.CommitRetaining;
              end;
              Case MessageBox(Application.Handle,Pchar('Deseja imprimir comprovante?'), 'Aten��o',
                MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                idYes:
                  begin
                    Reimprimir;
                  end;
              end;

              fdsCntReceber.Close;
              fdsCntReceberItens.Close;
              fdsCntReceberItens.Open;
              fdsCntReceber.Open;
              fdsCliente.Close;
              fdsCliente.Open;
              fdsCntReceberItens.First;
              fdsMovimentoCaixa.Close;
              fdsMovCntReceberItem.Close;
              fdsMovCntReceber.Close;

              frmBaixaDocumento.Free;
              vlrSelecionado := 0;
              vlrTotalJuros := 0;
              edtValorSelect.Text := 'R$ 0,00';
              recebimento := False;

              RetornarCntReceberItens;
              CalculaTotais;

              if fdsClienteCREDITO.AsFloat > 0 then
              begin
                lblVlrCredito.Caption := 'Cr�dito: ' +
                  FormatFloat('R$ #,##0.00', fdsClienteCREDITO.AsFloat);
                lblVlrCredito.Visible := True;
                vlrCredito := fdsClienteCREDITO.AsFloat;
              end
              else
              begin
                lblVlrCredito.Visible := False;
                vlrCredito := fdsClienteCREDITO.AsFloat;
              end;
            Except
              on e: Exception do
              begin
                mensagem:= 'Baixa de conta cancelada devido a Erros Internos!'#13'Erro: '+ e.message;
                Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
                fdsMovimentoCaixa.Cancel;
                DM.conexao.RollbackRetaining;
                abort
              end;
            End;
          end
          else
          begin
            // transCntReceber.RollbackRetaining;
            Application.MessageBox('Baixa de conta cancelada!',
              'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
            frmBaixaDocumento.Free;
            vlrSelecionado := 0;
            vlrTotalJuros := 0;
            edtValorSelect.Text := 'R$ 0,00';
            recebimento := False;
          end;
        End;
      Except
        on e: Exception do
        begin
         mensagem:='Baixa de conta cancelada devido a Erros Internos!'#13'Erro: ' + e.Message;
          Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
          DM.conexao.RollbackRetaining;
          abort
        end;
      End;
    end;
  Except
    on e: Exception do
    begin
      mensagem:='Baixa de conta cancelada devido a Erros Internos!'#13'Erro: ' +e.Message;
      Application.MessageBox(pWideChar(mensagem), 'Baixa Cancelada', MB_ICONQUESTION + MB_OK);
    end;
  End;
end;

procedure TfrmCntReceber.btnExtratoClienteClick(Sender: TObject);
begin
 if fdsCntReceberItens.RecordCount>0 then
 begin
  recebimento:= false;
  ImprimirExtratoCliente;
 // Reimprimir;
 end;
end;

procedure TfrmCntReceber.btnReiprimirCreditoClick(Sender: TObject);
var
  valorCredito: Double;
begin
  if (fdsClienteCREDITO.AsFloat > 0) and
    (fdsClienteCREDITO.AsFloat >= fdsClienteULTIMO_CREDITO.AsFloat) then
    valorCredito := fdsClienteCREDITO.AsFloat -
      fdsClienteULTIMO_CREDITO.AsFloat;
  DM.obs := 'Data de Lan�amento do Cr�dito: ' +
    fdsClienteDT_ULTIMO_CREDITO.AsString;
  ImprimeComprovanteCredito(FloatToStr(valorCredito));
end;

procedure TfrmCntReceber.CalculaTotais;
begin
  case rgbPosicao.ItemIndex of
    0:
      begin
        RetornaTotalReceber;
        RetornaTotalRecebido;
      end;
    1:
      begin
        RetornaTotalReceber;
        lblTotRecebido.Caption := 'R$ 0,00';
      end;
    2:
      begin
        RetornaTotalReceber;
        lblTotRecebido.Caption := 'R$ 0,00';
      end;
    3:
      begin
        RetornaTotalRecebido;
        lblTotReceber.Caption := 'R$ 0,00';
      end;
  end;
end;

procedure TfrmCntReceber.fdsCntReceberItensAfterScroll(DataSet: TDataSet);
begin
  if fdsCntReceberItensPREFIXO.AsString = 'NT' then
    btnReImprimirNota.Enabled := True
  else
    btnReImprimirNota.Enabled := False;

end;

procedure TfrmCntReceber.fdsCntReceberItensCalcFields(DataSet: TDataSet);
var
  diasAtraso, vlrJuros: Double;
begin

  diasAtraso := 0;
  vlrJuros := 0;
  if fdsCntReceberItensDT_PAG.IsNull then
  begin
    diasAtraso := (fdsCntReceberItensDT_VENC.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  end
  else
    diasAtraso := (fdsCntReceberItensDT_PAG.AsDateTime - now) +
      DM.fdsConfigCARENCIA_JUROS.AsInteger;
  //

  if (diasAtraso <0) and (fdsCntReceberItensPOSICAO.AsString = 'AB') then
  begin
    diasAtraso := Abs(Round(diasAtraso)); // fun��o ABS retorna valor absoluto
    vlrJuros := diasAtraso * (fdsCntReceberItensVALOR.AsFloat *
      (DM.fdsConfigJUROS_DIA_PORCENTAGEM.AsFloat / 100)) * (DM.fdsConfigVALOR_MULTA_ATRASO.AsFloat/100);
  end
  else
    diasAtraso := 0;

  fdsCntReceberItensDIAS_ATRASO.AsInteger := Round(diasAtraso);
  fdsCntReceberItensVALOR_JUROS.AsFloat := vlrJuros;

  fdsCntReceberItensVALOR_RESTANTE.AsFloat :=
    RoundTo(fdsCntReceberItensVALOR.AsFloat -
    fdsCntReceberItensVALOR_PAGO.AsFloat, -2);
  fdsCntReceberItensTOT_RECEBER.AsFloat:= RoundTo((fdsCntReceberItensVALOR.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+vlrJuros+fdsCntReceberItensACRESCIMO.AsFloat-fdsCntReceberItensDESCONTO.AsFloat) -
    fdsCntReceberItensVALOR_PAGO.AsFloat, -2);

end;

procedure TfrmCntReceber.fdsMovCntReceberAfterScroll(DataSet: TDataSet);
begin
 if fdsMovCntReceber.RecordCount>0 then
 begin
   with fdsMovCntReceberItem do
   begin
     close;
     Conditions.Clear;
     Conditions.AddCondition('IDMOVIMENTO','IDMOVIMENTO ='+QuotedStr(fdsMovCntReceberID.AsString),true);
     Conditions.Apply;
     prepare;
     open;
   end;
 end;
end;

procedure TfrmCntReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // transCntReceber.CommitRetaining;
  //
  // with frmPrincipal.qryComand do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE CNT_RECEBER_ITEM RI SET BAIXA_AGRUPADA = NULL');
  // Prepare;
  // ExecQuery;
  // end;
  // frmPrincipal.transFrmPrincipal.CommitRetaining;
end;

procedure TfrmCntReceber.FormCreate(Sender: TObject);
begin
  cdsFormaPagamento.CreateDataSet;
  cdsDescAcre.CreateDataSet;
end;

procedure TfrmCntReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    btnCancelar.Click;
  end;
end;

procedure TfrmCntReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnReceber.Click;
  end;
end;

procedure TfrmCntReceber.FormShow(Sender: TObject);
begin
  RetornarCntReceberItens;
  with fdsCliente do
  begin
    Close;
    Conditions.AddCondition('ID', 'CL.ID = ' + IntToStr(idCliente), True);
    Conditions.Apply;
    Open;
  end;

  lblCliente.Caption := 'Cliente: ' + fdsClienteID.AsString + ' - ' +
    fdsClienteNOME.AsString;

  if fdsClienteCREDITO.AsFloat > 0 then
  begin
    lblVlrCredito.Caption := 'Cr�dito: ' + FormatFloat('R$ #,##0.00',
      fdsClienteCREDITO.AsFloat);
    lblVlrCredito.Visible := True;
    vlrCredito := fdsClienteCREDITO.AsFloat;
  end;

  vlrSelecionado := 0;
  vlrTotalJuros := 0;
  recebimento := False;
  // Controla o tipo de documento de recebimento a ser impresso

  CalculaTotais;
end;

procedure TfrmCntReceber.gdrParcelasCellClick(Column: TColumn);
var
  utils: TUtils;
begin
  // if gdrParcelas.SelectedField.FieldName = 'REC' then
  if gdrParcelas.SelectedIndex = 9 then
  begin
    if fdsCntReceberItensPOSICAO.AsString = 'AB' then
    begin
      fdsCntReceberItens.Edit;

      if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      begin
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'N';
        vlrSelecionado := vlrSelecionado -
          (fdsCntReceberItensVALOR.AsFloat +
          fdsCntReceberItensVALOR_JUROS.AsFloat + fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat -
          fdsCntReceberItensVALOR_PAGO.AsFloat -
          fdsCntReceberItensDESCONTO.AsFloat);
        vlrTotalJuros := vlrTotalJuros - fdsCntReceberItensVALOR_JUROS.AsFloat-fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
      end
      else
      begin
        fdsCntReceberItensBAIXA_AGRUPADA.AsString := 'S';
        vlrSelecionado := vlrSelecionado +
          (fdsCntReceberItensVALOR.AsFloat +
          fdsCntReceberItensVALOR_JUROS.AsFloat +fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat+fdsCntReceberItensVALOR_JUROS_PAGO.AsFloat-
          fdsCntReceberItensVALOR_PAGO.AsFloat -
          fdsCntReceberItensDESCONTO.AsFloat);
        vlrTotalJuros := vlrTotalJuros + fdsCntReceberItensVALOR_JUROS.AsFloat+fdsCntReceberItensVLR_JUROS_RESTANTE.AsFloat;
      end;

      fdsCntReceberItens.Post;

      edtValorSelect.Text := FloatToStr(vlrSelecionado);
      edtValorSelect.Text := utils.AdicionaMascaraDinheiro(edtValorSelect.Text);
    end;
  end;
end;

procedure TfrmCntReceber.gdrParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
  Check: Integer;
  R: TRect;
begin
  if not odd(fdsCntReceberItens.RecNo) then
  begin
    gdrParcelas.Canvas.Brush.Color := DM.gridOddColor;
    gdrParcelas.Canvas.FillRect(Rect);
    gdrParcelas.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.Index = 3) and not(fdsCntReceberItens.IsEmpty) then
    begin
      posicao := fdsCntReceberItensPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        if fdsCntReceberItensDT_VENC.AsDateTime >= now then
        begin
          Bitmap := imgFlagYellow2.Picture.Bitmap
        end
        else
          Bitmap := imgFlagRed2.Picture.Bitmap
      end
      else if posicao = 'PG' then
        Bitmap := imgFlagGreen2.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end
  else
  begin
    if (Column.Index = 3) and not(fdsCntReceberItens.IsEmpty) then
    begin
      posicao := fdsCntReceberItensPOSICAO.AsString;
      if posicao = 'AB' then
      begin
        if fdsCntReceberItensDT_VENC.AsDateTime >= now then
        begin
          Bitmap := imgFlagYellow.Picture.Bitmap
        end
        else
          Bitmap := imgFlagRed.Picture.Bitmap
      end
      else if posicao = 'PG' then
        Bitmap := imgFlagGreen.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end;

  if Column.FieldName = 'REC' then
  begin
    gdrParcelas.Canvas.FillRect(Rect);
    Check := 0;

    if fdsCntReceberItensBAIXA_AGRUPADA.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrParcelas.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmCntReceber.ImprimeComprovanteCredito(valor: string);
begin
  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;
  DM.frxReport1.Clear;
  DM.valor := valor;
  DM.cliente := fdsClienteNOME.AsString;
  DM.historico := '';
  DM.ValorTotal := fdsClienteCREDITO.AsString;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxComprovanteCredito.fr3');
  // DM.frxReport1.PrintOptions.Printer := DM.fdsConfigIMP_CUPOM.AsString;// Printer.Printers[1];
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := False;
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.Print;
end;

procedure TfrmCntReceber.ImprimeComprovanteCupom;
var
  cArquivo: TextFile;
begin
  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  DM.cliente := fdsClienteNOME.AsString;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxComprovantePagamentoNota.fr3');
  // DM.frxReport1.PrintOptions.Printer := DM.fdsConfigIMP_CUPOM.AsString;
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := False;
  DM.frxReport1.PrepareReport(True);
  // DM.frxReport1.ShowReport(True);
  DM.frxReport1.Print;
end;

procedure TfrmCntReceber.ImprimirExtratoCliente;
begin
  // DM.filial := dm.fdsConfigFilial.AsString;
  // DM.cliente := edtPesqCliente.text;
  // Dm.vlrTotal := lblTotReceber.Caption;
  with DM.fdsCaixa do
  begin
    Close;
    ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  DM.cliente := fdsClienteNOME.AsString;
  //DM.valor := lblTotReceber.Caption;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxExtratodoCliente.fr3');
  // DM.frxReport1.PrintOptions.Printer := DM.fdsConfigIMP_CUPOM.AsString;
  DM.frxReport1.PrintOptions.Printer := DM.fdsCaixaIMP_CUPOM.AsString;
  DM.frxReport1.SelectPrinter;
  DM.frxReport1.PrintOptions.ShowDialog := False;
  DM.frxReport1.PrepareReport(True);
  // DM.frxReport1.ShowReport(True);
  DM.frxReport1.Print;
end;

function TfrmCntReceber.MyLocateItem(chave1, chave2: string): Boolean;
begin
  Result := False;
  fdsCntReceberItens.First;
  while not(fdsCntReceberItens.Eof) do
  begin
    if fdsCntReceberItensIDRECEBER.AsString = chave1 then
    begin
      if fdsCntReceberItensIDFILIAL.AsString = chave2 then
      begin
        if fdsCntReceberItensPOSICAO.AsString = 'AB' then
        begin
          Result := True;
          Break;
        end;
      end;
    end;
    fdsCntReceberItens.Next;
  end;
end;

procedure TfrmCntReceber.Reimprimir;
var
  tipoDescAcre: Integer;
begin
  // cdsDocumentos.CreateDataSet;
  // while not(frmBaixaDocumento.cdsDocumentos.Eof) do
  // begin
  // cdsDocumentos.Append;
  // cdsDocumentosIdDoc.AsInteger := frmBaixaDocumento.cdsDocumentosIdDoc.AsInteger;
  // cdsDocumentosIdVenda.AsInteger := frmBaixaDocumento.cdsDocumentosIdVenda.AsInteger;
  // cdsDocumentosREFERENCIA.AsString := frmBaixaDocumento.cdsDocumentosREFERENCIA.AsString;
  // cdsDocumentosIdFilial.AsInteger := frmBaixaDocumento.cdsDocumentosIdFilial.AsInteger;
  // cdsDocumentosVALOR_PAGO.AsFloat := frmBaixaDocumento.cdsDocumentosVALOR_PAGO.AsFloat;
  // cdsDocumentosVALOR_DOC.AsFloat := frmBaixaDocumento.cdsDocumentosVALOR_DOC.AsFloat;
  // cdsDocumentosVALOR_JUROS.AsFloat := frmBaixaDocumento.cdsDocumentosVALOR_JUROS.AsFloat;
  // cdsDocumentosREC_DINHEIRO.AsFloat := frmBaixaDocumento.cdsDocumentosREC_DINHEIRO.AsFloat;
  // cdsDocumentosPAGAMENTO_MOEDA.AsString := frmBaixaDocumento.cdsDocumentosPAGAMENTO_MOEDA.AsString;
  // cdsDocumentosPARCELA.AsString := frmBaixaDocumento.cdsDocumentosPARCELA.AsString;
  // cdsDocumentosIDRECEBER.AsInteger := frmBaixaDocumento.cdsDocumentosIDRECEBER.AsInteger;
  // cdsDocumentosDT_VENCIMENTO.AsDateTime := frmBaixaDocumento.cdsDocumentosDT_VENCIMENTO.AsDateTime;
  // cdsDocumentos.Post;
  // frmBaixaDocumento.cdsDocumentos.Next;
  // end;
  // cdsDocumentos.Last;
  // cdsDocumentos.First;
  idReceber := fdsCntReceberItensIDRECEBER.AsString;
  tipoDescAcre := DescAcre;
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('ID', 'CL.ID = ' + IntToStr(idCliente), True);
    Conditions.Apply;
    Open;
  end;

//  with cdsDescAcre do
//  begin
//    Close;
//    Open;
//    EmptyDataSet;
//    if fdsMovimentoCaixaVLR_DESCONTO.AsFloat > 0 then
//    begin
//      Append;
//      if tipoDescAcre = 1 then
//        cdsDescAcreMOEDA.AsString := 'Devido ao Desconto de:'
//      else
//      begin
//        if tipoDescAcre = 2 then
//          cdsDescAcreMOEDA.AsString := 'Devido ao Acrescimo de:';
//      end;
//      cdsDescAcreVALOR.AsFloat := fdsMovimentoCaixaVLR_DESCONTO.AsFloat;
//      Post;
//    end;
//  end;
//  with cdsFormaPagamento do
//  begin
//    Close;
//    Open;
//    EmptyDataSet;
//    if fdsMovimentoCaixaVLR_CARTAO.AsFloat > 0 then
//    begin
//      Append;
//      cdsFormaPagamentoMOEDA.AsString := 'Cart�o: ';
//      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CARTAO.AsFloat;
//      Post;
//    end;
//
//    if fdsMovimentoCaixaVLR_CHEQUE.AsFloat > 0 then
//    begin
//      Append;
//      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
//      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CHEQUE.AsFloat;
//      Post;
//    end;
//
//    if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
//    begin
//      Append;
//      cdsFormaPagamentoMOEDA.AsString := '  A Prazo: ';
//      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_NOTA.AsFloat;
//      Post;
//    end;
//
//    if fdsMovimentoCaixaVLR_CREDITO.AsFloat > 0 then
//    begin
//      Append;
//      cdsFormaPagamentoMOEDA.AsString := 'Cr�dito:';
//      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_CREDITO.AsFloat;
//      Post;
//    end;
//
//    Append;
//    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
//    cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaVLR_ENTRADA.AsFloat;
//    Post;
//
//    Append;
//    cdsFormaPagamentoMOEDA.AsString := 'Total Recebido:';
//    if tipoDescAcre = 2 then
//    begin
//      cdsFormaPagamentoVALOR.AsFloat :=
//        (fdsMovimentoCaixaVLR_CARTAO.AsFloat +
//        fdsMovimentoCaixaVLR_CHEQUE.AsFloat + fdsMovimentoCaixaVLR_NOTA.AsFloat
//        + fdsMovimentoCaixaVLR_CREDITO.AsFloat +
//        fdsMovimentoCaixaVLR_ENTRADA.AsFloat);
//    end
//    else
//    begin
//      cdsFormaPagamentoVALOR.AsFloat :=
//        (fdsMovimentoCaixaVLR_CARTAO.AsFloat +
//        fdsMovimentoCaixaVLR_CHEQUE.AsFloat + fdsMovimentoCaixaVLR_NOTA.AsFloat
//        + fdsMovimentoCaixaVLR_CREDITO.AsFloat +
//        fdsMovimentoCaixaVLR_ENTRADA.AsFloat);
//    end;
//
//    Post;
//
//    if fdsMovimentoCaixaTROCO.AsFloat > 0 then
//    begin
//      Append;
//      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
//      cdsFormaPagamentoVALOR.AsFloat := fdsMovimentoCaixaTROCO.AsFloat;
//      Post;
//    end;
//  end;

 with fdsMovCntReceberItem do
 begin
   close;
   Conditions.Clear;
   Conditions.AddCondition('IDMOVIMENTO','IDMOVIMENTO='+QuotedStr(fdsMovCntReceberID.AsString),true);
   Conditions.Apply;
   prepare;
   open;
 end;

  with cdsDescAcre do
  begin
    Close;
    Open;
    EmptyDataSet;

    if fdsMovCntReceberVLR_DESCONTO.AsFloat > 0 then
    begin
      Append;
      cdsDescAcreMOEDA.AsString := 'Devido ao Desconto de:';
      cdsDescAcreVALOR.AsFloat := fdsMovCntReceberVLR_DESCONTO.AsFloat;
      Post;
    end;
    if fdsMovCntReceberVLR_ACRESCIMO.AsFloat>0 then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Devido ao Acrescimo de:';
     cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_ACRESCIMO.AsFloat;
     Post;
    end;
    if (fdsMovCntReceberVLR_JUROS.AsFloat>0) and (fdsMovCntReceberUSAR_JUROS.AsString='S') then
    begin
     Append;
     cdsDescAcreMOEDA.AsString := 'Juros total:';
     cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS.AsFloat;
     Post;
    end;
    if (fdsMovCntReceberVLR_JUROS.AsFloat>0) and (fdsMovCntReceberUSAR_JUROS.AsString='S') then
    begin
     if fdsMovCntReceberVLR_JUROS_PAGO.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Pago:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_PAGO.AsFloat;
       Post;
     end;
     if fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat>0 then
     begin
       Append;
       cdsDescAcreMOEDA.AsString := 'Juros total Restante:';
       cdsDescAcreVALOR.AsFloat :=fdsMovCntReceberVLR_JUROS_RESTANTE.AsFloat;
       Post;
     end;
    end;
  end;
  with cdsFormaPagamento do
  begin
    Close;
    Open;
    EmptyDataSet;

    if fdsMovCntReceberVLR_CREDITO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cr�dito:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CREDITO.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_CARTAO_DT.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cart�o: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CARTAO_DT.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_CHEQUE.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Cheque: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_CHEQUE.AsFloat;
      Post;
    end;

    if fdsMovCntReceberVLR_NOTA.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := '  A Prazo: ';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_NOTA.AsFloat;
      Post;
    end;
    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Dinheiro:';
    cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_DINHEIRO.AsFloat;
    Post;

    Append;
    cdsFormaPagamentoMOEDA.AsString := 'Total Recebido:';
    cdsFormaPagamentoVALOR.AsFloat :=
        (fdsMovCntReceberVLR_CARTAO_DT.AsFloat +
        fdsMovCntReceberVLR_CHEQUE.AsFloat + fdsMovCntReceberVLR_NOTA.AsFloat
        + fdsMovCntReceberVLR_DINHEIRO.AsFloat);  //retirei o valor do cr�dito pois o Eraldo reclamou.
    Post;

    if fdsMovCntReceberVLR_TROCO.AsFloat > 0 then
    begin
      Append;
      cdsFormaPagamentoMOEDA.AsString := 'Troco:';
      cdsFormaPagamentoVALOR.AsFloat := fdsMovCntReceberVLR_TROCO.AsFloat;
      Post;
    end;
  end;

  cdsFormaPagamento.First;
  cdsDescAcre.First;


  if not(recebimento) then
  begin
    if (DM.impVenda = 1) or (DM.impVenda = 3) then
      ImprimirExtratoCliente;
    // ReimprimirNTCupom;

    if DM.impVenda = 2 then
      ReimprimirNota;
  end
  else
    ImprimeComprovanteCupom;
  cdsFormaPagamento.Close;
  cdsDescAcre.Close;
end;

procedure TfrmCntReceber.ReimprimirNota;
begin
  DM.valor := fdsCntReceberItensVALOR.AsString;
  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxCarnePagamentoM1.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmCntReceber.ReimprimirNTCupom;
var
  cArquivo: TextFile;
begin
  redComprovante.Clear;
  redComprovante.Lines.Add(' ' + nome);
  redComprovante.Lines.Add(' ' + endereco);
  redComprovante.Lines.Add(' ' + bairrocidade);
  redComprovante.Lines.Add(' TEL: ' + telefone);
  redComprovante.Lines.Add('');
  redComprovante.Lines.Add('     COMPROVANTE DE PAGAMENTO');
  redComprovante.Lines.Add('------------------------------------------');
  redComprovante.Lines.Add('');
  redComprovante.Lines.Add(' Cliente: ' + fdsClienteNOME.AsString);
  redComprovante.Lines.Add('');

  redComprovante.Lines.Add('        DADOS DO PARCELAMENTO');
  redComprovante.Lines.Add('');
  redComprovante.Lines.Add(' Doc:' + fdsCntReceberREFERENCIA.AsString +
    ' Valor: ' + FormatCurr('R$#,##0.00', fdsCntReceberVALOR.AsFloat) + ' Dt:' +
    fdsCntReceberDT_INC.AsString);
  redComprovante.Lines.Add(' Parcelas: ' + fdsCntReceberTOT_PARCELA.AsString);
  redComprovante.Lines.Add('');

  with fdsCntReceberItens do
  begin
    while not(Eof) do
    begin
      redComprovante.Lines.Add('     ' + FieldByName('PARCELA').AsString + '  '
        + FieldByName('DT_VENC').AsString + '  ' + FormatCurr('R$ #,##0.00',
        FieldByName('VALOR').AsFloat) + '  ' + FieldByName('POSICAO').AsString);
      Next;
    end;
  end;

  redComprovante.Lines.Add('');
  redComprovante.Lines.Add(' Dia: ' + DateToStr(now));
  redComprovante.Lines.Add('');

  try
    // AssignFile(cArquivo, 'COM3');
    AssignFile(cArquivo, impcupom);
    Rewrite(cArquivo);
    Writeln(cArquivo, redComprovante.Text);
    Writeln(cArquivo);
    CloseFile(cArquivo);

  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
    end;
    //
  end;

end;

procedure TfrmCntReceber.RetornarCntReceberItens;
begin
  with fdsCntReceberItens do
  begin
    Close;
    Conditions.Clear;

    if rgbPosicao.ItemIndex = 0 then
    begin
      Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
        QuotedStr('AB'), True);
    end
    else
    begin
      if rgbPosicao.ItemIndex = 1 then
      begin
        Conditions.AddCondition('POSICAO', 'RI.POSICAO = ' +
          QuotedStr('AB'), True);
        Conditions.AddCondition('DT_VENC', 'RI.DT_VENC > ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', now)), True);
      end
      else
      begin
        if rgbPosicao.ItemIndex = 2 then
        begin
          Conditions.AddCondition('POSICAO',
            'RI.POSICAO = ' + QuotedStr('AB'), True);
          Conditions.AddCondition('DT_VENC', 'RI.DT_VENC <= ' +
            QuotedStr(FormatDateTime('MM/DD/YYYY', now)), True);
        end
        else
        begin
          if rgbPosicao.ItemIndex = 3 then
          begin
            Conditions.AddCondition('POSICAO',
              'RI.POSICAO = ' + QuotedStr('PG'), True);
          end
        end;
      end;
    end;

    ParamByName('IDCLIENTE').AsInteger := idCliente;

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCntReceber.RetornaTotalReceber;
var
  utils: TUtils;
  posicao, tempTotal: string;
begin

  tempTotal := '';
  with qrySomaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VALOR - VALOR_PAGO - DESCONTO) AS TOTAL FROM CNT_RECEBER_ITEM RI ');

    if rgbPosicao.ItemIndex = 0 then
    begin
      SQL.Add('WHERE RI.POSICAO <> :POSICAO');
      ParamByName('POSICAO').AsString := 'PG';
    end
    else
    begin
      if rgbPosicao.ItemIndex = 1 then
      begin
        SQL.Add('WHERE RI.POSICAO = :POSICAO AND RI.DT_VENC > :DT_VENC');
        ParamByName('POSICAO').AsString := 'AB';
        ParamByName('DT_VENC').AsDateTime := now;
      end
      else
      begin
        if rgbPosicao.ItemIndex = 2 then
        begin
          SQL.Add('WHERE RI.POSICAO = :POSICAO AND RI.DT_VENC <= :DT_VENC');
          ParamByName('POSICAO').AsString := 'AB';
          ParamByName('DT_VENC').AsDateTime := now;
        end;
      end;
    end;

    SQL.Add(' AND RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE AND R.IDFORMA_PAG NOT IN (0, 2, 9))');
    ParamByName('IDCLIENTE').AsInteger := idCliente;

    Prepare;
    ExecQuery;

    tempTotal := qrySomaReceber.FieldByName('TOTAL').AsString;

    if tempTotal = '' then
      tempTotal := '0';
  end;

  lblTotReceber.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmCntReceber.RetornaTotalRecebido;
var
  utils: TUtils;
  tempTotal: string;
begin

  tempTotal := '';
  with qrySomaReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VALOR_PAGO) AS TOTAL FROM CNT_RECEBER_ITEM RI ');

    // SQL.Add('WHERE RI.POSICAO <> :POSICAO');
    // ParamByName('POSICAO').AsString := 'AB';

    SQL.Add('WHERE RI.IDRECEBER IN (SELECT ID FROM CNT_RECEBER R WHERE R.IDCLIENTE = :IDCLIENTE  AND R.IDFORMA_PAG <> 2)');
    ParamByName('IDCLIENTE').AsInteger := idCliente;

    Prepare;
    ExecQuery;

    tempTotal := qrySomaReceber.FieldByName('TOTAL').AsString;

    if tempTotal = '' then
      tempTotal := '0';
  end;

  lblTotRecebido.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmCntReceber.rgbPosicaoChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  Timer1.Enabled := True;
end;

procedure TfrmCntReceber.RzDBRadioGroup1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  Dm.fdsCaixa.Post;
  transCntReceber.CommitRetaining;
  with DM.fdsCaixa do
  begin
   Close;
   ParamByName('NUM_CAIXA').AsInteger := DM.numCaixa;
   ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
   Prepare;
   Open;
  end;
end;

procedure TfrmCntReceber.RzDBRadioGroup1Enter(Sender: TObject);
begin
 Dm.fdsCaixa.Edit;
end;

procedure TfrmCntReceber.btnReimprimorReceberClick(Sender: TObject);
begin
 with fdsMovCntReceber do
 begin
   close;
   Conditions.Clear;
   Conditions.AddCondition('ID','MR.ID = (SELECT MAX(ID)FROM MOVIMENTO_CNT_RECEBER WHERE IDCLIENTE ='+QuotedStr(IntToStr(fdsClienteID.AsInteger))+')',true);
   Conditions.Apply;
   Prepare;
   open;
 end;
 DM.valor:= fdsMovCntReceberVLR_TOTAL_PG.AsString;
 DM.dtInicio:=fdsMovCntReceberDT_MOVIMENTO.AsDateTime + fdsMovCntReceberHR_MOVIMENTO.AsDateTime;
 recebimento := True;
 Reimprimir;
end;

procedure TfrmCntReceber.Timer1Timer(Sender: TObject);
begin

  Timer1.Enabled := False;

  RetornarCntReceberItens;

  if rgbPosicao.ItemIndex = 0 then
  begin
    RetornaTotalReceber;
    RetornaTotalRecebido;
  end;

  if rgbPosicao.ItemIndex = 1 then
  begin
    RetornaTotalReceber;
    lblTotRecebido.Caption := 'R$ 0,00';
  end;

  if rgbPosicao.ItemIndex = 2 then
  begin
    RetornaTotalReceber;
    lblTotRecebido.Caption := 'R$ 0,00';
  end;

  if rgbPosicao.ItemIndex = 3 then
  begin
    RetornaTotalRecebido;
    lblTotReceber.Caption := 'R$ 0,00';
  end;

end;

end.
