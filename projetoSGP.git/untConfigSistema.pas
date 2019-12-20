unit untConfigSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, System.Variants, System.Classes, Vcl.Graphics,System.TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzLabel, Vcl.StdCtrls, dxGDIPlusClasses,DateUtils,
  Vcl.ExtCtrls, RzButton, pFIBDataSet,FIBDataSet,DB,RzTabs, RzPanel, RzRadGrp, RzDBRGrp, Vcl.Mask,
  Vcl.DBCtrls, RzCmboBx, RzDBCmbo, RzEdit, RzDBEdit, ACBrDevice, ACBrETQ, ACBrBase,Printers,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, RzRadChk, RzDBChk;
 // Vcl.Controls;

type
  TfrmConfigSistema = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    RzPageControl1: TRzPageControl;
    tbsGeral: TRzTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    edtTarifaBoleto: TDBEdit;
    edtCFOP: TDBEdit;
    edtMargemLucro: TDBEdit;
    edtCSOSN: TDBEdit;
    edtCEST: TDBEdit;
    RzDBRadioGroup5: TRzDBRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    edtDiasCarenciaJuros: TDBEdit;
    edtValorMultaAtraso: TDBEdit;
    edtPorcentagemDiaAtraso: TDBEdit;
    edtDiasBloquearCliente: TDBEdit;
    RzDBRadioGroup3: TRzDBRadioGroup;
    Panel3: TPanel;
    btnSair: TRzBitBtn;
    btnGravar: TRzBitBtn;
    Label11: TLabel;
    edtDiasPrimeiraParcela: TDBEdit;
    tbsEtiqueta: TRzTabSheet;
    RzDBRadioGroup4: TRzDBRadioGroup;
    gbxConfigUSB: TRzGroupBox;
    cbxModelo: TRzDBComboBox;
    cbxDPI: TRzDBComboBox;
    Label14: TLabel;
    cbxPorta: TRzDBComboBox;
    RzDBRadioGroup1: TRzDBRadioGroup;
    Label15: TLabel;
    Label16: TLabel;
    gbxConfigSerial: TRzGroupBox;
    cbxBaud: TRzComboBox;
    cbxDatabts: TRzComboBox;
    cbxParity: TRzComboBox;
    cbxStop: TRzComboBox;
    cbxHandshaking: TRzComboBox;
    edtTimeOut: TRzDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    RzGroupBox3: TRzGroupBox;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    btnCertNumSerie: TRzBitBtn;
    RzDBEdit4: TRzDBEdit;
    edtSenhaCert: TRzDBEdit;
    RzLabel4: TRzLabel;
    edtUltimaNFe: TEdit;
    RzLabel8: TRzLabel;
    DBEdit1: TDBEdit;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzLabel3: TRzLabel;
    dtVenci: TRzDBDateTimeEdit;
    CheckBox1: TCheckBox;
    tbsOpcoes: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzGroupBox2: TRzGroupBox;
    Label12: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    Label13: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    DBCheckBox13: TDBCheckBox;
    RzGroupBox4: TRzGroupBox;
    edtDiasCT: TRzDBEdit;
    RzLabel1: TRzLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    RzLabel5: TRzLabel;
    edtDiasCD: TRzDBEdit;
    DBCheckBox5: TDBCheckBox;
    RzLabel2: TRzLabel;
    edtDiasCH: TRzDBEdit;
    DBCheckBox3: TDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure RzDBRadioGroup5Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure RzDBRadioGroup1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure btnCertNumSerieClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSistema: TfrmConfigSistema;

implementation

{$R *.dfm}

uses untData, uUtils, untPrincipal;

