unit untOrdemServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, RzPanel, RzRadGrp, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, RzBckgnd, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzTabs,
  RzCmboBx, RzDBCmbo, RzDBEdit, Vcl.DBCtrls, Data.DB, FIBDataSet, pFIBDataSet,
  Datasnap.DBClient, Datasnap.Provider, pFIBClientDataSet, FIBQuery, pFIBQuery,
  dxGDIPlusClasses, JvExDBGrids, JvDBGrid;

type
  TfrmOrdemServico = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    imgFlagYellow: TImage;
    imgFlagRed: TImage;
    imgFlagGreen: TImage;
    imgFlagYellow2: TImage;
    imgFlagRed2: TImage;
    imgFlagGreen2: TImage;
    imgFlagBlue: TImage;
    imgFlagBlue2: TImage;
    rgbPosicao1: TRzRadioGroup;
    RzPanel2: TRzPanel;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnImprimir: TRzBitBtn;
    btnIncluir: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnCanelarOS: TRzBitBtn;
    pgcControle: TRzPageControl;
    tbsOS: TRzTabSheet;
    tbsDetalhamento: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    lblCodigo: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel1: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    grdTecnicos: TRzDBGrid;
    btnTecnicoIncluir: TRzBitBtn;
    btnGrupoExcluir: TRzBitBtn;
    RzGroupBox3: TRzGroupBox;
    btnPesqCliente: TRzBitBtn;
    btnIncVeiculo: TRzBitBtn;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    RzLabel9: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    RzGroupBox4: TRzGroupBox;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzGroupBox5: TRzGroupBox;
    RzGroupBox6: TRzGroupBox;
    RzDBMemo1: TRzDBMemo;
    RzDBMemo2: TRzDBMemo;
    RzGroupBox7: TRzGroupBox;
    RzGroupBox8: TRzGroupBox;
    RzDBGrid1: TRzDBGrid;
    btnServicoIncluir: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzDBGrid2: TRzDBGrid;
    btnProdutoIncluir: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    pnlTotalizadores: TRzGroupBox;
    lblTotAberto: TRzLabel;
    RzLabel12: TRzLabel;
    lblTituloTotal: TRzLabel;
    lblTotFinalizado: TRzLabel;
    pnlValores: TRzGroupBox;
    lblTotalProdutos: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    lblTotalServicos: TRzLabel;
    RzLabel15: TRzLabel;
    lblTotalPagar: TRzLabel;
    fdsOS: TpFIBDataSet;
    fdsVeiculos: TpFIBDataSet;
    fdsOS_Tecnicos: TpFIBDataSet;
    fdsOS_Servicos: TpFIBDataSet;
    fdsOS_ProdItem: TpFIBDataSet;
    fdsOSID: TFIBBCDField;
    fdsOSIDCLIENTE: TFIBBCDField;
    fdsOSCLIENTE: TFIBStringField;
    fdsOSIDVEICULO: TFIBBCDField;
    fdsOSDT_INC: TFIBDateField;
    fdsOSDT_FECHAMENTO: TFIBDateField;
    fdsOSDESCRICAO_PROBLEMA: TFIBBlobField;
    fdsOSOBS_TECNICAS: TFIBBlobField;
    dsOS: TDataSource;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    dsOS_Tecnicos: TDataSource;
    cdsOS_Tecnicos: TClientDataSet;
    dspOS_Tecnicos: TDataSetProvider;
    fdsOSTELEFONE: TFIBStringField;
    fdsOSCELULAR: TFIBStringField;
    fdsOSEMAIL: TFIBStringField;
    dsVeiculos: TDataSource;
    fdsVeiculosID: TFIBBCDField;
    fdsVeiculosIDCLIENTE: TFIBBCDField;
    fdsVeiculosPLACA: TFIBStringField;
    fdsVeiculosMARCA: TFIBStringField;
    fdsVeiculosMODEO: TFIBStringField;
    fdsVeiculosCOR: TFIBStringField;
    fdsVeiculosANO: TFIBStringField;
    fdsVeiculosKM: TFIBIntegerField;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    dsOS_Servicos: TDataSource;
    fdsOS_ServicosIDOS: TFIBBCDField;
    fdsOS_ServicosIDSERVICO: TFIBBCDField;
    fdsOS_ServicosNOME: TFIBStringField;
    fdsOS_ServicosDT_INC: TFIBDateField;
    dsOS_ProdItem: TDataSource;
    fdsOS_ServicosPRECO: TFIBBCDField;
    fdsOS_ProdItemIDOS: TFIBBCDField;
    fdsOS_ProdItemIDPRODITEM: TFIBBCDField;
    fdsOS_ProdItemNOME: TFIBStringField;
    fdsOS_ProdItemPREC_VENDA: TFIBBCDField;
    fdsOS_ProdItemDT_INC: TFIBDateField;
    cdsOS_Servicos: TpFIBClientDataSet;
    dspOS_Servicos: TDataSetProvider;
    cdsOS_ServicosIDOS: TpFIBClientBCDField;
    cdsOS_ServicosIDSERVICO: TpFIBClientBCDField;
    cdsOS_ServicosNOME: TStringField;
    cdsOS_ServicosDT_INC: TDateField;
    cdsOS_ServicosPRECO: TpFIBClientBCDField;
    cdsOS_ProdItem: TpFIBClientDataSet;
    dspOS_ProdItem: TpFIBDataSetProvider;
    cdsOS_ProdItemIDOS: TpFIBClientBCDField;
    cdsOS_ProdItemIDPRODITEM: TpFIBClientBCDField;
    cdsOS_ProdItemNOME: TStringField;
    cdsOS_ProdItemPREC_VENDA: TpFIBClientBCDField;
    cdsOS_ProdItemDT_INC: TDateField;
    RzDBEdit14: TRzDBEdit;
    RzLabel18: TRzLabel;
    fdsOSSTATUS: TFIBStringField;
    fdsOS_TecnicosIDOS: TFIBBCDField;
    fdsOS_TecnicosIDTECNICO: TFIBBCDField;
    fdsOS_TecnicosDT_INC: TFIBDateField;
    fdsOS_TecnicosNOME: TFIBStringField;
    cdsOS_TecnicosIDOS: TBCDField;
    cdsOS_TecnicosIDTECNICO: TBCDField;
    cdsOS_TecnicosDT_INC: TDateField;
    cdsOS_TecnicosNOME: TStringField;
    qrySomatorio: TpFIBQuery;
    fdsOSVLR_SERVICOS: TFIBBCDField;
    fdsOSVLR_PRODUTOS: TFIBBCDField;
    fdsOSVLR_TOTAL: TFIBBCDField;
    gdrOS: TJvDBGrid;
    fdsOSPLACA: TFIBStringField;
    edtPesqPlaca: TRzEdit;
    RzLabel19: TRzLabel;
    btnPesqPlaca: TRzBitBtn;
    btnTodos: TRzBitBtn;
    btnFinalizar: TRzBitBtn;
    procedure tbsDetalhamentoShow(Sender: TObject);
    procedure tbsOSShow(Sender: TObject);
    procedure btnIncVeiculoClick(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fdsOSAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure EditaInsere;
    procedure GravaCancela;
    procedure RetornaItensOS;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnTecnicoIncluirClick(Sender: TObject);
    procedure btnGrupoExcluirClick(Sender: TObject);
    procedure btnServicoIncluirClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure btnProdutoIncluirClick(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure RetornaVeiculosCliente;
    procedure SomaTotalizadoresOS;
    procedure fdsOSAfterOpen(DataSet: TDataSet);
    procedure gdrOSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesqPlacaClick(Sender: TObject);
    procedure rgbPosicao1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure edtPesqPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure btnTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdemServico: TfrmOrdemServico;

implementation

{$R *.dfm}

uses untData, untPrincipal, untPesqCliente, uUtils, untPesqProdutoItens;

procedure TfrmOrdemServico.btnAlterarClick(Sender: TObject);
begin
  if fdsOSSTATUS.AsString = 'FC' then
    Application.MessageBox('Voc� n�o pode altera uma OS j� Fechada.',
      'OS Fechada', MB_OK + MB_ICONEXCLAMATION)
  else
  begin
    fdsOS.Edit;
    EditaInsere;
  end;

end;

procedure TfrmOrdemServico.btnCancelarClick(Sender: TObject);
begin
  fdsOS.Cancel;
  DM.conexao.RollbackRetaining;
  GravaCancela;
end;

procedure TfrmOrdemServico.btnFinalizarClick(Sender: TObject);
var
  problema: Boolean;
begin
  problema := False;

  if cdsOS_Tecnicos.RecordCount = 0 then
    problema := True;

  if cdsOS_Servicos.RecordCount = 0 then
    problema := True;

  if cdsOS_ProdItem.RecordCount = 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Nenhum Produto foi lan�ado nessa OS, deseja Gravar Assim Mesmo?'),
      'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      IDNO:
        begin
          Abort;
        end;
    End;
  end;

  if problema then
  begin
    Application.MessageBox
      ('Confira se voc� lan�ou ao menos 1 t�cnico e 1 servi�o nesta Ordem de Servi�o!',
      'Aten��o', MB_OK + MB_ICONWARNING);
  end
  else
  begin
    fdsOS.Edit;
    fdsOSDT_FECHAMENTO.AsDateTime := Now;
    fdsOSSTATUS.AsString := 'FE';
    fdsOS.Post;

    cdsOS_Tecnicos.ApplyUpdates(0);
    cdsOS_Servicos.ApplyUpdates(0);
    cdsOS_ProdItem.ApplyUpdates(0);

    DM.conexao.CommitRetaining;
  end;

end;

procedure TfrmOrdemServico.btnGravarClick(Sender: TObject);
begin
  fdsOS.Post;

  cdsOS_Tecnicos.ApplyUpdates(0);
  cdsOS_Servicos.ApplyUpdates(0);
  cdsOS_ProdItem.ApplyUpdates(0);

  DM.conexao.CommitRetaining;

  GravaCancela;
end;

procedure TfrmOrdemServico.btnGrupoExcluirClick(Sender: TObject);
begin
  cdsOS_Tecnicos.Delete;
end;

procedure TfrmOrdemServico.btnIncluirClick(Sender: TObject);
begin
  cdsOS_Tecnicos.EmptyDataSet;
  cdsOS_Servicos.EmptyDataSet;
  cdsOS_ProdItem.EmptyDataSet;
  fdsOS.Append;
  EditaInsere;
end;

procedure TfrmOrdemServico.btnIncVeiculoClick(Sender: TObject);
begin
  // Try
  // frmCadVeicCliente := TfrmCadVeicCliente.Create(nil);
  // frmCadVeicCliente.ShowModal;
  // Finally
  // begin
  // frmCadVeicCliente.Free;
  // RetornaVeiculosCliente;
  // end;
  // End;
end;

procedure TfrmOrdemServico.btnPesqClienteClick(Sender: TObject);
begin
  // try
  // frmPesqCliente := TfrmPesqCliente.Create(nil);
  // frmPesqCliente.ShowModal;
  // Finally
  // if frmPesqCliente.ModalResult = mrOk then
  // begin
  // fdsOSIDCLIENTE.AsInteger := frmPesqCliente.fdsClientesID.AsInteger;
  // fdsOSTELEFONE.AsString := frmPesqCliente.fdsClientesTELEFONE.AsString;
  // fdsOSCELULAR.AsString := frmPesqCliente.fdsClientesCELULAR.AsString;
  // fdsOSEMAIL.AsString := frmPesqCliente.fdsClientesEMAIL.AsString;
  // RetornaVeiculosCliente;
  // btnIncVeiculo.SetFocus;
  // end;
  // frmPesqCliente.Free;
  // end;
end;

procedure TfrmOrdemServico.btnPesqPlacaClick(Sender: TObject);
begin
  rgbPosicao1.ItemIndex := 0;

  with fdsOS do
  begin
    Close;
    Conditions.Clear;

    if not(Trim(edtPesqPlaca.Text) = EmptyStr) then
      Conditions.AddCondition('PLACA',
        ' V.PLACA = ' + QuotedStr(Trim(edtPesqPlaca.Text)), True);

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmOrdemServico.btnTecnicoIncluirClick(Sender: TObject);
begin
  // try
  // frmPesqTecnicos := TfrmPesqTecnicos.Create(nil);
  // frmPesqTecnicos.ShowModal;
  // Finally
  // if frmPesqTecnicos.ModalResult = mrOk then
  // begin
  // cdsOS_Tecnicos.Append;
  // cdsOS_TecnicosIDTECNICO.AsInteger := frmPesqTecnicos.fdsTecnicosID.AsInteger;
  // cdsOS_TecnicosIDOS.AsInteger := fdsOSID.AsInteger;
  // cdsOS_TecnicosNOME.AsString := frmPesqTecnicos.fdsTecnicosNOME.AsString;
  // cdsOS_Tecnicos.Post;
  // end;
  // frmPesqTecnicos.Free;
  // end;
end;

procedure TfrmOrdemServico.btnTodosClick(Sender: TObject);
begin
  rgbPosicao1.ItemIndex := 0;
  edtPesqPlaca.Clear;
  with fdsOS do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmOrdemServico.EditaInsere;
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
  btnTecnicoIncluir.SetFocus;
end;

procedure TfrmOrdemServico.edtPesqPlacaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnPesqPlaca.Click;
  end;
end;

procedure TfrmOrdemServico.fdsOSAfterOpen(DataSet: TDataSet);
begin
  SomaTotalizadoresOS;
end;

procedure TfrmOrdemServico.fdsOSAfterScroll(DataSet: TDataSet);
var
  utils: TUtils;
begin
  RetornaItensOS;

  // if fdsOSSTATUS.AsString = 'AB' then
  // btnFinalizar.Enabled := True
  // else
  // btnFinalizar.Enabled := False;

  if pnlValores.Visible = True then
  begin
    lblTotalProdutos.Caption := utils.AdicionaMascaraDinheiro
      (fdsOSVLR_PRODUTOS.AsString);
    lblTotalServicos.Caption := utils.AdicionaMascaraDinheiro
      (fdsOSVLR_SERVICOS.AsString);
    lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro
      (fdsOSVLR_TOTAL.AsString);
  end;

end;

procedure TfrmOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmOrdemServico := nil;
end;

procedure TfrmOrdemServico.FormCreate(Sender: TObject);
begin
  pgcControle.ActivePageIndex := 0;
  fdsOS.Open;
  fdsVeiculos.Open;
  fdsVeiculos.Last;
  fdsVeiculos.First;
end;

procedure TfrmOrdemServico.gdrOSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  posicao: string[2];
  Bitmap: TBitmap;
begin
  if not odd(fdsOS.RecNo) then
  begin
    gdrOS.Canvas.Brush.Color := DM.gridOddColor;
    gdrOS.Canvas.FillRect(Rect);
    gdrOS.DefaultDrawDataCell(Rect, Column.Field, State);

    if (Column.Index = 2) and not(fdsOS.IsEmpty) then
    begin
      posicao := fdsOSSTATUS.AsString;
      if posicao = 'AB' then
      begin
        Bitmap := imgFlagYellow2.Picture.Bitmap
      end
      else if posicao = 'FE' then
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
    if (Column.Index = 2) and not(fdsOS.IsEmpty) then
    begin
      posicao := fdsOSSTATUS.AsString;
      if posicao = 'AB' then
      begin
        Bitmap := imgFlagYellow.Picture.Bitmap
      end
      else if posicao = 'FE' then
        Bitmap := imgFlagGreen.Picture.Bitmap;

      with TDBGrid(Sender) do
      begin
        Canvas.Draw((Rect.Right - Rect.Left - Bitmap.Width) div 2 + Rect.Left,
          (Rect.Bottom - Rect.Top - Bitmap.Height) div 2 + Rect.Top, Bitmap);
        // ou: Canvas.Draw(Rect.Left, Rect.Top, Bitmap);
      end;
    end;
  end;
end;

procedure TfrmOrdemServico.GravaCancela;
var
  i: Smallint;
  utils: TUtils;
  editando: Boolean;
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

  fdsOS.Close;
  fdsOS.OrderClause := 'ID';
  fdsOS.Open;
  fdsOS.Last;
  cdsOS_Tecnicos.EmptyDataSet;
  cdsOS_Servicos.EmptyDataSet;
  cdsOS_ProdItem.EmptyDataSet;
  // lblTotal.Caption := intToStr(fdsOS.RecordCount);
end;

procedure TfrmOrdemServico.RetornaItensOS;
begin
  if fdsOS.RecordCount > 0 then
  begin
    with fdsOS_ProdItem do
    begin
      cdsOS_ProdItem.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDOS', 'IDOS=' + fdsOSID.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsOS_ProdItem.Open;
    end;

    with fdsOS_Servicos do
    begin
      cdsOS_Servicos.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDOS', 'IDOS=' + fdsOSID.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsOS_Servicos.Open;
    end;

    with fdsOS_Tecnicos do
    begin
      cdsOS_Tecnicos.Close;
      Close;
      Conditions.Clear;
      Conditions.Apply;
      Conditions.AddCondition('IDOS', 'IDOS=' + fdsOSID.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
      cdsOS_Tecnicos.Open;
    end;
  end;
end;

procedure TfrmOrdemServico.RetornaVeiculosCliente;
begin
  with fdsVeiculos do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('IDCLIENTE',
      'IDCLIENTE = ' + fdsOSIDCLIENTE.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
    Last;
    First;
  end;
end;

procedure TfrmOrdemServico.btnServicoIncluirClick(Sender: TObject);
var
  utils: TUtils;
begin
  // try
  // frmPesqServicos := TfrmPesqServicos.Create(nil);
  // frmPesqServicos.ShowModal;
  // Finally
  // if frmPesqServicos.ModalResult = mrOk then
  // begin
  // cdsOS_Servicos.Append;
  // cdsOS_ServicosIDSERVICO.AsInteger := frmPesqServicos.fdsServicosID.AsInteger;
  // cdsOS_ServicosIDOS.AsInteger := fdsOSID.AsInteger;
  // cdsOS_ServicosNOME.AsString := frmPesqServicos.fdsServicosNOME.AsString;
  // cdsOS_ServicosPRECO.AsFloat := frmPesqServicos.fdsServicosPRECO.AsFloat;
  // cdsOS_Servicos.Post;
  //
  // fdsOSVLR_SERVICOS.AsFloat := fdsOSVLR_SERVICOS.AsFloat + cdsOS_ServicosPRECO.AsFloat;
  // fdsOSVLR_TOTAL.AsFloat := fdsOSVLR_TOTAL.AsFloat + cdsOS_ServicosPRECO.AsFloat;
  // lblTotalServicos.Caption := utils.AdicionaMascaraDinheiro(fdsOSVLR_SERVICOS.AsString);
  // lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro(fdsOSVLR_TOTAL.AsString);
  // end;
  // frmPesqServicos.Free;
  // end;
end;

procedure TfrmOrdemServico.RzBitBtn2Click(Sender: TObject);
var
  utils: TUtils;
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir este servi�o desta OS?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsOSVLR_SERVICOS.AsFloat := fdsOSVLR_SERVICOS.AsFloat -
          cdsOS_ServicosPRECO.AsFloat;
        fdsOSVLR_TOTAL.AsFloat := fdsOSVLR_TOTAL.AsFloat -
          cdsOS_ServicosPRECO.AsFloat;
        lblTotalServicos.Caption := utils.AdicionaMascaraDinheiro
          (fdsOSVLR_SERVICOS.AsString);
        lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro
          (fdsOSVLR_TOTAL.AsString);
        cdsOS_Servicos.Delete;
      end;
  End;
end;

procedure TfrmOrdemServico.btnProdutoIncluirClick(Sender: TObject);
var
  utils: TUtils;
begin
  // Try
  // frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
  // frmPesqProdutoItens.fdsProdutoItens.Open;
  // frmPesqProdutoItens.ShowModal;
  // Finally
  // if frmPesqProdutoItens.ModalResult = mrOk then
  // begin
  // cdsOS_ProdItem.Append;
  // cdsOS_ProdItemIDOS.AsInteger := fdsOSID.AsInteger;
  // cdsOS_ProdItemIDPRODITEM.AsInteger := frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
  // cdsOS_ProdItemNOME.AsString := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
  // cdsOS_ProdItemPREC_VENDA.AsFloat := frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsFloat;
  // cdsOS_ProdItem.Post;
  //
  // fdsOSVLR_PRODUTOS.AsFloat := fdsOSVLR_PRODUTOS.AsFloat + cdsOS_ProdItemPREC_VENDA.AsFloat;
  // fdsOSVLR_TOTAL.AsFloat := fdsOSVLR_TOTAL.AsFloat + cdsOS_ProdItemPREC_VENDA.AsFloat;
  // lblTotalProdutos.Caption := utils.AdicionaMascaraDinheiro(fdsOSVLR_PRODUTOS.AsString);
  // lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro(fdsOSVLR_TOTAL.AsString);
  // end;
  // end;
  //
  // frmPesqProdutoItens.Free;
end;

procedure TfrmOrdemServico.RzBitBtn4Click(Sender: TObject);
var
  utils: TUtils;
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente excluir este produto desta OS?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        fdsOSVLR_PRODUTOS.AsFloat := fdsOSVLR_PRODUTOS.AsFloat -
          cdsOS_ProdItemPREC_VENDA.AsFloat;
        fdsOSVLR_TOTAL.AsFloat := fdsOSVLR_TOTAL.AsFloat -
          cdsOS_ProdItemPREC_VENDA.AsFloat;
        lblTotalProdutos.Caption := utils.AdicionaMascaraDinheiro
          (fdsOSVLR_PRODUTOS.AsString);
        lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro
          (fdsOSVLR_TOTAL.AsString);
        cdsOS_ProdItem.Delete;
      end;
  End;
end;

procedure TfrmOrdemServico.SomaTotalizadoresOS;
var
  utils: TUtils;
begin
  with qrySomatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS TOT_ABERTO FROM ORDEM_SERVICO WHERE STATUS = ' +
      QuotedStr('AB'));
    Prepare;
    ExecQuery;
    lblTotAberto.Caption := FieldByName('TOT_ABERTO').AsString;

    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS TOT_FINALIZADO FROM ORDEM_SERVICO WHERE STATUS = '
      + QuotedStr('FE'));
    Prepare;
    ExecQuery;
    lblTotFinalizado.Caption := FieldByName('TOT_FINALIZADO').AsString;
  end;
end;

procedure TfrmOrdemServico.tbsDetalhamentoShow(Sender: TObject);
var
  utils: TUtils;
begin
  RetornaItensOS;
  pnlValores.Visible := True;
  pnlTotalizadores.Visible := False;

  lblTotalProdutos.Caption := utils.AdicionaMascaraDinheiro
    (fdsOSVLR_PRODUTOS.AsString);
  lblTotalServicos.Caption := utils.AdicionaMascaraDinheiro
    (fdsOSVLR_SERVICOS.AsString);
  lblTotalPagar.Caption := utils.AdicionaMascaraDinheiro
    (fdsOSVLR_TOTAL.AsString);

end;

procedure TfrmOrdemServico.tbsOSShow(Sender: TObject);
begin
  pnlValores.Visible := False;
  pnlTotalizadores.Visible := True;
end;

procedure TfrmOrdemServico.rgbPosicao1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin

  with fdsOS do
  begin
    Close;
    Conditions.Clear;

    if not(NewIndex = 0) then
    begin
      if NewIndex = 1 then
      begin
        Conditions.AddCondition('STATUS',
          ' O.STATUS = ' + QuotedStr('AB'), True);
      end;

      if NewIndex = 2 then
      begin
        Conditions.AddCondition('STATUS',
          ' O.STATUS = ' + QuotedStr('FE'), True);
      end;
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

end.
