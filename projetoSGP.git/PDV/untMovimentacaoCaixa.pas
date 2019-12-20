unit untMovimentacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, FIBDataSet, pFIBDataSet, RzBckgnd, StdCtrls, RzLabel,
  dxGDIPlusClasses, ExtCtrls, JvExExtCtrls, JvImage, RzPanel, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, RzButton, Mask, RzEdit, FIBQuery, pFIBQuery,
  Vcl.Imaging.pngimage, Datasnap.DBClient, pFIBClientDataSet, frxClass, frxDBSet, Math,
  frxExportPDF, Vcl.ComCtrls;

type
  TfrmMovimentacaoCaixa = class(TForm)
    RzPanel1: TRzPanel;
    JvImage1: TJvImage;
    RzLabel4: TRzLabel;
    RzBackground1: TRzBackground;
    fdsMovimentoCaixa: TpFIBDataSet;
    dsMovimentoCaixa: TDataSource;
    RzPanel2: TRzPanel;
    JvDBGrid1: TJvDBGrid;
    RzLabel2: TRzLabel;
    btnSair: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    btnFecharCaixa: TRzBitBtn;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    edtDinheiroAbertura: TRzEdit;
    edtDinheiroVenda: TRzEdit;
    edtCartaoVenda: TRzEdit;
    RzLabel8: TRzLabel;
    edtChequeVenda: TRzEdit;
    edtTotalEntrada: TRzEdit;
    RzLabel10: TRzLabel;
    edtChequeSaida: TRzEdit;
    edtDinheiroSaida: TRzEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel9: TRzLabel;
    edtTotalSaida: TRzEdit;
    RzLabel14: TRzLabel;
    edtTotalFechamento: TRzEdit;
    qrySomatorio: TpFIBQuery;
    btnSangria: TRzBitBtn;
    btnSuprimento: TRzBitBtn;
    btnSairTop: TRzBitBtn;
    RzLabel15: TRzLabel;
    edtSuprimento: TRzEdit;
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
    fdsMovimentoCaixaVLR_VENDA: TFIBBCDField;
    fdsMovimentoCaixaVLR_TOTAL: TFIBBCDField;
    fdsMovimentoCaixaVLR_DESCONTO: TFIBBCDField;
    fdsMovimentoCaixaTROCO: TFIBBCDField;
    fdsMovimentoCaixaENVIADO_WEB: TFIBStringField;
    fdsMovimentoCaixaIDMOVIMENTO: TFIBBCDField;
    fdsMovimentoCaixaHISTORICO: TFIBStringField;
    fdsMovimentoCaixaOPERADOR: TFIBStringField;
    edtNtVenda: TRzEdit;
    RzLabel16: TRzLabel;
    fdsMovimentoCaixaVLR_CHEQUE: TFIBBCDField;
    fdsMovimentoCaixaVLR_CARTAO: TFIBBCDField;
    fdsMovimentoCaixaVLR_NOTA: TFIBBCDField;
    fdsMovimentoCaixaVLR_FINANCEIRA: TFIBBCDField;
    fdsMovimentoCaixaVLR_VALEDESCONTO: TFIBBCDField;
    fdsMovimentoCaixaVLR_TICKET: TFIBBCDField;
    RzLabel17: TRzLabel;
    edtFinanceira: TRzEdit;
    RzLabel18: TRzLabel;
    edtTicket: TRzEdit;
    RzLabel19: TRzLabel;
    edtValeDesconto: TRzEdit;
    cdsFechamento: TpFIBClientDataSet;
    cdsFechamentovlrAbertura: TFloatField;
    cdsFechamentoData: TDateField;
    cdsFechamentoControle: TIntegerField;
    cdsFechamentovlrDinheiroEN: TFloatField;
    cdsFechamentovlrSuprimento: TFloatField;
    cdsFechamentovlrNota: TFloatField;
    cdsFechamentovlrCartao: TFloatField;
    cdsFechamentovlrChequeEN: TFloatField;
    cdsFechamentovlrTotalEN: TFloatField;
    cdsFechamentovlrDinheiroSA: TFloatField;
    cdsFechamentovlrChequeSA: TFloatField;
    cdsFechamentovlrTotalSA: TFloatField;
    cdsFechamentovlrTotalFE: TFloatField;
    cdsFechamentovlrFinanceira: TFloatField;
    cdsFechamentovlrTicket: TFloatField;
    cdsFechamentovlrValeDesconto: TFloatField;
    cdsFechamentodtAbertura: TDateField;
    cdsFechamentodtFechamento: TDateField;
    frxMovCaixa: TfrxDBDataset;
    frxFechamento: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    redComprovante: TRzRichEdit;
    fdsMovimentoCaixaVLR_CREDITO: TFIBBCDField;
    RzLabel20: TRzLabel;
    edtReceb: TRzEdit;
    cdsFechamentovlrRecebimento: TFloatField;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CalculaFechamento();
    procedure FechaCaixa;
    procedure Sangria;
    procedure Suprimento;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharCaixaClick(Sender: TObject);
    procedure btnSangriaClick(Sender: TObject);
    procedure btnSuprimentoClick(Sender: TObject);
  private
    procedure VerificaTipoImpressao;
    procedure ImpressoraA4;
    procedure ImpressoraCupom;
  public

  end;

