unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, RzGroupBar, RzBckgnd, ActnList, ImgList, cxGraphics, Menus, IniFiles,
  ExtCtrls, RzPanel, JvComponentBase, JvCipher, IB_Services, StdCtrls,
  System.Actions, JvImageList, PngImageList, JvExExtCtrls, JvImage, RzButton,
  IdBaseComponent, IdAntiFreezeBase, Vcl.IdAntiFreeze, uBaixaDocAutoReceber,
  JvThread, MidasLib, Vcl.Grids, Vcl.DBGrids, RzDBGrid, JvExDBGrids, JvDBGrid,
  Data.DB, RzLabel, FIBDataSet, pFIBDataSet, JvDragDrop, ACBrBase, ACBrDFe,
  ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, pcnConversao, pcnConversaoNFe,
  ACBrUtil, ACBrPosPrinter, ACBrNFeDANFeRLClass, dxGDIPlusClasses,
  ACBrDFeReport, ACBrDFeDANFeReport,ACBrDFeSSL, Vcl.ComCtrls, RzEdit,ACBrDevice, ACBrETQ,
  Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient;

type
  TfrmPrincipal = class(TForm)
    d: TRzBackground;
    RzGroupBar1: TRzGroupBar;
    rzgCadastro: TRzGroup;
    ActionList1: TActionList;
    cadProdutos: TAction;
    cadClientes: TAction;
    CadVendedores: TAction;
    rzgAdministracao: TRzGroup;
    cadUsuarios: TAction;
    CadGrupos: TAction;
    CadTamanhos: TAction;
    CadCores: TAction;
    CadFornecedores: TAction;
    cadFormasPagamento: TAction;
    CadRotas: TAction;
    admPedidos: TAction;
    admRomaneio: TAction;
    ppmProdutos: TPopupMenu;
    Produtos: TMenuItem;
    Grupos: TMenuItem;
    Cores1: TMenuItem;
    amanhos1: TMenuItem;
    cadMotoristas: TAction;
    ppmEntrega: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    cadVeiculos: TAction;
    Veculos1: TMenuItem;
    CadPortadores: TAction;
    rzgFinanceiro: TRzGroup;
    FincCntReceber: TAction;
    FincCntPagar: TAction;
    admProducao: TAction;
    sysConfig: TAction;
    admEstoque: TAction;
    cadFiliais: TAction;
    admMovInt: TAction;
    admVendas: TAction;
    admMovCaixa: TAction;
    PngImageList1: TPngImageList;
    PngImageList2: TPngImageList;
    admCompras: TAction;
    cadFuncionarios: TAction;
    imgPrincipal: TJvImage;
    admOS: TAction;
    RzBitBtn1: TRzBitBtn;
    admPreVenda: TAction;
    JvVigenereCipher1: TJvVigenereCipher;
    IdAntiFreeze: TIdAntiFreeze;
    ppmVendas: TPopupMenu;
    Vendas1: TMenuItem;
    admComicaoVend: TAction;
    ComissoVendedores1: TMenuItem;
    FincFluxoCaixa: TAction;
    ppmEstoque: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    admBalanco: TAction;
    tmrBaixarDocs: TTimer;
    fdsVenda: TpFIBDataSet;
    fdsPedido: TpFIBDataSet;
    fdsCntReceber: TpFIBDataSet;
    fdsCntPagar: TpFIBDataSet;
    dsVenda: TDataSource;
    dsPedido: TDataSource;
    dsCntReceber: TDataSource;
    dsCntPagar: TDataSource;
    fdsPedidoID: TFIBBCDField;
    fdsPedidoIDFILIAL: TFIBBCDField;
    fdsPedidoIDCLIENTE: TFIBBCDField;
    fdsPedidoIDVENDEDOR: TFIBBCDField;
    fdsPedidoIDFORMA_PAG: TFIBBCDField;
    fdsPedidoVLR_TOTAL: TFIBBCDField;
    fdsPedidoVISUALIZADO: TFIBStringField;
    fdsVendaID: TFIBBCDField;
    fdsVendaIDFILIAL: TFIBBCDField;
    fdsVendaIDCLIENTE: TFIBBCDField;
    fdsVendaIDVENDEDOR: TFIBBCDField;
    fdsVendaVLR_TOTAL: TFIBBCDField;
    fdsVendaVLR_VENDA: TFIBBCDField;
    fdsVendaENTREGAR: TFIBStringField;
    fdsVendaVISUALIZADO: TFIBStringField;
    fdsVendaCLIENTE: TFIBStringField;
    fdsPedidoCLIENTE: TFIBStringField;
    pnlPedidosDia: TRzPanel;
    gdrPedidosDia: TJvDBGrid;
    pnlTituloPedidosDia: TRzPanel;
    lblTituloPedidosDia: TRzLabel;
    lblTotalPedidos: TRzLabel;
    pnlVendasDia: TRzPanel;
    gdrVendasDia: TJvDBGrid;
    pnlTituloVendasDia: TRzPanel;
    lblTituloVendasDia: TRzLabel;
    lblTotalVendas: TRzLabel;
    fdsPedidoSTATUS: TFIBStringField;
    fdsPedidoVENDEDOR: TFIBStringField;
    tmrAtualizaPedidoVenda: TTimer;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ppmCntReceber: TPopupMenu;
    FincRomCntReceber: TAction;
    RomaneiodeContas2: TMenuItem;
    ContasaReceber1: TMenuItem;
    cadPlanoContas: TAction;
    admNFe: TAction;
    lblNomeCliente: TRzLabel;
    btnTeste: TButton;
    rzgConfig: TRzGroup;
    StatusBar1: TStatusBar;
    Exportar1: TMenuItem;
    admManifesto: TAction;
    Timer1: TTimer;
    ConfigSistema: TAction;
    ACBrETQ1: TACBrETQ;
    TimerEventos: TTimer;
    FincControleCheque: TAction;
    FincControleCartao: TAction;
    HTTPRIO1: THTTPRIO;
    procedure cadClientesExecute(Sender: TObject);
    procedure cadUsuariosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadVendedoresExecute(Sender: TObject);
    procedure CadGruposExecute(Sender: TObject);
    procedure CadTamanhosExecute(Sender: TObject);
    procedure CadCoresExecute(Sender: TObject);
    procedure cadProdutosExecute(Sender: TObject);
    procedure CadFornecedoresExecute(Sender: TObject);
    procedure cadFormasPagamentoExecute(Sender: TObject);
    procedure CadRotasExecute(Sender: TObject);
    procedure admPedidosExecute(Sender: TObject);
    procedure admRomaneioExecute(Sender: TObject);
    procedure RzGroup1Items0Click(Sender: TObject);
    procedure RzGroup1Items7Click(Sender: TObject);
    procedure cadMotoristasExecute(Sender: TObject);
    procedure cadVeiculosExecute(Sender: TObject);
    procedure CadPortadoresExecute(Sender: TObject);
    procedure FincCntReceberExecute(Sender: TObject);
    procedure FincCntPagarExecute(Sender: TObject);
    procedure admProducaoExecute(Sender: TObject);
    procedure sysConfigExecute(Sender: TObject);
    procedure admEstoqueExecute(Sender: TObject);
    procedure cadFiliaisExecute(Sender: TObject);
    procedure admMovIntExecute(Sender: TObject);
    procedure admVendasExecute(Sender: TObject);
    procedure admMovCaixaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure admComprasExecute(Sender: TObject);
    procedure cadFuncionariosExecute(Sender: TObject);
    procedure admOSExecute(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure rzgAdministracaoOpen(Sender: TObject);
    procedure rzgFinanceiroOpen(Sender: TObject);
    procedure admPreVendaExecute(Sender: TObject);
    procedure rzgAdministracaoItems5Click(Sender: TObject);
    procedure admComicaoVendExecute(Sender: TObject);
    procedure FincFluxoCaixaExecute(Sender: TObject);
    procedure admBalancoExecute(Sender: TObject);
    procedure rzgAdministracaoItems3Click(Sender: TObject);
    procedure tmrBaixarDocsTimer(Sender: TObject);
    procedure gdrPedidosDiaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrVendasDiaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure fdsVendaAfterOpen(DataSet: TDataSet);
    procedure fdsPedidoAfterOpen(DataSet: TDataSet);
    procedure gdrPedidosDiaDblClick(Sender: TObject);
    procedure gdrVendasDiaDblClick(Sender: TObject);
    procedure tmrAtualizaPedidoVendaTimer(Sender: TObject);
    procedure FincRomCntReceberExecute(Sender: TObject);
    procedure rzgFinanceiroItems0Click(Sender: TObject);
    procedure cadPlanoContasExecute(Sender: TObject);
    procedure admNFeExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Exportar1Click(Sender: TObject);
    procedure admManifestoExecute(Sender: TObject);
    procedure btnTesteClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ConfigSistemaExecute(Sender: TObject);
    procedure TimerEventosTimer(Sender: TObject);
    procedure FincControleChequeExecute(Sender: TObject);
    procedure FincControleCartaoExecute(Sender: TObject);
  private
    procedure ConfiguraNFC;
    Procedure ConfiguraImpEtiqueta;
    procedure BaixaDocRecAutomatico;
    procedure LeIni;
    procedure ConfiguraImgPrincipal(caminho: string; t, l, h, w: Integer);
    procedure ControleRegistro();
    procedure CarregaPaineisGerenciais;
    procedure ControlaAbasGerencial;
    procedure PreparaAutoPecas;
    function  GetHardDiskSerial(const DriveLetter: Char): string;
    procedure AtualizaChave;
  public
  procedure ImprimirComprovante;
  var
    isServidor, autopecas, modoTabPreco, baixaDocsAuto, tipoPedido: string[1];
    caminhoBKP, NFE, TPCERTIFICADO, pedidoSimples, modeloEtiqProd: string;
    locIdVenda: Integer;
    locIdPedido: Integer;
  end;

var
  frmPrincipal: TfrmPrincipal;
  TrheadBaixaDocRec: TBaixaDocAutoReceber;

implementation

uses untCadClientes, untCadUsuarios, untData, untLogin, untCadVendedores,
  untCadGrupos, untCadCores, untCadTamanhos, untCaProdutos, untCadFornecedor,
  untCadFormasPagamento, untPedidos, untCadRotas, untRomaneio, untCadMotoristas,
  untCadVeiculos, untCadPortador, untCntReceber, untCntPagar, untProducao,
  untConfiguracao, untEstoque, untCadFiliais, untMovInt, untVendas,
  untMovimentacaoCaixa, untBackUp,
  untCompras, untCadFuncionarios, untRegistro, untControleMesas, uRegistro,
  untOrdemServico, untEmail, untConfigTabPrecoGeral, uVerificaPermicao,
  untPreVenda, untComissaoVendedor, untFluxoCaixa, untBalanco, untDataThread,
  untRomaneioCntReceber, untPlanoContas,untCadTransportadora,
  untNfe, untExportarProdBalanca, untMDFe, untMsgUsuarioNaoPermitido,
  untConfigSistema, uUtils, untControleCheque, untControleCartao, Api;

{$R *.dfm}

procedure TfrmPrincipal.admVendasExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_VENDAS.AsString = 'S' then
  begin
    if frmVendas = nil then
      frmVendas := TfrmVendas.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.AtualizaChave;
begin
//Adicionando verifica��o de conex�o
  DM.fdsConfig.Edit;
  DM.fdsConfigCHAVE.AsString := (HTTPRIO1 As APISoap).AtualizaChave('15.358.',GetHardDiskSerial('c'));
  DM.fdsConfig.Post;
  DM.Conexao.CommitRetaining;
//Caso n�o tenha, criar forma de controle de dias sem Internet
end;

procedure TfrmPrincipal.BaixaDocRecAutomatico;
var
 baixa: boolean;
begin
  // TrheadBaixaDocRec := TBaixaDocAutoReceber.Create(True);
  // TrheadBaixaDocRec.Resume;
  // TrheadBaixaDocRec.BaixarCT;
  if DM.fdsConfigBAIXA_AUTO_CARTAO.AsString = 'S' then
  begin
    DMThread.BaixaDoc('CT',DM.fdsConfigDIAS_BAIXA_CT.AsInteger,
      Dm.fdsUsuarioPermicIDUSUARIO.AsInteger);
  end;

  if DM.fdsConfigBAIXA_AUTO_CARTAO_CD.AsString = 'S' then
  begin
    DMThread.BaixaDoc('CD',DM.fdsConfigDIAS_BAIXA_CD.AsInteger,
      Dm.fdsUsuarioPermicIDUSUARIO.AsInteger);
  end;

  if DM.fdsConfigBAIXA_DOCS_AUTO.AsString = 'S' then
  begin
    DMThread.BaixaDoc('CH',DM.fdsConfigDIAS_BAIXA_DOC.AsInteger,
      Dm.fdsUsuarioPermicIDUSUARIO.AsInteger);
  end;

  tmrBaixarDocs.Enabled := True;
end;

procedure TfrmPrincipal.btnTesteClick(Sender: TObject);
var
 num:integer;
begin
// Randomize;
// num:=Random(999999999)+1;
//  showmessage(IntToStr(num));
  

end;

procedure TfrmPrincipal.FincControleCartaoExecute(Sender: TObject);
begin
  if frmControleCartao = nil then
      frmControleCartao := TfrmControleCartao.Create(nil);
end;

procedure TfrmPrincipal.FincControleChequeExecute(Sender: TObject);
begin
  if frmControleCheque = nil then
      frmControleCheque := TfrmControleCheque.Create(nil);
end;

procedure TfrmPrincipal.admBalancoExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_BALANCO.AsString = 'S' then
  begin
    if frmBalanco = nil then
      frmBalanco := TfrmBalanco.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admComicaoVendExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_COMISSAO.AsString = 'S' then
  begin
    if frmComissaoVendedor = nil then
      frmComissaoVendedor := TfrmComissaoVendedor.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admComprasExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_COMPRAS.AsString = 'S' then
  begin
    if frmCompras = nil then
      frmCompras := TfrmCompras.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admEstoqueExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_ESTOQUE.AsString = 'S' then
  begin
    if frmEstoque = nil then
      frmEstoque := TfrmEstoque.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admManifestoExecute(Sender: TObject);
begin
   if DM.fdsUsuarioPermicADM_NFE.AsString = 'S' then
   begin
     if frmMDFe = nil then
      frmMDFe := TfrmMDFe.Create(nil);
   end
   else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admMovCaixaExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_MOVCAIXA.AsString = 'S' then
  begin
    if frmMovCaixa = nil then
      frmMovCaixa := TfrmMovCaixa.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admMovIntExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_MOVINTERNA.AsString = 'S' then
  begin
    if frmMovInt = nil then
      frmMovInt := TfrmMovInt.Create(nil);
  end
  else
   TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admNFeExecute(Sender: TObject);
begin
   if DM.fdsUsuarioPermicADM_NFE.AsString = 'S' then
   begin
     if frmNfe = nil then
    frmNfe := TfrmNfe.Create(nil);
   end
   else
   TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admOSExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_OS.AsString = 'S' then
  begin
    if frmOrdemServico = nil then
      frmOrdemServico := TfrmOrdemServico.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admPedidosExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_PEDIDO.AsString = 'S' then
  begin
    if frmPedidos = nil then
      frmPedidos := TfrmPedidos.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admPreVendaExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_PREVENDA.AsString = 'S' then
  begin
    if frmPreVenda = nil then
      frmPreVenda := TfrmPreVenda.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);
