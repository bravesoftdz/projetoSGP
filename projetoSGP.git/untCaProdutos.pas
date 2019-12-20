﻿unit untCaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,IniFiles,
  Dialogs, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzBckgnd, DB,
  FIBDataSet, pFIBDataSet, DBCtrls, RzDBCmbo, StdCtrls, RzCmboBx, Mask, RzEdit,
  RzDBEdit, RzLabel, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzButton,
  RzPanel, RzPrgres, FIBQuery, pFIBQuery, Provider, pFIBClientDataSet, DBClient,
  Vcl.Imaging.pngimage, System.Math, JvExStdCtrls, JvCheckBox, RzRadGrp,
  RzRadChk, RzDBChk, Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls, RzDBRGrp;

type
  TfrmCadProdutos = class(TForm)
    pnlControles: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    JvDBGrid1: TJvDBGrid;
    tbsForm: TRzTabSheet;
    fdsProduto: TpFIBDataSet;
    dsProduto: TDataSource;
    RzBackground1: TRzBackground;
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
    fdsGrupo: TpFIBDataSet;
    fdsGrupoID: TFIBBCDField;
    fdsGrupoNOME: TFIBStringField;
    fdsGrupoREFERENCIA: TFIBStringField;
    dsGrupo: TDataSource;
    fdsProdutoID: TFIBBCDField;
    fdsProdutoDT_INC: TFIBDateField;
    fdsProdutoDT_ALT: TFIBDateField;
    fdsProdutoSTATUS: TFIBStringField;
    fdsProdutoNOME: TFIBStringField;
    fdsProdutoREFERENCIA: TFIBStringField;
    fdsProdutoIDGRUPO: TFIBBCDField;
    fdsProdutoIDFORNECEDOR: TFIBBCDField;
    fdsProdutoDESCRICAO: TFIBBlobField;
    fdsProdutoFORNECEDOR: TFIBStringField;
    fdsItens: TpFIBDataSet;
    dsCor: TDataSource;
    fdsCor_Grupo: TpFIBDataSet;
    fdsProdutoGRUPO: TFIBStringField;
    fdsCor_GrupoID: TFIBBCDField;
    fdsCor_GrupoNOME: TFIBStringField;
    fdsCor_GrupoREFERENCIA: TFIBStringField;
    fdsTamanho_Grupo: TpFIBDataSet;
    dsTamanho_Grupo: TDataSource;
    fdsTamanho_GrupoID: TFIBBCDField;
    fdsTamanho_GrupoNOME: TFIBStringField;
    fdsTamanho_GrupoREFERENCIA: TFIBStringField;
    fdsProdutoENVIADO_WEB: TFIBStringField;
    fdsItens_Estoque: TpFIBDataSet;
    fdsItens_EstoqueIDITEM: TFIBBCDField;
    fdsItens_EstoqueIDFILIAL: TFIBBCDField;
    fdsItens_EstoqueSALDO: TFIBBCDField;
    fdsItens_EstoqueSALDO_MINIMO: TFIBBCDField;
    qryComand: TpFIBQuery;
    fdsTabelaPreco: TpFIBDataSet;
    fdsTabelaPrecoID: TFIBBCDField;
    fdsTabelaPrecoDESCRICAO1: TFIBStringField;
    fdsTabelaPrecoDESCRICAO2: TFIBStringField;
    fdsTabelaPrecoDESCRICAO3: TFIBStringField;
    fdsTabelaPrecoDESCRICAO4: TFIBStringField;
    fdsTabelaPrecoDESCRICAO5: TFIBStringField;
    fdsTabelaPrecoDESCRICAO6: TFIBStringField;
    cdsItens: TpFIBClientDataSet;
    dspItens: TpFIBDataSetProvider;
    cdsItensID: TpFIBClientBCDField;
    cdsItensDT_INC: TDateField;
    cdsItensDT_ALT: TDateField;
    cdsItensIDPRODUTO: TpFIBClientBCDField;
    cdsItensSTATUS: TStringField;
    cdsItensNOME: TStringField;
    cdsItensREFERENCIA: TStringField;
    cdsItensIDTAMANHO: TpFIBClientBCDField;
    cdsItensIDCOR: TpFIBClientBCDField;
    cdsItensPESO: TpFIBClientBCDField;
    cdsItensPREC_CUSTO: TpFIBClientBCDField;
    cdsItensTAMANHO: TStringField;
    cdsItensALTURA_I: TpFIBClientBCDField;
    cdsItensLARGURA_I: TpFIBClientBCDField;
    cdsItensPROFUNDIDADE_I: TpFIBClientBCDField;
    cdsItensALTURA_E: TpFIBClientBCDField;
    cdsItensLARGURA_E: TpFIBClientBCDField;
    cdsItensPROFUNDIDADE_E: TpFIBClientBCDField;
    cdsItensCOR: TStringField;
    cdsItensESTOQUE: TpFIBClientBCDField;
    cdsItensESTOQUE_MIN: TpFIBClientBCDField;
    cdsItensENVIADO_WEB: TStringField;
    dsItensTemp: TDataSource;
    fdsProdutoTIPO: TFIBStringField;
    dsMateriaPrima: TDataSource;
    RzGroupBox1: TRzGroupBox;
    lblCodigo: TRzLabel;
    lblNome: TRzLabel;
    lblDtInc: TRzLabel;
    lblStatus: TRzLabel;
    lblCidade: TRzLabel;
    RzLabel13: TRzLabel;
    lblVendedor: TRzLabel;
    edtID: TRzDBEdit;
    edtDt_Inc: TRzDBEdit;
    cbxStatus: TRzDBComboBox;
    edtFornecedor: TRzEdit;
    cbxTipo: TRzDBComboBox;
    lcbGrupo: TRzDBLookupComboBox;
    btnPesqFornecedor: TRzBitBtn;
    pnlItensGrade: TRzGroupBox;
    pgcItens: TRzPageControl;
    tbsItensProduto: TRzTabSheet;
    gdrItens: TJvDBGrid;
    tbsMateriaPrima: TRzTabSheet;
    gdrMateriaPrima: TJvDBGrid;
    pnlMateriaPrimaControle: TRzPanel;
    btnMateriaPrimaInc: TRzBitBtn;
    btnMateriaPrimaAlt: TRzBitBtn;
    pnlItensGradeDados: TRzGroupBox;
    RzLabel4: TRzLabel;
    RzLabel3: TRzLabel;
    lblCor: TRzLabel;
    lblTamanho: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel7: TRzLabel;
    lblPeso: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    edtNomeItem: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    edtEstoqueItem: TRzDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    edtItemCodFab: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    edtPeso: TRzDBEdit;
    pnlItensControle: TRzPanel;
    btnItemCancelar: TRzBitBtn;
    btnItemGravar: TRzBitBtn;
    btnItemExcluir: TRzBitBtn;
    btnItemAlterar: TRzBitBtn;
    lblPrec1: TRzLabel;
    edtPrec1: TRzDBEdit;
    lblPrec2: TRzLabel;
    edtPrec2: TRzDBEdit;
    edtPrec3: TRzDBEdit;
    lblPrec3: TRzLabel;
    edtPrec4: TRzDBEdit;
    lblPrec4: TRzLabel;
    edtPrec5: TRzDBEdit;
    lblPrec5: TRzLabel;
    edtPrec6: TRzDBEdit;
    lblPrec6: TRzLabel;
    btnMateriaPrimaExc: TRzBitBtn;
    btnMateriaPrimaSal: TRzBitBtn;
    gbxGeraItens: TRzGroupBox;
    pgbGeraItens: TRzProgressBar;
    fdsMateriaPrima: TpFIBDataSet;
    fdsMateriaPrimaID: TFIBBCDField;
    fdsMateriaPrimaIDITEM_FABRICACAO: TFIBBCDField;
    fdsMateriaPrimaIDITEM_MATERIA_PRIMA: TFIBBCDField;
    fdsMateriaPrimaQTN_MATERIA_PRIMA: TFIBBCDField;
    fdsMateriaPrimaENVIADO_WEB: TFIBStringField;
    fdsMateriaPrimaREFERENCIA: TFIBStringField;
    fdsMateriaPrimaTAMANHO: TFIBStringField;
    fdsMateriaPrimaCOR: TFIBStringField;
    fdsMateriaPrimaESTOQUE: TFIBBCDField;
    fdsMateriaPrimaESTOQUE_MIN: TFIBBCDField;
    fdsMateriaPrimaNOME: TFIBStringField;
    dspMateriaPrima: TpFIBDataSetProvider;
    cdsMateriaPrima: TpFIBClientDataSet;
    cdsMateriaPrimaID: TpFIBClientBCDField;
    cdsMateriaPrimaIDITEM_FABRICACAO: TpFIBClientBCDField;
    cdsMateriaPrimaIDITEM_MATERIA_PRIMA: TpFIBClientBCDField;
    cdsMateriaPrimaQTN_MATERIA_PRIMA: TpFIBClientBCDField;
    cdsMateriaPrimaENVIADO_WEB: TStringField;
    cdsMateriaPrimaREFERENCIA: TStringField;
    cdsMateriaPrimaTAMANHO: TStringField;
    cdsMateriaPrimaCOR: TStringField;
    cdsMateriaPrimaESTOQUE: TpFIBClientBCDField;
    cdsMateriaPrimaESTOQUE_MIN: TpFIBClientBCDField;
    cdsMateriaPrimaNOME: TStringField;
    RzLabel1: TRzLabel;
    edtEstoqueGerenItem: TRzDBEdit;
    cdsItensPREC_ULTIMO_CUSTO: TpFIBClientBCDField;
    btnItemInc: TRzBitBtn;
    btnPesqCor: TRzBitBtn;
    btnPesqTamanho: TRzBitBtn;
    cdsItensISNOVO: TStringField;
    cdsItensCOD_FABRICA: TStringField;
    edtDtValidade: TRzDBEdit;
    lblDtValidade: TRzLabel;
    cdsItensDT_VALIDADE: TDateField;
    edtMargemLucro: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    fdsTabelaPrecoPDV_DES1: TFIBStringField;
    fdsTabelaPrecoPDV_DES2: TFIBStringField;
    fdsTabelaPrecoPDV_DES3: TFIBStringField;
    fdsTabelaPrecoPDV_DES4: TFIBStringField;
    fdsTabelaPrecoPDV_DES5: TFIBStringField;
    fdsTabelaPrecoPDV_DES6: TFIBStringField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabelaPrecoPORCENTAGEM_AJUSTE6: TFIBBCDField;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    cdsItensDESC_MAX1: TpFIBClientBCDField;
    cdsItensDESC_MAX2: TpFIBClientBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT1: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT2: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT3: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT4: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT5: TFIBBCDField;
    fdsTabelaPrecoDESC_MAX_PORCENT6: TFIBBCDField;
    cdsItensCOD_FABRICANTE: TStringField;
    cdsItensCOMISSAO_DN: TpFIBClientBCDField;
    cdsItensCOMISSAO_CH: TpFIBClientBCDField;
    cdsItensCOMISSAO_CT: TpFIBClientBCDField;
    fdsGrupoDT_INC: TFIBDateField;
    fdsGrupoDT_ALT: TFIBDateField;
    fdsGrupoSTATUS: TFIBStringField;
    fdsGrupoENVIADO_WEB: TFIBStringField;
    fdsGrupoCOMISSAO_DN: TFIBBCDField;
    fdsGrupoCOMISSAO_CH: TFIBBCDField;
    fdsGrupoCOMISSAO_CT: TFIBBCDField;
    cdsItensUNIDADE: TStringField;
    cdsItensESTOQUE_GEREN: TpFIBClientBCDField;
    RzLabel2: TRzLabel;
    cbxUnidade: TRzDBComboBox;
    fdsProdutoNCM: TFIBStringField;
    fdsItens_EstoqueSALDO_GERENCIAL: TFIBBCDField;
    fdsItens_EstoqueENVIADO_WEB: TFIBStringField;
    fdsFilial: TpFIBDataSet;
    fdsFilialID: TFIBBCDField;
    fdsFilialDT_INC: TFIBDateField;
    fdsFilialDT_ALT: TFIBDateField;
    fdsFilialSTATUS: TFIBStringField;
    fdsFilialNOME: TFIBStringField;
    fdsFilialENDERECO: TFIBStringField;
    fdsFilialBAIRRO: TFIBStringField;
    fdsFilialIDCIDADE: TFIBBCDField;
    fdsFilialCEP: TFIBStringField;
    fdsFilialTELEFONE1: TFIBStringField;
    fdsFilialTELEFONE2: TFIBStringField;
    fdsFilialEMAIL: TFIBStringField;
    fdsFilialIDROTA: TFIBBCDField;
    fdsFilialENVIADO_WEB: TFIBStringField;
    fdsProdutoCEST: TFIBStringField;
    fdsProdutoCFOP: TFIBStringField;
    fdsProdutoCST: TFIBStringField;
    fdsProdutoALIQ_ICMS: TFIBFloatField;
    fdsProdutoCSOSN: TFIBStringField;
    fdsCFOP: TpFIBDataSet;
    fdsCFOPID: TFIBBCDField;
    fdsCFOPCODIGO_CFOP: TFIBStringField;
    fdsCFOPNOME: TFIBStringField;
    fdsProdutoCFOP_NOME: TFIBStringField;
    tbsTabelaItens: TRzTabSheet;
    gdrItensTabela: TJvDBGrid;
    fdsItensTabela: TpFIBDataSet;
    dsItensTabela: TDataSource;
    fdsItensTabelaID: TFIBBCDField;
    fdsItensTabelaDT_INC: TFIBDateField;
    fdsItensTabelaDT_ALT: TFIBDateField;
    fdsItensTabelaIDPRODUTO: TFIBBCDField;
    fdsItensTabelaSTATUS: TFIBStringField;
    fdsItensTabelaNOME: TFIBStringField;
    fdsItensTabelaIDTAMANHO: TFIBBCDField;
    fdsItensTabelaIDCOR: TFIBBCDField;
    fdsItensTabelaPESO: TFIBBCDField;
    fdsItensTabelaPREC_CUSTO: TFIBBCDField;
    fdsItensTabelaCOD_FABRICA: TFIBStringField;
    fdsItensTabelaPREC_ULTIMO_CUSTO: TFIBBCDField;
    fdsItensTabelaDT_VALIDADE: TFIBDateField;
    fdsItensTabelaMARGEM_LUCRO: TFIBBCDField;
    fdsItensTabelaCOD_FABRICANTE: TFIBStringField;
    fdsItensTabelaUNIDADE: TFIBStringField;
    fdsItensTabelaTAMANHO: TFIBStringField;
    fdsItensTabelaCOR: TFIBStringField;
    fdsItensTabelaESTOQUE: TFIBBCDField;
    fdsItensTabelaESTOQUE_GEREN: TFIBBCDField;
    fdsItensTabelaESTOQUE_MIN: TFIBBCDField;
    pnlGrupo: TRzGroupBox;
    cbxGrupo: TRzComboBox;
    chkGrupo: TJvCheckBox;
    fdsMateriaPrimaCOD_FABRICA: TFIBStringField;
    cdsMateriaPrimaCOD_FABRICA: TStringField;
    btnItensGerar: TRzBitBtn;
    btnInfoAdicional: TRzBitBtn;
    fdsProdutoIBPT_NACIONA_FEDERAL: TFIBBCDField;
    fdsProdutoIBPT_IMPORTADOS_FEDERAL: TFIBBCDField;
    fdsProdutoIBPT_ESTADUAL: TFIBBCDField;
    fdsProdutoIBPT_MUNICIPAL: TFIBBCDField;
    fdsProdutoIDSUBGRUPO: TFIBBCDField;
    fdsProdutoINFO_ADICIONAL: TFIBStringField;
    pnlItensUnico: TRzGroupBox;
    RzLabel18: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzLabel19: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzLabel21: TRzLabel;
    RzLabel25: TRzLabel;
    edtEstoqueItem2: TRzDBEdit;
    RzLabel27: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    edtPeso2: TRzDBEdit;
    RzLabel32: TRzLabel;
    edtNome: TRzDBEdit;
    fdsItensTabelaREFERENCIA: TFIBStringField;
    fdsItensTabelaCOMISSAO_DN: TFIBBCDField;
    fdsItensTabelaCOMISSAO_CH: TFIBBCDField;
    fdsItensTabelaCOMISSAO_CT: TFIBBCDField;
    fdsItensTabelaENVIADO_WEB: TFIBStringField;
    fdsItensTabelaALTURA_I: TFIBBCDField;
    fdsItensTabelaLARGURA_I: TFIBBCDField;
    fdsItensTabelaPROFUNDIDADE_I: TFIBBCDField;
    fdsItensTabelaALTURA_E: TFIBBCDField;
    fdsItensTabelaLARGURA_E: TFIBBCDField;
    fdsItensTabelaPROFUNDIDADE_E: TFIBBCDField;
    fdsItensTabelaISNOVO: TFIBStringField;
    fdsItensTabelaST: TStringField;
    rgbStatus: TRzRadioGroup;
    fdsGrupoMARGEM_LUCRO: TFIBBCDField;
    fdsItensTabelaFORNECEDOR: TFIBStringField;
    fdsItens_EstoquePREC_VENDA: TFIBBCDField;
    fdsItens_EstoquePREC_TAB1: TFIBBCDField;
    fdsItens_EstoquePREC_TAB2: TFIBBCDField;
    fdsItens_EstoquePREC_TAB3: TFIBBCDField;
    fdsItens_EstoquePREC_TAB4: TFIBBCDField;
    fdsItens_EstoquePREC_TAB5: TFIBBCDField;
    fdsItens_EstoquePREC_TAB6: TFIBBCDField;
    fdsItens_EstoqueMARGEM_LUCRO: TFIBBCDField;
    cdsItensPREC_VENDA: TpFIBClientBCDField;
    cdsItensPREC_TAB1: TpFIBClientBCDField;
    cdsItensPREC_TAB2: TpFIBClientBCDField;
    cdsItensPREC_TAB3: TpFIBClientBCDField;
    cdsItensPREC_TAB4: TpFIBClientBCDField;
    cdsItensPREC_TAB5: TpFIBClientBCDField;
    cdsItensPREC_TAB6: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO: TpFIBClientBCDField;
    fdsItensTabelaDESC_MAX1: TFIBBCDField;
    fdsItensTabelaDESC_MAX2: TFIBBCDField;
    fdsItensTabelaPREC_VENDA: TFIBBCDField;
    fdsItensTabelaPREC_TAB1: TFIBBCDField;
    fdsItensTabelaPREC_TAB2: TFIBBCDField;
    fdsItensTabelaPREC_TAB3: TFIBBCDField;
    fdsItensTabelaPREC_TAB4: TFIBBCDField;
    fdsItensTabelaPREC_TAB5: TFIBBCDField;
    fdsItensTabelaPREC_TAB6: TFIBBCDField;
    fdsItensTabelaUTILIZA_BALANCA: TFIBStringField;
    cdsItensUTILIZA_BALANCA: TStringField;
    cdsItensPREC_CUSTO_MEDIO: TpFIBClientBCDField;
    fdsItensTabelaPREC_CUSTO_MEDIO: TFIBBCDField;
    fdsItensID: TFIBBCDField;
    fdsItensDT_INC: TFIBDateField;
    fdsItensDT_ALT: TFIBDateField;
    fdsItensIDPRODUTO: TFIBBCDField;
    fdsItensSTATUS: TFIBStringField;
    fdsItensNOME: TFIBStringField;
    fdsItensREFERENCIA: TFIBStringField;
    fdsItensIDTAMANHO: TFIBBCDField;
    fdsItensIDCOR: TFIBBCDField;
    fdsItensPESO: TFIBBCDField;
    fdsItensPREC_CUSTO: TFIBBCDField;
    fdsItensPREC_CUSTO_MEDIO: TFIBBCDField;
    fdsItensCOD_FABRICA: TFIBStringField;
    fdsItensPREC_ULTIMO_CUSTO: TFIBBCDField;
    fdsItensDT_VALIDADE: TFIBDateField;
    fdsItensDESC_MAX1: TFIBBCDField;
    fdsItensDESC_MAX2: TFIBBCDField;
    fdsItensDESC_MAX3: TFIBBCDField;
    fdsItensDESC_MAX4: TFIBBCDField;
    fdsItensCOD_FABRICANTE: TFIBStringField;
    fdsItensCOMISSAO_DN: TFIBBCDField;
    fdsItensCOMISSAO_CH: TFIBBCDField;
    fdsItensCOMISSAO_CT: TFIBBCDField;
    fdsItensUNIDADE: TFIBStringField;
    fdsItensENVIADO_WEB: TFIBStringField;
    fdsItensUTILIZA_BALANCA: TFIBStringField;
    fdsItensTAMANHO: TFIBStringField;
    fdsItensALTURA_I: TFIBBCDField;
    fdsItensLARGURA_I: TFIBBCDField;
    fdsItensPROFUNDIDADE_I: TFIBBCDField;
    fdsItensALTURA_E: TFIBBCDField;
    fdsItensLARGURA_E: TFIBBCDField;
    fdsItensPROFUNDIDADE_E: TFIBBCDField;
    fdsItensCOR: TFIBStringField;
    fdsItensESTOQUE: TFIBBCDField;
    fdsItensESTOQUE_GEREN: TFIBBCDField;
    fdsItensESTOQUE_MIN: TFIBBCDField;
    fdsItensPREC_VENDA: TFIBBCDField;
    fdsItensPREC_TAB1: TFIBBCDField;
    fdsItensPREC_TAB2: TFIBBCDField;
    fdsItensPREC_TAB3: TFIBBCDField;
    fdsItensPREC_TAB4: TFIBBCDField;
    fdsItensPREC_TAB5: TFIBBCDField;
    fdsItensPREC_TAB6: TFIBBCDField;
    fdsItensMARGEM_LUCRO_TAB2: TFIBBCDField;
    fdsItensMARGEM_LUCRO_TAB3: TFIBBCDField;
    fdsItensMARGEM_LUCRO_TAB4: TFIBBCDField;
    fdsItensMARGEM_LUCRO_TAB5: TFIBBCDField;
    fdsItensMARGEM_LUCRO_TAB6: TFIBBCDField;
    fdsItensMARGEM_LUCRO: TFIBBCDField;
    fdsItensISNOVO: TFIBStringField;
    fdsItensTabelaMARGEM_LUCRO_TAB2: TFIBBCDField;
    fdsItensTabelaMARGEM_LUCRO_TAB3: TFIBBCDField;
    fdsItensTabelaMARGEM_LUCRO_TAB4: TFIBBCDField;
    fdsItensTabelaMARGEM_LUCRO_TAB5: TFIBBCDField;
    fdsItensTabelaMARGEM_LUCRO_TAB6: TFIBBCDField;
    fdsItensTabelaDESC_MAX3: TFIBBCDField;
    fdsItensTabelaDESC_MAX4: TFIBBCDField;
    cdsItensDESC_MAX3: TpFIBClientBCDField;
    cdsItensDESC_MAX4: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO_TAB2: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO_TAB3: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO_TAB4: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO_TAB5: TpFIBClientBCDField;
    cdsItensMARGEM_LUCRO_TAB6: TpFIBClientBCDField;
    RzLabel28: TRzLabel;
    edtCustoMedio: TRzDBEdit;
    lblCusto_1_2: TRzLabel;
    RzDBEdit18: TRzDBEdit;
    fdsItens_EstoqueMARGEM_LUCRO_TAB2: TFIBBCDField;
    fdsItens_EstoqueMARGEM_LUCRO_TAB3: TFIBBCDField;
    fdsItens_EstoqueMARGEM_LUCRO_TAB4: TFIBBCDField;
    fdsItens_EstoqueMARGEM_LUCRO_TAB5: TFIBBCDField;
    fdsItens_EstoqueMARGEM_LUCRO_TAB6: TFIBBCDField;
    RzLabel22: TRzLabel;
    RzDBComboBox2: TRzDBComboBox;
    fdsItensOBS: TFIBStringField;
    cdsItensOBS: TStringField;
    RzDBEdit25: TRzDBEdit;
    RzLabel30: TRzLabel;
    PageControl1: TPageControl;
    tbsTabPreco: TTabSheet;
    RzGroupBox6: TRzGroupBox;
    Label11: TLabel;
    RzLabel29: TRzLabel;
    lblPrec1_2: TRzLabel;
    RzDBEdit26: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    gbxTab2: TRzGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtPrec2_2: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit24: TRzDBEdit;
    gbxTab3: TRzGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edtPrec3_3: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit23: TRzDBEdit;
    gbxTab4: TRzGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    RzDBEdit22: TRzDBEdit;
    edtPrec4_4: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    edtIdentificador: TRzDBEdit;
    RzLabel31: TRzLabel;
    fdsItensIDENTIFICADOR: TFIBIntegerField;
    cdsItensIDENTIFICADOR: TIntegerField;
    RzDBEdit27: TRzDBEdit;
    RzLabel26: TRzLabel;
    fdsItensINFO_COMPLEMENTAR: TFIBStringField;
    cdsItensINFO_COMPLEMENTAR: TStringField;
    TabSheet1: TTabSheet;
    RzGroupBox4: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel20: TRzLabel;
    edtNCM: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    edtCEST: TRzDBEdit;
    RzLabel16: TRzLabel;
    edtCodCFOP: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit28: TRzDBEdit;
    RzDBEdit29: TRzDBEdit;
    RzLabel33: TRzLabel;
    RzLabel34: TRzLabel;
    RzGroupBox2: TRzGroupBox;
    RzLabel35: TRzLabel;
    RzLabel36: TRzLabel;
    RzLabel37: TRzLabel;
    RzDBEdit30: TRzDBEdit;
    RzDBEdit31: TRzDBEdit;
    RzDBEdit32: TRzDBEdit;
    btnPesqNCMs: TRzBitBtn;
    btnPesqCStCOFINS: TRzBitBtn;
    btnPesqCStPis: TRzBitBtn;
    fdsProdutoFCP: TFIBBCDField;
    fdsProdutoCST_PIS: TFIBStringField;
    fdsProdutoCST_COFINS: TFIBStringField;
    fdsProdutoALQ_IPI: TFIBBCDField;
    fdsUltimasDatas: TpFIBDataSet;
    fdsUltimasDatasULTIMA_VENDA: TFIBDateField;
    fdsUltimasDatasULTIMA_COMPRA: TFIBDateField;
    RzDBEdit33: TRzDBEdit;
    RzDBEdit34: TRzDBEdit;
    RzLabel38: TRzLabel;
    RzLabel39: TRzLabel;
    dsUltimasDatas: TDataSource;
    RzLabel23: TRzLabel;
    RzDBEdit11: TRzDBEdit;
    RzBitBtn1: TRzBitBtn;
    RzLabel24: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    RzBitBtn2: TRzBitBtn;
    RzDBRadioGroup1: TRzDBRadioGroup;
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
    rgbPesqCod: TRzRadioGroup;
    btnPesqEAN: TRzBitBtn;
    edtPesqEAN: TRzEdit;
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnPesqFornecedorClick(Sender: TObject);
    procedure tbsProdutoShow(Sender: TObject);
    procedure btnItensGerarClick(Sender: TObject);
    procedure btnItemAlterarClick(Sender: TObject);
    procedure btnItemExcluirClick(Sender: TObject);
    procedure btnItemCancelarClick(Sender: TObject);
    procedure btnItemGravarClick(Sender: TObject);
    procedure pgcControlChange(Sender: TObject);
    procedure fdsProdutoAfterScroll(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnItemIncluirClick(Sender: TObject);
    procedure tbsTabelaShow(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure tbsFormShow(Sender: TObject);
    procedure tbsMateriaPrimaShow(Sender: TObject);
    procedure btnMateriaPrimaIncClick(Sender: TObject);
    procedure gdrMateriaPrimaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnMateriaPrimaAltClick(Sender: TObject);
    procedure btnMateriaPrimaSalClick(Sender: TObject);
    procedure cdsMateriaPrimaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btnMateriaPrimaExcClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure btnPesqTamanhoClick(Sender: TObject);
    procedure btnPesqCorClick(Sender: TObject);
    procedure btnItemIncClick(Sender: TObject);
    procedure edtMargemLucroExit(Sender: TObject);
    procedure edtPesoExit(Sender: TObject);
    procedure edtPrec1Exit(Sender: TObject);
    procedure btnPesqEANClick(Sender: TObject);
    procedure edtPesqEANKeyPress(Sender: TObject; var Key: Char);
    procedure lblPrec2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPrec2MouseLeave(Sender: TObject);
    procedure lblPrec3MouseLeave(Sender: TObject);
    procedure lblPrec4MouseLeave(Sender: TObject);
    procedure lblPrec5MouseLeave(Sender: TObject);
    procedure lblPrec6MouseLeave(Sender: TObject);
    procedure lblPrec6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPrec5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPrec4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPrec3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ConfiguraTabPrecos;
    procedure lblPrec2Click(Sender: TObject);
    procedure edtItemCodFabExit(Sender: TObject);
    procedure edtPrec1Enter(Sender: TObject);
    procedure edtCodCFOPExit(Sender: TObject);
    procedure fdsItensTabelaBeforeOpen(DataSet: TDataSet);
    procedure gdrItensTabelaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrItensTabelaTitleClick(Column: TColumn);
    procedure gdrItensTabelaKeyPress(Sender: TObject; var Key: Char);
    procedure fdsItensTabelaAfterScroll(DataSet: TDataSet);
    procedure chkGrupoClick(Sender: TObject);
    procedure fdsGrupoAfterOpen(DataSet: TDataSet);
    procedure cbxGrupoChange(Sender: TObject);
    procedure cbxTipoExit(Sender: TObject);
    procedure gdrItensTabelaDblClick(Sender: TObject);
    procedure cdsMateriaPrimaBeforePost(DataSet: TDataSet);
    procedure cbxUnidadeExit(Sender: TObject);
    procedure btnInfoAdicionalClick(Sender: TObject);
    procedure cdsItensPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cbxTipoChange(Sender: TObject);
    procedure edtPeso2Exit(Sender: TObject);
    procedure cdsItensReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure edtNomeExit(Sender: TObject);
    procedure fdsItensTabelaCalcFields(DataSet: TDataSet);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure lcbGrupoExit(Sender: TObject);
    procedure RzDBEdit18Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPrec4_4Exit(Sender: TObject);
    procedure RzDBEdit24Exit(Sender: TObject);
    procedure RzDBEdit23Exit(Sender: TObject);
    procedure RzDBEdit20Exit(Sender: TObject);
    procedure edtPrec2_2Exit(Sender: TObject);
    procedure edtPrec3_3Exit(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesqCStPisClick(Sender: TObject);
    procedure btnPesqCStCOFINSClick(Sender: TObject);
    procedure btnPesqNCMsClick(Sender: TObject);
    procedure edtNCMChange(Sender: TObject);
  private
    { Private declarations }
    procedure Fecha;
  public
    procedure IncluirItem;
    procedure PesqCFOP;
    procedure ValidaCFOP;
    function MyLocateItem(chave1, chave2: string): Boolean;
    procedure MyLocateEAN(chave: string);
    procedure EditaInsere;
    procedure GravaCancela;
    procedure AumentaTamanhoForm;
    procedure DiminuiTamanhoForm;
    procedure VerificaTipoProduto;
    procedure ControlaBtnsItens;
    procedure ControlaBtnsMatPrima;
    procedure GeraItens;
    procedure RetornaProduto(id: Integer);
    procedure RetornaItens(idProduto: Integer);
    procedure RetornaItem(id: Integer);
    procedure ExcluirProduto;
    procedure RetornaMateriaPrima;
    procedure VerificaConfTabelaPreco;
    procedure PesquisaProduto(condicao: string);
    procedure CalcularPrecVenda();
    procedure CalculaMargemLucro();
  end;

const
  tamNormalHeight: Integer = 483;
  tamNormalWidth: Integer = 602;
  tamItensHeight: Integer = 680;
  tamItensWidth: Integer = 602;

var
  frmCadProdutos: TfrmCadProdutos;
  alterandoItens, edicao: Boolean;
  alterandoMatPrima, usarTabelaPreco: Boolean;
  idProduto, tempIdItem: Integer;
  ordem: string[4]; // controla a ordenação: Asc / Desc

implementation

uses uUtils, untData, untPesqFornecedor, untPesqProdutos, untPesqProdutoItens,
  untPrincipal, untPesqCor, untPesqTamanho, untConfigTabPreco,
  uVerificaPermicao, untGeraProdItens, untCFOP, untInfoAdicionalProduto,
  untMsgUsuarioNaoPermitido, untPesqCST, untPesqIBPT;

{$R *.dfm}

procedure TfrmCadProdutos.btnAlterarClick(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_PRODUTOS_EDIT') = True) then
  begin
    dspItens.ResolveToDataSet := False;
    dspMateriaPrima.ResolveToDataSet := False;
    RetornaProduto(idProduto);
    RetornaItem(fdsItensTabelaID.AsInteger);
    fdsProduto.Edit;
    fdsProdutoDT_ALT.AsDateTime := Now;
    fdsProdutoENVIADO_WEB.AsString := 'N';
    cdsItens.Edit;
    edicao := True;
    cdsItensENVIADO_WEB.AsString := 'N';
    cdsItensDT_ALT.AsDateTime := Now;
    EditaInsere;
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usuário sem permissão para editar produtos.','Sem Permissão','I',[mbOk]);
end;

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar a Inclusão/Alteração deste produto?'),
    'Atenção', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) of
    idNo:
      begin
        Abort;
      end;
  end;

  if (cdsItens.State in [dsInsert, dsEdit]) then
  begin
    cdsItens.Post;
    edtEstoqueItem.ReadOnly := True;
    edtEstoqueGerenItem.ReadOnly := True;
    edtEstoqueItem2.ReadOnly := True;
    //edtEstoqueGerenItem2.ReadOnly := True;
    edicao := False;
    ControlaBtnsItens;
  end;

  fdsProduto.Cancel;
  DM.Conexao.RollbackRetaining;
  cdsItens.EmptyDataSet;
  GravaCancela;
end;

procedure TfrmCadProdutos.btnDeleteClick(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_PRODUTOS_EXCL') = True) then
  begin
    if fdsProduto.RecordCount > 0 then
    begin
      Case MessageBox(Application.Handle,
        Pchar('Deseja realmente excluir o registro atual?'), 'Atenção',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
        idYes:
          begin
            ExcluirProduto;
            DM.Conexao.CommitRetaining;
            btnTodos.Click;
          end;
      end;
    end;
  end
  else
   TfrmMenssagens.Mensagem('Desculpe, usuário sem permissão para Excluir produtos.','Sem Permissão','I',[mbOk]);
end;

procedure TfrmCadProdutos.btnFirstClick(Sender: TObject);
begin
  fdsItensTabela.Prior;
  VerificaTipoProduto;
end;

procedure TfrmCadProdutos.btnGravarClick(Sender: TObject);
var
  utils: TUtils;
  i: Smallint;
  campoVazio, grava: Boolean;
  comissao: Double;
  uVerificaPermicao: TVerificaPermicao;
begin
  grava := False;
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
    Application.MessageBox('Existem campos obrigatórios sem preencher.',
      'Anteção', MB_OK + MB_ICONERROR)
  else
  begin
    grava := True;

    if edicao = False then
    begin
      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT P.* FROM PRODUTO_ITEM PI, PRODUTO P ');
        SQL.Add('WHERE(PI.COD_FABRICA = :COD_FABRICA or PI.nome = :NOME) AND P.ID = PI.IDPRODUTO');
        ParamByName('COD_FABRICA').AsString := cdsItensCOD_FABRICA.AsString;
        ParamByName('NOME').AsString := cdsItensNOME.AsString;
        Prepare;
        ExecQuery;
      end;
      if qryComand.RecordCount > 0 then
      begin
        Application.MessageBox
          ('Já existe um produto com esse nome ou código de barras cadastrado!',
          'Atenção', MB_OK + MB_ICONINFORMATION);
        Abort;
      end
      else
        grava := True;

    end;

    if grava = True then
    begin

      if (cdsItens.State in [dsInsert, dsEdit]) then
      begin
        cdsItens.Post;
        edtEstoqueItem.ReadOnly := True;
        edtEstoqueGerenItem.ReadOnly := True;
        edtEstoqueItem2.ReadOnly := True;
       // edtEstoqueGerenItem2.ReadOnly := True;
        ControlaBtnsItens;
      end;
      fdsProduto.Post;

      // with qryComand do
      // begin
      // Close;
      // SQL.Clear;
      // SQL.Add('SELECT COMISSAO FROM GRUPO WHERE ID = ' + fdsProdutoIDGRUPO.AsString);
      // Prepare;
      // ExecQuery;
      // end;

      // comissao := qryComand.FieldByName('COMISSAO').AsFloat;

      // comissao := fdsGrupoCOMISSAO.AsFloat;

      cdsItens.First;

      while not(cdsItens.Eof) do
      begin
        cdsItens.Edit;
        cdsItensCOMISSAO_DN.AsFloat := fdsGrupoCOMISSAO_DN.AsFloat;
        cdsItensCOMISSAO_CH.AsFloat := fdsGrupoCOMISSAO_CH.AsFloat;
        cdsItensCOMISSAO_CT.AsFloat := fdsGrupoCOMISSAO_CT.AsFloat;
        cdsItens.Post;
        cdsItens.Next;
      end;

      // if cdsItens.ApplyUpdates(0) <> 0 then
      // ShowMessage(IntToStr(cdsItens.ApplyUpdates(0)));
      cdsItens.ApplyUpdates(-1);
      // cdsMateriaPrima.Post;
      // if (cdsMateriaPrima.ChangeCount > 0) then
      // cdsMateriaPrima.ApplyUpdates(0);

      DM.Conexao.CommitRetaining;

      cdsItens.First;

      // while not(cdsItens.Eof) do
      // begin
      if cdsItensISNOVO.AsString = 'S' then
      begin // Método para alterar o saldo do item novo cadastrado manualmente no movimento, o mesmo do envento
        fdsFilial.First;
        while not(fdsFilial.Eof) do
        begin
          with qryComand do
          begin
            Close;
            SQL.Clear;
            if fdsFilialID.AsString = DM.fdsConfigIDFILIAL.AsString then
            begin
              SQL.Add('execute procedure gera_mov_item(' + cdsItensID.AsString +
                ', ' + fdsFilialID.AsString + ', CURRENT_DATE, ' +
                QuotedStr('CADASTRO') + ', ' + QuotedStr('0') + ', ' +
                QuotedStr('E') + ',' + ':ESTOQUE'+ ', ' +
                fdsFilialID.AsString + ')');
              qryComand.ParamByName('ESTOQUE').AsFloat:= cdsItensESTOQUE.AsFloat;
            end
            else
              SQL.Add('execute procedure gera_mov_item(' + cdsItensID.AsString +
                ', ' + fdsFilialID.AsString + ', CURRENT_DATE, ' +
                QuotedStr('CADASTRO') + ', ' + QuotedStr('0') + ', ' +
                QuotedStr('E') + ',' + '0, ' + fdsFilialID.AsString + ')');
            Prepare;
            ExecQuery;
          end;

          if fdsFilialID.AsString = DM.fdsConfigIDFILIAL.AsString then
          begin
            if cdsItensESTOQUE_GEREN.AsFloat > 0 then
            begin
              with qryComand do
              begin
                Close;
                SQL.Clear;
                SQL.Add('execute procedure gera_mov_item_gerencial(' +
                  cdsItensID.AsString + ', ' + fdsFilialID.AsString +
                  ', CURRENT_DATE, ' + QuotedStr('CADASTRO') + ', ' +
                  QuotedStr('0') + ', ' + QuotedStr('E') + ',' +
                  cdsItensESTOQUE.AsString + ', ' + fdsFilialID.AsString + ')');
                Prepare;
                ExecQuery;
              end;
            end;
          end;

          with qryComand do
          begin
            Close;
            SQL.Clear;
            SQL.Add('EXECUTE PROCEDURE INSERE_SALDO_INICIAL(' +
              cdsItensID.AsString + ', ' + fdsFilialID.AsString + ', 0, 0)');
            Prepare;
            ExecQuery;
          end;

          DM.Conexao.CommitRetaining;
          fdsFilial.Next;

        end;
        DM.Conexao.CommitRetaining;

      end;

      with fdsItens_Estoque do
      begin
        Close;
        ParamByName('IDITEM').AsInteger := cdsItensID.AsInteger;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        Prepare;
        Open;

        if not(fdsItens_Estoque.RecordCount = 0) then
        begin
          fdsItens_Estoque.Edit;
          fdsItens_EstoqueSALDO.AsFloat := cdsItensESTOQUE.AsFloat;
          fdsItens_EstoqueSALDO_GERENCIAL.AsFloat :=
            cdsItensESTOQUE_GEREN.AsFloat;
          fdsItens_EstoqueSALDO_MINIMO.AsFloat := cdsItensESTOQUE_MIN.AsFloat;
          fdsItens_EstoquePREC_VENDA.AsFloat := cdsItensPREC_VENDA.AsFloat;
          fdsItens_EstoquePREC_TAB1.AsFloat := cdsItensPREC_TAB1.AsFloat;
          fdsItens_EstoquePREC_TAB2.AsFloat := cdsItensPREC_TAB2.AsFloat;
          fdsItens_EstoquePREC_TAB3.AsFloat := cdsItensPREC_TAB3.AsFloat;
          fdsItens_EstoquePREC_TAB4.AsFloat := cdsItensPREC_TAB4.AsFloat;
          fdsItens_EstoquePREC_TAB5.AsFloat := cdsItensPREC_TAB5.AsFloat;
          fdsItens_EstoquePREC_TAB6.AsFloat := cdsItensPREC_TAB6.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO_TAB2.AsFloat:= cdsItensMARGEM_LUCRO_TAB2.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO_TAB3.AsFloat:= cdsItensMARGEM_LUCRO_TAB3.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO_TAB4.AsFloat:= cdsItensMARGEM_LUCRO_TAB4.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO_TAB5.AsFloat:= cdsItensMARGEM_LUCRO_TAB5.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO_TAB6.AsFloat:= cdsItensMARGEM_LUCRO_TAB6.AsFloat;
          fdsItens_EstoqueMARGEM_LUCRO.AsFloat := cdsItensMARGEM_LUCRO.AsFloat;
          fdsItens_Estoque.Post;
          DM.Conexao.CommitRetaining;
        end;
      end;

      if DM.fdsConfigFILIAL_PREC_VENDA_IGUAL.AsString = 'S' then
      begin
        with qryComand do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE PRODUTO_ITEM_ESTOQUE SET PREC_VENDA = :PREC_VENDA, PREC_TAB1 = :PREC_TAB1, ');
          SQL.Add('MARGEM_LUCRO = :MARGEM_LUCRO, ENVIADO_WEB = ' +
            QuotedStr('N') + ' WHERE IDITEM = :IDITEM');
          ParamByName('IDITEM').AsInteger := cdsItensID.AsInteger;
          ParamByName('PREC_VENDA').AsFloat := cdsItensPREC_VENDA.AsFloat;
          ParamByName('PREC_TAB1').AsFloat := cdsItensPREC_TAB1.AsFloat;
          ParamByName('MARGEM_LUCRO').AsFloat := cdsItensMARGEM_LUCRO.AsFloat;
          Prepare;
          ExecQuery;
          DM.Conexao.CommitRetaining;
        end;
      end;


      // cdsItens.Next;
      // end;

      GravaCancela;
    end;

  end;
end;

procedure TfrmCadProdutos.btnItemIncClick(Sender: TObject);
begin

  // if not(fdsProduto.State in [dsInsert]) then
  // edtEstoqueItem.Enabled := False
  // else
  // edtEstoqueItem.Enabled := True;

  ControlaBtnsItens;
  IncluirItem;
  edtItemCodFab.SetFocus;
end;

procedure TfrmCadProdutos.btnItemIncluirClick(Sender: TObject);
begin
  ControlaBtnsItens;
  fdsItens.Append;
  edtNomeItem.SetFocus;
end;

procedure TfrmCadProdutos.btnIncluirClick(Sender: TObject);
var
  uVerificaPermicao: TVerificaPermicao;
begin
  if (uVerificaPermicao.Verifica('CAD_PRODUTOS_INSERT') = True) then
  begin
    fdsProduto.Open;
    fdsProduto.Append;
    fdsProdutoDT_INC.AsDateTime := Now;
    fdsProdutoSTATUS.AsString := 'A';
    fdsProdutoTIPO.AsString := 'RV';
    fdsProdutoIDGRUPO.AsInteger := 0;
    fdsProdutoCEST.AsString := DM.fdsConfigCEST_PADRAO.AsString;
    fdsProdutoCSOSN.AsString := DM.fdsConfigCSOSN_PADRAO.AsString;
    edicao := False;
    edtFornecedor.Clear;
    cdsItens.EmptyDataSet;

    if cdsMateriaPrima.Active then
      cdsMateriaPrima.EmptyDataSet;

    IncluirItem;

    pgcItens.Pages[1].TabVisible := False;
    EditaInsere;
  end
  else
  TfrmMenssagens.Mensagem('Desculpe, usuário sem permissão para Incluir produtos.','Sem Permissão','I',[mbOk]);
end;

procedure TfrmCadProdutos.btnInfoAdicionalClick(Sender: TObject);
begin
  Try
    frmInfoAdicionalProduto := TfrmInfoAdicionalProduto.Create(nil);
    frmInfoAdicionalProduto.mmoInfo.Text := fdsProdutoINFO_ADICIONAL.AsString;
    frmInfoAdicionalProduto.ShowModal;
  Finally
    if frmInfoAdicionalProduto.ModalResult = mrOk then
      fdsProdutoINFO_ADICIONAL.AsString := frmInfoAdicionalProduto.mmoInfo.Text;

    frmInfoAdicionalProduto.Free;
    btnItemGravar.SetFocus;
  End;
end;

procedure TfrmCadProdutos.btnItemAlterarClick(Sender: TObject);
begin
  ControlaBtnsItens;
  cdsItens.Edit;
  cdsItensENVIADO_WEB.AsString := 'N';
  pgcControl.Pages[0].TabVisible := False;

  if cdsItensISNOVO.AsString = 'S' then
  begin
    edtEstoqueItem.ReadOnly := False;
    edtEstoqueGerenItem.ReadOnly := False;
    edtEstoqueItem2.ReadOnly := False;
    //edtEstoqueGerenItem2.ReadOnly := False;
  end;

  edtItemCodFab.SetFocus;
end;

procedure TfrmCadProdutos.btnItemCancelarClick(Sender: TObject);
begin
  cdsItens.Cancel;
  edtEstoqueItem.ReadOnly := True;
  edtEstoqueGerenItem.ReadOnly := True;
  edtEstoqueItem2.ReadOnly := True;
  //edtEstoqueGerenItem2.ReadOnly := True;
  ControlaBtnsItens;
  pgcControl.Pages[0].TabVisible := True;
  // pgcFormulario.Pages[0].TabVisible := True;
end;

procedure TfrmCadProdutos.btnItemExcluirClick(Sender: TObject);
begin
  if cdsItens.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir o item selecionado?'), 'Atenção',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin

          with qryComand do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT FIRST 1 IDPROD_ITEM FROM PEDIDO_ITEM WHERE IDPROD_ITEM = '
              + cdsItensID.AsString);
            Prepare;
            ExecQuery;

            if qryComand.RecordCount > 0 then
            begin
              Application.MessageBox
                ('Desculpe, mas você não pode apagar um item que já foi vendido.',
                'Operação não permitida', MB_OK + MB_ICONWARNING);
              Abort;
            end
            else
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT FIRST 1 IDPROD_ITEM FROM VENDA_ITEM WHERE IDPROD_ITEM = '
                + cdsItensID.AsString);
              Prepare;
              ExecQuery;

              if qryComand.RecordCount > 0 then
              begin
                Application.MessageBox
                  ('Desculpe, mas você não pode apagar um item que já foi vendido.',
                  'Operação não permitida', MB_OK + MB_ICONWARNING);
                Abort;
              end
            end;

            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM PRODUTO_ITEM_ESTOQUE WHERE IDITEM = ' +
              cdsItensID.AsString);
            Prepare;
            ExecQuery;
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM MOVIMENTACAO_ITEM WHERE IDITEM = ' +
              cdsItensID.AsString);
            Prepare;
            ExecQuery;

          end;

          cdsItens.Delete;
        end;
    end;
  end;
end;

procedure TfrmCadProdutos.btnItemGravarClick(Sender: TObject);
begin
  cdsItens.Post;
  edtEstoqueItem.ReadOnly := True;
  edtEstoqueGerenItem.ReadOnly := True;
  edtEstoqueItem2.ReadOnly := True;
 // edtEstoqueGerenItem2.ReadOnly := True;
  ControlaBtnsItens;
  btnItemInc.SetFocus;
  // pgcControl.Pages[0].TabVisible := True;
  // pgcFormulario.Pages[0].TabVisible := True;
end;

procedure TfrmCadProdutos.btnItensGerarClick(Sender: TObject);
begin
  Try
    frmGeraProdItens := TfrmGeraProdItens.Create(nil);
    frmGeraProdItens.idGrupo := fdsProdutoIDGRUPO.AsInteger;
    frmGeraProdItens.produtoNome := fdsProdutoNOME.AsString;
    frmGeraProdItens.produtoRef := fdsProdutoREFERENCIA.AsString;
    frmGeraProdItens.ShowModal;
  Finally
    if frmGeraProdItens.ModalResult = mrOk then
    begin
      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select GEN_ID(GEN_ID_PRODUTO_ITEM,1) FROM RDB$DATABASE');
        Prepare;
        ExecQuery;
        tempIdItem := FieldByName('GEN_ID').AsInteger;
      end;

      while not(frmGeraProdItens.cdsItens.Eof) do
      begin
        if frmGeraProdItens.cdsItensSELECT.AsString = 'S' then
        begin
          if not(MyLocateItem(frmGeraProdItens.cdsItensIDTAMANHO.AsString,
            frmGeraProdItens.cdsItensIDCOR.AsString)) then
          begin
            cdsItens.Append;
            cdsItensID.AsInteger := tempIdItem;
            cdsItensDT_INC.AsDateTime := Now;
            cdsItensSTATUS.AsString := 'A';
            cdsItensNOME.AsString := frmGeraProdItens.cdsItensNOME.AsString;
            cdsItensREFERENCIA.AsString :=
              frmGeraProdItens.cdsItensREFERENCIA.AsString;
            cdsItensCOD_FABRICA.AsString := fdsProdutoID.AsString +
              IntToStr(cdsItens.RecordCount + 1);
            cdsItensIDPRODUTO.AsInteger := fdsProdutoID.AsInteger;
            cdsItensIDTAMANHO.AsInteger :=
              frmGeraProdItens.cdsItensIDTAMANHO.AsInteger;
            cdsItensIDCOR.AsInteger := frmGeraProdItens.cdsItensIDCOR.AsInteger;
            cdsItensUNIDADE.AsString := 'UN';
            cdsItensESTOQUE_GEREN.AsInteger := 0;
            cdsItensESTOQUE.AsInteger := 0;
            cdsItensESTOQUE_MIN.AsInteger := 0;
            cdsItensCOR.AsString := frmGeraProdItens.cdsItensCOR.AsString;
            cdsItensTAMANHO.AsString :=
              frmGeraProdItens.cdsItensTAMANHO.AsString;
            cdsItensISNOVO.AsString := 'S';

            if usarTabelaPreco then
            begin
              cdsItensDESC_MAX1.AsFloat :=
                fdsTabelaPrecoDESC_MAX_PORCENT1.AsFloat;
              cdsItensDESC_MAX2.AsFloat :=
                fdsTabelaPrecoDESC_MAX_PORCENT2.AsFloat;
              // cdsItensDESC_MAX3.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT3.AsFloat;
              // cdsItensDESC_MAX4.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT4.AsFloat;
              // cdsItensDESC_MAX5.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT5.AsFloat;
              // cdsItensDESC_MAX6.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT6.AsFloat;
            end;

            cdsItens.Post;
            Inc(tempIdItem);
          end;
        end;
        frmGeraProdItens.cdsItens.Next;
      end;

      cdsItens.Last;

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SET GENERATOR GEN_ID_PRODUTO_ITEM TO ' +
          IntToStr(cdsItensID.AsInteger));
        Prepare;
        ExecQuery;
      end;

      cdsItens.First;
    end;
  End;
  // pgcControl.Enabled := False;
  // GeraItens;
  // gbxGeraItens.Visible := False;
  // pgcControl.Enabled := True;
