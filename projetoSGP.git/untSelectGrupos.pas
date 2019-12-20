unit untSelectGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBckgnd, RzButton, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzPanel, Data.DB,
  FIBDataSet, pFIBDataSet, Datasnap.DBClient, pFIBClientDataSet;

type
  TfrmSelectGrupos = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    grdGrupos: TJvDBGrid;
    RzPanel2: TRzPanel;
    btnSelecionar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzBackground1: TRzBackground;
    dsGrupo: TDataSource;
    fdsCor_Grupo: TpFIBDataSet;
    fdsCor_GrupoIDCOR: TFIBBCDField;
    fdsCor_GrupoIDGRUPO: TFIBBCDField;
    fdsCor_GrupoDT_INC: TFIBDateField;
    fdsCor_GrupoDT_ALT: TFIBDateField;
    fdsCor_GrupoSTATUS: TFIBStringField;
    fdsCor_GrupoST: TFIBStringField;
    fdsCor_GrupoGRUPO: TFIBStringField;
    fdsTamanho_Grupo: TpFIBDataSet;
    fdsTamanho_GrupoIDTAMANHO: TFIBBCDField;
    fdsTamanho_GrupoIDGRUPO: TFIBBCDField;
    fdsTamanho_GrupoDT_INC: TFIBDateField;
    fdsTamanho_GrupoDT_ALT: TFIBDateField;
    fdsTamanho_GrupoSTATUS: TFIBStringField;
    fdsTamanho_GrupoST: TFIBStringField;
    fdsTamanho_GrupoGRUPO: TFIBStringField;
    fdsGrupo: TpFIBDataSet;
    fdsGrupoID: TFIBBCDField;
    fdsGrupoDT_INC: TFIBDateField;
    fdsGrupoDT_ALT: TFIBDateField;
    fdsGrupoSTATUS: TFIBStringField;
    fdsGrupoNOME: TFIBStringField;
    fdsGrupoREFERENCIA: TFIBStringField;
    fdsGrupoENVIADO_WEB: TFIBStringField;
    cdsGrupo: TpFIBClientDataSet;
    cdsGrupoNOME: TStringField;
    cdsGrupoREFERENCIA: TStringField;
    cdsGrupoSELECT: TStringField;
    cdsGrupoSEL: TStringField;
    cdsGrupoID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure grdGruposDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdGruposCellClick(Column: TColumn);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);

  private
    { Private declarations }
  public
    idTabela: Integer;
    tabela: string;
  end;

var
  frmSelectGrupos: TfrmSelectGrupos;

implementation

{$R *.dfm}

uses untData, untPrincipal, untCadCores, untCadTamanhos;

procedure TfrmSelectGrupos.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSelectGrupos.btnSelecionarClick(Sender: TObject);
begin
  cdsGrupo.First;
  fdsCor_Grupo.Open;
  fdsTamanho_Grupo.Open;

  if tabela = 'Cor' then
  begin
    while not(cdsGrupo.Eof) do
    begin
      if cdsGrupoSELECT.AsString = 'S' then
      begin
        if not(frmCadCores.fdsCor_Grupo.Locate('IDGRUPO',
          cdsGrupoID.AsInteger, [])) then
        begin
          fdsCor_Grupo.Insert;
          fdsCor_GrupoIDGRUPO.AsInteger := cdsGrupoID.AsInteger;
          fdsCor_GrupoIDCOR.AsInteger := idTabela;
          fdsCor_GrupoDT_INC.AsDateTime := Now;
          fdsCor_GrupoSTATUS.AsString := 'A';
          fdsCor_Grupo.Post;
        end;
      end;
      cdsGrupo.Next;
    end;
  end;

  if tabela = 'Tamanho' then
  begin
    while not(cdsGrupo.Eof) do
    begin
      if cdsGrupoSELECT.AsString = 'S' then
      begin
        if not(frmCadTamanhos.fdsTamanho_Grupo.Locate('IDGRUPO',
          cdsGrupoID.AsString, [])) then
        begin
          fdsTamanho_Grupo.Insert;
          fdsTamanho_GrupoIDGRUPO.AsInteger := cdsGrupoID.AsInteger;
          fdsTamanho_GrupoIDTAMANHO.AsInteger := idTabela;
          fdsTamanho_GrupoDT_INC.AsDateTime := Now;
          fdsTamanho_GrupoSTATUS.AsString := 'A';
          fdsTamanho_Grupo.Post;
        end;
      end;
      cdsGrupo.Next;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmSelectGrupos.FormCreate(Sender: TObject);
begin
  fdsGrupo.OrderClause := 'Nome';
  fdsGrupo.Open;
  fdsGrupo.First;

  cdsGrupo.CreateDataSet;

  while not(fdsGrupo.Eof) do
  begin
    cdsGrupo.Append;
    cdsGrupoID.AsInteger := fdsGrupoID.AsInteger;
    cdsGrupoNOME.AsString := fdsGrupoNOME.AsString;
    cdsGrupoREFERENCIA.AsString := fdsGrupoNOME.AsString;
    cdsGrupo.Post;
    fdsGrupo.Next;
  end;

  cdsGrupo.First;
end;

procedure TfrmSelectGrupos.grdGruposCellClick(Column: TColumn);
begin
  if grdGrupos.SelectedField.FieldName = 'SEL' then
  begin
    cdsGrupo.Edit;

    if cdsGrupoSELECT.AsString = 'S' then
    begin
      cdsGrupoSELECT.AsString := 'N';
    end
    else
    begin
      cdsGrupoSELECT.AsString := 'S';
    end;

    cdsGrupo.Post;

  end;
end;

procedure TfrmSelectGrupos.grdGruposDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if not odd(cdsGrupo.RecNo) then
  begin
    grdGrupos.Canvas.Brush.Color := DM.gridOddColor;
    grdGrupos.Canvas.FillRect(Rect);
    grdGrupos.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if Column.FieldName = 'SEL' then
  begin
    grdGrupos.Canvas.FillRect(Rect);
    Check := 0;

    if cdsGrupoSELECT.AsString = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -1, -1);
    DrawFrameControl(grdGrupos.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

end.
