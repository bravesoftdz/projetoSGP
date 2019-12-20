unit untVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzButton, RzBckgnd, Vcl.StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvCheckBox, RzCmboBx, Vcl.Mask, RzEdit, RzPanel, RzLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, RzRadGrp, FIBDataSet, Data.DB,
  pFIBDataSet, System.DateUtils, Vcl.ImgList, PngImageList, FIBQuery, pFIBQuery, ClipBrd, SHDocVw,
  Datasnap.DBClient, pFIBClientDataSet;

type
  TfrmVendas = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloCliente: TRzLabel;
    pnlNumVenda: TRzGroupBox;
    edtPesqNumVenda: TRzEdit;
    pnlVendedor: TRzGroupBox;
    cbxVendedor: TRzComboBox;
    chkNumVenda: TJvCheckBox;
    chkVendedor: TJvCheckBox;
    pnlPeriodo: TRzGroupBox;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    dtpInicio: TJvDatePickerEdit;
    dtpFim: TJvDatePickerEdit;
    pnlCliente: TRzGroupBox;
    edtPesqCliente: TRzEdit;
    chkCliente: TJvCheckBox;
    pnlEAN: TRzGroupBox;
    edtPesqEan: TRzEdit;
    chkEAN: TJvCheckBox;
    RzBackground1: TRzBackground;
    btnEmitirNFCe: TRzBitBtn;
    btnSair: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    gdrItens: TJvDBGrid;
    gbxVendas: TRzGroupBox;
    gdrVendas: TJvDBGrid;
    fdsVendas: TpFIBDataSet;
    fdsVendaItens: TpFIBDataSet;
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
    fdsVendaItensPRODUTO: TFIBStringField;
    fdsVendaItensTIPO_RETORNO: TFIBStringField;
    rgbStatus: TRzRadioGroup;
    RzLabel13: TRzLabel;
    lblTotNT: TRzLabel;
    lblTotCF: TRzLabel;
    RzLabel18: TRzLabel;
    dsVendas: TDataSource;
    dsVendaItens: TDataSource;
    fdsVendedor: TpFIBDataSet;
    fdsVendedorID: TFIBBCDField;
    fdsVendedorDT_INC: TFIBDateField;
    fdsVendedorDT_ALT: TFIBDateField;
    fdsVendedorSTATUS: TFIBStringField;
    fdsVendedorNOME: TFIBStringField;
    fdsVendedorDT_NASC: TFIBDateField;
    fdsVendedorTELEFONE: TFIBStringField;
    fdsVendedorENDERECO: TFIBStringField;
    fdsVendedorBAIRRO: TFIBStringField;
    fdsVendedorIDCIDADE: TFIBBCDField;
    fdsVendedorCEP: TFIBStringField;
    fdsVendedorRG: TFIBStringField;
    fdsVendedorCPF: TFIBStringField;
    fdsVendedorSEXO: TFIBStringField;
    fdsVendedorEMAIL: TFIBStringField;
    fdsVendedorCELULAR: TFIBStringField;
    fdsVendedorENVIADO_WEB: TFIBStringField;
    fdsVendedorIDFILIAL: TFIBBCDField;
    PngImageList1: TPngImageList;
    btnPesquisar: TJvImgBtn;
    fdsCliente: TpFIBDataSet;
    fdsClienteID: TFIBBCDField;
    fdsClienteNOME: TFIBStringField;
    qrySomaTotal: TpFIBQuery;
    fdsVendasID: TFIBBCDField;
    fdsVendasIDFILIAL: TFIBBCDField;
    fdsVendasIDCAIXA: TFIBBCDField;
    fdsVendasDT_INC: TFIBDateField;
    fdsVendasSTATUS: TFIBStringField;
    fdsVendasIDCLIENTE: TFIBBCDField;
    fdsVendasIDVENDEDOR: TFIBBCDField;
    fdsVendasIDFORMA_PAG: TFIBBCDField;
    fdsVendasVLR_TOTITEM: TFIBBCDField;
    fdsVendasVLR_DESCONTO: TFIBBCDField;
    fdsVendasVLR_ENTRADA: TFIBBCDField;
    fdsVendasVLR_FRETE: TFIBBCDField;
    fdsVendasVLR_TOTAL: TFIBBCDField;
    fdsVendasVLR_VENDA: TFIBBCDField;
    fdsVendasPESO: TFIBBCDField;
    fdsVendasPREFIXO: TFIBStringField;
    fdsVendasDT_FECHAMENTO: TFIBDateField;
    fdsVendasSUBTRIBUTARIA: TFIBBCDField;
    fdsVendasENVIADO_WEB: TFIBStringField;
    fdsVendasENTREGAR: TFIBStringField;
    fdsVendasTOT_PARCELA: TFIBSmallIntField;
    fdsVendasVLR_RETORNADO: TFIBBCDField;
    fdsVendasDT_PAGAMENTO: TFIBDateField;
    fdsVendasVISUALIZADO: TFIBStringField;
    fdsVendasCODIGO_NFCE: TFIBIntegerField;
    fdsVendasTIPO: TFIBStringField;
    fdsVendasCHAVE_CONSULTA: TFIBStringField;
    fdsVendasCLIENTE: TFIBStringField;
    fdsVendasFORMA_PAG: TFIBStringField;
    fdsVendasVENDEDOR: TFIBStringField;
    btnReimprimirDANFE: TRzBitBtn;
    btnReimprimirNota: TRzBitBtn;
    fdsVendasNUMERO_PROTOCOLO: TFIBStringField;
    btnCancelarNFCe: TRzBitBtn;
    fdsVendaItensCOD_FABRICA: TFIBStringField;
    pnlTipoDoc: TRzGroupBox;
    cbxTipoDoc: TRzComboBox;
    chkTipoDoc: TJvCheckBox;
    Memo1: TMemo;
    btnConsultarNFCe: TRzBitBtn;
    btnInutilizarNFCe: TRzBitBtn;
    fdsVendaItensQTN_RETORNO: TFIBBCDField;
    fdsVendasTIPO_DESC_ACRESC: TFIBStringField;
    fdsVendaItensDT_EMISSAO: TFIBDateField;
    fdsVendasDATA_EMISSAO: TFIBDateField;
    fdsVendasSERIE: TFIBIntegerField;
    fdsVendaItensCST_PIS: TFIBStringField;
    fdsVendaItensCST_COFINS: TFIBStringField;
    fdsVendaItensVLR_IPI: TFIBBCDField;
    fdsVendaItensVLR_ICMS: TFIBBCDField;
    fdsVendasOBS: TFIBStringField;
    RzBitBtn1: TRzBitBtn;
    procedure fdsVendasAfterScroll(DataSet: TDataSet);
    procedure fdsVendasBeforeOpen(DataSet: TDataSet);
    procedure chkNumVendaClick(Sender: TObject);
    procedure edtPesqNumVendaEnter(Sender: TObject);
    procedure edtPesqNumVendaExit(Sender: TObject);
    procedure chkVendedorClick(Sender: TObject);
    procedure fdsVendedorAfterOpen(DataSet: TDataSet);
    procedure chkClienteClick(Sender: TObject);
    procedure edtPesqClienteEnter(Sender: TObject);
    procedure edtPesqClienteExit(Sender: TObject);
    procedure chkEANClick(Sender: TObject);
    procedure edtPesqEanEnter(Sender: TObject);
    procedure edtPesqEanExit(Sender: TObject);
    procedure rgbStatusChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnEmitirNFCeClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure gdrVendasDblClick(Sender: TObject);
    procedure btnReimprimirDANFEClick(Sender: TObject);
    procedure btnReimprimirNotaClick(Sender: TObject);
    procedure gdrVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCancelarNFCeClick(Sender: TObject);
    procedure chkTipoDocClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure ConsultaNFce;
    procedure btnConsultarNFCeClick(Sender: TObject);
    procedure btnInutilizarNFCeClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    procedure Pesquisar(tipo : string);
    procedure RetornaIDCliente(cliente: string);
    function SomaTotalVendas(tipo : string) : string;
  public
    var
      idVenda : Integer;
      param : string;
      temErro: Boolean;
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses untData, uUtils, untPrincipal, untStautsNfCe, untInutilizarNFCe;

