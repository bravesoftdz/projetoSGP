unit untMovInt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  DBCtrls, RzDBCmbo, RzDBEdit, Mask, RzEdit, RzTabs, RzBckgnd, DB, FIBDataSet,
  pFIBDataSet, Provider, pFIBClientDataSet, DBClient, RzCmboBx, FIBQuery,
  pFIBQuery, frxClass, frxDBSet, Vcl.Imaging.pngimage, Math, System.Actions,
  Vcl.ActnList, Vcl.Menus, pFIBProps;

type
  TfrmMovInt = class(TForm)
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
    btnInprimir: TRzBitBtn;
    RzBackground1: TRzBackground;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    tbsForm: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    lblDtInc: TRzLabel;
    RzLabel1: TRzLabel;
    edtDt_Inc: TRzDBEdit;
    edtID: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    gdrItens: TJvDBGrid;
    pnlLancItens: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    edtQtnItem: TRzDBEdit;
    btnItemGravar: TRzBitBtn;
    btnItemCancelar: TRzBitBtn;
    btnItemExcluir: TRzBitBtn;
    btnItemAlterar: TRzBitBtn;
    btnItensIncluir: TRzBitBtn;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    gdrMovimentacao: TJvDBGrid;
    fdsMovInt: TpFIBDataSet;
    dsMovInt: TDataSource;
    fdsItensMovInt: TpFIBDataSet;
    dsItensMovInt: TDataSource;
    fdsMovIntID: TFIBBCDField;
    fdsMovIntDT_INC: TFIBDateField;
    fdsMovIntPREFIXO: TFIBStringField;
    fdsMovIntTIPO: TFIBStringField;
    fdsMovIntIDFILIAL: TFIBBCDField;
    fdsMovIntTP: TFIBStringField;
    fdsMovIntFILIAL: TFIBStringField;
    cdsItensMovInt: TpFIBClientDataSet;
    dspItensMovInt: TpFIBDataSetProvider;
    dsItensMovIntTemp: TDataSource;
    fdsMovIntREFERENCIA: TFIBStringField;
    RzLabel15: TRzLabel;
    RzLabel2: TRzLabel;
    fdsFilial: TpFIBDataSet;
    dsFilial: TDataSource;
    fdsFilialID: TFIBBCDField;
    fdsFilialNOME: TFIBStringField;
    fdsMovIntPESO: TFIBBCDField;
    cbxPrefixo: TRzDBComboBox;
    fdsMovIntIDFILIAL_DESTINO: TFIBBCDField;
    lcbFilial: TRzDBLookupComboBox;
    cdsItensMovIntIDMOV: TpFIBClientBCDField;
    cdsItensMovIntITEM: TSmallintField;
    cdsItensMovIntIDPROD_ITEM: TpFIBClientBCDField;
    cdsItensMovIntQTN: TpFIBClientBCDField;
    cdsItensMovIntPESO: TpFIBClientBCDField;
    cdsItensMovIntPRODUTO: TStringField;
    cdsItensMovIntPREC_VENDA: TpFIBClientBCDField;
    cdsItensMovIntENVIADO_WEB: TStringField;
    cdsItensMovIntIDFILIAL: TpFIBClientBCDField;
    btnConfirmaRecebimento: TRzBitBtn;
    qryTranferenciaReceber: TpFIBQuery;
    fdsMovIntSTATUS: TFIBStringField;
    frxMovInt: TfrxDBDataset;
    frxIntensMovInt: TfrxDBDataset;
    edtItemNome: TRzDBEdit;
    fdsItensMovIntIDMOV: TFIBBCDField;
    fdsItensMovIntITEM: TFIBSmallIntField;
    fdsItensMovIntDT_INC: TFIBDateField;
    fdsItensMovIntIDPROD_ITEM: TFIBBCDField;
    fdsItensMovIntQTN: TFIBBCDField;
    fdsItensMovIntPESO: TFIBBCDField;
    fdsItensMovIntENVIADO_WEB: TFIBStringField;
    fdsItensMovIntIDFILIAL: TFIBBCDField;
    fdsItensMovIntPREC_CUSTO: TFIBBCDField;
    fdsItensMovIntPREC_VENDA: TFIBBCDField;
    fdsItensMovIntPRODUTO: TFIBStringField;
    cdsItensMovIntDT_INC: TDateField;
    cdsItensMovIntPREC_CUSTO: TpFIBClientBCDField;
    fdsItensMovIntMARGEM_LUCRO: TFIBBCDField;
    cdsItensMovIntMARGEM_LUCRO: TpFIBClientBCDField;
    edtItemCodigo: TRzEdit;
    RzLabel24: TRzLabel;
    RzLabel23: TRzLabel;
    fdsItensMovIntPREC_VENDA2: TFIBBCDField;
    fdsItensMovIntMARGEM_LUCRO2: TFIBBCDField;
    cdsItensMovIntPREC_VENDA2: TpFIBClientBCDField;
    cdsItensMovIntMARGEM_LUCRO2: TpFIBClientBCDField;
    qrySql: TpFIBQuery;
    fdsItensMovIntCOD_FABRICA: TFIBStringField;
    cdsItensMovIntCOD_FABRICA: TStringField;
    ActionList1: TActionList;
    impMovimentacao: TAction;
    impEtiqPrateleira: TAction;
    ppmImprimir: TPopupMenu;
    EtiquetadePrateleira1: TMenuItem;
    EtiquetadePrateleira2: TMenuItem;
    btnCarregarXML: TRzBitBtn;
    cdsMovInt: TpFIBClientDataSet;
    cdsMovIntID: TpFIBClientBCDField;
    cdsMovIntDT_INC: TDateField;
    cdsMovIntPREFIXO: TStringField;
    cdsMovIntTIPO: TStringField;
    cdsMovIntIDFILIAL: TpFIBClientBCDField;
    cdsMovIntTP: TStringField;
    cdsMovIntFILIAL: TStringField;
    cdsMovIntREFERENCIA: TStringField;
    cdsMovIntPESO: TpFIBClientBCDField;
    cdsMovIntIDFILIAL_DESTINO: TpFIBClientBCDField;
    cdsMovIntSTATUS: TStringField;
    fdsItensMovIntDESC_MAX1: TFIBBCDField;
    fdsItensMovIntDESC_MAX2: TFIBBCDField;
    cdsItensMovIntDESC_MAX1: TpFIBClientBCDField;
    cdsItensMovIntDESC_MAX2: TpFIBClientBCDField;
    btnCancelar: TRzBitBtn;
    fdsMovIntOBS: TFIBStringField;
    fdsItensMovIntOBS: TFIBStringField;
    cdsItensMovIntOBS: TStringField;
    mmoObs: TRzMemo;
    mmoObsItem: TRzMemo;
    edtPrecCusto: TRzDBEdit;
    RzLabel34: TRzLabel;
    RzLabel36: TRzLabel;
    edtMargemLucro: TRzDBEdit;
    edtPreVenda: TRzDBEdit;
    RzLabel35: TRzLabel;
    impRelAnal�tico: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdsMovIntAfterScroll(DataSet: TDataSet);
    procedure RetornaItensMovimento;
    procedure EditaInsere;
    procedure GravaCancela;
    procedure ControlaBtnsItens;
    procedure GravaCDSMovInt;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnItensIncluirClick(Sender: TObject);
    procedure btnItemAlterarClick(Sender: TObject);
    procedure btnItemExcluirClick(Sender: TObject);
    procedure btnItemCancelarClick(Sender: TObject);
    procedure btnItemGravarClick(Sender: TObject);
    procedure tbsFormShow(Sender: TObject);
    procedure cbxPrefixoChange(Sender: TObject);
    procedure PesquisarItem(itemCodigo: string);
    function MyLocateItem(chave1: string): Boolean;
    procedure ControlaExibicaoFiliais;
    procedure gdrMovimentacaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnConfirmaRecebimentoClick(Sender: TObject);
    procedure btnInprimirClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure cdsItensMovIntAfterScroll(DataSet: TDataSet);
    procedure impMovimentacaoExecute(Sender: TObject);
    procedure impEtiqPrateleiraExecute(Sender: TObject);
    procedure btnCarregarXMLClick(Sender: TObject);
    procedure mmoObsEnter(Sender: TObject);
    procedure mmoObsExit(Sender: TObject);
    procedure mmoObsItemEnter(Sender: TObject);
    procedure mmoObsItemExit(Sender: TObject);
    procedure gdrMovimentacaoDblClick(Sender: TObject);
    procedure edtMargemLucroExit(Sender: TObject);
    procedure edtPreVendaExit(Sender: TObject);
    procedure edtPrecCustoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtItemCodigoExit(Sender: TObject);
  private
    procedure PreencheCbxTipo;
    procedure Fechar;
  public
    { Public declarations }
  end;

