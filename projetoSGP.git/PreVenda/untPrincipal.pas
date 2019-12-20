unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, Vcl.StdCtrls, RzLabel, Data.DB, FIBDataSet,
  pFIBDataSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzDBEdit,
  Vcl.Mask, RzEdit, FIBQuery, pFIBQuery, Math, IniFiles, JvComponentBase,
  JvCipher, ACBrBase, ACBrLCB, ACBrDevice, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  frxClass, frxDBSet, frxExportPDF, Datasnap.DBClient;

type
  TfrmPrincipal = class(TForm)
    JvImage1: TJvImage;
    edtItemRef: TRzEdit;
    edtItemPrec: TRzDBEdit;
    edtItemQtn: TRzDBEdit;
    gdrItens: TJvDBGrid;
    edtTotalVenda: TRzDBEdit;
    fdsPreVenda: TpFIBDataSet;
    fdsPreVendaID: TFIBBCDField;
    fdsPreVendaIDFILIAL: TFIBBCDField;
    fdsPreVendaDT_INC: TFIBDateField;
    fdsPreVendaSTATUS: TFIBStringField;
    fdsPreVendaIDCLIENTE: TFIBBCDField;
    fdsPreVendaIDVENDEDOR: TFIBBCDField;
    fdsPreVendaIDFORMA_PAG: TFIBBCDField;
    fdsPreVendaVLR_TOTITEM: TFIBBCDField;
    fdsPreVendaVLR_DESCONTO: TFIBBCDField;
    fdsPreVendaVLR_TOTAL: TFIBBCDField;
    fdsPreVendaVLR_VENDA: TFIBBCDField;
    fdsPreVendaPREFIXO: TFIBStringField;
    fdsPreVendaVENDEDOR: TFIBStringField;
    fdsPreVendaCLIENTE: TFIBStringField;
    fdsPreVendaFORMA_PAGAMENTO: TFIBStringField;
    fdsPreVendaNUM_PROPIO: TFIBIntegerField;
    fdsPreVendaItens: TpFIBDataSet;
    lblOperador: TRzLabel;
    lblProduto: TRzLabel;
    dsPreVendaItens: TDataSource;
    qryItens: TpFIBQuery;
    fdsPreVendaItensIDPREVENDA: TFIBBCDField;
    fdsPreVendaItensITEM: TFIBSmallIntField;
    fdsPreVendaItensIDPROD_ITEM: TFIBBCDField;
    fdsPreVendaItensDT_INC: TFIBDateField;
    fdsPreVendaItensQTN: TFIBBCDField;
    fdsPreVendaItensVLR_UNITARIO: TFIBBCDField;
    fdsPreVendaItensVLR_DESC: TFIBBCDField;
    fdsPreVendaItensVLR_TOTAL: TFIBBCDField;
    fdsPreVendaItensIDFILIAL: TFIBBCDField;
    fdsPreVendaItensNOME: TFIBStringField;
    fdsPreVendaItensCOD_FABRICA: TFIBStringField;
    JvVigenereCipher1: TJvVigenereCipher;
    ACBrLCB1: TACBrLCB;
    dsPreVenda: TDataSource;
    fdsCliente: TpFIBDataSet;
    redItens: TRzRichEdit;
    frxPreVenda: TfrxDBDataset;
    frxPreVendaItens: TfrxDBDataset;
    frxCliente: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Timer1: TTimer;
    lblHora: TRzLabel;
    lblData: TRzLabel;
    edtItemDesconto: TRzDBEdit;
    qryComand: TpFIBQuery;
    cdstabPrecoTemp: TClientDataSet;
    cdstabPrecoTempTAB_PRECO: TIntegerField;
    lblTabelaPreco: TRzLabel;
    fdsTabPrecos: TpFIBDataSet;
    fdsTabPrecosID: TFIBBCDField;
    fdsTabPrecosDESCRICAO1: TFIBStringField;
    fdsTabPrecosDESCRICAO2: TFIBStringField;
    fdsTabPrecosDESCRICAO3: TFIBStringField;
    fdsTabPrecosDESCRICAO4: TFIBStringField;
    fdsTabPrecosDESCRICAO5: TFIBStringField;
    fdsTabPrecosDESCRICAO6: TFIBStringField;
    fdsTabPrecosPDV_DES1: TFIBStringField;
    fdsTabPrecosPDV_DES2: TFIBStringField;
    fdsTabPrecosPDV_DES3: TFIBStringField;
    fdsTabPrecosPDV_DES4: TFIBStringField;
    fdsTabPrecosPDV_DES5: TFIBStringField;
    fdsTabPrecosPDV_DES6: TFIBStringField;
    fdsTabPrecosPORCENTAGEM_AJUSTE2: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE3: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE4: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE5: TFIBBCDField;
    fdsTabPrecosPORCENTAGEM_AJUSTE6: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT1: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT2: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT3: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT4: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT5: TFIBBCDField;
    fdsTabPrecosDESC_MAX_PORCENT6: TFIBBCDField;
    fdsPreVendaINFO_ADICINAL: TFIBStringField;
    procedure edtItemPrecExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemQtnExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtItemRefKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemQtnKeyPress(Sender: TObject; var Key: Char);
    procedure edtItemDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure edtItemQtnEnter(Sender: TObject);
    procedure edtItemPrecKeyPress(Sender: TObject; var Key: Char);
  private
    procedure AppMessage(var Msg: TMSG; var HAndled: Boolean);
    procedure PesquisaPreVendas;
    procedure PreparaReimpressao;
    procedure TrataCodigoEtquetaBal;
  public
    procedure ImprimirOrcamento;
    function RetornaItem(): Boolean;
    procedure VerificaDescItem;
    procedure FinalizarVenda;
    procedure FinalizaItem;
    procedure ResetarPreVenda;
    procedure TabelaPrecos;
    procedure LeIni;
    procedure ControleRegistro;
    procedure ConfiguraLayout;
    procedure AbandonaVenda;
    procedure FecharSistema;
    procedure CancelaItem;
    procedure AlterarPrecUnit;
    function FormataNumeroItem(numero: Integer): string;

    var
      lancNumManual: string;

  end;