procedure TfrmVendas.btnCancelarNFCeClick(Sender: TObject);
begin
  if fdsVendasTIPO.AsString = 'CF' then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja Realmente CANCELAR essa Nota Fiscal Eletr�nica?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   idVenda := fdsVendasID.AsInteger;
                   param := 'CANCELAR';
                   ModalResult := mrOk;
                 end;
    End;
  end;
end;

procedure TfrmVendas.btnConsultarNFCeClick(Sender: TObject);
begin
  if fdsVendas.RecordCount > 0 then
  begin
    try
      try
        temErro := false;
    //    with fdsVendas do
    //    begin
    //      close;
    //      Conditions.Clear;
    //      Conditions.AddCondition('TIPO', 'V.TIPO = '+  QuotedStr('ER'), true);
    //      Conditions.Apply;
    //      Prepare;
    //      open;
    //      First;
    //    end;
        fdsVendas.First;
        while not(fdsVendas.Eof) do
        begin
          ShowMessage('Venda n�: ' + IntToStr(fdsVendas.RecNo));
          ConsultaNFCe();
          //ShowMessage('Fim Processo consulta');
          frmPrincipal.ACBrNFe1.Configuracoes.Geral.ValidarDigest := True;
          fdsVendas.Next;
          //ShowMessage('Vai pra proxima consulta');
        end;
        if (temErro = true) then
          Application.MessageBox(('Existem Notas Com Erro, Por Favor Corrija-os e Emita Novamente!'), 'Aten��o', MB_ICONEXCLAMATION+MB_OK)
        else
          Application.MessageBox(('Todas As Notas Transmitidas Com Sucesso!'), 'Sucesso', MB_ICONEXCLAMATION+MB_OK);

      Except on E : Exception do
        begin
       // ShowMessage('Fim Processo consulta');
        Memo1.Text := E.Message;
        Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '-consulta.txt');
        If Pos(UpperCase('Erro HTTP: 0'), UpperCase(E.Message)) > 0 then
          //Application.MessageBox(PChar(E.Message) ,'Erro', MB_OK);
          Application.MessageBox('Sem conex�o com a Internet.' ,'Aten��o', MB_OK);
        end;
      end;
    finally
      ShowMessage('Fim Geral da consulta de Notas');
      Pesquisar('ER');
    end;
  end;

