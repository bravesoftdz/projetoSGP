unit untPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, Vcl.StdCtrls, RzCmboBx, RzDBCmbo,
  Vcl.Mask, RzEdit, RzDBEdit, RzLabel, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzTabs, RzButton, RzPanel, RzBckgnd, dxGDIPlusClasses;

type
  TfrmPlanoContas = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnDelete: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    gdrPlanoContas: TJvDBGrid;
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
    fdsPlanoContas: TpFIBDataSet;
    dsPlanoContas: TDataSource;
    fdsPlanoContasID: TFIBBCDField;
    fdsPlanoContasDT_INC: TFIBDateField;
    fdsPlanoContasDT_ALT: TFIBDateField;
    fdsPlanoContasSTATUS: TFIBStringField;
    fdsPlanoContasNOME: TFIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure gdrPlanoContasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure EditaInsere;
    procedure GravaCancela;
  public
    { Public declarations }
  end;

var
  frmPlanoContas: TfrmPlanoContas;

implementation

{$R *.dfm}

uses untData, uUtils;

procedure TfrmPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmPlanoContas := nil;
end;

procedure TfrmPlanoContas.FormCreate(Sender: TObject);
begin
  tbsTabela.Show;
  fdsPlanoContas.Open;
  lblTotal.Caption := IntToStr(fdsPlanoContas.RecordCount);
end;

procedure TfrmPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmPlanoContas.btnAlterarClick(Sender: TObject);
begin
  fdsPlanoContas.Edit;
  fdsPlanoContasDT_ALT.AsDateTime := Now;
  EditaInsere;
end;

procedure TfrmPlanoContas.btnCancelarClick(Sender: TObject);
begin
  fdsPlanoContas.Cancel;
  DM.Conexao.RollbackRetaining;
  GravaCancela;
end;

procedure TfrmPlanoContas.btnDeleteClick(Sender: TObject);
begin
  if fdsPlanoContas.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir o registro atual?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          fdsPlanoContas.Delete;
          DM.Conexao.CommitRetaining;
          lblTotal.Caption := IntToStr(fdsPlanoContas.RecordCount);
        end;
    end;
  end;
end;

procedure TfrmPlanoContas.btnFirstClick(Sender: TObject);
begin
  fdsPlanoContas.Prior;
end;

procedure TfrmPlanoContas.btnGravarClick(Sender: TObject);
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
    fdsPlanoContas.Post;
    DM.Conexao.CommitRetaining;
    GravaCancela;
  end;
end;

procedure TfrmPlanoContas.btnIncluirClick(Sender: TObject);
begin
  fdsPlanoContas.Append;
  fdsPlanoContasSTATUS.AsString := 'A';
  EditaInsere;
end;

procedure TfrmPlanoContas.btnLastClick(Sender: TObject);
begin
  fdsPlanoContas.Last;
end;

procedure TfrmPlanoContas.btnNextClick(Sender: TObject);
begin
  fdsPlanoContas.Next;
end;

procedure TfrmPlanoContas.btnPriorClick(Sender: TObject);
begin
  fdsPlanoContas.First;
end;

procedure TfrmPlanoContas.btnTodosClick(Sender: TObject);
begin
  with fdsPlanoContas do
  begin
    Close;
    Conditions.Clear;
    Prepare;
    Open;
    Last;
    First;
  end;
  lblTotal.Caption := IntToStr(fdsPlanoContas.RecordCount);
end;

procedure TfrmPlanoContas.EditaInsere;
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

procedure TfrmPlanoContas.GravaCancela;
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

  fdsPlanoContas.Close;
  fdsPlanoContas.OrderClause := 'NOME';
  fdsPlanoContas.Open;
  fdsPlanoContas.Last;
  lblTotal.Caption := IntToStr(fdsPlanoContas.RecordCount);
end;

procedure TfrmPlanoContas.gdrPlanoContasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPlanoContas.RecNo) then
  begin
    gdrPlanoContas.Canvas.Brush.Color := DM.gridOddColor;
    gdrPlanoContas.Canvas.FillRect(Rect);
    gdrPlanoContas.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

end.