end;

procedure TfrmPrincipal.admProducaoExecute(Sender: TObject);
begin
  if frmProducao = nil then
    frmProducao := TfrmProducao.Create(nil);
end;

procedure TfrmPrincipal.admRomaneioExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicADM_ROMANEIO.AsString = 'S' then
  begin
    if frmRomaneio = nil then
    begin
      if frmPedidos <> nil then
      begin
        frmPedidos.Free;
        frmPedidos := nil;
      end;
      frmRomaneio := TfrmRomaneio.Create(nil);
    end;
  end
  else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Aten��o','I',[mbOk]);

end;

procedure TfrmPrincipal.cadClientesExecute(Sender: TObject);
 var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_CLIENTES') = True) then
  begin
    if frmCadClientes = nil then
    frmCadClientes := TfrmCadClientes.Create(nil);
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar Cadastro de Cientes.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.CadCoresExecute(Sender: TObject);
begin
  if frmCadCores = nil then
    frmCadCores := TfrmCadCores.Create(nil);
end;

procedure TfrmPrincipal.cadFiliaisExecute(Sender: TObject);
begin
  if frmCadFiliais = nil then
    frmCadFiliais := TfrmCadFiliais.Create(nil);
end;

procedure TfrmPrincipal.cadFormasPagamentoExecute(Sender: TObject);
  var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_TAB_PRECO') = True) then
  begin
    if frmConfigTabPrecGeral = nil then
      frmConfigTabPrecGeral := TfrmConfigTabPrecGeral.Create(nil);
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar Tabela de Pre�os.','Sem Permiss�o','I',[mbOk]);
   // if frmCadFormasPagamento = nil then
  // frmCadFormasPagamento := TfrmCadFormasPagamento.Create(nil);