end;

procedure TfrmCadProdutos.btnLastClick(Sender: TObject);
begin
  fdsItensTabela.Last;
  VerificaTipoProduto;
end;

procedure TfrmCadProdutos.btnMateriaPrimaAltClick(Sender: TObject);
begin
  cdsMateriaPrima.Edit;
  ControlaBtnsMatPrima;
  gdrMateriaPrima.Options := gdrMateriaPrima.Options + [dgEditing];
end;

procedure TfrmCadProdutos.btnMateriaPrimaExcClick(Sender: TObject);
begin
  if cdsMateriaPrima.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir o registro atual?'), 'Atenção',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          cdsMateriaPrima.Delete;
        end;
    end;
  end;
end;

procedure TfrmCadProdutos.btnMateriaPrimaIncClick(Sender: TObject);
var
  idItemTemp, idMateriaTemp: Integer;
begin
  Try
    frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
    frmPesqProdutoItens.tipoProduto := 'MP';
    frmPesqProdutoItens.ShowModal;
  Finally
    if frmPesqProdutoItens.ModalResult = mrOk then
    begin

      idItemTemp := frmPesqProdutoItens.fdsProdutoItensID.AsInteger;

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PI.ID, PI.NOME NOME_ITEM, PI.REFERENCIA REF_ITEM, T.NOME TAMANHO, C.NOME COR, PIE.SALDO ESTOQUE, PIE.SALDO_MINIMO ESTOQUE_MIN ');
        SQL.Add('FROM PRODUTO_ITEM PI, PRODUTO P, TAMANHO T, COR C, PRODUTO_ITEM_ESTOQUE PIE ');
        SQL.Add('WHERE PI.ID = :IDITEM AND T.ID = PI.IDTAMANHO AND C.ID = PI.IDCOR ');
        SQL.Add('AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL ');
        ParamByName('IDITEM').AsInteger := idItemTemp;
        ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        Prepare;
        ExecQuery;
      end;

      cdsMateriaPrima.Append;
      cdsMateriaPrimaIDITEM_FABRICACAO.AsInteger := cdsItensID.AsInteger;
      cdsMateriaPrimaIDITEM_MATERIA_PRIMA.AsInteger := idItemTemp;
      cdsMateriaPrimaQTN_MATERIA_PRIMA.AsFloat := 0;
      cdsMateriaPrimaNOME.AsString :=
        qryComand.FieldByName('NOME_ITEM').AsString;
      cdsMateriaPrimaREFERENCIA.AsString :=
        qryComand.FieldByName('REF_ITEM').AsString;
      cdsMateriaPrimaTAMANHO.AsString :=
        qryComand.FieldByName('TAMANHO').AsString;
      cdsMateriaPrimaCOR.AsString := qryComand.FieldByName('COR').AsString;
      cdsMateriaPrimaESTOQUE.AsFloat :=
        qryComand.FieldByName('ESTOQUE').AsFloat;
      cdsMateriaPrimaESTOQUE_MIN.AsFloat :=
        qryComand.FieldByName('ESTOQUE_MIN').AsFloat;

      with qryComand do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GEN_ID(gen_id_prod_item_producao,1) FROM RDB$DATABASE');
        Prepare;
        ExecQuery;
        idMateriaTemp := FieldByName('GEN_ID').AsInteger;
      end;

      cdsMateriaPrimaID.AsInteger := idMateriaTemp;

      cdsMateriaPrima.Post;
      cdsMateriaPrima.ApplyUpdates(0);
    end;
    frmPesqProdutoItens.Free;
  End;
