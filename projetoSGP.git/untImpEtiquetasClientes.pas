unit untImpEtiquetasClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzEdit, RzDBEdit,
  RzLabel, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzButton, RzPanel,
  RzBckgnd, DBClient, frxClass, frxDBSet, frxRich, frxExportPDF,
  Vcl.Imaging.pngimage, RzRadGrp, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, DateUtils, Vcl.ImgList, PngImageList,
  JvExStdCtrls, JvButton, JvCtrls, Vcl.Menus, System.Actions, Vcl.ActnList;

type
  TfrmImpEtiquetasClientes = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnCancelar: TRzBitBtn;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    fdsBairro: TpFIBDataSet;
    cdsBairro: TClientDataSet;
    fdsCidade: TpFIBDataSet;
    fdsBairroIDCIDADE: TFIBBCDField;
    fdsBairroBAIRRO: TFIBStringField;
    fdsCidadeIDCIDADE: TFIBBCDField;
    fdsCidadeCIDADE: TFIBStringField;
    dsBairro: TDataSource;
    gbxCidades: TRzGroupBox;
    gdrCidades: TJvDBGrid;
    gbxBairros: TRzGroupBox;
    gdrBairro: TJvDBGrid;
    cdsBairroIDCIDADE: TIntegerField;
    cdsBairroBAIRRO: TStringField;
    cdsBairroIMPRIMIR: TStringField;
    cdsBairroIMP: TStringField;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeIDCIDADE: TIntegerField;
    cdsCidadeCIDADE: TStringField;
    cdsCidadeIMPRIMIR: TStringField;
    cdsCidadeIMP: TStringField;
    cdsBairroNOMECIDADE: TStringField;
    fdsClientes: TpFIBDataSet;
    fdsClientesID: TFIBBCDField;
    fdsClientesNOME: TFIBStringField;
    fdsClientesDT_NASC: TFIBDateField;
    fdsClientesTELEFONE: TFIBStringField;
    fdsClientesENDERECO: TFIBStringField;
    fdsClientesBAIRRO: TFIBStringField;
    fdsClientesIDCIDADE: TFIBBCDField;
    fdsClientesCEP: TFIBStringField;
    fdsClientesRG: TFIBStringField;
    fdsClientesCPF: TFIBStringField;
    fdsClientesEMAIL: TFIBStringField;
    fdsClientesCELULAR: TFIBStringField;
    fdsClientesCIDADE: TFIBStringField;
    fdsClientesUF: TFIBStringField;
    fdsClientesRAZAOSOCIAL: TFIBStringField;
    fdsClientesCONTATO: TFIBStringField;
    fdsClientesCNPJ: TFIBStringField;
    fdsClientesIE: TFIBStringField;
    frxClientes: TfrxDBDataset;
    cdsClientes: TClientDataSet;
    cdsClientesID: TBCDField;
    cdsClientesNOME: TStringField;
    cdsClientesDT_NASC: TDateField;
    cdsClientesTELEFONE: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesRG: TStringField;
    cdsClientesCPF: TStringField;
    cdsClientesEMAIL: TStringField;
    cdsClientesCELULAR: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesRAZAOSOCIAL: TStringField;
    cdsClientesCONTATO: TStringField;
    cdsClientesCNPJ: TStringField;
    cdsClientesIE: TStringField;
    frxRichObject1: TfrxRichObject;
    frxCarta: TfrxDBDataset;
    fdsCarta: TpFIBDataSet;
    fdsCartaID: TFIBBCDField;
    fdsCartaSTATUS: TFIBStringField;
    fdsCartaNOME: TFIBStringField;
    fdsCartaDESCRICAO: TFIBStringField;
    fdsCartaCORPO: TFIBBlobField;
    frxPDFExport1: TfrxPDFExport;
    rgbTipo: TRzRadioGroup;
    pnlPeriodo: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    Timer1: TTimer;
    btnPesquisar: TJvImgBtn;
    PngImageList1: TPngImageList;
    gbxClientes: TRzGroupBox;
    gdrCliente: TJvDBGrid;
    dsCliente: TDataSource;
    cdsClientesIMP: TStringField;
    cdsClientesIMPRIMIR: TStringField;
    btnImprimir: TRzMenuButton;
    actlst1: TActionList;
    actEtiq: TAction;
    actCartaAniver: TAction;
    pmImprimir: TPopupMenu;
    ImprimirPedidoAtual1: TMenuItem;
    EtiquetaClienteSelecionado1: TMenuItem;
    actLista: TAction;
    ListagemdeClientes1: TMenuItem;
    RzGroupBox1: TRzGroupBox;
    cdsEstado: TClientDataSet;
    dsEstado: TDataSource;
    cdsEstadoESTADO: TStringField;
    cdsEstadoIMPRIMIR: TStringField;
    cdsEstadoIMP: TStringField;
    fdsEstados: TpFIBDataSet;
    fdsEstadosUF: TFIBStringField;
    gdrEstado: TJvDBGrid;
    cdsCidadeUF: TStringField;
    fdsCidadeUF: TFIBStringField;
    cdsClientesIDCIDADE: TStringField;
    fdsClientesNUMERO: TFIBStringField;
    cdsClientesNUMERO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure fdsCidadeAfterOpen(DataSet: TDataSet);
    procedure gdrBairroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrBairroCellClick(Column: TColumn);
    procedure gdrBairroTitleClick(Column: TColumn);
    procedure gdrCidadesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrCidadesCellClick(Column: TColumn);
    procedure gdrCidadesTitleClick(Column: TColumn);
    procedure RetornaBairros(idCidade: Integer);
    procedure RetornaCidades(estado: string);
    procedure fdsBairroAfterOpen(DataSet: TDataSet);
    procedure InformaTotalCidades();
    procedure InformaTotalBairros();
    procedure InformaTotalClientes();
    procedure Pesquisar;
    procedure RetornaClientes(idCidade: Integer; bairro: string);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgbTipoChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure gdrClienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrClienteCellClick(Column: TColumn);
    procedure cdsBairroBeforeDelete(DataSet: TDataSet);
    procedure actEtiqExecute(Sender: TObject);
    procedure actCartaAniverExecute(Sender: TObject);
    procedure gdrClienteTitleClick(Column: TColumn);
    procedure actListaExecute(Sender: TObject);
    procedure fdsEstadosAfterOpen(DataSet: TDataSet);
    procedure gdrEstadoCellClick(Column: TColumn);
    procedure gdrEstadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrEstadoTitleClick(Column: TColumn);
    procedure cdsCidadeBeforeDelete(DataSet: TDataSet);
    procedure cdsEstadoAfterPost(DataSet: TDataSet);
    procedure cdsCidadeAfterPost(DataSet: TDataSet);
    procedure cdsBairroAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    tempImpEstado, tempImpCidade, tempImpBairro: Boolean;
    cidadesTotal, bairrosTotal, clientesTotal: Integer;
  end;

