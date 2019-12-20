unit untPesqCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmPesqCliente = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    btnTodos: TRzBitBtn;
    btnPesquisar: TRzBitBtn;
    edtNome: TRzEdit;
    JvDBGrid1: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    dsCliente: TDataSource;
    fdsClientes: TpFIBDataSet;
    fdsClientesID: TFIBBCDField;
    fdsClientesNOME: TFIBStringField;
    fdsClientesKM_TOTAL: TFIBSmallIntField;
    fdsClientesIDROTA: TFIBBCDField;
    fdsClientesIDFORMA_PAGAMENTO: TFIBBCDField;
    fdsClientesIDVENDEDOR: TFIBBCDField;
    btnCadastrar: TRzBitBtn;
    fdsClientesTELEFONE: TFIBStringField;
    fdsClientesCELULAR: TFIBStringField;
    fdsClientesEMAIL: TFIBStringField;
    fdsClientesDT_INC: TFIBDateField;
    fdsClientesDT_ALT: TFIBDateField;
    fdsClientesSTATUS: TFIBStringField;
    fdsClientesDT_NASC: TFIBDateField;
    fdsClientesENDERECO: TFIBStringField;
    fdsClientesBAIRRO: TFIBStringField;
    fdsClientesIDCIDADE: TFIBBCDField;
    fdsClientesCEP: TFIBStringField;
    fdsClientesRG: TFIBStringField;
    fdsClientesCPF: TFIBStringField;
    fdsClientesSEXO: TFIBStringField;
    fdsClientesPROFISSAO: TFIBStringField;
    fdsClientesTIPO: TFIBStringField;
    fdsClientesRAZAOSOCIAL: TFIBStringField;
    fdsClientesCONTATO: TFIBStringField;
    fdsClientesCNPJ: TFIBStringField;
    fdsClientesIE: TFIBStringField;
    fdsClientesEMAIL_NFE: TFIBStringField;
    fdsClientesDT_ULTIMO_CONTATO: TFIBDateField;
    fdsClientesLIMITE_CREDITO: TFIBBCDField;
    fdsClientesENVIADO_WEB: TFIBStringField;
    fdsClientesIDFILIAL: TFIBBCDField;
    fdsClientesREFERENCIA: TFIBStringField;
    fdsClientesPROPRIETARIO: TFIBStringField;
    fdsClientesCREDITO: TFIBBCDField;
    procedure btnTodosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Pesquisar;
    procedure ControlaExibicaoPJ;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CadastroCliente;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

uses untData, untCadClientes;

{$R *.dfm}

procedure TfrmPesqCliente.btnCadastrarClick(Sender: TObject);
begin
  CadastroCliente;
end;

procedure TfrmPesqCliente.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPesqCliente.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqCliente.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPesqCliente.btnTodosClick(Sender: TObject);
var
  sql : string;
begin
  fdsClientes.Close;
  fdsClientes.SelectSQL.Clear;
  sql := 'SELECT * FROM CLIENTE';
  fdsClientes.SelectSQL.Add(sql);
  ControlaExibicaoPJ;
  fdsClientes.OrderClause := 'NOME';
  fdsClientes.Prepare;
  fdsClientes.Open;
  fdsClientes.Last;
  fdsClientes.First;
end;

procedure TfrmPesqCliente.CadastroCliente;
begin
  Try
    frmCadClientes := TfrmCadClientes.Create(nil);
    frmCadClientes.ShowModal;
  Finally
    frmCadClientes.Free;
  End;
end;

procedure TfrmPesqCliente.ControlaExibicaoPJ;
begin
  if DM.fdsConfigCLIENTE_EXIBIR_PJ.AsString = 'N' then
  begin
    fdsClientes.Conditions.AddCondition('TIPO', 'TIPO = ' + QuotedStr('F'), True);
    fdsClientes.Conditions.Apply;
  end;
end;

procedure TfrmPesqCliente.edtNomeChange(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmPesqCliente.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;
  ControlaExibicaoPJ;
  fdsClientes.Open;
  fdsClientes.First;
end;

procedure TfrmPesqCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    btnSelecionar.Click;
  end
  else
    if Key = VK_ESCAPE then
     begin
        btnCancelar.Click;
     end;
end;

procedure TfrmPesqCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSelecionar.Click;
  end;
end;

procedure TfrmPesqCliente.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsClientes.RecNo) then
  begin
    JvDBGrid1.Canvas.Brush.Color := DM.gridOddColor;
    JvDBGrid1.Canvas.FillRect(Rect);
    JvDBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmPesqCliente.Pesquisar;
var
  sql : string;
begin
  fdsClientes.Close;
  fdsClientes.SelectSQL.Clear;
  sql := 'SELECT * FROM CLIENTE WHERE UPPER(NOME) LIKE '+ QuotedStr(edtNome.Text + '%');
  fdsClientes.SelectSQL.Add(sql);
  ControlaExibicaoPJ;
  fdsClientes.OrderClause := 'NOME';
  fdsClientes.Prepare;
  fdsClientes.Open;
end;

end.