end;

procedure TfrmCadProdutos.btnMateriaPrimaSalClick(Sender: TObject);
begin
  cdsMateriaPrima.Post;
  cdsMateriaPrima.ApplyUpdates(0);
  // gdrMateriaPrima.Options := [];
end;

procedure TfrmCadProdutos.btnNextClick(Sender: TObject);
begin
  fdsItensTabela.Next;
end;

procedure TfrmCadProdutos.btnPesqCorClick(Sender: TObject);
begin
  Try
    frmPesqCor := TfrmPesqCor.Create(nil);
    frmPesqCor.ShowModal;
  Finally
    if frmPesqCor.ModalResult = mrOk then
    begin
      cdsItensCOR.AsString := frmPesqCor.fdsCorNOME.AsString;
      cdsItensIDCOR.AsInteger := frmPesqCor.fdsCorID.AsInteger;

      if cdsItens.State in [dsInsert] then
      begin
        if not(cdsItensIDCOR.AsInteger = 0) then
          cdsItensNOME.AsString := cdsItensNOME.AsString + ' ' +
            cdsItensCOR.AsString;
      end;
    end;
    frmPesqCor.Free;
    RzBitBtn2.SetFocus;
  End;
end;

procedure TfrmCadProdutos.btnPesqEANClick(Sender: TObject);
var
  idItem, idProduto: string;