end;

procedure TfrmPrincipal.CadFornecedoresExecute(Sender: TObject);
begin
  if frmCadFornecedor = nil then
    frmCadFornecedor := TfrmCadFornecedor.Create(nil);
end;

procedure TfrmPrincipal.cadFuncionariosExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_FUNCIONARIO') = True) then
  begin
    if frmCadFuncionarios = nil then
      frmCadFuncionarios := TfrmCadFuncionarios.Create(nil);
  end
  else
   TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.CadGruposExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_GRUPO') = True) then
  BEGIN
    if frmCadGrupos = nil then
      frmCadGrupos := TfrmCadGrupos.Create(nil);
  END
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar grupos de Produtos.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.cadMotoristasExecute(Sender: TObject);
begin
  if frmCadMotoristas = nil then
    frmCadMotoristas := TfrmCadMotoristas.Create(nil);
end;

procedure TfrmPrincipal.cadPlanoContasExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('PLANO_CONTAS') = True) then
  begin
    if frmPlanoContas = nil then
    frmPlanoContas := TfrmPlanoContas.Create(nil);
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar Plano de Contas.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.CadPortadoresExecute(Sender: TObject);
begin
  if frmCadPortador = nil then
    frmCadPortador := TfrmCadPortador.Create(nil);