var
  frmMovimentacaoCaixa: TfrmMovimentacaoCaixa;


implementation

uses
  untData, untSangria, untSuprimento, uUtils, uTotalizadores,
  untTotalizadores, untPrincipal, untMensagens, uVerificaPermicao;

 var
   uVerificaPermicao:TVerificaPermicao;
{$R *.dfm}

procedure TfrmMovimentacaoCaixa.btnFecharCaixaClick(Sender: TObject);
begin
  if uVerificaPermicao.Verifica('FECHAMENTO')=true then
  begin
    Case MessageBox(Application.Handle, Pchar('Deseja realmente fazer o fechamento do Caixa?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            idYes: begin
                      FechaCaixa;
                   end;
    End;
  end
  else
  TFrmMensagens.Mensagem('Desculpe, voc� n�o tem permiss�o para fechar o Caixa.', 'Sem permiss�o.', 'I',[mbOK]);
end;

procedure TfrmMovimentacaoCaixa.btnSairClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmMovimentacaoCaixa.btnSangriaClick(Sender: TObject);
begin
  Sangria;
end;

procedure TfrmMovimentacaoCaixa.btnSuprimentoClick(Sender: TObject);
begin
  Suprimento;
end;

procedure TfrmMovimentacaoCaixa.CalculaFechamento;
var
  utils : TUtils;
begin
  Try
      frmTotalizadores := TfrmTotalizadores.Create(nil);
      frmTotalizadores.ShowModal;
   Finally
      if frmTotalizadores.ModalResult = mrOk then
      begin
        edtDinheiroAbertura.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.DNAbertura));

        edtDinheiroVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.DNVenda));

        edtCartaoVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.CTVenda));

        edtChequeVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.CHVenda));

        edtNTVenda.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.NTVenda));

        edtFinanceira.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.FNVenda));

        edtTicket.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.TKVenda));

        edtValeDesconto.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.VDVenda));

        edtSuprimento.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.SuprimentoDN));

        edtTotalEntrada.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.TotalEN));

        edtReceb.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.VReceb));

        edtDinheiroSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.SangriaDN + frmTotalizadores.DevolucaoDN));

        edtChequeSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.SangriaCH));

        edtTotalSaida.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.TotalSaida));

        edtTotalFechamento.Text := utils.AdicionaMascaraDinheiro(FloatToStr(frmTotalizadores.TotalFechamento));
      end;
      frmTotalizadores.FreeOnRelease;
  End;

end;