begin
  if not(Trim(edtPesqEAN.Text) = EmptyStr) then
  begin
    chkGrupo.Checked := False;
    pnlGrupo.Enabled := False;

    if cbxGrupo.ItemIndex <> 0 then
    begin
      cbxGrupo.ItemIndex := 0;

      if rgbStatus.ItemIndex <> 0 then
        rgbStatus.ItemIndex := 0
      else
        btnTodos.Click;
    end;

    rgbStatus.ItemIndex := 0;

    with qryComand do
    begin
      Close;
      SQL.Clear;
      {SQL.Add('SELECT ID, IDPRODUTO FROM PRODUTO_ITEM WHERE ((COD_FABRICA = ' +
        QuotedStr(edtPesqEAN.Text) + ') OR (REFERENCIA = ' +
        //QuotedStr(edtPesqEAN.Text) + ')OR (COD_FABRICANTE = ' +
        QuotedStr(edtPesqEAN.Text) + '))'); }
      // vitor olha o cod fabrica deveria ser EAN
      SQL.Add('SELECT ID, IDPRODUTO FROM PRODUTO_ITEM WHERE');
      if rgbPesqCod.ItemIndex = 0 then
      SQL.Add('COD_FABRICA = ' + QuotedStr(edtPesqEAN.Text));

      if rgbPesqCod.ItemIndex = 1 then
      SQL.Add('REFERENCIA = ' + QuotedStr(edtPesqEAN.Text));

      if rgbPesqCod.ItemIndex = 2 then
      SQL.Add('COD_FABRICANTE = ' + QuotedStr(edtPesqEAN.Text));
      Prepare;
      ExecQuery;
      idItem := qryComand.FieldByName('ID').AsString;
      idProduto := qryComand.FieldByName('IDPRODUTO').AsString;
    end;

    if qryComand.RecordCount > 0 then
    begin
      fdsItensTabela.Locate('ID', idItem, []);
     //fdsItensTabela.Open;
      tbsForm.Show;
      // MyLocateEAN(edtPesqEAN.Text);
    end
    else
      Application.MessageBox('Nenhum item encontrado com esse EAN.',
        'Item Não encontrado!', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfrmCadProdutos.btnPesqFornecedorClick(Sender: TObject);
begin
  Try
    frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
    frmPesqFornecedor.ShowModal;
  Finally
    if frmPesqFornecedor.ModalResult = mrOk then
    begin
      fdsProdutoIDFORNECEDOR.AsInteger :=
        frmPesqFornecedor.fdsFornecedorID.AsInteger;
      edtFornecedor.Text := frmPesqFornecedor.fdsFornecedorNOME.AsString;
    end;
    frmPesqFornecedor.Free;
    SelectNext(ActiveControl, True, True);
  End;
end;

procedure TfrmCadProdutos.btnPesqNCMsClick(Sender: TObject);
begin
 try
    frmPesqIBPT:=TfrmPesqIBPT.Create(nil);
    frmPesqIBPT.ShowModal;
 finally
    if frmPesqIBPT.ModalResult = mrOK then
    begin
      fdsProdutoNCM.AsString                 :=  frmPesqIBPT.fdsIBPTNCM.AsString;
      fdsProdutoIBPT_NACIONA_FEDERAL.AsFloat :=  frmPesqIBPT.fdsIBPTNACIONAL_FEDERAL.AsFloat;
      fdsProdutoIBPT_ESTADUAL.AsFloat        :=  frmPesqIBPT.fdsIBPTNACIONAL_IMPORTADOS.AsFloat;
      fdsProdutoIBPT_MUNICIPAL.AsFloat       :=  frmPesqIBPT.fdsIBPTMUNICIPAL.AsFloat;
    end;
    frmPesqIBPT.Free;
 end;
end;

procedure TfrmCadProdutos.btnPesqTamanhoClick(Sender: TObject);
begin
  Try
    frmPesqTamanho := TfrmPesqTamanho.Create(nil);
    frmPesqTamanho.ShowModal;
  Finally
    if frmPesqTamanho.ModalResult = mrOk then
    begin
      cdsItensTAMANHO.AsString    := frmPesqTamanho.fdsTamanhoNOME.AsString;
      cdsItensIDTAMANHO.AsInteger := frmPesqTamanho.fdsTamanhoID.AsInteger;

      if cdsItens.State in [dsInsert] then
      begin
        if not(cdsItensIDTAMANHO.AsInteger = 0) then
          cdsItensNOME.AsString := cdsItensNOME.AsString + ' ' +
            cdsItensTAMANHO.AsString;
      end;
    end;
    frmPesqTamanho.Free;
    RzDBEdit18.SetFocus;
  End;
end;

procedure TfrmCadProdutos.btnPriorClick(Sender: TObject);
begin
  fdsItensTabela.First;
  VerificaTipoProduto;
end;

procedure TfrmCadProdutos.btnTodosClick(Sender: TObject);
begin
  chkGrupo.Checked := False;
  pnlGrupo.Enabled := False;
  cbxGrupo.ItemIndex := 0;

  with fdsItensTabela do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Open;
    First;
    lblTotal.Caption := IntToStr(fdsItensTabela.RecordCount);
  end;

  pgcControl.ActivePageIndex := 0;

end;

procedure TfrmCadProdutos.CalculaMargemLucro;
var
  utils: TUtils;
begin
  if utils.ValidaInteiroFloat(FloatToStr(cdsItensPREC_VENDA.AsFloat), 'F') > 0
  then
  begin
    cdsItensMARGEM_LUCRO.AsFloat :=
      (((cdsItensPREC_VENDA.AsFloat - cdsItensPREC_CUSTO.AsFloat) * 100) /
      cdsItensPREC_CUSTO.AsFloat);
  end;
end;

procedure TfrmCadProdutos.CalcularPrecVenda;
var
  utils: TUtils;
begin
  // if utils.ValidaInteiroFloat(FloatToStr(cdsItensMARGEM_LUCRO.AsFloat), 'F') > 0 then
  // begin
  cdsItensPREC_VENDA.AsFloat :=
    RoundTo((cdsItensPREC_CUSTO.AsFloat + (cdsItensPREC_CUSTO.AsFloat *
    cdsItensMARGEM_LUCRO.AsFloat / 100)), -2);
  cdsItensPREC_TAB1.AsFloat := cdsItensPREC_VENDA.AsFloat;
  // end;
end;

procedure TfrmCadProdutos.cbxGrupoChange(Sender: TObject);
begin
  edtPesqEAN.Clear;

  fdsItensTabela.Close;
  fdsItensTabela.Conditions.Clear;

  if cbxGrupo.ItemIndex > 0 then
  begin
    fdsItensTabela.Conditions.AddCondition('IDGRUPO',
      'PI.IDPRODUTO IN (SELECT P.ID FROM PRODUTO P WHERE P.IDGRUPO = ' +
      cbxGrupo.Value + ')', True);
  end;

  if rgbStatus.ItemIndex = 1 then
    fdsItensTabela.Conditions.AddCondition('STATUS',
      'PI.STATUS = ' + QuotedStr('A'), True);

  if rgbStatus.ItemIndex = 2 then
    fdsItensTabela.Conditions.AddCondition('STATUS',
      'PI.STATUS = ' + QuotedStr('I'), True);

  fdsItensTabela.Conditions.Apply;
  fdsItensTabela.Open;
  fdsItensTabela.First;
  lblTotal.Caption := IntToStr(fdsItensTabela.RecordCount);
  pgcControl.ActivePageIndex := 0;
end;

procedure TfrmCadProdutos.cbxTipoChange(Sender: TObject);
begin
  // if cbxTipo.ItemIndex = 0 then
  // begin
  // pnlItensGrade.Visible := True;
  // pnlItensUnico.Visible := False;
  // end
  // else
  // begin
  // pnlItensGrade.Visible := False;
  // pnlItensUnico.Visible := True;
  // end;
end;

procedure TfrmCadProdutos.cbxTipoExit(Sender: TObject);
begin
  VerificaTipoProduto;
end;

procedure TfrmCadProdutos.cbxUnidadeExit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if cdsItensUNIDADE.AsString = 'KG' then
      cdsItensPESO.AsFloat := 1;
  end;
end;

procedure TfrmCadProdutos.cdsItensPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage(E.Message);
end;

procedure TfrmCadProdutos.cdsItensReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TfrmCadProdutos.cdsMateriaPrimaBeforePost(DataSet: TDataSet);
begin
  if cdsMateriaPrima.State in [dsEdit] then
    ControlaBtnsMatPrima;
end;

procedure TfrmCadProdutos.cdsMateriaPrimaReconcileError
  (DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TfrmCadProdutos.chkGrupoClick(Sender: TObject);
begin
  pnlGrupo.Enabled := chkGrupo.Checked;

  if not(chkGrupo.Checked) then
  begin
    cbxGrupo.ItemIndex := 0;
    btnTodos.Click;
  end;
end;

procedure TfrmCadProdutos.EditaInsere;
var
  i: Smallint;
begin
  idProduto := fdsProdutoID.AsInteger;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      if TRzPageControl(Components[i]).Name = 'pgcControl' then
      begin
        TRzPageControl(Components[i]).ActivePageIndex := 1;
        TRzPageControl(Components[i]).Pages[0].TabVisible := False;
      end;
    end;

    if (Components[i] is TRzBitBtn) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := False
      else if Components[i].Tag <> 22 then
        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;

  if (fdsProduto.State = dsInsert) then
    lcbGrupo.SetFocus
  else
    edtNome.SetFocus;

  rgbStatus.Enabled := False;
  pnlItensControle.Enabled := btnGravar.Enabled;
  btnItemCancelar.Enabled := False;
  btnItemGravar.Enabled := False;
  btnInfoAdicional.Enabled := False;
  btnPesqCor.Enabled := False;
  btnPesqTamanho.Enabled := False;
  alterandoMatPrima := False;
  pnlMateriaPrimaControle.Enabled := True;
  btnMateriaPrimaSal.Enabled := False
end;

procedure TfrmCadProdutos.fdsGrupoAfterOpen(DataSet: TDataSet);
begin
  cbxGrupo.AddItemValue('TODOS', '0');
  fdsGrupo.First;
  while not(fdsGrupo.Eof) do
  begin
    cbxGrupo.AddItemValue(fdsGrupoNOME.AsString, fdsGrupoID.AsString);
    fdsGrupo.Next;
  end;
  cbxGrupo.ItemIndex := 0;
  fdsGrupo.First;
end;

procedure TfrmCadProdutos.fdsItensTabelaAfterScroll(DataSet: TDataSet);
begin
  idProduto := fdsItensTabelaIDPRODUTO.AsInteger;
  if pgcControl.ActivePageIndex = 1 then
  begin
    RetornaProduto(idProduto);
    // RetornaItens(IdProduto);
    RetornaItem(fdsItensTabelaID.AsInteger);
    VerificaTipoProduto;
  end;
end;

procedure TfrmCadProdutos.fdsItensTabelaBeforeOpen(DataSet: TDataSet);
begin
  fdsItensTabela.ParamByName('IDFILIAL').AsInteger :=
    DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmCadProdutos.fdsItensTabelaCalcFields(DataSet: TDataSet);
begin
  if fdsItensTabelaSTATUS.AsString = 'A' then
    fdsItensTabelaST.AsString := 'ATIVO';

  if fdsItensTabelaSTATUS.AsString = 'I' then
    fdsItensTabelaST.AsString := 'INATIVO';
end;

procedure TfrmCadProdutos.fdsProdutoAfterScroll(DataSet: TDataSet);
begin
  // if pgcControl.ActivePageIndex = 1 then
  // begin
  // RetornaItens(IdProduto);
  // end;
end;

procedure TfrmCadProdutos.Fecha;
begin
  if fdsProduto.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele a Inclusão/Alteração do produto antes de sair.',
      'Atenção', MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    FreeAndNil(frmCadProdutos);
  end;
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fecha;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
  ordem := 'ASC';
  pgcControl.Pages[2].TabVisible := False;
  tbsTabelaItens.Show;
  cdsItens.CreateDataSet;
  cdsMateriaPrima.CreateDataSet;
  fdsFilial.Open;
  // fdsProduto.Open;
  fdsItensTabela.Open;
  // fdsProduto.Last;
  // fdsProduto.First;
  lblTotal.Caption := IntToStr(fdsItensTabela.RecordCount);
  fdsGrupo.Open;
  fdsGrupo.Last;
  fdsGrupo.First;
  alterandoItens := False;
  alterandoMatPrima := False;
  edicao := False;
  VerificaConfTabelaPreco;
  VerificaTipoProduto;

  if frmPrincipal.autopecas = 'S' then
  begin
    lblCor.Caption := 'Veículo';
    lblTamanho.Caption := 'Aplicação';
  end;
end;

procedure TfrmCadProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Fecha;
  end;
end;

procedure TfrmCadProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCadProdutos.GeraItens;
var
  t: Smallint;
  c: Smallint;
  totTamanho: Smallint;
  totCor: Smallint;
  nome: string;
begin
  gbxGeraItens.Visible := True;
  pgbGeraItens.Percent := 0;
  pgbGeraItens.PartsComplete := 0;
  pgbGeraItens.TotalParts := 0;
  Application.ProcessMessages;

  with fdsTamanho_Grupo do
  begin
    Close;
    ParamByName('IDGRUPO').AsInteger := fdsProdutoIDGRUPO.AsInteger;
    Prepare;
    Open;
    Last;
    First;
    totTamanho := RecordCount;
  end;

  if totTamanho > 0 then
  begin
    with fdsCor_Grupo do
    begin
      Close;
      ParamByName('IDGRUPO').AsInteger := fdsProdutoIDGRUPO.AsInteger;
      Prepare;
      Open;
      Last;
      First;
      totCor := RecordCount;
    end;

    if totCor > 0 then
    begin
      pgbGeraItens.TotalParts := totTamanho * totCor;
      Application.ProcessMessages;

      // RetornaItens;

      cdsItens.Last;

      fdsTamanho_Grupo.First;
      while not(fdsTamanho_Grupo.Eof) do
      begin
        fdsCor_Grupo.First;
        while not(fdsCor_Grupo.Eof) do
        begin
          // if ClientDataSet1.Locate('DATA',StrToDate(Edit1.Text),[]) then
          // if not(cdsItens.Locate('IDPRODUTO; IDTAMANHO; IDCOR', VarArrayOf([fdsProdutoID.AsString, fdsTamanho_GrupoID.AsString, fdsCor_GrupoID.AsString]), [])) then
          if not(MyLocateItem(fdsTamanho_GrupoID.AsString,
            fdsCor_GrupoID.AsString)) then
          begin

            with qryComand do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select GEN_ID(GEN_ID_PRODUTO_ITEM,1) FROM RDB$DATABASE');
              Prepare;
              ExecQuery;
              tempIdItem := FieldByName('GEN_ID').AsInteger;
            end;

            cdsItens.Append;
            cdsItensID.AsInteger := tempIdItem;
            cdsItensDT_INC.AsDateTime := Now;
            cdsItensSTATUS.AsString := 'A';
            nome := fdsProdutoNOME.AsString;

            if not(fdsTamanho_GrupoID.AsInteger = 0) then
              nome := nome + ' ' + fdsTamanho_GrupoNOME.AsString;

            if not(fdsCor_GrupoID.AsInteger = 0) then
              nome := nome + ' ' + fdsCor_GrupoNOME.AsString;

            cdsItensNOME.AsString := nome;
            cdsItensREFERENCIA.AsString := fdsProdutoREFERENCIA.AsString +
              fdsTamanho_GrupoREFERENCIA.AsString +
              fdsCor_GrupoREFERENCIA.AsString;
            cdsItensCOD_FABRICA.AsString := fdsProdutoID.AsString +
              IntToStr(cdsItens.RecordCount + 1);
            cdsItensIDPRODUTO.AsInteger := fdsProdutoID.AsInteger;
            cdsItensIDTAMANHO.AsInteger := fdsTamanho_GrupoID.AsInteger;
            cdsItensIDCOR.AsInteger := fdsCor_GrupoID.AsInteger;
            cdsItensESTOQUE.AsInteger := 0;
            cdsItensESTOQUE_MIN.AsInteger := 0;
            cdsItensCOR.AsString := fdsCor_GrupoNOME.AsString;
            cdsItensTAMANHO.AsString := fdsTamanho_GrupoNOME.AsString;
            cdsItensISNOVO.AsString := 'S';
            cdsItens.Post;
            Inc(tempIdItem);
          end;
          fdsCor_Grupo.Next;

          pgbGeraItens.PartsComplete := pgbGeraItens.PartsComplete + 1;
          Application.ProcessMessages;

        end;
        fdsTamanho_Grupo.Next;
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.GravaCancela;
var
  i: Smallint;
  utils: TUtils;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      if TRzPageControl(Components[i]).Name = 'pgcControl' then
      begin
        TRzPageControl(Components[i]).Pages[0].TabVisible := True;
        TRzPageControl(Components[i]).ActivePageIndex := 0;
      end
      else
      begin
        TRzPageControl(Components[i]).Pages[1].TabVisible := True;
      end;
    end
    else
    begin
      if (Components[i] is TRzBitBtn) then
      begin
        if Components[i].Tag = 1 then
          TRzBitBtn(Components[i]).Enabled := True
        else if Components[i].Tag <> 22 then
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

  // fdsProduto.Close;
  // fdsProduto.OrderClause := 'NOME';
  // fdsProduto.Open;
  // fdsProduto.Locate('ID', IntToStr(IdProduto), []);
  // lblTotal.Caption := intToStr(fdsProduto.RecordCount);
  rgbStatus.Enabled := True;
  fdsItensTabela.Close;
  fdsItensTabela.OrderClause := 'NOME';
  fdsItensTabela.Open;
  fdsItensTabela.Locate('IDPRODUTO', IntToStr(idProduto), []);
  lblTotal.Caption := IntToStr(fdsItensTabela.RecordCount);
  pnlItensControle.Enabled := btnGravar.Enabled;
  pnlMateriaPrimaControle.Enabled := False;
  dspItens.ResolveToDataSet := True;
  dspMateriaPrima.ResolveToDataSet := True;
  pnlMateriaPrimaControle.Enabled := False;
end;

procedure TfrmCadProdutos.IncluirItem;
begin
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(GEN_ID_PRODUTO_ITEM,1) FROM RDB$DATABASE');
    Prepare;
    ExecQuery;
    tempIdItem := FieldByName('GEN_ID').AsInteger;
  end;

  cdsItens.Append;
  cdsItensID.AsInteger := tempIdItem;
  cdsItensDT_INC.AsDateTime := Now;
  cdsItensSTATUS.AsString := 'A';
  cdsItensNOME.AsString := fdsProdutoNOME.AsString;
  cdsItensREFERENCIA.AsString := fdsProdutoREFERENCIA.AsString;
  cdsItensIDPRODUTO.AsInteger := fdsProdutoID.AsInteger;
  cdsItensIDCOR.AsInteger := 0;
  cdsItensIDTAMANHO.AsInteger := 0;
  cdsItensCOR.AsString := 'Geral';
  cdsItensTAMANHO.AsString := 'Geral';
  cdsItensUNIDADE.AsString := 'UN';
  cdsItensESTOQUE.AsInteger := 0;
  cdsItensESTOQUE_GEREN.AsInteger := 0;
  cdsItensESTOQUE_MIN.AsInteger := 0;
  cdsItensISNOVO.AsString := 'S';
  cdsItensIDENTIFICADOR.AsInteger:= tempIdItem;
  // informa que é um item novo, cadastrado manualmente

  if usarTabelaPreco then
  begin
    cdsItensDESC_MAX1.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT1.AsFloat;
    cdsItensDESC_MAX2.AsFloat := fdsTabelaPrecoDESC_MAX_PORCENT2.AsFloat;
  end;

  edtEstoqueItem.ReadOnly := False;
  edtEstoqueGerenItem.ReadOnly := False;
  edtEstoqueItem2.ReadOnly := False;
  //edtEstoqueGerenItem2.ReadOnly := False;
end;

procedure TfrmCadProdutos.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsProduto.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadProdutos.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  coluna: string;
begin
  if (Key = 'p') or (Key = 'P') then
  begin
    coluna := JvDBGrid1.SelectedField.FieldName;
    if coluna = 'NOME' then
    Begin
      Try
        frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
        frmPesqProdutoItens.ShowModal;
      Finally
        if frmPesqProdutoItens.ModalResult = mrOk then
        begin
          // fdsProduto.Locate('ID', frmPesqProdutoItens.fdsProdutoItensIDPRODUTO.AsInteger, []);
          fdsItensTabela.Locate('ID',
            frmPesqProdutoItens.fdsProdutoItensID.AsInteger, []);
          tbsForm.Show;
          // MyLocateEAN(frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString);
        end;
      end;
      // Try
      // frmPesqProdutos := TfrmPesqProdutos.Create(nil);
      // frmPesqProdutos.ShowModal;
      // Finally
      // if frmPesqProdutos.ModalResult = mrOk then
      // begin
      // PesquisaProduto('P.ID = ' + frmPesqProdutos.fdsProdutosID.AsString);
      // lblTotal.Caption := intToStr(fdsProduto.RecordCount);
      // end;
      // frmPesqProdutos.Free;
      // End;
    end
  end;
end;

procedure TfrmCadProdutos.JvDBGrid1TitleClick(Column: TColumn);
begin
  // if not(Column.Index = 1) then
  // begin
  fdsProduto.Close;
  fdsProduto.OrderClause := Column.FieldName + ' ' + ordem;
  fdsProduto.Open;

  if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';
  // end;
end;

procedure TfrmCadProdutos.lblPrec2Click(Sender: TObject);
begin
  ConfiguraTabPrecos;
end;

procedure TfrmCadProdutos.lblPrec2MouseLeave(Sender: TObject);
begin
  lblPrec2.Font.Style := lblPrec2.Font.Style - [fsBold];
end;

procedure TfrmCadProdutos.lblPrec2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblPrec2.Font.Style := lblPrec2.Font.Style + [fsBold];
end;

procedure TfrmCadProdutos.lblPrec3MouseLeave(Sender: TObject);
begin
  lblPrec3.Font.Style := lblPrec3.Font.Style - [fsBold];
end;

procedure TfrmCadProdutos.lblPrec3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblPrec3.Font.Style := lblPrec3.Font.Style + [fsBold];
end;

procedure TfrmCadProdutos.lblPrec4MouseLeave(Sender: TObject);
begin
  lblPrec4.Font.Style := lblPrec4.Font.Style - [fsBold];
end;

procedure TfrmCadProdutos.lblPrec4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblPrec4.Font.Style := lblPrec4.Font.Style + [fsBold];
end;

procedure TfrmCadProdutos.lblPrec5MouseLeave(Sender: TObject);
begin
  lblPrec5.Font.Style := lblPrec5.Font.Style - [fsBold];
end;

procedure TfrmCadProdutos.lblPrec5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblPrec5.Font.Style := lblPrec5.Font.Style + [fsBold];
end;

procedure TfrmCadProdutos.lblPrec6MouseLeave(Sender: TObject);
begin
  lblPrec6.Font.Style := lblPrec6.Font.Style - [fsBold];
end;

procedure TfrmCadProdutos.lblPrec6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lblPrec6.Font.Style := lblPrec6.Font.Style + [fsBold];
end;

procedure TfrmCadProdutos.lcbGrupoExit(Sender: TObject);
begin
  if (fdsProduto.State in [dsInsert, dsEdit]) then
  begin
    if (cdsItensPREC_CUSTO.AsFloat = 0) then
    begin
      cdsItensMARGEM_LUCRO.AsFloat := fdsGrupoMARGEM_LUCRO.AsFloat
    end;

    if ((cdsItensMARGEM_LUCRO.AsFloat >= 0)) and
      (cdsItensPREC_CUSTO.AsFloat > 0) and (cdsItensPREC_VENDA.AsFloat = 0) then
    begin
      cdsItensMARGEM_LUCRO.AsFloat := fdsGrupoMARGEM_LUCRO.AsFloat;
      CalcularPrecVenda;
    end;

    if ((fdsGrupoMARGEM_LUCRO.AsFloat > 0) and
      (cdsItensMARGEM_LUCRO.AsFloat <> fdsGrupoMARGEM_LUCRO.AsFloat)) and
      (cdsItensPREC_CUSTO.AsFloat > 0) and (cdsItensPREC_VENDA.AsFloat > 0) then
    begin
      Case MessageBox(Application.Handle,
        Pchar('Deseja utilizar a margem do grupo selecionado e atualizar o preço de venda?'),
        'Atenção', MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON2) of
        idYes:
          begin
            cdsItensMARGEM_LUCRO.AsFloat := fdsGrupoMARGEM_LUCRO.AsFloat;
            CalcularPrecVenda;
          end;
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.MyLocateEAN(chave: string);
begin
  cdsItens.First;
  while not(cdsItens.Eof) do
  begin
    if cdsItensCOD_FABRICA.AsString = chave then
    begin
      Break;
    end;
    cdsItens.Next;
  end;
end;

function TfrmCadProdutos.MyLocateItem(chave1, chave2: string): Boolean;
begin
  Result := False;
  cdsItens.First;
  while not(cdsItens.Eof) do
  begin
    if cdsItensIDTAMANHO.AsString = chave1 then
    begin
      if cdsItensIDCOR.AsString = chave2 then
      begin
        Result := True;
        Break;
      end;
    end;
    cdsItens.Next;
  end;
end;

procedure TfrmCadProdutos.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsItens.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := clMoneyGreen;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadProdutos.gdrItensTabelaDblClick(Sender: TObject);
begin
  if fdsItensTabela.RecordCount > 0 then
    tbsForm.Show;

end;

procedure TfrmCadProdutos.gdrItensTabelaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsItensTabela.RecNo) then
  begin
    gdrItensTabela.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      gdrItensTabela.Canvas.Brush.Color :=clHighlight;
    gdrItensTabela.Canvas.FillRect(Rect);
    gdrItensTabela.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadProdutos.gdrItensTabelaKeyPress(Sender: TObject;
  var Key: Char);
var
  coluna: string;
  ArqIni: TIniFile;

begin
  if (Key = 'p') or (Key = 'P') then
  begin
    coluna := gdrItensTabela.SelectedField.FieldName;
    if coluna = 'NOME' then
    Begin
      Try
        frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
        if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
        begin
          ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
          try
            frmPesqProdutoItens.edtNome.Text := ArqIni.ReadString('CAMINHOS', 'ULTIMOPRODUTO','');
          finally
            ArqIni.Free;
          end;
          frmPesqProdutoItens.Pesquisar;
        end;
        frmPesqProdutoItens.ShowModal;
      Finally
        if frmPesqProdutoItens.ModalResult = mrOk then
        begin
          if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
          begin
            ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
            try
              ArqIni.WriteString('CAMINHOS', 'ULTIMOPRODUTO', frmPesqProdutoItens.edtNome.Text);
            finally
              ArqIni.Free;
            end;
          end;
          fdsItensTabela.Locate('ID',
            frmPesqProdutoItens.fdsProdutoItensID.AsInteger, []);
          tbsForm.Show;
          MyLocateEAN(frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString);
        end;
      end;
    end;

    if coluna = 'FORNECEDOR' then
    Begin
      Try
        frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
        if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
        begin
          ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
          try
            frmPesqFornecedor.edtNome.Text := ArqIni.ReadString('CAMINHOS', 'ULTIMOFORNECEDOR','');
          finally
            ArqIni.Free;
          end;
          frmPesqFornecedor.Pesquisar;
        end;
        frmPesqFornecedor.ShowModal;
      Finally
        if frmPesqFornecedor.ModalResult = mrOk then
        begin
          if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
          begin
            ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
            try
              ArqIni.WriteString('CAMINHOS', 'ULTIMOFORNECEDOR', frmPesqFornecedor.edtNome.Text);
            finally
              ArqIni.Free;
            end;
          end;
          with fdsItensTabela do
          begin
            Close;
            Conditions.Clear;
            Conditions.AddCondition('FORNECEDOR',
              'F.ID = ' + frmPesqFornecedor.fdsFornecedorID.AsString, True);
            Conditions.Apply;
            Prepare;
            Open;
            First;
          end;
        end;
      end;
    End;

    if coluna = 'COD_FABRICA' then
    Begin
      Try
        frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
        if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
        begin
          ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
          try
            frmPesqProdutoItens.edtNome.Text := ArqIni.ReadString('CAMINHOS', 'ULTIMOPRODUTO','');
          finally
            ArqIni.Free;
          end;
          frmPesqProdutoItens.Pesquisar;
        end;
        frmPesqProdutoItens.ShowModal;
      Finally
        if frmPesqProdutoItens.ModalResult = mrOk then
        begin
          if dm.fdsConfigSALVAR_PROD_PESQ.AsString = 'S' then
          begin
            ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
            try
              ArqIni.WriteString('CAMINHOS', 'ULTIMOPRODUTO', frmPesqProdutoItens.edtNome.Text);
            finally
              ArqIni.Free;
            end;
          end;
          fdsItensTabela.Locate('ID',
            frmPesqProdutoItens.fdsProdutoItensID.AsInteger, []);
          tbsForm.Show;
          MyLocateEAN(frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString);
        end;
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.gdrItensTabelaTitleClick(Column: TColumn);
begin
  fdsItensTabela.Close;
  fdsItensTabela.OrderClause := Column.FieldName + ' ' + ordem;
  fdsItensTabela.Open;

  if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';
end;

procedure TfrmCadProdutos.gdrMateriaPrimaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsMateriaPrima.RecNo) then
  begin
    gdrMateriaPrima.Canvas.Brush.Color := DM.gridOddColor;
    gdrMateriaPrima.Canvas.FillRect(Rect);
    gdrMateriaPrima.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadProdutos.PesqCFOP;