end;

procedure TfrmPrincipal.cadProdutosExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
 if (uVerificaPermicao.Verifica('CAD_PRODUTOS') = True) then
  BEGIN
    if frmCadProdutos = nil then
    frmCadProdutos := TfrmCadProdutos.Create(nil);
  END
  ELSE
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar a aba de produtos.','Sem Permiss�o','I',[mbOk]);

end;

procedure TfrmPrincipal.CadRotasExecute(Sender: TObject);
begin
  if frmCadRotas = nil then
    frmCadRotas := TfrmCadRotas.Create(nil);
end;

procedure TfrmPrincipal.CadTamanhosExecute(Sender: TObject);
begin
  if frmCadTamanhos = nil then
    frmCadTamanhos := TfrmCadTamanhos.Create(nil);
end;

procedure TfrmPrincipal.cadUsuariosExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_USUARIO') = True) then
  BEGIN
    if frmCadUsuarios = nil then
      frmCadUsuarios := TfrmCadUsuarios.Create(nil);
  END
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar Usu�rios.','Sem Permiss�o','I',[mbOk]);

end;

procedure TfrmPrincipal.cadVeiculosExecute(Sender: TObject);
begin
  if frmCadTransportadora = nil then
    frmCadTransportadora := TfrmCadTransportadora.Create(nil);
end;

procedure TfrmPrincipal.CadVendedoresExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_VENDEDOR') = True) then
  begin
  if frmCadVendedores = nil then
    frmCadVendedores := TfrmCadVendedores.Create(nil);
  end
  else
   TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar o Cadastro de Fornecedores.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.CarregaPaineisGerenciais;
begin
  if DM.fdsUsuarioPermicEXIBIR_PEDIDOS_DIA.AsString = 'S' then
  begin
    pnlPedidosDia.Visible := True;
    fdsPedido.Open;
    tmrAtualizaPedidoVenda.Enabled := True;
  end;

  if DM.fdsUsuarioPermicEXIBIR_VENDAS_DIA.AsString = 'S' then
  begin
    if pnlPedidosDia.Visible = False then
      pnlVendasDia.Left := 188;

    pnlVendasDia.Visible := True;
    fdsVenda.Open;
    tmrAtualizaPedidoVenda.Enabled := True;
  end;
end;

procedure TfrmPrincipal.ConfigSistemaExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
 if uVerificaPermicao.verifica('CONFIGURACOES')=True then
 begin
    frmConfigSistema:=TfrmConfigSistema.create(nil);
    frmConfigSistema.ShowModal;
 end
 else
    TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para acessar as configura��es.','Sem Permiss�o','I',[mbOk]);

end;

procedure TfrmPrincipal.ConfiguraImpEtiqueta;
begin
  if frmPrincipal.ACBrETQ1.Ativo then
  frmPrincipal.ACBrETQ1.Desativar;
  if DM.fdsConfigDPI_IMP_ETIQ.AsString <> EmptyStr then
  begin
  frmPrincipal.ACBrETQ1.DPI := TACBrETQDPI(DM.fdsConfigDPI_IMP_ETIQ.AsInteger);
  frmPrincipal.ACBrETQ1.Modelo := TACBrETQModelo(DM.fdsConfigMODELO_IMP_ETIQ.AsInteger);
  frmPrincipal.ACBrETQ1.Porta := DM.fdsConfigPORTA_IMP_ETIQ.AsString;
  end
  else
  begin
    frmPrincipal.ACBrETQ1.DPI := TACBrETQDPI(1);
    frmPrincipal.ACBrETQ1.Modelo := TACBrETQModelo(0);
    frmPrincipal.ACBrETQ1.Porta := DM.fdsConfigPORTA_IMP_ETIQ.AsString;
  end;
  frmPrincipal.ACBrETQ1.LimparMemoria := True;

  frmPrincipal.ACBrETQ1.Ativar;
  frmPrincipal.ACBrETQ1.Desativar;
end;

procedure TfrmPrincipal.ConfiguraImgPrincipal(caminho: string;
  t, l, h, w: Integer);