procedure TfrmMovimentacaoCaixa.FechaCaixa;
begin
    Try
      frmTotalizadores := TfrmTotalizadores.Create(nil);
      frmTotalizadores.ShowModal;
   Finally
      if frmTotalizadores.ModalResult = mrOk then
      begin
        fdsMovimentoCaixa.Append;
        fdsMovimentoCaixaCONTROLE.AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
        fdsMovimentoCaixaIDCAIXA.AsInteger := DM.numCaixa;
        fdsMovimentoCaixaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        fdsMovimentoCaixaIDUSUARIO.AsInteger := DM.idUsuario;
        fdsMovimentoCaixaTIPO.AsString := 'FE';
        fdsMovimentoCaixaMOEDA.AsString := 'DN';
        fdsMovimentoCaixaVLR_CHEQUE.AsFloat := frmTotalizadores.CHVenda;
        fdsMovimentoCaixaVLR_CARTAO.AsFloat := frmTotalizadores.CTVenda;
        fdsMovimentoCaixaVLR_NOTA.AsFloat := frmTotalizadores.NTVenda;
        fdsMovimentoCaixaVLR_FINANCEIRA.AsFloat := frmTotalizadores.FNVenda;
        fdsMovimentoCaixaVLR_TICKET.AsFloat := frmTotalizadores.TKVenda;
        fdsMovimentoCaixaVLR_VALEDESCONTO.AsFloat := frmTotalizadores.VDVenda;
        fdsMovimentoCaixaVLR_VENDA.AsFloat := frmTotalizadores.TotalEN;
        fdsMovimentoCaixaVLR_ENTRADA.AsFloat := frmTotalizadores.TotalFechamento; // Total em dinheiro
        fdsMovimentoCaixaVLR_TOTAL.AsFloat := frmTotalizadores.TotalEN;
        fdsMovimentoCaixaHISTORICO.AsString := 'Fechamento de Caixa ' + DateTimeToStr(Now);
        fdsMovimentoCaixa.Post;
        DM.conexao.CommitRetaining;

        if (perguntaImp = 'S') then
        begin
          Case MessageBox(Application.Handle, Pchar('Imprimir Fechamento?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
                  idYes: begin
                            VerificaTipoImpressao;
                         end;
          End;
        end
        else
          VerificaTipoImpressao;

        Application.MessageBox('Caixa Fechado com Sucesso.', 'Sucesso', MB_OK+MB_ICONEXCLAMATION);
        Application.Terminate;
      end;


    End;

end;

procedure TfrmMovimentacaoCaixa.FormActivate(Sender: TObject);
begin
  fdsMovimentoCaixa.ParamByName('IDCAIXA').AsInteger := DM.numCaixa;
  fdsMovimentoCaixa.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
  fdsMovimentoCaixa.ParamByName('CONTROLE').AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
  fdsMovimentoCaixa.Open;
  cdsFechamento.CreateDataSet;

  CalculaFechamento;

end;

procedure TfrmMovimentacaoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    btnSair.Click;
  end
  else if Key = VK_F10 then
        begin
          btnFecharCaixa.Click;
        end
        else if Key = VK_F2 then
           begin
              btnSangria.Click;
           end
           else if Key = VK_F3 then
           begin
              btnSuprimento.Click;
           end;
end;

procedure TfrmMovimentacaoCaixa.ImpressoraA4;
begin
  Try
      frmTotalizadores := TfrmTotalizadores.Create(nil);
      frmTotalizadores.ShowModal;
   Finally
      if frmTotalizadores.ModalResult = mrOk then
      begin
        cdsFechamento.Open;
        cdsFechamento.Append;
        cdsFechamentovlrAbertura.AsFloat := frmTotalizadores.DNAbertura;
        cdsFechamentoData.AsDateTime := Now;
        cdsFechamentoControle.AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
        cdsFechamentovlrDinheiroEN.AsFloat := frmTotalizadores.DNVenda;
        cdsFechamentovlrSuprimento.AsFloat := frmTotalizadores.SuprimentoDN;
        cdsFechamentovlrNota.AsFloat := frmTotalizadores.NTVenda;
        cdsFechamentovlrCartao.AsFloat := frmTotalizadores.CTVenda;
        cdsFechamentovlrChequeEN.AsFloat := frmTotalizadores.CHVenda;
        cdsFechamentovlrFinanceira.AsFloat := frmTotalizadores.FNVenda;
        cdsFechamentovlrTicket.AsFloat := frmTotalizadores.TKVenda;
        cdsFechamentovlrValeDesconto.AsFloat := frmTotalizadores.VDvenda;
        cdsFechamentovlrTotalEN.AsFloat := frmTotalizadores.TotalEN;
        cdsFechamentovlrDinheiroSA.AsFloat := frmTotalizadores.SangriaDN;
        cdsFechamentovlrChequeSA.AsFloat := frmTotalizadores.SangriaCH;
        cdsFechamentovlrTotalSA.AsFloat := frmTotalizadores.TotalSaida;
        cdsFechamentovlrTotalFE.AsFloat := frmTotalizadores.TotalFechamento;
        cdsFechamentodtAbertura.AsDateTime := frmTotalizadores.dtAbertura;
        cdsFechamentodtFechamento.AsDateTime := Now;
        cdsFechamento.Post;

        with fdsMovimentoCaixa do
        begin
          Close;
          fdsMovimentoCaixa.ParamByName('CONTROLE').AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
          fdsMovimentoCaixa.ParamByName('IDCAIXA').AsInteger := DM.numCaixa;
          fdsMovimentoCaixa.ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
          Conditions.Clear;
          Conditions.AddCondition('MOVIMENTO', ' MC.TIPO = ' + QuotedStr('SA') + ' OR MC.TIPO = ' + QuotedStr('SU'), True);
          Conditions.Apply;
          Prepare;
          Open;
        end;

        DM.frxReport1.Clear;
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxMoviCaixa.fr3');
        DM.frxReport1.PrepareReport(True);
        DM.frxReport1.ShowReport(True);
      end;
  End;
end;

procedure TfrmMovimentacaoCaixa.ImpressoraCupom;
var
  cArquivo: TextFile;
  msg:UTF8String;
begin
  Try
      frmTotalizadores := TfrmTotalizadores.Create(nil);
      frmTotalizadores.ShowModal;
   Finally
      if frmTotalizadores.ModalResult = mrOk then
      begin
      msg:= ' Sao Recebimentos.';
        cdsFechamento.Open;
        cdsFechamento.Append;
        cdsFechamentovlrAbertura.AsFloat := frmTotalizadores.DNAbertura;
        cdsFechamentoData.AsDateTime := Now;
        cdsFechamentoControle.AsInteger := DM.fdsCaixaCONTROLE.AsInteger;
        cdsFechamentovlrDinheiroEN.AsFloat := frmTotalizadores.DNVenda;
        cdsFechamentovlrSuprimento.AsFloat := frmTotalizadores.SuprimentoDN;
        cdsFechamentovlrNota.AsFloat := frmTotalizadores.NTVenda;
        cdsFechamentovlrCartao.AsFloat := frmTotalizadores.CTVenda;
        cdsFechamentovlrChequeEN.AsFloat := frmTotalizadores.CHVenda;
        cdsFechamentovlrFinanceira.AsFloat := frmTotalizadores.FNVenda;
        cdsFechamentovlrTicket.AsFloat := frmTotalizadores.TKVenda;
        cdsFechamentovlrValeDesconto.AsFloat := frmTotalizadores.VDvenda;
        cdsFechamentovlrTotalEN.AsFloat := frmTotalizadores.TotalEN;
        cdsFechamentovlrRecebimento.AsFloat:= frmTotalizadores.VReceb;
        cdsFechamentovlrDinheiroSA.AsFloat := frmTotalizadores.SangriaDN;
        cdsFechamentovlrChequeSA.AsFloat := frmTotalizadores.SangriaCH;
        cdsFechamentovlrTotalSA.AsFloat := frmTotalizadores.TotalSaida;
        cdsFechamentovlrTotalFE.AsFloat := frmTotalizadores.TotalFechamento;
        cdsFechamentodtAbertura.AsDateTime := frmTotalizadores.dtAbertura;
        cdsFechamentodtFechamento.AsDateTime := Now;
        cdsFechamento.Post;

        redComprovante.Clear;
        redComprovante.Lines.Add('');
        redComprovante.Lines.Add('     RESUMO FECHAMENTO DO CAIXA');
        redComprovante.Lines.Add('  ' + frmPrincipal.lblOperador.Caption);
        redComprovante.Lines.Add('  DATA: ' + DateTimeToStr(Now));
        redComprovante.Lines.Add('  ABERTURA (DINHEIRO):      ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrAbertura.AsFloat));
        redComprovante.Lines.Add(' -----------------------------------------');
        redComprovante.Lines.Add('');
        redComprovante.Lines.Add('+ TODAS AS ENTRADAS');
        redComprovante.Lines.Add('DINHEIRO:                   ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrDinheiroEN.AsFloat));
        redComprovante.Lines.Add('SUPRIMENTO:                 ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrSuprimento.AsFloat));
        redComprovante.Lines.Add('NOTA:                       ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrNota.AsFloat));
        redComprovante.Lines.Add('CARTAO:                     ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrCartao.AsFloat));
        redComprovante.Lines.Add('CHEQUE:                     ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrChequeEN.AsFloat));
        redComprovante.Lines.Add('TOTAL (ENTRADAS):           ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrTotalEN.AsFloat));
        redComprovante.Lines.Add(' ---------------------------');
        redComprovante.Lines.Add('Desse TOTAL(ENTRADAS)' + FormatCurr(' R$ #,##0.00', cdsFechamentovlrRecebimento.AsFloat)+msg);
        redComprovante.Lines.Add(' ---------------------------');
        redComprovante.Lines.Add('');
        redComprovante.Lines.Add('- TODAS AS SAIDAS');
        redComprovante.Lines.Add('DINHEIRO:                   ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrDinheiroSA.AsFloat));
        redComprovante.Lines.Add('CHEQUE:                     ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrChequeSA.AsFloat));
        redComprovante.Lines.Add('TOTAL (SAIDAS):             ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrTotalSA.AsFloat));
        redComprovante.Lines.Add(' -----------------------------------------');
        redComprovante.Lines.Add('');
        redComprovante.Lines.Add('SALDO DINHEIRO (E - S):     ' + FormatCurr('R$ #,##0.00', cdsFechamentovlrTotalFE.AsFloat));
        redComprovante.Lines.Add('');

        try
          AssignFile(cArquivo, impcupom);
          Rewrite(cArquivo);
          Writeln(cArquivo, redComprovante.Text);
          Writeln(cArquivo);
          CloseFile(cArquivo);

        except on e: Exception do
        begin
          ShowMessage(e.Message);
        end;

      end;
    end;
  End;
end;

procedure TfrmMovimentacaoCaixa.Sangria;
begin
   Try
      frmSangria := TfrmSangria.Create(nil);
      frmSangria.ShowModal;
   Finally
      if frmSangria.ModalResult = mrOk then
      begin
        Application.ProcessMessages;
        Application.MessageBox('Realiza��o de Sangria feita com Sucesso.', 'Sucesso', MB_OK+MB_ICONEXCLAMATION);
        CalculaFechamento;
        fdsMovimentoCaixa.Close;
        fdsMovimentoCaixa.Open;
        Application.ProcessMessages;
      end
      else
        Application.MessageBox('Realiza��o de Sangria cancelada.', 'Cancelado', MB_OK+MB_ICONEXCLAMATION);

      frmSangria.Free;
   End;
end;

procedure TfrmMovimentacaoCaixa.Suprimento;
begin
  Try
      frmSuprimento := TfrmSuprimento.Create(nil);
      frmSuprimento.ShowModal;
   Finally
      if frmSuprimento.ModalResult = mrOk then
      begin
        Application.ProcessMessages;
        Application.MessageBox('Realiza��o de Suprimento feita com Sucesso.', 'Sucesso', MB_OK+MB_ICONEXCLAMATION);
        CalculaFechamento;
        fdsMovimentoCaixa.Close;
        fdsMovimentoCaixa.Open;
        Application.ProcessMessages;
      end
      else
        Application.MessageBox('Realiza��o de Suprimento cancelada.', 'Cancelado', MB_OK+MB_ICONEXCLAMATION);

      frmSuprimento.Free;
   End;
end;

procedure TfrmMovimentacaoCaixa.VerificaTipoImpressao;
begin
    if (DM.impVenda = 1) or (DM.impVenda = 3) then
    begin
      ImpressoraCupom;
    end
    else
    begin
      ImpressoraA4;
    end;
end;

end.
