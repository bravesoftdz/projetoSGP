unit untCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzPanel,
  Vcl.DBCtrls, RzDBCmbo, RzDBEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzTabs, RzRadGrp, JvExStdCtrls, JvButton, JvCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvCheckBox,
  Vcl.Mask, RzEdit, RzCmboBx, RzSplit, RzBckgnd, Data.DB, FIBDataSet, DateUtils,
  pFIBDataSet, Datasnap.Provider, pFIBClientDataSet, Datasnap.DBClient,
  Vcl.ComCtrls, RzDTP, RzDBDTP, Vcl.ImgList, PngImageList, ACBrNFe, pcnNFe,
  pcnConversao,
  RzShellDialogs, FIBQuery, pFIBQuery, Math, Vcl.Menus, System.Actions,
  Vcl.ActnList, pFIBProps, ACBrBase, ACBrDFe, ACBrUtil, Vcl.Buttons,
  FIBDatabase,
  pFIBDatabase, RzPrgres, uContador, JvMemoryDataset;

type
  TfrmCompras = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnInprimir: TRzBitBtn;
    RzSplitter1: TRzSplitter;
    RzPanel3: TRzPanel;
    pnlNumCompra: TRzGroupBox;
    edtPesqNumCompra: TRzEdit;
    chkNumCompra: TJvCheckBox;
    pnlPeriodo: TRzGroupBox;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    chkPeriodo: TJvCheckBox;
    pnlFornecedor: TRzGroupBox;
    edtPesqFornecedor: TRzEdit;
    chkFornecedor: TJvCheckBox;
    btnPesquisar: TJvImgBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    tbsForm: TRzTabSheet;
    gdrCompras: TJvDBGrid;
    RzBackground1: TRzBackground;
    fdsCompraItem: TpFIBDataSet;
    dsCompras: TDataSource;
    cdsCompraItem: TpFIBClientDataSet;
    dspCompraItem: TpFIBDataSetProvider;
    dsCompraItem: TDataSource;
    fdsFilial: TpFIBDataSet;
    fdsFilialID: TFIBBCDField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    fdsFormaPagamento: TpFIBDataSet;
    FIBBCDField1: TFIBBCDField;
    FIBStringField1: TFIBStringField;
    dsFormaPagamento: TDataSource;
    btnIncluir: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    fdsCompraItemIDCOMPRA: TFIBBCDField;
    fdsCompraItemIDFILIAL: TFIBBCDField;
    fdsCompraItemITEM: TFIBSmallIntField;
    fdsCompraItemIDPROD_ITEM: TFIBBCDField;
    fdsCompraItemQTN: TFIBBCDField;
    fdsCompraItemVLR_UNITARIO: TFIBBCDField;
    fdsCompraItemVLR_DESCONTO: TFIBBCDField;
    fdsCompraItemVLR_TOTAL: TFIBBCDField;
    fdsCompraItemPESO: TFIBBCDField;
    fdsCompraItemENVIADO_WEB: TFIBStringField;
    cdsCompraItemIDCOMPRA: TpFIBClientBCDField;
    cdsCompraItemIDFILIAL: TpFIBClientBCDField;
    cdsCompraItemITEM: TSmallintField;
    cdsCompraItemIDPROD_ITEM: TpFIBClientBCDField;
    cdsCompraItemQTN: TpFIBClientBCDField;
    cdsCompraItemVLR_UNITARIO: TpFIBClientBCDField;
    cdsCompraItemVLR_DESCONTO: TpFIBClientBCDField;
    cdsCompraItemVLR_TOTAL: TpFIBClientBCDField;
    cdsCompraItemPESO: TpFIBClientBCDField;
    cdsCompraItemENVIADO_WEB: TStringField;
    fdsCompraItemNOME: TFIBStringField;
    cdsCompraItemNOME: TStringField;
    PngImageList1: TPngImageList;
    btnImportarXML: TRzBitBtn;
    RzOpenDialog1: TRzOpenDialog;
    ACBrNFe1: TACBrNFe;
    fdsCompras: TpFIBDataSet;
    fdsComprasID: TFIBBCDField;
    fdsComprasIDFILIAL: TFIBBCDField;
    fdsComprasDT_INC: TFIBDateField;
    fdsComprasSTATUS: TFIBStringField;
    fdsComprasIDFORNECEDOR: TFIBBCDField;
    fdsComprasVENDEDOR_NOME: TFIBStringField;
    fdsComprasIDFORMA_PAG: TFIBBCDField;
    fdsComprasVLR_TOTITEM: TFIBBCDField;
    fdsComprasVLR_DESCONTO: TFIBBCDField;
    fdsComprasVLR_FRETE: TFIBBCDField;
    fdsComprasVLR_TOTAL: TFIBBCDField;
    fdsComprasPESO: TFIBBCDField;
    fdsComprasPREFIXO: TFIBStringField;
    fdsComprasSUBTRIBUTARIA: TFIBBCDField;
    fdsComprasENVIADO_WEB: TFIBStringField;
    fdsComprasDT_ENTREGA: TFIBDateField;
    fdsComprasDT_EMISSAO: TFIBDateField;
    fdsComprasST: TFIBStringField;
    fdsComprasFORNECEDOR: TFIBStringField;
    fdsComprasFILIAL: TFIBStringField;
    pgcFormulario: TRzPageControl;
    tbsDANFECabe: TRzTabSheet;
    tbsDANFEItens: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    lblCidade: TRzLabel;
    lblCodigo: TRzLabel;
    lblDtInc: TRzLabel;
    RzLabel1: TRzLabel;
    lblVendedor: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel14: TRzLabel;
    edtFornecedor: TRzEdit;
    btnPesqFonecDanfe: TRzBitBtn;
    edtPrefixo: TRzDBEdit;
    edtDt_Inc: TRzDBEdit;
    edtID: TRzDBEdit;
    lbcFormaPagamento: TRzDBLookupComboBox;
    RzDBEdit2: TRzDBEdit;
    edtDesconto: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    edtVendedor: TRzDBEdit;
    dtpEmissao: TRzDBDateTimePicker;
    RzDBEdit3: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    gdrCompraItem: TJvDBGrid;
    pnlLancItens: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    edt3: TRzDBEdit;
    edt2: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    btn4: TRzBitBtn;
    btn3: TRzBitBtn;
    btn2: TRzBitBtn;
    btn1: TRzBitBtn;
    btn5: TRzBitBtn;
    edt: TRzEdit;
    edt1: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel16: TRzLabel;
    RzDBEdit13: TRzDBEdit;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzLabel25: TRzLabel;
    RzLabel15: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel26: TRzLabel;
    fdsComprasVLR_BASE_CALCULO_ICMS: TFIBBCDField;
    fdsComprasVLR_ICMS: TFIBBCDField;
    fdsComprasVLR_BASE_CALCULO_ST: TFIBBCDField;
    fdsComprasVLR_IPI: TFIBBCDField;
    fdsComprasVLR_PIS: TFIBBCDField;
    fdsComprasVLR_COFINS: TFIBBCDField;
    fdsComprasVLR_OUTRAS_DESPESAS: TFIBBCDField;
    qrySql: TpFIBQuery;
    RzEdit1: TRzEdit;
    RzLabel22: TRzLabel;
    tbsCompraSimples: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    edIdSimples: TRzDBEdit;
    RzGroupBox4: TRzGroupBox;
    edtNotaNumSimples: TRzDBEdit;
    RzLabel27: TRzLabel;
    RzDBEdit20: TRzDBEdit;
    RzLabel30: TRzLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    btnPesqFornecedor: TRzBitBtn;
    RzLabel39: TRzLabel;
    edtCustoSimples: TRzDBEdit;
    RzPanel2: TRzPanel;
    RzLabel32: TRzLabel;
    RzLabel33: TRzLabel;
    RzLabel34: TRzLabel;
    RzLabel35: TRzLabel;
    RzLabel36: TRzLabel;
    RzLabel37: TRzLabel;
    RzLabel38: TRzLabel;
    edtQtnItem: TRzDBEdit;
    edtPrecCusto: TRzDBEdit;
    edtPreVenda: TRzDBEdit;
    edtItemNome: TRzDBEdit;
    edtMargemLucro: TRzDBEdit;
    edtItemCodigo: TRzEdit;
    fdsCompraItemPREC_VENDA: TFIBBCDField;
    fdsCompraItemMARGEM_LUCRO: TFIBBCDField;
    fdsCompraItemPREC_VENDA2: TFIBBCDField;
    fdsCompraItemMARGEM_LUCRO2: TFIBBCDField;
    fdsCompraItemCOD_FABRICA: TFIBStringField;
    cdsCompraItemPREC_VENDA: TpFIBClientBCDField;
    cdsCompraItemMARGEM_LUCRO: TpFIBClientBCDField;
    cdsCompraItemPREC_VENDA2: TpFIBClientBCDField;
    cdsCompraItemMARGEM_LUCRO2: TpFIBClientBCDField;
    cdsCompraItemCOD_FABRICA: TStringField;
    cdsItemPrec: TpFIBClientDataSet;
    cdsItemPrecCUSTO_ANT: TFloatField;
    cdsItemPrecMG_LUCRO_ANT: TFloatField;
    cdsItemPrecPREC_VENDA_ANT: TFloatField;
    cdsItemPrecCUSTO_ATUAL: TFloatField;
    cdsItemPrecMG_LUCRO_ATUAL: TFloatField;
    cdsItemPrecPREC_VENDA_ATUAL: TFloatField;
    cdsItemPrecMG_LUCRO_ANT2: TFloatField;
    cdsItemPrecPREC_VENDA_ANT2: TFloatField;
    cdsItemPrecMG_LUCRO_ATUAL2: TFloatField;
    cdsItemPrecPREC_VENDA_ATUAL2: TFloatField;
    cdsItemPrecIDITEM: TIntegerField;
    cdsItemPrecDESC_MAX1: TFloatField;
    cdsItemPrecDESC_MAX2: TFloatField;
    cdsItemPrecDESC_MAX_ATUAL1: TFloatField;
    cdsItemPrecDESC_MAX_ATUAL2: TFloatField;
    fdsCompraItemDESC_MAX1: TFIBBCDField;
    fdsCompraItemDESC_MAX2: TFIBBCDField;
    cdsCompraItemDESC_MAX1: TpFIBClientBCDField;
    cdsCompraItemDESC_MAX2: TpFIBClientBCDField;
    fdsTabPreco: TpFIBDataSet;
    fdsTabPrecoID: TFIBBCDField;
    fdsTabPrecoDESCRICAO1: TFIBStringField;
    fdsTabPrecoDESCRICAO2: TFIBStringField;
    fdsTabPrecoDESCRICAO3: TFIBStringField;
    fdsTabPrecoDESCRICAO4: TFIBStringField;
    fdsTabPrecoDESCRICAO5: TFIBStringField;
    fdsTabPrecoDESCRICAO6: TFIBStringField;
    fdsTabPrecoPDV_DES1: TFIBStringField;
    fdsTabPrecoPDV_DES2: TFIBStringField;
    fdsTabPrecoPDV_DES3: TFIBStringField;
    fdsTabPrecoPDV_DES4: TFIBStringField;
    fdsTabPrecoPDV_DES5: TFIBStringField;
    fdsTabPrecoPDV_DES6: TFIBStringField;
    fdsTabPrecoPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabPrecoPORCENTAGEM_AJUSTE6: TFIBBCDField;
    cdsCompras: TpFIBClientDataSet;
    cdsComprasID: TpFIBClientBCDField;
    cdsComprasIDFILIAL: TpFIBClientBCDField;
    cdsComprasDT_INC: TDateField;
    cdsComprasSTATUS: TStringField;
    cdsComprasIDFORNECEDOR: TpFIBClientBCDField;
    cdsComprasVENDEDOR_NOME: TStringField;
    cdsComprasIDFORMA_PAG: TpFIBClientBCDField;
    cdsComprasVLR_TOTITEM: TpFIBClientBCDField;
    cdsComprasVLR_DESCONTO: TpFIBClientBCDField;
    cdsComprasVLR_FRETE: TpFIBClientBCDField;
    cdsComprasVLR_TOTAL: TpFIBClientBCDField;
    cdsComprasPESO: TpFIBClientBCDField;
    cdsComprasPREFIXO: TStringField;
    cdsComprasSUBTRIBUTARIA: TpFIBClientBCDField;
    cdsComprasENVIADO_WEB: TStringField;
    cdsComprasDT_ENTREGA: TDateField;
    cdsComprasDT_EMISSAO: TDateField;
    cdsComprasST: TStringField;
    cdsComprasFORNECEDOR: TStringField;
    cdsComprasFILIAL: TStringField;
    cdsComprasVLR_BASE_CALCULO_ICMS: TpFIBClientBCDField;
    cdsComprasVLR_ICMS: TpFIBClientBCDField;
    cdsComprasVLR_BASE_CALCULO_ST: TpFIBClientBCDField;
    cdsComprasVLR_IPI: TpFIBClientBCDField;
    cdsComprasVLR_PIS: TpFIBClientBCDField;
    cdsComprasVLR_COFINS: TpFIBClientBCDField;
    cdsComprasVLR_OUTRAS_DESPESAS: TpFIBClientBCDField;
    dsItemPrec: TDataSource;
    ActionList1: TActionList;
    impEtiqPrateleira: TAction;
    ppmImprimir: TPopupMenu;
    EtiquetadePrateleira2: TMenuItem;
    impEtiq3Colunas: TAction;
    Etiquetanormal1: TMenuItem;
    btnRecur: TRzBitBtn;
    lblVlrTotal: TRzLabel;
    RzLabel40: TRzLabel;
    lblTotal: TRzLabel;
    RzLabel41: TRzLabel;
    qrySomaTotal: TpFIBQuery;
    btnPesqFornec: TRzBitBtn;
    fdsCompraItemTIPO: TFIBStringField;
    cdsCompraItemTIPO: TStringField;
    cbxTipoNota: TRzDBComboBox;
    RzLabel42: TRzLabel;
    fdsComprasTIPO_ENTRADA: TFIBStringField;
    BitBtn1: TBitBtn;
    fdsCompraItemCFOP: TFIBStringField;
    cdsCompraItemCFOP: TStringField;
    fdsCompraItemICMS_CST: TFIBStringField;
    fdsCompraItemICMS_VBCSTRET: TFIBBCDField;
    fdsCompraItemICMS_VICMSSTRET: TFIBBCDField;
    fdsCompraItemPIS_CST: TFIBStringField;
    fdsCompraItemPIS_VBC: TFIBBCDField;
    fdsCompraItemPIS_PPIS: TFIBBCDField;
    fdsCompraItemPIS_VPIS: TFIBBCDField;
    fdsCompraItemCOFINS_CST: TFIBStringField;
    fdsCompraItemCOFINS_VBC: TFIBBCDField;
    fdsCompraItemCOFINS_PCOFINS: TFIBBCDField;
    fdsCompraItemCOFINS_VCOFINS: TFIBBCDField;
    cdsCompraItemICMS_CST: TStringField;
    cdsCompraItemICMS_VBCSTRET: TpFIBClientBCDField;
    cdsCompraItemICMS_VICMSSTRET: TpFIBClientBCDField;
    cdsCompraItemPIS_CST: TStringField;
    cdsCompraItemPIS_VBC: TpFIBClientBCDField;
    cdsCompraItemPIS_PPIS: TpFIBClientBCDField;
    cdsCompraItemPIS_VPIS: TpFIBClientBCDField;
    cdsCompraItemCOFINS_CST: TStringField;
    cdsCompraItemCOFINS_VBC: TpFIBClientBCDField;
    cdsCompraItemCOFINS_PCOFINS: TpFIBClientBCDField;
    cdsCompraItemCOFINS_VCOFINS: TpFIBClientBCDField;
    fdsFornecedor: TpFIBDataSet;
    fdsFornecedorID: TFIBBCDField;
    fdsFornecedorDT_INC: TFIBDateField;
    fdsFornecedorDT_ALT: TFIBDateField;
    fdsFornecedorSTATUS: TFIBStringField;
    fdsFornecedorNOME: TFIBStringField;
    fdsFornecedorRAZAOSOCIAL: TFIBStringField;
    fdsFornecedorCONTATO: TFIBStringField;
    fdsFornecedorTELEFONE: TFIBStringField;
    fdsFornecedorENDERECO: TFIBStringField;
    fdsFornecedorBAIRRO: TFIBStringField;
    fdsFornecedorIDCIDADE: TFIBBCDField;
    fdsFornecedorCEP: TFIBStringField;
    fdsFornecedorEMAIL: TFIBStringField;
    fdsFornecedorCELULAR: TFIBStringField;
    fdsFornecedorCNPJ: TFIBStringField;
    fdsFornecedorIE: TFIBStringField;
    fdsFornecedorENVIADO_WEB: TFIBStringField;
    fdsFornecedorNUMERO: TFIBStringField;
    fdsFornecedorCIDADE: TFIBStringField;
    fdsProduto: TpFIBDataSet;
    fdsProdutoItem: TpFIBDataSet;
    transProduto: TpFIBTransaction;
    fdsProdutoID: TFIBBCDField;
    fdsProdutoDT_INC: TFIBDateField;
    fdsProdutoDT_ALT: TFIBDateField;
    fdsProdutoSTATUS: TFIBStringField;
    fdsProdutoNOME: TFIBStringField;
    fdsProdutoREFERENCIA: TFIBStringField;
    fdsProdutoIDGRUPO: TFIBBCDField;
    fdsProdutoIDFORNECEDOR: TFIBBCDField;
    fdsProdutoDESCRICAO: TFIBBlobField;
    fdsProdutoENVIADO_WEB: TFIBStringField;
    fdsProdutoTIPO: TFIBStringField;
    fdsProdutoNCM: TFIBStringField;
    fdsProdutoCEST: TFIBStringField;
    fdsProdutoCFOP: TFIBStringField;
    fdsProdutoCST: TFIBStringField;
    fdsProdutoALIQ_ICMS: TFIBFloatField;
    fdsProdutoCSOSN: TFIBStringField;
    fdsProdutoIBPT_NACIONA_FEDERAL: TFIBBCDField;
    fdsProdutoIBPT_IMPORTADOS_FEDERAL: TFIBBCDField;
    fdsProdutoIBPT_ESTADUAL: TFIBBCDField;
    fdsProdutoIBPT_MUNICIPAL: TFIBBCDField;
    fdsProdutoIDSUBGRUPO: TFIBBCDField;
    fdsProdutoINFO_ADICIONAL: TFIBStringField;
    fdsProdutoItemID: TFIBBCDField;
    fdsProdutoItemDT_INC: TFIBDateField;
    fdsProdutoItemDT_ALT: TFIBDateField;
    fdsProdutoItemIDPRODUTO: TFIBBCDField;
    fdsProdutoItemSTATUS: TFIBStringField;
    fdsProdutoItemNOME: TFIBStringField;
    fdsProdutoItemREFERENCIA: TFIBStringField;
    fdsProdutoItemIDTAMANHO: TFIBBCDField;
    fdsProdutoItemIDCOR: TFIBBCDField;
    fdsProdutoItemPESO: TFIBBCDField;
    fdsProdutoItemPREC_CUSTO: TFIBBCDField;
    fdsProdutoItemCOD_FABRICA: TFIBStringField;
    fdsProdutoItemPREC_ULTIMO_CUSTO: TFIBBCDField;
    fdsProdutoItemDT_VALIDADE: TFIBDateField;
    fdsProdutoItemDESC_MAX1: TFIBBCDField;
    fdsProdutoItemDESC_MAX2: TFIBBCDField;
    fdsProdutoItemCOD_FABRICANTE: TFIBStringField;
    fdsProdutoItemCOMISSAO_DN: TFIBBCDField;
    fdsProdutoItemCOMISSAO_CH: TFIBBCDField;
    fdsProdutoItemCOMISSAO_CT: TFIBBCDField;
    fdsProdutoItemUNIDADE: TFIBStringField;
    fdsProdutoItemENVIADO_WEB: TFIBStringField;
    qryComand: TpFIBQuery;
    pnlProgresso: TRzGroupBox;
    pgbProgresso: TRzProgressBar;
    cdsCadadastroItens: TpFIBClientDataSet;
    cdsCadadastroItensNOME: TStringField;
    cdsCadadastroItensNCM: TStringField;
    cdsCadadastroItensIDFORNECEDOR: TIntegerField;
    cdsCadadastroItensIDGRUPO: TIntegerField;
    cdsCadadastroItensEAN: TStringField;
    cdsCadadastroItensCOD_FABRICANTE: TStringField;
    cdsCadadastroItensSITUACAO_SISTEMA: TStringField;
    cdsCadadastroItensNOME_CADASTRADO: TStringField;
    cdsCadadastroItensID: TIntegerField;
    cdsCadadastroItensIMG: TStringField;
    cdsCadadastroItensENCONTROU: TStringField;
    cdsCadadastroItensMARGEM_LUCRO: TFloatField;
    fdsComprasCHAVE_NOTA: TFIBStringField;
    fdsComprasNOTA_NUM: TFIBStringField;
    cdsComprasCHAVE_NOTA: TStringField;
    cdsComprasNOTA_NUM: TStringField;
    RzDBEdit12: TRzDBEdit;
    RzLabel43: TRzLabel;
    fdsCompraItemVLR_FRETE: TFIBBCDField;
    cdsCompraItemVLR_FRETE: TpFIBClientBCDField;
    RzDBEdit16: TRzDBEdit;
    RzLabel44: TRzLabel;
    fdsCompraItemCONVERSAO: TFIBBCDField;
    cdsCompraItemCONVERSAO: TpFIBClientBCDField;
    fdsCompraItemVLR_UNT_TEMP: TFIBBCDField;
    cdsCompraItemVLR_UNT_TEMP: TpFIBClientBCDField;
    fdsCompraItemQUANT_PROD: TFIBBCDField;
    cdsCompraItemQUANT_PROD: TpFIBClientBCDField;
    edtVlrTot_Produto: TRzDBEdit;
    RzLabel45: TRzLabel;
    fdsComprasSEGURO: TFIBBCDField;
    RzGroupBox5: TRzGroupBox;
    RzLabel50: TRzLabel;
    RzLabel47: TRzLabel;
    RzLabel48: TRzLabel;
    RzLabel49: TRzLabel;
    edtVlrST: TRzDBEdit;
    edtValorIPI: TRzDBEdit;
    edtFreteSimples: TRzDBEdit;
    edtSeguro: TRzDBEdit;
    RzLabel46: TRzLabel;
    edtVDesconto: TRzDBEdit;
    RzLabel31: TRzLabel;
    edtOutrasDespesas: TRzDBEdit;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzLabel51: TRzLabel;
    fdsCompraItemVLR_FUNDO_POBREZA: TFIBBCDField;
    fdsCompraItemVLR_IPI_PROD: TFIBBCDField;
    fdsCompraItemVLR_ISMS_ST: TFIBBCDField;
    fdsCompraItemVLR_SEGURO: TFIBBCDField;
    fdsCompraItemVLR_OUTRAS_DESPESAS: TFIBSmallIntField;
    cdsCompraItemVLR_FUNDO_POBREZA: TpFIBClientBCDField;
    cdsCompraItemVLR_IPI_PROD: TpFIBClientBCDField;
    cdsCompraItemVLR_ISMS_ST: TpFIBClientBCDField;
    cdsCompraItemVLR_SEGURO: TpFIBClientBCDField;
    cdsCompraItemVLR_OUTRAS_DESPESAS: TSmallintField;
    fdsCompraItemOBS: TFIBStringField;
    cdsCompraItemOBS: TStringField;
    fdsComprasVLR_FUNDO_POBREZA: TFIBBCDField;
    edtFundoPobreza: TRzDBEdit;
    RzLabel52: TRzLabel;
    cdsCadadastroItensID_TEMP: TIntegerField;
    cdsCadadastroItensEAN_TEMP: TStringField;
    cdsCadadastroItensMARGEM_LUCRO_TEMP: TFloatField;
    qryCancelaCadastroItens: TpFIBQuery;
    cdsProdutoCadastrado: TJvMemoryData;
    cdsProdutoCadastradoID_PRODUTO: TIntegerField;
    cdsProdutoCadastradoID_PRODUTO_ITEM: TIntegerField;
    RzSplitter2: TRzSplitter;
    Panel1: TPanel;
    gdrItens: TJvDBGrid;
    Panel2: TPanel;
    edtCFOP: TRzDBEdit;
    RzLabel53: TRzLabel;
    edtCSOSN: TRzDBEdit;
    RzLabel54: TRzLabel;
    edtNCM: TRzDBEdit;
    RzLabel55: TRzLabel;
    Panel3: TPanel;
    btnItemAlterar: TRzBitBtn;
    btnItemExcluir: TRzBitBtn;
    btnItemCancelar: TRzBitBtn;
    btnItemGravar: TRzBitBtn;
    btnItensIncluir: TRzBitBtn;
    fdsCompraItemCSOSN: TFIBStringField;
    fdsCompraItemNCM: TFIBStringField;
    fdsCompraItemCEST: TFIBStringField;
    cdsCompraItemCSOSN: TStringField;
    cdsCompraItemNCM: TStringField;
    cdsCompraItemCEST: TStringField;
    cdsCadadastroItensGTIN: TStringField;
    cdsCadadastroItensCADASTRAR: TBooleanField;
    cbxEstoque: TRzDBComboBox;
    RzLabel56: TRzLabel;
    fdsComprasTIPO_ESTOQUE: TFIBStringField;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    RzDBEdit22: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    RzLabel57: TRzLabel;
    RzLabel58: TRzLabel;
    RzLabel59: TRzLabel;
    RzLabel60: TRzLabel;
    RzLabel61: TRzLabel;
    BalloonHint1: TBalloonHint;
    fdsCompraItemPORCENT_FCP: TFIBBCDField;
    fdsCompraItemALIQ_PICMS: TFIBBCDField;
    cdsCompraItemPORCENT_FCP: TpFIBClientBCDField;
    cdsCompraItemALIQ_PICMS: TpFIBClientBCDField;
    fdsProdutoFCP: TFIBBCDField;
    fdsProdutoCST_PIS: TFIBStringField;
    fdsProdutoCST_COFINS: TFIBStringField;
    fdsCompraItemCST_PIS: TFIBStringField;
    fdsCompraItemCST_COFINS: TFIBStringField;
    cdsCompraItemCST_PIS: TStringField;
    cdsCompraItemCST_COFINS: TStringField;
    fdsCompraItemINFORMACAO: TFIBStringField;
    cdsCompraItemINFORMACAO: TStringField;
    cdsComprasTIPO_ESTOQUE: TStringField;
    fdsProdutoItemPREC_VENDA: TFIBBCDField;
    fdsProdutoItemPREC_CUSTO_MEDIO: TFIBBCDField;
    cdsProdAssociado: TJvMemoryData;
    cdsProdAssociadoIDPROD_ITEM: TIntegerField;
    cdsProdAssociadoIDPRODUTO: TIntegerField;
    cdsProdAssociadoCOD_FABRICA: TStringField;
    cdsProdAssociadoCOD_FABRICANTE: TStringField;
    cdsProdAssociadoSTATUS: TStringField;
    cdsProdAssociadoNOME: TStringField;
    cdsProdAssociadoNCM: TStringField;
    cdsProdAssociadoIDFORNECEDOR: TIntegerField;
    fdsIbpt: TpFIBDataSet;
    fdsIbptID: TFIBBCDField;
    fdsIbptDT_ALT: TFIBDateField;
    fdsIbptUF: TFIBStringField;
    fdsIbptNCM: TFIBStringField;
    fdsIbptDESCRICAO: TFIBStringField;
    fdsIbptNACIONAL_FEDERAL: TFIBBCDField;
    fdsIbptNACIONAL_IMPORTADOS: TFIBBCDField;
    fdsIbptESTADUAL: TFIBBCDField;
    fdsIbptMUNICIPAL: TFIBBCDField;
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RetornaFornecedor(campo, valor: string);
    function MyLocateItem(chave1: string): Boolean;
    procedure RetornaItensCompra;
    procedure btnGravarClick(Sender: TObject);
    procedure fdsComprasAfterScroll(DataSet: TDataSet);
    procedure tbsFormShow(Sender: TObject);
    procedure gdrComprasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure fdsFilialAfterOpen(DataSet: TDataSet);
    procedure chkFilialClick(Sender: TObject);
    procedure chkNumCompraClick(Sender: TObject);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure edtPesqNumCompraEnter(Sender: TObject);
    procedure edtPesqNumCompraExit(Sender: TObject);
    procedure edtPesqFornecedorEnter(Sender: TObject);
    procedure edtPesqFornecedorExit(Sender: TObject);
    procedure gdrCompraItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsCompraItemAfterScroll(DataSet: TDataSet);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtFrete(Sender: TObject);
    procedure edtSubTributaria(Sender: TObject);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnItensIncluirClick(Sender: TObject);
    procedure edtItemCodigoExit(Sender: TObject);
    procedure edtMargemLucroExit(Sender: TObject);
    procedure btnPesqFornecedorClick(Sender: TObject);
    procedure edtPreVendaExit(Sender: TObject);
    procedure btnItemGravarClick(Sender: TObject);
    procedure btnItemCancelarClick(Sender: TObject);
    procedure btnItemExcluirClick(Sender: TObject);
    procedure btnItemAlterarClick(Sender: TObject);
    procedure edtFreteSimplesExit(Sender: TObject);
    procedure edtFreteSimplesEnter(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure impEtiqPrateleiraExecute(Sender: TObject);
    procedure impEtiq3ColunasExecute(Sender: TObject);
    procedure btnRecurClick(Sender: TObject);
    procedure btnPesqFornecClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cdsCompraItemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtPrecCustoExit(Sender: TObject);
    procedure RzDBEdit16Exit(Sender: TObject);
    procedure edtMargemLucroChange(Sender: TObject);
    procedure edtQtnItemExit(Sender: TObject);
    procedure edtValorIPIExit(Sender: TObject);
    procedure edtValorIPIEnter(Sender: TObject);
    procedure edtVlrSTExit(Sender: TObject);
    procedure edtVlrSTEnter(Sender: TObject);
    procedure edtSeguroEnter(Sender: TObject);
    procedure edtSeguroExit(Sender: TObject);
    procedure edtVDescontoExit(Sender: TObject);
    procedure edtVDescontoEnter(Sender: TObject);
    procedure edtOutrasDespesasExit(Sender: TObject);
    procedure edtOutrasDespesasEnter(Sender: TObject);
    procedure edtNotaNumSimplesExit(Sender: TObject);
    procedure RzGroupBox5Enter(Sender: TObject);
    procedure edtFundoPobrezaExit(Sender: TObject);
    procedure edtFundoPobrezaEnter(Sender: TObject);
    procedure RzSplitter2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    function IsFornecedorCadastrado(razao, cnpj: string): Boolean;
    function IsNotaLancada(Numero: string): Boolean;
    procedure EditaInsere;
    procedure FinalizaCompra;
    procedure ControlaBtnsItens;
    procedure GravaCDSCompras;
    procedure GravaCancela();
    procedure PesquisarItem(itemCodigo: string);
    procedure Pesquisar;
    procedure SomaTotalCompras;
    procedure PreparaLancamentoCompra;
    function CadastrarFornecedor: Integer;
    function RetornaIDCidade(codigo: Integer): Integer;
    procedure ConfigTipoCompra(tipo: string);
    procedure PesquisaFornecedor;
    procedure VerificaConfTabelaPreco;
    procedure ConfImprimir(tipo: string);
    function CadastraProduto(): string;
    procedure EditaProduto();
    procedure IniciaContador;
    procedure TerminaContador;
    procedure GerenciarItens();
    procedure DeletarCompra;
  end;

const
  tamDanfeWidth: Integer = 960;
  tamNormalWidth: Integer = 818;

var
  frmCompras: TfrmCompras;
  imprimirAnalitic, alterandoItem, imprimir: Boolean;
  idCompra, idFornecedor, item: Integer;
  cfop,csosn,cest,cst_pis,cst_cofins,informacao:String;
  aliq_icms,fcp:Double;
  pesoTotal, totalNota,totalItem, precoCusto,precoVenda: Double;
  tempo: Integer;
  manual: Boolean;
  TrheadContador: TContador;

implementation

{$R *.dfm}

uses untData, untPesqProdutoItens, uUtils, untPesqFornecedor,
  untCompraFinalizacao, untPrincipal, untPrecItemAtualizacao,
  untEtiquetaPrateleira, untSelGrupo, untItensXMLCompra;

procedure TfrmCompras.BitBtn1Click(Sender: TObject);
begin
  fdsCompras.Close;
  fdsCompraItem.Open;
  fdsCompraItem.Last;
  fdsCompraItem.First;
  // ShowMessage(inttostr(fdsCompraItem.RecordCount));

  while not(fdsCompraItem.Eof) do
  begin
    with qrySql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('EXECUTE PROCEDURE gera_mov_item_gerencial(' +
        fdsCompraItemIDPROD_ITEM.AsString + ', ' +
        fdsCompraItemIDFILIAL.AsString + ', ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', Now)) + ', ' +
        QuotedStr('COMPRA - ACERTO') + ', ' + fdsCompraItemIDCOMPRA.AsString +
        ', ' + QuotedStr('E') + ', ' + fdsCompraItemQTN.AsString + ', ' +
        fdsCompraItemIDFILIAL.AsString + ')');
      Prepare;
      ExecQuery;
    end;
    DM.transPricipal.CommitRetaining;
    fdsCompraItem.Next;
  end;