var
  frmPrincipal: TfrmPrincipal;
  statusCaixa, alertaEstoqueVazio, tpImpressora, impcupom,editPreVenda: string;
  nome, endereco, bairrocidade, telefone: string;
  idItem, idProduto, idPreVenda, totItem: Integer;
  vlrTotal, vlrDescMax, itemVlrUnitario, itemPeso: Double;
  prodBalLeitorSereal,pegaCodDeLeitor,leitorSerial:Boolean;
  pesoProdutoBalEtiq:String ;

implementation

{$R *.dfm}

uses untData, untPesqProdutoItens, uVerificaPermicao, untLogin, uUtils,
  untVendaFinalizacao, untTabelaPrecos, uRegistro, untCancelarItem,
  untSelTabPreco, untPesqPreVenda, untMenssagens;

procedure TfrmPrincipal.AbandonaVenda;
begin
  if editPrevenda<>'S' then
  begin
  Case MessageBox(Application.Handle, Pchar('Deseja realmente abandonar a Venda atual?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idNo: begin
                    Abort;
                 end;
           IDYES:begin
                    with fdsPreVenda do
                    begin
                      Edit;
                      fdsPreVendaSTATUS.AsString := 'CA';
                      Post;
                      Close;
                      dm.conexao.CommitRetaining;
                    end;

                    if fdsPreVendaItens.State in [dsInsert, dsEdit] then
                      fdsPreVendaItens.Cancel;
                     dm.conexao.CommitRetaining;
                    ResetarPreVenda;

                    if Dm.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S' then
                    begin
                      cdstabPrecoTemp.Edit;
                      cdstabPrecoTempTAB_PRECO.AsInteger:=1;
                      lblTabelaPreco.Caption:='Tab.Pre�o 1';
                      cdstabPrecoTemp.Post;
                    end;
                 end;
  End;
  end;
end;

procedure TfrmPrincipal.AlterarPrecUnit;
var
  itemVlrUntTemp : Double;
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    temPermicao := False;

    if Trim(edtItemPrec.Text) <> EmptyStr then
    begin

      if Length(edtItemPrec.Text) > 11 then
      begin
        edtItemPrec.SetFocus;
        fdsPreVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
        Abort;
      end;

      itemVlrUntTemp := RoundTo(fdsPreVendaItensVLR_UNITARIO.AsCurrency, -2);

      if (itemVlrUntTemp <> itemVlrUnitario) then
      begin
        temPermicao := uVerificaPermicao.Verifica('ALTERAR_PREC_UNIT');
      end
      else
        temPermicao := True;

      if temPermicao then
      begin
        itemVlrUnitario := fdsPreVendaItensVLR_UNITARIO.AsCurrency;
      end
      else
      begin
        //Application.MessageBox('Desculpe, voc� n�o tem permiss�o para alterar o pre�o de venda', 'Sem permi��o.', MB_OK+MB_ICONERROR);
        frmMenssagens.Mensagem('Desculpe,Usu�rio sem permiss�o para alterar o pre�o de venda.','Sem permiss�o.','I', [mbOK]);
        edtItemPrec.SetFocus;
        fdsPreVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
      end;
    end ;
   end;
end;

procedure TfrmPrincipal.AppMessage(var Msg: TMSG; var HAndled: Boolean);
begin
  Handled := False;
  case Msg.Message of
    WM_SYSKEYDOWN:
      if Msg.wParam = VK_F4 then
        Handled := True; // Bloqueia o ALT+F4 end;
  end;
end;

procedure TfrmPrincipal.CancelaItem;
begin
  if fdsPreVendaItens.State in [dsInsert, dsEdit] then
    begin
      Application.MessageBox('Voc� n�o terminou de lan�ar o item atual, cancele ou confirme este item antes de tentar cancelar algum j� passado.', 'Aten��o', MB_OK+MB_ICONWARNING);
    end
    else
    begin
    Try
      frmCancelarItem := TfrmCancelarItem.Create(nil);
      frmCancelarItem.idPreVenda := idPreVenda;
      frmCancelarItem.idFilial := DM.fdsConfigIDFILIAL.AsInteger;
      frmCancelarItem.ShowModal;
    Finally
      if frmCancelarItem.ModalResult = mrOk then
      begin
          with fdsPreVendaItens do
          begin
            Close;
            Conditions.Clear;
            Conditions.AddCondition('IDVENDA', ' IDPREVENDA = ' + IntToStr(idPreVenda), True);
            Conditions.AddCondition('IDFILIAL', ' IDFILIAL = ' + IntToStr(DM.fdsConfigIDFILIAL.AsInteger), True);
            Conditions.AddCondition('ITEM', ' ITEM = ' + frmCancelarItem.fdsPreVendaItensITEM.AsString, True);
            Conditions.Apply;
            Prepare;
            Open;
            vlrTotal := vlrTotal - fdsPreVendaItensVLR_TOTAL.AsFloat;
            Delete;
            Close;
            Conditions.Clear;
            Conditions.Apply;
            Open;
          end;

          with fdsPreVenda do
          begin
            Edit;
            fdsPreVendaVLR_TOTITEM.AsFloat := vlrTotal;
            fdsPreVendaVLR_TOTAL.AsFloat := vlrTotal;
            fdsPreVendaVLR_VENDA.AsFloat := vlrTotal;
            Post;
          end;
           dm.conexao.CommitRetaining;

           edtItemRef.Clear;
           edtItemPrec.Clear;
           edtItemDesconto.Clear;
           edtItemQtn.Clear;
      end;
      frmCancelarItem.Free;
      edtItemRef.SetFocus;
    End;
  end;
end;

procedure TfrmPrincipal.ConfiguraLayout;
var
  INI : TIniFile;
begin
  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
  lblProduto.Left := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'LEFT', ''));
  lblProduto.Top := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'TOP', ''));
  lblProduto.Width := StrToInt(INI.ReadString('POS_LBLPRODUTO', 'WIDTH', ''));

  edtItemRef.Left := StrToInt(INI.ReadString('POS_EDTITEMREF', 'LEFT', ''));
  edtItemRef.Top := StrToInt(INI.ReadString('POS_EDTITEMREF', 'TOP', ''));
  edtItemRef.Width := StrToInt(INI.ReadString('POS_EDTITEMREF', 'WIDTH', ''));

  edtItemPrec.Left := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'LEFT', ''));
  edtItemPrec.Top := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'TOP', ''));
  edtItemPrec.Width := StrToInt(INI.ReadString('POS_EDTITEMPREC', 'WIDTH', ''));

  edtItemQtn.Left := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'LEFT', ''));
  edtItemQtn.Top := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'TOP', ''));
  edtItemQtn.Width := StrToInt(INI.ReadString('POS_EDTITEMQTN', 'WIDTH', ''));

  edtItemDesconto.Left := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'LEFT', ''));
  edtItemDesconto.Top := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'TOP', ''));
  edtItemDesconto.Width := StrToInt(INI.ReadString('POS_EDTITEMDESC', 'WIDTH', ''));

  edtTotalVenda.Left := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'LEFT', ''));
  edtTotalVenda.Top := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'TOP', ''));
  edtTotalVenda.Width := StrToInt(INI.ReadString('POS_EDTTOTALVENDA', 'WIDTH', ''));

  gdrItens.Left := StrToInt(INI.ReadString('POS_GDRITENS', 'LEFT', ''));
  gdrItens.Top := StrToInt(INI.ReadString('POS_GDRITENS', 'TOP', ''));
  gdrItens.Width := StrToInt(INI.ReadString('POS_GDRITENS', 'WIDTH', ''));
  gdrItens.Height := StrToInt(INI.ReadString('POS_GDRITENS', 'HEIGHT', ''));
  INI.Free;
