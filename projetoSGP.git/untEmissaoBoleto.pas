unit untEmissaoBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrBoleto, ACBrUtil, RzButton, StdCtrls,
  RzLabel, dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, RzBckgnd,
  JvExStdCtrls, JvButton, JvCtrls, JvCheckBox, Mask, RzEdit, RzRadGrp, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, RzSpnEdt,
  RzRadChk, DB, FIBDataSet, pFIBDataSet, frxClass, frxDBSet, frxRich,
  frxExportPDF, Vcl.Imaging.pngimage, RzCmboBx, RzDBCmbo;

type
  TfrmEmissaoBoleto = class(TForm)
    RzPanel1: TRzPanel;
    JvImage: TJvImage;
    lblTituloCliente: TRzLabel;
    RzPanel2: TRzPanel;
    btnGravar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    RzBackground1: TRzBackground;
    fdsClientes: TpFIBDataSet;
    fdsClientesID: TFIBBCDField;
    fdsClientesDT_INC: TFIBDateField;
    fdsClientesDT_ALT: TFIBDateField;
    fdsClientesSTATUS: TFIBStringField;
    fdsClientesNOME: TFIBStringField;
    fdsClientesDT_NASC: TFIBDateField;
    fdsClientesTELEFONE: TFIBStringField;
    fdsClientesENDERECO: TFIBStringField;
    fdsClientesBAIRRO: TFIBStringField;
    fdsClientesIDCIDADE: TFIBBCDField;
    fdsClientesCEP: TFIBStringField;
    fdsClientesRG: TFIBStringField;
    fdsClientesCPF: TFIBStringField;
    fdsClientesSEXO: TFIBStringField;
    fdsClientesPROFISSAO: TFIBStringField;
    fdsClientesEMAIL: TFIBStringField;
    fdsClientesCELULAR: TFIBStringField;
    fdsClientesTIPO: TFIBStringField;
    fdsClientesRAZAOSOCIAL: TFIBStringField;
    fdsClientesCONTATO: TFIBStringField;
    fdsClientesCNPJ: TFIBStringField;
    fdsClientesIE: TFIBStringField;
    fdsClientesIDVENDEDOR: TFIBBCDField;
    fdsClientesEMAIL_NFE: TFIBStringField;
    fdsClientesKM_TOTAL: TFIBSmallIntField;
    fdsClientesDT_ULTIMO_CONTATO: TFIBDateField;
    fdsClientesLIMITE_CREDITO: TFIBBCDField;
    fdsClientesIDFORMA_PAGAMENTO: TFIBBCDField;
    fdsClientesIDROTA: TFIBBCDField;
    fdsClientesENVIADO_WEB: TFIBStringField;
    fdsConfigBoleto: TpFIBDataSet;
    fdsConfigBoletoID: TFIBIntegerField;
    fdsConfigBoletoIDBANCO: TFIBBCDField;
    fdsConfigBoletoIDFILIAL: TFIBBCDField;
    fdsConfigBoletoDT_INC: TFIBDateField;
    fdsConfigBoletoDT_ALT: TFIBDateField;
    fdsConfigBoletoDT_ULTIMO_RECEBIMENTO: TFIBDateField;
    fdsConfigBoletoPATH_REMESSA: TFIBStringField;
    fdsConfigBoletoPATH_RETORNO: TFIBStringField;
    fdsConfigBoletoPATH_LOGOTIPO: TFIBStringField;
    fdsConfigBoletoPATH_GERARPDF: TFIBStringField;
    fdsConfigBoletoMENSAGEM: TFIBStringField;
    fdsConfigBoletoDIAS_PROTESTO: TFIBIntegerField;
    fdsConfigBoletoESPECIE: TFIBStringField;
    fdsConfigBoletoMOEDA: TFIBStringField;
    fdsConfigBoletoACEITE: TFIBStringField;
    fdsConfigBoletoCARTEIRA: TFIBStringField;
    fdsConfigBoletoLOCAL_PAGTO: TFIBStringField;
    fdsConfigBoletoINSTRUCAO_1: TFIBStringField;
    fdsConfigBoletoINSTRUCAO_2: TFIBStringField;
    fdsConfigBoletoCONT_REMESSA: TFIBIntegerField;
    pnlPeriodo: TRzGroupBox;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel1: TRzLabel;
    speDiaVencimento: TRzSpinEdit;
    speMeses: TRzSpinEdit;
    chkProximoMes: TRzCheckBox;
    RzGroupBox1: TRzGroupBox;
    edtValorBoleto: TRzEdit;
    pnlCliente: TRzGroupBox;
    edtPesqCliente: TRzEdit;
    rgbStatus: TRzRadioGroup;
    chkNomeCliente: TJvCheckBox;
    fdsCntReceber: TpFIBDataSet;
    fdsCntReceberItem: TpFIBDataSet;
    fdsCntReceberBoleto: TpFIBDataSet;
    fdsCntReceberID: TFIBBCDField;
    fdsCntReceberIDFILIAL: TFIBBCDField;
    fdsCntReceberDT_INC: TFIBDateField;
    fdsCntReceberDT_ALT: TFIBDateField;
    fdsCntReceberPOSICAO: TFIBStringField;
    fdsCntReceberPREFIXO: TFIBStringField;
    fdsCntReceberREFERENCIA: TFIBStringField;
    fdsCntReceberIDCLIENTE: TFIBBCDField;
    fdsCntReceberACRESCIMO: TFIBBCDField;
    fdsCntReceberDESCONTO: TFIBBCDField;
    fdsCntReceberVALOR: TFIBBCDField;
    fdsCntReceberVALOR_PAGO: TFIBBCDField;
    fdsCntReceberIDPORTADOR: TFIBBCDField;
    fdsCntReceberHISTORICO: TFIBStringField;
    fdsCntReceberIDFORMA_PAG: TFIBBCDField;
    fdsCntReceberIDVENDA: TFIBBCDField;
    fdsCntReceberTIPO_VENDA: TFIBStringField;
    fdsCntReceberTOT_PARCELA: TFIBStringField;
    fdsCntReceberPARCELAS_PG: TFIBIntegerField;
    fdsCntReceberDINHEIRO: TFIBBCDField;
    fdsCntReceberENVIADO_WEB: TFIBStringField;
    fdsCntReceberItemID: TFIBBCDField;
    fdsCntReceberItemPOSICAO: TFIBStringField;
    fdsCntReceberItemPREFIXO: TFIBStringField;
    fdsCntReceberItemREFERENCIA: TFIBStringField;
    fdsCntReceberItemIDRECEBER: TFIBBCDField;
    fdsCntReceberItemDT_VENC: TFIBDateField;
    fdsCntReceberItemDT_PAG: TFIBDateField;
    fdsCntReceberItemACRESCIMO: TFIBBCDField;
    fdsCntReceberItemDESCONTO: TFIBBCDField;
    fdsCntReceberItemVALOR: TFIBBCDField;
    fdsCntReceberItemVALOR_PAGO: TFIBBCDField;
    fdsCntReceberItemHISTORICO: TFIBStringField;
    fdsCntReceberItemPARCELA: TFIBStringField;
    fdsCntReceberItemENVIADO_WEB: TFIBStringField;
    fdsCntReceberItemIDFILIAL: TFIBBCDField;
    fdsConfigBoletoIDFORMA_PAG: TFIBBCDField;
    fdsContaBanco: TpFIBDataSet;
    fdsContaBancoID: TFIBBCDField;
    fdsContaBancoDT_INC: TFIBDateField;
    fdsContaBancoDT_ALT: TFIBDateField;
    fdsContaBancoSTATUS: TFIBStringField;
    fdsContaBancoIDBANCO: TFIBBCDField;
    fdsContaBancoIDCIDADE: TFIBBCDField;
    fdsContaBancoIDFILIAL: TFIBBCDField;
    fdsContaBancoNOME_BANCO: TFIBStringField;
    fdsContaBancoNOME_AGENCIA: TFIBStringField;
    fdsContaBancoNUMERO_AGENCIA: TFIBStringField;
    fdsContaBancoDIGITO_AGENCIA: TFIBStringField;
    fdsContaBancoNUMERO_CONTA: TFIBStringField;
    fdsContaBancoDIGITO_CONTA: TFIBStringField;
    fdsContaBancoNOSSO_NUMERO: TFIBIntegerField;
    fdsContaBancoCEDENTE: TFIBStringField;
    fdsContaBancoCOD_CEDENTE: TFIBStringField;
    fdsContaBancoDIGITO_BANCO: TFIBStringField;
    fdsCarta: TpFIBDataSet;
    fdsCartaID: TFIBBCDField;
    fdsCartaSTATUS: TFIBStringField;
    fdsCartaNOME: TFIBStringField;
    fdsCartaDESCRICAO: TFIBStringField;
    fdsCartaCORPO: TFIBBlobField;
    frxCarta: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    frxPDFExport1: TfrxPDFExport;
    fdsClientesIDFILIAL: TFIBBCDField;
    fdsClientesCIDADE: TFIBStringField;
    fdsClientesUF: TFIBStringField;
    ACBrBoleto1: TACBrBoleto;
    pnlCidade: TRzGroupBox;
    chkCidade: TJvCheckBox;
    fdsCidade: TpFIBDataSet;
    dsCidade: TDataSource;
    fdsCidadeID: TFIBBCDField;
    fdsCidadeCIDADE: TFIBStringField;
    cbxCidade: TRzComboBox;
    procedure SelecionaCliente;
    procedure RetornaClientesParametro;
    procedure GerarBoleto(DtVencimento: TDate);
    procedure GerarCntReceber(DtVencimento: TDate; parcela: Smallint);
    procedure GerarRemessa();
    procedure ConfiguraComponenteAcBr;
    procedure edtPesqClienteEnter(Sender: TObject);
    procedure edtPesqClienteExit(Sender: TObject);
    procedure chkNomeClienteClick(Sender: TObject);
    procedure edtValorBoletoEnter(Sender: TObject);
    procedure edtValorBoletoExit(Sender: TObject);
    procedure edtPesqClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure chkCidadeClick(Sender: TObject);
    procedure fdsCidadeAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
  var
    xNossoNumero: Integer;
    idReceberItem: Integer;
    vlrBoleto: Double;
  end;