begin
  imgPrincipal.Picture.LoadFromFile(caminho);
  imgPrincipal.Visible := True;
  imgPrincipal.Top := t;
  imgPrincipal.Left := l;
  imgPrincipal.Height := h;
  imgPrincipal.Width := w;
end;
procedure TfrmPrincipal.ConfiguraNFC;
var
  Ok: Boolean;
begin
  with ACBrNFe1.Configuracoes.Geral do
  begin
    // ExibirErroSchema := cbxExibirErroSchema.Checked;
    RetirarAcentos := True;
    // FormatoAlerta    := edtFormatoAlerta.Text;
    FormaEmissao := TpcnTipoEmissao(0);
    ModeloDF := TpcnModeloDF(0);
    VersaoDF := TpcnVersaoDF(3);
    IdCSC := DM.fdsConfigNFeIDCSC.AsString;
    CSC := DM.fdsConfigNFeCSC.AsString;
    Salvar := True;
  end;

  with ACBrNFe1.Configuracoes.WebServices do
  begin
    UF := DM.fdsConfigUF.AsString;
    Ambiente := StrToTpAmb(Ok,
      IntToStr(DM.fdsConfigNFeWS_AMBIENTE_NF_E.AsInteger));
    Visualizar := False;
    Salvar := True;
    AjustaAguardaConsultaRet := False;
    // if NaoEstaVazio(edtAguardar.Text)then
    // AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
    // else
    // edtAguardar.Text := IntToStr(AguardarConsultaRet);
    //
    // if NaoEstaVazio(edtTentativas.Text) then
    // Tentativas          := StrToInt(edtTentativas.Text)
    // else
    // edtTentativas.Text := IntToStr(Tentativas);
    //
    // if NaoEstaVazio(edtIntervalo.Text) then
    // IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
    // else
    // edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);
    //
    // ProxyHost := edtProxyHost.Text;
    // ProxyPort := edtProxyPorta.Text;
    // ProxyUser := edtProxyUser.Text;
    // ProxyPass := edtProxySenha.Text;

    with ACBrNFe1.Configuracoes.WebServices do
    begin
      AguardarConsultaRet := 100;
      // <----- Tempo que o componente ir� aguardar pelo retorno da consulta ao protocolo de recebimento

      AjustaAguardaConsultaRet := True;
      // <----- se true acerta a propriedade anterior para o valor retornado pelo webservice no protocolo de envio

      IntervaloTentativas := 1000;
      // <------ intervalo que o componente ir� aguardar antes de tentar novamente

      Tentativas := 5;
      // <------ numero de tentativas que o componente ir� fazer antes de emitir o erro
    end;

    with ACBrNFe1.Configuracoes.Arquivos do
    begin
      Salvar := True;
      SepararPorMes := True;
      AdicionarLiteral := False;
      EmissaoPathNFe := True;
      SalvarEvento := False;
      SepararPorCNPJ := False;
      SepararPorModelo := False;
      PathSalvar := PathWithDelim(ExtractFilePath(Application.ExeName)) +'NFeLogs';
      PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName)) +'Schemas\NFe';
      PathNFe := PathSalvar + 'Emitidas';
      PathInu := PathSalvar + 'Inutilizados';
      PathEvento         := PathSalvar + 'Eventos';
    end;

    if TPCERTIFICADO = 'A1' then
    begin
      // ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(0);
      ACBrNFe1.Configuracoes.Certificados.Senha := DM.fdsConfigNFeCERT_SENHA.AsString;
    end;

    if TPCERTIFICADO = 'A3' then
    begin
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(2);
      // ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado; vitor ver essa linha somente, tava no forum
      // ACBrNFe1.Configuracoes.Geral.SSLLib:=libCapicom;
      // ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=cryCapicom;
      // ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=httpWinINet;
      // ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=xsMsXmlCapicom;
    end;

    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.fdsConfigNFeCERT_NUM_SERIE.AsString;
    // ACBrNFeDANFEFR1.FastFile := ExtractFileDir(application.ExeName) + '\Relatorios\DANFeNFCe3_50.fr3';
    // ACBrNFeDANFEFR1.FastFile := ExtractFileDir(application.ExeName) + '\Relatorios\DANFE.fr3';
    if ACBrNFe1.DANFE <> nil then
    begin
      // ACBrNFe1.DANFE.LogoemCima := False;
      ACBrNFe1.DANFE.TipoDANFE := StrToTpImp(Ok, IntToStr(1));
      ACBrNFe1.DANFE.Logo := DM.fdsConfigLOGO_IMG_CAMINHO.AsString;
    end;
  end;

  // ShowMessage(FormatDateBr(ACBrNFe1.SSL.CertDataVenc)); vitor ver sobre a data de vencimento

end;

procedure TfrmPrincipal.ControlaAbasGerencial;
begin
 if DM.fdsUsuarioPermicADMINISTRACAO.AsString <> 'S' then
  rzgAdministracao.Visible:=false
 else
  rzgAdministracao.Visible:=True;

  if DM.fdsUsuarioPermicADMIN_1.AsString<>'S' then
   rzgConfig.Items[1].Visible:=false
  else
   rzgConfig.Items[1].Visible:=True;

  if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='N' then
   rzgCadastro.Items[5].Visible:=false
  else
   rzgCadastro.Items[5].Visible:=True;

 if DM.fdsUsuarioPermicFINANCEIRO.AsString <> 'S' then
 begin
    rzgFinanceiro.Visible:=false;
 end
 else
   rzgFinanceiro.Visible:=True;
 rzgCadastro.Open;
end;

procedure TfrmPrincipal.ControleRegistro;
var
  registro: TRegistro;
  liberado: Boolean;
begin
  liberado := registro.VerificaChave;

  if liberado = False then
  begin