begin
  Try
    frmCFOP := TfrmCFOP.Create(nil);
    frmCFOP.ShowModal;
  Finally
    if frmCFOP.ModalResult = mrOk then
    begin
      fdsProdutoCFOP.AsString := frmCFOP.fdsCFOPCODIGO_CFOP.AsString;
      fdsProdutoCFOP_NOME.AsString := frmCFOP.fdsCFOPNOME.AsString;
    end;
    frmCFOP.Free;
    edtCEST.SetFocus;
  End;
end;

procedure TfrmCadProdutos.PesquisaProduto(condicao: string);
begin
  with fdsProduto do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('PESQ', condicao, True);
    Conditions.Apply;
    Prepare;
    OrderClause := 'P.ID';
    Open;
  end;
end;

procedure TfrmCadProdutos.pgcControlChange(Sender: TObject);
begin
  if pgcControl.ActivePageIndex = 0 then
    DiminuiTamanhoForm;
end;

procedure TfrmCadProdutos.RetornaItem(id: Integer);
begin
  if (fdsProduto.RecordCount > 0) then
  begin
    with fdsItens do
    begin
      cdsItens.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      ParamByName('ID').AsInteger := id;
      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      Open;
      cdsItens.Open;
    end;
    with fdsUltimasDatas do
    begin
     close;
     ParamByName('IDITEM').AsInteger:= id;
     prepare;
     open;
    end;
  end;
