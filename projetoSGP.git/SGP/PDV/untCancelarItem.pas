unit untCancelarItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, RzPanel, RzBckgnd, Vcl.Imaging.pngimage;

type
  TfrmCancelarItem = class(TForm)
    RzBackground1: TRzBackground;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    lblNome: TRzLabel;
    JvDBGrid1: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    fdsVendaItens: TpFIBDataSet;
    dsVedaItens: TDataSource;
    fdsVendaItensIDVENDA: TFIBBCDField;
    fdsVendaItensITEM: TFIBSmallIntField;
    fdsVendaItensIDPROD_ITEM: TFIBBCDField;
    fdsVendaItensDT_INC: TFIBDateField;
    fdsVendaItensQTN: TFIBBCDField;
    fdsVendaItensVLR_UNITARIO: TFIBBCDField;
    fdsVendaItensVLR_DESC_ACRE: TFIBBCDField;
    fdsVendaItensVLR_TOTAL: TFIBBCDField;
    fdsVendaItensPESO: TFIBBCDField;
    fdsVendaItensMOTIVO_RETORNO: TFIBStringField;
    fdsVendaItensENVIADO_WEB: TFIBStringField;
    fdsVendaItensIDFILIAL: TFIBBCDField;
    fdsVendaItensENTREGAR: TFIBStringField;
    fdsVendaItensTIPO_DESC_ACRE: TFIBStringField;
    fdsVendaItensNOME: TFIBStringField;
    fdsVendaItensQTN_RETORNO: TFIBBCDField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure Pesquisar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    var
      idVenda, idFilial : Integer;
  end;

var
  frmCancelarItem: TfrmCancelarItem;

implementation

{$R *.dfm}

procedure TfrmCancelarItem.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCancelarItem.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCancelarItem.btnSelecionarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCancelarItem.FormActivate(Sender: TObject);
begin
  with fdsVendaItens do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := idVenda;
    ParamByName('IDFILIAL').AsInteger := idFilial;
    Prepare;
    Open;
  end;
end;

procedure TfrmCancelarItem.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCancelarItem.Pesquisar;
var
  sql : string;
begin
 
end;

end.
