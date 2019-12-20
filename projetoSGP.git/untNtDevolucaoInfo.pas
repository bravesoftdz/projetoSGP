unit untNtDevolucaoInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, Vcl.Mask, RzEdit, Vcl.StdCtrls, RzCmboBx, RzDBCmbo,
  RzButton, RzLabel, Vcl.ExtCtrls, RzPanel, RzBckgnd, Data.DB, FIBDataSet,
  pFIBDataSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzDBEdit,
  FIBQuery, pFIBQuery;

type
  TfrmNtDevolucaoInfo = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    lblTituloTotal: TRzLabel;
    lblTotal: TRzLabel;
    mmoInfo: TRzMemo;
    btnOK: TRzBitBtn;
    dtpDtEmissao: TJvDateTimePicker;
    fdsCFOP: TpFIBDataSet;
    dsCFOP: TDataSource;
    fdsCFOPID: TFIBBCDField;
    fdsCFOPCOD_NOME: TFIBStringField;
    RzBitBtn1: TRzBitBtn;
    fdsCFOPCODIGO_CFOP: TFIBStringField;
    JvDBGrid1: TJvDBGrid;
    RzLabel22: TRzLabel;
    RzLabel1: TRzLabel;
    btnIncChave: TRzBitBtn;
    btnEditChave: TRzBitBtn;
    btnDeleteChave: TRzBitBtn;
    btnGravaChave: TRzBitBtn;
    edtChaveDevolver: TRzDBEdit;
    qryComand: TpFIBQuery;
    edtNotaNUm: TRzDBEdit;
    RzLabel2: TRzLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncChaveClick(Sender: TObject);
    procedure btnEditChaveClick(Sender: TObject);
    procedure btnGravaChaveClick(Sender: TObject);
    procedure btnDeleteChaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNtDevolucaoInfo: TfrmNtDevolucaoInfo;

implementation

{$R *.dfm}

uses untData, untNfe;

procedure TfrmNtDevolucaoInfo.btnDeleteChaveClick(Sender: TObject);
begin
  if frmNfe.cdsNF_Devolvidas.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle,
      Pchar('Deseja realmente apagar este chave de nota para devolu��o?'),
      'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
      idYes:
        begin
          frmNfe.cdsNF_Devolvidas.Delete;
        end;
    end;
  end;
end;

procedure TfrmNtDevolucaoInfo.btnEditChaveClick(Sender: TObject);
begin
  btnIncChave.Enabled := False;
  btnEditChave.Enabled := False;
  btnDeleteChave.Enabled := False;
  btnGravaChave.Enabled := True;

  frmNfe.cdsNF_Devolvidas.Edit;
  edtNotaNUm.ReadOnly := False;
  edtChaveDevolver.ReadOnly := False;
  edtChaveDevolver.SetFocus;
end;

procedure TfrmNtDevolucaoInfo.btnGravaChaveClick(Sender: TObject);
begin
  btnIncChave.Enabled := True;
  btnEditChave.Enabled := True;
  btnDeleteChave.Enabled := True;
  btnGravaChave.Enabled := False;

  frmNfe.cdsNF_Devolvidas.Post;
  edtChaveDevolver.ReadOnly := True;
  edtNotaNUm.ReadOnly := True;
  btnIncChave.SetFocus;
end;

procedure TfrmNtDevolucaoInfo.btnIncChaveClick(Sender: TObject);
begin
  btnIncChave.Enabled := False;
  btnEditChave.Enabled := False;
  btnDeleteChave.Enabled := False;
  btnGravaChave.Enabled := True;

  frmNfe.cdsNF_Devolvidas.Append;

  with qryComand do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GEN_ID(GEN_ID_DEVOLUCAO_COMPRA,1) FROM RDB$DATABASE');
    Prepare;
    ExecQuery;
    frmNfe.cdsNF_DevolvidasID.AsInteger := FieldByName('GEN_ID').AsInteger;
  end;

  frmNfe.cdsNF_DevolvidasIDNFE.AsInteger := frmNfe.fdsNFeID.AsInteger;
  frmNfe.cdsNF_DevolvidasIDFILIAL.AsInteger := frmNfe.fdsNFeIDFILIAL.AsInteger;
  frmNfe.cdsNF_DevolvidasDT_INC.AsDateTime := Now;

  edtNotaNUm.ReadOnly := False;
  edtChaveDevolver.ReadOnly := False;
  edtChaveDevolver.SetFocus;
end;

procedure TfrmNtDevolucaoInfo.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmNtDevolucaoInfo.FormCreate(Sender: TObject);
var
  CFOP_DESC_FORA, CFOP_FORA: string;
begin
  { fdsCFOP.SelectSQL.Add(' (' + '5201, ' + '5202, ' + '5553, ' + '5556' + ')');
    fdsCFOP.Prepare;
    fdsCFOP.Open;
    fdsCFOP.First;

    while not(fdsCFOP.Eof) do
    begin
    cbxCFOP.AddItemValue(fdsCFOPCOD_NOME.AsString, fdsCFOPCODIGO_CFOP.AsString);
    CFOP_DESC_FORA :=  '6' + Copy(fdsCFOPCOD_NOME.AsString, 2, length(fdsCFOPCOD_NOME.AsString)) + ' Fora do Estado.';
    CFOP_FORA := '6' + Copy(fdsCFOPCODIGO_CFOP.AsString, 2, length(fdsCFOPCODIGO_CFOP.AsString));
    cbxCFOP.AddItemValue(CFOP_DESC_FORA, CFOP_FORA);
    fdsCFOP.Next;
    end; }
end;

procedure TfrmNtDevolucaoInfo.RzBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel
end;

end.
