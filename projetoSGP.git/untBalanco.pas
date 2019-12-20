unit untBalanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  RzEdit, Vcl.StdCtrls, Vcl.Mask, RzDBEdit, RzPanel, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzTabs, RzBckgnd, RzButton, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, Datasnap.Provider,
  pFIBClientDataSet, Datasnap.DBClient, pFIBProps, FIBQuery, pFIBQuery,
  RzPrgres, uContador2,
  RzCmboBx, RzDBCmbo;

type
  TfrmBalanco = class(TForm)
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
    RzBackground1: TRzBackground;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    gdrMovimentacao: TJvDBGrid;
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
    RzLabel24: TRzLabel;
    RzLabel23: TRzLabel;
    edtQtnItem: TRzDBEdit;
    btnItemGravar: TRzBitBtn;
    btnItemCancelar: TRzBitBtn;
    btnItemExcluir: TRzBitBtn;
    btnItemAlterar: TRzBitBtn;
    btnItensIncluir: TRzBitBtn;
    edtItemNome: TRzDBEdit;
    edtItemCodigo: TRzEdit;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnConfirmaRecebimento: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    fdsBalancoItens: TpFIBDataSet;
    dsBalanco: TDataSource;
    dsBalancoItens: TDataSource;
    cdsBalancoItens: TpFIBClientDataSet;
    dspBalancoItens: TpFIBDataSetProvider;
    cdsBalanco: TpFIBClientDataSet;
    btnCarregarXML: TRzBitBtn;
    cdsBalancoID: TpFIBClientBCDField;
    cdsBalancoDT_INC: TDateField;
    cdsBalancoDT_ALT: TDateField;
    cdsBalancoDT_FECHAMENTO: TDateField;
    cdsBalancoIDFILIAL: TpFIBClientBCDField;
    cdsBalancoENVIADO_WEB: TStringField;
    cdsBalancoSTATUS: TStringField;
    fdsBalancoItensIDBALANCO: TFIBBCDField;
    fdsBalancoItensITEM: TFIBSmallIntField;
    fdsBalancoItensDT_INC: TFIBDateField;
    fdsBalancoItensIDPROD_ITEM: TFIBBCDField;
    fdsBalancoItensQTN: TFIBBCDField;
    fdsBalancoItensDT_ALT: TFIBDateField;
    fdsBalancoItensIDFILIAL: TFIBBCDField;
    fdsBalancoItensENVIADO_WEB: TFIBStringField;
    cdsBalancoItensIDBALANCO: TpFIBClientBCDField;
    cdsBalancoItensITEM: TSmallintField;
    cdsBalancoItensDT_INC: TDateField;
    cdsBalancoItensIDPROD_ITEM: TpFIBClientBCDField;
    cdsBalancoItensQTN: TpFIBClientBCDField;
    cdsBalancoItensDT_ALT: TDateField;
    cdsBalancoItensIDFILIAL: TpFIBClientBCDField;
    cdsBalancoItensENVIADO_WEB: TStringField;
    fdsBalancoItensCOD_FABRICA: TFIBStringField;
    cdsBalancoItensCOD_FABRICA: TStringField;
    fdsBalancoItensNOME: TFIBStringField;
    cdsBalancoItensNOME: TStringField;
    RzLabel2: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    fdsBalancoItensDIFERENCA: TFIBBCDField;
    fdsBalancoItensSALDO_ATUAL: TFIBBCDField;
    cdsBalancoItensDIFERENCA: TpFIBClientBCDField;
    cdsBalancoItensSALDO_ATUAL: TpFIBClientBCDField;
    qrySql: TpFIBQuery;
    RzLabel4: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    fdsBalanco: TpFIBDataSet;
    fdsBalancoID: TFIBBCDField;
    fdsBalancoDT_INC: TFIBDateField;
    fdsBalancoDT_ALT: TFIBDateField;
    fdsBalancoDT_FECHAMENTO: TFIBDateField;
    fdsBalancoIDFILIAL: TFIBBCDField;
    fdsBalancoENVIADO_WEB: TFIBStringField;
    fdsBalancoSTATUS: TFIBStringField;
    fdsBalancoST: TFIBStringField;
    fdsBalancoFILIAL: TFIBStringField;
    cdsBalancoFILIAL: TStringField;
    fdsProdutoItens: TpFIBDataSet;
    fdsProdutoItensID: TFIBBCDField;
    fdsProdutoItensSALDO: TFIBBCDField;
    pnlProgresso: TRzGroupBox;
    pgbProgresso: TRzProgressBar;
    RzDBComboBox1: TRzDBComboBox;
    fdsBalancoTIPO: TFIBStringField;
    cdsBalancoTIPO: TStringField;
    procedure EditaInsere;
    procedure GravaCancela;
    procedure ControlaBtnsItens;
    procedure GravaCDSBalanco;
    procedure RetornaBalancoItens;
    procedure FinalizaBalanco;
    procedure IniciaContador;
    procedure TerminaContador;
    procedure PesquisarItem(itemCodigo: string);
    function MyLocateItem(chave1: string): Boolean;
    procedure InsereProdNLancados;
    procedure btnItensIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsBalancoItensAfterScroll(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnItemAlterarClick(Sender: TObject);
    procedure btnItemCancelarClick(Sender: TObject);
    procedure btnItemExcluirClick(Sender: TObject);
    procedure btnItemGravarClick(Sender: TObject);
    procedure edtItemCodigoExit(Sender: TObject);
    procedure fdsBalancoAfterScroll(DataSet: TDataSet);
    procedure tbsFormShow(Sender: TObject);
    procedure btnConfirmaRecebimentoClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCarregarXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanco: TfrmBalanco;
  TrheadContador: TContador2;
  alterandoIten: Boolean;
  tempo: Integer;

implementation

{$R *.dfm}

uses untData, untPesqProdutoItens, uUtils;

procedure TfrmBalanco.btnAlterarClick(Sender: TObject);
begin
  if fdsBalancoSTATUS.AsString <> 'AB' then
  begin
    Application.MessageBox
      ('Este Balan�o n�o est� mais aberto, voc� n�o pode mais alter�-lo.',
      'N�o Permitido', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  fdsBalancoItens.Close;
  cdsBalancoItens.Close;
  cdsBalancoItens.Open;
  cdsBalancoItens.EmptyDataSet;

  cdsBalanco.Close;
  cdsBalanco.Open;
  cdsBalanco.EmptyDataSet;

  fdsBalanco.Edit;
  fdsBalancoDT_ALT.AsDateTime := Now;
  EditaInsere;
  btnItemAlterar.Enabled := False;
  btnItemExcluir.Enabled := False;
  RetornaBalancoItens;

  cdsBalanco.Append;
  GravaCDSBalanco;
end;

procedure TfrmBalanco.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente abandonar o lan�amento atual?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsBalanco.Cancel;
        DM.Conexao.RollbackRetaining;
        GravaCancela;
      end;
  end;
end;

procedure TfrmBalanco.btnCarregarXMLClick(Sender: TObject);
begin
  fdsBalanco.Close;
  fdsBalanco.AutoUpdateOptions.WhenGetGenID := wgNever;
  fdsBalanco.Open;
  cdsBalanco.Open;
  cdsBalanco.EmptyDataSet;
  cdsBalanco.LoadFromFile('TempBalanco.xml');

  if fdsBalanco.Locate('ID; IDFILIAL',
    VarArrayOf([cdsBalancoID.AsInteger, cdsBalancoIDFILIAL.AsInteger]), []) then
  begin
    Application.MessageBox
      ('O �ltimo Balan�o n�o foi apagado ainda, ent�o, n�o pode ser recuperado.',
      'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    GravaCancela;
    Abort;
  end;

  fdsBalanco.Append;
  fdsBalancoID.AsInteger := cdsBalancoID.AsInteger;
  fdsBalancoDT_INC.AsDateTime := cdsBalancoDT_INC.AsDateTime;
  fdsBalancoDT_ALT.AsDateTime := Now;
  fdsBalancoIDFILIAL.AsInteger := cdsBalancoIDFILIAL.AsInteger;
  fdsBalancoFILIAL.AsString := cdsBalancoFILIAL.AsString;
  fdsBalancoSTATUS.AsString := cdsBalancoSTATUS.AsString;
  fdsBalanco.Post;

  DM.Conexao.CommitRetaining;

  fdsBalancoItens.Open;
  cdsBalancoItens.Open;
  cdsBalancoItens.EmptyDataSet;
  cdsBalancoItens.LoadFromFile('TempBalancoItens.xml');
  cdsBalancoItens.First;

  while not(cdsBalancoItens.Eof) do
  begin
    fdsBalancoItens.Append;
    fdsBalancoItensIDBALANCO.AsInteger := cdsBalancoItensIDBALANCO.AsInteger;
    fdsBalancoItensITEM.AsInteger := cdsBalancoItensITEM.AsInteger;
    fdsBalancoItensDT_INC.AsDateTime := cdsBalancoItensDT_INC.AsDateTime;
    fdsBalancoItensIDPROD_ITEM.AsInteger :=
      cdsBalancoItensIDPROD_ITEM.AsInteger;
    fdsBalancoItensQTN.AsFloat := cdsBalancoItensQTN.AsFloat;
    fdsBalancoItensDT_ALT.AsFloat := cdsBalancoItensDT_ALT.AsFloat;
    fdsBalancoItensIDFILIAL.AsInteger := cdsBalancoItensIDFILIAL.AsInteger;
    fdsBalancoItensCOD_FABRICA.AsString := cdsBalancoItensCOD_FABRICA.AsString;
    fdsBalancoItensDIFERENCA.AsFloat := cdsBalancoItensDIFERENCA.AsFloat;
    fdsBalancoItensSALDO_ATUAL.AsFloat := cdsBalancoItensSALDO_ATUAL.AsFloat;
    fdsBalancoItens.Post;
    cdsBalancoItens.Next;
  end;

  DM.Conexao.CommitRetaining;

  fdsBalanco.Edit;
  fdsBalancoItens.First;
  cdsBalancoItens.First;
  EditaInsere;
end;

procedure TfrmBalanco.btnConfirmaRecebimentoClick(Sender: TObject);
var
  continuar, zerarSaldo: Boolean;
  mensagem: string;
begin
  continuar := False;
  zerarSaldo := False;

  if (fdsBalancoTIPO.AsString = 'GR') then
    mensagem :=
      'Deseja realmente finalizar este balan�o no Estoque Gerencial? O estoque ser� alterado, n�o ser� poss�vel desfazer a opera��o!'
  else
    mensagem :=
      'Deseja realmente finalizar este balan�o no Estoque Real? O estoque ser� alterado, n�o ser� poss�vel desfazer a opera��o!';

  Case MessageBox(Application.Handle, Pchar(mensagem), 'Aten��o',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) of
    idYes:
      begin
        continuar := True;
      end;
  end;

  if continuar then
  begin
    fdsBalanco.Edit;
    fdsBalancoDT_FECHAMENTO.AsDateTime := Now;
    fdsBalancoSTATUS.AsString := 'FC';
    fdsBalanco.Post;
    DM.Conexao.CommitRetaining;

    Case MessageBox(Application.Handle,
      Pchar('Deseja ZERAR o SALDO dos produtos N�O LAN�ADOS no balan�o?'),
      'Aten��o', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) of
      idYes:
        begin
          zerarSaldo := True;
        end;
    end;

    IniciaContador;

    if zerarSaldo then
      InsereProdNLancados;

    FinalizaBalanco;
  end;

  TerminaContador;
  GravaCancela;

end;

procedure TfrmBalanco.btnDeleteClick(Sender: TObject);
begin
  if fdsBalancoSTATUS.AsString <> 'AB' then
  begin
    Application.MessageBox
      ('Este Balan�o n�o est� mais aberto, voc� n�o pode Exclu�-lo.',
      'N�o Permitido', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir este Balan�o?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        cdsBalancoItens.Close;
        cdsBalancoItens.Open;
        cdsBalancoItens.EmptyDataSet;

        cdsBalanco.Close;
        cdsBalanco.Open;
        cdsBalanco.EmptyDataSet;

        cdsBalanco.Append;
        GravaCDSBalanco;

        RetornaBalancoItens;
        cdsBalancoItens.SaveToFile('TempBalancoItens.xml', dfXML);

        with qrySql do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM BALANCO_ITEM WHERE IDBALANCO = :IDBALANCO AND IDFILIAL = :IDFILIAL');
          ParamByName('IDBALANCO').AsInteger := fdsBalancoID.AsInteger;
          ParamByName('IDFILIAL').AsInteger := fdsBalancoIDFILIAL.AsInteger;
          Prepare;
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM BALANCO WHERE ID = :IDBALANCO AND IDFILIAL = :IDFILIAL');
          ParamByName('IDBALANCO').AsInteger := fdsBalancoID.AsInteger;
          ParamByName('IDFILIAL').AsInteger := fdsBalancoIDFILIAL.AsInteger;
          Prepare;
          ExecQuery;
        end;

        DM.Conexao.CommitRetaining;
        fdsBalanco.Refresh;

        Application.MessageBox
          ('Balan�o apagado com Sucesso, enquanto voc� n�o alterar ou iniciar um novo balan�o, voc� poder� recuperar este balan�o atrav�s do bot�o recurepa��o.',
          'Opera��o realizada', MB_OK + MB_ICONEXCLAMATION);
        GravaCancela;
      end;
  end;
end;

procedure TfrmBalanco.btnFirstClick(Sender: TObject);
begin
  fdsBalanco.Prior;
end;

procedure TfrmBalanco.btnGravarClick(Sender: TObject);
var
  utils: TUtils;
  i: Smallint;
begin

  if not(alterandoIten) then
  begin
    Application.MessageBox
      ('Voc� est� incluindo ou alterando um item, grave a inclus�o/altera��o deste primeiro e depois grave o pedido.',
      'Ante��o', MB_OK + MB_ICONERROR);
    edtQtnItem.SetFocus;
    Abort;
  end;

  if cdsBalancoItens.RecordCount = 0 then
  begin
    Application.MessageBox('Voc� n�o pode gravar um Balan�o sem itens.',
      'Ante��o', MB_OK + MB_ICONERROR);
    btnItensIncluir.SetFocus;
    Abort;
  end;

  fdsBalanco.Post;
  DM.Conexao.CommitRetaining;

  // fdsBalancoItens.Open;
  // cdsBalancoItens.First;

  cdsBalancoItens.ApplyUpdates(0);

  DM.Conexao.CommitRetaining;

  cdsBalancoItens.EmptyDataSet;
  cdsBalancoItens.SaveToFile('TempBalancoItens.xml', dfXML);
  cdsBalancoItens.EmptyDataSet;
  cdsBalanco.SaveToFile('TempBalanco.xml', dfXML);

  GravaCancela;

end;

procedure TfrmBalanco.btnIncluirClick(Sender: TObject);
begin
  fdsBalancoItens.Close;
  cdsBalancoItens.Close;
  cdsBalancoItens.Open;
  cdsBalancoItens.EmptyDataSet;

  cdsBalanco.Close;
  cdsBalanco.Open;
  cdsBalanco.EmptyDataSet;

  fdsBalanco.Append;
  fdsBalancoIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsBalancoTIPO.AsString := 'RL';
  EditaInsere;
  fdsBalancoItens.Open;
  btnItemAlterar.Enabled := False;
  btnItemExcluir.Enabled := False;
  edtItemCodigo.Clear;

  cdsBalanco.Append;
  GravaCDSBalanco;
end;

procedure TfrmBalanco.btnItemAlterarClick(Sender: TObject);
begin
  cdsBalancoItens.Edit;
  edtQtnItem.SetFocus;
  ControlaBtnsItens;
end;

procedure TfrmBalanco.btnItemCancelarClick(Sender: TObject);
begin
  cdsBalancoItens.Cancel;
  ControlaBtnsItens;
  btnItensIncluir.SetFocus;
end;

procedure TfrmBalanco.btnItemExcluirClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir este item do balan�o?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        cdsBalancoItens.Delete;
        cdsBalancoItens.SaveToFile('TempBalancoItens.xml', dfXML);
      end;
  end;
end;

procedure TfrmBalanco.btnItemGravarClick(Sender: TObject);
begin
  if (Trim(edtQtnItem.Text) = EmptyStr) or (cdsBalancoItensQTN.AsInteger < 0)
  then
  begin
    edtQtnItem.SetFocus;
    Abort;
  end;

  cdsBalancoItensDIFERENCA.AsFloat := cdsBalancoItensSALDO_ATUAL.AsFloat -
    cdsBalancoItensQTN.AsFloat;

  cdsBalancoItens.Post;
  ControlaBtnsItens;

  cdsBalancoItens.SaveToFile('TempBalancoItens.xml', dfXML);

  btnItensIncluir.SetFocus;
end;

procedure TfrmBalanco.btnItensIncluirClick(Sender: TObject);
begin
  edtItemCodigo.Clear;
  cdsBalancoItens.Append;
  ControlaBtnsItens;
  edtItemCodigo.SetFocus;
end;

procedure TfrmBalanco.btnLastClick(Sender: TObject);
begin
  fdsBalanco.Last;
end;

procedure TfrmBalanco.btnNextClick(Sender: TObject);
begin
  fdsBalanco.Next;
end;

procedure TfrmBalanco.btnPriorClick(Sender: TObject);
begin
  fdsBalanco.First;
end;

procedure TfrmBalanco.cdsBalancoItensAfterScroll(DataSet: TDataSet);
begin
  edtItemCodigo.Text := cdsBalancoItensCOD_FABRICA.AsString;
end;

procedure TfrmBalanco.ControlaBtnsItens;
begin
  btnItemCancelar.Enabled := alterandoIten;
  btnItemGravar.Enabled := alterandoIten;
  btnItensIncluir.Enabled := not(alterandoIten);
  btnItemAlterar.Enabled := not(alterandoIten);
  btnItemExcluir.Enabled := not(alterandoIten);
  alterandoIten := not(alterandoIten);
end;

procedure TfrmBalanco.EditaInsere;
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
  btnItensIncluir.SetFocus;
end;

procedure TfrmBalanco.edtItemCodigoExit(Sender: TObject);
begin
  if cdsBalancoItens.State in [dsInsert] then
    PesquisarItem(edtItemCodigo.Text);
end;

procedure TfrmBalanco.fdsBalancoAfterScroll(DataSet: TDataSet);
begin
  if not(fdsBalanco.State in [dsInsert, dsEdit]) then
  begin
    if pgcControl.ActivePageIndex = 1 then
    begin
      RetornaBalancoItens;
    end;

    if (fdsBalancoSTATUS.AsString = 'AB') then
    begin
      btnConfirmaRecebimento.Visible := True;
    end
    else
      btnConfirmaRecebimento.Visible := False;
  end;
end;

procedure TfrmBalanco.FinalizaBalanco;
begin
  frmBalanco.Cursor := crSQLWait;
  RetornaBalancoItens;

  while not(cdsBalancoItens.Eof) do
  begin
    with qrySql do
    begin
      Close;
      SQL.Clear;

      if (fdsBalancoTIPO.AsString = 'GR') then
      begin
        SQL.Add('EXECUTE PROCEDURE gera_mov_item_gerencial(' +
          cdsBalancoItensIDPROD_ITEM.AsString + ', ' +
          cdsBalancoItensIDFILIAL.AsString + ', ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', Now)) + ', ');
        SQL.Add(QuotedStr('BALAN�O - REAL') + ', ' +
          cdsBalancoItensIDBALANCO.AsString + ', ' + QuotedStr('B') + ', ' +
          ':QTN, ' + cdsBalancoItensIDFILIAL.AsString + ')');
          ParamByName('QTN').AsFloat:= cdsBalancoItensQTN.AsFloat;
      end
      else
      begin
        SQL.Add('EXECUTE PROCEDURE gera_mov_item(' +
          cdsBalancoItensIDPROD_ITEM.AsString + ', ' +
          cdsBalancoItensIDFILIAL.AsString + ', ' +
          QuotedStr(FormatDateTime('MM/DD/YYYY', Now)) + ', ');
        SQL.Add(QuotedStr('BALAN�O - GERENCIAL') + ', ' +
          cdsBalancoItensIDBALANCO.AsString + ', ' + QuotedStr('B') + ', ' +
          ':QTN, ' + cdsBalancoItensIDFILIAL.AsString + ')');
          ParamByName('QTN').AsFloat:= cdsBalancoItensQTN.AsFloat;
      end;
      Prepare;
      ExecQuery;
    end;

    cdsBalancoItens.Next;
  end;
  DM.Conexao.CommitRetaining;
  frmBalanco.Cursor := crDefault;
end;

procedure TfrmBalanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdsBalanco.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele o lan�amento do balan�o antes de sair.', 'Aten��o',
      MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    Action := caFree;
    frmBalanco := nil;
  end;
end;

procedure TfrmBalanco.FormCreate(Sender: TObject);
begin
  tbsTabela.Show;
  // cdsItensMovInt.CreateDataSet;
  fdsBalanco.Open;
  cdsBalanco.CreateDataSet;
  alterandoIten := False;
end;

procedure TfrmBalanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmBalanco.GravaCancela;
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
  fdsBalancoItens.Close;
  fdsBalanco.Close;
  fdsBalanco.AutoUpdateOptions.WhenGetGenID := wgOnNewRecord;
  fdsBalanco.Open;
  fdsBalanco.Last;
end;

procedure TfrmBalanco.GravaCDSBalanco;
begin
  cdsBalancoID.AsInteger := fdsBalancoID.AsInteger;
  cdsBalancoIDFILIAL.AsInteger := fdsBalancoIDFILIAL.AsInteger;
  cdsBalancoDT_INC.AsDateTime := fdsBalancoDT_INC.AsDateTime;
  cdsBalancoDT_ALT.AsDateTime := fdsBalancoDT_ALT.AsDateTime;
  cdsBalancoSTATUS.AsString := fdsBalancoSTATUS.AsString;
  cdsBalancoFILIAL.AsString := fdsBalancoFILIAL.AsString;
  cdsBalancoTIPO.AsString := fdsBalancoTIPO.AsString;
  cdsBalanco.Post;
  cdsBalanco.SaveToFile('TempBalanco.xml', dfXML);
end;

procedure TfrmBalanco.IniciaContador;
begin
  tempo := 0;
  pnlProgresso.Visible := True;
  pgbProgresso.Percent := 0;
  TrheadContador := TContador2.Create(True);
  // TrheadContador.FreeOnTerminate := True;
  TrheadContador.Resume;
end;

procedure TfrmBalanco.InsereProdNLancados;
begin
  with fdsProdutoItens do
  begin
    Close;
    ParamByName('IDBALANCO').AsInteger := fdsBalancoID.AsInteger;
    ParamByName('IDFILIAL').AsInteger := fdsBalancoIDFILIAL.AsInteger;
    Prepare;
    Open;
    First;
  end;

  while not(fdsProdutoItens.Eof) do
  begin
    qrySql.Close;
    qrySql.SQL.Clear;
    qrySql.SQL.Add
      ('INSERT INTO BALANCO_ITEM(IDBALANCO, DT_INC, IDPROD_ITEM, QTN, ');
    qrySql.SQL.Add('IDFILIAL, DIFERENCA, SALDO_ATUAL) VALUES(');
    qrySql.SQL.Add(':IDBALANCO, :DT_INC, :IDPROD_ITEM, :QTN, ');
    qrySql.SQL.Add(':IDFILIAL, :DIFERENCA, :SALDO_ATUAL)');

    qrySql.ParamByName('IDBALANCO').AsInteger := fdsBalancoID.AsInteger;
    qrySql.ParamByName('DT_INC').AsDateTime := Now;
    qrySql.ParamByName('IDPROD_ITEM').AsInteger := fdsProdutoItensID.AsInteger;
    qrySql.ParamByName('QTN').AsFloat := 0;
    qrySql.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    qrySql.ParamByName('SALDO_ATUAL').AsFloat := fdsProdutoItensSALDO.AsFloat;
    qrySql.ParamByName('DIFERENCA').AsFloat := fdsProdutoItensSALDO.AsFloat - 0;
    qrySql.Prepare;
    qrySql.ExecQuery;
    fdsProdutoItens.Next;
  end;

  DM.Conexao.CommitRetaining;

end;

function TfrmBalanco.MyLocateItem(chave1: string): Boolean;
begin
  Result := False;
  cdsBalancoItens.First;
  while not(cdsBalancoItens.Eof) do
  begin
    if cdsBalancoItensIDPROD_ITEM.AsString = chave1 then
    begin
      Result := True;
      Break;
    end;
    cdsBalancoItens.Next;
  end;
end;

procedure TfrmBalanco.PesquisarItem(itemCodigo: string);
var
  tempIDItem: Integer;
begin

  if cdsBalancoItens.State = dsInsert then
    cdsBalancoItens.Cancel;

  with qrySql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PI.*, PIE.SALDO, PIE.SALDO_GERENCIAL FROM PRODUTO_ITEM PI, PRODUTO_ITEM_ESTOQUE PIE WHERE PI.COD_FABRICA = :COD_FABRICA');
    ParamByName('COD_FABRICA').AsString := itemCodigo;
    SQL.Add(' AND PIE.IDITEM = PI.ID');
    SQL.Add(' AND PIE.IDFILIAL = :IDFILIAL');
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
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
          Application.MessageBox('Este item j� foi incluso no Balan�o',
            'Aten��o', MB_OK + MB_ICONEXCLAMATION);
          cdsBalancoItens.Cancel;
          ControlaBtnsItens;
          btnItensIncluir.SetFocus;
          Abort;
        end;

        cdsBalancoItens.Append;
        cdsBalancoItensIDBALANCO.AsInteger := fdsBalancoID.AsInteger;
        cdsBalancoItensIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        cdsBalancoItensIDPROD_ITEM.AsInteger := tempIDItem;
        cdsBalancoItensNOME.AsString :=
          frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
        cdsBalancoItensENVIADO_WEB.AsString := 'N';
        cdsBalancoItensCOD_FABRICA.AsString :=
          frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        cdsBalancoItensQTN.AsFloat := 0;
        cdsBalancoItensDIFERENCA.AsFloat := 0;

        if (fdsBalancoTIPO.AsString = 'GR') then
          cdsBalancoItensSALDO_ATUAL.AsFloat :=
            frmPesqProdutoItens.fdsProdutoItensSALDO_GERENCIAL.AsFloat
        else
          cdsBalancoItensSALDO_ATUAL.AsFloat :=
            frmPesqProdutoItens.fdsProdutoItensSALDO.AsFloat;

        edtItemCodigo.Text :=
          frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        edtQtnItem.SetFocus;
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
            cdsBalancoItens.Cancel;
            ControlaBtnsItens;
            btnItensIncluir.SetFocus;
            Abort;
          end;
      end;
    end;

    cdsBalancoItens.Append;
    cdsBalancoItensIDBALANCO.AsInteger := fdsBalancoID.AsInteger;
    cdsBalancoItensIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    cdsBalancoItensIDPROD_ITEM.AsInteger := tempIDItem;
    cdsBalancoItensNOME.AsString := qrySql.FieldByName('NOME').AsString;
    cdsBalancoItensENVIADO_WEB.AsString := 'N';
    cdsBalancoItensCOD_FABRICA.AsString :=
      qrySql.FieldByName('COD_FABRICA').AsString;
    cdsBalancoItensQTN.AsFloat := 0;
    cdsBalancoItensDIFERENCA.AsFloat := 0;

    if (fdsBalancoTIPO.AsString = 'GR') then
      cdsBalancoItensSALDO_ATUAL.AsFloat :=
        qrySql.FieldByName('SALDO_GERENCIAL').AsFloat
    else
      cdsBalancoItensSALDO_ATUAL.AsFloat := qrySql.FieldByName('SALDO').AsFloat;

    edtItemCodigo.Text := cdsBalancoItensCOD_FABRICA.AsString;
    edtQtnItem.SetFocus;
  end;
end;

procedure TfrmBalanco.RetornaBalancoItens;
begin
  if fdsBalanco.RecordCount > 0 then
  begin
    with fdsBalancoItens do
    begin
      cdsBalancoItens.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDBALANCO',
        'IDBALANCO =' + fdsBalancoID.AsString, True);
      Conditions.AddCondition('IDFILIAL',
        'IDFILIAL =' + fdsBalancoIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsBalancoItens.Open;
      cdsBalancoItens.First;
    end;
  end;
end;

procedure TfrmBalanco.tbsFormShow(Sender: TObject);
begin
  if not(fdsBalanco.State in [dsInsert, dsEdit]) then
  begin
    RetornaBalancoItens;
  end;
end;

procedure TfrmBalanco.TerminaContador;
begin
  TrheadContador.Terminate();
  pnlProgresso.Visible := False;
  pgbProgresso.Percent := 100;
  tempo := 0;
end;

end.