var
  frmMovInt: TfrmMovInt;
  pesoTotal: Double;
  alterandoIten: Boolean;
  idMovimento: Integer;

implementation

uses untData, untPesqProdutoItens, uUtils, untPrecItemAtualizacao, untPrincipal,
  untLocalizaItem, untImpEtiquetasClientes, untEtiquetaPrateleira;

{$R *.dfm}

procedure TfrmMovInt.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente abandonar o lan�amento atual?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsMovInt.Cancel;
        DM.Conexao.RollbackRetaining;
        GravaCancela;
      end;
  end;
end;

procedure TfrmMovInt.btnCarregarXMLClick(Sender: TObject);
begin
  fdsMovInt.Close;
  fdsMovInt.AutoUpdateOptions.WhenGetGenID := wgNever;
  fdsMovInt.Open;
  cdsMovInt.EmptyDataSet;
  cdsMovInt.LoadFromFile('TempMovInt.xml');

  fdsMovInt.Append;
  fdsMovIntID.AsInteger := cdsMovIntID.AsInteger;
  fdsMovIntDT_INC.AsDateTime := cdsMovIntDT_INC.AsDateTime;
  fdsMovIntPREFIXO.AsString := cdsMovIntPREFIXO.AsString;
  fdsMovIntTIPO.AsString := cdsMovIntTIPO.AsString;
  fdsMovIntIDFILIAL.AsInteger := cdsMovIntIDFILIAL.AsInteger;
  fdsMovIntTP.AsString := cdsMovIntTP.AsString;
  fdsMovIntFILIAL.AsString := cdsMovIntFILIAL.AsString;
  fdsMovIntREFERENCIA.AsString := cdsMovIntREFERENCIA.AsString;
  fdsMovIntPESO.AsFloat := cdsMovIntPESO.AsFloat;
  fdsMovIntIDFILIAL_DESTINO.AsInteger := cdsMovIntIDFILIAL_DESTINO.AsInteger;
  fdsMovIntSTATUS.AsString := cdsMovIntSTATUS.AsString;
  pesoTotal := fdsMovIntPESO.AsFloat;

  fdsItensMovInt.Close;
  cdsItensMovInt.EmptyDataSet;
  cdsItensMovInt.LoadFromFile('TempMovIntItens.xml');
  cdsItensMovInt.First;

  while not(cdsItensMovInt.Eof) do
  begin
    with qrySql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PRODUTO_ITEM WHERE COD_FABRICA = :COD_FABRICA');
      ParamByName('COD_FABRICA').AsString := cdsItensMovIntCOD_FABRICA.AsString;
      Prepare;
      ExecQuery;
    end;

    cdsItensMovInt.Next;
  end;
  cdsItensMovInt.First;
  EditaInsere;
