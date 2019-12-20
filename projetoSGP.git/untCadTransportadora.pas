unit untCadTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  RzEdit, Vcl.ComCtrls, RzDTP, RzDBDTP, Vcl.StdCtrls, RzCmboBx, RzDBCmbo,
  Vcl.Mask, RzDBEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzTabs,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzButton,
  RzPanel, RzBckgnd, Datasnap.Provider, pFIBClientDataSet, Datasnap.DBClient,
  FIBQuery, pFIBQuery;

type
  TfrmCadTransportadora = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    btnPrior: TRzBitBtn;
    btnFirst: TRzBitBtn;
    btnNext: TRzBitBtn;
    btnLast: TRzBitBtn;
    btnTodos: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    JvDBGrid1: TJvDBGrid;
    tbsForm: TRzTabSheet;
    fdsTransportadora: TpFIBDataSet;
    dsTransportadora: TDataSource;
    btnIncluir: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    lblCodigo: TRzLabel;
    edtID: TRzDBEdit;
    edtDt_Inc: TRzDBEdit;
    lblDtInc: TRzLabel;
    lblDtAlt: TRzLabel;
    edtDt_Alt: TRzDBEdit;
    cbxStatus: TRzDBComboBox;
    lblStatus: TRzLabel;
    lblRG: TRzLabel;
    edtRG: TRzDBEdit;
    edtCPF: TRzDBEdit;
    lblCPF: TRzLabel;
    btnPesqCidade: TRzBitBtn;
    lblUF: TRzLabel;
    lblCidade: TRzLabel;
    edtEndereco: TRzDBEdit;
    lblEndereco: TRzLabel;
    edtRazao: TRzDBEdit;
    lblNome: TRzLabel;
    pnlVeiculos: TRzGroupBox;
    JvDBGrid2: TJvDBGrid;
    RzLabel1: TRzLabel;
    edtNomeVeiculo: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzLabel3: TRzLabel;
    btnIncVeiculo: TRzBitBtn;
    btnEditVeiculo: TRzBitBtn;
    btnDeleteVeiculo: TRzBitBtn;
    fdsTransportadoraID: TFIBBCDField;
    fdsTransportadoraDT_INC: TFIBDateField;
    fdsTransportadoraDT_ALT: TFIBDateField;
    fdsTransportadoraSTATUS: TFIBStringField;
    fdsTransportadoraRAZAO_SOCIAL: TFIBStringField;
    fdsTransportadoraCNPJ_CPF: TFIBStringField;
    fdsTransportadoraIE: TFIBStringField;
    fdsTransportadoraENDERECO: TFIBStringField;
    fdsTransportadoraNUMERO: TFIBStringField;
    fdsTransportadoraBAIRRO: TFIBStringField;
    fdsTransportadoraIDCIDADE: TFIBBCDField;
    fdsTransportadoraENVIADO_WEB: TFIBStringField;
    fdsTransportadoraCIDADE: TFIBStringField;
    fdsTransportadoraUF: TFIBStringField;
    edtCidade: TRzDBEdit;
    edtUF: TRzDBEdit;
    fdsVeiculo: TpFIBDataSet;
    fdsVeiculoID: TFIBBCDField;
    fdsVeiculoDT_INC: TFIBDateField;
    fdsVeiculoDT_ALT: TFIBDateField;
    fdsVeiculoSTATUS: TFIBStringField;
    fdsVeiculoNOME: TFIBStringField;
    fdsVeiculoMODELO: TFIBStringField;
    fdsVeiculoPLACA: TFIBStringField;
    fdsVeiculoCARGA_MAX: TFIBBCDField;
    fdsVeiculoENVIADO_WEB: TFIBStringField;
    dsVeiculo: TDataSource;
    cdsVeiculo: TpFIBClientDataSet;
    dspVeiculo: TpFIBDataSetProvider;
    fdsVeiculoIDTRANSPORTADORA: TFIBBCDField;
    fdsVeiculoUF: TFIBStringField;
    btnGravaVeiculo: TRzBitBtn;
    cdsVeiculoID: TpFIBClientBCDField;
    cdsVeiculoDT_INC: TDateField;
    cdsVeiculoDT_ALT: TDateField;
    cdsVeiculoSTATUS: TStringField;
    cdsVeiculoNOME: TStringField;
    cdsVeiculoMODELO: TStringField;
    cdsVeiculoPLACA: TStringField;
    cdsVeiculoCARGA_MAX: TpFIBClientBCDField;
    cdsVeiculoENVIADO_WEB: TStringField;
    cdsVeiculoIDTRANSPORTADORA: TpFIBClientBCDField;
    cdsVeiculoUF: TStringField;
    qryComand: TpFIBQuery;
    procedure btnPesqCidadeClick(Sender: TObject);
    procedure fdsTransportadoraAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncVeiculoClick(Sender: TObject);
    procedure btnEditVeiculoClick(Sender: TObject);
    procedure btnGravaVeiculoClick(Sender: TObject);
    procedure btnDeleteVeiculoClick(Sender: TObject);
    procedure tbsFormShow(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
  private
    procedure EditaInsere;
    procedure GravaCancela;
    procedure RetornaVeiculos;
  public
    { Public declarations }
  end;

var
  frmCadTransportadora: TfrmCadTransportadora;

implementation

{$R *.dfm}

uses untPesqCidade, untData;

procedure TfrmCadTransportadora.btnAlterarClick(Sender: TObject);
begin
  fdsTransportadora.Edit;
  fdsTransportadoraDT_ALT.AsDateTime := Now;
  EditaInsere;
end;

procedure TfrmCadTransportadora.btnCancelarClick(Sender: TObject);
begin
  Case MessageBox(Application.Handle,
    Pchar('Deseja realmente cancelar a Iclus�o/Altera��o desta transportadora?'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        if (cdsVeiculo.State in [dsInsert, dsEdit]) then
        begin
          cdsVeiculo.Cancel;
        end;
        fdsTransportadora.Cancel;
        DM.Conexao.CommitRetaining;
        GravaCancela;
      end;
  end;
end;

procedure TfrmCadTransportadora.btnDeleteVeiculoClick(Sender: TObject);
begin
  if cdsVeiculo.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente apagar este ve�culo?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          cdsVeiculo.Delete;
        end;
    end;
  end;
end;

procedure TfrmCadTransportadora.btnEditVeiculoClick(Sender: TObject);
begin
  btnIncVeiculo.Enabled := False;
  btnEditVeiculo.Enabled := False;
  btnDeleteVeiculo.Enabled := False;
  btnGravaVeiculo.Enabled := True;
  cdsVeiculo.Edit;
  cdsVeiculoDT_ALT.AsDateTime := Now;
  edtNomeVeiculo.SetFocus;
end;

procedure TfrmCadTransportadora.btnFirstClick(Sender: TObject);
begin
  fdsTransportadora.Prior;
end;

procedure TfrmCadTransportadora.btnGravarClick(Sender: TObject);
begin
  fdsTransportadora.Post;
  DM.Conexao.CommitRetaining;

  // if (cdsVeiculo.State in [dsInsert, dsEdit]) then
  // begin
  // cdsVeiculo.Post;
  cdsVeiculo.ApplyUpdates(0);
  DM.Conexao.CommitRetaining;
  // end;

  GravaCancela;
end;

procedure TfrmCadTransportadora.btnGravaVeiculoClick(Sender: TObject);
begin
  btnIncVeiculo.Enabled := True;
  btnEditVeiculo.Enabled := True;
  btnDeleteVeiculo.Enabled := True;
  btnGravaVeiculo.Enabled := False;
  cdsVeiculo.Post;
  btnIncVeiculo.SetFocus;
end;

procedure TfrmCadTransportadora.btnIncluirClick(Sender: TObject);
begin
  fdsTransportadora.Append;
  fdsTransportadoraDT_INC.AsDateTime := Now;
  fdsTransportadoraSTATUS.AsString := 'A';
  fdsTransportadoraENVIADO_WEB.AsString := 'N';
  EditaInsere;
end;

procedure TfrmCadTransportadora.btnPesqCidadeClick(Sender: TObject);
begin
  Try
    frmPesqCidade := TfrmPesqCidade.Create(nil);
    frmPesqCidade.ShowModal;
  Finally
    if frmPesqCidade.ModalResult = mrOk then
    begin
      fdsTransportadoraIDCIDADE.AsInteger :=
        frmPesqCidade.fdsCidadesID.AsInteger;
      edtCidade.Text := frmPesqCidade.fdsCidadesNOME.AsString;
      edtUF.Text := frmPesqCidade.fdsCidadesUF.AsString;
    end;
    frmPesqCidade.Free;
  End;
end;

procedure TfrmCadTransportadora.btnPriorClick(Sender: TObject);
begin
  fdsTransportadora.First;
end;

procedure TfrmCadTransportadora.EditaInsere;
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

  btnGravaVeiculo.Enabled := False;
  cdsVeiculo.Open;
  edtRazao.SetFocus;
end;

procedure TfrmCadTransportadora.fdsTransportadoraAfterScroll(DataSet: TDataSet);
begin
  if (pgcControl.ActivePageIndex = 1) then
  begin
    RetornaVeiculos;
  end;
end;

procedure TfrmCadTransportadora.GravaCancela;
var
  i: Smallint;
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
    end;
  end;

  fdsTransportadora.Close;
  fdsTransportadora.Open;
  fdsTransportadora.Last;
end;

procedure TfrmCadTransportadora.RetornaVeiculos;
begin
  if fdsTransportadora.RecordCount > 0 then
  begin
    with fdsVeiculo do
    begin
      cdsVeiculo.Close;
      Close;
      ParamByName('IDTRANSPORTADORA').AsInteger :=
        fdsTransportadoraID.AsInteger;
      Prepare;
      Open;
      cdsVeiculo.Open;
    end;
  end;
end;

procedure TfrmCadTransportadora.tbsFormShow(Sender: TObject);
begin
  if (fdsTransportadora.RecordCount > 0) and
    not(fdsTransportadora.State in [dsInsert]) then
    RetornaVeiculos;
end;

procedure TfrmCadTransportadora.btnIncVeiculoClick(Sender: TObject);
begin
  btnIncVeiculo.Enabled := False;
  btnEditVeiculo.Enabled := False;
  btnDeleteVeiculo.Enabled := False;
  btnGravaVeiculo.Enabled := True;

  cdsVeiculo.Append;

  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(gen_id_veiculo,1) FROM RDB$DATABASE');
    Prepare;
    ExecQuery;
    cdsVeiculoID.AsInteger := FieldByName('GEN_ID').AsInteger;
  end;

  cdsVeiculoDT_INC.AsDateTime := Now;
  cdsVeiculoSTATUS.AsString := 'A';
  cdsVeiculoENVIADO_WEB.AsString := 'N';
  cdsVeiculoIDTRANSPORTADORA.AsInteger := fdsTransportadoraID.AsInteger;
  edtNomeVeiculo.SetFocus;
end;

procedure TfrmCadTransportadora.btnLastClick(Sender: TObject);
begin
  fdsTransportadora.Last;
end;

procedure TfrmCadTransportadora.btnNextClick(Sender: TObject);
begin
  fdsTransportadora.Next;
end;

procedure TfrmCadTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdsTransportadora.State in [dsInsert, dsEdit] then
  begin
    Application.MessageBox
      ('Salve ou Cancele a Inclus�o/Altera��o da Transportadora antes de sair.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadTransportadora := nil;
  end;
end;

procedure TfrmCadTransportadora.FormCreate(Sender: TObject);
begin
  fdsTransportadora.Open;
  fdsTransportadora.Last;
  fdsTransportadora.First;
  fdsVeiculo.Open;
end;

end.