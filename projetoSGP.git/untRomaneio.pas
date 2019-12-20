unit untRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzDBGrid, RzPanel, StdCtrls, RzCmboBx, RzDBCmbo, Mask,
  RzEdit, RzDBEdit, RzLabel, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs,
  RzButton, RzBckgnd, Provider, pFIBClientDataSet, DBClient, DBCtrls, frxClass,
  frxDBSet, FIBQuery, pFIBQuery, Vcl.Imaging.pngimage, Vcl.Menus,
  System.Actions, Vcl.ActnList, frxExportPDF, System.Math;

type
  TfrmRomaneio = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    tbsForm: TRzTabSheet;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblTituloTotal: TRzLabel;
    lblTotal: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    fdsRomaneio: TpFIBDataSet;
    dsRomaneio: TDataSource;
    RzGroupBox1: TRzGroupBox;
    lblCidade: TRzLabel;
    lblDtInc: TRzLabel;
    lblDtAlt: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel17: TRzLabel;
    edtDt_Inc: TRzDBEdit;
    edtDt_Alt: TRzDBEdit;
    edtID: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzGroupBox2: TRzGroupBox;
    pnlLancItens: TRzPanel;
    btnPedidoExcluir: TRzBitBtn;
    btnPedidoIncluir: TRzBitBtn;
    gdrItens: TJvDBGrid;
    fdsRomaneioID: TFIBBCDField;
    fdsRomaneioDT_INC: TFIBDateField;
    fdsRomaneioDT_ALT: TFIBDateField;
    fdsRomaneioPESO_TOTAL: TFIBBCDField;
    fdsRomaneioIDROTA: TFIBBCDField;
    fdsRomaneioIDMOTORISTA: TFIBBCDField;
    fdsRomaneioIDVEICULO: TFIBBCDField;
    fdsRomaneioKM_MAXIMA: TFIBBCDField;
    fdsRomaneioROTA: TFIBStringField;
    fdsRomaneioMOTORISTA: TFIBStringField;
    fdsRomaneioVEICULO: TFIBStringField;
    cdsItensRomaneio: TpFIBClientDataSet;
    fdsV_ItensRomaneio: TpFIBDataSet;
    btnInprimir: TRzBitBtn;
    fdsRomaneioSTATUS: TFIBStringField;
    dsItensRomaneioTemp: TDataSource;
    fdsRota: TpFIBDataSet;
    dsRota: TDataSource;
    fdsRotaID: TFIBBCDField;
    fdsRotaNOME: TFIBStringField;
    lcbRota: TRzDBLookupComboBox;
    fdsVeiculo: TpFIBDataSet;
    dsVeiculo: TDataSource;
    fdsVeiculoID: TFIBBCDField;
    fdsVeiculoNOME: TFIBStringField;
    lcbVeiculo: TRzDBLookupComboBox;
    lcbMotorista: TRzDBLookupComboBox;
    fdsMotorista: TpFIBDataSet;
    dsMotorista: TDataSource;
    fdsMotoristaID: TFIBBCDField;
    fdsMotoristaNOME: TFIBStringField;
    RzDBEdit1: TRzDBEdit;
    RzLabel4: TRzLabel;
    fdsVeiculoCARGA_MAX: TFIBBCDField;
    frxDBRomaneio: TfrxDBDataset;
    frxDBItensRomaneio: TfrxDBDataset;
    fdsPedidoItens: TpFIBDataSet;
    pgcStatus: TRzPageControl;
    tbsStatusEntregues: TRzTabSheet;
    tbsStatusTransportando: TRzTabSheet;
    tbsStatusAberto: TRzTabSheet;
    gdrRomaneioAberto: TJvDBGrid;
    gdrRomaneioTransporte: TJvDBGrid;
    gdrRomaneioEntregue: TJvDBGrid;
    btnTransportar: TRzBitBtn;
    btnEntregue: TRzBitBtn;
    fdsRomaneioDT_TRANSPORTE: TFIBDateField;
    fdsRomaneioDT_CONF_ENTREGA: TFIBDateField;
    RzLabel5: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    qryAtualizaPedido: TpFIBQuery;
    fdsRomaneioIDFILIAL: TFIBBCDField;
    fdsRomaneioENVIADO_WEB: TFIBStringField;
    cdsItensRomaneioNUMERO: TIntegerField;
    cdsItensRomaneioIDFILIAL_VENDA: TIntegerField;
    cdsItensRomaneioITEM: TSmallintField;
    cdsItensRomaneioPREFIXO: TStringField;
    fdsVendaRomaneio: TpFIBDataSet;
    cdsItensRomaneioPESO: TFloatField;
    cdsItensRomaneioNOMECLIENTE: TStringField;
    cdsItensRomaneioNOMECIDADE: TStringField;
    cdsItensRomaneioNOMEFILIAL: TStringField;
    fdsVendaRomaneioNUMERO: TFIBBCDField;
    fdsVendaRomaneioNOMEFILIAL: TFIBStringField;
    fdsVendaRomaneioNOMECLIENTE: TFIBStringField;
    fdsVendaRomaneioPESO: TFIBBCDField;
    fdsVendaRomaneioNOMECIDADE: TFIBStringField;
    fdsVendaRomaneioITEM: TFIBSmallIntField;
    fdsVendaRomaneioIDFILIAL: TFIBBCDField;
    cdsItensRomaneioIDFORMA_PAG: TIntegerField;
    cdsItensRomaneioIDCLIENTE: TIntegerField;
    cdsItensRomaneioVLR_TOTAL: TFloatField;
    fdsVendaRomaneioIDCLIENTE: TFIBBCDField;
    fdsVendaRomaneioVLR_TOTAL: TFIBBCDField;
    qryAtualizaVenda: TpFIBQuery;
    qryApagaItemRomaneio: TpFIBQuery;
    fdsItensRomaneio: TpFIBDataSet;
    fdsItensRomaneioIDROMANEIO: TFIBBCDField;
    fdsItensRomaneioITEM: TFIBSmallIntField;
    fdsItensRomaneioIDVENDA: TFIBBCDField;
    fdsItensRomaneioIDFILIAL: TFIBBCDField;
    fdsItensRomaneioDT_INC: TFIBDateField;
    fdsItensRomaneioENVIADO_WEB: TFIBStringField;
    fdsItensRomaneioIDFILIAL_PEDIDO: TFIBBCDField;
    fdsItensRomaneioPREFIXO: TFIBStringField;
    fdsV_ItensRomaneioNUMERO: TFIBBCDField;
    fdsV_ItensRomaneioIDROMANEIO: TFIBBCDField;
    fdsV_ItensRomaneioIDFILIAL: TFIBBCDField;
    fdsV_ItensRomaneioIDFILIAL_VENDA: TFIBBCDField;
    fdsV_ItensRomaneioITEM: TFIBSmallIntField;
    fdsV_ItensRomaneioPREFIXO: TFIBStringField;
    fdsV_ItensRomaneioPESO: TFIBBCDField;
    fdsV_ItensRomaneioNOMECLIENTE: TFIBStringField;
    fdsV_ItensRomaneioNOMECIDADE: TFIBStringField;
    fdsV_ItensRomaneioNOMEFILIAL: TFIBStringField;
    fdsV_ItensRomaneioIDCLIENTE: TFIBBCDField;
    fdsV_ItensRomaneioIDCIDADE: TFIBBCDField;
    fdsV_ItensRomaneioIDFORMA_PAG: TFIBBCDField;
    fdsV_ItensRomaneioVLR_TOTAL: TFIBBCDField;
    fdsV_ItensRomaneioBAIRRO: TFIBStringField;
    fdsRomaneioDT_ENTREGA: TFIBDateField;
    fdsV_ItensRomaneioTEM_EMPILHADEIRA: TFIBStringField;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    fdsVendedorIDFILIAL: TFIBBCDField;
    fdsItensAgrupadosRom: TpFIBDataSet;
    frxItensAgrupadosRom: TfrxDBDataset;
    fdsItensAgrupadosRomIDPROD_ITEM: TFIBBCDField;
    fdsItensAgrupadosRomNOMEPRODUTO: TFIBStringField;
    fdsItensAgrupadosRomSUM: TFIBBCDField;
    actlst1: TActionList;
    actAtual: TAction;
    actSintetico: TAction;
    actAnalitico: TAction;
    pmImprimir: TPopupMenu;
    RelatriodePedidosSinttico1: TMenuItem;
    RelatriodePedidosAnaltico1: TMenuItem;
    qrySql: TpFIBQuery;
    cdsItensRomaneioSTATUS: TStringField;
    actImpPedidos: TAction;
    ImprimirPedidosdoRomaneio1: TMenuItem;
    fdsV_ItensRomaneioDT_INC: TFIBDateField;
    fdsV_ItensRomaneioENDERECO: TFIBStringField;
    fdsV_ItensRomaneioTELEFONE: TFIBStringField;
    fdsV_ItensRomaneioCELULAR: TFIBStringField;
    fdsPedido: TpFIBDataSet;
    fdsPedidoID: TFIBBCDField;
    fdsPedidoDT_INC: TFIBDateField;
    fdsPedidoSTATUS: TFIBStringField;
    fdsPedidoIDCLIENTE: TFIBBCDField;
    fdsPedidoIDVENDEDOR: TFIBBCDField;
    fdsPedidoIDFORMA_PAG: TFIBBCDField;
    fdsPedidoVLR_TOTITEM: TFIBBCDField;
    fdsPedidoVLR_DESCONTO: TFIBBCDField;
    fdsPedidoVLR_FRETE: TFIBBCDField;
    fdsPedidoVLR_TOTAL: TFIBBCDField;
    fdsPedidoPESO: TFIBBCDField;
    fdsPedidoPREFIXO: TFIBStringField;
    fdsPedidoDT_ALT: TFIBDateField;
    fdsPedidoDT_CONFIRMACAO: TFIBDateField;
    fdsPedidoDT_FECHAMENTO: TFIBDateField;
    fdsPedidoTELEFONE: TFIBStringField;
    fdsPedidoNOTA: TFIBStringField;
    fdsPedidoCLIENTE: TFIBStringField;
    fdsPedidoVENDEDOR: TFIBStringField;
    fdsPedidoST: TFIBStringField;
    fdsPedidoKM_TOTAL: TFIBSmallIntField;
    fdsPedidoROTA: TFIBStringField;
    fdsPedidoRAZAOSOCIAL: TFIBStringField;
    fdsPedidoEMAIL: TFIBStringField;
    fdsPedidoENDERECO: TFIBStringField;
    fdsPedidoCEP: TFIBStringField;
    fdsPedidoBAIRRO: TFIBStringField;
    fdsPedidoCIDADE: TFIBStringField;
    fdsPedidoDOCUMENTO: TFIBStringField;
    fdsPedidoSUBTRIBUTARIA: TFIBBCDField;
    fdsPedidoFORMA_PAG: TFIBStringField;
    fdsPedidoCONTATO: TFIBStringField;
    fdsPedidoIDFILIAL: TFIBBCDField;
    fdsPedidoFILIAL: TFIBStringField;
    fdsPedidoENVIADO_WEB: TFIBStringField;
    fdsPedidoREFERENCIA: TFIBStringField;
    fdsPedidoPRAZO: TFIBStringField;
    fdsPedidoVISUALIZADO: TFIBStringField;
    fdsPedidoDT_PAGAMENTO: TFIBDateField;
    fdsPedidoIDPEDIDO_APP: TFIBBCDField;
    fdsPedidoCELULAR: TFIBStringField;
    frxDBItensPedido: TfrxDBDataset;
    fdsCntReceber_Item: TpFIBDataSet;
    fdsCntReceber_ItemREFERENCIA: TFIBStringField;
    fdsCntReceber_ItemPARCELA: TFIBStringField;
    fdsCntReceber_ItemDT_VENC: TFIBDateField;
    fdsCntReceber_ItemVALOR: TFIBBCDField;
    fdsV_ItensRomaneioPRAZO: TFIBStringField;
    cdsItensRomaneioPRAZO: TStringField;
    frxDBPedido: TfrxDBDataset;
    frxReceber_Item: TfrxDBDataset;
    fdsRomaneioVLR_TOTAL: TFIBBCDField;
    RzDBEdit4: TRzDBEdit;
    RzLabel6: TRzLabel;
    actImpListClie: TAction;
    ImprimirListagemdeClientes1: TMenuItem;
    fdsV_ItensRomaneioNUMEND: TFIBStringField;
    cdsPedidoItens: TpFIBClientDataSet;
    dspPedidoItens: TpFIBDataSetProvider;
    cdsPedidoItensIDVENDA: TpFIBClientBCDField;
    cdsPedidoItensIDFILIAL: TpFIBClientBCDField;
    cdsPedidoItensITEM: TSmallintField;
    cdsPedidoItensIDPROD_ITEM: TpFIBClientBCDField;
    cdsPedidoItensQTN: TpFIBClientBCDField;
    cdsPedidoItensVLR_UNITARIO: TpFIBClientBCDField;
    cdsPedidoItensVLR_DESC_ACRE: TpFIBClientBCDField;
    cdsPedidoItensVLR_TOTAL: TpFIBClientBCDField;
    cdsPedidoItensPESO: TpFIBClientBCDField;
    cdsPedidoItensNOME: TStringField;
    cdsPedidoItensPREFIXO: TStringField;
    frxPDFExport1: TfrxPDFExport;
    fdsFormaPagamento: TpFIBDataSet;
    fdsFormaPagamentoID: TFIBBCDField;
    fdsFormaPagamentoDT_INC: TFIBDateField;
    fdsFormaPagamentoDT_ALT: TFIBDateField;
    fdsFormaPagamentoNOME: TFIBStringField;
    fdsFormaPagamentoPARCELA_MAXIMA: TFIBSmallIntField;
    fdsFormaPagamentoMOEDA: TFIBStringField;
    fdsFormaPagamentoENVIADO_WEB: TFIBStringField;
    fdsCntReceber_ItemIDRECEBER: TFIBBCDField;
    procedure fdsRomaneioAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure VisualizaPorStatus(status: string);
    procedure PesquisaPedidoRota(status: string);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnPedidoIncluirClick(Sender: TObject);
    procedure btnPedidoExcluirClick(Sender: TObject);
    procedure gdrRomaneioAbertoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure gdrRomaneioAbertoKeyPress(Sender: TObject; var Key: Char);
    procedure tbsFormShow(Sender: TObject);
    procedure tbsStatusAbertoShow(Sender: TObject);
    procedure tbsStatusTransportandoShow(Sender: TObject);
    procedure tbsStatusEntreguesShow(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnTransportarClick(Sender: TObject);
    procedure gdrRomaneioTransporteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure gdrRomaneioEntregueDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnEntregueClick(Sender: TObject);
    procedure tbsTabelaShow(Sender: TObject);
    procedure fdsV_ItensRomaneioAfterScroll(DataSet: TDataSet);
    function MyLocateItem(chave1, chave2, chave3: string): Boolean;
    procedure actSinteticoExecute(Sender: TObject);
    procedure actAnaliticoExecute(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure actImpPedidosExecute(Sender: TObject);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actImpListClieExecute(Sender: TObject);
    procedure fdsPedidoAfterScroll(DataSet: TDataSet);
  private
    procedure EditaInsere;
    procedure GravaCancela(status: string);
    procedure RetornaItensRomaneio;
    procedure LancPendenciaPedido(idPedido: string; idFilialPedido: string);
    procedure FechaPedido(idPedido: string; idFilialPedido: string);
    procedure FechaVenda(idVenda: string; idFilialVenda: string);
    procedure RetornaItensPedido;
    procedure RetornaItensPedidoVenda(idVenda, idFilial, prefixo: string);
    procedure PesquisaPedidoID(status: string);
    function RetornaIdVendedor(idPedido, idFilial: String): Integer;
    procedure ImpRomaneioAnalitico(relatorio: string);
    procedure ImpRomaneioItensAgrupados;
    procedure ImpPedido(idPedido, idFilialPedido: string);
    procedure ImprimirPedidos;
  public

  end;

var
  frmRomaneio: TfrmRomaneio;
  pesoTotal: Double;
  kmmax: Double;
  alterandoRomaneio: Boolean;
  listaItenExcluidos: array of Integer;
  imprimir: Boolean;
  statusRomaneio: string[2];
  idRomaneio: Integer;

implementation

uses untData, uUtils, untPesqPedido, untPesqRota, untRetornoItensPedido,
  untVendaFinalizacao, untPesqEntregar, untPrincipal;

{$R *.dfm}

procedure TfrmRomaneio.actAnaliticoExecute(Sender: TObject);
begin
  ImpRomaneioAnalitico('frxRomaneioAnalitico.fr3');
end;

procedure TfrmRomaneio.actImpListClieExecute(Sender: TObject);
begin
  ImpRomaneioAnalitico('frxRomaneioListaClientes.fr3');
end;

procedure TfrmRomaneio.actImpPedidosExecute(Sender: TObject);
begin
  ImprimirPedidos;
end;

procedure TfrmRomaneio.actSinteticoExecute(Sender: TObject);
begin
  ImpRomaneioItensAgrupados;
end;

procedure TfrmRomaneio.btnAlterarClick(Sender: TObject);
begin
  fdsRomaneio.Edit;
  fdsRomaneioDT_ALT.AsDateTime := Now;
  EditaInsere;
  alterandoRomaneio := True;
end;

procedure TfrmRomaneio.btnCancelarClick(Sender: TObject);
var
  statusTemp: string[2];
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar a  Inclus�o/Altera��o do Romaneio atual?'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        statusTemp := fdsRomaneioSTATUS.AsString;
        fdsRomaneio.Cancel;
        DM.Conexao.RollbackRetaining;
        GravaCancela(statusTemp);
      end;
  end;
end;

procedure TfrmRomaneio.btnDeleteClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir o registro atual?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsRomaneio.Delete;
        DM.Conexao.CommitRetaining;
        lblTotal.Caption := intToStr(fdsRomaneio.RecordCount);
      end;
  end;
end;

procedure TfrmRomaneio.btnEntregueClick(Sender: TObject);
var
  fecharVendas: Boolean;
  idVenda, idFilialVenda, msgFinal: string;
begin
  fecharVendas := True;
  msgFinal := 'Romaneio fechado com sucesso!';
  if (cdsItensRomaneio.IsEmpty) then
  begin
    RetornaItensRomaneio;
  end;

  { Case MessageBox(Application.Handle, Pchar('Deseja faturar e imprimir as vendas agora?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes: begin
    fecharPedidos := True;
    end;
    end; }

  if fecharVendas then
  begin
    cdsItensRomaneio.First;
    while not(cdsItensRomaneio.Eof) do
    begin
      idVenda := cdsItensRomaneioNUMERO.AsString;
      idFilialVenda := cdsItensRomaneioIDFILIAL_VENDA.AsString;

      { Case MessageBox(Application.Handle, Pchar('Houve alguma pend�ncia no pedido: PD' + idPedido + ' da filial n� ' + idFilialPedido + ' ?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes: begin
        LancPendenciaPedido(idPedido, idFilialPedido);
        end;
        end; }

      if cdsItensRomaneioPREFIXO.AsString = 'PD' then
        FechaPedido(idVenda, idFilialVenda)
      else
        FechaVenda(idVenda, idFilialVenda);

      cdsItensRomaneio.Next;
    end;
  end
  else
    msgFinal := msgFinal + ' N�o se esque�a de fechar cada pedido manualmente.';

  fdsRomaneio.Edit;
  fdsRomaneioDT_CONF_ENTREGA.AsDateTime := Now;
  fdsRomaneioSTATUS.AsString := 'ET';
  fdsRomaneio.Post;
  DM.Conexao.CommitRetaining;

  Application.MessageBox(Pchar(msgFinal), 'Sucesso',
    MB_OK + MB_ICONEXCLAMATION);
  VisualizaPorStatus('TR');
  tbsStatusTransportando.Show;
end;

procedure TfrmRomaneio.btnFirstClick(Sender: TObject);
begin
  fdsRomaneio.Prior;
end;

procedure TfrmRomaneio.btnGravarClick(Sender: TObject);
var
  utils: TUtils;
  i: Smallint;
  campoVazio: Boolean;
  tipoOperacao: string;
  statusTemp: string[2];
begin
  campoVazio := False;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Tag = 15) then
    begin
      if utils.VerificaCampoObrigatorio(TRzDBEdit(Components[i])) then
        campoVazio := True;
    end;
  end;

  if campoVazio then
    Application.MessageBox('Existem campos obrigat�rios sem preencher.',
      'Ante��o', MB_OK + MB_ICONERROR)
  else
  begin

    if cdsItensRomaneio.RecordCount = 0 then
    begin
      Application.MessageBox
        ('Voc� n�o pode gravar um Romaneio sem pedidos para entrega.',
        'Ante��o', MB_OK + MB_ICONERROR);
      btnPedidoIncluir.SetFocus;
      Abort;
    end;

    // Retorna todos os Itens do romaneio caso ele j� exista
    with fdsItensRomaneio do
    begin
      Close;
      ParamByName('IDROMANEIO').AsInteger := fdsRomaneioID.AsInteger;
      ParamByName('IDFILIAL').AsInteger := fdsRomaneioIDFILIAL.AsInteger;
      Prepare;
      Open;
    end;

    if fdsRomaneio.State = dsInsert then
      tipoOperacao := 'insert'
    else
      tipoOperacao := 'edit';

    statusTemp := fdsRomaneioSTATUS.AsString;
    fdsRomaneio.Post;
    DM.Conexao.CommitRetaining;

    cdsItensRomaneio.First;

    if tipoOperacao = 'insert' then
    begin
      fdsRomaneio.Close;
      fdsRomaneio.OrderClause := 'ID';
      fdsRomaneio.Open;
      fdsRomaneio.Last;
      idRomaneio := fdsRomaneioID.AsInteger;
    end
    else
    begin
      // Verifica se teve algum item exclu�do
      if Length(listaItenExcluidos) > 0 then
      begin
        for i := 0 to Length(listaItenExcluidos) - 1 do
        begin
          if fdsItensRomaneio.Locate('ITEM', intToStr(listaItenExcluidos[i]), [])
          then
            fdsItensRomaneio.Delete;
        end;
      end;
    end;

    while not(cdsItensRomaneio.Eof) do
    begin
      fdsItensRomaneio.Open;
      if tipoOperacao = 'edit' then
      begin
        if fdsItensRomaneio.Locate('IDVENDA; IDFILIAL_PEDIDO; PREFIXO',
          VarArrayOf([cdsItensRomaneioNUMERO.AsString,
          cdsItensRomaneioIDFILIAL_VENDA.AsString,
          cdsItensRomaneioPREFIXO.AsString]), []) then
        begin
          cdsItensRomaneio.Next;
          Continue;
        end;
      end;

      fdsItensRomaneio.Insert;
      fdsItensRomaneioIDROMANEIO.AsInteger := idRomaneio;
      fdsItensRomaneioIDVENDA.AsInteger := cdsItensRomaneioNUMERO.AsInteger;
      fdsItensRomaneioIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      fdsItensRomaneioIDFILIAL_PEDIDO.AsInteger :=
        cdsItensRomaneioIDFILIAL_VENDA.AsInteger;
      fdsItensRomaneioPREFIXO.AsString := cdsItensRomaneioPREFIXO.AsString;
      fdsItensRomaneio.Post;

      if (cdsItensRomaneioPREFIXO.AsString = 'PD') then
      begin
        with qrySql do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE PEDIDO SET STATUS = ' + QuotedStr('CF') +
            ', DT_CONFIRMACAO = CURRENT_DATE' + ', VISUALIZADO = ' +
            QuotedStr('S') + ' WHERE ID = ' + cdsItensRomaneioNUMERO.AsString +
            ' AND IDFILIAL = ' + cdsItensRomaneioIDFILIAL_VENDA.AsString);
          Prepare;
          ExecQuery;
        end;
      end;
      cdsItensRomaneio.Next;
    end;

    DM.Conexao.CommitRetaining;
    GravaCancela(statusTemp);
  end;
end;

procedure TfrmRomaneio.btnIncluirClick(Sender: TObject);
begin
  alterandoRomaneio := True;
  cdsItensRomaneio.EmptyDataSet;
  fdsRomaneio.Append;
  fdsRomaneioDT_INC.AsDateTime := Now;
  fdsRomaneioSTATUS.AsString := 'AB';
  fdsRomaneioIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsRomaneioENVIADO_WEB.AsString := 'N';
  EditaInsere;
  pesoTotal := 0;
  kmmax := 0;
end;

procedure TfrmRomaneio.btnInprimirClick(Sender: TObject);
begin
  pmImprimir.Popup(frmRomaneio.Left + 190, frmRomaneio.top + 100);
end;

procedure TfrmRomaneio.btnLastClick(Sender: TObject);
begin
  fdsRomaneio.Last;
end;

procedure TfrmRomaneio.btnNextClick(Sender: TObject);
begin
  fdsRomaneio.Next;
end;

procedure TfrmRomaneio.btnPedidoExcluirClick(Sender: TObject);
begin
  if cdsItensRomaneio.RecordCount > 0 then
  begin
    kmmax := 0;
    pesoTotal := pesoTotal - cdsItensRomaneioPESO.AsFloat;
    fdsRomaneioPESO_TOTAL.AsFloat := pesoTotal;
    fdsRomaneioVLR_TOTAL.AsFloat := fdsRomaneioVLR_TOTAL.AsFloat -
      cdsItensRomaneioVLR_TOTAL.AsFloat;

    if fdsRomaneio.State = dsEdit then
    begin
      SetLength(listaItenExcluidos, Length(listaItenExcluidos) + 1);
      listaItenExcluidos[Length(listaItenExcluidos) - 1] :=
        cdsItensRomaneioITEM.AsInteger;
    end;

    cdsItensRomaneio.Delete;

    cdsItensRomaneio.First;
    { while not(cdsItensRomaneio.Eof) do
      begin
      if kmmax < cdsItensRomaneioKM_TOTAL.AsFloat then
      kmmax := cdsItensRomaneioKM_TOTAL.AsFloat;
      cdsItensRomaneio.Next;
      end;

      fdsRomaneioKM_MAXIMA.AsFloat := kmmax;
    }
  end;
end;

procedure TfrmRomaneio.btnPedidoIncluirClick(Sender: TObject);
var
  incluirItem: Boolean;
begin
  Try
    incluirItem := True;
    frmPesqEntregar := TfrmPesqEntregar.Create(nil);
    frmPesqEntregar.idRota := fdsRomaneioIDROTA.AsInteger;
    frmPesqEntregar.ShowModal;
  Finally
    if frmPesqEntregar.ModalResult = mrOk then
    begin
      frmPesqEntregar.cdsEntregar.First;
      while not(frmPesqEntregar.cdsEntregar.Eof) do
      begin
        if frmPesqEntregar.cdsEntregarSELECIONAR.AsString = 'S' then
        begin
          pesoTotal := pesoTotal + frmPesqEntregar.cdsEntregarPESO.AsFloat;

          if pesoTotal > fdsVeiculoCARGA_MAX.AsFloat then
          begin
            Case MessageBox(Application.Handle,
              Pchar('Carga m�xima ultrapassada.Deseja incluir o pedido assim mesmo?'),
              'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
              IDNO:
                begin
                  incluirItem := False;
                  pesoTotal := pesoTotal -
                    frmPesqEntregar.cdsEntregarPESO.AsFloat;
                end;
            end;
          end;

          if incluirItem = True then
          begin
            // if cdsItensRomaneio.Locate('NUMERO; IDFILIAL_VENDA; PREFIXO', VarArrayOf([frmPesqEntregar.fdsEntregarNUMERO.AsString, frmPesqEntregar.fdsEntregarIDFILIAL.AsString, frmPesqEntregar.fdsEntregarPREFIXO.AsString]), []) then
            if MyLocateItem(frmPesqEntregar.cdsEntregarNUMERO.AsString,
              frmPesqEntregar.cdsEntregarIDFILIAL.AsString,
              frmPesqEntregar.cdsEntregarPREFIXO.AsString) then
            begin
              Application.MessageBox
                (Pchar('O Pedido ' + frmPesqEntregar.cdsEntregarNUMERO.AsString
                + ' j� est� incluso neste Romaneio.'), 'Ante��o',
                MB_OK + MB_ICONERROR);
              pesoTotal := pesoTotal - frmPesqEntregar.cdsEntregarPESO.AsFloat;
            end
            else
            begin
              cdsItensRomaneio.Append;
              cdsItensRomaneioPREFIXO.AsString :=
                frmPesqEntregar.cdsEntregarPREFIXO.AsString;
              cdsItensRomaneioNUMERO.AsInteger :=
                frmPesqEntregar.cdsEntregarNUMERO.AsInteger;
              cdsItensRomaneioIDFILIAL_VENDA.AsInteger :=
                frmPesqEntregar.cdsEntregarIDFILIAL.AsInteger;
              cdsItensRomaneioSTATUS.AsString :=
                frmPesqEntregar.cdsEntregarStatus.AsString;
              cdsItensRomaneioNOMECLIENTE.AsString :=
                frmPesqEntregar.cdsEntregarNOMECLIENTE.AsString;
              cdsItensRomaneioPESO.AsFloat :=
                frmPesqEntregar.cdsEntregarPESO.AsFloat;
              cdsItensRomaneioNOMECIDADE.AsString :=
                frmPesqEntregar.cdsEntregarNOMECIDADE.AsString;
              cdsItensRomaneioVLR_TOTAL.AsFloat :=
                frmPesqEntregar.cdsEntregarVlr_Total.AsFloat;
              cdsItensRomaneio.Post;

              // if kmmax < cdsItensRomaneioKM_TOTAL.AsFloat then
              // kmmax := cdsItensRomaneioKM_TOTAL.AsFloat;
              kmmax := 0;
              fdsRomaneioVLR_TOTAL.AsFloat := fdsRomaneioVLR_TOTAL.AsFloat +
                cdsItensRomaneioVLR_TOTAL.AsFloat;
              fdsRomaneioPESO_TOTAL.AsFloat := pesoTotal;
              fdsRomaneioKM_MAXIMA.AsFloat := kmmax;
            end;
          end;
        end;
        frmPesqEntregar.cdsEntregar.Next;
      end;
    end;
    frmPesqEntregar.Free;
    btnPedidoIncluir.SetFocus;
  End;
end;

procedure TfrmRomaneio.btnPriorClick(Sender: TObject);
begin
  fdsRomaneio.First;
end;

procedure TfrmRomaneio.btnTodosClick(Sender: TObject);
begin
  VisualizaPorStatus(statusRomaneio);
end;

procedure TfrmRomaneio.btnTransportarClick(Sender: TObject);
var
  idVenda, idFilialVenda: string;
  fecharVendas, continuar: Boolean;
  prazo: Double;
  utils: TUtils;
begin
  fecharVendas := False;
  continuar := False;
  if fdsRomaneio.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente marcar como em Transporte esse Romaneio?'),
      'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          continuar := True;
        end;
    end;
  end;

  if continuar then
  begin
    fdsRomaneio.Edit;
    fdsRomaneioDT_TRANSPORTE.AsDateTime := Now;
    fdsRomaneioSTATUS.AsString := 'TR';
    idRomaneio := fdsRomaneioID.AsInteger;
    fdsRomaneio.Post;
    DM.Conexao.CommitRetaining;

    // Case MessageBox(Application.Handle, Pchar('Deseja faturar e imprimir as vendas agora?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    // idYes: begin
    fecharVendas := True;
    // end;
    // end;

    if fecharVendas then
    begin
      if (cdsItensRomaneio.IsEmpty) then
      begin
        RetornaItensRomaneio;
      end;

      cdsItensRomaneio.First;
      while not(cdsItensRomaneio.Eof) do
      begin
        prazo := utils.ValidaInteiroFloat(cdsItensRomaneioPRAZO.AsString, 'I');
        idVenda := cdsItensRomaneioNUMERO.AsString;
        idFilialVenda := cdsItensRomaneioIDFILIAL_VENDA.AsString;

        if cdsItensRomaneioPREFIXO.AsString = 'PD' then
        begin
          if prazo > 0 then
            FechaPedido(idVenda, idFilialVenda);
          // ImpPedido(idVenda, idFilialVenda);
        end
        else
          FechaVenda(idVenda, idFilialVenda);

        cdsItensRomaneio.Next;
      end;
    end;

    ImprimirPedidos;

    GravaCancela('TR');
  end;

end;

procedure TfrmRomaneio.EditaInsere;
var
  i: Smallint;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex := 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    end;

    if (Components[i] is TRzBitBtn) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := False
      else
        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;
  idRomaneio := fdsRomaneioID.AsInteger;
  lcbRota.SetFocus;
end;

procedure TfrmRomaneio.fdsPedidoAfterScroll(DataSet: TDataSet);
var
  faltando, i: Integer;
begin
  faltando := 0;
  if imprimir = True then
  begin
    cdsPedidoItens.Close;
    with fdsPedidoItens do
    begin
      Close;
      // ParamByName('IDROMANEIO').AsString := fdsRomaneioID.AsString;
      ParamByName('IDVENDA').AsString := fdsPedidoID.AsString;
      ParamByName('IDFILIAL').AsString := fdsPedidoIDFILIAL.AsString;
      ParamByName('PREFIXO').AsString := 'PD';
      Prepare;
      Open;
      First;
    end;
    cdsPedidoItens.Open;
    DM.totItens := intToStr(cdsPedidoItens.RecordCount);

    if frmPrincipal.tipoPedido = '1' then
    begin
      if cdsPedidoItens.RecordCount <= 29 then
      // Ao todo cabem 25 itens na primeira p�gina de um pedido
        faltando := 30 - (cdsPedidoItens.RecordCount mod 30)
      else if cdsPedidoItens.RecordCount > 31 then
        faltando := 72 - (cdsPedidoItens.RecordCount mod 72);
    end
    else
    begin
      if cdsPedidoItens.RecordCount <= 24 then
      // Ao todo cabem 25 itens na primeira p�gina de um pedido
        faltando := 25 - (cdsPedidoItens.RecordCount mod 25)
      else if cdsPedidoItens.RecordCount > 26 then
        faltando := 64 - (cdsPedidoItens.RecordCount mod 64);
    end;

    if faltando > 0 then
    begin
      for i := 1 to faltando do
      begin
        cdsPedidoItens.Append;
        cdsPedidoItensIDFILIAL.AsInteger := 1;
        cdsPedidoItens.Post;
      end;
    end;

    with fdsCntReceber_Item do
    begin
      Close;
      ParamByName('IDVENDA').AsString := fdsPedidoID.AsString;
      ParamByName('IDFILIAL').AsString := fdsPedidoIDFILIAL.AsString;
      ParamByName('TIPO_VENDA').AsString := 'PD';
      Prepare;
      Open;
    end;

    // with fdsFormaPagamento do
    // begin
    // Close;
    // Conditions.Clear;
    // Conditions.AddCondition('ID', 'ID = ' + fdsPedidoIDFORMA_PAG.AsString, True);
    // Conditions.Apply;
    // Prepare;
    // Open;
    // DM.formaPagamento := fdsFormaPagamentoNOME.AsString;
    // end;

    fdsFormaPagamento.Open;
    fdsFormaPagamento.Locate('ID', fdsPedidoIDFORMA_PAG.AsString, []);

    DM.formaPagamento := fdsFormaPagamentoNOME.AsString;
    if not(Trim(fdsPedidoPRAZO.AsString) = EmptyStr) then
      DM.formaPagamento := fdsPedidoFORMA_PAG.AsString + ' ' +
        fdsPedidoPRAZO.AsString + ' dias';

    if fdsCntReceber_Item.RecordCount > 0 then
    begin
      with qrySql do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT VALOR FROM CNT_RECEBER WHERE ID = ' +
          fdsCntReceber_ItemIDRECEBER.AsString);
        Prepare;
        ExecQuery;
      end;
      DM.vlrTotal := qrySql.FieldByName('VALOR').AsString;
      DM.dtVencimento := fdsCntReceber_ItemDT_VENC.AsString;

      if (fdsPedidoIDFORMA_PAG.AsInteger = 10) and
        (DM.fdsConfigTARIFA_BOLETO.AsFloat > 0) then
        DM.formaPagamento := DM.formaPagamento + ' - Tarifa: ' +
          FormatFloat('R$ #,##0.00', DM.fdsConfigTARIFA_BOLETO.AsFloat);
    end
    else
    begin
      DM.vlrTotal := fdsPedidoVLR_TOTAL.AsString;
      if (fdsPedidoIDFORMA_PAG.AsInteger = 1) then
        DM.dtVencimento := DateToStr(Now)
      else
        DM.dtVencimento := '';
    end;
  end;
end;

procedure TfrmRomaneio.fdsRomaneioAfterScroll(DataSet: TDataSet);
begin
  if not(imprimir) then
  begin
    pesoTotal := fdsRomaneioPESO_TOTAL.AsFloat;
    kmmax := fdsRomaneioKM_MAXIMA.AsFloat;

    if alterandoRomaneio = False then
    begin
      statusRomaneio := fdsRomaneioSTATUS.AsString;
      if statusRomaneio = 'AB' then
      begin
        btnTransportar.Enabled := True;
        btnEntregue.Enabled := False;
        btnAlterar.Enabled := True;
        btnDelete.Enabled := True;
      end
      else
      begin
        if statusRomaneio = 'TR' then
        begin
          btnTransportar.Enabled := False;
          btnEntregue.Enabled := True;
          btnAlterar.Enabled := False;
          btnDelete.Enabled := False;
        end
        else
        begin
          if statusRomaneio = 'ET' then
          begin
            btnTransportar.Enabled := False;
            btnEntregue.Enabled := False;
            btnAlterar.Enabled := False;
            btnDelete.Enabled := False;
          end
        end;
      end;
    end;

    if pgcControl.ActivePageIndex = 1 then
    begin
      RetornaItensRomaneio;
    end;
  end;
end;

procedure TfrmRomaneio.fdsV_ItensRomaneioAfterScroll(DataSet: TDataSet);
begin
  if imprimir then
  begin
    RetornaItensPedidoVenda(fdsV_ItensRomaneioNUMERO.AsString,
      fdsV_ItensRomaneioIDFILIAL_VENDA.AsString,
      fdsV_ItensRomaneioPREFIXO.AsString);
  end;
end;

procedure TfrmRomaneio.FechaPedido(idPedido: string; idFilialPedido: string);
var
  prazo: Double;
  idFormaPag: Integer;
  utils: TUtils;
begin
  idFormaPag := cdsItensRomaneioIDFORMA_PAG.AsInteger;

  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS QTN FROM CNT_RECEBER WHERE IDVENDA = ' +
      idPedido + ' AND TIPO_VENDA = ' + QuotedStr('PD') + ' AND IDFILIAL = ' +
      idFilialPedido);
    Prepare;
    ExecQuery;
  end;

  if qrySql.FieldByName('QTN').AsInteger = 0 then
  begin
    Try
      prazo := utils.ValidaInteiroFloat(cdsItensRomaneioPRAZO.AsString, 'I');

      frmVendaFinalizacao := TfrmVendaFinalizacao.Create(nil);
      frmVendaFinalizacao.idVenda := StrToInt(idPedido);
      frmVendaFinalizacao.tipoVenda := 'PD';
      frmVendaFinalizacao.idVendedor := RetornaIdVendedor(idPedido,
        idFilialPedido);
      if frmVendaFinalizacao.idVendedor <> 1 then
        frmVendaFinalizacao.edtIdVendedor.Enabled := False;
      frmVendaFinalizacao.edtIDVenda.Text := idPedido;
      frmVendaFinalizacao.edtPrefixoVenda.Text := frmVendaFinalizacao.tipoVenda;
      frmVendaFinalizacao.cliente := cdsItensRomaneioNOMECLIENTE.AsString;
      frmVendaFinalizacao.idFormaPag := idFormaPag;
      frmVendaFinalizacao.idCliente := cdsItensRomaneioIDCLIENTE.AsInteger;

      // if (fdsPedidoIDFORMA_PAG.AsInteger = 10) then
      // frmVendaFinalizacao.valorDoc := RoundTo(cdsItensRomaneioVLR_TOTAL.AsFloat + DM.fdsConfigTARIFA_BOLETO.AsFloat, -2)
      // else
      frmVendaFinalizacao.valorDoc := cdsItensRomaneioVLR_TOTAL.AsFloat;

      frmVendaFinalizacao.edtCliente.Text :=
        cdsItensRomaneioNOMECLIENTE.AsString;

      if prazo > 0 then
        frmVendaFinalizacao.prazo := prazo;

      frmVendaFinalizacao.ShowModal;
    Finally
      if frmVendaFinalizacao.ModalResult = mrOk then
      begin
        with qrySql do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT IDFORMA_PAG FROM CNT_RECEBER WHERE IDVENDA = ' +
            idPedido + ' AND TIPO_VENDA = ' + QuotedStr('PD') +
            ' AND IDFILIAL = ' + idFilialPedido);
          Prepare;
          ExecQuery;
        end;

        if qrySql.RecordCount > 0 then
          idFormaPag := qrySql.FieldByName('IDFORMA_PAG').AsInteger;

        // idFormaPag := utils.ValidaInteiroFloat(qrySql.FieldByName('IDFORMA_PAG').AsString, 'I');

        With qryAtualizaPedido do
        begin
          ParamByName('DT_FECHAMENTO').AsDateTime := Now;
          ParamByName('STATUS').AsString := 'FC';
          ParamByName('IDFORMA_PAG').AsFloat := idFormaPag;
          ParamByName('ID').AsString := idPedido;
          ParamByName('IDFILIAL').AsString := idFilialPedido;
          Prepare;
          ExecQuery;
        end;
        DM.Conexao.CommitRetaining;
      end;

      frmVendaFinalizacao.Free;
    End;
  end;
end;

procedure TfrmRomaneio.FechaVenda(idVenda, idFilialVenda: string);
begin
  With qryAtualizaVenda do
  begin
    ParamByName('DT_FECHAMENTO').AsDateTime := Now;
    ParamByName('STATUS').AsString := 'FC';
    ParamByName('ID').AsString := idVenda;
    ParamByName('IDFILIAL').AsString := idFilialVenda;
    Prepare;
    ExecQuery;
  end;
  DM.Conexao.CommitRetaining;
end;

procedure TfrmRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdsRomaneio.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele a Inclus�o/Altera��o do Romaneio antes de sair.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    Action := caFree;
    frmRomaneio := nil;
  end;
end;

procedure TfrmRomaneio.FormCreate(Sender: TObject);
begin
  imprimir := False;
  alterandoRomaneio := False;
  tbsTabela.Show;
  tbsStatusAberto.Show;
  cdsItensRomaneio.CreateDataSet;
  lblTotal.Caption := intToStr(fdsRomaneio.RecordCount);
  fdsRota.Open;
  fdsRota.Last;
  fdsRota.First;
  fdsVeiculo.Open;
  fdsVeiculo.Last;
  fdsVeiculo.First;
  fdsMotorista.Open;
  fdsMotorista.Last;
  fdsMotorista.First;
end;

procedure TfrmRomaneio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmRomaneio.GravaCancela(status: string);
var
  i: Smallint;
  utils: TUtils;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).Pages[0].TabVisible := True;
      TRzPageControl(Components[i]).ActivePageIndex := 0;
    end
    else
    begin
      if (Components[i] is TRzBitBtn) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := True
        else
          TRzBitBtn(Components[i]).Enabled := False;
      end
      else
      begin
        if Components[i].Tag = 15 then
        begin
          if (Components[i] is TRzEdit) then
            utils.ResetColorCampo(TRzDBEdit(Components[i]), True)
          else
            utils.ResetColorCampo(TRzDBEdit(Components[i]), False);
        end;
      end;
    end;
  end;
  SetLength(listaItenExcluidos, 0);
  alterandoRomaneio := False;

  if status = 'AB' then
    tbsStatusAberto.Show
  else if status = 'TR' then
    tbsStatusTransportando.Show
  else
    tbsStatusEntregues.Show;

  fdsRomaneio.Locate('ID', idRomaneio, []);
end;

procedure TfrmRomaneio.ImpPedido(idPedido, idFilialPedido: string);
begin
  with fdsPedido do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDPEDIDO', 'P.ID = ' + idPedido, True);
    Conditions.AddCondition('IDFILIAL', 'P.IDFILIAL = ' + idFilialPedido, True);
    ParamByName('IDROMANEIO').AsString := fdsRomaneioID.AsString;
    Prepare;
    Open;
  end;

  RetornaItensPedidoVenda(idPedido, idFilialPedido, 'PD');

  with fdsCntReceber_Item do
  begin
    Close;
    ParamByName('IDVENDA').AsString := idPedido;
    ParamByName('IDFILIAL').AsString := idFilialPedido;
    ParamByName('TIPO_VENDA').AsString := 'PD';
    Prepare;
    Open;
  end;

  DM.frxReport1.Clear;
  if fdsCntReceber_Item.RecordCount > 0 then
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxPedidoM2.fr3')
  else
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxPedidoM1.fr3');

  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmRomaneio.ImprimirPedidos;
begin
  imprimir := True;
  with fdsPedido do
  begin
    Close;
    ParamByName('IDROMANEIO').AsString := fdsRomaneioID.AsString;
    Prepare;
    Open;
  end;

  DM.frxReport1.Clear;

  if frmPrincipal.tipoPedido = '1' then
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxPedido.fr3')
  else
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '/Relatorios/frxPedidoM1_Novo.fr3');

  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  imprimir := False;