var
  frmImpEtiquetasClientes: TfrmImpEtiquetasClientes;

implementation

uses untData;

{$R *.dfm}

procedure TfrmImpEtiquetasClientes.actCartaAniverExecute(Sender: TObject);
begin
  with cdsClientes do
  begin
    while Locate('IMPRIMIR', 'N', []) do
    begin
      Delete;
    end;
  end;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxCartaAniversario.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmImpEtiquetasClientes.actEtiqExecute(Sender: TObject);
begin
  with cdsClientes do
  begin
    while Locate('IMPRIMIR', 'N', []) do
    begin
      Delete;
    end;
  end;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxEtiquetasClientes.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmImpEtiquetasClientes.actListaExecute(Sender: TObject);
begin
  with cdsClientes do
  begin
    while Locate('IMPRIMIR', 'N', []) do
    begin
      Delete;
    end;
  end;

  DM.frxReport1.Clear;
  DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/Relatorios/frxListagemClientes.fr3');
  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmImpEtiquetasClientes.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmImpEtiquetasClientes.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmImpEtiquetasClientes.cdsBairroAfterPost(DataSet: TDataSet);
begin
  with cdsClientes do
  begin
    if cdsBairroIMPRIMIR.AsString = 'N' then
    begin
      while Locate('IDCIDADE; BAIRRO', VarArrayOf([cdsBairroIDCIDADE.AsString,
        cdsBairroBAIRRO.AsString]), []) do
      begin
        clientesTotal := clientesTotal - 1;
        Delete;
      end;
    end
    else
    begin
      RetornaClientes(cdsBairroIDCIDADE.AsInteger, cdsBairroBAIRRO.AsString);
    end;
  end;
  InformaTotalClientes;