end;

procedure TfrmMovInt.btnConfirmaRecebimentoClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente confirmar o recebimento desta transfer�ncia?'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    IDNO:
      begin
        Abort;
      end;
  end;

  RetornaItensMovimento;

  while not(cdsItensMovInt.Eof) do
  begin
    With qryTranferenciaReceber do
    begin
      Close;
      ParamByName('IDPROD_ITEM').AsString := cdsItensMovIntIDPROD_ITEM.AsString;
      ParamByName('IDFILIAL').AsString := fdsMovIntIDFILIAL_DESTINO.AsString;
      ParamByName('DT_INC').AsDateTime := Now;
      ParamByName('MOVI').AsString := 'TRANSFER�NCIA - RECEBIMENTO';
      ParamByName('IDMOV').AsString := fdsMovIntID.AsString;
      ParamByName('TIPO').AsString := 'E';
      ParamByName('QTN').AsString := cdsItensMovIntQTN.AsString;
      ParamByName('IDFILIAL_DESTINO').AsString :=
        fdsMovIntIDFILIAL_DESTINO.AsString;
      Prepare;
      ExecQuery;
    end;

    if (DM.fdsConfigIDFILIAL.AsInteger <> 1) AND
      (DM.fdsConfigFILIAL_PREC_VENDA_IGUAL.AsString = 'S') then
    begin
      With qrySql do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE PRODUTO_ITEM_ESTOQUE SET PREC_VENDA = :PREC_VENDA, PREC_TAB1 = :PREC_VENDA, ');
        SQL.Add('MARGEM_LUCRO = :MARGEM_LUCRO, PREC_TAB2 = :PREC_TAB2 ');
        SQL.Add('WHERE IDITEM = :IDITEM AND IDFILIAL = :IDFILIAL');
        ParamByName('IDITEM').AsString := cdsItensMovIntIDPROD_ITEM.AsString;
        ParamByName('PREC_VENDA').AsFloat := cdsItensMovIntPREC_VENDA.AsFloat;
        ParamByName('MARGEM_LUCRO').AsFloat :=
          cdsItensMovIntMARGEM_LUCRO.AsFloat;
        ParamByName('PREC_TAB2').AsFloat := cdsItensMovIntPREC_VENDA2.AsFloat;
        ParamByName('IDFILIAL').AsString := fdsMovIntIDFILIAL_DESTINO.AsString;
        Prepare;
        ExecQuery;
      end;
    end;

    cdsItensMovInt.Next;
  end;

  fdsMovInt.Edit;
  fdsMovIntSTATUS.AsString := 'RC';
  fdsMovInt.Post;
  fdsItensMovInt.Close;
  cdsItensMovInt.Close;
  DM.Conexao.CommitRetaining;

  Application.MessageBox
    ('Recebimento de Transf�rencia realizado com sucesso, confira o estoque !',
    'Sucesso', MB_OK + MB_ICONEXCLAMATION);
  btnConfirmaRecebimento.Visible := False;

end;

procedure TfrmMovInt.btnFirstClick(Sender: TObject);
begin
  fdsMovInt.Prior;
end;

procedure TfrmMovInt.btnGravarClick(Sender: TObject);
var
  utils: TUtils;
  i: Smallint;
  campoVazio: Boolean;