//    Application.MessageBox
//      ('Seu sistema expirou, entre em contato o desenvolvedor', 'Aten�ao',
//      MB_OK + MB_ICONWARNING);
    TfrmMenssagens.Mensagem('Seu sistema expirou, entre em contato o desenvolvedor.', 'Aten�ao.', 'X',[mbOK]);
    frmRegistro := TfrmRegistro.Create(nil);
    frmRegistro.ShowModal;
  end;
end;

procedure TfrmPrincipal.Exportar1Click(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('EXPORTAR_PROD_BALANCA') = True) then
  begin
    Try
      frmExportarProdBalanca := TfrmExportarProdBalanca.Create(nil);
      frmExportarProdBalanca.ShowModal;
    Finally
      frmExportarProdBalanca.Free;
    End;
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o para Exportar Produtos.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.fdsPedidoAfterOpen(DataSet: TDataSet);
begin
  fdsPedido.Last;
  fdsPedido.First;
  lblTotalPedidos.Caption := IntToStr(fdsPedido.RecordCount);
end;

procedure TfrmPrincipal.fdsVendaAfterOpen(DataSet: TDataSet);
begin
  locIdVenda := 0;
  fdsVenda.Last;
  fdsVenda.First;
  lblTotalVendas.Caption := IntToStr(fdsVenda.RecordCount);
end;

procedure TfrmPrincipal.FincCntPagarExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicFIN_PAGAR.AsString = 'S' then
  begin
    if frmCntPagar = nil then
      frmCntPagar := TfrmCntPagar.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Usu�rio sem permi��o.','Aten��o','I',[mbOK]);
end;

procedure TfrmPrincipal.FincCntReceberExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('FIN_RECEBER') = True) then
  begin
    if frmCntReceber = nil then
      frmCntReceber := TfrmCntReceber.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Desculpe,Usu�rio sem Permi��o  para acessar Contas a Receber.','Sem Permiss�o','I',[mbOK]);
end;

procedure TfrmPrincipal.FincFluxoCaixaExecute(Sender: TObject);
begin
  if DM.fdsUsuarioPermicFIN_FLUXOCAIXA.AsString = 'S' then
  begin
    if frmFluxoCaixa = nil then
      frmFluxoCaixa := TfrmFluxoCaixa.Create(nil);
  end
  else
    TfrmMenssagens.Mensagem('Usu�rio sem permi��o.', 'Aten��o','I',[mbOK]);
end;

procedure TfrmPrincipal.FincRomCntReceberExecute(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('FIN_RECEBER') = True) then
  begin
  if frmRomaneioCntReceber = nil then
    frmRomaneioCntReceber := TfrmRomaneioCntReceber.Create(nil);
  end
  else
  TfrmMenssagens.Mensagem('Desculpe,Usu�rio sem Permi��o  para acessar Contas a Receber.','Sem Permiss�o','I',[mbOK]);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // JvThread.Terminate;
  Case TFrmMenssagens.Mensagem('Deseja realmente fechar o sistema?','Aten��o','S',[mbNao,mbSim])of
         true: begin
            if isServidor = 'S' then
            begin
              if DM.fdsConfigHORA_BKP.AsDateTime < Now then
              begin
                if frmBackUp = nil then
                begin
                  frmBackUp := TfrmBackUp.Create(nil);
                  Abort;
                end
                else
                  ShowMessage('Esta esta��o n�o � servidor.');
              end;
            end;
         end
         else
         abort;
  End;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Try
    try
      DM.Conexao.Connected := False;
      DMThread.Conexao2.Connected := False;
      LeIni; // configura�oes do Phat
      DM.Conexao.Connected := True;
      DMThread.Conexao2.Connected := True;
      DM.fdsConfig.Open;
      DM.fdsConfigNFe.Open;
      if DM.fdsConfigCNPJ.AsString = EmptyStr then
      begin
        Try
          frmConfig := TfrmConfig.Create(nil);
          frmConfig.ShowModal;
        Finally
          begin
            if not(frmConfig.ModalResult = mrOk) then
            begin
              Application.Terminate;
            end;
            frmConfig.Free;
          end;
        End;
      end;
      DM.fdsConfig.Edit;
      DM.fdsConfigHOJE.AsString := DateToStr(Now);
      DM.fdsConfig.Post;
      DM.Conexao.CommitRetaining;
      lblNomeCliente.Caption := DM.fdsConfigNOME.AsString;

      //colocar uma verifica��o se vai ou n�o validar a chave pela internet
     // AtualizaChave; //Verifica a chave do sistema pela Internet;

      ControleRegistro; // valida chave do sistema: Se est� valida ou n�o

      PreparaAutoPecas;

      frmLogin := TfrmLogin.Create(nil);
      frmLogin.ShowModal;
    Except
      on E: Exception do
      begin
        ShowMessage(E.Message);
        Application.Terminate;
      end;
    end;
  Finally
    if frmLogin.ModalResult = mrOk then
    begin
      ConfiguraImpEtiqueta;

      if NFE = 'S' then
      begin
        ConfiguraNFC;
      end
      else
      begin
        ACBrNFe1.SSL.Clear;
      end;

      DM.idUsuario := frmLogin.fdsUserID.AsInteger;

      with DM.fdsUsuarioPermic do
      begin
        Close;
        ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        Open;
      end;

      with DM.fdsUsuarioPermicPDV do
      begin
        Close;
        ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        Open;
      end;
      ControlaAbasGerencial;

      if baixaDocsAuto = 'S' then
      begin
        tmrBaixarDocs.Enabled := True;
      end;
      CarregaPaineisGerenciais;
      TimerEventos.Enabled:=True;
    end
    else
      Application.Terminate;

  End;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_F12) < 0) then
  begin
    Try
      frmConfig := TfrmConfig.Create(nil);
      frmConfig.ShowModal;
    Finally
      frmConfig.Free;
    End;
  end;
  If GetKeyState(VK_F11) < 0 then
  begin
    FrmPrincipal.OnCreate(self);
    TfrmMenssagens.Mensagem('Login efetuado com sucesso!','Sucesso','L',[mbOk]);
  end;