var
  frmEmissaoBoleto: TfrmEmissaoBoleto;

implementation

uses untData, uUtils, untPesqCliente;

{$R *.dfm}
{ TfrmEmissaoBoleto }

procedure TfrmEmissaoBoleto.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmissaoBoleto.btnGravarClick(Sender: TObject);
var
  dia, indiceMes, i, mes, ano: Integer;
  dataFatura: TDate;
begin
  i := 1;
  dia := StrToInt(speDiaVencimento.Text);
  indiceMes := StrToInt(speMeses.Text);
  ano := StrToInt(FormatDateTime('yyyy', date));
  mes := StrToInt(FormatDateTime('mm', date));
  if chkProximoMes.Checked then
    Inc(mes);

  if not(chkNomeCliente.Checked) then
  begin
    RetornaClientesParametro;
  end;

  while indiceMes >= i do
  begin

    if mes > 12 then
    begin
      mes := 1;
      Inc(ano);
    end;

    if dia > 0 then
      dataFatura := StrToDate(FormatDateTime('dd/mm/yyyy',
        StrToDate(IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano))));

    while not(fdsClientes.Eof) do
    begin
      GerarCntReceber(dataFatura, i);
      GerarBoleto(dataFatura);
      fdsClientes.Next;
    end;

    Inc(mes);
    Inc(i);

  end;

  GerarRemessa;

  try
    ACBrBoleto1.Imprimir;
  except
    MessageDlg('Erro ao imprimir os boletos. Verifique!', mtWarning, [mbOK], 0);
  end;