begin
  campoVazio := False;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Tag = 15) then
    begin
      if (Components[i].Name = 'cbxPrefixo') then
      begin
        if (cbxPrefixo.Value = EmptyStr) then
        begin
          Application.MessageBox
            ('Selecione um tipo de movimento antes de gravar.', 'Ante��o',
            MB_OK + MB_ICONERROR);
          cbxPrefixo.SetFocus;
          Abort;
        end;
      end
      else if utils.VerificaCampoObrigatorio(TRzDBEdit(Components[i])) then
        campoVazio := True;
    end;
  end;

  if campoVazio then
    Application.MessageBox('Existem campos obrigat�rios sem preencher.',
      'Ante��o', MB_OK + MB_ICONERROR)
  else
  begin
    if not(alterandoIten) then
    begin
      Application.MessageBox
        ('Voc� est� incluindo ou alterando um item, grave a inclus�o/altera��o deste primeiro e depois grave o pedido.',
        'Ante��o', MB_OK + MB_ICONERROR);
      edtQtnItem.SetFocus;
      Abort;
    end;

    if cdsItensMovInt.RecordCount = 0 then
    begin
      Application.MessageBox('Voc� n�o pode gravar uma Movimenta��o sem itens.',
        'Ante��o', MB_OK + MB_ICONERROR);
      btnItensIncluir.SetFocus;
      Abort;
    end;

    if not((Trim(mmoObs.Text) = 'Observa��o') or (Trim(mmoObs.Text) = EmptyStr))
    then
    begin
      fdsMovIntOBS.AsString := mmoObs.Text;
    end;

    if ((cbxPrefixo.Value = 'TR') and ((fdsMovIntIDFILIAL_DESTINO.AsInteger = 0)
      OR (fdsMovIntIDFILIAL_DESTINO.AsInteger = DM.fdsConfigIDFILIAL.AsInteger)))
    then
    begin
      Application.MessageBox('Filial de destino selecionada inv�lida.',
        'Ante��o', MB_OK + MB_ICONERROR);
      lcbFilial.SetFocus;
      Abort;
    end;

    fdsMovInt.Post;
    DM.Conexao.CommitRetaining;

    fdsItensMovInt.Open;
    cdsItensMovInt.First;

    while not(cdsItensMovInt.Eof) do
    begin
      fdsItensMovInt.Insert;
      fdsItensMovIntIDMOV.AsInteger := idMovimento;
      fdsItensMovIntIDPROD_ITEM.AsInteger :=
        cdsItensMovIntIDPROD_ITEM.AsInteger;
      fdsItensMovIntQTN.AsFloat := cdsItensMovIntQTN.AsFloat;
      fdsItensMovIntPESO.AsFloat := cdsItensMovIntPESO.AsFloat;
      fdsItensMovIntIDFILIAL.AsInteger := cdsItensMovIntIDFILIAL.AsInteger;
      fdsItensMovIntPREC_CUSTO.AsFloat := cdsItensMovIntPREC_CUSTO.AsFloat;
      fdsItensMovIntPREC_VENDA.AsFloat := cdsItensMovIntPREC_VENDA.AsFloat;
      fdsItensMovIntMARGEM_LUCRO.AsFloat := cdsItensMovIntMARGEM_LUCRO.AsFloat;
      fdsItensMovIntDESC_MAX1.AsFloat := cdsItensMovIntDESC_MAX1.AsFloat;
      fdsItensMovIntPREC_VENDA2.AsFloat := cdsItensMovIntPREC_VENDA2.AsFloat;
      fdsItensMovIntMARGEM_LUCRO2.AsFloat :=
        cdsItensMovIntMARGEM_LUCRO2.AsFloat;
      fdsItensMovIntDESC_MAX2.AsFloat := cdsItensMovIntDESC_MAX2.AsFloat;
      fdsItensMovIntENVIADO_WEB.AsString := cdsItensMovIntENVIADO_WEB.AsString;
      fdsItensMovIntOBS.AsString := cdsItensMovIntOBS.AsString;
      fdsItensMovInt.Post;
      cdsItensMovInt.Next;
    end;

    DM.Conexao.CommitRetaining;

    cdsItensMovInt.EmptyDataSet;
    cdsItensMovInt.SaveToFile('TempMovIntItens.xml', dfXML);
    cdsMovInt.EmptyDataSet;
    cdsMovInt.SaveToFile('TempMovInt.xml', dfXML);

    GravaCancela;
  end;
end;

procedure TfrmMovInt.btnIncluirClick(Sender: TObject);
begin
  fdsItensMovInt.Close;
  cdsItensMovInt.Close;
  cdsItensMovInt.Open;
  cdsItensMovInt.EmptyDataSet;

  cdsMovInt.Close;
  cdsMovInt.Open;
  cdsMovInt.EmptyDataSet;

  fdsMovInt.Append;
  fdsMovIntIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  pesoTotal := 0;
  EditaInsere;
  btnItemAlterar.Enabled := False;
  btnItemExcluir.Enabled := False;
  edtItemCodigo.Clear;

  cdsMovInt.Append;
  GravaCDSMovInt;

end;

procedure TfrmMovInt.btnInprimirClick(Sender: TObject);
begin
  ppmImprimir.Popup(frmMovInt.Left + 394, frmMovInt.top + 114);
end;

procedure TfrmMovInt.btnItemAlterarClick(Sender: TObject);
begin
  if cdsItensMovInt.RecordCount > 0 then
  begin
    pesoTotal := pesoTotal - (cdsItensMovIntPESO.AsFloat *
      cdsItensMovIntQTN.AsFloat);
    fdsMovIntPESO.AsFloat := pesoTotal;
    cdsItensMovInt.Edit;
    edtQtnItem.SetFocus;
    ControlaBtnsItens;
  end;
end;

procedure TfrmMovInt.btnItemCancelarClick(Sender: TObject);
begin
  if cdsItensMovInt.State = dsEdit then
  begin
    pesoTotal := pesoTotal + (cdsItensMovIntPESO.AsFloat *
      cdsItensMovIntQTN.AsFloat);
    fdsMovIntPESO.AsFloat := pesoTotal;
  end;
  cdsItensMovInt.Cancel;
  ControlaBtnsItens;
  btnItensIncluir.SetFocus;
end;

procedure TfrmMovInt.btnItemExcluirClick(Sender: TObject);
begin
  if cdsItensMovInt.RecordCount > 0 then
  begin
    pesoTotal := pesoTotal - (cdsItensMovIntPESO.AsFloat *
      cdsItensMovIntQTN.AsFloat);
    fdsMovIntPESO.AsFloat := pesoTotal;
    cdsItensMovInt.Delete;
  end;
end;

procedure TfrmMovInt.btnItemGravarClick(Sender: TObject);
begin
  // if cdsItensMovInt.RecordCount > 0 then
  // begin

  if (Trim(edtQtnItem.Text) = EmptyStr) or (cdsItensMovIntQTN.AsFloat <= 0)
  then
  begin
    edtQtnItem.SetFocus;
    Abort;
  end;

  if not((Trim(mmoObsItem.Text) = 'Observa��o') or
    (Trim(mmoObsItem.Text) = EmptyStr)) then
  begin
    cdsItensMovIntOBS.AsString := mmoObsItem.Text;
  end;

  cdsItensMovInt.Post;
  ControlaBtnsItens;
  pesoTotal := pesoTotal + (cdsItensMovIntPESO.AsFloat *
    cdsItensMovIntQTN.AsFloat);
  fdsMovIntPESO.AsFloat := pesoTotal;

  cdsItensMovInt.SaveToFile('TempMovIntItens.xml', dfXML);

  cdsMovInt.Edit;
  GravaCDSMovInt;

  btnItensIncluir.SetFocus;

  // end
  // else
  // edtItemCodigo.SetFocus;