end;

procedure TfrmCadProdutos.RetornaItens(idProduto: Integer);
begin
  if (fdsProduto.RecordCount > 0) then
  begin
    with fdsItens do
    begin
      cdsItens.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      ParamByName('IDPRODUTO').AsInteger := idProduto;
      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      Open;
      cdsItens.Open;
      cdsItens.Last;
    end;
  end;
end;

procedure TfrmCadProdutos.RetornaMateriaPrima;
begin
  if (cdsItens.RecordCount > 0) then
  begin
    with fdsMateriaPrima do
    begin
      cdsMateriaPrima.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      ParamByName('IDITEM').AsInteger := cdsItensID.AsInteger;
      ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
      Prepare;
      Open;
      cdsMateriaPrima.Open;
    end;
  end;
end;

procedure TfrmCadProdutos.RetornaProduto(id: Integer);
begin
  with fdsProduto do
  begin
    Close;
    ParamByName('ID').AsInteger := id;
    Prepare;
    Open;
  end;
end;

procedure TfrmCadProdutos.rgbStatusChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  fdsItensTabela.Close;
  fdsItensTabela.Conditions.Clear;

  if NewIndex = 1 then
  begin
    fdsItensTabela.Conditions.AddCondition('STATUS',
      'PI.STATUS = ' + QuotedStr('A'), True);
  end;

  if NewIndex = 2 then
  begin
    fdsItensTabela.Conditions.AddCondition('STATUS',
      'PI.STATUS = ' + QuotedStr('I'), True);
  end;

  if cbxGrupo.ItemIndex > 0 then
  begin
    fdsItensTabela.Conditions.AddCondition('IDGRUPO',
      'PI.IDPRODUTO IN (SELECT P.ID FROM PRODUTO P WHERE P.IDGRUPO = ' +
      cbxGrupo.Value + ')', True);
  end;

  fdsItensTabela.Conditions.Apply;
  fdsItensTabela.Open;
  fdsItensTabela.First;
  lblTotal.Caption := IntToStr(fdsItensTabela.RecordCount);
  pgcControl.ActivePageIndex := 0;
