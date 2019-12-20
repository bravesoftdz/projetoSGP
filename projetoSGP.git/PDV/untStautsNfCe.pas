unit untStautsNfCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, ACBrDFe,ACBrDFeUtil,
  ACBrBase, ACBrNFe, ACBrUtil, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  XMLIntf, XMLDoc, zlib, ACBrNFeNotasFiscais, pcnNFe, pcnConversao, pcnConversaoNFe,
  RzButton, Vcl.ExtCtrls, Data.DB, FIBDataSet, pFIBDataSet, Math, RzEdit,
  dxGDIPlusClasses, JvExExtCtrls, JvImage, RzPanel, RzBckgnd, ACBrValidador,Vcl.FileCtrl,
  FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TfrmStatusNFCe = class(TForm)
    btnOK: TRzBitBtn;
    Timer1: TTimer;
    fdsMovimentoCaixa: TpFIBDataSet;
    fdsMovimentoCaixaID: TFIBBCDField;
    fdsMovimentoCaixaIDCAIXA: TFIBBCDField;
    fdsMovimentoCaixaIDFILIAL: TFIBBCDField;
    fdsMovimentoCaixaDT_INC: TFIBDateField;
    fdsMovimentoCaixaHR_INC: TFIBTimeField;
    fdsMovimentoCaixaIDUSUARIO: TFIBBCDField;
    fdsMovimentoCaixaCONTROLE: TFIBBCDField;
    fdsMovimentoCaixaTIPO: TFIBStringField;
    fdsMovimentoCaixaMOEDA: TFIBStringField;
    fdsMovimentoCaixaVLR_ENTRADA: TFIBBCDField;
    fdsMovimentoCaixaVLR_CHEQUE: TFIBBCDField;
    fdsMovimentoCaixaVLR_CARTAO: TFIBBCDField;
    fdsMovimentoCaixaVLR_NOTA: TFIBBCDField;
    fdsMovimentoCaixaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovimentoCaixaVLR_TICKET: TFIBBCDField;
    fdsMovimentoCaixaVLR_VENDA: TFIBBCDField;
    fdsMovimentoCaixaVLR_TOTAL: TFIBBCDField;
    fdsMovimentoCaixaVLR_DESCONTO: TFIBBCDField;
    fdsMovimentoCaixaTROCO: TFIBBCDField;
    fdsMovimentoCaixaENVIADO_WEB: TFIBStringField;
    fdsMovimentoCaixaIDMOVIMENTO: TFIBBCDField;
    fdsMovimentoCaixaHISTORICO: TFIBStringField;
    fdsMovimentoCaixaVLR_CREDITO: TFIBBCDField;
    RzBackground1: TRzBackground;
    mmoErro: TRzMemo;
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    lblTituloTotal: TRzLabel;
    lblTotal: TRzLabel;
    lblRetorno: TRzLabel;
    fdsProcon: TpFIBDataSet;
    fdsProconID: TFIBIntegerField;
    fdsProconUF: TFIBStringField;
    fdsProconENDERECO: TFIBStringField;
    fdsProconDESCRICAO: TFIBStringField;
    fdsProconEMAIL: TFIBStringField;
    fdsProconDDD: TFIBStringField;
    fdsProconSITE: TFIBStringField;
    fdsProconTELEFONE: TFIBStringField;
    Timer2: TTimer;
    fspMovimentoItem: TpFIBStoredProc;
    procedure btnOKClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    procedure GerarNFCe;
    procedure TransmiteNFCe;
    procedure ImprimirDANFE;
    procedure CancelarNFCe;
    procedure InutilizarNumeracao;
    function TestaConex�o: Boolean;
    function CalculaDescontoItem(vlrDescVenda: Double): Double;
    procedure PROCON(uf:String);
  public
    var
      param, NumeroProtocolo, ChaveCancelamento, justificativa,StatusCancelada : string;
      numInicial, numFinal, modelo, serie: Integer;
      imprimir,AutorizaDeletar : Boolean;
  end;

var
  frmStatusNFCe: TfrmStatusNFCe;

implementation

{$R *.dfm}

uses untPrincipal, untData;

{ TForm1 }

procedure TfrmStatusNFCe.btnOKClick(Sender: TObject);
begin
  param := EmptyStr;
  ModalResult := mrOk;
end;

function TfrmStatusNFCe.CalculaDescontoItem(vlrDescVenda: Double): Double;
begin
  //S
end;

procedure TfrmStatusNFCe.CancelarNFCe;
var
  chaveNFCe,chaveXML,caminhoXML,chaveXMLCan, protocoloNFCe,IDEvento,DestinoXML: string;
  mes:TDateTime;
  cancel:Boolean;