end;

procedure TfrmMovInt.btnItensIncluirClick(Sender: TObject);
begin
  edtItemCodigo.Clear;
  cdsItensMovInt.Append;
  cdsItensMovIntOBS.AsString := 'Observa��o';
  mmoObsItem.Font.Color := clGrayText;
  alterandoIten := True;
  ControlaBtnsItens;
  edtItemCodigo.SetFocus;
end;

procedure TfrmMovInt.btnLastClick(Sender: TObject);
begin
  fdsMovInt.Last;
end;

procedure TfrmMovInt.btnNextClick(Sender: TObject);
begin
  fdsMovInt.Next;
end;

procedure TfrmMovInt.btnPriorClick(Sender: TObject);
begin
  fdsMovInt.First;
end;

procedure TfrmMovInt.btnTodosClick(Sender: TObject);
begin
  fdsMovInt.Close;
  fdsMovInt.Open;
end;

procedure TfrmMovInt.cbxPrefixoChange(Sender: TObject);
begin
  if fdsMovInt.State in [dsInsert, dsEdit] then
  begin
    if cbxPrefixo.Value = 'TR' then
    begin
      fdsMovIntTIPO.AsString := 'S';
      lcbFilial.Enabled := True;
    end
    else
    begin
      if (cbxPrefixo.Value = 'ME')or (cbxPrefixo.Value = 'EC') then
      begin
        fdsMovIntTIPO.AsString := 'E';
        lcbFilial.Enabled := False;
      end
      else
      begin
        if (cbxPrefixo.Value = 'TE') or (cbxPrefixo.Value = 'TC')then
        begin
          fdsMovIntTIPO.AsString := 'I';
          lcbFilial.Enabled := False;
        end
        else
        begin
          fdsMovIntTIPO.AsString := 'S';
          lcbFilial.Enabled := False;
        end;
      end;
      fdsMovIntIDFILIAL_DESTINO.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    end;
    cdsMovInt.Edit;
    GravaCDSMovInt;
  end;
end;

procedure TfrmMovInt.cdsItensMovIntAfterScroll(DataSet: TDataSet);
begin
  if pgcControl.ActivePageIndex = 1 then
  begin
    edtItemCodigo.Text := cdsItensMovIntCOD_FABRICA.AsString;

    if cdsItensMovIntOBS.AsString = EmptyStr then
    begin
      mmoObsItem.Text := 'Observa��o';
      mmoObsItem.Font.Color := clGray;
    end
    else
    begin
      mmoObsItem.Text := cdsItensMovIntOBS.AsString;
      mmoObsItem.Font.Color := clWindowText;
    end;
  end;
end;

procedure TfrmMovInt.ControlaBtnsItens;
begin

  mmoObsItem.ReadOnly := not(alterandoIten);
  btnItemCancelar.Enabled := alterandoIten;
  btnItemGravar.Enabled := alterandoIten;
  btnItensIncluir.Enabled := not(alterandoIten);
  btnItemAlterar.Enabled := not(alterandoIten);
  btnItemExcluir.Enabled := not(alterandoIten);
  alterandoIten := not(alterandoIten);
  RzGroupBox1.Enabled := alterandoIten;
  gdrItens.Enabled := alterandoIten;
  mmoObsItem.Enabled := not(alterandoIten);

end;

procedure TfrmMovInt.ControlaExibicaoFiliais;
begin
  if (DM.fdsConfigIDFILIAL.AsString <> '1') then
  begin
    fdsMovInt.Conditions.AddCondition('IDFILIAL', '((MI.IDFILIAL = ' +
      DM.fdsConfigIDFILIAL.AsString + ') OR (MI.IDFILIAL_DESTINO = ' +
      DM.fdsConfigIDFILIAL.AsString + '))', True);
    fdsMovInt.Conditions.Apply;
  end;
end;

procedure TfrmMovInt.EditaInsere;
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
  // edtNome.SetFocus;
  ControlaBtnsItens;
  idMovimento := fdsMovIntID.AsInteger;
  mmoObs.ReadOnly := False;
end;

procedure TfrmMovInt.edtItemCodigoExit(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert] then
    PesquisarItem(edtItemCodigo.Text);
end;

procedure TfrmMovInt.edtMargemLucroExit(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert, dsEdit] then
  begin
    if edtMargemLucro.Enabled = True then
    begin
      if cdsItensMovIntMARGEM_LUCRO.AsFloat > 0 then
      begin
        cdsItensMovIntPREC_VENDA.AsFloat :=
          RoundTo((cdsItensMovIntPREC_CUSTO.AsFloat +
          (cdsItensMovIntPREC_CUSTO.AsFloat * cdsItensMovIntMARGEM_LUCRO.AsFloat
          / 100)), -2);
      end;
    end;
  end;
end;