procedure TfrmConfigSistema.btnSairClick(Sender: TObject);
begin
 Case MessageBox(Application.Handle, Pchar('Deseja Realmente Sair?'),
    'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        if dm.fdsConfig.State in [dsEdit,dsInsert] then
        begin
          dm.fdsConfig.Cancel;
          dm.Conexao.RollbackRetaining;
        end;
        modalResult := mrCancel;
      end;

    idNo:
      begin
        Abort;
      end;
  end;
end;

procedure TfrmConfigSistema.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
 begin
   edtSenhaCert.PasswordChar:=#0;
 end
 else
  edtSenhaCert.PasswordChar:='*';
end;

procedure TfrmConfigSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmConfigSistema := nil;
end;

procedure TfrmConfigSistema.FormCreate(Sender: TObject);
var
 I : TACBrETQModelo ;
  J: TACBrETQDPI;
  L: TACBrETQBackFeed;
  a:Integer;
begin
  dm.fdsConfig.Edit;
  dm.fdsConfigNFe.Edit;
   cbxModelo.Items.Clear ;
  For I := Low(TACBrETQModelo) to High(TACBrETQModelo) do
     cbxModelo.AddItemValue(GetEnumName(TypeInfo(TACBrETQModelo), integer(I) ),IntTOStr(integer(I)) ) ;

//  cbxDPI.Items.Clear ;
//  For J := Low(TACBrETQDPI) to High(TACBrETQDPI) do
//     cbxDPI.Items.Add(GetEnumName(TypeInfo(TACBrETQDPI), integer(J) ) ) ;

  frmPrincipal.ACBrETQ1.Device.AcharPortasSeriais(cbxPorta.Items);
  for a := 0 to Printer.Printers.Count - 1 do
  begin
    cbxPorta.Add(Printer.Printers[a]);
  end;
  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('LPT2') ;
  cbxPorta.Items.Add('LPT3') ;
  cbxPorta.Items.Add('/dev/ttyS0') ;
  cbxPorta.Items.Add('/dev/ttyS1') ;
  cbxPorta.Items.Add('/dev/ttyUSB0') ;
  cbxPorta.Items.Add('/dev/ttyUSB1') ;
  cbxPorta.Items.Add('c:\temp\etq.txt') ;
  cbxPorta.Items.Add('/tmp/etq.txt') ;

  cbxDPI.Value := DM.fdsConfigDPI_IMP_ETIQ.AsString;
  cbxModelo.Value := DM.fdsConfigMODELO_IMP_ETIQ.AsString;
  cbxPorta.Value:= DM.fdsConfigPORTA_IMP_ETIQ.AsString;
end;

procedure TfrmConfigSistema.RzDBRadioGroup1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
   if NewIndex = 1 then
   begin
    gbxConfigSerial.Enabled:= True;
   end;

   if NewIndex = 0 then
   begin
    gbxConfigUSB.Enabled:= True;
    gbxConfigSerial.Enabled:= False;
   end;
end;

procedure TfrmConfigSistema.RzDBRadioGroup5Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
 if NewIndex = 1 then
  begin
    edtDiasCarenciaJuros.Enabled := True;
    edtDiasCarenciaJuros.Color := clMoneyGreen;
    edtValorMultaAtraso.Enabled := True;
    edtValorMultaAtraso.Color := clMoneyGreen;
    edtPorcentagemDiaAtraso.Enabled := True;
    edtPorcentagemDiaAtraso.Color := clMoneyGreen;
    edtDiasBloquearCliente.Enabled := True;
    edtDiasBloquearCliente.Color := clMoneyGreen;
  end
  else
  begin
    if dm.fdsConfig.State in [dsInsert, dsEdit] then
    begin
      edtDiasCarenciaJuros.Enabled := False;
      edtValorMultaAtraso.Enabled := False;
      edtPorcentagemDiaAtraso.Enabled := False;
      edtDiasBloquearCliente.Enabled := False;

      dm.fdsConfigCARENCIA_JUROS.AsInteger := 0;
      dm.fdsConfigVALOR_MULTA_ATRASO.AsFloat := 0;
      dm.fdsConfigJUROS_DIA_PORCENTAGEM.AsFloat := 0;
      dm.fdsConfigDIAS_ATRASO_BLOQUEIO.AsInteger := 0;
    end;
  end;
end;

procedure TfrmConfigSistema.btnCertNumSerieClick(Sender: TObject);
begin
  Try
    dm.fdsConfigNFeCERT_NUM_SERIE.AsString :=frmPrincipal.ACBrNFe1.SSL.SelecionarCertificado;
    dm.fdsConfigNFeDT_VALID.AsDateTime:=frmPrincipal.ACBrNFe1.SSL.DadosCertificado.DataVenc;
   if (DaysBetween(now,frmPrincipal.ACBrNFe1.SSL.CertDataVenc)>30) then
   begin
      frmprincipal.StatusBar1.Panels.Items[0].Text:='';
   end;
  Except
    on E: Exception do
    begin
      Application.MessageBox('Nenhum certificado selecionado.', 'Aten��o',
        MB_OK + MB_ICONQUESTION);
    end;
  End;
end;

procedure TfrmConfigSistema.btnGravarClick(Sender: TObject);
begin
  case MessageBox(Application.Handle,
    Pchar('Deseja realmente salvar as altera��es?'), 'Aten��o',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
    idYes:
      begin
        //frmPrincipal.ACBrETQ.Device.Baud:=38400;  //Apenas para porta sereal
        if frmPrincipal.ACBrETQ1.Ativo then
          frmPrincipal.ACBrETQ1.Desativar;

        frmPrincipal.ACBrETQ1.DPI := TACBrETQDPI(DM.fdsConfigDPI_IMP_ETIQ.AsInteger);
        frmPrincipal.ACBrETQ1.Modelo := TACBrETQModelo(DM.fdsConfigMODELO_IMP_ETIQ.AsInteger); // TACBrETQModelo(cbModelo.ItemIndex) ;
        frmPrincipal.ACBrETQ1.Porta := DM.fdsConfigPORTA_IMP_ETIQ.AsString;
        frmPrincipal.ACBrETQ1.LimparMemoria := True;

        frmPrincipal.ACBrETQ1.Ativar;
        frmPrincipal.ACBrETQ1.Desativar;

        dm.fdsConfig.Post;
        dm.fdsConfigNFe.Post;
        dm.Conexao.CommitRetaining;
        modalResult := mrOk;
        btnGravar.Enabled := False;
      end;
  end;
end;

end.