end;

procedure TfrmCompras.btnCancelarClick(Sender: TObject);
var
  statusTemp: string[2];
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente abandonar o lan�amento atual?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        statusTemp := fdsComprasSTATUS.AsString;
        cdsCompraItem.EmptyDataSet;
        cdsCompraItem.Close;
        fdsCompras.Cancel;
        DM.Conexao.RollbackRetaining;

        {if (manual= False) and (cdsProdAssociado.RecordCount > 0)  then
        begin
          cdsProdAssociado.First;
          while not(cdsProdAssociado.Eof) do
          begin
            with qryCancelaCadastroItens do
            begin
              Close;
              SQL.Clear;
              SQL.Add('EXECUTE PROCEDURE CANCELA_UPDATE_ITEM_COMPRA(:IDITEM,:IDPRODUTO,:STATUS,:NOME,:NCM,:IDFORNRCEDOR,:COD_FABRICA,:COD_FABRICANTE)');
              ParamByName('IDITEM').AsInteger := cdsProdAssociadoIDPROD_ITEM.AsInteger;
              ParamByName('IDPRODUTO').AsInteger := cdsProdAssociadoIDPRODUTO.AsInteger;
              ParamByName('STATUS').AsString := cdsProdAssociadoSTATUS.AsString;
              ParamByName('NOME').AsString := cdsProdAssociadoNOME.AsString;
              ParamByName('NCM').AsString :=cdsProdAssociadoNCM.AsString;
              ParamByName('IDFORNECEDOR').AsInteger := cdsProdAssociadoIDFORNECEDOR.AsInteger;
              ParamByName('COD_FABRICA').AsString := cdsProdAssociadoCOD_FABRICA.AsString;
              ParamByName('COD_FABRICANTE').AsString := cdsProdAssociadoCOD_FABRICANTE.AsString;
              Prepare;
              ExecQuery;
              DM.Conexao.CommitRetaining;
            end;
            cdsProdAssociado.next;
          end;
        end;}
        if (manual= False) and (cdsProdutoCadastrado.RecordCount > 0)  then
        begin
          cdsProdutoCadastrado.First;
          while not(cdsProdutoCadastrado.Eof) do
          begin
            with qryCancelaCadastroItens do
            begin
              Close;
              SQL.Clear;
              SQL.Add('EXECUTE PROCEDURE deleta_item_compra_cncel(:IDFILIAL,:IDITEM,:IDPRODUTO)');
              ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
              ParamByName('IDITEM').AsInteger := cdsProdutoCadastradoID_PRODUTO_ITEM.AsInteger;
              ParamByName('IDPRODUTO').AsInteger := cdsProdutoCadastradoID_PRODUTO.AsInteger;
              Prepare;
              ExecQuery;
              DM.Conexao.CommitRetaining;
            end;
            cdsProdutoCadastrado.next;
          end;
          cdsProdutoCadastrado.EmptyTable;
          cdsProdAssociado.EmptyTable;
        end;
        GravaCancela;
        Pesquisar;
      end;
  end;