end;

procedure TfrmRomaneio.ImpRomaneioAnalitico(relatorio: string);
var
  idTemp, idFilialTemp: string;
  statusTemp: string[2];
begin

  idTemp := fdsRomaneioID.AsString;
  idFilialTemp := fdsRomaneioIDFILIAL.AsString;
  statusTemp := fdsRomaneioSTATUS.AsString;

  imprimir := True;

  with fdsRomaneio do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDROMANEIO', 'RM.ID = ' + idTemp, True);
    Conditions.AddCondition('IDFILIA', 'RM.IDFILIAL = ' + idFilialTemp, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  RetornaItensRomaneio;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/' + relatorio);
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  imprimir := False;

  // with fdsRomaneio do
  // begin
  // Close;
  // Conditions.Clear;
  // Conditions.Apply;
  // Prepare;
  // Open;
  // end;

  tbsTabela.Show;

  if statusTemp = 'AB' then
  begin
    VisualizaPorStatus('AB');
    tbsStatusAberto.Show;
  end;

  if statusTemp = 'TR' then
  begin
    VisualizaPorStatus('TR');
    tbsStatusTransportando.Show;
  end;

  if statusTemp = 'ET' then
  begin
    VisualizaPorStatus('ET');
    tbsStatusEntregues.Show;
  end;

  with fdsRomaneio do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;

  fdsRomaneio.Locate('ID', idTemp, []);
end;

procedure TfrmRomaneio.ImpRomaneioItensAgrupados;
var
  idTemp, idFilialTemp: string;
  statusTemp: string[2];
begin
  statusTemp := fdsRomaneioSTATUS.AsString;
  idTemp := fdsRomaneioID.AsString;
  idFilialTemp := fdsRomaneioIDFILIAL.AsString;
  imprimir := True;

  with fdsRomaneio do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDROMANEIO', 'RM.ID = ' + idTemp, True);
    Conditions.AddCondition('IDFILIA', 'RM.IDFILIAL = ' + idFilialTemp, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  with fdsItensAgrupadosRom do
  begin
    Close;
    ParamByName('IDROMANEIO').AsString := idTemp;
    ParamByName('IDFILIAL').AsString := idFilialTemp;
    Prepare;
    Open;
  end;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxRomaneioItensAgrupados.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);

  imprimir := False;
  tbsTabela.Show;

  if statusTemp = 'AB' then
  begin
    VisualizaPorStatus('AB');
    tbsStatusAberto.Show;
  end;

  if statusTemp = 'TR' then
  begin
    VisualizaPorStatus('TR');
    tbsStatusTransportando.Show;
  end;

  if statusTemp = 'ET' then
  begin
    VisualizaPorStatus('ET');
    tbsStatusEntregues.Show;
  end;

  fdsItensAgrupadosRom.Close;

  with fdsRomaneio do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;

  fdsRomaneio.Locate('ID', idTemp, []);
end;

procedure TfrmRomaneio.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsItensRomaneio.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmRomaneio.LancPendenciaPedido(idPedido: string;
  idFilialPedido: string);
begin
  { RetornaItensPedido;
    Try
    frmRetornoItensPedido := TfrmRetornoItensPedido.Create(nil);
    frmRetornoItensPedido.edtPrefixo.Text := fdsItensRomaneioPREFIXO.AsString;
    frmRetornoItensPedido.edtID.Text := fdsItensRomaneioIDROMANEIO.AsString;
    frmRetornoItensPedido.edtDt_Inc.Text := fdsItensRomaneioDT_PEDIDO.AsString;
    frmRetornoItensPedido.edtCliente.Text := fdsItensRomaneioCLIENTE.AsString;
    frmRetornoItensPedido.idVendedor := fdsItensRomaneioIDVENDEDOR.AsString;
    frmRetornoItensPedido.edtValor.Text := 'R$ ' + FloatToStr(fdsItensRomaneioVLR_TOTAL.AsFloat);
    frmRetornoItensPedido.ShowModal;
    Finally
    if frmRetornoItensPedido.ModalResult = mrOk then
    begin
    dm.Conexao.CommitRetaining;
    end;
    End; }
end;

function TfrmRomaneio.MyLocateItem(chave1, chave2, chave3: string): Boolean;
begin
  Result := False;
  cdsItensRomaneio.First;
  while not(cdsItensRomaneio.Eof) do
  begin
    if cdsItensRomaneioNUMERO.AsString = chave1 then
    begin
      if cdsItensRomaneioIDFILIAL_VENDA.AsString = chave2 then
      begin
        if cdsItensRomaneioPREFIXO.AsString = chave3 then
        begin
          Result := True;
          Break;
        end;
      end;
    end;
    cdsItensRomaneio.Next;
  end;
end;

procedure TfrmRomaneio.PesquisaPedidoID(status: string);
var
  tempIdRota: string;
begin
  Try
    frmPesqRota := TfrmPesqRota.Create(nil);
    frmPesqRota.ShowModal;
  Finally
    if frmPesqRota.ModalResult = mrOk then
    begin
      tempIdRota := frmPesqRota.fdsRotasID.AsString;

      with fdsRomaneio do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'RM.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('IDROTA', 'RM.IDROTA = ' + tempIdRota, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'RM.ID';
        Open;
      end;
    end;
    frmPesqRota.Free;
  End;
end;

procedure TfrmRomaneio.PesquisaPedidoRota(status: string);
var
  tempIdRota: string;
begin
  Try
    frmPesqRota := TfrmPesqRota.Create(nil);
    frmPesqRota.ShowModal;
  Finally
    if frmPesqRota.ModalResult = mrOk then
    begin
      tempIdRota := frmPesqRota.fdsRotasID.AsString;

      with fdsRomaneio do
      begin
        Close;
        Conditions.Clear;
        Conditions.AddCondition('STATUS',
          'RM.STATUS = ' + QuotedStr(status), True);
        Conditions.AddCondition('IDROTA', 'RM.IDROTA = ' + tempIdRota, True);
        Conditions.Apply;
        Prepare;
        OrderClause := 'RM.ID';
        Open;
      end;
    end;
    frmPesqRota.Free;
  End;
end;

function TfrmRomaneio.RetornaIdVendedor(idPedido, idFilial: String): Integer;
begin
  with fdsVendedor do
  begin
    Close;
    ParamByName('IDPEDIDO').AsString := idPedido;
    ParamByName('IDFILIAL').AsString := idFilial;
    Prepare;
    Open;
  end;

  Result := fdsVendedorID.AsInteger;
end;

procedure TfrmRomaneio.RetornaItensPedido;
begin
  { with fdsPedidoItens do
    begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    SelectSQL.Clear; //Deixar assim pois o fastreport n�o quer reconhecer "conditions"
    SelectSQL.Add('SELECT PI.*, I.NOME PRODUTO FROM PEDIDO_ITEM PI, PRODUTO_ITEM I WHERE I.ID = PI.IDPROD_ITEM AND PI.IDPEDIDO = ' + fdsItensRomaneioIDPEDIDO.AsString + ' AND PI.IDFILIAL = ' + fdsItensRomaneioIDFILIAL_PEDIDO.AsString);
    Prepare;
    Open;
    First;
    end; }
end;

procedure TfrmRomaneio.RetornaItensPedidoVenda(idVenda, idFilial,
  prefixo: string);
begin
  cdsPedidoItens.Open;
  cdsPedidoItens.EmptyDataSet;
  cdsPedidoItens.Close;
  with fdsPedidoItens do
  begin
    Close;
    ParamByName('IDVENDA').AsString := idVenda;
    ParamByName('IDFILIAL').AsString := idFilial;
    ParamByName('PREFIXO').AsString := prefixo;
    Prepare;
    Open;
    First;
  end;
  cdsPedidoItens.Open;
end;

procedure TfrmRomaneio.RetornaItensRomaneio;
begin
  if (alterandoRomaneio = False) and (fdsRomaneio.RecordCount > 0) then
  // V�tor ver sobre prazo
  begin
    with fdsV_ItensRomaneio do
    begin
      Close;
      ParamByName('IDROMANEIO').AsInteger := fdsRomaneioID.AsInteger;
      ParamByName('IDFILIAL').AsInteger := fdsRomaneioIDFILIAL.AsInteger;
      Prepare;
      Open;
      First;
    end;

    cdsItensRomaneio.EmptyDataSet;
    if fdsV_ItensRomaneio.RecordCount > 0 then
    begin
      while not(fdsV_ItensRomaneio.Eof) do
      begin
        cdsItensRomaneio.Append;
        cdsItensRomaneioNUMERO.AsInteger := fdsV_ItensRomaneioNUMERO.AsInteger;
        cdsItensRomaneioIDFILIAL_VENDA.AsInteger :=
          fdsV_ItensRomaneioIDFILIAL.AsInteger;
        cdsItensRomaneioITEM.AsInteger := fdsV_ItensRomaneioITEM.AsInteger;
        cdsItensRomaneioPREFIXO.AsString := fdsV_ItensRomaneioPREFIXO.AsString;
        cdsItensRomaneioPESO.AsFloat := fdsV_ItensRomaneioPESO.AsFloat;
        cdsItensRomaneioNOMECLIENTE.AsString :=
          fdsV_ItensRomaneioNOMECLIENTE.AsString;
        cdsItensRomaneioNOMECIDADE.AsString :=
          fdsV_ItensRomaneioNOMECIDADE.AsString;
        cdsItensRomaneioNOMEFILIAL.AsString :=
          fdsV_ItensRomaneioNOMEFILIAL.AsString;
        cdsItensRomaneioIDFORMA_PAG.AsInteger :=
          fdsV_ItensRomaneioIDFORMA_PAG.AsInteger;
        cdsItensRomaneioIDCLIENTE.AsInteger :=
          fdsV_ItensRomaneioIDCLIENTE.AsInteger;
        cdsItensRomaneioVLR_TOTAL.AsFloat :=
          fdsV_ItensRomaneioVLR_TOTAL.AsFloat;
        cdsItensRomaneioPRAZO.AsString := fdsV_ItensRomaneioPRAZO.AsString;
        cdsItensRomaneio.Post;
        fdsV_ItensRomaneio.Next;
      end;
    end;
    cdsItensRomaneio.First;
  end;
end;

procedure TfrmRomaneio.tbsFormShow(Sender: TObject);
begin
  RetornaItensRomaneio;
end;

procedure TfrmRomaneio.tbsStatusAbertoShow(Sender: TObject);
begin
  VisualizaPorStatus('AB');
  lblTituloTotal.Caption := 'Total de Romaneios Abertos: ';
  lblTotal.Caption := intToStr(fdsRomaneio.RecordCount);
end;

procedure TfrmRomaneio.tbsStatusTransportandoShow(Sender: TObject);
begin
  VisualizaPorStatus('TR');
  lblTituloTotal.Caption := 'Total de Romaneios Transportando: ';
  lblTotal.Caption := intToStr(fdsRomaneio.RecordCount);
end;

procedure TfrmRomaneio.tbsTabelaShow(Sender: TObject);
begin
  cdsItensRomaneio.EmptyDataSet;
end;

procedure TfrmRomaneio.tbsStatusEntreguesShow(Sender: TObject);
begin
  VisualizaPorStatus('ET');
  lblTituloTotal.Caption := 'Total de Romaneios Entregues: ';
  lblTotal.Caption := intToStr(fdsRomaneio.RecordCount);
end;

procedure TfrmRomaneio.VisualizaPorStatus(status: string);
begin
  with fdsRomaneio do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Conditions.AddCondition('STATUS', 'RM.STATUS = ' + QuotedStr(status), True);
    Conditions.Apply;
    Prepare;
    OrderClause := 'RM.ID';
    Open;
  end;
end;

procedure TfrmRomaneio.gdrRomaneioAbertoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsRomaneio.RecNo) then
  begin
    gdrRomaneioAberto.Canvas.Brush.Color := DM.gridOddColor;
    gdrRomaneioAberto.Canvas.FillRect(Rect);
    gdrRomaneioAberto.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmRomaneio.gdrRomaneioAbertoKeyPress(Sender: TObject;
  var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') then
  begin
    coluna := gdrRomaneioAberto.SelectedField.FieldName;
    if coluna = 'CLIENTE' then
    Begin
      // PesquisaPedidoCliente('AB');
    end
    else
    begin
      if coluna = 'VENDEDOR' then
      begin
        // PesquisaPedidoVendedor('AB');
      end
      else
      begin
        if coluna = 'ROTA' then
        begin
          PesquisaPedidoRota('AB');
        end
        else
        begin
          if coluna = 'ID' then
          begin
            // PesquisaPedidoID('AB');
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmRomaneio.gdrRomaneioEntregueDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsRomaneio.RecNo) then
  begin
    gdrRomaneioEntregue.Canvas.Brush.Color := DM.gridOddColor;
    gdrRomaneioEntregue.Canvas.FillRect(Rect);
    gdrRomaneioEntregue.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmRomaneio.gdrRomaneioTransporteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsRomaneio.RecNo) then
  begin
    gdrRomaneioTransporte.Canvas.Brush.Color := DM.gridOddColor;
    gdrRomaneioTransporte.Canvas.FillRect(Rect);
    gdrRomaneioTransporte.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

end.
