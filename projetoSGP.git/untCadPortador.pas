unit untCadPortador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, RzButton, RzEdit, StdCtrls, Mask,
  RzDBEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, RzTabs, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, RzBckgnd;

type
  TfrmCadPortador = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel1: TRzLabel;
    pgcControl: TRzPageControl;
    tbsTabela: TRzTabSheet;
    JvDBGrid1: TJvDBGrid;
    tbsForm: TRzTabSheet;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    edtID: TRzDBEdit;
    edtDt_Inc: TRzDBEdit;
    edtDt_Alt: TRzDBEdit;
    edtNome: TRzDBEdit;
    RzPanel2: TRzPanel;
    btnIncluir: TRzBitBtn;
    btnGravar: TRzBitBtn;
    btnAlterar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    fdsPortador: TpFIBDataSet;
    dsUsuarios: TDataSource;
    fdsPortadorID: TFIBBCDField;
    fdsPortadorDT_INC: TFIBDateField;
    fdsPortadorDT_ALT: TFIBDateField;
    fdsPortadorSTATUS: TFIBStringField;
    fdsPortadorDESCRICAO: TFIBStringField;
    fdsPortadorENVIADO_WEB: TFIBStringField;
    fdsPortadorIDFILIAL: TFIBBCDField;
    fdsPortadorSALDO: TFIBBCDField;
    edtSaldo: TRzDBEdit;
    lblSaldo: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditaInsere;
    procedure GravaCancela;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPortador: TfrmCadPortador;

implementation

uses untData, uUtils;

{$R *.dfm}

procedure TfrmCadPortador.btnAlterarClick(Sender: TObject);
begin
  fdsPortador.Edit;
  fdsPortadorDT_ALT.AsDateTime := Now;
  EditaInsere;
end;

procedure TfrmCadPortador.btnCancelarClick(Sender: TObject);
begin
  fdsPortador.Cancel;
  DM.Conexao.RollbackRetaining;
  GravaCancela;
end;

procedure TfrmCadPortador.btnGravarClick(Sender: TObject);
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
    fdsPortador.Post;
    DM.Conexao.CommitRetaining;
    GravaCancela;
  end;
end;

procedure TfrmCadPortador.btnIncluirClick(Sender: TObject);
begin
  fdsPortador.Append;
  fdsPortadorDT_INC.AsDateTime := Now;
  fdsPortadorSTATUS.AsString := 'A';
  fdsPortadorIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsPortadorENVIADO_WEB.AsString := 'N';
  edtSaldo.ReadOnly := False;
  edtSaldo.Color := clMoneyGreen;
  edtSaldo.TabStop := True;
  EditaInsere;
end;

procedure TfrmCadPortador.EditaInsere;
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

procedure TfrmCadPortador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmCadPortador := nil;
end;

procedure TfrmCadPortador.FormCreate(Sender: TObject);
begin
  if DM.fdsConfigIDFILIAL.AsInteger <> 1 then
  begin
    with fdsPortador do
    begin
      Close;
      Conditions.Clear;
      Conditions.AddCondition('IDFILIAL',
        'IDFILIAL = ' + DM.fdsConfigIDFILIAL.AsString, True);
      Conditions.Apply;
      Prepare;
      Open;
    end;
  end
  else
    fdsPortador.Open;
end;

procedure TfrmCadPortador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCadPortador.GravaCancela;
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
  edtSaldo.ReadOnly := True;
  edtSaldo.Color := clInfoBk;
  edtSaldo.TabStop := False;
  fdsPortador.Close;
  fdsPortador.Open;
  fdsPortador.Last;
end;

procedure TfrmCadPortador.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsPortador.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

end.