end;

procedure TfrmImpEtiquetasClientes.cdsBairroBeforeDelete(DataSet: TDataSet);
begin
  while cdsClientes.Locate('IDCIDADE; BAIRRO',
    VarArrayOf([cdsBairroIDCIDADE.AsString, cdsBairroBAIRRO.AsString]), []) do
  begin
    clientesTotal := clientesTotal - 1;
    cdsClientes.Delete;
  end;
  InformaTotalClientes;
end;

procedure TfrmImpEtiquetasClientes.cdsCidadeAfterPost(DataSet: TDataSet);
begin
  with cdsBairro do
  begin
    if cdsCidadeIMPRIMIR.AsString = 'N' then
    begin
      while Locate('IDCIDADE', cdsCidadeIDCIDADE.AsString, []) do
      begin
        if cdsBairroIMPRIMIR.AsString = 'S' then
          bairrosTotal := bairrosTotal - 1;
        Delete;
      end;
    end
    else
    begin
      RetornaBairros(cdsCidadeIDCIDADE.AsInteger);
    end;
  end;
  InformaTotalBairros;
end;

procedure TfrmImpEtiquetasClientes.cdsCidadeBeforeDelete(DataSet: TDataSet);
begin
  with cdsBairro do
  begin
    while Locate('IDCIDADE', cdsCidadeIDCIDADE.AsString, []) do
    begin
      if cdsBairroIMPRIMIR.AsString = 'S' then
        bairrosTotal := bairrosTotal - 1;
      Delete;
    end;
  end;
  InformaTotalBairros;
end;

procedure TfrmImpEtiquetasClientes.cdsEstadoAfterPost(DataSet: TDataSet);
begin
  with cdsCidade do
  begin
    if cdsEstadoIMPRIMIR.AsString = 'N' then
    begin
      while Locate('UF', cdsEstadoESTADO.AsString, []) do
      begin
        Delete;
      end;
    end
    else
    begin
      RetornaCidades(cdsEstadoESTADO.AsString);
    end;
  end;
  InformaTotalCidades;
end;

procedure TfrmImpEtiquetasClientes.fdsBairroAfterOpen(DataSet: TDataSet);
begin
  With fdsBairro do
  begin
    First;
    while not(fdsBairro.Eof) do
    begin
      cdsBairro.Append;
      cdsBairroIDCIDADE.AsInteger := fdsBairroIDCIDADE.AsInteger;
      cdsBairroBAIRRO.AsString := fdsBairroBAIRRO.AsString;
      cdsBairroNOMECIDADE.AsString := cdsCidadeCIDADE.AsString;
      cdsBairroIMPRIMIR.AsString := 'S';
      cdsBairro.Post;

      fdsBairro.Next;
      Inc(bairrosTotal);
    end;
    // InformaTotalCidades;
  end;
end;

procedure TfrmImpEtiquetasClientes.fdsCidadeAfterOpen(DataSet: TDataSet);
begin
  with fdsCidade do
  begin
    // First;
    while not(fdsCidade.Eof) do
    begin
      cdsCidade.Append;
      cdsCidadeIDCIDADE.AsInteger := fdsCidadeIDCIDADE.AsInteger;
      cdsCidadeCIDADE.AsString := fdsCidadeCIDADE.AsString;
      cdsCidadeIMPRIMIR.AsString := 'S';
      cdsCidadeUF.AsString := fdsCidadeUF.AsString;
      cdsCidade.Post;
      fdsCidade.Next;
    end;
  end;
  // cdsCidade.First;
  // cdsBairro.First;
  // cidadesTotal := cdsCidade.RecordCount;
  // bairrosTotal := cdsBairro.RecordCount;
  // clientesTotal := cdsClientes.RecordCount;
  // InformaTotalCidades;
  // InformaTotalBairros;
  // InformaTotalClientes;
end;

procedure TfrmImpEtiquetasClientes.fdsEstadosAfterOpen(DataSet: TDataSet);
begin
  with fdsEstados do
  begin
    First;
    while not(fdsEstados.Eof) do
    begin
      cdsEstado.Append;
      cdsEstadoESTADO.AsString := fdsEstadosUF.AsString;
      cdsEstadoIMPRIMIR.AsString := 'S';
      cdsEstado.Post;
      fdsEstados.Next;
    end;
  end;
