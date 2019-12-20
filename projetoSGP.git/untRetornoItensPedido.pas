unit untRetornoItensPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, RzDBEdit, StdCtrls, Mask, RzEdit, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, DB,
  pFIBClientDataSet, DBClient, Provider, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  RzButton, FIBQuery, pFIBQuery, FIBDataSet, pFIBDataSet, RzDBGrid;

type
  TfrmRetornoItensPedido = class(TForm)
    RzGroupBox2: TRzGroupBox;
    cdsItensPedido: TpFIBClientDataSet;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    lblCidade: TRzLabel;
    lblCodigo: TRzLabel;
    lblDtInc: TRzLabel;
    RzLabel1: TRzLabel;
    lblVendedor: TRzLabel;
    edtCliente: TRzEdit;
    edtVendedor: TRzEdit;
    RzBackground1: TRzBackground;
    btnCancelar: TRzBitBtn;
    btnGravar: TRzBitBtn;
    dsItensPedido: TDataSource;
    qryAtualizaItenPedido: TpFIBQuery;
    pFIBDataSetProvider1: TpFIBDataSetProvider;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorNOME: TFIBStringField;
    RzLabel2: TRzLabel;
    edtValor: TRzEdit;
    edtPrefixo: TRzEdit;
    edtID: TRzEdit;
    edtDt_INC: TRzEdit;
    gdrItens: TRzDBGrid;
    cdsItensPedidoIDPEDIDO: TpFIBClientBCDField;
    cdsItensPedidoITEM: TSmallintField;
    cdsItensPedidoIDPROD_ITEM: TpFIBClientBCDField;
    cdsItensPedidoDT_INC: TDateField;
    cdsItensPedidoDT_ALT: TDateField;
    cdsItensPedidoQTN: TpFIBClientBCDField;
    cdsItensPedidoVLR_UNITARIO: TpFIBClientBCDField;
    cdsItensPedidoVLR_DESCONTO: TpFIBClientBCDField;
    cdsItensPedidoVLR_TOTAL: TpFIBClientBCDField;
    cdsItensPedidoPESO: TpFIBClientBCDField;
    cdsItensPedidoQTN_RETORNO: TpFIBClientBCDField;
    cdsItensPedidoMOTIVO_RETORNO: TStringField;
    cdsItensPedidoPRODUTO: TStringField;
    cdsItensPedidoIDFILIAL: TpFIBClientBCDField;
    cdsItensPedidoENVIADO_WEB: TStringField;
    cdsItensPedidoENTREGUE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure fdsVendedorAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure RetornaVendedor();
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
  var
    idVendedor: string;
  end;

var
  frmRetornoItensPedido: TfrmRetornoItensPedido;

implementation

uses untData, untRomaneio;

{$R *.dfm}

procedure TfrmRetornoItensPedido.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmRetornoItensPedido.btnGravarClick(Sender: TObject);
begin
  cdsItensPedido.First;
  while not(cdsItensPedido.Eof) do
  begin
    with qryAtualizaItenPedido do
    begin
      ParamByName('QTN_RETORNO').AsInteger :=
        cdsItensPedidoQTN_RETORNO.AsInteger;
      ParamByName('MOTIVO_RETORNO').AsString :=
        cdsItensPedidoMOTIVO_RETORNO.AsString;
      ParamByName('IDPEDIDO').AsString := cdsItensPedidoIDPEDIDO.AsString;
      ParamByName('ITEM').AsString := cdsItensPedidoITEM.AsString;
      ParamByName('IDFILIAL').AsString := cdsItensPedidoIDFILIAL.AsString;
      Prepare;
      ExecQuery;
    end;
    cdsItensPedido.Next;
  end;

  ModalResult := mrOk;
end;

procedure TfrmRetornoItensPedido.fdsVendedorAfterOpen(DataSet: TDataSet);
begin
  edtVendedor.Text := fdsVendedorNOME.AsString;
end;

procedure TfrmRetornoItensPedido.FormActivate(Sender: TObject);
begin
  RetornaVendedor;
end;

procedure TfrmRetornoItensPedido.FormCreate(Sender: TObject);
begin
  // cdsItensPedido.CreateDataSet;
  cdsItensPedido.Open;
end;

procedure TfrmRetornoItensPedido.gdrItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(cdsItensPedido.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TfrmRetornoItensPedido.RetornaVendedor;
begin
  with fdsVendedor do
  begin
    Close;
    ParamByName('ID').AsString := idVendedor;
    Prepare;
    Open;
  end;
end;

end.