begin
  autorizaDeletar:= false;
  lblRetorno.Caption := 'Aguarde Cancelando Nota Fiscal ...';
  chaveNFCe := frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString;
  protocoloNFCe := frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString;

  if not(chaveNFCe = string.Empty) and not(protocoloNFCe = string.Empty) then
  begin
    justificativa := 'Erro de lan�amento da nota';
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
    begin
      ModalResult := mrCancel;
      Exit;
    end;
    frmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    frmPrincipal.ACBrNFe1.EventoNFe.Evento.Clear;

    with frmPrincipal.ACBrNFe1.EventoNFe.Evento.Add do
    begin
     // frmPedidos.fdsPedido.Locate('ID', '34', []);
     // ShowMessage(cdsPedidoid.AsString);
      infEvento.chNFe := Trim(OnlyNumber(chaveNFCe));
      infEvento.detEvento.nProt := protocoloNFCe;
      infEvento.CNPJ   := DM.fdsConfigCNPJ.AsString;
      infEvento.dhEvento := Now;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := justificativa;
    end;

    btnOK.Enabled := True;
    chaveXML := StringReplace(chaveNFCe, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
    caminhoXML := ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;

     frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(caminhoXML, False);

    if frmPrincipal.ACBrNFe1.EnviarEvento(StrToInt(FormatDateTime('yymmddhhmm', NOW))) then
    begin
      with frmPrincipal.ACBrNFe1.WebServices.EnvEvento do
      begin
        if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
        begin
          frmStatusNFCe.Height := 401;
          btnOK.Top := 336;
          lblRetorno.Caption := 'Ocorreu algum erro';
          mmoErro.Lines.Add('Ocorreu o seguinte erro ao cancelar a nota fiscal eletr�nica:');
          mmoErro.Lines.Add('C�digo do Erro: ' + IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + '   NFe N�: ' + frmPrincipal.fdsVendaCODIGO_NFCE.AsString);
          mmoErro.Lines.Add(EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
          btnOK.Enabled := True;
        end
        else
        begin
          NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
          ChaveCancelamento := EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe;
          IDEvento:= (TpEventoToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento)+ ChaveCancelamento+ IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento));

          if Length(IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento))= 1  then
          IDEvento:= (TpEventoToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.tpEvento)+ ChaveCancelamento+'0'+ IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.nSeqEvento));

          frmPrincipal.fdsNF_Cancelada.Open;
          frmPrincipal.fdsNF_Cancelada.Append;
          frmPrincipal.fdsNF_CanceladaIDFILIAL.AsInteger := frmPrincipal.fdsVendaIDFILIAL.AsInteger;
          frmPrincipal.fdsNF_CanceladaIDNOTA.AsInteger := frmPrincipal.fdsVendaID.AsInteger;
          frmPrincipal.fdsNF_CanceladaMODELO_NOTA.AsString :='NFCe';
          frmPrincipal.fdsNF_CanceladaIDCLIENTE.AsInteger := frmPrincipal.fdsVendaIDCLIENTE.AsInteger;
          frmPrincipal.fdsNF_CanceladaDT_EMISSAO.AsDateTime := frmPrincipal.fdsVendaDT_INC.AsDateTime;
          frmPrincipal.fdsNF_CanceladaVLR_TOTAL.AsFloat := frmPrincipal.fdsVendaVLR_TOTAL.AsFloat;
          frmPrincipal.fdsNF_CanceladaCHAVE_CONSULTA_NF.AsString := frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString;
          frmPrincipal.fdsNF_CanceladaNUMERO_PROTOCOLO_NF.AsString := frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString;
          frmPrincipal.fdsNF_CanceladaCHAVE_CONSULTA_CANC.AsString := frmStatusNFCe.ChaveCancelamento;
          frmPrincipal.fdsNF_CanceladaNUMERO_PROTOCOLO_CANC.AsString := frmStatusNFCe.NumeroProtocolo;
          frmPrincipal.fdsNF_Cancelada.Post;
          frmPrincipal.fdsNF_Cancelada.close;
          DM.conexao.CommitRetaining;

          StatusCancelada := frmPrincipal.fdsVendaSTATUS.AsString;
          frmPrincipal.fdsVenda.Edit;
          frmPrincipal.fdsVendaSTATUS.AsString := 'DV';
          frmPrincipal.fdsVendaTIPO.AsString := 'CL';
          frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe;
          frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
          frmPrincipal.fdsVenda.Post;
          frmPrincipal.fdsVenda.Close;
          frmPrincipal.transFrmPrincipal.CommitRetaining;

          frmPrincipal.fdsVendaItens.First;
          cancel:= false;
          while not(frmPrincipal.fdsVendaItens.Eof) do
          begin
            if frmPrincipal.fdsVendaItensQTN_RESTANTE.AsFloat > 0 then
            begin
              with fspMovimentoItem do
              begin
                ParamByName('IDITEM').AsInteger := frmPrincipal.fdsVendaItensIDPROD_ITEM.AsInteger;
                ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
                ParamByName('DT_INC').AsDateTime := Now;
                ParamByName('DESCRICAO').AsString := 'CANCELAMENTO/ NFCE';
                ParamByName('IDVENDA').AsInteger := frmPrincipal.fdsVendaItensIDVENDA.AsInteger;
                ParamByName('TIPO').AsString := 'E';
                ParamByName('QTN').AsFloat := (frmPrincipal.fdsVendaItensQTN_RESTANTE.AsFloat);
                ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
                Prepare;
                ExecProc;
              end;
              DM.conexao.CommitRetaining;
              frmPrincipal.fdsVendaItens.Edit;
              frmPrincipal.fdsVendaItensQTN_RETORNO.AsFloat:= frmPrincipal.fdsVendaItensQTN_RETORNO.AsFloat + frmPrincipal.fdsVendaItensQTN_RESTANTE.AsFloat;
              frmPrincipal.fdsVendaItensQTN_RESTANTE.AsFloat := frmPrincipal.fdsVendaItensQTN.AsFloat - frmPrincipal.fdsVendaItensQTN_RETORNO.AsFloat;
              frmPrincipal.fdsVendaItens.Post;
              cancel:=True;
            end;
            frmPrincipal.fdsVendaItens.Next;
          end;
          if cancel=true then
            frmPrincipal.transFrmPrincipal.CommitRetaining;

          //Movendo para a pasta canceladas

          chaveXMLCan := IDEvento + '-procEventoNFe.xml';
          caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Eventos\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXMLCan;
          DestinoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Canceladas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now)+'\';

          if DirectoryExists(DestinoXML)= false then
            CreateDir(DestinoXML);

          DestinoXML := DestinoXML + chaveXMLCan;
          // ShowMessage(caminhoXML);
          MoveFile(PChar(caminhoXML),PChar(DestinoXML));

         //Foi movido xml para canceladas
         //****************************************
        //Inicio exclusao xml da pasta emitidas

          chaveXML := StringReplace(chaveNFCe, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
          caminhoXML :=ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
          // ShowMessage(caminhoXML);
          if FileExists(caminhoXML)=false then
          begin
            mes:= Now;
            mes:= INCMONTH(mes,-1);
            caminhoXML := ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) +FormatDateTime('MM', mes) + '\' + chaveXML;
          end;
          Deletefile(caminhoXML);

        //Fim Exclusao do xml
          AutorizaDeletar := true;
          lblRetorno.Caption := 'Canclamento de NFCe realizado com sucesso!';
          Timer2.Enabled:=True;
          //Exit;
         // Application.MessageBox('Canclamento de NFCe realizado com sucesso!', 'Sucesso', MB_ICONEXCLAMATION+MB_OK);
         // frmStatusNFCe.Height := 401;
         // btnOK.Top := 336;
          //btnOK.Enabled := True;

        end;
      end;
    end
    else
    begin
      with frmPrincipal.ACBrNFe1.WebServices.EnvEvento do
      begin
        lblRetorno.Caption := 'Ocorreu algum erro';
        mmoErro.Lines.Add('Ocorreram erros ao tentar efetuar o cancelamento:');
        mmoErro.Lines.Add('Lote: ' + IntToStr(EventoRetorno.idLote) + '    Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb));
        mmoErro.Lines.Add('Orgao: '    + IntToStr(EventoRetorno.cOrgao) + '    Status: '   + IntToStr(EventoRetorno.cStat));
        mmoErro.Lines.Add('Motivo: '   + EventoRetorno.xMotivo);
      end;
      btnOK.Enabled := True;
    end;
  end
  else
  begin
    lblRetorno.Caption := 'Nota Fiscal N�o emitida ainda.';
    btnOK.Enabled := True;
  end;
end;

procedure TfrmStatusNFCe.GerarNFCe;
Var
  NotaF: NotaFiscal;
  Produto: TDetCollectionItem;
  Volume: TVolCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
  Ok : Boolean;
  totImpostos, vlrDescUni, vlrSomarDescItens, vlrTotDesc, totQtnItens,totTribFed,totTribEst,totTribMun: Double;
  vlrOutroUni,vlrOutroTot,vTribFed,pAliqFed,vTribEst,pAliqEst,vTribMun,pAliqMun:Double;
  chaveXML, caminhoXML,destinoXML,tipoTemp: string;
  mes:TDateTime;
begin
  try
    totImpostos := 0;
    vlrSomarDescItens := 0;
    totQtnItens := 0;
    vlrDescUni := 0;
    vlrTotDesc := 0;
    totTribFed:=0;totTribEst:=0;totTribMun:=0;
    vTribFed:=0;pAliqFed:=0;vTribEst:=0;pAliqEst:=0;vTribMun:=0;pAliqMun:=0;
    tipoTemp :=frmPrincipal.fdsVendaTIPO.AsString;

    frmPrincipal.ACBrNFe1.NotasFiscais.Clear;

    NotaF := frmPrincipal.ACBrNFe1.NotasFiscais.Add;
    NotaF.NFe.Ide.cNF       := frmPrincipal.fdsVendaNUM_ALEATORIO_NFCE.AsInteger;
    NotaF.NFe.Ide.natOp     := 'VENDA A VISTA.';
    NotaF.NFe.Ide.indPag    := ipVista; // utiliza a blibioteca pcnConversao
    NotaF.NFe.Ide.modelo    := 65;
    //NotaF.NFe.Ide.serie     := DM.fdsConfigNFeSERIE_NFCe.AsInteger; // '2' vitor acho q essa s�rie pode ser fixa, mudando em caso de caixas diferentes
    NotaF.NFe.Ide.serie     := DM.fdsGenNUM_SERIE.AsInteger;
    NotaF.NFe.Ide.nNF       := frmPrincipal.fdsVendaCODIGO_NFCE.AsInteger;
    NotaF.NFe.Ide.dEmi      := Now;
    NotaF.NFe.Ide.dSaiEnt   := Now;
    NotaF.NFe.Ide.hSaiEnt   := Now;
    NotaF.NFe.Ide.tpNF      := TpcnTipoNfe(tnSaida);  // utiliza a blibioteca pcnConversaoNFe
    NotaF.NFe.Ide.tpEmis    := TpcnTipoEmissao(teNormal); //utiliza a blibioteca pcnConversao
    NotaF.NFe.Ide.tpAmb     := frmPrincipal.ACBrNFe1.Configuracoes.WebServices.Ambiente;
    NotaF.NFe.Ide.cUF       := UFtoCUF(Dm.fdsConfigUF.AsString);
    NotaF.NFe.Ide.cMunFG    := Dm.fdsConfigCODIGO_MUNICIPIO.AsInteger;
    NotaF.NFe.Ide.finNFe    := fnNormal;
    NotaF.NFe.Ide.tpImp     := tiNFCe;
    NotaF.NFe.Ide.indFinal  := cfConsumidorFinal;
    NotaF.NFe.Ide.indPres   := pcPresencial;

    NotaF.NFe.Emit.CNPJCPF           := Dm.fdsConfigCNPJ.AsString;
    NotaF.NFe.Emit.IE                := Dm.fdsConfigIE.AsString;
    NotaF.NFe.Emit.xNome             := Dm.fdsConfigRAZAO.AsString;
    NotaF.NFe.Emit.xFant             := Dm.fdsConfigNOME.AsString;

    NotaF.NFe.Emit.EnderEmit.fone    := Dm.fdsConfigTELEFONE.AsString;
    NotaF.NFe.Emit.EnderEmit.CEP     := Dm.fdsConfigCEP.AsInteger;
    NotaF.NFe.Emit.EnderEmit.xLgr    := Dm.fdsConfigENDERECO.AsString;
    NotaF.NFe.Emit.EnderEmit.nro     := Dm.fdsConfigNUMERO.AsString;
    NotaF.NFe.Emit.EnderEmit.xCpl    := '';
    NotaF.NFe.Emit.EnderEmit.xBairro := Dm.fdsConfigBAIRRO.AsString;
    NotaF.NFe.Emit.EnderEmit.cMun    := Dm.fdsConfigCODIGO_MUNICIPIO.AsInteger;
    NotaF.NFe.Emit.EnderEmit.xMun    := Dm.fdsConfigCIDADE.AsString;
    NotaF.NFe.Emit.EnderEmit.UF      := Dm.fdsConfigUF.AsString;
    NotaF.NFe.Emit.enderEmit.cPais   := 1058;
    NotaF.NFe.Emit.enderEmit.xPais   := 'BRASIL';

    NotaF.NFe.Emit.IEST              := '';

    NotaF.NFe.Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

    if not(frmPrincipal.fdsVendaIDCLIENTE.AsInteger = DM.fdsConfigIDCLIENTEPADRAO.AsInteger) then
    begin
      //In�cio dados do Cliente
      if frmPrincipal.fdsClienteTIPO.AsString = 'F' then
        NotaF.NFe.Dest.CNPJCPF           := frmPrincipal.fdsClienteCPF.AsString
      else
        NotaF.NFe.Dest.CNPJCPF           := frmPrincipal.fdsClienteCNPJ.AsString;
    //      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
     // NotaF.NFe.Dest.ISUF              := frmPrincipal.fdsClienteUF.AsString;
      NotaF.NFe.Dest.xNome             := frmPrincipal.fdsVendaNOME.AsString;

      NotaF.NFe.Dest.EnderDest.Fone    := frmPrincipal.fdsClienteCELULAR.AsString;
      NotaF.NFe.Dest.EnderDest.CEP     := frmPrincipal.fdsClienteCEP.AsInteger;
      NotaF.NFe.Dest.EnderDest.xLgr    := frmPrincipal.fdsClienteENDERECO.AsString;
      NotaF.NFe.Dest.EnderDest.nro     := frmPrincipal.fdsClienteNUMERO.AsString;
      NotaF.NFe.Dest.EnderDest.xCpl    := '';
      NotaF.NFe.Dest.EnderDest.xBairro := frmPrincipal.fdsClienteBAIRRO.AsString;
      NotaF.NFe.Dest.EnderDest.cMun    := frmPrincipal.fdsClienteCODIGO_MUNICIPIO.AsInteger;
      NotaF.NFe.Dest.EnderDest.xMun    := frmPrincipal.fdsClienteCIDADE.AsString;
      NotaF.NFe.Dest.EnderDest.UF      := frmPrincipal.fdsClienteUF.AsString;
      NotaF.NFe.Dest.EnderDest.cPais   := 1058;
      NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';
      NotaF.NFe.Dest.indIEDest         := inNaoContribuinte;
      //Fim dados do Cliente
    end;

    //Inicio adicionando Produtos
    frmPrincipal.fdsVendaItens.First;

    while not(frmPrincipal.fdsVendaItens.Eof) do
    begin
      vlrDescUni := 0;
      Produto := NotaF.NFe.Det.Add;
      Produto.Prod.IndTot :=  itSomaTotalNFe; //informa se o item entrar� no calculo total da nota
      Produto.Prod.nItem    := frmPrincipal.fdsVendaItens.RecNo; // N�mero sequencial, para cada item deve ser incrementado
      Produto.Prod.cProd    := frmPrincipal.fdsVendaItensIDPROD_ITEM.AsString;

     // if EAN13Valido(frmPrincipal.fdsVendaItensCOD_FABRICA.AsString) then
      if ACBrValidador.ValidarGTIN(frmPrincipal.fdsVendaItensCOD_FABRICA.AsString) = '' then
      begin
        Produto.Prod.cEAN     := frmPrincipal.fdsVendaItensCOD_FABRICA.AsString;
        Produto.Prod.cEANTrib  := frmPrincipal.fdsVendaItensCOD_FABRICA.AsString; //Explica��o pg 4 do Manual de Preenchimento_NFC-e
      end
      else
      begin
         Produto.Prod.cEAN := 'SEM GTIN';
         Produto.Prod.cEANTrib := 'SEM GTIN';
      end;

      Produto.Prod.xProd    := StringReplace(frmPrincipal.fdsVendaItensNOME.AsString, '�', 'C', [rfReplaceAll]);

      if Produto.Prod.nItem = 1 then
      begin
        if (DM.fdsConfigNFeWS_AMBIENTE_NF_CE.AsString = '2') then
          Produto.Prod.xProd    := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
      end;

      Produto.Prod.NCM      := frmPrincipal.fdsVendaItensNCM.AsString; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
      Produto.Prod.EXTIPI   := '';
      Produto.Prod.CFOP     := frmPrincipal.fdsVendaItensCFOP.AsString;
      Produto.Prod.uCom     := frmPrincipal.fdsVendaItensUNIDADE.AsString;
      Produto.Prod.qCom     := frmPrincipal.fdsVendaItensQTN.AsFloat;
      Produto.Prod.vUnCom   := frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat;   //Deve ser informado sem desconto

      Produto.Prod.uTrib     := frmPrincipal.fdsVendaItensUNIDADE.AsString;
      Produto.Prod.qTrib     := frmPrincipal.fdsVendaItensQTN.AsFloat;
      Produto.Prod.vUnTrib   := frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat; //Deve ser informado sem desconto

      Produto.Prod.vProd    := RoundTo(frmPrincipal.fdsVendaItensQTN.AsFloat * frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat, -2); //Deve ser informado sem desconto

      if frmPrincipal.fdsVendaTIPO_DESC_ACRESC.AsString ='A' then
      begin
        vlrOutroUni := RoundTo(((frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat* frmPrincipal.fdsVendaVLR_DESCONTO.AsFloat)/frmPrincipal.fdsVendaVLR_TOTITEM.AsFloat)* frmPrincipal.fdsVendaItensQTN.AsFloat,-2);//Foi colocado para resolver a quest�o do desconto maior doque o total do item(Vanessa)
      end
      else
        vlrOutroUni:=0;

      Produto.Prod.vOutro     := vlrOutroUni;
      vlrOutroTot := vlrOutroTot + (Produto.Prod.vOutro); //Soma o total de Acrescimo aplicado para informar no cabe�alho da nota

      Produto.Prod.vFrete    := 0;
      Produto.Prod.vSeg      := 0;

     // vlrDescUni := RoundTo((frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat * (frmPrincipal.fdsVendaItensVLR_DESC_ACRE.AsFloat / 100)), -2) * frmPrincipal.fdsVendaItensQTN.AsFloat;

           //calcuando desconto
      vlrDescUni := RoundTo(frmPrincipal.fdsVendaItensVLR_DESC_ACRE.AsFloat * frmPrincipal.fdsVendaItensQTN.AsFloat, -2);
      if not (frmPrincipal.fdsVendaTIPO_DESC_ACRESC.AsString ='A') then
      begin
        vlrSomarDescItens := RoundTo(((frmPrincipal.fdsVendaItensVLR_UNITARIO.AsFloat* frmPrincipal.fdsVendaVLR_DESCONTO.AsFloat)/frmPrincipal.fdsVendaVLR_TOTITEM.AsFloat)* frmPrincipal.fdsVendaItensQTN.AsFloat,-2);//Foi colocado para resolver a quest�o do desconto maior doque o total do item(Vanessa)
      end
      else
        vlrSomarDescItens :=0;

      Produto.Prod.vDesc     := (vlrSomarDescItens + vlrDescUni);
      vlrTotDesc := vlrTotDesc + (Produto.Prod.vDesc); //Soma o total de desconto aplicado para informar no cabe�alho da nota

      Produto.Prod.CEST := frmPrincipal.fdsVendaItensCEST.AsString;

                // lei da transparencia nos impostos
      if frmPrincipal.fdsVendaItensCST_PIS.AsString=EmptyStr then
      begin
        Produto.Imposto.PIS.CST:= pis49;
      end
      else
      Produto.Imposto.PIS.CST:= TpcnCstPis(frmPrincipal.fdsVendaItensCST_PIS.AsInteger-1);

      if frmPrincipal.fdsVendaItensCST_PIS.AsString=EmptyStr then
      begin
        Produto.Imposto.COFINS.CST:= cof99;
      end
      else
      Produto.Imposto.COFINS.CST:= TpcnCstCofins(frmPrincipal.fdsVendaItensCST_COFINS.AsInteger-1);
      //Produto.Imposto.ICMS.CST          := cst50;
      Produto.Imposto.ICMS.CSOSN          := StrToCSOSNIcms(Ok, frmPrincipal.fdsVendaItensCST_CSOSN.AsString);
      Produto.Imposto.ICMS.orig    := oeNacional;
      Produto.Imposto.ICMS.modBC   := dbiValorOperacao;
      Produto.Imposto.ICMS.vBC     := 0;
      Produto.Imposto.ICMS.pICMS   := 00;
      Produto.Imposto.ICMS.vICMS   := 0;

      if  frmPrincipal.fdsVendaItensCST_CSOSN.AsString = '500' then
      begin
        Produto.Imposto.ICMS.vBCEfet:= frmPrincipal.fdsVendaItensVLR_TOTAL.AsFloat+vlrIPI;
        Produto.Imposto.ICMS.pICMSEfet:= frmPrincipal.fdsVendaItensALIQ_ICMS.AsFloat;
        Produto.Imposto.ICMS.vICMSEfet:= frmPrincipal.fdsVendaItensVLR_ICMS.AsFloat;
      end;
      Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
      Produto.Imposto.ICMS.pMVAST  := 0;
      Produto.Imposto.ICMS.pRedBCST:= 0;
      Produto.Imposto.ICMS.vBCST   := 0;
      Produto.Imposto.ICMS.pICMSST := 0;
      Produto.Imposto.ICMS.vICMSST := 0;
      Produto.Imposto.ICMS.pRedBC  := 0;

      //C�lculo do FCP - Fundo de Combate a Pobreza
      Produto.Imposto.ICMS.vBCFCP := 0;
      Produto.Imposto.ICMS.pFCP   := 0;
      Produto.Imposto.ICMS.vFCP   := 0;

           // partilha do ICMS e fundo de probreza
      Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
      Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
      Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;
      pAliqFed:= frmPrincipal.fdsVendaItensIBPT_NACIONA_FEDERAL.asFloat;
      vTribFed:= RoundTo(Produto.Prod.vUnTrib * (frmPrincipal.fdsVendaItensIBPT_NACIONA_FEDERAL.asFloat / 100), -2);
      pAliqEst:= frmPrincipal.fdsVendaItensIBPT_ESTADUAL.asFloat;
      vTribEst:= RoundTo(Produto.Prod.vUnTrib * (frmPrincipal.fdsVendaItensIBPT_ESTADUAL.asFloat / 100), -2);
      pAliqMun:= frmPrincipal.fdsVendaItensIBPT_MUNICIPAL.asFloat;
      vTribMun:= RoundTo(Produto.Prod.vUnTrib * (frmPrincipal.fdsVendaItensIBPT_MUNICIPAL.asFloat / 100), -2);
      Produto.Imposto.vTotTrib       := RoundTo(vTribFed + vTribEst+ vTribMun,-2);
      //Produto.infAdProd      := 'Valor aproximado dos tributos Federal R$ ' + FormatFloat('0.00', vTribFed) + ' (' + FormatFloat('#0.00', pAliqFed) + '%) Fonte: IBPT';

      totImpostos := totImpostos + Produto.Imposto.vTotTrib;
      totTribFed:= totTribFed +vTribFed;
      totTribEst:= totTribEst + vTribEst;
      totTribMun:= totTribMun + vTribMun;

      frmPrincipal.fdsVendaItens.Next;
    end;
    //Fim adicionando Produtos

    //In�cio impostos totais da Nota
    NotaF.NFe.Total.ICMSTot.vBC     := 0;
    NotaF.NFe.Total.ICMSTot.vICMS   := 0;
    NotaF.NFe.Total.ICMSTot.vBCST   := 0;
    NotaF.NFe.Total.ICMSTot.vST     := 0;
    NotaF.NFe.Total.ICMSTot.vProd   := frmPrincipal.fdsVendaVLR_TOTITEM.AsFloat;
    NotaF.NFe.Total.ICMSTot.vFrete  := 0;
    NotaF.NFe.Total.ICMSTot.vSeg    := 0;
    NotaF.NFe.Total.ICMSTot.vDesc   := vlrTotDesc; //N�o foi usado o campo VLR_DESCONTO da tabela VENDA pois esse campo s� armazena o desconto dado direto no total da nota
    NotaF.NFe.Total.ICMSTot.vII     := 0;
    NotaF.NFe.Total.ICMSTot.vIPI    := 0;
    NotaF.NFe.Total.ICMSTot.vPIS    := 0;
    NotaF.NFe.Total.ICMSTot.vCOFINS := 0;
    if frmPrincipal.fdsVendaTIPO_DESC_ACRESC.AsString ='A' then
    begin
    NotaF.NFe.Total.ICMSTot.vOutro  := vlrOutroTot;
    end
    else
    NotaF.NFe.Total.ICMSTot.vOutro  := 0;
    NotaF.NFe.Total.ICMSTot.vNF     := frmPrincipal.fdsVendaVLR_TOTAL.AsFloat;

        // partilha do icms e fundo de probreza
    NotaF.NFe.Total.ICMSTot.vFCPUFDest   := 0.00;
    NotaF.NFe.Total.ICMSTot.vICMSUFDest  := 0.00;
    NotaF.NFe.Total.ICMSTot.vICMSUFRemet := 0.00;

    NotaF.NFe.Total.ISSQNtot.vServ   := 0;
    NotaF.NFe.Total.ISSQNTot.vBC     := 0;
    NotaF.NFe.Total.ISSQNTot.vISS    := 0;
    NotaF.NFe.Total.ISSQNTot.vPIS    := 0;
    NotaF.NFe.Total.ISSQNTot.vCOFINS := 0;

    NotaF.NFe.Total.ICMSTot.vTotTrib := totImpostos;

  {     Total.retTrib.vRetPIS    := 0;
        Total.retTrib.vRetCOFINS := 0;
        Total.retTrib.vRetCSLL   := 0;
        Total.retTrib.vBCIRRF    := 0;
        Total.retTrib.vIRRF      := 0;
        Total.retTrib.vBCRetPrev := 0;
        Total.retTrib.vRetPrev   := 0;}

    NotaF.NFe.Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

  {      Cobr.Fat.nFat  := 'Numero da Fatura';
        Cobr.Fat.vOrig := 100 ;
        Cobr.Fat.vDesc := 0 ;
        Cobr.Fat.vLiq  := 100 ;

        with Cobr.Dup.Add do
         begin
           nDup  := '1234';
           dVenc := now+10;
           vDup  := 50;
         end;

        with Cobr.Dup.Add do
         begin
           nDup  := '1235';
           dVenc := now+10;
           vDup  := 50;
         end;
   }

     with fdsMovimentoCaixa do
     begin
       Close;
       ParamByName('IDMOVIMENTO').AsInteger := frmPrincipal.fdsVendaID.AsInteger;
       Prepare;
       Open;
     end;


     if fdsMovimentoCaixaVLR_ENTRADA.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := fdsMovimentoCaixaVLR_ENTRADA.AsFloat - fdsMovimentoCaixaTROCO.AsFloat;
       end;
     end;

     if fdsMovimentoCaixaVLR_CARTAO.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
        if frmPrincipal.fdsVendaIDFORMA_PAG.AsInteger = 2 then
         tPag := fpCartaoCredito
        else
          tPag := fpCartaoDebito;
         vPag := fdsMovimentoCaixaVLR_CARTAO.AsFloat;
         tpIntegra := TtpIntegra(2);
       end;
     end;
     if fdsMovimentoCaixaVLR_FINANCEIRA.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := fdsMovimentoCaixaVLR_FINANCEIRA.AsFloat;
       end;
     end;
     if fdsMovimentoCaixaVLR_TICKET.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpOutro;
         vPag := fdsMovimentoCaixaVLR_TICKET.AsFloat;
       end;
     end;
     if fdsMovimentoCaixaVLR_CREDITO.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpOutro;
         vPag := fdsMovimentoCaixaVLR_CREDITO.AsFloat;
       end;
     end;

     if fdsMovimentoCaixaVLR_CHEQUE.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpCheque;
         vPag := fdsMovimentoCaixaVLR_CHEQUE.AsFloat;
       end;
     end;

     if fdsMovimentoCaixaVLR_NOTA.AsFloat > 0 then
     begin
       with NotaF.NFe.pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpCreditoLoja;
         vPag := fdsMovimentoCaixaVLR_NOTA.AsFloat;
       end;
     end;
    NotaF.NFe.pag.vTroco := fdsMovimentoCaixaTROCO.AsFloat;

    PROCON(dm.fdsConfigUF.AsString);
     NotaF.NFe.InfAdic.infCpl     := frmPrincipal.fdsVendaOBS.AsString+';;';
    NotaF.NFe.InfAdic.infCpl     :=NotaF.NFe.InfAdic.infCpl+'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.N�O GERA DIREITO A CR�DITO FISCAL DE IPI.'
       + 'Valor aproximado dos tributos: Federal R$ ' + FormatFloat('0.00', totTribFed) +
       ' Estadual R$ ' + FormatFloat('0.00', totTribEst) + ' e Municipal R$ ' + FormatFloat('0.00', totTribMun)+'Fonte:IBPT/empresometro.com.br PROCON-'+
       fdsProconUF.AsString+' TEL.:('+fdsProconDDD.AsString+')'+fdsProconTELEFONE.AsString+''+fdsProconENDERECO.AsString;

    NotaF.NFe.InfAdic.infAdFisco :='';//Vitor � orbrigat�rio dados do PROCON no RJ, ver s� � aqui, pg 6 Manual de Preenchimento_NFC-e

    { with  NotaF.NFe.InfAdic.obsCont.Add do
     begin
       xCampo := 'ObsCont';
       xTexto :=';Estadual R$ ' + FormatFloat('0.00', totTribEst) + 'e Municipal R$ ' + FormatFloat('0.00', totTribMun);
     end; }

    {with  NotaF.NFe.obsFisco.Add do
     begin
       xCampo := 'ObsFisco';
       xTexto := 'Texto';
     end; }

     if frmPrincipal.fdsVendaCODIGO_NFCE.AsInteger = 0 then
     begin
       frmPrincipal.PescCaixa;
       frmPrincipal.fdsVenda.Edit;
       with frmPrincipal.qryComand do
       begin
         Close;
         SQL.Clear;
         //SQL.Add('SELECT GEN_ID(GEN_CODIGO_NFCE_VENDA,1) FROM RDB$DATABASE');
         SQL.Add('SELECT CODIGO FROM GERA_GEN_VENDA('+quotedStr(Dm.fdsCaixaGENERATION.AsString)+','+quotedStr('G')+','+quotedStr('0')+','+QuotedStr('0')+')');
         Prepare;
         ExecQuery;

         frmPrincipal.fdsVendaCODIGO_NFCE.AsInteger := FieldByName('CODIGO').AsInteger;
         NotaF.NFe.Ide.nNF := FieldByName('CODIGO').AsInteger;
         frmPrincipal.fdsVendaNUM_ALEATORIO_NFCE.AsInteger:= GerarCodigoNumerico(FieldByName('CODIGO').AsInteger);
         NotaF.NFe.Ide.cNF := frmPrincipal.fdsVendaNUM_ALEATORIO_NFCE.AsInteger;

//         frmPrincipal.fdsVendaCODIGO_NFCE.AsInteger := FieldByName('GEN_ID').AsInteger;
//         NotaF.NFe.Ide.nNF := FieldByName('GEN_ID').AsInteger;
//         frmPrincipal.fdsVendaNUM_ALEATORIO_NFCE.AsInteger:= GerarCodigoNumerico(FieldByName('GEN_ID').AsInteger);
//         NotaF.NFe.Ide.cNF := frmPrincipal.fdsVendaNUM_ALEATORIO_NFCE.AsInteger;
       end;
      frmPrincipal.fdsVenda.Post;
      frmPrincipal.transFrmPrincipal.CommitRetaining;
     end;

     if TestaConex�o = False then
     begin
       if frmPrincipal.fdsVendaTIPO.AsString <> 'OF' then
       begin
         frmPrincipal.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teOffLine;
         NotaF.NFe.Ide.tpEmis := teOffLine;
         NotaF.NFe.Ide.dhCont := Now;
         NotaF.NFe.Ide.xJust := 'Problema com conex�o a Internet';
         frmPrincipal.ACBrNFe1.NotasFiscais.Assinar;
    //     frmPrincipal.ACBrNFe1.NotasFiscais.GerarNFe;
         frmPrincipal.ACBrNFe1.NotasFiscais.Validar;
         //frmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
         if (DM.fdsCaixaIMP_PDF.AsString ='S') and (imprimir=True) then            //coloquei pora usar do pdf.
         begin
            frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFCeFortes1;
            frmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
         end
         else
         begin
          frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFeESCPOS1;
          if imprimir = true then
          frmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
         end;

         with frmPrincipal.fdsVenda do
         begin
           Edit;
           frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString := frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID;
           frmPrincipal.fdsVendaTIPO.AsString := 'OF';
           frmPrincipal.fdsVendaDATA_EMISSAO.AsDateTime:= now;
           frmPrincipal.fdsVendaSerie.AsInteger:=frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
           Post;
           frmPrincipal.transFrmPrincipal.CommitRetaining;
         end;
         with frmPrincipal.fdsVendaItens do
         begin
            First;
            while not(frmPrincipal.fdsVendaItens.Eof) do
            begin
              edit;
              frmPrincipal.fdsVendaItensDT_EMISSAO.AsDateTime:=now;
              post;
              frmPrincipal.transFrmPrincipal.CommitRetaining;
              Next;
            end;

         end;
         frmPrincipal.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
       end;
     end
     else
     begin
       if frmPrincipal.fdsVendaTIPO.AsString = 'OF' then
       begin
          //frmPrincipal.ACBrNFe1.NotasFiscais.GerarNFe;
          //frmPrincipal.ACBrNFe1.NotasFiscais.Validar;
        // frmPrincipal.ACBrNFe1.Configuracoes.Geral.ValidarDigest := False;
          frmPrincipal.ACBrNFe1.NotasFiscais.Clear;
          chaveXML := StringReplace(frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
          caminhoXML := ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
          if FileExists(caminhoXML)=false then
          begin
          Case MessageBox(Application.Handle, Pchar('Essa nota ser� emitida em um prazo superior ao permitido pela legisla��o podendo ou n�o haver gera��o de custos.Deseja realmente transmitir essa NFCe?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                idYes:
                 begin
                    mes:= Now;
                    mes:= INCMONTH(mes,-1);
                    caminhoXML := ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) +FormatDateTime('MM', mes) + '\' + chaveXML;
                  end;
          End;

          end;

          frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(caminhoXML, False);
          if (DM.fdsCaixaIMP_PDF.AsString ='S') and (imprimir = true) then
          begin
            frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFCeFortes1;
          end
          else
          begin
            frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFeESCPOS1;
          end;

          frmPrincipal.ACBrNFe1.Enviar(frmPrincipal.fdsVendaCODIGO_NFCE.AsString,imprimir,False);
          lblRetorno.Caption :=  frmPrincipal.ACBrNFe1.WebServices.Retorno.xMotivo;

        //  frmPrincipal.ACBrNFe1.Configuracoes.Geral.ValidarDigest := True;
          with frmPrincipal.fdsVenda do
          begin
            Edit;
            frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString := frmPrincipal.ACBrNFe1.WebServices.Retorno.Protocolo;
            frmPrincipal.fdsVendaTIPO.AsString := 'CF';
            frmPrincipal.fdsVendaSerie.AsInteger:=frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
            Post;
            frmPrincipal.transFrmPrincipal.CommitRetaining;
          end;
       end
       else
       begin
          if (DM.fdsCaixaIMP_PDF.AsString ='S') and (imprimir = true) then
          begin
            frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFCeFortes1;
          end
          else
          begin
            frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFeESCPOS1;
          end;
         frmPrincipal.ACBrNFe1.Enviar(frmPrincipal.fdsVendaCODIGO_NFCE.AsString,imprimir,False);
         lblRetorno.Caption :=  frmPrincipal.ACBrNFe1.WebServices.Retorno.xMotivo;

         with frmPrincipal.fdsVenda do
         begin
           Edit;
           frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString := frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID;
           frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString := frmPrincipal.ACBrNFe1.WebServices.Retorno.Protocolo;
           frmPrincipal.fdsVendaTIPO.AsString := 'CF';
           frmPrincipal.fdsVendaDATA_EMISSAO.AsDateTime := now;
           frmPrincipal.fdsVendaSERIE.AsInteger:=frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
           Post;
           frmPrincipal.transFrmPrincipal.CommitRetaining;
         end;
         with frmPrincipal.fdsVendaItens do
         begin
            First;
            while not(frmPrincipal.fdsVendaItens.Eof) do
            begin
              edit;
              frmPrincipal.fdsVendaItensDT_EMISSAO.AsDateTime:=now;
              post;
              frmPrincipal.transFrmPrincipal.CommitRetaining;
              Next;
            end;

         end;
       end;
         if tipoTemp = 'ER' then
         begin
         //Deletando da pasta erros
         chaveXML := StringReplace(frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
         caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Erros\'+ chaveXML;
        // caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Erros\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
         if FileExists(caminhoXML) then
           deleteFile(caminhoXML);
         //Fim da exclus�o

          end;
     end;

     Timer2.Enabled:= true;

   Except on E : Exception do
     begin
      with frmPrincipal.fdsVenda do
       begin
         Edit;
         frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString := frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID;
         frmPrincipal.fdsVendaTIPO.AsString := 'ER';
         frmPrincipal.fdsVendaSERIE.AsInteger:=frmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
         Post;
         frmPrincipal.transFrmPrincipal.CommitRetaining;
       end;
        chaveXML := StringReplace(frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
        caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Emitidas\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
        destinoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Erros\';
        //destinoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Erros\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\';

//        if DirectoryExists(DestinoXML)= false then
//            CreateDir(DestinoXML);

        destinoXML:=destinoXML + chaveXML;
        if FileExists(DestinoXML) then
           deleteFile(DestinoXML);

        Movefile(pchar(caminhoXML),pChar(destinoXML));

      frmStatusNFCe.Height := 401;
      btnOK.Top := 336;
      lblRetorno.Caption := 'Erro ao enviar Nota Fiscal para o SEFAZ';
      mmoErro.Text := e.Message;
     // mmoErro.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '.txt');
      Application.ProcessMessages;

      btnOK.Enabled := True;
      btnOK.SetFocus;
     end;

   end;

//   if EAN13Valido('7885180948290') then
//    ShowMessage('� um EAN13 V�lido')
//   else
//    ShowMessage('N�o � um EAN13 V�lido');
//
//    ShowMessage(ACBrValidador.ValidarGTIN('7885180948290'));  //n�o �
//    ShowMessage(ACBrValidador.ValidarGTIN('7891027151355'));  // esse �

           
//  if not(ACBrValidador.ValidarGTIN(frmPrincipal.fdsVendaItensCOD_FABRICA.AsString) = '') then
//    ShowMessage('Cheio')
//  else
//    ShowMessage('Vazio');

end;

procedure TfrmStatusNFCe.ImprimirDANFE;
var
  DANFE : string;
  CHAVE:String;
begin
  lblRetorno.Caption := 'Aguarde Reimprimindo DANFE';
  //DANFE := frmPrincipal.ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\' + frmPrincipal.fdsVendaCODIGO_NFCE.AsString + '-env-lot-soap.XML';
//  if DM.fdsCaixaIMP_PDF.AsString ='S' then
//  begin
    CHAVE:= StringReplace(frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString, 'NFe','',[rfReplaceAll]) + '-nfe.xml';
    DANFE := frmPrincipal.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\\'+ FormatDateTime('yyyy', frmPrincipal.fdsVendaDATA_EMISSAO.AsDateTime) + FormatDateTime('MM',frmPrincipal.fdsVendaDATA_EMISSAO.AsDateTime) +'\'+CHAVE;
  //end;
  frmPrincipal.ACBrNFe1.NotasFiscais.Clear;
  frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(DANFE,False);
  if DM.fdsCaixaIMP_PDF.AsString ='S' then
  begin
    frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFCeFortes1;
    //frmPrincipal.ACBrNFe1.NotasFiscais.Items[ 0 ].XMLOriginal;
    frmPrincipal.ACBrNFe1.NotasFiscais.ImprimirPDF;
    frmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
    //frmPrincipal.ACBrNFeDANFCeFortes1.ImprimirDANFEPDF();
  end
  else
  begin
  frmPrincipal.ACBrNFe1.DANFE:= frmPrincipal.ACBrNFeDANFeESCPOS1;
  frmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
  end;
  lblRetorno.Caption := 'DANFE Reimpresso com sucesso.';
  timer2.Enabled:=true;
 // btnOK.Enabled := True;
end;

procedure TfrmStatusNFCe.InutilizarNumeracao;
var
chaveXML,caminhoXML,DestinoXML,InutID:String;
qtnSim:Boolean;
begin
  try
    autorizaDeletar:= false;
    chaveXML :=frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString;
    frmPrincipal.ACBrNFe1.EventoNFe.Evento.Clear;

    frmPrincipal.ACBrNFe1.WebServices.Inutiliza(DM.fdsConfigCNPJ.AsString,justificativa, StrToInt(FormatDateTime('YYYY', Now)), modelo, serie,numInicial, numFinal);

    if (frmPrincipal.fdsVendaTIPO.AsString ='ER') and (frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.cStat = 102) then
    begin
     chaveXML := StringReplace(chaveXML, 'NFe', '',[rfReplaceAll]) + '-nfe.xml';
     caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Erros\'+ chaveXML;

     Deletefile(caminhoXML);
    end;

    //Grava na Tabela de Inutilizadas
    with frmPrincipal do
    begin
      fdsNF_Inutilizada.Open;
      fdsNF_Inutilizada.Append;
      fdsNF_InutilizadaIDFILIAL.AsInteger:= frmPrincipal.fdsVendaIDFILIAL.AsInteger;
      fdsNF_InutilizadaDT_INC.AsDateTime:= now;
      fdsNF_InutilizadaIDNOTA.AsInteger := frmPrincipal.fdsVendaID.AsInteger;
      fdsNF_InutilizadaIDCLIENTE.AsInteger := frmPrincipal.fdsVendaIDCLIENTE.AsInteger;
      fdsNF_InutilizadaDT_EMISSAO.AsDateTime :=frmPrincipal.fdsVendaDT_INC.AsDateTime;
      fdsNF_InutilizadaCODIGO_NF.AsInteger := frmPrincipal.fdsVendaCODIGO_NFCE.AsInteger;
      fdsNF_InutilizadaCHAVE_NF.AsString:= frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString;
      fdsNF_InutilizadaVLR_TOTAL.AsFloat := frmPrincipal.fdsVendaVLR_TOTAL.AsFloat;
      fdsNF_InutilizadaPROTOCOLO_IN.AsString := frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
      fdsNF_InutilizadaENVIADO_WEB.AsString :='N';
      fdsNF_InutilizadaMODELO_NOTA.AsString :='NFCe';
      fdsNF_Inutilizada.Post;
      fdsNF_Inutilizada.close;
      DM.conexao.CommitRetaining;
    end;

    with frmPrincipal do
    begin
      // Muda o Tipo da NFCe
      fdsVenda.Edit;
      fdsVendaTIPO.AsString := 'IN';
      fdsVenda.Post;
      transFrmPrincipal.CommitRetaining;

      //Retorna Item para o Estoque e atualiza a tabela de Intens da venda
      fdsVendaItens.First;
      qtnSim:= false;
      while not(frmPrincipal.fdsVendaItens.Eof) do
      begin
        if frmPrincipal.fdsVendaItensQTN_RESTANTE.AsFloat > 0 then
        begin
          with fspMovimentoItem do
          begin
            ParamByName('IDITEM').AsInteger := fdsVendaItensIDPROD_ITEM.AsInteger;
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            ParamByName('DT_INC').AsDateTime := Now;
            ParamByName('DESCRICAO').AsString := 'INUTILIZACAO/ NFCE';
            ParamByName('IDVENDA').AsInteger := fdsVendaItensIDVENDA.AsInteger;
            ParamByName('TIPO').AsString := 'E';
            ParamByName('QTN').AsFloat := (fdsVendaItensQTN_RESTANTE.AsFloat);
            ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            Prepare;
            ExecProc;
          end;
          DM.conexao.CommitRetaining;

          fdsVendaItens.Edit;
          fdsVendaItensQTN_RETORNO.AsFloat:= fdsVendaItensQTN_RETORNO.AsFloat + fdsVendaItensQTN_RESTANTE.AsFloat;
          fdsVendaItensQTN_RESTANTE.AsFloat := fdsVendaItensQTN.AsFloat - fdsVendaItensQTN_RETORNO.AsFloat;
          fdsVendaItens.Post;
          qtnSim:=True;
        end;
        fdsVendaItens.Next;
      end;
      if qtnSim = true then
        frmPrincipal.transFrmPrincipal.CommitRetaining;
    end;
    autorizaDeletar:= True;
    lblRetorno.Caption := 'Numera��o inutilizada com sucesso';
    btnOK.Enabled := True;
    Timer2.Enabled:=true;

  Except on E: Exception do
    begin
      if frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.cStat <> 563 then
      begin
        InutID:=frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.Id;
        //showMessage(InutID);

        //Movendo arquivo de erro procInutNFe.xml
        chaveXML := StringReplace(InutID, 'ID', '',[rfReplaceAll]) + '-procInutNFe.xml';
        caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
        DestinoXML:=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\Rejeitados\';

          if DirectoryExists(DestinoXML)= false then
            CreateDir(DestinoXML);

          DestinoXML := DestinoXML + chaveXML;

          if FileExists(DestinoXML)=True then
             DeleteFile(DestinoXML);

          MoveFile(PChar(caminhoXML),PChar(DestinoXML));

        //Fim Movendo arquivo de erro procInutNFe.xml

        //Movendo arquivo de erro -ped-inu .xml
        chaveXML := StringReplace(InutID, 'ID', '',[rfReplaceAll]) + '-ped-inu.xml';
        caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
        DestinoXML:=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\Rejeitados\';

          DestinoXML := DestinoXML + chaveXML;

          if FileExists(DestinoXML)=True then
             DeleteFile(DestinoXML);

          MoveFile(PChar(caminhoXML),PChar(DestinoXML));

        //Fim Movendo arquivo de erro -ped-inu .xml

        //Movendo arquivo de erro -inu .xml
        chaveXML := StringReplace(InutID, 'ID', '',[rfReplaceAll]) + '-inu.xml';
        caminhoXML :=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\' + chaveXML;
        DestinoXML:=ExtractFilePath(Application.ExeName) + 'NFCeLogs\Inutilizados\' + FormatDateTime('yyyy', Now) + FormatDateTime('MM', Now) + '\Rejeitados\';

        DestinoXML := DestinoXML + chaveXML;

        if FileExists(DestinoXML)=True then
             DeleteFile(DestinoXML);

        MoveFile(PChar(caminhoXML),PChar(DestinoXML));

        //Fim Movendo arquivo de erro -inu .xml

      end;

      frmStatusNFCe.Height := 401;
      btnOK.Top := 336;
      lblRetorno.Caption := 'Ocorreu algum erro';
      mmoErro.Lines.Add('Ocorreu o seguinte erro ao Inutilizar a nota:');
      mmoErro.Lines.Add('C�digo do Erro: ' + IntToStr(frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.cStat) + '   NFCe N�: ' + frmPrincipal.fdsVendaCODIGO_NFCE.AsString);
      mmoErro.Lines.Add(frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.xMotivo + '  Protocolo de erro:'+ frmPrincipal.ACBrNFe1.WebServices.Inutilizacao.Protocolo);
      btnOK.Enabled := True;
    end;
  end;
end;

procedure TfrmStatusNFCe.PROCON(uf: String);
begin
 with fdsProcon do
 begin
  close;
  conditions.Clear;
  Conditions.AddCondition('UF','UF ='+QuotedStr(uf),true);
  Conditions.Apply;
  Prepare;
  Open;
 end;
end;

function TfrmStatusNFCe.TestaConex�o: Boolean;
begin
  try
    try
      frmPrincipal.ACBrNFe1.WebServices.StatusServico.Executar;

      if frmPrincipal.ACBrNFe1.WebServices.StatusServico.cStat = 107 then
        Result := True
      else
        Result := False;
    Except on E : Exception do
       begin
        lblRetorno.Caption := 'Erro de Conex�o com o sistema da SEFAZ. Nota emitida Off-Line.' ;
        Result := False;
       end;
    end;

  finally
    btnOK.Enabled := True;
  end;
end;

procedure TfrmStatusNFCe.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if param = 'EMITIR' then
  begin
//    if frmPrincipal.fdsVendaTIPO.AsString = 'OF' then
//      TransmiteNFCe;
//    else
       GerarNFCe;
  end;

  if param = 'ImprimirDANFE' then
    ImprimirDANFE;

  if param = 'CANCELAR' then
  begin
    CancelarNFCe;
  end;

  if param ='INUTILIZAR' then
    InutilizarNumeracao;
end;

procedure TfrmStatusNFCe.Timer2Timer(Sender: TObject);
begin
 Timer2.Enabled := false;
 param := EmptyStr;
 ModalResult := mrOk;
end;

procedure TfrmStatusNFCe.TransmiteNFCe;
var
  dirMes, chaveNFCe: string;
begin
  try
      dirMes := FormatDateTime('yyyyMM', now);
      chaveNFCe := frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString.Substring(3, Length(frmPrincipal.fdsVendaCHAVE_CONSULTA.AsString));

      frmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Emitidas\' + dirMes + '\' + chaveNFCe + '-nfe.xml');

      try
        if frmPrincipal.ACBrNFe1.Enviar(1, True) then
        begin
          lblRetorno.Caption :=  frmPrincipal.ACBrNFe1.WebServices.Retorno.xMotivo;
          with frmPrincipal.fdsVenda do
          begin
            Edit;
            frmPrincipal.fdsVendaNUMERO_PROTOCOLO.AsString := frmPrincipal.ACBrNFe1.WebServices.Retorno.Protocolo;
            frmPrincipal.fdsVendaTIPO.AsString := 'CF';
            Post;
            frmPrincipal.transFrmPrincipal.CommitRetaining;
          end;
        end;
      Except on E : Exception do
       begin
        frmStatusNFCe.Height := 401;
        btnOK.Top := 336;
        lblRetorno.Caption := 'Erro ao enviar Nota Fiscal para o SEFAZ';
        mmoErro.Text := e.Message;
        mmoErro.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + '\NFCeLogs\Erros\' + FormatDateTime('hh-nn-ss', Now) + '.txt');
       end;
      end;
  finally
    btnOK.Enabled := True;
    btnOK.SetFocus;
  end;

end;

end.