end;

procedure TfrmImpEtiquetasClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmImpEtiquetasClientes := nil;
end;

procedure TfrmImpEtiquetasClientes.FormCreate(Sender: TObject);
begin
  tempImpEstado := True;
  tempImpCidade := True;
  tempImpBairro := True;
  cdsEstado.CreateDataSet;
  cdsCidade.CreateDataSet;
  cdsBairro.CreateDataSet;
  cdsClientes.CreateDataSet;
  Pesquisar;
end;

procedure TfrmImpEtiquetasClientes.gdrBairroCellClick(Column: TColumn);
begin
  if gdrBairro.SelectedField.FieldName = 'IMP' then
  begin
    cdsBairro.Edit;

    if cdsBairroIMPRIMIR.AsString = 'S' then
    begin
      cdsBairroIMPRIMIR.AsString := 'N';
      bairrosTotal := bairrosTotal - 1;
    end
    else
    begin
      cdsBairroIMPRIMIR.AsString := 'S';
      Inc(bairrosTotal);
    end;
    cdsBairro.Post;
    InformaTotalBairros;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrBairroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'IMP' then
  begin
    gdrBairro.Canvas.FillRect(Rect);
    Check := 0;
    if cdsBairroIMPRIMIR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrBairro.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrBairroTitleClick(Column: TColumn);
begin
  if Column.FieldName = 'IMP' then
  begin
    cdsBairro.First;
    while not(cdsBairro.Eof) do
    begin
      cdsBairro.Edit;
      if tempImpBairro = True then
        cdsBairroIMPRIMIR.AsString := 'N'
      else
        cdsBairroIMPRIMIR.AsString := 'S';
      cdsBairro.Post;
      cdsBairro.Next;
    end;

    if tempImpBairro then
    begin
      bairrosTotal := 0;
      clientesTotal := 0;
    end
    else
    begin
      bairrosTotal := cdsBairro.RecordCount;
      clientesTotal := cdsClientes.RecordCount;
    end;

    tempImpBairro := not(tempImpBairro);
    cdsBairro.First;
    InformaTotalBairros;
    InformaTotalClientes;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrCidadesCellClick(Column: TColumn);
begin
  if gdrCidades.SelectedField.FieldName = 'IMP' then
  begin
    cdsCidade.Edit;

    if cdsCidadeIMPRIMIR.AsString = 'S' then
    begin
      cdsCidadeIMPRIMIR.AsString := 'N';
      cidadesTotal := cidadesTotal - 1;
    end
    else
    begin
      cdsCidadeIMPRIMIR.AsString := 'S';
      Inc(cidadesTotal);
    end;
    cdsCidade.Post;
    InformaTotalCidades;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrCidadesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'IMP' then
  begin
    gdrCidades.Canvas.FillRect(Rect);
    Check := 0;
    if cdsCidadeIMPRIMIR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrCidades.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrCidadesTitleClick(Column: TColumn);
begin
  if Column.FieldName = 'IMP' then
  begin
    cdsCidade.First;

    cdsBairro.EmptyDataSet;
    cdsClientes.EmptyDataSet;

    while not(cdsCidade.Eof) do
    begin
      cdsCidade.Edit;
      if tempImpCidade = True then
        cdsCidadeIMPRIMIR.AsString := 'N'
      else
        cdsCidadeIMPRIMIR.AsString := 'S';
      cdsCidade.Post;
      cdsCidade.Next;
    end;

    if tempImpCidade then
    begin
      cidadesTotal := 0;
      bairrosTotal := 0;
      clientesTotal := 0;
    end
    else
    begin
      cidadesTotal := cdsCidade.RecordCount;
      bairrosTotal := cdsBairro.RecordCount;
      clientesTotal := cdsClientes.RecordCount;
    end;

    tempImpCidade := not(tempImpCidade);
    cdsCidade.First;
    cdsClientes.First;
    InformaTotalCidades;
    InformaTotalBairros;
    InformaTotalClientes;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrClienteCellClick(Column: TColumn);