end;

procedure TfrmEmissaoBoleto.chkCidadeClick(Sender: TObject);
begin
  pnlCidade.Enabled := chkCidade.Checked;
end;

procedure TfrmEmissaoBoleto.chkNomeClienteClick(Sender: TObject);
begin
  pnlCliente.Enabled := chkNomeCliente.Checked;
  rgbStatus.Enabled := not(chkNomeCliente.Checked);

  if not(chkNomeCliente.Checked) then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end;
end;

procedure TfrmEmissaoBoleto.ConfiguraComponenteAcBr;
var
  caminhoRemessa, caminhoRetorno: string;
begin
  if not fdsContaBanco.IsEmpty then
  begin

    caminhoRemessa := ExtractFilePath(Application.ExeName) +
      fdsConfigBoletoPATH_REMESSA.AsString;
    caminhoRetorno := ExtractFilePath(Application.ExeName) +
      fdsConfigBoletoPATH_RETORNO.AsString;
    xNossoNumero := fdsContaBancoNOSSO_NUMERO.AsInteger;

    With ACBrBoleto1.Banco do
    begin
      Nome := fdsContaBancoNOME_BANCO.AsString;
      Digito := fdsContaBancoDIGITO_BANCO.AsInteger;

      // Numero := ; n�o pode mais ser alterada, deve ser usada o case a baixo

      case fdsContaBancoIDBANCO.AsInteger of
        237:
          TipoCobranca := cobBradesco;
        1:
          TipoCobranca := cobBancoDoBrasil;
        341:
          TipoCobranca := cobItau;
        748:
          TipoCobranca := cobSicred;
      else
        TipoCobranca := cobNenhum;
      end;
    end;

    With ACBrBoleto1.Cedente do
    begin
      Nome := fdsContaBancoCEDENTE.AsString;
      CodigoCedente := fdsContaBancoCOD_CEDENTE.AsString;
      Agencia := fdsContaBancoNUMERO_AGENCIA.AsString;
      AgenciaDigito := fdsContaBancoDIGITO_AGENCIA.AsString;
      Conta := fdsContaBancoNUMERO_CONTA.AsString;
      ContaDigito := fdsContaBancoDIGITO_CONTA.AsString;
      Logradouro := DM.fdsConfigENDERECO.AsString;
      Bairro := DM.fdsConfigBAIRRO.AsString;
      Cidade := 'ITAPERUNA';
      UF := 'RJ';

    end;

    ACBrBoleto1.ACBrBoletoFC.DirLogo := ExtractFilePath(Application.ExeName) +
      fdsConfigBoletoPATH_LOGOTIPO.AsString;
    // ACBrBoletoFCFR1.FastReportFile := ExtractFilePath(Application.ExeName) + 'Relatorios\BoletoFR.fr3';
    ACBrBoleto1.ACBrBoletoFC.Filtro := fiNenhum;
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
    ACBrBoleto1.DirArqRemessa := caminhoRemessa;
    ACBrBoleto1.DirArqRetorno := caminhoRetorno;
    ACBrBoleto1.NomeArqRemessa := FormatDateTime('DDMMYYYYHHMMSS', Now)
      + '.TXT';
  end;