end;

procedure TfrmPrincipal.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
 if DM.fdsUsuarioPermicCONFIGURACOES.AsString='S' then
 begin
    If (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_F12) < 0) then
    begin
      Try
        frmConfig := TfrmConfig.Create(nil);
        frmConfig.ShowModal;
      Finally
        frmConfig.Free;
      End;
    end;
 end;
  If GetKeyState(VK_F11) < 0 then
  begin
    FrmPrincipal.OnCreate(self);
    TfrmMenssagens.Mensagem('Login efetuado com sucesso!','Sucesso','L',[mbOk]);
  end;
end;

procedure TfrmPrincipal.gdrPedidosDiaDblClick(Sender: TObject);
begin
  if fdsPedido.RecordCount > 0 then
  begin
    locIdPedido := fdsPedidoID.AsInteger;
    rzgAdministracao.Items[0].Click;
  end;
end;

procedure TfrmPrincipal.gdrPedidosDiaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPedido.RecNo) then
  begin
    gdrPedidosDia.Canvas.Brush.Color := DM.gridOddColor;
    gdrPedidosDia.Canvas.FillRect(Rect);
    gdrPedidosDia.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsPedidoVISUALIZADO.AsString = 'N' then
  begin
    gdrPedidosDia.Canvas.Font.Style := [fsBold];
    gdrPedidosDia.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmPrincipal.gdrVendasDiaDblClick(Sender: TObject);
begin
  if fdsVenda.RecordCount > 0 then
  begin
    // frmPrincipal.Cursor := crSQLWait;
    // Application.ProcessMessages;
    if DM.fdsUsuarioPermicADM_VENDAS.AsString = 'S' then
    begin
      if frmVendas = nil then
      begin
        locIdVenda := fdsVendaID.AsInteger;
        frmVendas := TfrmVendas.Create(nil);
      end;
    end
    else
      Application.MessageBox('Usu�rio sem permi��o.', 'Aten��o',
        MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmPrincipal.gdrVendasDiaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsVenda.RecNo) then
  begin
    gdrVendasDia.Canvas.Brush.Color := DM.gridOddColor;
    gdrVendasDia.Canvas.FillRect(Rect);
    gdrVendasDia.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if fdsVendaVISUALIZADO.AsString = 'N' then
  begin
    gdrVendasDia.Canvas.Font.Style := [fsBold];
    gdrVendasDia.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

function TfrmPrincipal.GetHardDiskSerial(const DriveLetter: Char): string;
var
  NotUsed:     DWORD;
  VolumeFlags: DWORD;
  VolumeInfo:  array[0..MAX_PATH] of Char;
  VolumeSerialNumber: DWORD;