begin
  if gdrCliente.SelectedField.FieldName = 'IMP' then
  begin
    cdsClientes.Edit;

    if cdsClientesIMPRIMIR.AsString = 'S' then
    begin
      cdsClientesIMPRIMIR.AsString := 'N';
      clientesTotal := clientesTotal - 1;
    end
    else
    begin
      cdsClientesIMPRIMIR.AsString := 'S';
      Inc(clientesTotal);
    end;
    cdsClientes.Post;
    InformaTotalClientes;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'IMP' then
  begin
    gdrCliente.Canvas.FillRect(Rect);
    Check := 0;
    if cdsClientesIMPRIMIR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrCliente.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrClienteTitleClick(Column: TColumn);
begin
  // if Column.FieldName = 'IMP' then
  // begin
  // cdsClientes.First;
  // while not(cdsClientes.Eof) do
  // begin
  // cdsClientes.Edit;
  // if tempImpC = True then
  // cdsBairroIMPRIMIR.AsString := 'N'
  // else
  // cdsBairroIMPRIMIR.AsString := 'S';
  // cdsBairro.Post;
  // cdsBairro.Next;
  // end;
  //
  // if tempImpBairro then
  // bairrosTotal := 0
  // else
  // bairrosTotal := cdsBairro.RecordCount;
  //
  // tempImpBairro := not(tempImpBairro);
  // cdsBairro.First;
  // InformaTotalBairros;
  // end;
end;

procedure TfrmImpEtiquetasClientes.gdrEstadoCellClick(Column: TColumn);
begin
  if gdrEstado.SelectedField.FieldName = 'IMP' then
  begin
    cdsEstado.Edit;

    if cdsEstadoIMPRIMIR.AsString = 'S' then
    begin
      cdsEstadoIMPRIMIR.AsString := 'N';
    end
    else
    begin
      cdsEstadoIMPRIMIR.AsString := 'S';
    end;
    cdsEstado.Post;
  end;
end;