end;

procedure TfrmCadProdutos.btnPesqCStCOFINSClick(Sender: TObject);
begin
  Try
    frmPesqCST := TfrmPesqCST.Create(nil);
    frmPesqCST.ShowModal;
  Finally
    if frmPesqCST.ModalResult = mrOk then
    begin
      fdsProdutoCST_COFINS.AsString := frmPesqCST.fdsCstCST.AsString;
    end;
    frmPesqCST.Free;
  End;
end;

procedure TfrmCadProdutos.btnPesqCStPisClick(Sender: TObject);
begin
 Try
    frmPesqCST := TfrmPesqCST.Create(nil);
    frmPesqCST.ShowModal;
  Finally
    if frmPesqCST.ModalResult = mrOk then
    begin
      fdsProdutoCST_PIS.AsString := frmPesqCST.fdsCstCST.AsString;
    end;
    frmPesqCST.Free;
  End;
end;

procedure TfrmCadProdutos.RzDBEdit18Exit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if (cdsItensPREC_CUSTO.AsFloat > 0) then
    begin
      CalculaMargemLucro;
    end;
  end;
end;

procedure TfrmCadProdutos.RzDBEdit20Exit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
  cdsItensPREC_TAB4.AsFloat :=RoundTo((cdsItensPREC_CUSTO.AsFloat + (cdsItensPREC_CUSTO.AsFloat *cdsItensMARGEM_LUCRO_TAB4.AsFloat / 100)), -2);
  end;
end;

procedure TfrmCadProdutos.RzDBEdit23Exit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
  cdsItensPREC_TAB3.AsFloat :=RoundTo((cdsItensPREC_CUSTO.AsFloat + (cdsItensPREC_CUSTO.AsFloat *cdsItensMARGEM_LUCRO_TAB3.AsFloat / 100)), -2);
  end;
end;

procedure TfrmCadProdutos.RzDBEdit24Exit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    cdsItensPREC_TAB2.AsFloat :=RoundTo((cdsItensPREC_CUSTO.AsFloat + (cdsItensPREC_CUSTO.AsFloat *cdsItensMARGEM_LUCRO_TAB2.AsFloat / 100)), -2);
  end;
end;

procedure TfrmCadProdutos.edtNCMChange(Sender: TObject);
var
mensagem:String;
begin
 if cdsItens.State in [dsInsert, dsEdit] then
 begin
   with fdsIbpt do
   begin
     close;
     ParamByName('NCM').AsString := edtNCM.Text;
     prepare;
     open;
   end;
   if fdsIbpt.RecordCount>0 then
   begin
     fdsProdutoNCM.AsString                 := fdsIbptNCM.AsString;
     fdsProdutoIBPT_NACIONA_FEDERAL.AsFloat := fdsIbptNACIONAL_FEDERAL.AsFloat;
     fdsProdutoIBPT_ESTADUAL.AsFloat        := fdsIbptESTADUAL.AsFloat;
     fdsProdutoIBPT_MUNICIPAL.AsFloat       := fdsIbptMUNICIPAL.AsFloat;
     mensagem:= 'NCM encontrado com sucesso!Descrição: '+ fdsIbptDESCRICAO.AsString;
     Application.MessageBox(PwideChar(mensagem),'Sucesso!', MB_OK + MB_ICONMASK);
   end;
 end;
end;

procedure TfrmCadProdutos.edtNomeExit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
    fdsProdutoNOME.AsString := cdsItensNOME.AsString;
end;

procedure TfrmCadProdutos.edtNomeKeyPress(Sender: TObject; var Key: Char);
var
 utils:TUtils;
begin
 Key:=utils.TiraCaracterEspecialEdit(Key);
end;

procedure TfrmCadProdutos.edtCodCFOPExit(Sender: TObject);
begin
  if fdsProduto.State in [dsEdit, dsInsert] then
    ValidaCFOP;
end;

procedure TfrmCadProdutos.edtItemCodFabExit(Sender: TObject);
begin
  if Trim(cdsItensCOD_FABRICA.AsString) = '' then
    cdsItensCOD_FABRICA.AsString := '100'+fdsProdutoID.AsString +IntToStr(cdsItens.RecordCount + 1);

end;

procedure TfrmCadProdutos.edtMargemLucroExit(Sender: TObject);
var
  utils: TUtils;
begin
  if (fdsProduto.State in [dsInsert, dsEdit]) then
  begin
    if utils.ValidaInteiroFloat(FloatToStr(cdsItensMARGEM_LUCRO.AsFloat), 'F') > 0
    then
    begin
      if cdsItensPREC_CUSTO.AsFloat > 0 then
        CalcularPrecVenda;
    end;
  end;
end;

procedure TfrmCadProdutos.edtPeso2Exit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
    btnGravar.SetFocus;
end;

procedure TfrmCadProdutos.edtPesoExit(Sender: TObject);
begin
  if cdsItens.State in [dsInsert, dsEdit] then
    btnItemGravar.SetFocus;
end;

procedure TfrmCadProdutos.edtPesqEANKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnPesqEAN.Click;
  end;
end;

procedure TfrmCadProdutos.edtPrec1Enter(Sender: TObject);
var
  utils: TUtils;
var
  uVerificaPermicao: TVerificaPermicao;
begin
    if cdsItens.State in [dsEdit] then
    begin
     if (uVerificaPermicao.Verifica('CAD_PROD_EDIT_PRECOS') = false) then
     begin
      RzDBEdit21.ReadOnly:=True;
      edtNome.SetFocus;
      end
      else
      RzDBEdit21.ReadOnly:=false;
    end;
  // edtPrec1.Text := utils.RetiraMascaraDinheiro(edtPrec1.Text);
end;

procedure TfrmCadProdutos.edtPrec1Exit(Sender: TObject);
var
  utils: TUtils;
  prec_venda: Double;
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if (cdsItensPREC_CUSTO.AsFloat > 0) then
    begin
      CalculaMargemLucro;
    end;
    cdsItensPREC_TAB1.AsFloat := cdsItensPREC_VENDA.AsFloat;
  end;
end;

