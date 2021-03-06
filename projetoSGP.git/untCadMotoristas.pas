unit untCadMotoristas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzEdit, RzDBEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, RzTabs, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzButton, RzPanel, RzBckgnd, DB, FIBDataSet,
  pFIBDataSet, Vcl.Imaging.pngimage;

type
  TfrmCadMotoristas = class(TForm)
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
    fdsMotorista: TpFIBDataSet;
    dsMotorista: TDataSource;
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
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel2: TRzLabel;
    fdsMotoristaID: TFIBBCDField;
    fdsMotoristaDT_INC: TFIBDateField;
    fdsMotoristaDT_ALT: TFIBDateField;
    fdsMotoristaSTATUS: TFIBStringField;
    fdsMotoristaNOME: TFIBStringField;
    fdsMotoristaNCNH: TFIBStringField;
    fdsMotoristaTIPOCNH: TFIBStringField;
    fdsMotoristaENVIADO_WEB: TFIBStringField;
    fdsMotoristaIDFILIAL: TFIBBCDField;
    fdsMotoristaCPF: TFIBStringField;
    RzDBEdit3: TRzDBEdit;
    RzLabel3: TRzLabel;
    procedure btnPriorClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditaInsere;
    procedure GravaCancela;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMotoristas: TfrmCadMotoristas;

implementation

uses untData, uUtils;

{$R *.dfm}

procedure TfrmCadMotoristas.btnAlterarClick(Sender: TObject);
begin
  fdsMotorista.Edit;
  fdsMotoristaDT_ALT.AsDateTime := Now;
  EditaInsere;
end;

procedure TfrmCadMotoristas.btnCancelarClick(Sender: TObject);
begin
  fdsMotorista.Cancel;
  DM.Conexao.RollbackRetaining;
  GravaCancela;
end;

procedure TfrmCadMotoristas.btnDeleteClick(Sender: TObject);
begin
  if fdsMotorista.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente excluir o registro atual?'), 'Aten��o',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          fdsMotorista.Delete;
          DM.Conexao.CommitRetaining;
          lblTotal.Caption := intToStr(fdsMotorista.RecordCount);
        end;
    end;
  end;
end;

procedure TfrmCadMotoristas.btnFirstClick(Sender: TObject);
begin
  fdsMotorista.Prior;
end;

procedure TfrmCadMotoristas.btnGravarClick(Sender: TObject);
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
    fdsMotorista.Post;
    DM.Conexao.CommitRetaining;
    GravaCancela;
  end;
end;

procedure TfrmCadMotoristas.btnIncluirClick(Sender: TObject);
begin
  fdsMotorista.Append;
  fdsMotoristaDT_INC.AsDateTime := Now;
  fdsMotoristaSTATUS.AsString := 'A';
  fdsMotoristaENVIADO_WEB.AsString := 'N';
  fdsMotoristaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  EditaInsere;
end;

procedure TfrmCadMotoristas.btnLastClick(Sender: TObject);
begin
  fdsMotorista.Last;
end;

procedure TfrmCadMotoristas.btnNextClick(Sender: TObject);
begin
  fdsMotorista.Next;
end;

procedure TfrmCadMotoristas.btnPriorClick(Sender: TObject);
begin
  fdsMotorista.First;
end;

procedure TfrmCadMotoristas.btnTodosClick(Sender: TObject);
begin
  fdsMotorista.Close;
  fdsMotorista.Open;
  fdsMotorista.Last;
  fdsMotorista.First;
end;

procedure TfrmCadMotoristas.EditaInsere;
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

procedure TfrmCadMotoristas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCadMotoristas := nil;
end;

procedure TfrmCadMotoristas.FormCreate(Sender: TObject);
begin
  tbsTabela.Show;
  fdsMotorista.Open;
  fdsMotorista.Last;
  fdsMotorista.First;
  lblTotal.Caption := intToStr(fdsMotorista.RecordCount);
end;

procedure TfrmCadMotoristas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCadMotoristas.GravaCancela;
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

  fdsMotorista.Close;
  fdsMotorista.OrderClause := 'NOME';
  fdsMotorista.Open;
  fdsMotorista.Last;
  lblTotal.Caption := intToStr(fdsMotorista.RecordCount);
end;

procedure TfrmCadMotoristas.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsMotorista.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
      JvDBGrid1.Brush.Color :=clHighlight;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmCadMotoristas.JvDBGrid1TitleClick(Column: TColumn);
begin
  fdsMotorista.Close;
  fdsMotorista.OrderClause := Column.FieldName;
  fdsMotorista.Open;
end;

end.