end;

procedure TfrmVendas.btnEmitirNFCeClick(Sender: TObject);
begin
   if fdsVendas.RecordCount > 0 then
  begin
    if not(fdsVendasCHAVE_CONSULTA.AsString = 'CF') then
    begin
      Case MessageBox(Application.Handle, Pchar('Deseja Realmente emitir Nota Fiscal Eletr�nica para essa venda?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            idYes: begin
                     idVenda := fdsVendasID.AsInteger;
                     param := 'EMITIR';
                     ModalResult := mrOk;
                   end;
      End;


    end;
  end;
end;

procedure TfrmVendas.btnInutilizarNFCeClick(Sender: TObject);
var
  numInicial, numFinal, modelo, serie: Integer;
  justificativa: string;
  tempIdNFCe, idFilialTemp: string;
begin
  if fdsVendas.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja Realmente INUTILIZAR a Numera��o dessa Nota Fiscal Eletr�nica?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   idVenda := fdsVendasID.AsInteger;
                   param := 'INUTILIZAR';
                   ModalResult := mrOk;
                 end;
    End;
  End;


end;

procedure TfrmVendas.btnPesquisarClick(Sender: TObject);
begin
  case rgbStatus.ItemIndex of
    0 : Pesquisar('NT');
    1 : Pesquisar('CF');
    2 : Pesquisar('TD');
    3 : Pesquisar('ER');
    4 : Pesquisar('CL');
    5 : Pesquisar('IN');
    6 : Pesquisar('OF');
  end;
end;

procedure TfrmVendas.btnReimprimirDANFEClick(Sender: TObject);
begin
  if fdsVendasCHAVE_CONSULTA.AsString <> EmptyStr then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja Realmente reimprimir o DANFE para essa venda?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   idVenda := fdsVendasID.AsInteger;
                   param := 'ImprimirDANFE';
                   ModalResult := mrOk;
                 end;
    End;
  end;
end;

procedure TfrmVendas.btnReimprimirNotaClick(Sender: TObject);
begin
 if fdsVendas.RecordCount > 0 then
 begin
  Case MessageBox(Application.Handle, Pchar('Deseja Realmente reimprimir essa Nota de Venda comum?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   idVenda := fdsVendasID.AsInteger;
                   param := 'ImprimirNOTA';
                   ModalResult := mrOk;
                 end;
    End;
  end;
end;

procedure TfrmVendas.btnSairClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmVendas.chkClienteClick(Sender: TObject);
begin
  pnlCliente.Enabled := chkCliente.Checked;
  if not(chkCliente.Checked) then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.chkEANClick(Sender: TObject);
begin
  pnlEan.Enabled := chkEan.Checked;
  if not(chkEan.Checked) then
  begin
    edtPesqEan.Text := 'TODOS';
    edtPesqEan.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.chkNumVendaClick(Sender: TObject);
begin
  pnlNumVenda.Enabled := chkNumVenda.Checked;
  if not(chkNumVenda.Checked) then
  begin
    edtPesqNumVenda.Text := 'TODOS';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.chkTipoDocClick(Sender: TObject);
begin
  pnlTipoDoc.Enabled := chkTipoDoc.Checked;
  if not(chkTipoDoc.Checked) then
    cbxTipoDoc.ItemIndex := 0;
end;

procedure TfrmVendas.chkVendedorClick(Sender: TObject);
begin
  pnlVendedor.Enabled := chkVendedor.Checked;
  if not(chkVendedor.Checked) then
  begin
    cbxVendedor.ItemIndex := 0;
  end;
end;

procedure TfrmVendas.ConsultaNFce;
var
  status, motivo, caminhoXML, chaveXML,destinoXML: string;
  mes:TDateTime;
begin
  try
   // ShowMessage('Inicio Processo consulta');
    if fdsVendasTIPO.AsString = 'ER' then
    BEGIN
    frmPrincipal.ACBrNFe1.Configuracoes.Geral.ValidarDigest := False;
    chaveXML := fdsVendasCHAVE_CONSULTA.AsString;
    mes:=fdsVendasDT_INC.AsDateTime;

    frmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    chaveXML := StringReplace(chaveXML, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
    caminhoXML := ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
    if FileExists(caminhoXML)=false then
     caminhoXML:= ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\'+ chaveXML;

    frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(caminhoXML, False);
    frmPrincipal.ACBrNFe1.Consultar;

    //ShowMessage('Consultou');
    //  frmPrincipal.ACBrNFe1.WebServices.Consulta.NFeChave := chaveXML;
   //  frmPrincipal.ACBrNFe1.WebServices.Consulta.Executar;

    Memo1.Text := ' Status: ' + IntToStr(frmPrincipal.ACBrNFe1.WebServices.Consulta.cStat);
    Memo1.Text := Memo1.Text + '  Motivo:  ' + frmPrincipal.ACBrNFe1.WebServices.Consulta.XMotivo;
    status := IntToStr (frmPrincipal.ACBrNFe1.WebServices.Consulta.cStat);
    motivo := frmPrincipal.ACBrNFe1.WebServices.Consulta.XMotivo;
      if status = '100' then
      begin
        ShowMessage('Nota Duplicada');
        frmPrincipal.ACBrNFe1.NotasFiscais.Items[0].GravarXML(caminhoXML);
        Memo1.Text := 'NFCe ' + frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID;
        Memo1.Text := Memo1.Text + '   Atualizada com sucesso.';

        with fdsVendas do
        begin
          ShowMessage('Vai acertar a nota');
          fdsVendas.Edit;
          fdsVendasCHAVE_CONSULTA.AsString := frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID;
          fdsVendasNUMERO_PROTOCOLO.AsString := frmPrincipal.ACBrNFe1.WebServices.Consulta.Protocolo;
          fdsVendasTIPO.AsString := 'CF';
          fdsVendasDATA_EMISSAO.AsDateTime := frmPrincipal.ACBrNFe1.WebServices.Consulta.DhRecbto;//now;
          fdsVendasSERIE.AsInteger:= frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
          fdsVendas.Post;
          DM.trans.CommitRetaining;
          ShowMessage('Acertou');

        end;
        fdsVendaItens.First;
        while not(fdsVendaItens.Eof) do
        begin
          fdsVendaItens.Edit;
          fdsVendaItensDT_EMISSAO.AsDateTime:=frmPrincipal.ACBrNFe1.WebServices.Consulta.DhRecbto;
          fdsVendaItens.post;
          DM.trans.CommitRetaining;
          fdsVendaItens.Next;
        end;

        if caminhoXML= ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\'+ chaveXML  then
        begin
           destinoXML:= ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', mes) + '\' + chaveXML;
           moveFile(pchar(caminhoXML),pchar(destinoXML));
        end;

        ShowMessage('Fim acerto nota duplicada');
        Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '-consulta-certo.txt');
      end
      else
      begin
        ShowMessage('Status diferete de 100');
        temErro:= true;
        Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '-consulta.txt');
      end;
    END;
  Except on E : Exception do
  begin
    ShowMessage(E.Message);
    Memo1.Text := E.Message;
    Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '-consulta.txt');
  end;

  end;



end;

procedure TfrmVendas.edtPesqClienteEnter(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = 'TODOS' then
  begin
    edtPesqCliente.Text := EmptyStr;
    edtPesqCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtPesqClienteExit(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = EmptyStr then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.edtPesqEanEnter(Sender: TObject);
begin
  if Trim(edtPesqEan.Text) = 'TODOS' then
  begin
    edtPesqEan.Text := EmptyStr;
    edtPesqEan.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtPesqEanExit(Sender: TObject);
begin
  if Trim(edtPesqEan.Text) = EmptyStr then
  begin
    edtPesqEan.Text := 'TODOS';
    edtPesqEan.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.edtPesqNumVendaEnter(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = 'TODOS' then
  begin
    edtPesqNumVenda.Text := EmptyStr;
    edtPesqNumVenda.Font.Color := clBlack;
  end;
end;

procedure TfrmVendas.edtPesqNumVendaExit(Sender: TObject);
begin
  if Trim(edtPesqNumVenda.Text) = EmptyStr then
  begin
    edtPesqNumVenda.Text := 'TODOS';
    edtPesqNumVenda.Font.Color := clGray;
  end;
end;

procedure TfrmVendas.fdsVendasAfterScroll(DataSet: TDataSet);
begin

  if fdsVendasTIPO.AsString = 'CL' then
  begin
   btnEmitirNFCe.Enabled := false;
   btnReimprimirDANFE.Enabled := false;
   btnCancelarNFCe.Enabled := false;
   btnReimprimirNota.Enabled := false;
   btnConsultarNFCe.Enabled := false;
   btnInutilizarNFCe.Enabled:=False;
  end
  else
  begin
   btnEmitirNFCe.Enabled := True;
   btnReimprimirDANFE.Enabled := True;
   btnCancelarNFCe.Enabled := True;
   btnReimprimirNota.Enabled := True;
   btnConsultarNFCe.Enabled := True;
   btnInutilizarNFCe.Enabled:=True;
  end;

  if fdsVendasTIPO.AsString = 'NT' then
  begin
  btnReimprimirDANFE.Enabled := False;
  btnCancelarNFCe.Enabled := False;
  btnInutilizarNFCe.Enabled:=False;
  end ;

  if fdsVendasTIPO.AsString = 'ER' then
  begin
  btnReimprimirDANFE.Enabled := False;
  btnCancelarNFCe.Enabled := False;
  end ;

  if fdsVendasTIPO.AsString = 'CF' then
  begin
  btnEmitirNFCe.Enabled := false;
  btnReimprimirDANFE.Enabled := True;
  btnInutilizarNFCe.Enabled:=False;
  end;

  if fdsVendasTIPO.AsString = 'OF' then
  begin
  btnReimprimirDANFE.Enabled := False;
  btnCancelarNFCe.Enabled := False;
  end ;

  if fdsVendasTIPO.AsString = 'IN' then
  begin
   btnEmitirNFCe.Enabled := false;
   btnReimprimirDANFE.Enabled := false;
   btnCancelarNFCe.Enabled := false;
   btnReimprimirNota.Enabled := false;
   btnConsultarNFCe.Enabled := false;
   btnInutilizarNFCe.Enabled:=False;
  end ;

  with fdsVendaItens do
  begin
    Close;
    ParamByName('IDVENDA').AsInteger := fdsVendasID.AsInteger;
    ParamByName('IDFILIAL').AsInteger := fdsVendasIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;
end;

procedure TfrmVendas.fdsVendasBeforeOpen(DataSet: TDataSet);
begin
  fdsVendas.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
end;

procedure TfrmVendas.fdsVendedorAfterOpen(DataSet: TDataSet);
begin
  fdsVendedor.First;
  cbxVendedor.AddItemValue('TODOS', '0');
  while not(fdsVendedor.Eof) do
  begin
    cbxVendedor.AddItemValue(fdsVendedorNOME.AsString, fdsVendedorID.AsString);
    fdsVendedor.Next;
  end;
end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  fdsVendedor.Open;
  cbxVendedor.ItemIndex := 0;
  dtpInicio.Date := Now;//StartOfTheMonth(Date);
  dtpFim.Date := Now;
  Pesquisar('TD');
end;

procedure TfrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    btnSair.Click;
  end;
end;

procedure TfrmVendas.gdrItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(fdsVendaItens.RecNo) then
  begin
    gdrItens.Canvas.Brush.Color := DM.gridOddColor;
    gdrItens.Canvas.FillRect(Rect);
    gdrItens.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmVendas.gdrVendasDblClick(Sender: TObject);
begin
  if fdsVendas.RecordCount > 0 then
  begin
    Clipboard.AsText := fdsVendasCHAVE_CONSULTA.AsString;
  end;
end;

procedure TfrmVendas.gdrVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
     gdrVendas.Canvas.Brush.Color := clWhite;
  if not odd(fdsVendas.RecNo) then
  begin
    gdrVendas.Canvas.Brush.Color := DM.gridOddColor;
    if gdSelected in State then
     SetBkModE(gdrItens.Canvas.Handle,TRANSPARENT);
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

  if fdsVendasTIPO.AsString = 'CF' then
  begin
    gdrVendas.Canvas.Font.Color := clGreen;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

  if fdsVendasTIPO.AsString = 'OF' then
  begin
    gdrVendas.Canvas.Font.Color := clBlue;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

   if fdsVendasTIPO.AsString = 'ER' then
  begin
    gdrVendas.Canvas.Font.Color := clRed;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

  if fdsVendasTIPO.AsString = 'CL' then
  begin
    gdrVendas.Canvas.Font.Color := $000080FF;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

  if fdsVendasTIPO.AsString = 'NT' then
  begin
    gdrVendas.Canvas.Font.Color := clBlack;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;

  if fdsVendasTIPO.AsString = 'IN' then
  begin
    gdrVendas.Canvas.Font.Color := clPurple;
    gdrVendas.Canvas.FillRect(Rect);
    gdrVendas.DefaultDrawDataCell(rect,Column.Field,state);
  end;
end;

procedure TfrmVendas.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  //
end;

procedure TfrmVendas.Pesquisar(tipo: string);
var
  utils : TUtils;
  numVenda : Double;
begin
  fdsVendaItens.Close;

  with fdsVendas do
  begin
    Close;
    Conditions.Clear;

    if tipo <> 'TD' then
    begin
      Conditions.AddCondition('TIPO', ' V.TIPO = ' + QuotedStr(tipo), True);
      Conditions.AddCondition('CAIXA','V.IDCAIXA='+ QuotedStr(IntToStr(Dm.numCaixa)),true);
    end
    else
      Conditions.AddCondition('CAIXA','V.IDCAIXA='+ QuotedStr(IntToStr(Dm.numCaixa)),true);

    if (chkNumVenda.Checked) then
    begin
      numVenda :=  utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numVenda > 0 then
        Conditions.AddCondition('ID', ' V.ID = ' + QuotedStr(FloatToStr(numVenda)), True);
    end;

    Conditions.AddCondition('DTVENDA', 'V.DT_INC BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpInicio.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtpFim.Date)), True);

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'TODOS')  then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = ' + fdsClienteID.AsString, True)
      else
        Conditions.AddCondition('IDCLIENTE', 'V.IDCLIENTE = 0', True);
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0)  then
    begin
      if fdsVendedor.RecordCount > 0 then
        Conditions.AddCondition('IDVENDEDOR', 'V.IDVENDEDOR = ' + cbxVendedor.Value, True)
    end;

    if chkTipoDoc.Checked then
      Conditions.AddCondition('MOEDA', ' FP.MOEDA = ' + QuotedStr(cbxTipoDoc.Value), True);

    if (chkEan.Checked) and not(Trim(edtPesqEan.Text) = 'TODOS')  then
    begin
        Conditions.AddCondition('EAN', 'V.ID IN (SELECT VI.IDVENDA FROM VENDA_ITEM VI, PRODUTO_ITEM PI WHERE VI.IDPROD_ITEM = PI.ID AND ( PI.COD_FABRICA = ' + QuotedStr(edtPesqEan.Text)+'OR (PI.NOME LIKE ('+QuotedStr('%'+edtPesqEan.Text+'%')+ ')))' + ')', True);
    end;

    Conditions.Apply;
    Prepare;
    Open;
  end;
  lblTotNT.Caption := SomaTotalVendas('NT');
  lblTotCF.Caption := SomaTotalVendas('CF');
end;

procedure TfrmVendas.RetornaIDCliente(cliente: string);
begin
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('NOMECLIENTE', 'NOME like UPPER(' + QuotedStr(cliente + '%') + ')', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

procedure TfrmVendas.rgbStatusChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 0 then
    Pesquisar('NT');

  if NewIndex = 1 then
    Pesquisar('CF');

  if NewIndex = 2 then
    Pesquisar('TD');

  if NewIndex = 3 then
    Pesquisar('ER');

  if NewIndex = 4 then
    Pesquisar('CL');

  if NewIndex = 5 then
    Pesquisar('IN');

  if NewIndex = 6 then
    Pesquisar('OF');

end;


procedure TfrmVendas.RzBitBtn1Click(Sender: TObject);
begin
  // guarda as notas q ser�o transmitidas
  with frmPrincipal do
  begin
    cdsTransmitirVendas.EmptyDataSet;
    frmVendas.fdsVendas.first;
    while not(frmVendas.fdsVendas.Eof) do
    begin
     cdsTransmitirVendas.Append;
     cdsTransmitirVendasIDVENDA.AsInteger := frmVendas.fdsVendasID.AsInteger;
     cdsTransmitirVendasSTATUS.AsString := frmVendas.fdsVendasTIPO.AsString;
     cdsTransmitirVendas.Post;
     frmVendas.fdsVendas.next;
    end;
  end;
  //parametro de emiss�o
  if fdsVendas.RecordCount > 0 then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja Realmente emitir Nota Fiscal Eletr�nica para essa venda?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   param := 'TODAS';
                   ModalResult := mrOk;
                 end;
    End;
  end;
end;

function TfrmVendas.SomaTotalVendas(tipo: string): string;
var
  tempTotal : string;
  utils : TUtils;
  numVenda : Double;
begin
  tempTotal := '';

  with qrySomaTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(V.VLR_TOTAL) AS TOTAL FROM VENDA V, FORMA_PAGAMENTO FP WHERE FP.ID = V.IDFORMA_PAG');

    SQL.Add(' AND V.TIPO = :TIPO');
    ParamByName('TIPO').AsString := tipo;

    SQL.Add(' AND V.STATUS <> ' + QuotedStr('AB') + ' AND V.STATUS <> ' + QuotedStr('CA') + ' AND V.STATUS <> ' + QuotedStr('DV'));

    if (chkNumVenda.Checked) then
    begin
      numVenda :=  utils.ValidaInteiroFloat(edtPesqNumVenda.Text, 'I');

      if numVenda > 0 then
      begin
        SQL.Add(' AND V.ID = :ID');
        ParamByName('ID').AsString := FloatToStr(numVenda);
      end;
    end;

    SQL.Add(' AND V.DT_INC BETWEEN :DT_INC1 AND :DT_INC2');
    ParamByName('DT_INC1').AsString := FormatDateTime('MM/DD/YYYY',dtpInicio.Date);
    ParamByName('DT_INC2').AsString := FormatDateTime('MM/DD/YYYY',dtpFim.Date);

    SQL.Add(' AND V.IDFILIAL = :IDFILIAL');
    ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;

    if (chkCliente.Checked) and not(Trim(edtPesqCliente.Text) = 'Todos')  then
    begin
      RetornaIDCliente(Trim(edtPesqCliente.Text));
      if fdsCliente.RecordCount > 0 then
      begin
        SQL.Add(' AND V.IDCLIENTE = :IDCLIENTE');
        ParamByName('IDCLIENTE').AsInteger := fdsClienteID.AsInteger;
      end
    end;

    if (chkVendedor.Checked) and not(cbxVendedor.ItemIndex = 0)  then
    begin
    //  RetornaIDVendedor(Trim(edtPesqVendedor.Text));
      SQL.Add(' AND V.IDVENDEDOR = :IDVENDEDOR');
        ParamByName('IDVENDEDOR').AsInteger := StrToInt(cbxVendedor.Value);
    end;

    if chkTipoDoc.Checked then
    begin
      SQL.Add(' AND FP.MOEDA = :MOEDA');
      ParamByName('MOEDA').AsString:= cbxTipoDoc.Value;
    end;

    if chkEAN.Checked then
    begin
      SQL.Add(' AND V.ID IN (SELECT VI.IDVENDA FROM VENDA_ITEM VI, PRODUTO_ITEM PI WHERE VI.IDPROD_ITEM = PI.ID AND PI.COD_FABRICA = :COD_FABRICA)');
      ParamByName('COD_FABRICA').AsString:= edtPesqEan.Text;
    end;

    Prepare;
    ExecQuery;

    tempTotal := FieldByName('TOTAL').AsString;

    if tempTotal = '' then
    tempTotal := '0';

    Result := utils.AdicionaMascaraDinheiro(tempTotal);

  end;
end;

end.
