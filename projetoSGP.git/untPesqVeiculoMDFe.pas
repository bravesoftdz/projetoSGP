unit untPesqVeiculoMDFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FIBDataSet, pFIBDataSet,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage, Vcl.StdCtrls,
  RzCmboBx, RzDBCmbo, RzDBEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  RzTabs, RzBckgnd, Vcl.Mask, RzEdit, RzButton, RzLabel, RzPanel;

type
  TfrmPesqVeiculoMDFe = class(TForm)
    RzPanel1: TRzPanel;
    lblTituloCliente: TRzLabel;
    btnTodos: TRzBitBtn;
    RzBackground1: TRzBackground;
    btnCancelar: TRzBitBtn;
    btnSelecionar: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    tbsTabela: TRzTabSheet;
    gdrVeiculos: TJvDBGrid;
    tbsFormulario: TRzTabSheet;
    lblCodigo: TRzLabel;
    edtID: TRzDBEdit;
    lblDtInc: TRzLabel;
    edtDt_Inc: TRzDBEdit;
    lblDtAlt: TRzLabel;
    edtDt_Alt: TRzDBEdit;
    lblStatus: TRzLabel;
    cbxStatus: TRzDBComboBox;
    RzLabel1: TRzLabel;
    edtNome: TRzDBEdit;
    lblRG: TRzLabel;
    edtReferencia: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel4: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzDBComboBox1: TRzDBComboBox;
    JvImage1: TJvImage;
    fdsVeiculosMDFe: TpFIBDataSet;
    RzLabel7: TRzLabel;
    RzDBEdit6: TRzDBEdit;
    dsVeicuosMDFe: TDataSource;
    RzDBComboBox2: TRzDBComboBox;
    rodado: TRzLabel;
    fdsVeiculosMDFeID: TFIBBCDField;
    fdsVeiculosMDFeIDTRANSPORTADORA: TFIBBCDField;
    fdsVeiculosMDFeDESCRICAO: TFIBStringField;
    fdsVeiculosMDFeCIOT: TFIBStringField;
    fdsVeiculosMDFeRNTRC: TFIBStringField;
    fdsVeiculosMDFePLACA: TFIBStringField;
    fdsVeiculosMDFeTARA: TFIBBCDField;
    fdsVeiculosMDFeRENAVAM: TFIBStringField;
    fdsVeiculosMDFeCAPACIDADE_KG: TFIBBCDField;
    fdsVeiculosMDFeCAPACIDADE_M3: TFIBBCDField;
    fdsVeiculosMDFeTIPO_CARROCERIA: TFIBIntegerField;
    fdsVeiculosMDFeTIPO_RODADO: TFIBIntegerField;
    fdsVeiculosMDFeUF: TFIBStringField;
    fdsVeiculosMDFeSTATUS: TFIBStringField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    fdsVeiculosMDFeDT_INC: TFIBDateField;
    fdsVeiculosMDFeDT_ALT: TFIBDateField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure EditaInsere;
    procedure GravaCancela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqVeiculoMDFe: TfrmPesqVeiculoMDFe;

implementation

{$R *.dfm}

uses untData, uUtils;

procedure TfrmPesqVeiculoMDFe.btnCancelarClick(Sender: TObject);
begin
  if fdsVeiculosMDFe.State in[dsEdit] then
  begin
    fdsVeiculosMDFe.Cancel;
    Dm.Conexao.RollbackRetaining;
    GravaCancela;
  end
  else
  begin
   ModalResult := mrCancel;
  end;
end;

procedure TfrmPesqVeiculoMDFe.btnSelecionarClick(Sender: TObject);
begin
 if fdsVeiculosMDFe.State in [dsEdit] then
 begin
  fdsVeiculosMDFe.Post;
  dm.Conexao.CommitRetaining;
  GravaCancela;
 end
 else
 begin
  ModalResult := mrOk;
 end;
end;

procedure TfrmPesqVeiculoMDFe.EditaInsere;
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
//      else
//        TRzBitBtn(Components[i]).Enabled := True;
    end;
  end;
  edtNome.SetFocus;
end;

procedure TfrmPesqVeiculoMDFe.FormShow(Sender: TObject);
begin
 fdsVeiculosMDFe.Open;
end;

procedure TfrmPesqVeiculoMDFe.GravaCancela;
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
//        else
//          TRzBitBtn(Components[i]).Enabled := False;
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

end;

procedure TfrmPesqVeiculoMDFe.RzBitBtn1Click(Sender: TObject);
begin
  fdsVeiculosMDFe.Edit;
  fdsVeiculosMDFeDT_ALT.AsDateTime := Now;
  if fdsVeiculosMDFeDT_INC.Value = 0 then
    fdsVeiculosMDFeDT_INC.AsDateTime:=Now;
  EditaInsere;
end;

end.