begin
  GetVolumeInformation(PChar(DriveLetter + ':\'),
    nil, SizeOf(VolumeInfo), @VolumeSerialNumber, NotUsed,
    VolumeFlags, nil, 0);
  Result := Format('%8.8X',
    [VolumeSerialNumber]);
end;

procedure TfrmPrincipal.ImprimirComprovante;
begin
end;

procedure TfrmPrincipal.LeIni;
var
  INI: TIniFile;
  caminhoBase: string;
  Senha: string;
  exibirImgPrincipal: string[1];
  tImgPr, lImgPr, hImgPr, wImgPr: Integer;
begin
  JvVigenereCipher1.Key := 'xoxota';

  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
  caminhoBKP := INI.ReadString('CAMINHOS', 'BKP', '');
  isServidor := INI.ReadString('CAMINHOS', 'IsServidor', '');
  autopecas := INI.ReadString('CAMINHOS', 'AutoPecas', '');
  baixaDocsAuto := INI.ReadString('CAMINHOS', 'BaixaDocsAuto', '');
  modoTabPreco := INI.ReadString('CAMINHOS', 'ModoTabPreco', '');
  caminhoBase := INI.ReadString('CAMINHOS', 'SGP', '');
  NFE := INI.ReadString('CAMINHOS', 'NFE', '');
  TPCERTIFICADO := INI.ReadString('CAMINHOS', 'TPCERTIFICADO', '');
  tipoPedido := INI.ReadString('CAMINHOS', 'TIPOPEDIDO', '');
  pedidoSimples := INI.ReadString('CAMINHOS', 'PEDIDOSIMPLES', '');
  modeloEtiqProd := INI.ReadString('CAMINHOS', 'MODELOETIQPROD', '');
  JvVigenereCipher1.Encoded := INI.ReadString('CAMINHOS', 'PWD', '');
  Senha := JvVigenereCipher1.Decoded;

  DM.Conexao.DBName := caminhoBase;
  DM.Conexao.ConnectParams.Password := Senha;
  DMThread.Conexao2.DBName := caminhoBase;
  DMThread.Conexao2.ConnectParams.Password := Senha;
  DM.Logo := INI.ReadString('CAMINHOS', 'LOGO', '');

  exibirImgPrincipal := INI.ReadString('POS_IMGPRINCIPAL', 'EXIBIR', '');

  if exibirImgPrincipal = 'S' then
  begin
    tImgPr := StrToInt(INI.ReadString('POS_IMGPRINCIPAL', 'TOP', ''));
    lImgPr := StrToInt(INI.ReadString('POS_IMGPRINCIPAL', 'LEFT', ''));
    hImgPr := StrToInt(INI.ReadString('POS_IMGPRINCIPAL', 'HEIGHT', ''));
    wImgPr := StrToInt(INI.ReadString('POS_IMGPRINCIPAL', 'WIDTH', ''));
    ConfiguraImgPrincipal(INI.ReadString('POS_IMGPRINCIPAL', 'CAMINHO', ''),
      tImgPr, lImgPr, hImgPr, wImgPr);
  end;

  INI.Free;
end;

procedure TfrmPrincipal.PreparaAutoPecas;
begin
  if autopecas = 'S' then
  begin
    ppmProdutos.Items.Items[2].Caption := 'Ve�culos';
    ppmProdutos.Items.Items[2].ImageIndex := 30;
    ppmProdutos.Items.Items[3].Caption := 'Aplica��o';
    ppmProdutos.Items.Items[3].ImageIndex := 31;
  end;
end;

procedure TfrmPrincipal.RzBitBtn1Click(Sender: TObject);
begin
  Try
    frmEmail := TfrmEmail.Create(nil);
    frmEmail.ShowModal;
  Finally
    frmEmail.FreeOnRelease;
  End;
end;

procedure TfrmPrincipal.rzgAdministracaoItems3Click(Sender: TObject);
begin
  ppmEstoque.Popup(frmPrincipal.Left + 120, frmPrincipal.Top + 290);
end;

procedure TfrmPrincipal.rzgAdministracaoItems5Click(Sender: TObject);
begin
  ppmVendas.Popup(frmPrincipal.Left + 120, frmPrincipal.Top + 430);
end;

procedure TfrmPrincipal.rzgAdministracaoOpen(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if DM.fdsUsuarioPermicADMINISTRACAO.AsString <> 'S' then
    rzgCadastro.Open
end;

procedure TfrmPrincipal.rzgFinanceiroItems0Click(Sender: TObject);
begin
  if DM.fdsUsuarioPermicFIN_RECEBER.AsString = 'S' then
  begin
    ppmCntReceber.Popup(frmPrincipal.Left + 120, frmPrincipal.Top + 115);
  end
  else
    Application.MessageBox('Usu�rio sem permi��o.', 'Aten��o',
      MB_OK + MB_ICONEXCLAMATION);

end;

procedure TfrmPrincipal.rzgFinanceiroOpen(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if DM.fdsUsuarioPermicFINANCEIRO.AsString <> 'S' then
    rzgCadastro.Open
end;

procedure TfrmPrincipal.RzGroup1Items0Click(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
 // if (uVerificaPermicao.Verifica('CAD_PRODUTOS') = True) then
    ppmProdutos.Popup(frmPrincipal.Left + 120, frmPrincipal.Top + 80);
end;

procedure TfrmPrincipal.RzGroup1Items7Click(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
 if (uVerificaPermicao.Verifica('CAD_ENTREGA') = True) then
  ppmEntrega.Popup(frmPrincipal.Left + 120, frmPrincipal.Top + 475)
 else
  TfrmMenssagens.Mensagem('Desculpe, usu�rio sem permiss�o.','Sem Permiss�o','I',[mbOk]);
end;

procedure TfrmPrincipal.sysConfigExecute(Sender: TObject);
begin
  Try
    frmConfig := TfrmConfig.Create(nil);
    frmConfig.ShowModal;
  Finally
    frmConfig.Free;
  End;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  //TfrmPrincipal.FormKeyDown(self);
end;

procedure TfrmPrincipal.TimerEventosTimer(Sender: TObject);
var
Utils:TUtils;
begin
 TimerEventos.Enabled:= false;
 //if Utils.EllapDate(StrToDateTime('13/11/2019'),frmPrincipal.ACBrNFe1.SSL.CertDataVenc)= 30 then

 //verifica se a data de vencimento do Certificado esta entre 30 dias para o vencimento
 if (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)<=30) and (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)>0)  then
 begin
    TfrmMenssagens.Mensagem('O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' instalado que est� prestes a vencer,vencer� em '+
    DateToStr(frmPrincipal.ACBrNFe1.SSL.CertDataVenc)+'. Por favor, programe-se para atualiz�-lo para n�o prejudicar o processo de assinatura elet�nica de documentos. Procure a CBSistemas e agende seu hor�rio (22)3843-3963. ',
    'Aviso de Vencimento','V',[mbOk]);
    StatusBar1.Panels.Items[0].Text:=' O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' instalado vencer� em '+
    DateToStr(frmPrincipal.ACBrNFe1.SSL.CertDataVenc)+'. Por favor, programe-se para atualiz�-lo para n�o prejudicar o processo de assinatura elet�nica de documentos. Procure a CBSistemas e agende seu hor�rio (22)3843-3963. '
 end
 else  //Certificado vencido
 begin
   if (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)= 0) then
   begin
     TfrmMenssagens.Mensagem('O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' utilizado para emiss�o dos documentos elet�nicos esta VENCIDO! '
    +'Por favor, atualize-o para que o sistema volte ao funcionamento normal.','Aviso de Vencimento','V',[mbOk]);
    StatusBar1.Panels.Items[0].Text:='O certificado digital '+ frmPrincipal.ACBrNFe1.SSL.CertRazaoSocial+' utilizado para emiss�o dos documentos elet�nicos esta VENCIDO! '+
    'Por favor, atualize-o para que o sistema volte ao funcionamento normal.';
   end;
 end;
end;

procedure TfrmPrincipal.tmrAtualizaPedidoVendaTimer(Sender: TObject);
begin
  fdsPedido.Close;
  fdsPedido.Open;
  fdsPedido.Last;
  fdsPedido.First;
  fdsVenda.Close;
  fdsVenda.Open;
  fdsVenda.Last;
  fdsVenda.First;
end;

procedure TfrmPrincipal.tmrBaixarDocsTimer(Sender: TObject);
begin
  tmrBaixarDocs.Enabled := False;
  BaixaDocRecAutomatico;
end;

end.