procedure TfrmCadProdutos.edtPrec2_2Exit(Sender: TObject);
var
utils:Tutils;
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if (cdsItensPREC_CUSTO.AsFloat > 0) then
    begin
      //CalculaMargemLucro;
      if utils.ValidaInteiroFloat(FloatToStr(cdsItensPREC_TAB2.AsFloat), 'F') > 0
      then
      begin
        cdsItensMARGEM_LUCRO_TAB2.AsFloat :=(((cdsItensPREC_TAB2.AsFloat - cdsItensPREC_CUSTO.AsFloat) * 100) /cdsItensPREC_CUSTO.AsFloat);
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.edtPrec3_3Exit(Sender: TObject);
var
utils:Tutils;
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if (cdsItensPREC_CUSTO.AsFloat > 0) then
    begin
      //CalculaMargemLucro;
      if utils.ValidaInteiroFloat(FloatToStr(cdsItensPREC_TAB3.AsFloat), 'F') > 0
      then
      begin
        cdsItensMARGEM_LUCRO_TAB3.AsFloat :=(((cdsItensPREC_TAB3.AsFloat - cdsItensPREC_CUSTO.AsFloat) * 100) /cdsItensPREC_CUSTO.AsFloat);
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.edtPrec4_4Exit(Sender: TObject);
var
utils:Tutils;
begin
  if cdsItens.State in [dsInsert, dsEdit] then
  begin
    if (cdsItensPREC_CUSTO.AsFloat > 0) then
    begin
      //CalculaMargemLucro;
      if utils.ValidaInteiroFloat(FloatToStr(cdsItensPREC_TAB4.AsFloat), 'F') > 0
      then
      begin
        cdsItensMARGEM_LUCRO_TAB4.AsFloat :=(((cdsItensPREC_TAB4.AsFloat - cdsItensPREC_CUSTO.AsFloat) * 100) /cdsItensPREC_CUSTO.AsFloat);
      end;
    end;
  end;
end;

procedure TfrmCadProdutos.ExcluirProduto;
var
  qtnMovimentos: Integer;

begin
  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) QTN FROM MOVIMENTACAO_ITEM MI WHERE MI.MOVIMENTO NOT LIKE '
      + QuotedStr('CADASTRO%') + ' AND MI.IDITEM IN (');
    SQL.Add('SELECT PI.ID FROM PRODUTO_ITEM PI WHERE PI.IDPRODUTO = ' +
      fdsProdutoID.AsString + ')');
    ExecQuery;

    qtnMovimentos := qryComand.FieldByName('QTN').AsInteger;

  end;

  if qtnMovimentos > 0 then
  begin
    Application.MessageBox
      ('Não é possível excluir um produto que já tenha tido alguma movimentação.',
      'Não é possível excluir', MB_OK + MB_ICONEXCLAMATION);
  end
  else
  begin
    with qryComand do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM MOVIMENTACAO_ITEM MI WHERE MI.IDITEM IN (');
      SQL.Add('SELECT PI.ID FROM PRODUTO_ITEM PI WHERE PI.IDPRODUTO = ' +
        fdsProdutoID.AsString + ')');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PRODUTO_ITEM_ESTOQUE PIE WHERE PIE.IDITEM IN (');
      SQL.Add('SELECT PI.ID FROM PRODUTO_ITEM PI WHERE PI.IDPRODUTO = ' +
        fdsProdutoID.AsString + ')');
      ExecQuery;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PRODUTO_ITEM PI WHERE PI.ID IN (');
      SQL.Add('SELECT PI.ID FROM PRODUTO_ITEM PI WHERE PI.IDPRODUTO = ' +
        fdsProdutoID.AsString + ')');
      ExecQuery;

    end;

    fdsProduto.Delete;
    DM.Conexao.CommitRetaining;
    Application.MessageBox('Produto excluido com sucesso!', 'Sucesso',
      MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmCadProdutos.ConfiguraTabPrecos;
begin

  if cdsItens.State in [dsInsert, dsEdit] then
  Begin
    Try
      frmConfigTabPreco := TfrmConfigTabPreco.Create(nil);
      frmConfigTabPreco.cdsPrecos.CreateDataSet;
      frmConfigTabPreco.cdsPrecos.Open;

      with frmConfigTabPreco do
      begin
        cdsPrecos.Append;
        cdsPrecosPreco1.AsFloat := cdsItensPREC_TAB1.AsFloat;
        cdsPrecosPreco2.AsFloat := cdsItensPREC_TAB2.AsFloat;
        cdsPrecosPreco3.AsFloat := cdsItensPREC_TAB3.AsFloat;
        cdsPrecosPreco4.AsFloat := cdsItensPREC_TAB4.AsFloat;
        cdsPrecosPreco5.AsFloat := cdsItensPREC_TAB5.AsFloat;
        cdsPrecosPreco6.AsFloat := cdsItensPREC_TAB6.AsFloat;

        cdsPrecosDesc_Max1.AsFloat := cdsItensDESC_MAX1.AsFloat;
        cdsPrecosDesc_Max2.AsFloat := cdsItensDESC_MAX2.AsFloat;

        // cdsPrecos.Post;
      end;

      frmConfigTabPreco.ShowModal;
    Finally
      if frmConfigTabPreco.ModalResult = mrOk then
      begin
        cdsItensPREC_TAB1.AsFloat := frmConfigTabPreco.cdsPrecosPreco1.AsFloat;
        cdsItensPREC_TAB2.AsFloat := frmConfigTabPreco.cdsPrecosPreco2.AsFloat;
        cdsItensPREC_TAB3.AsFloat := frmConfigTabPreco.cdsPrecosPreco3.AsFloat;
        cdsItensPREC_TAB4.AsFloat := frmConfigTabPreco.cdsPrecosPreco4.AsFloat;
        cdsItensPREC_TAB5.AsFloat := frmConfigTabPreco.cdsPrecosPreco5.AsFloat;
        cdsItensPREC_TAB6.AsFloat := frmConfigTabPreco.cdsPrecosPreco6.AsFloat;

        cdsItensDESC_MAX1.AsFloat :=
          frmConfigTabPreco.cdsPrecosDesc_Max1.AsFloat;
        cdsItensDESC_MAX2.AsFloat :=
          frmConfigTabPreco.cdsPrecosDesc_Max2.AsFloat;
      end;

      frmConfigTabPreco.Free;
    End;
  End;
end;

procedure TfrmCadProdutos.ControlaBtnsItens;

begin
  btnItemCancelar.Enabled := not(alterandoItens);
  btnItemGravar.Enabled := not(alterandoItens);
  btnInfoAdicional.Enabled := not(alterandoItens);
  // btnPesqCor.Enabled := not(alterandoItens);
  // btnPesqTamanho.Enabled := not(alterandoItens);
  btnItensGerar.Enabled := alterandoItens;
  btnItemInc.Enabled := alterandoItens;
  btnItemAlterar.Enabled := alterandoItens;
  btnItemExcluir.Enabled := alterandoItens;
  gdrItens.Enabled := alterandoItens;
  alterandoItens := not(alterandoItens);
end;

procedure TfrmCadProdutos.ControlaBtnsMatPrima;
begin
  alterandoMatPrima := not(alterandoMatPrima);
  btnMateriaPrimaSal.Enabled := alterandoMatPrima;
  btnMateriaPrimaInc.Enabled := not(alterandoMatPrima);
  btnMateriaPrimaAlt.Enabled := not(alterandoMatPrima);
  btnMateriaPrimaExc.Enabled := not(alterandoMatPrima);
end;

procedure TfrmCadProdutos.AumentaTamanhoForm;
begin

  { frmCadProdutos.Height := tamItensHeight;
    frmCadProdutos.Width := tamItensWidth;
    frmCadProdutos.Position := poMainFormCenter; }

end;

procedure TfrmCadProdutos.DiminuiTamanhoForm;
begin

  { frmCadProdutos.Height := tamNormalHeight;
    frmCadProdutos.Width := tamNormalWidth;
    frmCadProdutos.Position := poMainFormCenter;
    pnlControles.Enabled := True; }

end;

procedure TfrmCadProdutos.tbsFormShow(Sender: TObject);
begin
  if not(fdsProduto.State in [dsInsert, dsEdit]) then
  begin
    RetornaProduto(fdsItensTabelaIDPRODUTO.AsInteger);
    RetornaItem(fdsItensTabelaID.AsInteger);
    // RetornaItens(IdProduto);
    // MyLocateEAN(fdsItensTabelaCOD_FABRICA.AsString);
  end;
  VerificaTipoProduto;
  edtFornecedor.Text := fdsProdutoFORNECEDOR.AsString;
end;

procedure TfrmCadProdutos.tbsMateriaPrimaShow(Sender: TObject);
begin
  if cdsItensISNOVO.AsString = 'S' then
    Application.MessageBox
      ('Você está cadastrando um Item novo, primeiro salve o Produto para depois poder lançar a matéria prima que compõe este Item.',
      'Atenção', MB_OK + MB_ICONEXCLAMATION);
  RetornaMateriaPrima;
end;

procedure TfrmCadProdutos.tbsProdutoShow(Sender: TObject);
begin
  DiminuiTamanhoForm;
end;

procedure TfrmCadProdutos.tbsTabelaShow(Sender: TObject);
begin
  // pgcFormulario.ActivePageIndex := 0;
end;

procedure TfrmCadProdutos.ValidaCFOP;
var
  total: Integer;
begin
  with fdsCFOP do
  begin
    Close;
    ParamByName('CFOP').AsString := fdsProdutoCFOP.AsString;
    Prepare;
    Open;
  end;

  total := fdsCFOP.RecordCount;
  fdsProdutoCFOP_NOME.AsString := fdsCFOPNOME.AsString;
  fdsCFOP.Close;

  if total = 0 then
    PesqCFOP;
end;

procedure TfrmCadProdutos.VerificaConfTabelaPreco;
begin

  if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
    usarTabelaPreco := True
  else
    usarTabelaPreco := False;

  gdrItens.Columns[1].Visible := not(usarTabelaPreco);
  gdrItens.Columns[5].Visible := usarTabelaPreco;
  gdrItens.Columns[6].Visible := usarTabelaPreco;
  lblPrec2.Visible := usarTabelaPreco;
  edtPrec2.Visible := usarTabelaPreco;
//  lblPrec2_2.Visible := usarTabelaPreco;
//  edtPrec2_2.Visible := usarTabelaPreco;
 // gbxTabelaPreco.Visible:= usarTabelaPreco;
  gbxTab2.Enabled:=usarTabelaPreco;
  gbxTab3.Enabled:=usarTabelaPreco;
  gbxTab4.Enabled:=usarTabelaPreco;
  gdrItens.Columns[7].Visible := usarTabelaPreco;
  lblPrec3.Visible := usarTabelaPreco;
  edtPrec3.Visible := usarTabelaPreco;
  gdrItens.Columns[8].Visible := usarTabelaPreco;
  lblPrec4.Visible := usarTabelaPreco;
  edtPrec4.Visible := usarTabelaPreco;
  gdrItens.Columns[9].Visible := usarTabelaPreco;
  lblPrec5.Visible := usarTabelaPreco;
  edtPrec5.Visible := usarTabelaPreco;
  gdrItens.Columns[10].Visible := usarTabelaPreco;
  lblPrec6.Visible := usarTabelaPreco;
  edtPrec6.Visible := usarTabelaPreco;

  if usarTabelaPreco then
  begin
    fdsTabelaPreco.Close;
    fdsTabelaPreco.Prepare;
    fdsTabelaPreco.Open;

    //gdrItens.Columns[5].Title.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
    //lblPrec1.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
    //lblPrec1_2.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
    gdrItens.Columns[5].Title.Caption := 'Preço de Venda';
    gdrItens.Columns[6].Title.Caption := fdsTabelaPrecoDESCRICAO2.AsString;
    lblPrec2.Caption := fdsTabelaPrecoDESCRICAO2.AsString;
    //lblPrec2_2.Caption := fdsTabelaPrecoDESCRICAO2.AsString;

    if not(fdsTabelaPrecoDESCRICAO3.AsString = '') then
    begin
      gdrItens.Columns[7].Title.Caption := fdsTabelaPrecoDESCRICAO3.AsString;
      lblPrec3.Caption := fdsTabelaPrecoDESCRICAO3.AsString;
    end
    else
    begin
      gdrItens.Columns[7].Visible := False;
      edtPrec3.Visible := False;
      lblPrec3.Visible := False;
    end;

    if not(fdsTabelaPrecoDESCRICAO4.AsString = '') then
    begin
      gdrItens.Columns[8].Title.Caption := fdsTabelaPrecoDESCRICAO4.AsString;
      lblPrec4.Caption := fdsTabelaPrecoDESCRICAO4.AsString;
    end
    else
    begin
      gdrItens.Columns[8].Visible := False;
      edtPrec4.Visible := False;
      lblPrec4.Visible := False;
    end;

    if not(fdsTabelaPrecoDESCRICAO5.AsString = '') then
    begin
      gdrItens.Columns[9].Title.Caption := fdsTabelaPrecoDESCRICAO5.AsString;
      lblPrec5.Caption := fdsTabelaPrecoDESCRICAO5.AsString;
    end
    else
    begin
      gdrItens.Columns[9].Visible := False;
      edtPrec5.Visible := False;
      lblPrec5.Visible := False;
    end;

    if not(fdsTabelaPrecoDESCRICAO6.AsString = '') then
    begin
      gdrItens.Columns[10].Title.Caption := fdsTabelaPrecoDESCRICAO6.AsString;
      lblPrec6.Caption := fdsTabelaPrecoDESCRICAO6.AsString;
    end
    else
    begin
      gdrItens.Columns[10].Visible := False;
      edtPrec6.Visible := False;
      lblPrec6.Visible := False;
    end;
  end
  else
  begin
    lblPrec1.Caption := 'Preço de Venda';
    lblPrec1_2.Caption := 'Preço de Venda';
    edtPrec1.DataField := 'PREC_VENDA';

    lblDtValidade.Left := 98;
    edtDtValidade.Left := 98;
    lblPeso.Left := 189;
    edtPeso.Left := 189;
  end;

  gdrItensTabela.Columns[5].Title.Caption := lblPrec1.Caption;
  gdrItensTabela.Columns[6].Title.Caption := lblPrec2.Caption;
  gdrItensTabela.Columns[6].Visible := lblPrec2.Visible;

end;

procedure TfrmCadProdutos.VerificaTipoProduto;
begin
  pgcItens.ActivePageIndex := 0;
  if fdsProdutoTIPO.AsString = 'FP' then
  begin
    begin
      pgcItens.Pages[1].TabVisible := True;
    end;
  end
  else
  begin
    pgcItens.Pages[1].TabVisible := False;
  end;
end;

end.