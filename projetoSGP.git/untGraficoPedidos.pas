unit untGraficoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvChart, TeEngine, Series, DB, FIBDataSet, pFIBDataSet,
  ExtCtrls, TeeProcs, Chart, DBChart, dxGDIPlusClasses, JvExExtCtrls, JvImage;

type
  TfrmGraficoPedidos = class(TForm)
    fdsPedido: TpFIBDataSet;
    fdsPedidoID: TFIBBCDField;
    fdsPedidoDT_INC: TFIBDateField;
    fdsPedidoSTATUS: TFIBStringField;
    fdsPedidoIDCLIENTE: TFIBBCDField;
    fdsPedidoIDVENDEDOR: TFIBBCDField;
    fdsPedidoIDFORMA_PAG: TFIBBCDField;
    fdsPedidoVLR_TOTITEM: TFIBBCDField;
    fdsPedidoVLR_DESCONTO: TFIBBCDField;
    fdsPedidoVLR_FRETE: TFIBBCDField;
    fdsPedidoVLR_TOTAL: TFIBBCDField;
    fdsPedidoPESO: TFIBBCDField;
    fdsPedidoPREFIXO: TFIBStringField;
    fdsPedidoDT_ALT: TFIBDateField;
    fdsPedidoDT_CONFIRMACAO: TFIBDateField;
    fdsPedidoDT_FECHAMENTO: TFIBDateField;
    fdsPedidoTELEFONE: TFIBStringField;
    fdsPedidoNOTA: TFIBStringField;
    fdsPedidoCLIENTE: TFIBStringField;
    fdsPedidoVENDEDOR: TFIBStringField;
    fdsPedidoST: TFIBStringField;
    fdsPedidoKM_TOTAL: TFIBSmallIntField;
    fdsPedidoROTA: TFIBStringField;
    fdsPedidoRAZAOSOCIAL: TFIBStringField;
    fdsPedidoEMAIL: TFIBStringField;
    fdsPedidoENDERECO: TFIBStringField;
    fdsPedidoCEP: TFIBStringField;
    fdsPedidoBAIRRO: TFIBStringField;
    fdsPedidoCIDADE: TFIBStringField;
    fdsPedidoDOCUMENTO: TFIBStringField;
    fdsPedidoSUBTRIBUTARIA: TFIBBCDField;
    fdsPedidoFORMA_PAG: TFIBStringField;
    dsPedido: TDataSource;
    JvImage1: TJvImage;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoPedidos: TfrmGraficoPedidos;

implementation

uses untData;

{$R *.dfm}

procedure TfrmGraficoPedidos.FormActivate(Sender: TObject);
begin
  fdsPedido.Open;
  fdsPedido.Last;
  fdsPedido.First;

  // Series1.Add(fdsPedido);
end;

procedure TfrmGraficoPedidos.FormShow(Sender: TObject);
begin
  frmGraficoPedidos.Top := 0;
  frmGraficoPedidos.Left := 0;
  frmGraficoPedidos.Width := Screen.Width;
  frmGraficoPedidos.Height := Screen.Height;
end;

end.