end;

procedure TfrmPrincipal.ControleRegistro;
var
  registro : TRegistro;
  liberado : Boolean;
begin
  liberado := registro.VerificaChave;

  if liberado = False then
  begin
    Application.MessageBox('Seu sistema expirou, entre em contato o desenvolvedor','Aten�ao', MB_OK+MB_ICONWARNING);
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.edtItemDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    if (Key in ['a'..'z']) or (Key in ['A'..'Z']) then
    begin
      if edtItemPrec.ReadOnly=True then
      begin
        if (Key = 'P') or (Key = 'p') then
        begin
          edtItemPrec.ReadOnly:=false;
          edtItemPrec.SetFocus;
        end;
        Key :=#0;
      end;
    end;
    if (Key = #13)and (edtItemPrec.ReadOnly=true) then
    begin
      edtItemQtn.SetFocus;
      Key := #0;
      VerificaDescItem;
      FinalizaItem;
      gdrItens.Enabled:= True;
    end;

  end;
end;

procedure TfrmPrincipal.edtItemPrecExit(Sender: TObject);
var
  itemVlrUntTemp : Double;
  temPermicao : Boolean;
  uVerificaPermicao : TVerificaPermicao;
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    if edtItemPrec.ReadOnly=false then
    edtItemPrec.ReadOnly :=true;
  end;
end;

procedure TfrmPrincipal.edtItemPrecKeyPress(Sender: TObject; var Key: Char);
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    if (Key = #13) and (edtItemPrec.ReadOnly=false) then
    begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
      AlterarPrecUnit;
    end;
  end;
end;

procedure TfrmPrincipal.edtItemQtnEnter(Sender: TObject);
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
   if prodBalLeitorSereal=True then
   begin
     edtItemQtn.Text:= pesoProdutoBalEtiq;
   end;
    prodBalLeitorSereal:=false;
  end;
end;

procedure TfrmPrincipal.edtItemQtnExit(Sender: TObject);
var
  tempQtn : Double;
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    Try
      tempQtn := StrToFloat(edtItemQtn.Text);
    Except
      begin
        edtItemQtn.Text := '1';
      end;
    End;

//    fdsPreVendaItensQTN.AsFloat := StrToFloat(edtItemQtn.Text);
//    fdsPreVendaItensVLR_TOTAL.AsCurrency := itemVlrUnitario * fdsPreVendaItensQTN.AsFloat;
  end;

end;

procedure TfrmPrincipal.edtItemQtnKeyPress(Sender: TObject; var Key: Char);
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    if (Key in ['a'..'z']) or (Key in ['A'..'Z']) then
    begin
     if edtItemPrec.ReadOnly=True then
      begin
        if (Key = 'P') or (Key = 'p') then
        begin
          edtItemPrec.ReadOnly:=false;
          edtItemPrec.SetFocus;
        end;
        Key :=#0;
      end;
    end;

    if Key = #13 then
    begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
    end;
  end;
end;

procedure TfrmPrincipal.edtItemRefKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
//    if not(fdsPreVendaItens.State in [dsInsert, dsEdit]) then
//    begin
       gdrItens.Enabled:= false;
      if fdsPreVendaItens.State in [dsInsert, dsEdit] then
        fdsPreVendaItens.Cancel;
//Verifica se � utilizado balan�a de etiqueta para poder saber o codigo do leitor q sera pego
        TrataCodigoEtquetaBal;
 // ------------------------------------------------------------------------------------------
      if RetornaItem then
      begin
        if statusCaixa = 'LV' then
        begin
          statusCaixa := 'VE';
          with fdsPreVenda do
          begin
            Open;
            fdsPreVenda.Append;
            idPreVenda := fdsPreVendaID.AsInteger;
            fdsPreVendaDT_INC.AsDateTime := Now;
            fdsPreVendaSTATUS.AsString := 'AB';
            fdsPreVendaIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
            fdsPreVendaPREFIXO.AsString := 'PV';
            fdsPreVendaVLR_TOTAL.AsFloat := 0;
            fdsPreVendaVLR_DESCONTO.AsFloat := 0;
            fdsPreVendaIDCLIENTE.AsInteger := DM.fdsConfigIDCLIENTEPADRAO.AsInteger;
            fdsPreVendaIDVENDEDOR.AsInteger := 1;
            fdsPreVendaIDFORMA_PAG.AsInteger := 1;
            fdsPreVendaCLIENTE.AsString := 'CLIENTE PADR�O';
            Post;
            fdsPreVendaItens.ParamByName('IDPREVENDA').AsInteger := fdsPreVendaID.AsInteger;
            fdsPreVendaItens.ParamByName('IDFILIAL').AsInteger := fdsPreVendaIDFILIAL.AsInteger;
          end;
          dm.conexao.CommitRetaining;
        end;

        lblProduto.Visible := True;

        fdsPreVendaItens.Open;
        fdsPreVendaItens.Append;
        fdsPreVendaItensNOME.AsString := lblProduto.Caption;
        fdsPreVendaItensIDPREVENDA.AsInteger := idPreVenda;
        fdsPreVendaItensIDFILIAL.AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
        fdsPreVendaItensIDPROD_ITEM.AsInteger := idItem;
        fdsPreVendaItensDT_INC.AsDateTime := Now;
        fdsPreVendaItensVLR_UNITARIO.AsCurrency :=  itemVlrUnitario;
       // fdsPreVendaItensPESO.AsCurrency := itemPeso;
        //fdsPreVendaItensREFERENCIA.AsString := edtItemRef.Text;
        fdsPreVendaItensQTN.AsFloat := 1;
        SelectNext(ActiveControl, True, True);
        Key := #0;
      end
      else
      begin
        edtItemRef.Clear;
        edtItemRef.SetFocus;
      end;
    //end;
  end;
end;

procedure TfrmPrincipal.FecharSistema;
begin
 if statusCaixa = 'LV' then
 begin
    Case TFrmMenssagens.Mensagem('Deseja realmente fechar o sistema?','Aten��o','S',[mbNao,mbSim]) of
      true: begin
              Application.Terminate;
            end;
    end;
 end
 else
 begin
//            if fdsVendaItens.State in [dsInsert, dsEdit] then
//
//            else
      AbandonaVenda;
 end;
end;

procedure TfrmPrincipal.FinalizaItem;
var
  vlrUnitDesconto : Double; //Valor Unit�rio aplicado o desconto
begin
  if (statusCaixa = 'VE') and (fdsPreVendaItens.State in [dsInsert]) then
  begin
    vlrUnitDesconto := RoundTo(itemVlrUnitario *  fdsPreVendaItensVLR_DESC.AsFloat / 100, -2);
    fdsPreVendaItensVLR_TOTAL.AsFloat := RoundTo((itemVlrUnitario - vlrUnitDesconto) * fdsPreVendaItensQTN.AsFloat,-2);   //coloquei arredondamento
    vlrTotal := vlrTotal + fdsPreVendaItensVLR_TOTAL.AsFloat;

    Inc(totItem);
    fdsPreVendaItensITEM.AsInteger := totItem;
    fdsPreVendaItensVLR_DESC.AsFloat := vlrUnitDesconto;
    fdsPreVendaItens.Post;
    qryItens.Close;

    with fdsPreVenda do
    begin
      Edit;
      fdsPreVendaVLR_TOTITEM.AsFloat := RoundTo(fdsPreVendaVLR_TOTITEM.AsFloat + (itemVlrUnitario * fdsPreVendaItensQTN.AsFloat),-2); //coloquei arredondamento
      fdsPreVendaVLR_VENDA.AsFloat := vlrTotal;
      fdsPreVendaVLR_TOTAL.AsFloat := vlrTotal;
      Post;
    end;
    dm.conexao.CommitRetaining;

    edtItemRef.Clear;
    edtItemPrec.Clear;
    edtItemDesconto.Clear;
    edtItemQtn.Clear;
    edtItemRef.SetFocus;
  end;
end;

procedure TfrmPrincipal.FinalizarVenda;
begin
  if statusCaixa = 'VE' then
  begin
    if fdsPreVendaItens.State in [dsInsert, dsEdit] then
    begin
      Application.MessageBox('Voc� n�o terminou de lan�ar o item atual, cancele ou confirme este item antes de fechar a Pr�-Venda.', 'Aten��o', MB_OK+MB_ICONWARNING);
    end
    else
    begin
      Try
        frmVendaFinalizacao := TfrmVendaFinalizacao.Create(nil);
        frmVendaFinalizacao.edtValorVenda.Text := edtTotalVenda.Text;
        frmVendaFinalizacao.idCliente := DM.fdsConfigIDCLIENTEPADRAO.AsInteger;
        frmVendaFinalizacao.valorTotItem := fdsPreVendaVLR_TOTITEM.AsFloat;
        frmVendaFinalizacao.valorTotal:= fdsPreVendaVLR_TOTAL.AsFloat;
        frmVendaFinalizacao.edtCliente.Text := 'CLIENTE PADR�O';
        frmVendaFinalizacao.mmInfoAdicional.Lines.Add(fdsPreVendaINFO_ADICINAL.AsString);
        if editPreVenda='S' then
        begin
          frmVendaFinalizacao.idFormaPagamento:= fdsPreVendaIDFORMA_PAG.AsInteger;
          frmVendaFinalizacao.cbxFormaPagamento.ItemIndex:= fdsPreVendaIDFORMA_PAG.AsInteger;
          frmVendaFinalizacao.edtIDVendedor.Text := fdsPreVendaIDVENDEDOR.AsString;
          frmVendaFinalizacao.edtIDVendedorExit(frmVendaFinalizacao.edtIDVendedor);
          frmVendaFinalizacao.edtCodCliente.Text:= fdsPreVendaIDCLIENTE.Text;
          frmVendaFinalizacao.edtCodClienteExit(frmVendaFinalizacao.edtCodCliente);
        end;
        if lancNumManual = 'N' then
        begin
          frmVendaFinalizacao.edtNumPreVenda.Text := fdsPreVendaID.AsString;
          frmVendaFinalizacao.edtNumPreVenda.Enabled := False;
        end;
        frmVendaFinalizacao.ShowModal;
      Finally
        if frmVendaFinalizacao.ModalResult = mrOk then
        begin
          editPreVenda:='N';
          fdsPreVenda.Edit;
          fdsPreVendaIDVENDEDOR.AsInteger := frmVendaFinalizacao.idVendedor;
          fdsPreVendaIDCLIENTE.AsInteger := frmVendaFinalizacao.idCliente;
          fdsPreVendaIDFORMA_PAG.AsInteger := frmVendaFinalizacao.idFormaPagamento;
          fdsPreVendaNUM_PROPIO.AsInteger := StrToInt(frmVendaFinalizacao.edtNumPreVenda.Text);
          fdsPreVendaVLR_DESCONTO.AsFloat := frmVendaFinalizacao.ValorDesc;
          fdsPreVendaVLR_TOTAL.AsFloat := frmVendaFinalizacao.valorTotal;
          fdsPreVendaINFO_ADICINAL.AsString:= trim(frmVendaFinalizacao.mmInfoAdicional.Text);
          fdsPreVendaSTATUS.AsString := 'CF';
          fdsPreVenda.Post;
          DM.Conexao.CommitRetaining;

          Application.ProcessMessages;
          Application.MessageBox('Venda Finalizada com sucesso!', 'Venda Finalizada.', MB_OK+MB_ICONEXCLAMATION);

          if not(tpImpressora = '0') then
          begin
            Case MessageBox(Application.Handle, Pchar('Deseja imprimir um Or�amento?'), 'Imprimir Or�amento', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
            idYes: begin
                      ImprimirOrcamento;
                   end;
            end;
          end;

          ResetarPreVenda;
        end;
        frmVendaFinalizacao.Free;
        if Dm.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S' then
        begin
          cdstabPrecoTemp.Edit;
          cdstabPrecoTempTAB_PRECO.AsInteger:=DM.fdsConfigTAB_PADRAO_PRE_VENDA.AsInteger;
          lblTabelaPreco.Caption:='Tab.Pre�o '+IntToStr(DM.fdsConfigTAB_PADRAO_PRE_VENDA.AsInteger);
          cdstabPrecoTemp.Post;
        end;
      End;
    end;
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  ResetarPreVenda;
end;

function TfrmPrincipal.FormataNumeroItem(numero: Integer): string;
var
  temp : string;
begin
  temp := IntToStr(numero);
  while Length(temp) < 3 do
  begin
    temp := '0' + temp;
  end;

  Result := temp;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  AbriuBanco: Boolean;
begin
  Application.OnMessage := AppMessage;

  try
     dm.Conexao.Connected := False;
     LeIni;
     dm.Conexao.Connected := True;
     dm.fdsConfig.Open;
     DM.fdsConfig.Edit;
     DM.fdsConfigHOJE.AsString := DateToStr(Now);
     DM.fdsConfig.Post;
     DM.Conexao.CommitRetaining;

     try
       dm.Conexao.Connected := True;
       dm.fdsConfig.Open;
     Except on E : Exception do
       begin
        ShowMessage(E.Message);
        Application.Terminate;
       end;
     end;

     ControleRegistro;

     frmLogin := TfrmLogin.Create(nil);
     frmLogin.ShowModal;
     lblData.Caption := FormatDateTime('dd/MM/yyyy', Now);
  finally
     if frmLogin.ModalResult = mrOk then
     begin
        DM.idUsuario := frmLogin.fdsUserID.AsInteger;

        with dm.fdsUsuarioPermic do
        begin
          Close;
          ParamByName('IDUSUARIO').AsInteger := DM.idUsuario;
          ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
          Open;
        end;

        lblOperador.Caption := 'Operador: '  + frmLogin.fdsUserNOME.AsString;
        ConfiguraLayout;

        if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S' then
        begin
        cdstabPrecoTemp.CreateDataSet;
        cdstabPrecoTemp.Append;
        cdstabPrecoTempTAB_PRECO.AsInteger:=DM.fdsConfigTAB_PADRAO_PRE_VENDA.AsInteger;
        lblTabelaPreco.Caption:='Tab.Pre�o '+IntToStr(DM.fdsConfigTAB_PADRAO_PRE_VENDA.AsInteger);
        cdstabPrecoTemp.Post;
        end;
        editPreVenda:='N';
     end
     else
        Application.Terminate;
  end;

end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F10 then
  begin
    FinalizarVenda;
  end;

  if Key = VK_F4 then
  begin
      PesquisaPreVendas;
  end;

  if Key = VK_F6 then
  begin
      TabelaPrecos;
  end;

  if Key = VK_F11 then
  begin
      CancelaItem;
  end;

  if Key = VK_F12 then
  begin
      AbandonaVenda;
  end;

   if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString='S')then
  begin
    If ((GetKeyState(VK_CONTROL)<0) and (Key = 116 )) or ((GetKeyState(VK_CONTROL)<0) and (Key = 84)) and (statusCaixa = 'LV') then
    begin
      Try
          frmSelTabPreco := TfrmSelTabPreco.Create(nil);
          frmSelTabPreco.rbtValor1.Caption := 'Tabela 1';
          frmSelTabPreco.rbtValor2.Caption := 'Tabela 2';
          frmSelTabPreco.rbtValor3.Caption := 'Tabela 3';
          frmSelTabPreco.rbtValor4.Caption := 'Tabela 4';
          frmSelTabPreco.ShowModal;
      Finally
        if frmSelTabPreco.ModalResult = mrOk then
        begin
           cdstabPrecoTemp.Edit;
           if frmSelTabPreco.rbtValor1.Checked then
           begin
            cdstabPrecoTempTAB_PRECO.AsInteger:=1;
            lblTabelaPreco.Caption:='Tab.Pre�o 1'
           end;
           if frmSelTabPreco.rbtValor2.Checked then
           begin
            cdstabPrecoTempTAB_PRECO.AsInteger:=2;
            lblTabelaPreco.Caption:='Tab.Pre�o 2'
           end;
           if frmSelTabPreco.rbtValor3.Checked then
           begin
            cdstabPrecoTempTAB_PRECO.AsInteger:=3;
            lblTabelaPreco.Caption:='Tab.Pre�o 3'
           end;
           if frmSelTabPreco.rbtValor4.Checked then
           begin
            cdstabPrecoTempTAB_PRECO.AsInteger:=4;
            lblTabelaPreco.Caption:='Tab.Pre�o 4';
           end;
           cdstabPrecoTemp.Post;
           dm.conexao.CommitRetaining;
        end;
        frmSelTabPreco.Free;
      End;
    end;
  end;

  if Key = VK_ESCAPE then
  begin
      FecharSistema;
  end;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//  begin
//    Key := #0;
//    SelectNext(ActiveControl, True, True);
//  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmPrincipal.Top := 0;
  frmPrincipal.Left := 0;
  frmPrincipal.Width := Screen.Width;
  frmPrincipal.Height := Screen.Height;
end;

procedure TfrmPrincipal.ImprimirOrcamento;
Var
  cArquivo: TextFile;
begin
  with fdsCliente do
  begin
    Close;
    Conditions.Clear;
    Conditions.AddCondition('ID', 'ID = ' + fdsPreVendaID.AsString, True);
    Conditions.Apply;
    Prepare;
    Open;
  end;
 // DM.frxReport1.Clear;
  if tpImpressora = '1' then
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxOrcamentoCupom.fr3');

  if tpImpressora = '2' then
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Relatorios/frxOrcamento.fr3');

  DM.frxReport1.PrepareReport(True);
  DM.frxReport1.ShowReport(True);
end;

procedure TfrmPrincipal.LeIni;
var
  INI : TIniFile;
  caminhoBase: string;
  senha: string;
begin
  Try
    JvVigenereCipher1.Key := 'xoxota';

    INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\PATH.INI');
    caminhoBase := INI.ReadString('CAMINHOS', 'SGP', '');
    lancNumManual := INI.ReadString('CONFIG', 'LANCNUMMANUAL', '');
    JvVigenereCipher1.Encoded := INI.ReadString('CAMINHOS', 'PWD', '');
    senha := JvVigenereCipher1.Decoded;
    alertaEstoqueVazio := INI.ReadString('CONFIG', 'ALERTESTVAZIO', '');
    tpImpressora := INI.ReadString('CONFIG', 'IMPRIMIR', '');
    impcupom := INI.ReadString('CONFIG', 'IMPCUPOM', '');

    nome := INI.ReadString('DADOS', 'NOME', '');
    endereco := INI.ReadString('DADOS', 'ENDERECO', '');
    bairrocidade := INI.ReadString('DADOS', 'BAIRROCIDADE', '');
    telefone := INI.ReadString('DADOS', 'TELEFONE', '');

    DM.Conexao.DBName := caminhoBase;
    DM.Conexao.ConnectParams.Password := senha;

    //Configura Leitor
    if INI.ReadString('CONFIG', 'LEITORSERIAL', '') = 'S' then
    begin
       if not(ACBrLCB1.Ativo) then
       begin
         ACBrLCB1.Desativar;
         ACBrLCB1.Porta       := 'COM1' ;
         ACBrLCB1.UsarFila    := False;
         ACBrLCB1.Device.Baud := 9600 ;
         ACBrLCB1.Device.Data := 8;

         ACBrLCB1.Sufixo        := '#13' ;
         ACBrLCB1.ExcluirSufixo := True;

         ACBrLCB1.Device.HandShake := TACBrHandShake( hsNenhum ) ;
         ACBrLCB1.Device.HardFlow  := True;
         ACBrLCB1.Device.SoftFlow  := True;

         ACBrLCB1.Device.Parity := TACBrSerialParity( pNone ) ;
         ACBrLCB1.Device.Stop   := TACBrSerialStop( s1 ) ;

         ACBrLCB1.Ativar ;
        end;
    end;
    //Fim Configura Leitor



    INI.Free;
  Except on E : Exception do
     begin
      ShowMessage('Erro na leitura do INI: ' + E.Message);
      Application.Terminate;
     end;
  End;
end;

procedure TfrmPrincipal.PesquisaPreVendas;
begin
  if statusCaixa = 'LV' then
  begin
    try
      frmPesqPreVenda := TfrmPesqPreVenda.Create(nil);
      frmPesqPreVenda.ShowModal;
    Finally
      if frmPesqPreVenda.ModalResult = mrOk then
      begin
        if frmPesqPreVenda.imprimir = True then
        begin
          idPreVenda := frmPesqPreVenda.fdsPreVendaID.AsInteger;
          PreparaReimpressao;
          ResetarPreVenda;
        end;
      end;
      frmPesqPreVenda.Free;
    end;
  end;
end;

procedure TfrmPrincipal.PreparaReimpressao;
begin
  with fdsPreVenda do
  begin
    Close;
    ParamByName('ID').AsInteger := idPreVenda;
    Prepare;
    Open;
  end;

  with fdsPreVendaItens do
  begin
    Close;
    ParamByName('IDPREVENDA').AsInteger := idPreVenda;
    ParamByName('IDFILIAL').AsInteger := DM.fdsConfigIDFILIAL.AsInteger;
    Prepare;
    Open;
  end;

  ImprimirOrcamento;
end;

procedure TfrmPrincipal.ResetarPreVenda;
begin
  editPreVenda:='N';
  statusCaixa := 'LV';
  fdsPreVenda.Close;
  fdsPreVendaItens.Close;
  edtItemRef.SetFocus;
  edtItemRef.Clear;
  edtItemQtn.Clear;
  edtItemDesconto.Clear;
  edtItemPrec.Clear;
  edtTotalVenda.Clear;
  lblProduto.Visible := False;
  idPreVenda:= 0; idItem:= 0; totItem:= 0;
  itemVlrUnitario:= 0; itemPeso:= 0;  vlrTotal := 0;
end;

function TfrmPrincipal.RetornaItem: Boolean;
var
  pesquisar : Boolean;
  saldo : Double;
begin
  if not(Trim(edtItemRef.Text) = '') then
  begin
    with qryItens do
    begin
      Close;
      ParamByName('COD_FABRICA').AsString := edtItemRef.Text;
      ParamByName('IDFILIAL').AsString := DM.fdsConfigIDFILIAL.AsString;
      Prepare;
      ExecQuery;
    end;

    if not(qryItens.RecordCount = 0) then
    begin
      pesquisar := False;
      lblProduto.Caption := qryItens.FieldByName('NOME').AsString;
      idItem := qryItens.FieldByName('ID').AsInteger;

      {if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S') and (qryItens.FieldByName('PREC_TAB2').AsCurrency > 0) then
      begin
        Try
          frmSelTabPreco := TfrmSelTabPreco.Create(nil);
          frmSelTabPreco.rbtValor1.Caption := FormatFloat('R$ #,##0.00', qryItens.FieldByName('PREC_TAB1').AsCurrency);
          frmSelTabPreco.rbtValor2.Caption := FormatFloat('R$ #,##0.00', qryItens.FieldByName('PREC_TAB2').AsCurrency);
          frmSelTabPreco.ShowModal;
        Finally
          if frmSelTabPreco.ModalResult = mrOk then
          begin
            if frmSelTabPreco.rbtValor1.Checked then
            begin
              itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB1').AsCurrency, -2);
              vlrDescMax := qryItens.FieldByName('DESC_MAX1').AsFloat;
            end;

            if frmSelTabPreco.rbtValor2.Checked then
            begin
              itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB2').AsCurrency, -2);
              vlrDescMax := qryItens.FieldByName('DESC_MAX2').AsFloat;
            end;
          end;
        End;
      end
      else
      begin
        itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_VENDA').AsCurrency, -2);
        vlrDescMax := 100;
      end;}

      if (DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S')and not(cdstabPrecoTempTAB_PRECO.AsInteger =0) then
      begin

        if cdstabPrecoTempTAB_PRECO.AsInteger = 1 then
        begin
          itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB1').AsCurrency, -2);
          if qryItens.FieldByName('DESC_MAX1').AsFloat>0 then
          vlrDescMax := qryItens.FieldByName('DESC_MAX1').AsFloat
          else
           vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT1.AsFloat;
        end;

        if cdstabPrecoTempTAB_PRECO.AsInteger = 2 then
        begin
          itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB2').AsCurrency, -2);
          if qryItens.FieldByName('DESC_MAX2').AsFloat>0 then
          vlrDescMax := qryItens.FieldByName('DESC_MAX2').AsFloat
          else
          vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT2.AsFloat
        end;

        if cdstabPrecoTempTAB_PRECO.AsInteger = 3 then
        begin
          itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB3').AsCurrency, -2);
          if qryItens.FieldByName('DESC_MAX3').AsFloat>0 then
          vlrDescMax := qryItens.FieldByName('DESC_MAX3').AsFloat
          else
           vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT3.AsFloat
        end;

        if cdstabPrecoTempTAB_PRECO.AsInteger = 4 then
        begin
          itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_TAB4').AsCurrency, -2);
          if qryItens.FieldByName('DESC_MAX4').AsFloat>0 then
          vlrDescMax := qryItens.FieldByName('DESC_MAX4').AsFloat
          else
           vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT4.AsFloat
        end;
      end
      else
      begin
        itemVlrUnitario := RoundTo(qryItens.FieldByName('PREC_VENDA').AsCurrency, -2);
        vlrDescMax := fdsTabPrecosDESC_MAX_PORCENT1.AsFloat;
      end;


      itemPeso := qryItens.FieldByName('PESO').AsCurrency;
      idProduto := qryItens.FieldByName('IDPRODUTO').AsInteger;
      saldo := qryItens.FieldByName('SALDO').AsFloat;
     // edtItemQtn.SetFocus;
      Result := True; //Encontrou o item
    end
    else
      pesquisar := True;
  end
  else
  begin
    pesquisar := True;
  end;

  if pesquisar then
  begin
    Try
      frmPesqProdutoItens := TfrmPesqProdutoItens.Create(nil);
      frmPesqProdutoItens.ShowModal;
    Finally
      if frmPesqProdutoItens.ModalResult = mrOk then
      begin
        lblProduto.Caption := frmPesqProdutoItens.fdsProdutoItensNOME.AsString;
        edtItemRef.Text := frmPesqProdutoItens.fdsProdutoItensCOD_FABRICA.AsString;
        idItem :=  frmPesqProdutoItens.fdsProdutoItensID.AsInteger;
        saldo := frmPesqProdutoItens.fdsProdutoItensSALDO.AsFloat;
        if DM.fdsConfigUTILIZAR_TABELA_PRECO.AsString = 'S' then
        begin
          itemVlrUnitario := RoundTo(frmPesqProdutoItens.precUnitario, -2);
          vlrDescMax := frmPesqProdutoItens.vlrDescMax;
        end
        else
        begin
          itemVlrUnitario := RoundTo(frmPesqProdutoItens.fdsProdutoItensPREC_VENDA.AsCurrency, -2);
          vlrDescMax := 100;
        end;
        itemPeso := frmPesqProdutoItens.fdsProdutoItensPESO.AsCurrency;
        idProduto := frmPesqProdutoItens.fdsProdutoItensIDPRODUTO.AsInteger;
       // edtItemPrec.SetFocus;
       // edtItemQtn.SetFocus;
        Result := True;
      end
      else
        Result := False;

      frmPesqProdutoItens.Free;
    End;
  end;

  if (Result = True) and (saldo <= 0) and (alertaEstoqueVazio = 'S') then
  begin
    Case MessageBox(Application.Handle, Pchar('Saldo insuficiente, deseja lan�ar assim mesmo?'), 'Aten��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) of
          idYes: begin
                   Result := True;
                 end;

          IDNO: begin
                  Result := False;
                end;
    End;
  end;
end;

procedure TfrmPrincipal.TabelaPrecos;
begin
  Try
    frmTabelaPrecos := TfrmTabelaPrecos.Create(nil);
    frmTabelaPrecos.ShowModal;
  Finally
    frmTabelaPrecos.Free;
  End;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  lblHora.Caption := timetostr(Time);
  //lblHora.Caption := DateTimetostr(now);
end;

procedure TfrmPrincipal.TrataCodigoEtquetaBal;
var
IndicadorprodBal,codProduto,idProd,codLeitor:String;
vlrUnitarioProd:Double;
utils:TUtils;
begin
 pegaCodDeLeitor:=false;
 if DM.fdsConfigUTILIZAR_BAL_ETIQUETA.AsString = 'S' then
 begin
  if not (edtItemRef.Text = EmptyStr) then
   begin
   //Procura no banco o EAN 13 lido pelo codigo de Barrras
     with qryComand do
     begin
      Close;
      SQL.Clear;
      SQL.Add('select ID FROM PRODUTO_ITEM WHERE (COD_FABRICA= '+ quotedStr(edtItemRef.Text)+')OR (REFERENCIA='+quotedStr(edtItemRef.Text)+')');
      Prepare;
      ExecQuery;
     end;
   //
   //Caso n�o encontre verifica o digito verificador de produto de balan�a
     if not(qryComand.RecordCount>0)then
     begin
       IndicadorprodBal:=Copy(edtItemRef.Text,1,1);
       codLeitor:=edtItemRef.Text;
       if (IndicadorprodBal=DM.fdsConfigPREFIXO_EAN.AsString) and (length(edtItemRef.Text)=13) then
       begin
       //pega o codigo do produto da etiqueta
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
          codProduto:=Copy(edtItemRef.Text,2,6);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
          codProduto:=Copy(edtItemRef.Text,2,5);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
          codProduto:=Copy(edtItemRef.Text,2,4);

         codProduto:= utils.RetirazeroEsquerda(codProduto);

        if DM.fdsConfigDADOS_COD_ETIQUETA_BAL.AsString ='CP' then
        begin
        //aqui a vari�vel pesoProdutoBalEtiq esta recebendo o peso do produto,onde ser� dividido por 1000 para acrescentar a virgula
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
          pesoProdutoBalEtiq := Copy(edtItemRef.Text,8,5);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
          pesoProdutoBalEtiq := Copy(edtItemRef.Text,7,6);
         if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
          pesoProdutoBalEtiq := Copy(edtItemRef.Text,6,7);

         pesoProdutoBalEtiq := floatToStr(StrToint(pesoProdutoBalEtiq)/1000);
        end;

        pegaCodDeLeitor:=false;
        if DM.fdsConfigTIPO_COD_PROD_ETIQUETABAL.AsString = 'CI' then
        begin
          with qryComand do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select COD_FABRICA,ID FROM PRODUTO_ITEM WHERE ID= '+ quotedStr(codProduto));
            Prepare;
            ExecQuery;
            idProd:= FieldByName('ID').AsString;
            edtItemRef.Text := FieldByName('COD_FABRICA').AsString;
          end;

           prodBalLeitorSereal:=True;
           pegaCodDeLeitor:=True;
        end
        else       //se n�o � codigo interno, procura na referencia
        begin
         pegaCodDeLeitor:=false;
         with qryComand do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select COD_FABRICA,ID FROM PRODUTO_ITEM WHERE REFERENCIA = '+ quotedStr(codProduto));
            Prepare;
            ExecQuery;
            idProd:= FieldByName('ID').AsString;
            edtItemRef.Text := FieldByName('COD_FABRICA').AsString;
          end;
           prodBalLeitorSereal:=True;
           pegaCodDeLeitor:=True;
        end;
          /// aqui a vari�vel pesoProdutoBalEtiq esta recebendo o valor total do produto pesado,mas sera encontrado o peso atrav�z do valor total
         if DM.fdsConfigDADOS_COD_ETIQUETA_BAL.AsString ='CV' then
          begin
           //verifica o tamanho dos campos do codigo e do peso(valor) na etiqueta
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString = 'C6P5' then
            pesoProdutoBalEtiq := Copy(codLeitor,8,5);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C5P6' then
            pesoProdutoBalEtiq := Copy(codLeitor,7,6);
           if DM.fdsConfigTAMANHO_CAMPOS_BAL.AsString ='C4P6' then
            pesoProdutoBalEtiq := Copy(codLeitor,6,7);
           //pega o valor do pre�o de venda para encontrar o peso
           with qryComand do
           begin
            Close;
            SQL.Clear;
            SQL.Add('select PREC_VENDA FROM PRODUTO_ITEM_ESTOQUE WHERE IDITEM = '+ quotedStr(idProd));
            Prepare;
            ExecQuery;
            vlrUnitarioProd:= FieldByName('PREC_VENDA').AsFloat;
            pesoProdutoBalEtiq:= floatToStr(StrToInt(pesoProdutoBalEtiq)/100);
            pesoProdutoBalEtiq := floatToStr(roundTo((StrToFloat(pesoProdutoBalEtiq)/vlrUnitarioProd),-3));
           end;
          end;
       end;
     end;
   end;
   leitorSerial:=False;
 end;

end;

procedure TfrmPrincipal.VerificaDescItem;
var
  temPermicao : Boolean;
  utils : TUtils;
  uVerificaPermicao : TVerificaPermicao;
begin
  temPermicao := False;
  fdsPreVendaItensVLR_DESC.AsFloat := utils.ValidaInteiroFloat(fdsPreVendaItensVLR_DESC.AsString, 'F');

  if fdsPreVendaItensVLR_DESC.AsFloat > 0 then
  begin
    if (fdsPreVendaItensVLR_DESC.AsFloat > vlrDescMax) and (vlrDescMax>0) then
    begin
      temPermicao := False;
      Application.MessageBox(Pchar('Desconto m�ximo permitido para esse item �: ' + FloatToStr(vlrDescMax) + '%'), 'Desconto n�o permitido.', MB_OK+MB_ICONASTERISK);
      temPermicao := uVerificaPermicao.Verifica('DESC_MAX_ITEM');
    end
    else
    begin
      temPermicao := True;
    end;

    if temPermicao = false then
    begin
      fdsPreVendaItensVLR_DESC.AsFloat := 0;
      frmMenssagens.Mensagem('Desculpe,Usu�rio sem permiss�o para ultrapassar o desconto m�ximo.','Desconto n�o permitido.','I', [mbOK]);
      edtItemDesconto.SetFocus;
      Abort;
    end;
  end;
end;

end.