procedure TfrmMovInt.edtPrecCustoExit(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert, dsEdit] then
  begin
    if edtPreVenda.Enabled = True then
    begin
      if (cdsItensMovIntPREC_CUSTO.AsFloat > 0) then
      begin
        if cdsItensMovIntPREC_VENDA.AsFloat > 0 then
        begin
          cdsItensMovIntMARGEM_LUCRO.AsFloat :=
            RoundTo((((cdsItensMovIntPREC_VENDA.AsFloat -
            cdsItensMovIntPREC_CUSTO.AsFloat) * 100) /
            cdsItensMovIntPREC_CUSTO.AsFloat), -2);
          if cdsItensMovIntMARGEM_LUCRO.AsFloat < 0 then
            cdsItensMovIntMARGEM_LUCRO.AsFloat := 0;
        end;
      end;
    end;
  end;
end;

procedure TfrmMovInt.edtPreVendaExit(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert, dsEdit] then
  begin
    if edtPreVenda.Enabled = True then
    begin
      if (cdsItensMovIntPREC_CUSTO.AsFloat > 0) then
      begin
        if cdsItensMovIntPREC_VENDA.AsFloat > 0 then
        begin
          cdsItensMovIntMARGEM_LUCRO.AsFloat :=
            RoundTo((((cdsItensMovIntPREC_VENDA.AsFloat -
            cdsItensMovIntPREC_CUSTO.AsFloat) * 100) /
            cdsItensMovIntPREC_CUSTO.AsFloat), -2);
          if cdsItensMovIntMARGEM_LUCRO.AsFloat < 0 then
            cdsItensMovIntMARGEM_LUCRO.AsFloat := 0;
        end;
      end;
    end;
  end;
end;

procedure TfrmMovInt.fdsMovIntAfterScroll(DataSet: TDataSet);
begin
  if not(fdsMovInt.State in [dsInsert, dsEdit]) then
  begin
    if pgcControl.ActivePageIndex = 1 then
    begin
      RetornaItensMovimento;

      if fdsMovIntOBS.AsString = EmptyStr then
      begin
        mmoObs.Text := 'Observa��o';
        mmoObs.Font.Color := clGray;
      end
      else
      begin
        mmoObs.Text := fdsMovIntOBS.AsString;
        mmoObs.Font.Color := clWindowText;
      end;
    end;

    if (fdsMovIntPREFIXO.AsString = 'TR') and (fdsMovIntSTATUS.AsString <> 'RC')
      and (fdsMovIntIDFILIAL_DESTINO.AsString = DM.fdsConfigIDFILIAL.AsString)
    then
    begin
      btnConfirmaRecebimento.Visible := True;
    end
    else
      btnConfirmaRecebimento.Visible := False;
  end;
end;

procedure TfrmMovInt.Fechar;
begin
  if fdsMovInt.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele o lan�amento da movimenta��o antes de sair.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    FreeAndNil(frmMovInt);
  end;
end;

procedure TfrmMovInt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fechar;
end;

procedure TfrmMovInt.FormCreate(Sender: TObject);
begin
  tbsTabela.Show;
  cdsItensMovInt.CreateDataSet;
  cdsMovInt.CreateDataSet;
  ControlaExibicaoFiliais;
  fdsMovInt.OrderClause := 'ID DESC';
  fdsMovInt.Open;
  fdsFilial.Open;
  lblTotal.Caption := IntToStr(fdsMovInt.RecordCount);
  alterandoIten := False;
  PreencheCbxTipo;
end;

procedure TfrmMovInt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Fechar;
  end
end;

procedure TfrmMovInt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmMovInt.gdrMovimentacaoDblClick(Sender: TObject);
begin
  if fdsMovInt.RecordCount > 0 then
    tbsForm.Show;
end;

procedure TfrmMovInt.gdrMovimentacaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsMovInt.RecNo) then
  begin
    gdrMovimentacao.Canvas.Brush.Color := DM.gridOddColor;
    gdrMovimentacao.Canvas.FillRect(Rect);
    gdrMovimentacao.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if (fdsMovIntPREFIXO.AsString = 'TR') and (fdsMovIntSTATUS.AsString = 'AB')
  then
  begin
    if (fdsMovIntIDFILIAL_DESTINO.AsString = DM.fdsConfigIDFILIAL.AsString) then
      gdrMovimentacao.Canvas.Font.Color := clBlue;
  end;

  gdrMovimentacao.DefaultDrawDataCell(Rect, gdrMovimentacao.columns[DataCol]
    .Field, State);
end;

procedure TfrmMovInt.GravaCancela;
var
  i: Smallint;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TRzPageControl) then
    begin
      TRzPageControl(Components[i]).Pages[0].TabVisible := True;
      TRzPageControl(Components[i]).ActivePageIndex := 0;
    end;
    if (Components[i] is TRzBitBtn) then
    begin
      if Components[i].Tag = 1 then
        TRzBitBtn(Components[i]).Enabled := True
      else
        TRzBitBtn(Components[i]).Enabled := False;
    end;
  end;

  alterandoIten := False;
  mmoObs.ReadOnly := True;
  fdsItensMovInt.Close;
  fdsMovInt.Close;
  fdsMovInt.AutoUpdateOptions.WhenGetGenID := wgOnNewRecord;
  fdsMovInt.OrderClause := 'ID DESC';
  fdsMovInt.Open;
  lblTotal.Caption := IntToStr(fdsMovInt.RecordCount);
end;