procedure TfrmImpEtiquetasClientes.gdrEstadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'IMP' then
  begin
    gdrEstado.Canvas.FillRect(Rect);
    Check := 0;
    if cdsEstadoIMPRIMIR.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(gdrEstado.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TfrmImpEtiquetasClientes.gdrEstadoTitleClick(Column: TColumn);
begin
  if Column.FieldName = 'IMP' then
  begin
    cdsEstado.First;

    cdsCidade.EmptyDataSet;
    cdsBairro.EmptyDataSet;
    cdsClientes.EmptyDataSet;

    while not(cdsEstado.Eof) do
    begin
      cdsEstado.Edit;
      if tempImpEstado = True then
        cdsEstadoIMPRIMIR.AsString := 'N'
      else
        cdsEstadoIMPRIMIR.AsString := 'S';
      cdsEstado.Post;
      cdsEstado.Next;
    end;
    tempImpEstado := not(tempImpEstado);
  end;
end;

procedure TfrmImpEtiquetasClientes.InformaTotalCidades;
begin
  gbxCidades.Caption := 'Cidade:               Selecionadas ' +
    IntToStr(cdsCidade.RecordCount);
end;

procedure TfrmImpEtiquetasClientes.InformaTotalClientes;
begin
  gbxClientes.Caption := 'Clientes:               Selecionados ' +
    IntToStr(cdsClientes.RecordCount);
end;

procedure TfrmImpEtiquetasClientes.Pesquisar;
begin
  fdsCidade.Close;
  cdsEstado.EmptyDataSet;
  cdsCidade.EmptyDataSet;
  cdsBairro.EmptyDataSet;
  cdsClientes.EmptyDataSet;

  fdsEstados.Conditions.Clear;

  if rgbTipo.ItemIndex = 0 then
  begin
    pnlPeriodo.Enabled := False;
  end;

  fdsEstados.Conditions.Apply;
  fdsEstados.Prepare;
  fdsEstados.Open;
end;

procedure TfrmImpEtiquetasClientes.InformaTotalBairros;
begin
  gbxBairros.Caption := 'Bairros:               Selecionados ' +
    IntToStr(cdsBairro.RecordCount);
end;

procedure TfrmImpEtiquetasClientes.RetornaCidades(estado: string);
begin
  with fdsCidade do
  begin
    Conditions.Clear;
    Close;
    Conditions.AddCondition('UF', 'UF = ' + QuotedStr(estado), True);

    if rgbTipo.ItemIndex = 1 then
    begin
      Conditions.AddCondition('DT_NASC_MES',
        'EXTRACT (DAY FROM CL.DT_NASC) BETWEEN ' +
        QuotedStr(FormatDateTime('DD', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('DD', dtpFim.Date)), True);
      Conditions.AddCondition('DT_NASC_DIA',
        'EXTRACT (MONTH FROM CL.DT_NASC) BETWEEN ' +
        QuotedStr(FormatDateTime('MM', dtpInicio.Date)) + ' AND ' +
        QuotedStr(FormatDateTime('MM', dtpFim.Date)), True);
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmImpEtiquetasClientes.RetornaBairros(idCidade: Integer);
begin
  with fdsBairro do
  begin
    Conditions.Clear;
    Close;
    ParamByName('IDCIDADE').AsInteger := idCidade;

    if rgbTipo.ItemIndex = 1 then
    begin
      Conditions.AddCondition('DT_NASC_MES',
        'EXTRACT (DAY FROM DT_NASC) BETWEEN ' + QuotedStr(FormatDateTime('DD',
        dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('DD',
        dtpFim.Date)), True);
      Conditions.AddCondition('DT_NASC_DIA',
        'EXTRACT (MONTH FROM DT_NASC) BETWEEN ' + QuotedStr(FormatDateTime('MM',
        dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM',
        dtpFim.Date)), True);
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmImpEtiquetasClientes.RetornaClientes(idCidade: Integer;
  bairro: string);
begin
  with fdsClientes do
  begin
    Close;
    Conditions.Clear;
    ParamByName('IDCIDADE').AsInteger := idCidade;
    ParamByName('BAIRRO').AsString := bairro;
    if rgbTipo.ItemIndex = 1 then

    begin
      Conditions.AddCondition('DT_NASC_MES',
        'EXTRACT (DAY FROM DT_NASC) BETWEEN ' + QuotedStr(FormatDateTime('DD',
        dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('DD',
        dtpFim.Date)), True);
      Conditions.AddCondition('DT_NASC_DIA',
        'EXTRACT (MONTH FROM DT_NASC) BETWEEN ' + QuotedStr(FormatDateTime('MM',
        dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM',
        dtpFim.Date)), True);
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
  fdsClientes.First;
  while not(fdsClientes.Eof) do
  begin
    cdsClientes.Append;
    cdsClientesID.AsInteger := fdsClientesID.AsInteger;
    cdsClientesNOME.AsString := fdsClientesNOME.AsString;
    cdsClientesDT_NASC.AsDateTime := fdsClientesDT_NASC.AsDateTime;

    if not(fdsClientesCELULAR.AsString = '') then
    begin
      if (Length(fdsClientesCELULAR.AsString) > 6) then
        cdsClientesTELEFONE.AsString := fdsClientesCELULAR.AsString
      else
        cdsClientesTELEFONE.AsString := fdsClientesTELEFONE.AsString;
    end
    else
      cdsClientesTELEFONE.AsString := fdsClientesTELEFONE.AsString;

    cdsClientesENDERECO.AsString := fdsClientesENDERECO.AsString;
    cdsClientesNUMERO.AsString := fdsClientesNUMERO.AsString;
    cdsClientesBAIRRO.AsString := fdsClientesBAIRRO.AsString;
    cdsClientesIDCIDADE.AsString := fdsClientesIDCIDADE.AsString;
    cdsClientesCEP.AsString := fdsClientesCEP.AsString;
    cdsClientesRG.AsString := fdsClientesRG.AsString;
    cdsClientesCPF.AsString := fdsClientesCPF.AsString;
    cdsClientesCONTATO.AsString := fdsClientesCONTATO.AsString;
    cdsClientesEMAIL.AsString := fdsClientesEMAIL.AsString;
    cdsClientesCELULAR.AsString := fdsClientesCELULAR.AsString;
    cdsClientesCIDADE.AsString := fdsClientesCIDADE.AsString;
    cdsClientesUF.AsString := fdsClientesUF.AsString;
    cdsClientesIMPRIMIR.AsString := 'S';
    cdsClientes.Post;
    fdsClientes.Next;
  end;
end;

procedure TfrmImpEtiquetasClientes.rgbTipoChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  Timer1.Enabled := True;
end;

procedure TfrmImpEtiquetasClientes.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  pnlPeriodo.Enabled := True;

  dtpInicio.Date := StartOfTheMonth(Date);
  dtpFim.Date := EndOfTheMonth(Date);

  Pesquisar;

end;

end.