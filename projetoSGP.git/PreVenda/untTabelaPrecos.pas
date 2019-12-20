unit untTabelaPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmTabelaPrecos = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    btnTodos: TRzBitBtn;
    edtNome: TRzEdit;
    gdrItens: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    fdsProdutoItens: TpFIBDataSet;
    dsProdutoItens: TDataSource;
    fdsProdutoItensID: TFIBBCDField;
    fdsProdutoItensNOME: TFIBStringField;
    fdsProdutoItensREFERENCIA: TFIBStringField;
    fdsProdutoItensIDTAMANHO: TFIBBCDField;
    fdsProdutoItensIDCOR: TFIBBCDField;
    fdsProdutoItensPESO: TFIBBCDField;
    fdsProdutoItensPREC_VENDA: TFIBBCDField;
    fdsProdutoItensIDPRODUTO: TFIBBCDField;
    fdsTabelaPreco: TpFIBDataSet;
    fdsTabelaPrecoID: TFIBBCDField;
    fdsTabelaPrecoDESCRICAO1: TFIBStringField;
    fdsTabelaPrecoDESCRICAO2: TFIBStringField;
    fdsTabelaPrecoDESCRICAO3: TFIBStringField;
    fdsTabelaPrecoDESCRICAO4: TFIBStringField;
    fdsTabelaPrecoDESCRICAO5: TFIBStringField;
    fdsTabelaPrecoDESCRICAO6: TFIBStringField;
    fdsTabelaPrecoPDV_DES1: TFIBStringField;
    fdsTabelaPrecoPDV_DES2: TFIBStringField;
    fdsTabelaPrecoPDV_DES3: TFIBStringField;
    fdsTabelaPrecoPDV_DES4: TFIBStringField;
    fdsTabelaPrecoPDV_DES5: TFIBStringField;
    fdsTabelaPrecoPDV_DES6: TFIBStringField;
    fdsProdutoItensPREC_TAB1: TFIBBCDField;
    fdsProdutoItensPREC_TAB2: TFIBBCDField;
    fdsProdutoItensPREC_TAB3: TFIBBCDField;
    fdsProdutoItensPREC_TAB4: TFIBBCDField;
    fdsProdutoItensPREC_TAB5: TFIBBCDField;
    fdsProdutoItensPREC_TAB6: TFIBBCDField;
    fdsProdutoItensSALDO: TFIBBCDField;
    fdsProdutoItensCOD_FABRICA: TFIBStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnTodosClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerificaTabelaPreco;
    procedure FormCreate(Sender: TObject);
    procedure fdsProdutoItensBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabelaPrecos: TfrmTabelaPrecos;

implementation

uses untData;

{$R *.dfm}

procedure TfrmTabelaPrecos.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmTabelaPrecos.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmTabelaPrecos.btnTodosClick(Sender: TObject);
var
  sql : string;
begin
  with fdsProdutoItens do
  begin
    Close;
    Conditions.Clear;
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmTabelaPrecos.edtNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sql : string;
begin
  with fdsProdutoItens do
  begin
    Close;
    ParamByName('TEXTO').AsString := edtNome.Text;
    OrderClause := 'PI.NOME';
    Prepare;
    Open;
  end;
end;

procedure TfrmTabelaPrecos.fdsProdutoItensBeforeOpen(DataSet: TDataSet);
begin
  fdsProdutoItens.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmTabelaPrecos.FormCreate(Sender: TObject);
begin
  {if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
  begin
    gdrItens.Columns[1].Visible := False;
    VerificaTabelaPreco;
  end
  else
  begin
    gdrItens.Columns[4].Visible := False;
    gdrItens.Columns[5].Visible := False;
    gdrItens.Columns[6].Visible := False;
    gdrItens.Columns[7].Visible := False;
    gdrItens.Columns[8].Visible := False;
    gdrItens.Columns[9].Visible := False;
  end;}
  if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
  begin
    gdrItens.Columns[4].Visible := True;
    gdrItens.Columns[4].Title.Caption:='Tab.Pre�o 1';

    gdrItens.Columns[5].Visible :=True;
    gdrItens.Columns[5].Title.Caption:='Tab.Pre�o 2';

    gdrItens.Columns[6].Visible := True;
    gdrItens.Columns[6].Title.Caption:='Tab.Pre�o 3';

    gdrItens.Columns[7].Visible := True;
    gdrItens.Columns[7].Title.Caption:='Tab.Pre�o 4';

    gdrItens.Columns[8].Visible := True;
    gdrItens.Columns[8].Title.Caption:='Tab.Pre�o 5';

    gdrItens.Columns[9].Visible := True;
    gdrItens.Columns[9].Title.Caption:='Tab.Pre�o 4';
  end
  else
  begin
    gdrItens.Columns[4].Visible := False;
    gdrItens.Columns[5].Visible := False;
    gdrItens.Columns[6].Visible := False;
    gdrItens.Columns[7].Visible := False;
    gdrItens.Columns[8].Visible := False;
    gdrItens.Columns[9].Visible := False;
  end;
  fdsProdutoItens.Open;
end;

procedure TfrmTabelaPrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end
  else
    if Key = VK_ESCAPE then
    begin
      btnSelecionar.Click;
    end;

end;

procedure TfrmTabelaPrecos.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsProdutoItens.RecNo) then
  begin
  //  JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmTabelaPrecos.VerificaTabelaPreco;
var
  tempLeft : integer;
begin
  tempLeft := 8;
  fdsTabelaPreco.Open;

  if fdsTabelaPrecoPDV_DES1.AsString = 'N' then
  begin
    gdrItens.Columns[2].Visible := False;
  end
  else
  begin
    gdrItens.Columns[2].Title.Caption := fdsTabelaPrecoDESCRICAO1.AsString;
  end;

  if fdsTabelaPrecoPDV_DES2.AsString = 'N' then
  begin
    gdrItens.Columns[3].Visible := False;
  end
  else
  begin
    gdrItens.Columns[3].Title.Caption := fdsTabelaPrecoDESCRICAO2.AsString;
  end;

  if fdsTabelaPrecoPDV_DES3.AsString = 'N' then
  begin
    gdrItens.Columns[4].Visible := False;
  end
  else
  begin
    gdrItens.Columns[4].Title.Caption := fdsTabelaPrecoDESCRICAO3.AsString;
  end;

  if fdsTabelaPrecoPDV_DES4.AsString = 'N' then
  begin
    gdrItens.Columns[5].Visible := False;
  end
  else
  begin
    gdrItens.Columns[5].Title.Caption := fdsTabelaPrecoDESCRICAO4.AsString;
  end;

  if fdsTabelaPrecoPDV_DES5.AsString = 'N' then
  begin
    gdrItens.Columns[6].Visible := False;
  end
  else
  begin
    gdrItens.Columns[6].Title.Caption := fdsTabelaPrecoDESCRICAO5.AsString;
  end;

  if fdsTabelaPrecoPDV_DES6.AsString = 'N' then
  begin
    gdrItens.Columns[7].Visible := False;
  end
  else
  begin
    gdrItens.Columns[7].Title.Caption := fdsTabelaPrecoDESCRICAO6.AsString;
  end;
end;

end.