procedure TfrmMovInt.GravaCDSMovInt;
begin
  cdsMovIntID.AsInteger := fdsMovIntID.AsInteger;
  cdsMovIntDT_INC.AsDateTime := fdsMovIntDT_INC.AsDateTime;
  cdsMovIntPREFIXO.AsString := fdsMovIntPREFIXO.AsString;
  cdsMovIntTIPO.AsString := fdsMovIntTIPO.AsString;
  cdsMovIntIDFILIAL.AsInteger := fdsMovIntIDFILIAL.AsInteger;
  cdsMovIntTP.AsString := fdsMovIntTP.AsString;
  cdsMovIntFILIAL.AsString := fdsMovIntFILIAL.AsString;
  cdsMovIntREFERENCIA.AsString := fdsMovIntREFERENCIA.AsString;
  cdsMovIntPESO.AsFloat := fdsMovIntPESO.AsFloat;
  cdsMovIntIDFILIAL_DESTINO.AsInteger := fdsMovIntIDFILIAL_DESTINO.AsInteger;
  cdsMovIntSTATUS.AsString := fdsMovIntSTATUS.AsString;
  cdsMovInt.Post;
  cdsMovInt.SaveToFile('TempMovInt.xml', dfXML);
end;

procedure TfrmMovInt.impEtiqPrateleiraExecute(Sender: TObject);
begin
  Try
    RetornaItensMovimento;
    frmEtiquetaPrateleira := TfrmEtiquetaPrateleira.Create(nil);
    frmEtiquetaPrateleira.totImprimir := fdsItensMovInt.RecordCount;
    while not(fdsItensMovInt.Eof) do
    begin
      frmEtiquetaPrateleira.fdsItens.Append;
      frmEtiquetaPrateleira.fdsItensNOME.AsString :=
        fdsItensMovIntPRODUTO.AsString;
      frmEtiquetaPrateleira.fdsItensIMPRIMIR.AsString := 'S';
      frmEtiquetaPrateleira.fdsItensSaldo.AsFloat := fdsItensMovIntQTN.AsFloat;
      frmEtiquetaPrateleira.fdsItensCOD_FABRICA.AsString :=
        fdsItensMovIntCOD_FABRICA.AsString;
      frmEtiquetaPrateleira.fdsItensPREC_VENDA.AsCurrency :=
        fdsItensMovIntPREC_VENDA.AsCurrency;
      frmEtiquetaPrateleira.fdsItensPREC_VENDA2.AsCurrency :=
        fdsItensMovIntPREC_VENDA2.AsCurrency;
      frmEtiquetaPrateleira.fdsItens.Post;
      fdsItensMovInt.Next;
    end;

    frmEtiquetaPrateleira.ShowModal;

  Finally
    frmEtiquetaPrateleira.Free;
  End;
end;

procedure TfrmMovInt.impMovimentacaoExecute(Sender: TObject);
begin
  RetornaItensMovimento;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxMovInt.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmMovInt.mmoObsEnter(Sender: TObject);
begin
  if fdsMovInt.State in [dsInsert, dsEdit] then
    if Trim(mmoObs.Text) = 'Observa��o' then
    begin
      mmoObs.Text := EmptyStr;
      mmoObs.Font.Color := clWindowText;
    end;
end;

procedure TfrmMovInt.mmoObsExit(Sender: TObject);
begin
  if fdsMovInt.State in [dsInsert, dsEdit] then
    if (Trim(mmoObs.Text) = 'Observa��o') or (Trim(mmoObs.Text) = EmptyStr) then
    begin
      mmoObs.Text := 'Observa��o';
      mmoObs.Font.Color := clGrayText;
    end;
end;

procedure TfrmMovInt.mmoObsItemEnter(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert, dsEdit] then
    if Trim(mmoObsItem.Text) = 'Observa��o' then
    begin
      mmoObsItem.Text := EmptyStr;
      mmoObsItem.Font.Color := clWindowText;
    end;
end;

procedure TfrmMovInt.mmoObsItemExit(Sender: TObject);
begin
  if cdsItensMovInt.State in [dsInsert, dsEdit] then
    if (Trim(mmoObsItem.Text) = 'Observa��o') or (mmoObsItem.Text = EmptyStr)
    then
    begin
      mmoObsItem.Text := 'Observa��o';
      mmoObsItem.Font.Color := clGrayText;
    end;
end;