end;

procedure TfrmCompras.btnDeleteClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir est� nota de compra?'), 'Aten��o',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) of
    idYes:
      begin
        DeletarCompra;
        Application.MessageBox('Compra exclu�da com sucesso!', 'Sucesso',
          MB_ICONEXCLAMATION + MB_OK);
      end;
  end;
end;

procedure TfrmCompras.btnFirstClick(Sender: TObject);
begin
  fdsCompras.Prior;
end;

procedure TfrmCompras.btnGravarClick(Sender: TObject);
begin
  if not(alterandoItem) then
  begin
    Application.MessageBox
      ('Voc� est� incluindo ou alterando um item, grave a inclus�o/altera��o deste primeiro e depois grave a compra.',
      'Ante��o', MB_OK + MB_ICONERROR);
    edtQtnItem.SetFocus;
    Abort;
  end;

  if (fdsComprasIDFORNECEDOR.AsInteger = 0) then
  begin
    Application.MessageBox('Informe um fornecedor antes de gravar a compra.',
      'Ante��o', MB_OK + MB_ICONERROR);
    btnPesqFornecedor.Click;;
  end
  else
  begin
    if cdsCompraItem.RecordCount = 0 then
    begin
      Application.MessageBox('Voc� n�o pode gravar uma Compra sem itens.',
        'Ante��o', MB_OK + MB_ICONERROR);
      btnItensIncluir.SetFocus;
      Abort;
    end;

    Case MessageBox(Application.Handle,
      Pchar('Deseja lan�ar os dados de pagamento agora?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
      idYes:
        begin
          FinalizaCompra;
        end;

      IDNO:
        begin
          fdsComprasIDFORMA_PAG.AsInteger := 1;
          fdsCompras.Post;
          cdsCompraItem.ApplyUpdates(-1);
          DM.Conexao.CommitRetaining;
          Application.MessageBox('Compra lan�ada com sucesso.', 'Aten��o',
            MB_ICONEXCLAMATION + MB_OK);

          cdsCompraItem.EmptyDataSet;
          cdsCompraItem.SaveToFile('TempCompraItens.xml', dfXML);
          cdsCompras.EmptyDataSet;
          cdsCompras.SaveToFile('TempCompra.xml', dfXML);

          GravaCancela;
        end;
    end;
    Case MessageBox(Application.Handle,
      Pchar('Deseja Imprimir Etiqueta dos Produtos?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
      idYes:
      begin
        Try
          RetornaItensCompra;
          frmEtiquetaPrateleira := TfrmEtiquetaPrateleira.Create(nil);
          frmEtiquetaPrateleira.totImprimir := fdsCompraItem.RecordCount;
          while not(fdsCompraItem.Eof) do
          begin
            frmEtiquetaPrateleira.fdsItens.Append;
            frmEtiquetaPrateleira.fdsItensNOME.AsString :=
              fdsCompraItemNOME.AsString;
            frmEtiquetaPrateleira.fdsItensIMPRIMIR.AsString := 'S';
            frmEtiquetaPrateleira.fdsItensSaldo.AsFloat := fdsCompraItemQTN.AsFloat;
            frmEtiquetaPrateleira.fdsItensCOD_FABRICA.AsString :=
              fdsCompraItemCOD_FABRICA.AsString;
            frmEtiquetaPrateleira.fdsItensPREC_VENDA.AsCurrency :=
              fdsCompraItemPREC_VENDA.AsCurrency;
            frmEtiquetaPrateleira.fdsItensPREC_VENDA2.AsCurrency :=
              fdsCompraItemPREC_VENDA2.AsCurrency;
            frmEtiquetaPrateleira.fdsItens.Post;
            fdsCompraItem.Next;
          end;
          frmEtiquetaPrateleira.ShowModal;
        Finally
          frmEtiquetaPrateleira.Free;
        End;
      end;
    End;
  end;
end;

procedure TfrmCompras.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n, idFornecedor, idGrupo: Integer;
  margem_lucro: Double;
  Produto: TDetCollectionItem;
  EAN: string[13];
  CodFabrica: string;
  utils: TUtils;
  m:SmallInt;
begin
  idGrupo := -1;

  RzOpenDialog1.FileName := '';
  RzOpenDialog1.Title := 'Selecione a NFE';
  RzOpenDialog1.DefaultExt := '*.XML';
  RzOpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  RzOpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'XML\Compra';

  if RzOpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.Add;

    try
      ACBrNFe1.NotasFiscais.LoadFromFile(RzOpenDialog1.FileName);
    except
      ShowMessage('Arquivo NFe Inv�lido');
      exit;
    end;

    if (ACBrNFe1.NotasFiscais[1].NFe.Dest.CNPJCPF <> DM.fdsConfigCNPJ.AsString)
    then
    begin
      Application.MessageBox
        ('Esta nota fiscal nao � do seu CNPJ, escolha outra nota.', 'Aten��o',
        MB_OK + MB_ICONWARNING);
      tbsTabela.Show;
      btnImportarXML.SetFocus;
      Abort;
    end
    else
    begin

      with ACBrNFe1.NotasFiscais[1].NFe do
      begin
        if IsNotaLancada(infNFe.ID) then
        begin
          Application.MessageBox
            ('Esta nota j� foi lan�ada no sistema, escolha outra nota.',
            'Aten��o', MB_OK + MB_ICONWARNING);
          tbsTabela.Show;
          btnImportarXML.SetFocus;
          Abort;
        end;
      end;

      with ACBrNFe1.NotasFiscais.Items[1].NFe do
      begin

        IniciaContador;

        if not(IsFornecedorCadastrado(Emit.xNome, Emit.CNPJCPF)) then
        begin
          idFornecedor := CadastrarFornecedor;
        end
        else
        begin
          idFornecedor := fdsFornecedorID.AsInteger;
        end;

        PreparaLancamentoCompra;

        // Inicio Cabe�alho da Nota
        fdsComprasDT_EMISSAO.AsDateTime := ide.dEmi;
        fdsComprasFORNECEDOR.AsString := Emit.xFant;
        fdsComprasIDFORNECEDOR.AsInteger := fdsFornecedorID.AsInteger;
        fdsComprasCHAVE_NOTA.AsString := infNFe.ID;
        fdsComprasNOTA_NUM.AsString := IntToStr(ide.nNF);
        fdsComprasTIPO_ESTOQUE.AsString :='N';
        fdsComprasVLR_FRETE.AsFloat := Total.ICMSTot.vFrete;
        fdsComprasVLR_DESCONTO.AsFloat := Total.ICMSTot.vDesc;
        fdsComprasVLR_IPI.AsFloat := Total.ICMSTot.vIPI;
        fdsComprasVLR_BASE_CALCULO_ICMS.AsFloat := Total.ICMSTot.vBC;
        fdsComprasVLR_ICMS.AsFloat := Total.ICMSTot.vICMS;
        fdsComprasVLR_BASE_CALCULO_ST.AsFloat := Total.ICMSTot.vBCST;
        fdsComprasSUBTRIBUTARIA.AsFloat := Total.ICMSTot.vST;
        fdsComprasVLR_FUNDO_POBREZA.AsFloat := Total.ICMSTot.vFCPST;
        fdsComprasVLR_OUTRAS_DESPESAS.AsFloat := Total.ICMSTot.vOutro;
        fdsComprasSEGURO.AsFloat := Total.ICMSTot.vSeg;
        fdsComprasVLR_PIS.AsFloat := Total.ICMSTot.vPIS;
        fdsComprasVLR_COFINS.AsFloat := Total.ICMSTot.vCOFINS;
        fdsComprasVLR_TOTITEM.AsFloat := Total.ICMSTot.vProd;
        fdsComprasVLR_TOTAL.AsFloat := Total.ICMSTot.vNF;
        totalNota := fdsComprasVLR_TOTAL.AsFloat;
        totalItem:= fdsComprasVLR_TOTITEM.AsFloat;
        // Fim Cabe�alho

        // Lan�a produtos
        for i := 0 to (ACBrNFe1.NotasFiscais.Items[1].NFe.Det.Count - 1) do
        begin
          Produto := ACBrNFe1.NotasFiscais.Items[1].NFe.Det.Items[i];
          EAN := '';
          CodFabrica := '';

          if Length(Produto.Prod.cEAN) > 13 then
            EAN := Produto.Prod.cEAN.Substring(1)
          else
            EAN := Produto.Prod.cEAN;

          CodFabrica := utils.RetiraZerosEsquerda(Produto.Prod.cProd);

          if (EAN = 'SEM GTIN') then
          begin
            EAN := EmptyStr;
            EAN := utils.TiraCaracterEspecial(CodFabrica + IntToStr(cdsCompraItem.RecordCount + 1));
          end
          else
            EAN := Produto.Prod.cEAN;
          // if Trim(EAN) = EmptyStr then
          // EAN := 'VAZIO';

          if Trim(CodFabrica) = EmptyStr then
            CodFabrica := 'VAZIO';

          cdsCompraItem.Append;
          cdsCompraItemIDCOMPRA.AsInteger := fdsComprasID.AsInteger;
          cdsCompraItemIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
          cdsCompraItemITEM.AsInteger := i + 1;
          cdsCompraItemQTN.AsFloat := Produto.Prod.qCom;
          cdsCompraItemQUANT_PROD.AsFloat := Produto.Prod.qCom;

          cdsCompraItemVLR_DESCONTO.AsFloat :=RoundTo(Produto.Prod.vDesc/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_FRETE.AsFloat := RoundTo(Produto.Prod.vFrete/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_SEGURO.AsFloat := RoundTo(Produto.Prod.vSeg/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_OUTRAS_DESPESAS.AsFloat:= RoundTo(Produto.Prod.vOutro/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_IPI_PROD.AsFloat:= RoundTo(Produto.Imposto.IPI.vIPI/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_ISMS_ST.AsFloat:= RoundTo(Produto.Imposto.ICMS.vICMSST/cdsCompraItemQTN.AsFloat,-2);
          cdsCompraItemVLR_FUNDO_POBREZA.AsFloat:=RoundTo(Produto.Imposto.ICMS.vFCPST/cdsCompraItemQTN.AsFloat,-2);

          cdsCompraItemVLR_UNITARIO.AsFloat := Produto.Prod.vUnCom - cdsCompraItemVLR_DESCONTO.AsFloat + cdsCompraItemVLR_FRETE.AsFloat + cdsCompraItemVLR_SEGURO.AsFloat +
            cdsCompraItemVLR_OUTRAS_DESPESAS.AsFloat +  cdsCompraItemVLR_IPI_PROD.AsFloat + cdsCompraItemVLR_ISMS_ST.AsFloat + cdsCompraItemVLR_FUNDO_POBREZA.AsFloat;

          cdsCompraItemNOME.AsString := Produto.Prod.xProd;
          cdsCompraItemCOD_FABRICA.AsString := EAN; // Produto.Prod.cEAN;
          cdsCompraItemVLR_TOTAL.AsFloat :=cdsCompraItemVLR_UNITARIO.AsFloat * cdsCompraItemQTN.AsInteger;
          cdsCompraItemTIPO.AsString := 'RV';
          cdsCompraItemENVIADO_WEB.AsString := 'N';
          cdsCompraItemCONVERSAO.AsFloat := 1;
          cdsCompraItemVLR_UNT_TEMP.AsFloat := cdsCompraItemVLR_UNITARIO.AsFloat;
          // tributa��o

          cdsCompraItemOBS.AsString := 'Custo =(Custo Unit�rio='+FloatToStr(Produto.Prod.vUnCom)+')+(FCP='+ FloatToStr(cdsCompraItemVLR_FUNDO_POBREZA.AsFloat)+')+(IPI='+FloatToStr(cdsCompraItemVLR_IPI_PROD.AsFloat)+
            ')+(FRETE='+FloatToStr(cdsCompraItemVLR_FRETE.AsFloat)+')+(ICMSST='+FloatToStr(cdsCompraItemVLR_ISMS_ST.AsFloat)+')+(SEGURO='+FloatToStr(cdsCompraItemVLR_SEGURO.AsFloat)+')+(OUTROS='+FloatToStr(cdsCompraItemVLR_OUTRAS_DESPESAS.AsFloat)+
            ')-(DESCONTO='+FloatToStr(cdsCompraItemVLR_DESCONTO.AsFloat)+')';

          cdsCompraItemCFOP.AsString := Produto.Prod.CFOP;
          cdsCompraItemNCM.AsString:=Produto.Prod.NCM;
          if Produto.Imposto.ICMS.CSOSN = csosnVazio then
          begin
            cdsCompraItemICMS_CST.AsString := OrigToStr(Produto.Imposto.ICMS.orig) +CSTICMSToStr(Produto.Imposto.ICMS.CST);
            cdsCompraItemICMS_VBCSTRET.AsFloat := Produto.Imposto.ICMS.vBCSTRet;
            cdsCompraItemICMS_VICMSSTRET.AsFloat :=Produto.Imposto.ICMS.vICMSSTRet;
          end
          else
          begin
            cdsCompraItemICMS_CST.AsString := OrigToStr(Produto.Imposto.ICMS.orig) + CSOSNIcmsToStr(Produto.Imposto.ICMS.CSOSN);
          end;

          cdsCompraItemPIS_CST.AsString := CSTPISToStr(Produto.Imposto.PIS.CST);
          cdsCompraItemPIS_VBC.AsFloat := Produto.Imposto.PIS.vBC;
          cdsCompraItemPIS_PPIS.AsFloat := Produto.Imposto.PIS.pPIS;
          cdsCompraItemPIS_VPIS.AsFloat := Produto.Imposto.PIS.vPIS;

          cdsCompraItemCOFINS_CST.AsString := CSTPISToStr(Produto.Imposto.PIS.CST);
          cdsCompraItemCOFINS_VBC.AsFloat := Produto.Imposto.COFINS.vBC;
          cdsCompraItemCOFINS_PCOFINS.AsFloat := Produto.Imposto.COFINS.pCOFINS;
          cdsCompraItemCOFINS_VCOFINS.AsFloat := Produto.Imposto.COFINS.vCOFINS;
          // fim tributa��o

          with qrySql do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT PI.*, P.TIPO, P.NCM, PIE.* FROM PRODUTO_ITEM PI, PRODUTO P, PRODUTO_ITEM_ESTOQUE PIE ');
            SQL.Add('WHERE ((PI.COD_FABRICA = :COD_FABRICA )or (PI.COD_FABRICANTE = :COD_FABRICANTE AND P.IDFORNECEDOR= :IDFORNECEDOR )) AND P.ID = PI.IDPRODUTO AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL');
            // MEXI AK
            ParamByName('COD_FABRICA').AsString := EAN;
            ParamByName('COD_FABRICANTE').AsString := CodFabrica;
            ParamByName('IDFORNECEDOR').AsString := IntToStr(idFornecedor);
            ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
            Prepare;
            ExecQuery;
          end;

          if qrySql.RecordCount = 0 then
          begin
            if idGrupo < 0 then
            begin
              Try
                frmSelGrupo := TfrmSelGrupo.Create(nil);
                frmSelGrupo.ShowModal;
              Finally
                if frmSelGrupo.ModalResult = mrOk then
                begin
                  idGrupo := StrToInt(frmSelGrupo.cbxGrupo.Value);
                  frmSelGrupo.fdsGrupo.Locate('ID', idGrupo, []);
                  margem_lucro := frmSelGrupo.fdsGrupoMARGEM_LUCRO.AsFloat;
                  if margem_lucro = 0 then
                    margem_lucro := DM.fdsConfigMARGEN_LUCRO_PADRAO.AsFloat;

                end;
                frmSelGrupo.Free;
              End;
            end;

            // cdsCompraItemSITUACAO_SISTEMA.AsString := 'N�O ENCONTRADO';
            cdsCompraItemIDPROD_ITEM.AsInteger := 0;
            cdsCompraItemMARGEM_LUCRO.AsFloat := margem_lucro;
            cdsCompraItemPREC_VENDA.AsFloat := 0;

            with cdsCadadastroItens do
            begin
              Open;
              Append;
              cdsCadadastroItensID.AsInteger := 0;
              cdsCadadastroItensNOME.AsString := Produto.Prod.xProd;
              cdsCadadastroItensNCM.AsString := Produto.Prod.NCM;
              cdsCadadastroItensIDFORNECEDOR.AsInteger := idFornecedor;
              cdsCadadastroItensIDGRUPO.AsInteger := idGrupo;
              cdsCadadastroItensEAN.AsString := EAN;
              cdsCadadastroItensCOD_FABRICANTE.AsString := CodFabrica;
              cdsCadadastroItensNOME_CADASTRADO.AsString := Produto.Prod.xProd;
              cdsCadadastroItensMARGEM_LUCRO.AsFloat := margem_lucro;
              cdsCadadastroItensENCONTROU.AsString := 'N';
              Post;
            end;
          end
          else
          begin
            cdsCompraItemIDPROD_ITEM.AsInteger := qrySql.FieldByName('ID')
              .AsInteger;

            if not(qrySql.FieldByName('COD_FABRICA').AsString =EmptyStr) then
            cdsCompraItemCOD_FABRICA.AsString := qrySql.FieldByName('COD_FABRICA').AsString;

            cdsCompraItemMARGEM_LUCRO.AsFloat :=
              qrySql.FieldByName('MARGEM_LUCRO').AsFloat;

            if cdsCompraItemMARGEM_LUCRO.AsFloat > 0 then
              cdsCompraItemPREC_VENDA.AsFloat :=
                RoundTo(((cdsCompraItemVLR_UNITARIO.AsFloat -
                cdsCompraItemVLR_DESCONTO.AsFloat +
                cdsCompraItemVLR_FRETE.AsFloat) +
                ((cdsCompraItemVLR_UNITARIO.AsFloat -
                cdsCompraItemVLR_DESCONTO.AsFloat +
                cdsCompraItemVLR_FRETE.AsFloat) *
                cdsCompraItemMARGEM_LUCRO.AsFloat / 100)), -2)
            else
            begin
              cdsCompraItemPREC_VENDA.AsFloat :=
                qrySql.FieldByName('PREC_VENDA').AsFloat;
              precoVenda:= qrySql.FieldByName('PREC_VENDA').AsFloat;
            end;
            cdsCompraItemINFORMACAO.AsString:='Pre�o:R$'+qrySql.FieldByName('PREC_VENDA').AsString+' Pre�o de Custo:R$'+qrySql.FieldByName('PREC_CUSTO').AsString+' Custo M�dio:R$'+qrySql.FieldByName('PREC_CUSTO_MEDIO').AsString;
            with cdsCadadastroItens do
            begin
              Open;
              Append;
              cdsCadadastroItensID.AsInteger := qrySql.FieldByName('ID')
                .AsInteger;
              cdsCadadastroItensID_TEMP.AsInteger:= qrySql.FieldByName('ID')
                .AsInteger;
              cdsCadadastroItensNOME.AsString := Produto.Prod.xProd;
              cdsCadadastroItensNCM.AsString := Produto.Prod.NCM;
              cdsCadadastroItensIDFORNECEDOR.AsInteger := idFornecedor;
              cdsCadadastroItensIDGRUPO.AsInteger := idGrupo;
              cdsCadadastroItensEAN.AsString := qrySql.FieldByName('COD_FABRICA').AsString;//EAN;
              cdsCadadastroItensEAN_TEMP.AsString := qrySql.FieldByName('COD_FABRICA').AsString;
              cdsCadadastroItensGTIN.AsString := EAN;
              cdsCadadastroItensCOD_FABRICANTE.AsString := CodFabrica;
              cdsCadadastroItensNOME_CADASTRADO.AsString :=
                qrySql.FieldByName('NOME').AsString;
              cdsCadadastroItensMARGEM_LUCRO.AsFloat :=
                qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
              cdsCadadastroItensMARGEM_LUCRO_TEMP.AsFloat :=  qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
              cdsCadadastroItensENCONTROU.AsString := 'S';
              Post;
            end;
          end;

          cdsCompraItem.Post;
        end;
        // Fim Produtos

        btnItemAlterar.Enabled := True;
        btnItemExcluir.Enabled := True;
        cdsItemPrec.First;
        TerminaContador;
      end;
      GerenciarItens;
    end;
    RzDBEdit16.Visible := True;
    RzLabel44.Visible := True;
    manual := False;
    edtVlrTot_Produto.Enabled:=false;
    edtFreteSimples.Enabled:=false;
    edtValorIPI.Enabled:= False;
    edtOutrasDespesas.Enabled:= False;
    edtVDesconto.Enabled:=False;
    edtVlrST.Enabled:=False;
    edtSeguro.Enabled:= False;
    edtFundoPobreza.Enabled:=False;
    for m := 0 to ComponentCount - 1 do
    begin
      if (Components[m].Name = 'pgcControl' ) then
      begin
        TRzPageControl(Components[m]).ActivePageIndex:= 1;
        TRzPageControl(Components[m]).Pages[0].TabVisible := False;
      end;
    end;
  end;
end;

procedure TfrmCompras.btnIncluirClick(Sender: TObject);
var
  i: Smallint;
begin
  PreparaLancamentoCompra;
  ConfigTipoCompra('S');
  cdsCompras.Append;
  RzDBEdit16.Visible := False;
  RzLabel44.Visible := False;
  manual := True;
  edtVlrTot_Produto.Enabled:=True;
  edtFreteSimples.Enabled:=True;
  edtValorIPI.Enabled:= True;
  edtOutrasDespesas.Enabled:= True;
  edtVDesconto.Enabled:=True;
  edtVlrST.Enabled:=True;
  edtSeguro.Enabled:= True;
  edtFundoPobreza.Enabled:=True;
  GravaCDSCompras;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Name = 'pgcControl' ) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex:= 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    end;
  end;
end;

procedure TfrmCompras.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmCompras.Left + 250, frmCompras.top + 75);
end;

procedure TfrmCompras.btnItemAlterarClick(Sender: TObject);
begin
  pesoTotal := pesoTotal - (cdsCompraItemPESO.AsFloat *
    cdsCompraItemQTN.AsFloat);
  totalNota := totalNota - cdsCompraItemVLR_TOTAL.AsFloat;
  totalItem:= totalItem - cdsCompraItemVLR_TOTAL.AsFloat;

  if not(fdsCompras.State in [dsInsert,dsEdit]) then
  fdsCompras.Edit;

  fdsComprasPESO.AsFloat := pesoTotal;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
  fdsComprasVLR_TOTITEM.AsFloat:= totalItem;
  cdsCompraItem.Edit;

  cdsItemPrec.Locate('IDITEM', cdsCompraItemIDPROD_ITEM.AsString, []);
  cdsItemPrec.Edit;
  edtQtnItem.SetFocus;
  ControlaBtnsItens;
  if manual = True then
  begin
    RzDBEdit16.Visible := False;
    RzLabel44.Visible := False;
  end
  else
  begin
    RzDBEdit16.Visible := True;
    RzLabel44.Visible := True;
  end;
end;

procedure TfrmCompras.btnItemCancelarClick(Sender: TObject);
begin
  if cdsCompraItem.State = dsEdit then
  begin
    pesoTotal := pesoTotal + (cdsCompraItemPESO.AsFloat * cdsCompraItemQTN.AsFloat);
    totalNota := totalNota + cdsCompraItemVLR_TOTAL.AsFloat;
    totalItem:= totalItem + cdsCompraItemVLR_TOTAL.AsFloat;
    fdsComprasPESO.AsFloat := pesoTotal;
    fdsComprasVLR_TOTAL.AsFloat := totalNota;
    fdsComprasVLR_TOTITEM.AsFloat:= totalItem;
  end;

  if cdsCompraItem.State = dsInsert then
    item := item - 1;

  cdsCompraItem.Cancel;
  cdsItemPrec.Cancel;
  ControlaBtnsItens;
  btnItensIncluir.SetFocus;
end;

procedure TfrmCompras.btnItemExcluirClick(Sender: TObject);
begin
  pesoTotal := pesoTotal - (cdsCompraItemPESO.AsFloat *
    cdsCompraItemQTN.AsFloat);
  totalNota := totalNota - cdsCompraItemVLR_TOTAL.AsFloat;
  totalItem:= totalItem - cdsCompraItemVLR_TOTAL.AsFloat;
  fdsComprasPESO.AsFloat := pesoTotal;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
  fdsComprasVLR_TOTITEM.AsFloat:= totalItem;
  cdsCompraItem.Delete;
end;

procedure TfrmCompras.btnItemGravarClick(Sender: TObject);
var
  continuar: Boolean;
  usarTabelaPreco: Boolean;
begin

  if frmPrincipal.modoTabPreco = 'S' then
    usarTabelaPreco := True
  else
    usarTabelaPreco := False;

  if not(Trim(edtQtnItem.Text) = EmptyStr) and (cdsCompraItemQTN.AsFloat > 0)
  then
  begin
    if usarTabelaPreco then
    begin
      try
        frmPrecItemAtualizacao := TfrmPrecItemAtualizacao.Create(nil);
        frmPrecItemAtualizacao.ShowModal;
      Finally
        if frmPrecItemAtualizacao.ModalResult = mrOk then
        begin
          cdsItemPrec.Post;
          continuar := True;
        end
        else
        begin
          continuar := False;
        end;
      end;
    end
    else
      continuar := True;
  end
  else
    continuar := False;

  if continuar then
  begin
    if usarTabelaPreco then
    begin
      cdsCompraItemVLR_UNITARIO.AsFloat := cdsItemPrecCUSTO_ATUAL.AsFloat;
      cdsCompraItemPREC_VENDA.AsFloat := cdsItemPrecPREC_VENDA_ATUAL.AsFloat;
      cdsCompraItemMARGEM_LUCRO.AsFloat := cdsItemPrecMG_LUCRO_ATUAL.AsFloat;
      cdsCompraItemDESC_MAX1.AsFloat := cdsItemPrecDESC_MAX_ATUAL1.AsFloat;

      cdsCompraItemPREC_VENDA2.AsFloat := cdsItemPrecPREC_VENDA_ATUAL2.AsFloat;
      cdsCompraItemMARGEM_LUCRO2.AsFloat := cdsItemPrecMG_LUCRO_ATUAL2.AsFloat;
      cdsCompraItemDESC_MAX2.AsFloat := cdsItemPrecDESC_MAX_ATUAL2.AsFloat;
    end;

    if cdsCompraItemTIPO.AsString = 'RV' then
    begin
      if cdsCompraItemPREC_VENDA.AsFloat < cdsCompraItemVLR_UNITARIO.AsFloat
      then
      begin
        Case MessageBox(Application.Handle,
          Pchar('Pre�o de Venda informado � menor que o Pre�o de Custo, deseja gravar assim mesmo?'),
          'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes:
            begin
              cdsCompraItemMARGEM_LUCRO.AsFloat := 0;
            end;
          IDNO:
            begin
              edtPreVenda.SetFocus;
              Abort;
            end;
        end;
      end;
    end;

    cdsCompraItemVLR_TOTAL.AsFloat :=RoundTo(cdsCompraItemVLR_UNITARIO.AsFloat * cdsCompraItemQTN.AsFloat, -2);

    cdsCompraItem.Post;

    pesoTotal := pesoTotal + (cdsCompraItemPESO.AsFloat * cdsCompraItemQTN.AsFloat);
    totalNota := totalNota + cdsCompraItemVLR_TOTAL.AsFloat;
    totalItem:= totalItem + cdsCompraItemVLR_TOTAL.AsFloat;
    fdsComprasPESO.AsFloat := pesoTotal;
    fdsComprasVLR_TOTAL.AsFloat := totalNota;
    fdsComprasVLR_TOTITEM.AsFloat:= totalItem;
    ControlaBtnsItens;

    cdsCompraItem.SaveToFile('TempCompraItens.xml', dfXML);

    cdsCompras.Edit;
    GravaCDSCompras;

    btnItensIncluir.SetFocus;
    RzDBEdit16.Visible := True;
    RzLabel44.Visible := True;
  end
  else
    edtQtnItem.SetFocus;


end;

procedure TfrmCompras.btnItensIncluirClick(Sender: TObject);
begin
  edtItemCodigo.Clear;
  cdsCompraItem.Append;
  ControlaBtnsItens;
  edtItemCodigo.SetFocus;
  if manual = True then
  begin
    RzDBEdit16.Visible := False;
    RzLabel44.Visible := False;
  end
  else
  begin
    RzDBEdit16.Visible := True;
    RzLabel44.Visible := True;
  end;
end;

procedure TfrmCompras.btnLastClick(Sender: TObject);
begin
  fdsCompras.Last;
end;

procedure TfrmCompras.btnNextClick(Sender: TObject);
begin
  fdsCompras.Next;
end;

procedure TfrmCompras.btnPesqFornecClick(Sender: TObject);
begin
  Try
    frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
    frmPesqFornecedor.ShowModal;
  Finally
    if frmPesqFornecedor.ModalResult = mrOk then
    begin
      edtPesqFornecedor.Text := frmPesqFornecedor.fdsFornecedorNOME.AsString;
      btnPesquisar.Click;
    end;
    frmPesqFornecedor.Free;
  End;
end;

procedure TfrmCompras.btnPesqFornecedorClick(Sender: TObject);
begin
  PesquisaFornecedor;
  if manual=True then
  edtFreteSimples.SetFocus;
end;

procedure TfrmCompras.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCompras.btnPriorClick(Sender: TObject);
begin
  fdsCompras.First;
end;

procedure TfrmCompras.btnRecurClick(Sender: TObject);
var
  i: Smallint;
begin
  fdsCompras.Close;
  fdsCompras.AutoUpdateOptions.WhenGetGenID := wgNever;
  fdsCompras.Open;
  cdsCompras.EmptyDataSet;
  cdsCompras.LoadFromFile('TempCompra.xml');

  fdsCompras.Append;
  fdsComprasID.AsInteger := cdsComprasID.AsInteger;
  edIdSimples.Text := fdsComprasID.AsString;
  fdsComprasIDFORNECEDOR.AsString := cdsComprasIDFORNECEDOR.AsString;
  fdsComprasDT_INC.AsDateTime := cdsComprasDT_INC.AsDateTime;
  fdsComprasPREFIXO.AsString := cdsComprasPREFIXO.AsString;
  fdsComprasIDFILIAL.AsInteger := cdsComprasIDFILIAL.AsInteger;
  fdsComprasFILIAL.AsString := cdsComprasFILIAL.AsString;
  fdsComprasPESO.AsFloat := cdsComprasPESO.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := cdsComprasVLR_TOTAL.AsFloat;
  fdsComprasVLR_FRETE.AsFloat := cdsComprasVLR_FRETE.AsFloat;
  fdsComprasNOTA_NUM.AsString := cdsComprasNOTA_NUM.AsString;
  fdsComprasCHAVE_NOTA.AsString := cdsComprasCHAVE_NOTA.AsString;
  fdsComprasSTATUS.AsString := cdsComprasSTATUS.AsString;
  pesoTotal := fdsComprasPESO.AsFloat;
  totalNota := fdsComprasVLR_TOTAL.AsFloat;

  fdsCompraItem.Close;
  cdsCompraItem.Open;
  cdsCompraItem.EmptyDataSet;
  cdsCompraItem.Open;
  cdsCompraItem.LoadFromFile('TempCompraItens.xml');
  cdsCompraItem.First;

  EditaInsere;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Name = 'pgcControl' ) then
    begin
      TRzPageControl(Components[i]).ActivePageIndex:= 1;
      TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    end;
  end;
end;

function TfrmCompras.CadastraProduto(): string;
var
  idProduto, idItem: string;
  utils: TUtils;
begin
  fdsProduto.Open;
  fdsProduto.Append;
  idProduto := fdsProdutoID.AsString;
  fdsProdutoDT_INC.AsDateTime := Now;
  fdsProdutoSTATUS.AsString := 'A';
  fdsProdutoTIPO.AsString := 'RV';
  fdsProdutoIDGRUPO.AsInteger := cdsCadadastroItensIDGRUPO.AsInteger;
  fdsProdutoCFOP.AsString := DM.fdsConfigCFOP_PADRAO.AsString;
  fdsProdutoCEST.AsString := DM.fdsConfigCEST_PADRAO.AsString;
  fdsProdutoCSOSN.AsString := DM.fdsConfigCSOSN_PADRAO.AsString;
  fdsProdutoNCM.AsString := cdsCadadastroItensNCM.AsString;
  if cdsCadadastroItensNCM.AsString<>EmptyStr then
  begin
    with fdsIbpt do
   begin
     close;
     ParamByName('NCM').AsString := cdsCadadastroItensNCM.AsString;
     prepare;
     open;
   end;
   if fdsIbpt.RecordCount>0 then
   begin
     fdsProdutoIBPT_NACIONA_FEDERAL.AsFloat := fdsIbptNACIONAL_FEDERAL.AsFloat;
     fdsProdutoIBPT_ESTADUAL.AsFloat        := fdsIbptESTADUAL.AsFloat;
     fdsProdutoIBPT_MUNICIPAL.AsFloat       := fdsIbptMUNICIPAL.AsFloat;
   end;
  end;
  fdsProdutoNOME.AsString := cdsCadadastroItensNOME_CADASTRADO.AsString;
  fdsProdutoIDFORNECEDOR.AsInteger := cdsCadadastroItensIDFORNECEDOR.AsInteger;
  fdsProduto.Post;
  transProduto.CommitRetaining;

  fdsProdutoItem.Open;
  fdsProdutoItem.Append;
  idItem := fdsProdutoItemID.AsString;
  fdsProdutoItemDT_INC.AsDateTime := Now;
  fdsProdutoItemSTATUS.AsString := 'A';
  fdsProdutoItemIDPRODUTO.AsString := idProduto;
  fdsProdutoItemIDCOR.AsInteger := 0;
  fdsProdutoItemIDTAMANHO.AsInteger := 0;
  fdsProdutoItemUNIDADE.AsString := 'UN';
  fdsProdutoItemNOME.AsString := cdsCadadastroItensNOME_CADASTRADO.AsString;
  if Not(OnlyNumber(cdsCadadastroItensEAN.AsString) = EmptyStr) then
    fdsProdutoItemCOD_FABRICA.AsString := cdsCadadastroItensEAN.AsString
  else
    fdsProdutoItemCOD_FABRICA.AsString := idProduto + '1';
  fdsProdutoItemCOD_FABRICANTE.AsString := utils.RetiraZerosEsquerda
    (cdsCadadastroItensCOD_FABRICANTE.AsString);
  fdsProdutoItem.Post;
  transProduto.CommitRetaining;

   //alocando os produtos que v�o ser castrados, para caso a nota de entrada seja cancelada os produtos sejam excluidos
  cdsProdutoCadastrado.Open;
  cdsProdutoCadastrado.Append;
  cdsProdutoCadastradoID_PRODUTO.AsString:= idProduto;
  cdsProdutoCadastradoID_PRODUTO_ITEM.AsString:= idItem;
  cdsProdutoCadastrado.Post;


  // with qryComand do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE PRODUTO_ITEM_ESTOQUE SET MARGEM_LUCRO = ' + StringReplace(cdsCadadastroItensMARGEM_LUCRO.AsString, ',', '.',[rfReplaceAll]));
  // SQL.Add(' WHERE IDITEM = ' + idItem + ' AND IDFILIAL = ' + DM.fdsConfigIDFILIAL.AsString);
  // Prepare;
  // ExecQuery;
  // end;

  fdsFilial.First;
  while not(fdsFilial.Eof) do
  begin
    with qryComand do
    begin
      Close;
      SQL.Clear;
      SQL.Add('execute procedure gera_mov_item(' + idItem + ', ' +
        fdsFilialID.AsString + ', CURRENT_DATE, ' + QuotedStr('CADASTRO XML') +
        ', ' + QuotedStr('0') + ', ' + QuotedStr('E') + ',' + '0, ' +
        fdsFilialID.AsString + ')');
      Prepare;
      ExecQuery;
    end;
    fdsFilial.Next;
    transProduto.CommitRetaining;
  end;

  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('execute procedure gera_mov_item_gerencial(' + idItem + ', ' +
      DM.fdsConfigIDFILIAL.AsString + ', CURRENT_DATE, ' +
      QuotedStr('CADASTRO XML') + ', ' + QuotedStr('0') + ', ' + QuotedStr('E')
      + ',' + '0, ' + DM.fdsConfigIDFILIAL.AsString + ')');
    Prepare;
    ExecQuery;
  end;

  transProduto.CommitRetaining;

  Result := idItem;
end;

function TfrmCompras.CadastrarFornecedor: Integer;
var
  idFornecedor: Integer;
begin
  with ACBrNFe1.NotasFiscais.Items[1].NFe do
  begin
    with fdsFornecedor do
    begin
      Open;
      Append;
      idFornecedor := fdsFornecedorID.AsInteger;
      if Trim(Emit.xFant) = EmptyStr then
        fdsFornecedorNOME.AsString := Emit.xNome
      else
        fdsFornecedorNOME.AsString := Emit.xFant;
      fdsFornecedorRAZAOSOCIAL.AsString := Emit.xNome;
      fdsFornecedorCNPJ.AsString := Emit.CNPJCPF;
      fdsFornecedorIE.AsString := Emit.IE;
      fdsFornecedorTELEFONE.AsString := Emit.EnderEmit.fone;
      fdsFornecedorENDERECO.AsString := Emit.EnderEmit.xLgr;
      fdsFornecedorNUMERO.AsString := Emit.EnderEmit.nro;
      fdsFornecedorDT_INC.AsDateTime := Now;
      fdsFornecedorBAIRRO.AsString := Emit.EnderEmit.xBairro;
      fdsFornecedorIDCIDADE.AsInteger := RetornaIDCidade(Emit.EnderEmit.cMun);
      fdsFornecedorCEP.AsInteger := Emit.EnderEmit.CEP;
      fdsFornecedorSTATUS.AsString := 'A';
      fdsFornecedor.Post;
      transProduto.CommitRetaining;
    end;
  end;

  Result := idFornecedor;
end;

procedure TfrmCompras.cdsCompraItemAfterScroll(DataSet: TDataSet);
begin
  edtItemCodigo.Text := cdsCompraItemCOD_FABRICA.AsString;
end;

procedure TfrmCompras.cdsCompraItemReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TfrmCompras.chkFilialClick(Sender: TObject);
begin
//  pnlFilial.Enabled := chkFilial.Checked;
//
//  if not(chkFilial.Checked) then
//    cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmCompras.chkFornecedorClick(Sender: TObject);
begin
  pnlFornecedor.Enabled := chkFornecedor.Checked;
  if not(chkFornecedor.Checked) then
  begin
    edtPesqFornecedor.Text := 'Todos';
    edtPesqFornecedor.Font.Color := clGray;
  end
  else
    edtPesqFornecedor.Font.Color := clBtnText;
end;

procedure TfrmCompras.chkNumCompraClick(Sender: TObject);
begin
  pnlNumCompra.Enabled := chkNumCompra.Checked;
  if not(chkNumCompra.Checked) then
  begin
    edtPesqNumCompra.Text := 'Todos';
    edtPesqNumCompra.Font.Color := clGray;
  end;
end;

procedure TfrmCompras.chkPeriodoClick(Sender: TObject);
begin
  pnlPeriodo.Enabled := chkPeriodo.Checked;
end;

procedure TfrmCompras.ConfigTipoCompra(tipo: string);
begin
  if tipo = 'S' then // Simples
  begin
    frmCompras.Width := tamNormalWidth;
    pgcFormulario.Pages[0].TabVisible := False;
    pgcFormulario.Pages[1].TabVisible := False;
    pgcFormulario.Pages[2].TabVisible := True;
    pgcFormulario.ActivePageIndex := 2;
    edtNotaNumSimples.SetFocus;
  end
  else
  begin
    frmCompras.Width := tamDanfeWidth;
    pgcFormulario.Pages[0].TabVisible := True;
    pgcFormulario.Pages[1].TabVisible := True;
    pgcFormulario.Pages[2].TabVisible := False;
  end;
end;

procedure TfrmCompras.ControlaBtnsItens;
begin
  btnItemCancelar.Enabled := alterandoItem;
  btnItemGravar.Enabled := alterandoItem;
  btnItensIncluir.Enabled := not(alterandoItem);
  btnItemAlterar.Enabled := not(alterandoItem);
  btnItemExcluir.Enabled := not(alterandoItem);
  gdrItens.Enabled := not(alterandoItem);
  alterandoItem := not(alterandoItem);
end;

procedure TfrmCompras.DeletarCompra;
begin
  if not(fdsCompras.State in [dsInsert, dsEdit]) and (fdsCompras.RecordCount > 0)
  then
  begin
    RetornaItensCompra;
    cdsCompraItem.First;
    transProduto.Active := True;

    while not(cdsCompraItem.Eof) do
    begin
      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('execute procedure gera_mov_item(' +
          cdsCompraItemIDPROD_ITEM.AsString + ',' +
          DM.fdsConfigIDFILIAL.AsString + ',CURRENT_DATE,' +
          QuotedStr('NOTA COMPRA EXCLU�DA') + ',' + fdsComprasID.AsString + ','
          + QuotedStr('S') + ',' + StringReplace(cdsCompraItemQTN.AsString, ',',
          '.', [rfReplaceAll]) + ',' + DM.fdsConfigIDFILIAL.AsString + ')');
        Prepare;
        ExecQuery;

        if (fdsComprasTIPO_ENTRADA.AsString = 'NF') then
        begin
          Close;
          SQL.Clear;
          SQL.Add('execute procedure gera_mov_item_gerencial(' +
            cdsCompraItemIDPROD_ITEM.AsString + ',' +
            DM.fdsConfigIDFILIAL.AsString + ',CURRENT_DATE,' +
            QuotedStr('NOTA COMPRA EXCLU�DA') + ',' + fdsComprasID.AsString +
            ',' + QuotedStr('S') + ',' +
            StringReplace(cdsCompraItemQTN.AsString, ',', '.', [rfReplaceAll]) +
            ',' + DM.fdsConfigIDFILIAL.AsString + ')');
          Prepare;
          ExecQuery;
        end;
      end;

      cdsCompraItem.Delete;
    end;

    cdsCompraItem.ApplyUpdates(0);
    transProduto.CommitRetaining;
    transProduto.Active := False;
    cdsCompraItem.Close;
    fdsCompraItem.Close;
    fdsCompras.Delete;
    fdsCompras.Close;
    DM.Conexao.CommitRetaining;
    fdsCompras.Open;
    fdsCompras.Last;
    fdsCompras.First;
    pgcControl.Pages[0].TabVisible := True;
    pgcControl.ActivePageIndex := 0;
  end;
end;

procedure TfrmCompras.EditaInsere;
var
  i: Smallint;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    // if (Components[i].Name = 'pgcControl' ) then
    // begin
    // TRzPageControl(Components[i]).ActivePageIndex:= 1;
    // TRzPageControl(Components[i]).Pages[0].TabVisible := False;
    // end;

    if (Components[i] is TRzBitBtn) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := False
      else
        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;

  // dtpEmissao.SetFocus;
  if DM.fdsConfigESTOQUE_CONSUMO.AsString='S' then
   cbxEstoque.ReadOnly:=false;
  ControlaBtnsItens;
  idCompra := fdsComprasID.AsInteger;
end;

procedure TfrmCompras.EditaProduto;
var
  idProduto: Integer;
  utils: TUtils;
begin
  with fdsProdutoItem do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDITEM',
      'ID = ' + cdsCadadastroItensID.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
    Edit;
  end;

  idProduto := fdsProdutoItemIDPRODUTO.AsInteger;
  fdsProdutoItemDT_ALT.AsDateTime := Now;
  fdsProdutoItemSTATUS.AsString := 'A';
  fdsProdutoItemNOME.AsString := cdsCadadastroItensNOME_CADASTRADO.AsString;

  if Not(OnlyNumber(cdsCadadastroItensEAN.AsString) = EmptyStr) then
    fdsProdutoItemCOD_FABRICA.AsString := cdsCadadastroItensEAN.AsString
  else
    fdsProdutoItemCOD_FABRICA.AsString := IntToStr(idProduto) + '1';

  fdsProdutoItemCOD_FABRICANTE.AsString := utils.RetiraZerosEsquerda
    (cdsCadadastroItensCOD_FABRICANTE.AsString);
  fdsProdutoItem.Post;
  transProduto.CommitRetaining;

  with fdsProduto do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('ID', 'ID = ' + IntToStr(idProduto), True);
    Conditions.Apply;
    Prepare;
    Open;
    Edit;
  end;

  fdsProdutoDT_ALT.AsDateTime := Now;
  fdsProdutoSTATUS.AsString := 'A';
  fdsProdutoNCM.AsString := cdsCadadastroItensNCM.AsString;
  if cdsCadadastroItensNCM.AsString<>EmptyStr then
  begin
    with fdsIbpt do
   begin
     close;
     ParamByName('NCM').AsString := cdsCadadastroItensNCM.AsString;
     prepare;
     open;
   end;
   if fdsIbpt.RecordCount>0 then
   begin
     fdsProdutoIBPT_NACIONA_FEDERAL.AsFloat := fdsIbptNACIONAL_FEDERAL.AsFloat;
     fdsProdutoIBPT_ESTADUAL.AsFloat        := fdsIbptESTADUAL.AsFloat;
     fdsProdutoIBPT_MUNICIPAL.AsFloat       := fdsIbptMUNICIPAL.AsFloat;
   end;
  end;
  fdsProdutoNOME.AsString := cdsCadadastroItensNOME_CADASTRADO.AsString;
  fdsProdutoIDFORNECEDOR.AsInteger := cdsCadadastroItensIDFORNECEDOR.AsInteger;
  fdsProduto.Post;
  transProduto.CommitRetaining;
  ///////////////////////////////////////////////////////////////////////////////////////
  cdsCompraItem.Edit;
  cdsCompraItemCOD_FABRICA.AsString := fdsProdutoItemCOD_FABRICA.AsString;
  cdsCompraItemIDPROD_ITEM.AsInteger := cdsCadadastroItensID.AsInteger;
  cdsCompraItemCFOP.AsString := fdsProdutoCFOP.AsString;
  cdsCompraItemCSOSN.AsString := fdsProdutoCSOSN.AsString;
  cdsCompraItemCST_PIS.AsString:=fdsProdutoCST_PIS.AsString;
  cdsCompraItemCST_COFINS.AsString:= fdsProdutoCST_COFINS.AsString;
  cdsCompraItemCEST.AsString:=fdsProdutoCEST.AsString;
  cdsCompraItemALIQ_PICMS.AsFloat:=fdsProdutoALIQ_ICMS.AsFloat;
  cdsCompraItemPORCENT_FCP.AsFloat:=fdsProdutoFCP.AsFloat;
  cdsCompraItemINFORMACAO.AsString:='Pre�o:R$'+fdsProdutoItemPREC_VENDA.AsString+' Pre�o de Custo:R$'+fdsProdutoItemPREC_CUSTO.AsString+' Custo M�dio:R$'+fdsProdutoItemPREC_CUSTO_MEDIO.AsString;
 // cdsCompraItemNCM.AsString := fdsProdutoNCM.AsString;
  cdsCompraItemMARGEM_LUCRO.AsFloat := cdsCadadastroItensMARGEM_LUCRO.AsFloat;
  if cdsCompraItemMARGEM_LUCRO.AsFloat > 0 then
    cdsCompraItemPREC_VENDA.AsFloat :=
      RoundTo(((cdsCompraItemVLR_UNITARIO.AsFloat -
      cdsCompraItemVLR_DESCONTO.AsFloat +
      cdsCompraItemVLR_FRETE.AsFloat) +
      ((cdsCompraItemVLR_UNITARIO.AsFloat -
      cdsCompraItemVLR_DESCONTO.AsFloat +
      cdsCompraItemVLR_FRETE.AsFloat) *
      cdsCompraItemMARGEM_LUCRO.AsFloat / 100)), -2)
  else
  begin
    cdsCompraItemPREC_VENDA.AsFloat := fdsProdutoItemPREC_VENDA.AsFloat;
  end;
  cdsCompraItem.Post;
end;

procedure TfrmCompras.edtDescontoExit(Sender: TObject);
begin
  if fdsComprasVLR_TOTITEM.AsFloat > 0 then
  begin
    fdsComprasVLR_TOTAL.AsFloat := fdsComprasVLR_TOTITEM.AsFloat -
      fdsComprasVLR_DESCONTO.AsFloat + fdsComprasVLR_FRETE.AsFloat +
      fdsComprasSUBTRIBUTARIA.AsFloat;
  end;
end;

procedure TfrmCompras.edtPesqFornecedorEnter(Sender: TObject);
begin
  if Trim(edtPesqFornecedor.Text) = 'TODOS' then
  begin
    edtPesqFornecedor.Text := EmptyStr;
    edtPesqFornecedor.Font.Color := clBlack;
  end;
end;

procedure TfrmCompras.edtPesqFornecedorExit(Sender: TObject);
begin
  if Trim(edtPesqFornecedor.Text) = EmptyStr then
  begin
    edtPesqFornecedor.Text := 'Todos';
    edtPesqFornecedor.Font.Color := clGray;
  end;
end;

procedure TfrmCompras.edtPesqNumCompraEnter(Sender: TObject);
begin
  if Trim(edtPesqNumCompra.Text) = 'TODOS' then
  begin
    edtPesqNumCompra.Text := EmptyStr;
    edtPesqNumCompra.Font.Color := clBlack;
  end;
end;

procedure TfrmCompras.edtPesqNumCompraExit(Sender: TObject);
begin
  if Trim(edtPesqNumCompra.Text) = EmptyStr then
  begin
    edtPesqNumCompra.Text := 'Todos';
    edtPesqNumCompra.Font.Color := clGray;
  end;
end;

procedure TfrmCompras.edtPrecCustoExit(Sender: TObject);
begin
  if cdsCompraItem.State in [dsInsert, dsEdit] then
  begin
    if cdsCompraItemTIPO.AsString = 'RV' then
    begin
      if (cdsCompraItemVLR_UNITARIO.AsFloat > 0) then
      begin
        if cdsCompraItemPREC_VENDA.AsFloat > 0 then
        begin
          cdsCompraItemMARGEM_LUCRO.AsFloat := RoundTo((((cdsCompraItemPREC_VENDA.AsFloat - cdsCompraItemVLR_UNITARIO.AsFloat) * 100) /cdsCompraItemVLR_UNITARIO.AsFloat), -2);
        end;
      end;
    end;
  end;
end;

procedure TfrmCompras.edtPreVendaExit(Sender: TObject);
var
  utils: TUtils;
begin
  if cdsCompraItem.State in [dsInsert, dsEdit] then
  begin
    if cdsCompraItemTIPO.AsString = 'RV' then
    begin
      if (cdsCompraItemVLR_UNITARIO.AsFloat > 0) then
      begin
        if utils.ValidaInteiroFloat(FloatToStr(cdsCompraItemPREC_VENDA.AsFloat), 'F') > 0 then
        begin
          cdsCompraItemMARGEM_LUCRO.AsFloat :=RoundTo((((cdsCompraItemPREC_VENDA.AsFloat - cdsCompraItemVLR_UNITARIO.AsFloat) * 100) /cdsCompraItemVLR_UNITARIO.AsFloat), -2);
        end;
      end;
    end
    else
      cdsCompraItemPREC_VENDA.AsFloat := 0;

    if manual= false then
    begin
      btnItemGravar.SetFocus;
    end;
  end;
end;

procedure TfrmCompras.edtQtnItemExit(Sender: TObject);
begin
  if cdsCompraItem.State in [dsInsert, dsEdit] then
  begin
    cdsCompraItemQTN.AsFloat := cdsCompraItemQUANT_PROD.AsFloat * cdsCompraItemCONVERSAO.AsFloat;
    if manual= false then
    begin
    RzDBEdit16.SetFocus;
    end
    else
    btnItemGravar.SetFocus;

  end;
end;

procedure TfrmCompras.fdsComprasAfterScroll(DataSet: TDataSet);
begin
  if not(imprimir) then
  begin
    edIdSimples.Text := fdsComprasID.AsString;
    edtFornecedor.Text := fdsComprasFORNECEDOR.AsString;
  end;

  if (pgcControl.ActivePageIndex = 1) then
  begin
    RetornaItensCompra;
  end;
end;

procedure TfrmCompras.fdsFilialAfterOpen(DataSet: TDataSet);
begin
//  cbxFilial.AddItemValue('TODOS', '0');
//  fdsFilial.First;
//  while not(fdsFilial.Eof) do
//  begin
//    cbxFilial.AddItemValue(fdsFilialNOME.AsString, fdsFilialID.AsString);
//    fdsFilial.Next;
//  end;
//  cbxFilial.Value := DM.fdsConfigIDFILIAL.AsString;
end;

procedure TfrmCompras.FinalizaCompra;
begin
  Try
    frmCompraFinalizacao := TfrmCompraFinalizacao.Create(nil);
    frmCompraFinalizacao.idCompra := fdsComprasID.AsInteger;
    frmCompraFinalizacao.idFornecedor := fdsComprasIDFORNECEDOR.AsInteger;
    frmCompraFinalizacao.fornecedor := fdsComprasFORNECEDOR.AsString;
    frmCompraFinalizacao.idFormaPag := fdsComprasIDFORMA_PAG.AsInteger;
    frmCompraFinalizacao.valorDoc := fdsComprasVLR_TOTAL.AsFloat;
    frmCompraFinalizacao.edtDescricao.Text := 'Compra N� ' +
      fdsComprasID.AsString + ' / Fornec: ' + fdsComprasFORNECEDOR.AsString;
    frmCompraFinalizacao.ShowModal;
  Finally
    if frmCompraFinalizacao.ModalResult = mrOk then
    begin
      fdsComprasIDFORMA_PAG.AsInteger := frmCompraFinalizacao.idFormaPag;
      fdsCompras.Post;
      cdsCompraItem.ApplyUpdates(0);
      DM.Conexao.CommitRetaining;
      Application.MessageBox('Compra lan�ada com sucesso.', 'Aten��o',
        MB_ICONEXCLAMATION + MB_OK);

      cdsCompraItem.EmptyDataSet;
      cdsCompraItem.SaveToFile('TempCompraItens.xml', dfXML);
      cdsCompras.EmptyDataSet;
      cdsCompras.SaveToFile('TempCompra.xml', dfXML);

      GravaCancela;
    end
    else
    begin
      Application.MessageBox('Finaliza��o de compra cancelada.', 'Aten��o',
        MB_ICONEXCLAMATION + MB_OK);
    end;
    frmCompraFinalizacao.Free;
  End;
end;

procedure TfrmCompras.FormActivate(Sender: TObject);
begin
  // ConfigTipoCompra('S');
end;

procedure TfrmCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdsCompras.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele o lan�amento da nota antes de sair.', 'Aten��o',
      MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCompras := nil;
  end;
end;

procedure TfrmCompras.FormCreate(Sender: TObject);
begin
  pnlProgresso.Visible := False;
  pgbProgresso.Percent := 0;
  precoCusto := 0;
  tempo := 0;
  manual := False;
  imprimirAnalitic := False;
  imprimir := False;
  // tbsDANFECabe.TabVisible := False;
  // tbsDANFEItens.TabVisible := False;
  cdsCompras.CreateDataSet;
  cdsItemPrec.CreateDataSet;
  fdsFilial.Open;
  fdsFormaPagamento.Open;
  fdsFormaPagamento.Last;
  fdsFormaPagamento.First;
  alterandoItem := False;
  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := Now;
  tbsTabela.Show;
  fdsTabPreco.Open;
  VerificaConfTabelaPreco;
  Pesquisar;
  cdsCadadastroItens.CreateDataSet;

end;

procedure TfrmCompras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCompras.gdrCompraItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsCompraItem.RecNo) then
  begin
    gdrCompraItem.Canvas.Brush.Color := DM.gridOddColor;
    gdrCompraItem.Canvas.FillRect(Rect);
    gdrCompraItem.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCompras.gdrComprasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsCompras.RecNo) then
  begin
    gdrCompras.Canvas.Brush.Color := DM.gridOddColor;
    gdrCompras.Canvas.FillRect(Rect);
    gdrCompras.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCompras.GerenciarItens;
var
  idItem: string;
begin
  Try
    frmItensXMLCompra := TfrmItensXMLCompra.Create(nil);
    frmItensXMLCompra.ShowModal;
  Finally
    if frmItensXMLCompra.ModalResult = mrOk then
    begin
      cdsCadadastroItens.First;
      cdsCompraItem.First;
      idItem := '0';
      while not(cdsCadadastroItens.Eof) do
      begin
        if (cdsCadadastroItensID.AsInteger = 0) and
          (cdsCadadastroItensENCONTROU.AsString = 'N') then
        begin
          idItem := CadastraProduto();
          cdsCompraItem.Edit;
          cdsCompraItemIDPROD_ITEM.AsString := idItem;
          cdsCompraItemCFOP.AsString := fdsProdutoCFOP.AsString;
          cdsCompraItemCSOSN.AsString := fdsProdutoCSOSN.AsString;
          cdsCompraItemCST_PIS.AsString:=fdsProdutoCST_PIS.AsString;
          cdsCompraItemCST_COFINS.AsString:= fdsProdutoCST_COFINS.AsString;
          cdsCompraItemCEST.AsString:=fdsProdutoCEST.AsString;
          cdsCompraItemALIQ_PICMS.AsFloat:=fdsProdutoALIQ_ICMS.AsFloat;
          cdsCompraItemPORCENT_FCP.AsFloat:=fdsProdutoFCP.AsFloat;
         // cdsCompraItemNCM.AsString := fdsProdutoNCM.AsString;
          cdsCompraItemPREC_VENDA.AsFloat :=
            RoundTo(((cdsCompraItemVLR_UNITARIO.AsFloat -
            cdsCompraItemVLR_DESCONTO.AsFloat + cdsCompraItemVLR_FRETE.AsFloat)
            + ((cdsCompraItemVLR_UNITARIO.AsFloat -
            cdsCompraItemVLR_DESCONTO.AsFloat + cdsCompraItemVLR_FRETE.AsFloat)
            * cdsCompraItemMARGEM_LUCRO.AsFloat / 100)), -2);
          cdsCompraItem.Post;
        end
        else
          EditaProduto();

        if (cdsCadadastroItensID.AsInteger > 0) and
          (cdsCadadastroItensENCONTROU.AsString = 'N') then
        begin
          cdsCompraItem.Edit;
          cdsCompraItemIDPROD_ITEM.AsInteger := cdsCadadastroItensID.AsInteger;
          {cdsCompraItemCFOP.AsString := cfop;
          cdsCompraItemCSOSN.AsString := csosn;
          cdsCompraItemCEST.AsString:=cest;
          cdsCompraItemCST_PIS.AsString:=cst_pis;
          cdsCompraItemCST_COFINS.AsString:=cst_cofins;
          cdsCompraItemALIQ_PICMS.AsFloat:=aliq_icms;
          cdsCompraItemPORCENT_FCP.AsFloat:=fcp;}

          cdsCompraItemMARGEM_LUCRO.AsFloat :=
            cdsCadadastroItensMARGEM_LUCRO.AsFloat;

          if cdsCompraItemMARGEM_LUCRO.AsFloat > 0 then
            cdsCompraItemPREC_VENDA.AsFloat :=
              RoundTo(((cdsCompraItemVLR_UNITARIO.AsFloat -
              cdsCompraItemVLR_DESCONTO.AsFloat +
              cdsCompraItemVLR_FRETE.AsFloat) +
              ((cdsCompraItemVLR_UNITARIO.AsFloat -
              cdsCompraItemVLR_DESCONTO.AsFloat +
              cdsCompraItemVLR_FRETE.AsFloat) *
              cdsCompraItemMARGEM_LUCRO.AsFloat / 100)), -2);

         // cdsCompraItemINFORMACAO.AsString:=informacao;
          cdsCompraItem.Post;
        end;

        cdsCadadastroItens.Next;
        cdsCompraItem.Next;
        idItem := '0';
      end;
     fdsProdutoItem.First;
     fdsProduto.First;
    end
    else
    begin
      cdsCompraItem.EmptyDataSet;
      cdsCompraItem.Close;
      fdsCompras.Cancel;
      fdsCompraItem.Cancel;
      DM.Conexao.RollbackRetaining;
      GravaCancela;
    end;

    frmItensXMLCompra.Free;
  End;
end;

procedure TfrmCompras.GravaCancela;
var
  i: Smallint;
  utils: TUtils;
begin
  fdsCompras.AutoUpdateOptions.WhenGetGenID := wgOnNewRecord;
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

  alterandoItem := False;
  cdsCadadastroItens.EmptyDataSet;

  tbsDANFECabe.TabVisible := False;
  tbsDANFEItens.TabVisible := False;
  pgcFormulario.ActivePageIndex := 2;
  pgcFormulario.TabIndex := 2;

  fdsCompras.Locate('ID', idCompra, []);
  lblTotal.Caption := IntToStr(fdsCompras.RecordCount);
  fdsFormaPagamento.Close;
  fdsFormaPagamento.Open;
  fdsFormaPagamento.Last;
end;

procedure TfrmCompras.GravaCDSCompras;
begin
  cdsComprasID.AsInteger := fdsComprasID.AsInteger;
  cdsComprasNOTA_NUM.AsString := fdsComprasNOTA_NUM.AsString;
  cdsComprasCHAVE_NOTA.AsString := fdsComprasCHAVE_NOTA.AsString;
  cdsComprasDT_INC.AsDateTime := fdsComprasDT_INC.AsDateTime;
  cdsComprasSTATUS.AsString := fdsComprasSTATUS.AsString;
  cdsComprasPREFIXO.AsString := fdsComprasPREFIXO.AsString;
  cdsComprasIDFILIAL.AsInteger := fdsComprasIDFILIAL.AsInteger;
  cdsComprasFILIAL.AsString := fdsComprasFILIAL.AsString;
  cdsComprasIDFORNECEDOR.AsInteger := fdsComprasIDFORNECEDOR.AsInteger;
  cdsComprasPESO.AsFloat := fdsComprasPESO.AsFloat;
  cdsComprasVLR_TOTITEM.AsFloat := fdsComprasVLR_TOTITEM.AsFloat;
  cdsComprasVLR_DESCONTO.AsFloat := fdsComprasVLR_DESCONTO.AsFloat;
  cdsComprasVLR_FRETE.AsFloat := fdsComprasVLR_FRETE.AsFloat;
  cdsComprasVLR_TOTAL.AsFloat := fdsComprasVLR_TOTAL.AsFloat;
  cdsCompras.Post;
  cdsCompras.SaveToFile('TempCompra.xml', dfXML);
end;

procedure TfrmCompras.impEtiq3ColunasExecute(Sender: TObject);
begin
  ConfImprimir('3Colunas');
end;

procedure TfrmCompras.impEtiqPrateleiraExecute(Sender: TObject);
begin
  ConfImprimir('Prateleira');
end;

procedure TfrmCompras.ConfImprimir(tipo: string);
begin
  Try
    RetornaItensCompra;
    frmEtiquetaPrateleira := TfrmEtiquetaPrateleira.Create(nil);
    frmEtiquetaPrateleira.totImprimir := fdsCompraItem.RecordCount;
    frmEtiquetaPrateleira.tipo := tipo;
    while not(fdsCompraItem.Eof) do
    begin
      frmEtiquetaPrateleira.fdsItens.Append;
      frmEtiquetaPrateleira.fdsItensNOME.AsString := fdsCompraItemNOME.AsString;
      frmEtiquetaPrateleira.fdsItensIMPRIMIR.AsString := 'S';
      frmEtiquetaPrateleira.fdsItensSaldo.AsFloat := fdsCompraItemQTN.AsFloat;
      frmEtiquetaPrateleira.fdsItensCOD_FABRICA.AsString :=
        fdsCompraItemCOD_FABRICA.AsString;
      frmEtiquetaPrateleira.fdsItensPREC_VENDA.AsCurrency :=
        fdsCompraItemPREC_VENDA.AsCurrency;
      frmEtiquetaPrateleira.fdsItensPREC_VENDA2.AsCurrency :=
        fdsCompraItemPREC_VENDA2.AsCurrency;
      frmEtiquetaPrateleira.fdsItens.Post;
      fdsCompraItem.Next;
    end;

    frmEtiquetaPrateleira.ShowModal;

  Finally
    frmEtiquetaPrateleira.Free;
  End;
end;

procedure TfrmCompras.IniciaContador;
begin
  tempo := 0;
  pnlProgresso.Visible := True;
  pgbProgresso.Visible := True;
  Application.ProcessMessages;
  TrheadContador := TContador.Create(True);
  // TrheadContador.FreeOnTerminate := True;
  TrheadContador.Resume;
end;

function TfrmCompras.IsFornecedorCadastrado(razao, cnpj: String): Boolean;
begin
  cnpj := StringReplace(cnpj, '.', '', []);
  cnpj := StringReplace(cnpj, '-', '', []);
  cnpj := StringReplace(cnpj, '/', '', []);

  with fdsFornecedor do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('RAZAOSOCIAL', 'F.RAZAOSOCIAL = ' + QuotedStr(razao)
      + ' OR F.CNPJ = ' + QuotedStr(cnpj)+ ' AND F.STATUS= '+QuotedStr('A'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  if fdsFornecedor.RecordCount > 0 then
    Result := True
  else
    Result := False;

end;

function TfrmCompras.IsNotaLancada(Numero: string): Boolean;
begin
  with fdsCompras do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('CHAVE_NOTA', ' CHAVE_NOTA = ' +
      QuotedStr(Numero), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;

  if fdsCompras.RecordCount > 0 then
    Result := True
  else
    Result := False;
end;

function TfrmCompras.MyLocateItem(chave1: string): Boolean;
begin
  Result := False;
  cdsCompraItem.First;
  while not(cdsCompraItem.Eof) do
  begin
    if cdsCompraItemIDPROD_ITEM.AsString = chave1 then
    begin
      Result := True;
      Break;
    end;
    cdsCompraItem.Next;
  end;
end;

procedure TfrmCompras.Pesquisar;
var
  numCompra: Double;
  utils: TUtils;
  status: string[2];
begin
  cdsCompraItem.Close;
  tbsTabela.Show;

//  if rgbStatus.ItemIndex = 1 then
//    status := 'A'
//  else if rgbStatus.ItemIndex = 2 then
//    status := 'C';

  with fdsCompras do
  begin
    Close;
    Conditions.Clear;

    if (chkNumCompra.Checked) then
    begin;
      if Trim(edtPesqNumCompra.Text) <> '' then
        Conditions.AddCondition('CHAVE_NOTA', ' C.NOTA_NUM = ' + QuotedStr(edtPesqNumCompra.Text), True);
    end;

    if (chkPeriodo.Checked) then
      Conditions.AddCondition('DTCOMPRA', 'C.DT_INC BETWEEN ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

      Conditions.AddCondition('FILIAL', ' C.IDFILIAL = ' + QuotedStr(DM.fdsConfigIDFILIAL.AsString), True);

    if (chkFornecedor.Checked) and not(Trim(edtPesqFornecedor.Text) = 'Todos')
    then
    begin
      RetornaFornecedor('NOME', Trim(edtPesqFornecedor.Text));
      if fdsFornecedor.RecordCount > 0 then
        Conditions.AddCondition('IDFORNECEDOR', 'C.IDFORNECEDOR = ' +
          fdsFornecedorID.AsString, True)
      else
        Conditions.AddCondition('IDFORNECEDOR', 'C.IDFORNECEDOR = 0', True);
    end;

    { if chkTipoDoc.Checked then
      Conditions.AddCondition('MOEDA', ' FP.MOEDA = ' + QuotedStr(cbxTipoDoc.Value), True);
    }

//    if rgbStatus.ItemIndex <> 0 then
//      Conditions.AddCondition('STATUS',
//        'C.STATUS = ' + QuotedStr(status), True);

    Conditions.Apply;
    OrderClause := 'C.DT_INC DESC, C.ID DESC';
    Prepare;
    Open;
    Last;
    First;
  end;

  SomaTotalCompras;
  lblTotal.Caption := IntToStr(fdsCompras.RecordCount);
end;

procedure TfrmCompras.PesquisarItem(itemCodigo: string);
var
  tempIDItem: Integer;
  pescProduto: Boolean;
begin
  pescProduto := True;

  if cdsCompraItem.State = dsInsert then
    cdsCompraItem.Cancel;

  if not(Trim(itemCodigo) = EmptyStr) then
  begin
    with qrySql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PI.*, P.TIPO,P.CFOP,P.CSOSN,P.NCM,P.ALIQ_ICMS,P.CEST,P.FCP,P.CST_PIS,P.CST_COFINS,PIE.PREC_VENDA, PIE.MARGEM_LUCRO FROM PRODUTO_ITEM PI, PRODUTO P, PRODUTO_ITEM_ESTOQUE PIE ');
      SQL.Add('WHERE ((PI.COD_FABRICA = UPPER(:COD_FABRICA)) OR (PI.REFERENCIA = UPPER(:COD_FABRICA)))AND P.ID = PI.IDPRODUTO AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL');
      ParamByName('COD_FABRICA').AsString := itemCodigo;
      ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
      Prepare;
      ExecQuery;
    end;
    if qrySql.RecordCount > 0 then
      pescProduto := False;
  end;

  if pescProduto = True then
  begin
    // if qrySql.RecordCount = 0 then
    // begin
    Try
      frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
      frmPesqProdutoItens.ShowModal;

    Finally
      if frmPesqProdutoItens.ModalResult = mrOk then
      begin
        tempIDItem := frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
        // if (cdsCompraItem.Locate('IDPROD_ITEM', IntToStr(tempIDItem), [])) then
        if (MyLocateItem(IntToStr(tempIDItem))) then
        begin
          Case MessageBox(Application.Handle,
            Pchar('Este item j� foi incluso no Pedido, deseja duplic�-lo?'),
            'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            IDNO:
              begin
                cdsCompraItem.Cancel;
                ControlaBtnsItens;
                btnItensIncluir.SetFocus;
                Abort;
              end;
          end;
        end;

        cdsItemPrec.Append;
        cdsItemPrecIDITEM.AsInteger := tempIDItem;
        cdsItemPrecCUSTO_ANT.AsFloat := frmPesqProdutoItens.fdsProdutoItensPREC_CUSTO.AsFloat;
        cdsItemPrecMG_LUCRO_ANT.AsFloat := frmPesqProdutoItens.fdsProdutoItensMARGEM_LUCRO.AsFloat;
        cdsItemPrecPREC_VENDA_ANT.AsFloat := frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
        cdsItemPrecMG_LUCRO_ATUAL.AsFloat :=frmPesqProdutoItens.fdsProdutoItensMARGEM_LUCRO.AsFloat;
        cdsItemPrecPREC_VENDA_ATUAL.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
        cdsItemPrecDESC_MAX1.AsFloat :=frmPesqProdutoItens.fdsProdutoItensDESC_MAX1.AsFloat;
        cdsItemPrecDESC_MAX_ATUAL1.AsFloat :=frmPesqProdutoItens.fdsProdutoItensDESC_MAX1.AsFloat;

        // cdsItemPrecMG_LUCRO_ANT2.AsFloat := frmPesqProdutoItens.fdsProdutoItensPORCENTAGEM_AJUSTE2.AsFloat;
        cdsItemPrecPREC_VENDA_ANT2.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPREC_TAB2.AsFloat;
        // cdsItemPrecMG_LUCRO_ATUAL2.AsFloat := frmPesqProdutoItens.fdsProdutoItensPORCENTAGEM_AJUSTE2.AsFloat;
        cdsItemPrecPREC_VENDA_ATUAL2.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPREC_TAB2.AsFloat;
        cdsItemPrecDESC_MAX2.AsFloat := frmPesqProdutoItens.fdsProdutoItensDESC_MAX2.AsFloat;
        cdsItemPrecDESC_MAX_ATUAL2.AsFloat := frmPesqProdutoItens.fdsProdutoItensDESC_MAX2.AsFloat;

        cdsCompraItem.Append;
        cdsCompraItemIDCOMPRA.AsInteger := fdsComprasID.AsInteger;
        cdsCompraItemIDFILIAL.AsInteger := fdsComprasIDFILIAL.AsInteger;
        cdsCompraItemCOD_FABRICA.AsString :=frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        cdsCompraItemIDPROD_ITEM.AsInteger := tempIDItem;
        cdsCompraItemVLR_UNITARIO.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPREC_CUSTO.AsFloat;
        cdsCompraItemPREC_VENDA.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
        cdsCompraItemMARGEM_LUCRO.AsFloat := frmPesqProdutoItens.fdsProdutoItensMARGEM_LUCRO.AsFloat;
        cdsCompraItemPESO.AsFloat :=frmPesqProdutoItens.fdsProdutoItensPESO.AsFloat;
        cdsCompraItemNOME.AsString := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
        cdsCompraItemTIPO.AsString := frmPesqProdutoItens.fdsProdutoItensTipo.AsString;
        cdsCompraItemCFOP.AsString := frmPesqProdutoItens.fdsProdutoItensCFOP.AsString;
        cdsCompraItemCSOSN.AsString := frmPesqProdutoItens.fdsProdutoItensCSOSN.AsString;
        cdsCompraItemNCM.AsString := frmPesqProdutoItens.fdsProdutoItensNCM.AsString;
        cdsCompraItemCST_PIS.AsString := frmPesqProdutoItens.fdsProdutoItensCST_PIS.AsString;
        cdsCompraItemCST_COFINS.AsString := frmPesqProdutoItens.fdsProdutoItensCST_COFINS.AsString;
        cdsCompraItemCEST.AsString := frmPesqProdutoItens.fdsProdutoItensCEST.AsString;
        cdsCompraItemPORCENT_FCP.AsFloat := frmPesqProdutoItens.fdsProdutoItensFCP.AsFloat;
        cdsCompraItemALIQ_PICMS.AsFloat := frmPesqProdutoItens.fdsProdutoItensALIQ_ICMS.AsFloat;
        cdsCompraItemQUANT_PROD.AsFloat := 1;
        cdsCompraItemCONVERSAO.AsFloat := 1;
        cdsCompraItemITEM.AsInteger := item;
        Inc(item);
        edtItemCodigo.Text := frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;

        if frmPrincipal.modoTabPreco = 'S' then
          edtQtnItem.SetFocus
        else
          edtPrecCusto.SetFocus;
      end
      else
      begin
        btnItemCancelar.Click;
      end;
      frmPesqProdutoItens.Free;
    end;
    // end;
  end
  else
  begin
    tempIDItem := qrySql.FieldByName('ID').AsInteger;
    if MyLocateItem(IntToStr(tempIDItem)) then
    begin
      Case MessageBox(Application.Handle,
        Pchar('Este item j� foi incluso na Movimenta��o, deseja duplic�-lo?'),
        'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        IDNO:
          begin
            cdsCompraItem.Cancel;
            ControlaBtnsItens;
            btnItensIncluir.SetFocus;
            Abort;
          end;
      end;
    end;

    cdsItemPrec.Append;
    cdsItemPrecIDITEM.AsInteger := tempIDItem;
    cdsItemPrecCUSTO_ANT.AsFloat := qrySql.FieldByName('PREC_CUSTO').AsFloat;
    cdsItemPrecMG_LUCRO_ANT.AsFloat := qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
    cdsItemPrecPREC_VENDA_ANT.AsFloat :=qrySql.FieldByName('PREC_VENDA').AsFloat;
    cdsItemPrecMG_LUCRO_ATUAL.AsFloat :=qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
    cdsItemPrecPREC_VENDA_ATUAL.AsFloat := qrySql.FieldByName('PREC_VENDA').AsFloat;
    // cdsItemPrecDESC_MAX1.AsFloat := qrySql.FieldByName('DESC_MAX1').AsFloat;
    // cdsItemPrecDESC_MAX_ATUAL1.AsFloat := qrySql.FieldByName('DESC_MAX1').AsFloat;
    //
    // cdsItemPrecMG_LUCRO_ANT2.AsFloat := qrySql.FieldByName('PORCENTAGEM_AJUSTE2').AsFloat;
    // cdsItemPrecPREC_VENDA_ANT2.AsFloat := qrySql.FieldByName('PREC_TAB2').AsFloat;
    // cdsItemPrecMG_LUCRO_ATUAL2.AsFloat := qrySql.FieldByName('PORCENTAGEM_AJUSTE2').AsFloat;
    // cdsItemPrecPREC_VENDA_ATUAL2.AsFloat := qrySql.FieldByName('PREC_TAB2').AsFloat;
    // cdsItemPrecDESC_MAX2.AsFloat := qrySql.FieldByName('DESC_MAX2').AsFloat;
    // cdsItemPrecDESC_MAX_ATUAL2.AsFloat := qrySql.FieldByName('DESC_MAX2').AsFloat;

    cdsCompraItem.Append;
    cdsCompraItemIDCOMPRA.AsInteger := fdsComprasID.AsInteger;
    cdsCompraItemIDFILIAL.AsInteger := fdsComprasIDFILIAL.AsInteger;
    cdsCompraItemIDPROD_ITEM.AsInteger := tempIDItem;
    cdsCompraItemVLR_UNITARIO.AsFloat := qrySql.FieldByName('PREC_CUSTO').AsFloat;
    cdsCompraItemPREC_VENDA.AsFloat := qrySql.FieldByName('PREC_VENDA').AsFloat;
    cdsCompraItemMARGEM_LUCRO.AsFloat := qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
    cdsCompraItemPESO.AsFloat := qrySql.FieldByName('PESO').AsFloat;
    cdsCompraItemNOME.AsString := qrySql.FieldByName('NOME').AsString;
    cdsCompraItemTIPO.AsString := qrySql.FieldByName('TIPO').AsString;
    cdsCompraItemCOD_FABRICA.AsString := qrySql.FieldByName('COD_FABRICA').AsString;
    cdsCompraItemCFOP.AsString :=qrySql.FieldByName('CFOP').AsString;
    cdsCompraItemCSOSN.AsString := qrySql.FieldByName('CSOSN').AsString;
    cdsCompraItemNCM.AsString := qrySql.FieldByName('NCM').AsString;
    cdsCompraItemCST_PIS.AsString := qrySql.FieldByName('CST_PIS').AsString;
    cdsCompraItemCST_COFINS.AsString := qrySql.FieldByName('CST_COFINS').AsString;
    cdsCompraItemCEST.AsString := qrySql.FieldByName('CEST').AsString;
    cdsCompraItemPORCENT_FCP.AsFloat := qrySql.FieldByName('FCP').AsFloat;
    cdsCompraItemALIQ_PICMS.AsFloat := qrySql.FieldByName('ALIQ_ICMS').AsFloat;
    cdsCompraItemQUANT_PROD.AsFloat:=1;
    cdsCompraItemCONVERSAO.AsFloat:= 1;
    cdsCompraItemITEM.AsInteger := item;
    edtItemCodigo.Text := qrySql.FieldByName('COD_FABRICA').AsString;
    Inc(item);

    if frmPrincipal.modoTabPreco = 'S' then
      edtQtnItem.SetFocus
    else
      edtPrecCusto.SetFocus;
  end;
end;

procedure TfrmCompras.PreparaLancamentoCompra;
begin
  fdsCompras.Close;
  fdsCompras.Open;
  fdsCompras.Append;
  cdsCompraItem.Close;
  cdsCompraItem.Open;
  cdsCompraItem.EmptyDataSet;
  cdsCompras.Open;
  cdsCompras.EmptyDataSet;
  tbsCompraSimples.Show;
  edIdSimples.Text := fdsComprasID.AsString;
  edtItemCodigo.Clear;
  edtItemNome.Clear;
  item := 1;
  pesoTotal := 0;
  totalNota := 0;
  totalItem:=0;
  fdsComprasIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsComprasFILIAL.AsString := DM.fdsConfigFILIAL.AsString;
  fdsComprasDT_INC.AsDateTime := Now;
  fdsComprasSTATUS.AsString := 'A';
  edtFornecedor.Clear;
  fdsComprasPREFIXO.AsString := 'CP';
  fdsComprasTIPO_ESTOQUE.AsString:='N';
  EditaInsere;
  btnItemAlterar.Enabled := False;
  btnItemExcluir.Enabled := False;
  fdsComprasDT_EMISSAO.AsDateTime := Now;
  cbxTipoNota.Value := 'NF';
end;

procedure TfrmCompras.RetornaFornecedor(campo, valor: string);
begin
  with fdsFornecedor do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('NOMEFORNECEDOR', 'F.' + campo + ' like UPPER(' +
      QuotedStr(valor + '%') + ') AND F.STATUS ='+QuotedStr('A'), True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmCompras.PesquisaFornecedor;
begin
  Try
    frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
    frmPesqFornecedor.ShowModal;
  Finally
    if frmPesqFornecedor.ModalResult = mrOk then
    begin
      fdsComprasIDFORNECEDOR.AsInteger :=
        frmPesqFornecedor.fdsFornecedorID.AsInteger;
      fdsComprasFORNECEDOR.AsString :=
        frmPesqFornecedor.fdsFornecedorNOME.AsString;
    end;
    frmPesqFornecedor.Free;
  End;
end;

function TfrmCompras.RetornaIDCidade(codigo: Integer): Integer;
begin
  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID FROM CIDADE_IBGE WHERE CODIGO = ' + IntToStr(codigo));
    Prepare;
    ExecQuery;
  end;

  if qrySql.RecordCount > 0 then
    Result := qrySql.FieldByName('ID').AsInteger
  else
    Result := 1;
end;

procedure TfrmCompras.RetornaItensCompra;
begin
  if not(fdsCompras.State in [dsInsert, dsEdit]) and (fdsCompras.RecordCount > 0)
  then
  begin
    with fdsCompraItem do
    begin
      cdsCompraItem.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDCOMPRA',
        'IDCOMPRA=' + fdsComprasID.AsString, True);
      Conditions.AddCondition('IDFILIAL',
        'IDFILIAL=' + fdsComprasIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsCompraItem.Open;
    end;
  end;
end;

procedure TfrmCompras.RzDBEdit16Exit(Sender: TObject);
begin
  if cdsCompraItem.State in [dsInsert, dsEdit] then
  begin
    cdsCompraItemVLR_UNITARIO.AsFloat :=
      (cdsCompraItemVLR_UNT_TEMP.AsFloat * cdsCompraItemQTN.AsFloat) /
      (cdsCompraItemQTN.AsFloat * cdsCompraItemCONVERSAO.AsFloat);
    cdsCompraItemQTN.AsFloat := cdsCompraItemQUANT_PROD.AsFloat *
      cdsCompraItemCONVERSAO.AsFloat;

    // cdsCompraItemPREC_VENDA.AsFloat := (cdsCompraItemVLR_UNITARIO.AsFloat * cdsCompraItemQUANT_PROD.AsFloat) /(cdsCompraItemQUANT_PROD.AsFloat * cdsCompraItemCONVERSAO.AsFloat);
    cdsCompraItemPREC_VENDA.AsFloat :=
      RoundTo((cdsCompraItemVLR_UNITARIO.AsFloat +
      (cdsCompraItemVLR_UNITARIO.AsFloat * cdsCompraItemMARGEM_LUCRO.AsFloat /
      100)), -2);
    // cdsCompraItemPREC_VENDA.AsFloat := RoundTo((cdsCompraItemPREC_VENDA.AsFloat + (cdsCompraItemPREC_VENDA.AsFloat * cdsCompraItemMARGEM_LUCRO.AsFloat / 100)), -2);
    if manual=false then
     edtPreVenda.SetFocus;
    //btnItemGravar.SetFocus;
  end;
end;

procedure TfrmCompras.RzGroupBox5Enter(Sender: TObject);
begin
if manual=true then
edtVlrST.SetFocus;
end;

procedure TfrmCompras.RzSplitter2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  RzSplitter2.Hint:='Aten��o|Nesta aba consta Informa��o dos Impostos refente ao Cadastro do Produto.'+#13+'As altera��es feitas aqui implicara na mudan�a no cadastro do produto.'+#13+'|0';
end;

procedure TfrmCompras.SomaTotalCompras;
var
  tempTotal: string;
  utils: TUtils;
  numCompra: Double;
  status: string[2];
begin
  with qrySomaTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(C.VLR_TOTAL) AS TOTAL FROM COMPRA C, FORMA_PAGAMENTO FP WHERE FP.ID = C.IDFORMA_PAG');

//    if rgbStatus.ItemIndex = 1 then
//      status := 'A'
//    else if rgbStatus.ItemIndex = 2 then
//      status := 'C'
//    else
//      status := 'TD';

    if (chkNumCompra.Checked) then
    begin
      numCompra := utils.ValidaInteiroFloat(edtPesqNumCompra.Text, 'I');

      if numCompra > 0 then
      begin
        SQL.Add(' AND C.NOTA_NUM = :NOTA_NUM');
        ParamByName('NOTA_NUM').AsString := FloatToStr(numCompra);
      end;
    end;

    if (chkPeriodo.Checked) then
    begin
      SQL.Add(' AND C.DT_INC BETWEEN :DT_INC1 AND :DT_INC2');
      ParamByName('DT_INC1').AsDateTime := dtpInicio.Date;
      ParamByName('DT_INC2').AsDateTime := dtpFim.Date;
    end;

//    if chkFilial.Checked then
//    begin
//      SQL.Add(' AND C.IDFILIAL = :IDFILIAL');
//      ParamByName('IDFILIAL').AsString := cbxFilial.Value;
//    end;

    if (chkFornecedor.Checked) and not(Trim(edtPesqFornecedor.Text) = 'Todos')
    then
    begin
      RetornaFornecedor('NOME', Trim(edtPesqFornecedor.Text));
      if fdsFornecedor.RecordCount > 0 then
      begin
        SQL.Add(' AND C.IDFORNECEDOR = :IDFORNECEDOR');
        ParamByName('IDFORNECEDOR').AsInteger := fdsFornecedorID.AsInteger;
      end
    end;

//    if status <> 'TD' then
//    begin
//      SQL.Add(' AND C.STATUS = :STATUS');
//      ParamByName('STATUS').AsString := status;
//    end;

    Prepare;
    ExecQuery;
    tempTotal := FieldByName('TOTAL').AsString;
  end;
  if tempTotal = '' then
    tempTotal := '0';

  lblVlrTotal.Caption := utils.AdicionaMascaraDinheiro(tempTotal);
end;

procedure TfrmCompras.edtFrete(Sender: TObject);
begin
  if fdsComprasVLR_TOTITEM.AsFloat > 0 then
  begin
    fdsComprasVLR_TOTAL.AsFloat := fdsComprasVLR_TOTITEM.AsFloat -
      fdsComprasVLR_DESCONTO.AsFloat + fdsComprasVLR_FRETE.AsFloat +
      fdsComprasSUBTRIBUTARIA.AsFloat;
  end;
end;

procedure TfrmCompras.edtFreteSimplesEnter(Sender: TObject);
begin
  if fdsComprasVLR_FRETE.AsFloat > 0 then
    totalNota := totalNota - fdsComprasVLR_FRETE.AsFloat;
end;

procedure TfrmCompras.edtFreteSimplesExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasVLR_FRETE.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtFundoPobrezaEnter(Sender: TObject);
begin
  if fdsComprasVLR_FUNDO_POBREZA.AsFloat > 0 then
  totalNota := totalNota - fdsComprasVLR_FUNDO_POBREZA.AsFloat;
end;

procedure TfrmCompras.edtFundoPobrezaExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasVLR_FUNDO_POBREZA.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtItemCodigoExit(Sender: TObject);
begin
  if cdsCompraItem.State in [dsInsert] then
  begin
    PesquisarItem(edtItemCodigo.Text);

  end;
end;

procedure TfrmCompras.edtMargemLucroChange(Sender: TObject);
begin
  // if cdsCompraItem.State in [dsInsert, dsEdit] then
  // begin
  // // if cdsCompraItemMARGEM_LUCRO.AsFloat <=0  or (cdsCompraItemPREC_VENDA.AsFloat= 2* cdsCompraItem)then
  // cdsCompraItemMARGEM_LUCRO.AsFloat := DM.fdsConfigMARGEN_LUCRO_PADRAO.AsFloat;

  // end;
end;

procedure TfrmCompras.edtMargemLucroExit(Sender: TObject);
var
  utils: TUtils;
begin
  if cdsCompraItem.State in [dsInsert, dsEdit] then
  begin
    if cdsCompraItemTIPO.AsString = 'RV' then
    begin
      if utils.ValidaInteiroFloat(FloatToStr(cdsCompraItemMARGEM_LUCRO.AsFloat),
        'F') > 0 then
      begin
        cdsCompraItemPREC_VENDA.AsFloat := RoundTo((cdsCompraItemVLR_UNITARIO.AsFloat +(cdsCompraItemVLR_UNITARIO.AsFloat * cdsCompraItemMARGEM_LUCRO.AsFloat/ 100)), -2);
      end;
    end
    else
      cdsCompraItemMARGEM_LUCRO.AsFloat := 0;
  end;
end;

procedure TfrmCompras.edtNotaNumSimplesExit(Sender: TObject);
begin
if manual=true then
RzDBEdit12.SetFocus;
end;

procedure TfrmCompras.edtOutrasDespesasEnter(Sender: TObject);
begin
if fdsComprasVLR_OUTRAS_DESPESAS.AsFloat > 0 then
  totalNota := totalNota - fdsComprasVLR_OUTRAS_DESPESAS.AsFloat;
end;

procedure TfrmCompras.edtOutrasDespesasExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasVLR_OUTRAS_DESPESAS.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtSeguroEnter(Sender: TObject);
begin
  if fdsComprasSEGURO.AsFloat > 0 then
  totalNota := totalNota - fdsComprasSEGURO.AsFloat;
end;

procedure TfrmCompras.edtSeguroExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasSEGURO.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtSubTributaria(Sender: TObject);
begin
  if fdsComprasVLR_TOTITEM.AsFloat > 0 then
  begin
    fdsComprasVLR_TOTAL.AsFloat := fdsComprasVLR_TOTITEM.AsFloat -
      fdsComprasVLR_DESCONTO.AsFloat + fdsComprasVLR_FRETE.AsFloat +
      fdsComprasSUBTRIBUTARIA.AsFloat;
  end;
end;

procedure TfrmCompras.edtValorIPIEnter(Sender: TObject);
begin
  if fdsComprasVLR_IPI.AsFloat > 0 then
  totalNota := totalNota - fdsComprasVLR_IPI.AsFloat;
end;

procedure TfrmCompras.edtValorIPIExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasVLR_IPI.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtVDescontoEnter(Sender: TObject);
begin
  if fdsComprasVLR_DESCONTO.AsFloat > 0 then
  totalNota := totalNota + fdsComprasVLR_DESCONTO.AsFloat;
end;

procedure TfrmCompras.edtVDescontoExit(Sender: TObject);
begin
  totalNota := totalNota - fdsComprasVLR_DESCONTO.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.edtVlrSTEnter(Sender: TObject);
begin
  if fdsComprasSUBTRIBUTARIA.AsFloat > 0 then
  totalNota := totalNota - fdsComprasSUBTRIBUTARIA.AsFloat;
end;

procedure TfrmCompras.edtVlrSTExit(Sender: TObject);
begin
  totalNota := totalNota + fdsComprasSUBTRIBUTARIA.AsFloat;
  fdsComprasVLR_TOTAL.AsFloat := totalNota;
end;

procedure TfrmCompras.tbsFormShow(Sender: TObject);
begin
  // ConfigTipoCompra('S');
  RetornaItensCompra;
end;

procedure TfrmCompras.TerminaContador;
begin
  TrheadContador.Terminate();
  pnlProgresso.Visible := False;
  pgbProgresso.Percent := 0;
  tempo := 0;
end;

procedure TfrmCompras.VerificaConfTabelaPreco;
var
  usarTabelaPreco: Boolean;
begin
  if frmPrincipal.modoTabPreco = 'S' then
    usarTabelaPreco := True
  else
    usarTabelaPreco := False;

  gdrItens.Columns[3].Visible := usarTabelaPreco;

  if usarTabelaPreco then
  begin
    edtPrecCusto.Enabled := False;
    edtMargemLucro.Enabled := False;
    edtPreVenda.Enabled := False;

    gdrItens.Columns[2].Title.Caption := fdsTabPrecoDESCRICAO1.AsString;
    gdrItens.Columns[3].Title.Caption := fdsTabPrecoDESCRICAO2.AsString;

  end;
end;

end.
