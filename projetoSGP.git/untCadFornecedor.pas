unit untCadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzEdit, RzDBEdit,
  RzLabel, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzButton, RzPanel,
  RzBckgnd, Vcl.Imaging.pngimage, FIBDatabase, pFIBDatabase;

type
  TfrmCadFornecedor = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    JvDBGrid1: TJvDBGrid;
    tbsForm: TRzTabSheet;
    lblCodigo: TRzLabel;
    lblDtAlt: TRzLabel;
    lblDtInc: TRzLabel;
    lblNome: TRzLabel;
    lblStatus: TRzLabel;
    edtID: TRzDBEdit;
    edtDt_Inc: TRzDBEdit;
    edtDt_Alt: TRzDBEdit;
    edtNome: TRzDBEdit;
    cbxStatus: TRzDBComboBox;
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
    fdsFornecedor: TpFIBDataSet;
    dsFornecedor: TDataSource;
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
    fdsFornecedorCIDADE: TFIBStringField;
    RzLabel2: TRzLabel;
    edtRazao: TRzDBEdit;
    edtIE: TRzDBEdit;
    RzLabel5: TRzLabel;
    edtCNPJ: TRzDBEdit;
    RzLabel4: TRzLabel;
    edtContato: TRzDBEdit;
    RzLabel3: TRzLabel;
    lblEndereco: TRzLabel;
    edtEndereco: TRzDBEdit;
    edtBairro: TRzDBEdit;
    lblBairro: TRzLabel;
    lblCidade: TRzLabel;
    edtCidade: TRzEdit;
    edtUF: TRzEdit;
    lblUF: TRzLabel;
    btnPesqCidade: TRzBitBtn;
    edtCEP: TRzDBEdit;
    lblCEP: TRzLabel;
    lblTelefone: TRzLabel;
    edtTelefone: TRzDBEdit;
    lblEmail: TRzLabel;
    edtEmail: TRzDBEdit;
    fdsFornecedorUF: TFIBStringField;
    fdsFornecedorENVIADO_WEB: TFIBStringField;
    transFornec: TpFIBTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditaInsere;
    procedure GravaCancela;
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnPesqCidadeClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure fdsFornecedorAfterScroll(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;
  ordem: string[4]; // controla a ordena��o: Asc / Desc

implementation

uses uUtils, untData, untPesqCidade, untPesqFornecedor;

{$R *.dfm}

procedure TfrmCadFornecedor.btnAlterarClick(Sender: TObject);
begin
  fdsFornecedor.Edit;
  fdsFornecedorDT_ALT.AsDateTime := Now;
  fdsFornecedorENVIADO_WEB.AsString := 'N';
  EditaInsere;
end;

procedure TfrmCadFornecedor.btnCancelarClick(Sender: TObject);
begin
  fdsFornecedor.Cancel;
  transFornec.RollbackRetaining;
  GravaCancela;
end;

procedure TfrmCadFornecedor.btnDeleteClick(Sender: TObject);
begin
  if fdsFornecedor.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir o registro atual?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          fdsFornecedor.Delete;
          transFornec.CommitRetaining;
          lblTotal.Caption := intToStr(fdsFornecedor.RecordCount);
        end;
    end;
  end;
end;

procedure TfrmCadFornecedor.btnFirstClick(Sender: TObject);
begin
  fdsFornecedor.Prior;
end;

procedure TfrmCadFornecedor.btnGravarClick(Sender: TObject);
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
      if utils.VerificaCampoObrigatorio(TRzDBEdit(Components[i])) then
        campoVazio := True;
    end;
  end;

  if campoVazio then
    Application.MessageBox('Existem campos obrigat�rios sem preencher.',
      'Ante��o', MB_OK + MB_ICONERROR)
  else
  begin
    fdsFornecedor.Post;
    transFornec.CommitRetaining;
    GravaCancela;
  end;
end;

procedure TfrmCadFornecedor.btnIncluirClick(Sender: TObject);
begin
  fdsFornecedor.Append;
  fdsFornecedorDT_INC.AsDateTime := Now;
  fdsFornecedorSTATUS.AsString := 'A';
  edtCidade.Clear;
  edtUF.Clear;
  EditaInsere;
end;

procedure TfrmCadFornecedor.btnLastClick(Sender: TObject);
begin
  fdsFornecedor.Last;
end;

procedure TfrmCadFornecedor.btnNextClick(Sender: TObject);
begin
  fdsFornecedor.Next;
end;

procedure TfrmCadFornecedor.btnPesqCidadeClick(Sender: TObject);
begin
  Try
    frmPesqCidade := TfrmPesqCidade.Create(nil);
    frmPesqCidade.ShowModal;
  Finally
    if frmPesqCidade.ModalResult = mrOk then
    begin
      fdsFornecedorIDCIDADE.AsInteger := frmPesqCidade.fdsCidadesID.AsInteger;
      edtCidade.Text := frmPesqCidade.fdsCidadesNOME.AsString;
      edtUF.Text := frmPesqCidade.fdsCidadesUF.AsString;
    end;
    frmPesqCidade.Free;
  End;
end;

procedure TfrmCadFornecedor.btnPriorClick(Sender: TObject);
begin
  fdsFornecedor.First;
end;

procedure TfrmCadFornecedor.btnTodosClick(Sender: TObject);
begin
  fdsFornecedor.Close;
  fdsFornecedor.Open;
  fdsFornecedor.Last;
  fdsFornecedor.First;
end;

procedure TfrmCadFornecedor.EditaInsere;
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
  edtNome.SetFocus;
end;

procedure TfrmCadFornecedor.fdsFornecedorAfterScroll(DataSet: TDataSet);
begin
  edtCidade.Text := fdsFornecedorCIDADE.AsString;
  edtUF.Text := fdsFornecedorUF.AsString;
end;

procedure TfrmCadFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCadFornecedor := nil;
end;

procedure TfrmCadFornecedor.FormCreate(Sender: TObject);
begin
  tbsTabela.Show;
  fdsFornecedor.Open;
  fdsFornecedor.Last;
  fdsFornecedor.First;
  lblTotal.Caption := intToStr(fdsFornecedor.RecordCount);
end;

procedure TfrmCadFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCadFornecedor.GravaCancela;
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

  fdsFornecedor.Close;
  fdsFornecedor.OrderClause := 'NOME';
  fdsFornecedor.Open;
  fdsFornecedor.Last;
  lblTotal.Caption := intToStr(fdsFornecedor.RecordCount);
end;

procedure TfrmCadFornecedor.JvDBGrid1DblClick(Sender: TObject);
begin
  if fdsFornecedor.RecordCount > 0 then
    tbsForm.Show;
end;

procedure TfrmCadFornecedor.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsFornecedor.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      JvDBGrid1.Canvas.Brush.Color :=clHighlight;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadFornecedor.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  coluna: string;
begin
  if ((Key = 'p') or (Key = 'P')) then
  begin
    coluna := JvDBGrid1.SelectedField.FieldName;

    if coluna = 'NOME' then
    Begin
      Try
        frmPesqFornecedor := TfrmPesqFornecedor.Create(nil);
        frmPesqFornecedor.ShowModal;
      Finally
        if frmPesqFornecedor.ModalResult = mrOk then
        begin
          with fdsFornecedor do
          begin
            Close;
            Conditions.Clear;
            Conditions.Apply;
            Prepare;
            Open;
            if Locate('NOME', frmPesqFornecedor.fdsFornecedorNOME.AsString, [])
            then
              tbsForm.Show;
            // else
            // Application.MessageBox('Cliente n�o encontrado.', 'Aten��o', MB_OK+MB_ICONQUESTION);
          end;
          frmPesqFornecedor.Free;
          frmPesqFornecedor := nil;
        End;
      end;
    end;
  end;

end;

procedure TfrmCadFornecedor.JvDBGrid1TitleClick(Column: TColumn);
begin
  fdsFornecedor.Close;
  fdsFornecedor.OrderClause := Column.FieldName + ' ' + ordem;
  fdsFornecedor.Open;

  if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';
end;

end.