procedure TfrmMovInt.gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if not odd(cdsItensMovInt.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
     gdrItens.Canvas.Brush.Color := clWhite;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

function TfrmMovInt.MyLocateItem(chave1: string): Boolean;
begin
  Result := False;
  cdsItensMovInt.First;
  while not(cdsItensMovInt.Eof) do
  begin
    if cdsItensMovIntIDPROD_ITEM.AsString = chave1 then
    begin
      Result := True;
      Break;
    end;
    cdsItensMovInt.Next;
  end;
end;

procedure TfrmMovInt.PesquisarItem(itemCodigo: string);
var
  tempIDItem: Integer;
begin

  if cdsItensMovInt.State = dsInsert then
    cdsItensMovInt.Cancel;

  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PI.*, PIE.* FROM PRODUTO_ITEM PI, PRODUTO_ITEM_ESTOQUE PIE');
    SQL.Add('WHERE ((PI.COD_FABRICA = UPPER(:COD_FABRICA)) OR (PI.REFERENCIA = UPPER(:COD_FABRICA))) AND PIE.IDITEM = PI.ID AND PIE.IDFILIAL = :IDFILIAL');
    ParamByName('COD_FABRICA').AsString := itemCodigo;
    ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
    Prepare;
    ExecQuery;
  end;

  if qrySql.RecordCount = 0 then
  begin
    Try
      frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
      frmPesqProdutoItens.ShowModal;

    Finally
      if frmPesqProdutoItens.ModalResult = mrOk then
      begin
        tempIDItem := frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
        // if (cdsItensMovInt.Locate('IDPROD_ITEM', IntToStr(tempIDItem), [])) then
        if MyLocateItem(IntToStr(tempIDItem)) then
        begin
          Case MessageBox(Application.Handle,
            Pchar('Este item j� foi incluso na Movimenta��o, deseja duplic�-lo?'),
            'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            IDNO:
              begin
                cdsItensMovInt.Cancel;
                ControlaBtnsItens;
                btnItensIncluir.SetFocus;
                Abort;
              end;
          end;
        end;

        cdsItensMovInt.Append;
        cdsItensMovIntIDPROD_ITEM.AsInteger := tempIDItem;
        cdsItensMovIntPREC_VENDA.AsFloat :=
          frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
        cdsItensMovIntPREC_CUSTO.AsFloat :=
          frmPesqProdutoItens.fdsProdutoItensPREC_CUSTO.AsFloat;
        cdsItensMovIntMARGEM_LUCRO.AsFloat :=
          frmPesqProdutoItens.fdsProdutoItensMARGEM_LUCRO.AsFloat;
        cdsItensMovIntPESO.AsFloat :=
          frmPesqProdutoItens.fdsProdutoItensPESO.AsFloat;
        cdsItensMovIntPRODUTO.AsString :=
          frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
        cdsItensMovIntIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        cdsItensMovIntENVIADO_WEB.AsString := 'N';
        cdsItensMovIntCOD_FABRICA.AsString :=
          frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        edtItemCodigo.Text :=
          frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;

        edtPrecCusto.SetFocus;

      end
      else
      begin
        btnItemCancelar.Click;
      end;
      frmPesqProdutoItens.Free;

    End;
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
            cdsItensMovInt.Cancel;
            ControlaBtnsItens;
            btnItensIncluir.SetFocus;
            Abort;
          end;
      end;
    end;

    cdsItensMovInt.Append;
    cdsItensMovIntIDPROD_ITEM.AsInteger := tempIDItem;
    cdsItensMovIntPREC_VENDA.AsFloat :=
      qrySql.FieldByName('PREC_VENDA').AsFloat;
    cdsItensMovIntPREC_CUSTO.AsFloat :=
      qrySql.FieldByName('PREC_CUSTO').AsFloat;
    cdsItensMovIntMARGEM_LUCRO.AsFloat :=
      qrySql.FieldByName('MARGEM_LUCRO').AsFloat;
    cdsItensMovIntPESO.AsFloat := qrySql.FieldByName('PESO').AsFloat;
    cdsItensMovIntPRODUTO.AsString := qrySql.FieldByName('NOME').AsString;
    cdsItensMovIntIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsItensMovIntENVIADO_WEB.AsString := 'N';
    cdsItensMovIntCOD_FABRICA.AsString := itemCodigo;
    edtItemCodigo.Text := itemCodigo;

    edtPrecCusto.SetFocus;

  end;
end;

procedure TfrmMovInt.PreencheCbxTipo;
begin
  cbxPrefixo.AddItemValue('ENTRADA - ESTOQUE REAL', 'ER');
  cbxPrefixo.AddItemValue('SA�DA - ESTOQUE REAL', 'SR');
  cbxPrefixo.AddItemValue('TRANSFER�NCIA - ESTOQUE REAL', 'TR');
  if DM.fdsConfigESTOQUE_GERENCIAL.AsString = 'S' then
  begin
    cbxPrefixo.AddItemValue('ENTRADA - ESTOQUE GERENCIAL', 'EG');
    cbxPrefixo.AddItemValue('SA�DA - ESTOQUE GERENCIAL', 'SG');
  end;
  if DM.fdsConfigESTOQUE_CONSUMO.AsString='S' then
  begin
    cbxPrefixo.AddItemValue('ENTRADA - ESTOQUE CONSUMO', 'EC');
    cbxPrefixo.AddItemValue('SA�DA - ESTOQUE CONSUMO', 'SC');
    cbxPrefixo.AddItemValue('TRANSFER�NCIA - ESTOQUE REAL/ESTOQUE CONSUMO', 'TE');
    cbxPrefixo.AddItemValue('TRANSFER�NCIA - ESTOQUE CONSUMO/ESTOQUE REAL', 'TC');
  end;
end;

procedure TfrmMovInt.RetornaItensMovimento;
begin
  if fdsMovInt.RecordCount > 0 then
  begin
    with fdsItensMovInt do
    begin
      cdsItensMovInt.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDMOV', 'IDMOV =' + fdsMovIntID.AsString, True);
      Conditions.AddCondition('IDFILIAL',
        'IDFILIAL =' + fdsMovIntIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsItensMovInt.Open;
      cdsItensMovInt.First;
    end;
  end;
end;

procedure TfrmMovInt.tbsFormShow(Sender: TObject);
begin
  if not(fdsMovInt.State in [dsInsert, dsEdit]) then
  begin
    RetornaItensMovimento;

    edtItemCodigo.Text := cdsItensMovIntCOD_FABRICA.AsString;

    if fdsMovIntOBS.AsString = EmptyStr then
    begin
      mmoObs.Text := 'Observa��o';
      mmoObs.Font.Color := clGray;
    end
    else
    begin
      mmoObs.Text := fdsMovIntOBS.AsString;
      mmoObs.Font.Color := clWindowText;
    end;

    if cdsItensMovIntOBS.AsString = EmptyStr then
    begin
      mmoObsItem.Text := 'Observa��o';
      mmoObsItem.Font.Color := clGray;
    end
    else
    begin
      mmoObsItem.Text := fdsMovIntOBS.AsString;
      mmoObsItem.Font.Color := clWindowText;
    end;

  end;
end;

end.