end;

procedure TfrmEmissaoBoleto.edtPesqClienteEnter(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = 'TODOS' then
  begin
    edtPesqCliente.Text := EmptyStr;
    edtPesqCliente.Font.Color := clBlack;
  end;
end;

procedure TfrmEmissaoBoleto.edtPesqClienteExit(Sender: TObject);
begin
  if Trim(edtPesqCliente.Text) = EmptyStr then
  begin
    edtPesqCliente.Text := 'TODOS';
    edtPesqCliente.Font.Color := clGray;
  end
  else
  begin
    SelecionaCliente;
    if fdsClientes.RecordCount = 0 then
    begin
      Application.MessageBox('Cliente n�o encontrado!', 'Aten��o',
        MB_ICONEXCLAMATION + MB_OK);
    end
    else
    begin
      edtPesqCliente.Text := fdsClientesNOME.AsString;
    end;
  end;
end;

procedure TfrmEmissaoBoleto.edtPesqClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if Trim(edtPesqCliente.Text) = EmptyStr then
    begin
      try
        frmPesqCliente := TfrmPesqCliente.Create(nil);
        frmPesqCliente.ShowModal;
      finally
        if frmPesqCliente.ModalResult = mrOk then
        begin
          edtPesqCliente.Text := frmPesqCliente.fdsClientesNOME.AsString;
        end;
        frmPesqCliente.Free;
      end;
    end;
  end;
end;

procedure TfrmEmissaoBoleto.edtValorBoletoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtValorBoleto.Text := utils.RetiraMascaraDinheiro(Trim(edtValorBoleto.Text));
end;

procedure TfrmEmissaoBoleto.edtValorBoletoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtValorBoleto.Text := utils.AdicionaMascaraDinheiro
    (Trim(edtValorBoleto.Text));
  vlrBoleto := StrToFloat(utils.RetiraMascaraDinheiro(edtValorBoleto.Text));
end;

procedure TfrmEmissaoBoleto.fdsCidadeAfterOpen(DataSet: TDataSet);
begin
  cbxCidade.AddItemValue('TODOS', '0');
  fdsCidade.First;
  while not(fdsCidade.Eof) do
  begin
    cbxCidade.AddItemValue(fdsCidadeCIDADE.AsString, fdsCidadeID.AsString);
    fdsCidade.Next;
  end;
  cbxCidade.Value := '0';
end;

procedure TfrmEmissaoBoleto.FormCreate(Sender: TObject);
begin
  fdsConfigBoleto.Open;
  fdsContaBanco.Open;
  fdsCntReceber.Open;
  fdsCntReceberItem.Open;
  fdsCidade.Open;
  ConfiguraComponenteAcBr;
end;

procedure TfrmEmissaoBoleto.GerarBoleto(DtVencimento: TDate);
var
  titulo: TACBrTitulo;
begin
  Inc(xNossoNumero);
  titulo := ACBrBoleto1.CriarTituloNaLista;

  with titulo do
  begin
    Vencimento := DtVencimento;
    DataDocumento := Now;
    NumeroDocumento := IntToStr(idReceberItem);
    EspecieDoc := 'NT';
    EspecieMod := fdsConfigBoletoESPECIE.AsString;

    if fdsConfigBoletoACEITE.AsString = 'SIM' then
      Aceite := atSim
    else
      Aceite := atNao;

    DataProcessamento := Now;
    NossoNumero := IntToStrZero(xNossoNumero, 10);
    Carteira := fdsConfigBoletoCARTEIRA.AsString;
    ValorDocumento := vlrBoleto;
    Sacado.NomeSacado := fdsClientesNOME.AsString;
    if fdsClientesTIPO.AsString = 'F' then
      Sacado.CNPJCPF := fdsClientesCPF.AsString
    else
      Sacado.CNPJCPF := fdsClientesCNPJ.AsString;

    Sacado.Logradouro := fdsClientesENDERECO.AsString;
    Sacado.Numero := '0';
    Sacado.Bairro := fdsClientesBAIRRO.AsString;
    Sacado.Cidade := fdsClientesCIDADE.AsString;
    Sacado.UF := fdsClientesUF.AsString;
    Sacado.CEP := fdsClientesCEP.AsString;
    ValorAbatimento := 0;
    LocalPagamento := fdsConfigBoletoLOCAL_PAGTO.AsString;
    ValorMoraJuros := 0;
    ValorDesconto := 0;
    ValorAbatimento := 0;
    DataMoraJuros := 0;
    DataDesconto := 0;
    DataAbatimento := 0;
    DataProtesto := DtVencimento + fdsConfigBoletoDIAS_PROTESTO.AsInteger;
    PercentualMulta := 0;
    Mensagem.Text := fdsConfigBoletoMENSAGEM.AsString;
    OcorrenciaOriginal.Tipo := toRemessaBaixar;
    Instrucao1 := PadRight(Trim(fdsConfigBoletoINSTRUCAO_1.AsString), 2, '0');
    Instrucao2 := PadRight(Trim(fdsConfigBoletoINSTRUCAO_2.AsString), 2, '0');
    parcela := 1;
  end;

end;

procedure TfrmEmissaoBoleto.GerarCntReceber(DtVencimento: TDate;
  parcela: Smallint);
var
  utils: TUtils;
  idReceber: Integer;
begin
  with fdsCntReceber do
  begin
    Append;
    idReceber := fdsCntReceberID.AsInteger;
    fdsCntReceberIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    fdsCntReceberPOSICAO.AsString := 'AB';
    fdsCntReceberPREFIXO.AsString := 'CR';
    fdsCntReceberIDCLIENTE.AsInteger := fdsClientesID.AsInteger;
    fdsCntReceberVALOR.AsFloat := vlrBoleto * StrToInt(speMeses.Text);
    fdsCntReceberIDPORTADOR.AsInteger := 1;
    fdsCntReceberIDFORMA_PAG.AsInteger := fdsConfigBoletoIDFORMA_PAG.AsInteger;
    fdsCntReceberIDVENDA.AsInteger := 0;
    fdsCntReceberTIPO_VENDA.AsString := 'MS';
    fdsCntReceberTOT_PARCELA.AsString := PadLeft(speMeses.Text, 3, '0');
    fdsCntReceber.Post;
  end;

  with fdsCntReceberItem do
  begin
    Append;
    fdsCntReceberItemPOSICAO.AsString := 'AB';
    fdsCntReceberItemPREFIXO.AsString := 'BL';
    fdsCntReceberItemIDRECEBER.AsInteger := idReceber;
    fdsCntReceberItemDT_VENC.AsDateTime := DtVencimento;
    fdsCntReceberItemVALOR.AsFloat := vlrBoleto;
    fdsCntReceberItemPARCELA.AsString := PadLeft(IntToStr(parcela), 3, '0');
    fdsCntReceberItemPARCELA.AsString := fdsCntReceberItemPARCELA.AsString +
      PadLeft(speMeses.Text, 3, '0');
    fdsCntReceberItemIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    fdsCntReceberItem.Post;
    DM.Conexao.CommitRetaining;
    close;
    Open;
    if Locate('IDRECEBER', IntToStr(idReceber), []) then
      idReceberItem := fdsCntReceberItemID.AsInteger;
  end;
end;

procedure TfrmEmissaoBoleto.GerarRemessa;
var
  remessaNum: Integer;
begin
  try
    remessaNum := fdsConfigBoletoCONT_REMESSA.AsInteger;
    Inc(remessaNum);
    ACBrBoleto1.GerarRemessa(remessaNum);

    fdsConfigBoleto.Edit;
    fdsConfigBoletoCONT_REMESSA.AsInteger := remessaNum;
    fdsConfigBoleto.Post;

    fdsContaBanco.Edit;
    fdsContaBancoNOSSO_NUMERO.AsInteger := xNossoNumero;
    fdsContaBanco.Post;

    DM.Conexao.CommitRetaining;
  except
    on E: Exception do
      MessageDlg('Erro ao gerar arquivo de remessa: ' + E.Message, mtWarning,
        [mbOK], 0);
  end;
end;

procedure TfrmEmissaoBoleto.RetornaClientesParametro;
begin
  with fdsClientes do
  begin
    close;
    Conditions.Clear;
    case rgbStatus.ItemIndex of
      1:
        Conditions.AddCondition('STATUS',
          'CL.STATUS = ' + QuotedStr('A'), True);
      2:
        Conditions.AddCondition('STATUS',
          'CL.STATUS = ' + QuotedStr('I'), True);
    end;
    if chkCidade.Checked and not(cbxCidade.Value = '0') then
      Conditions.AddCondition('IDCIDADE', 'CL.IDCIDADE = ' +
        cbxCidade.Value, True);
    Conditions.Apply;
    Prepare;
    Open;
    First;
  end;
end;

procedure TfrmEmissaoBoleto.SelecionaCliente;
begin
  with fdsClientes do
  begin
    close;
    Conditions.Clear;
    if chkNomeCliente.Checked then
      Conditions.AddCondition('NOME', 'CL.NOME LIKE ' +
        QuotedStr('%' + Trim(edtPesqCliente.Text) + '%'), True);
    // Conditions.AddCondition('','', True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
end;

end.
