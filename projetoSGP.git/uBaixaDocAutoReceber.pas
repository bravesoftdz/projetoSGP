unit uBaixaDocAutoReceber;

interface

uses System.Classes, System.SysUtils, FIBDataSet;

type
  TBaixaDocAutoReceber = class(TThread)
    procedure BaixarCT;
  end;

implementation

uses untCntReceber, untData;

procedure TBaixaDocAutoReceber.BaixarCT;
var
  fdsCntReceberItem: TFIBDataSet;
  teste: Integer;
begin

  fdsCntReceberItem := TFIBDataSet.Create(nil);
  fdsCntReceberItem.Database := DM.Conexao;
  fdsCntReceberItem.Transaction := DM.transPricipal;
  fdsCntReceberItem.Name := 'fdsCntReceberItem';

  fdsCntReceberItem.SQLs.SelectSQL.Add
    ('SELECT * FROM CNT_RECEBER_ITEM WHERE DT_VENC <= :DT_VENC AND POSICAO = ' +
    QuotedStr('AB') + ' AND PREFIXO = := PREFIXO');
  fdsCntReceberItem.Params.ParamByName('DT_VENC').AsDateTime := Now;
  fdsCntReceberItem.Params.ParamByName('PREFIXO').AsString := 'CT';

  fdsCntReceberItem.SQLs.UpdateSQL.Add
    ('UPDATE CNT_RECEBER_ITEM SET POSICAO = :POSICAO, DT_PAG = :DT_PAG, VALOR_PAGO = :VALOR, HISTORICO = :HISTORICO, REC_DINHEIRO = :REC_DINHEIRO WHERE ID = :OLD_ID and IDFILIAL = :OLD_IDFILIAL');

  fdsCntReceberItem.Open;
  teste := fdsCntReceberItem.RecordCount;


  // Retorna todas as contas itens a dar baixa, para cada uma, verfica se tem outra presta��o aberta, se n�o tiver, baixa o receber

  // with frmCntReceber.qryComando do
  // begin
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE CNT_RECEBER SET POSICAO = :POSICAO, VALOR_PAGO = VALOR, ');
  // SQL.Add('HISTORICO = :HISTORICO, IDFORMA_PAG = :IDFORMA_PAG, REC_DINHEIRO = VALOR WHERE ID IN ');
  // SQL.Add('(SELECT IDRECEBER FROM CNT_RECEBER_ITEM WHERE DT_VENC <= :DT_VENC AND POSICAO = ' + QuotedStr('AB') + ' AND PREFIXO = := PREFIXO)');
  // ParamByName('POSICAO').AsString := 'PG';
  // ParamByName('HISTORICO').AsString := 'Pago por meio de baixa autom�tica';
  // ParamByName('IDFORMA_PAG').AsInteger := 1;
  // ParamByName('DT_VENC').AsDateTime := Now;
  // ParamByName('PREFIXO').AsString := 'CT';
  // Prepare;
  // ExecQuery;
  //
  // Close;
  // SQL.Clear;
  // SQL.Add('UPDATE CNT_RECEBER_ITEM SET POSICAO = :POSICAO, DT_PAG = DT_VENC, VALOR_PAGO = VALOR, ');
  // SQL.Add('HISTORICO = :HISTORICO, PAGAMENTO_MOEDA = :PAGAMENTO_MOEDA, REC_DINHEIRO = VALOR ');
  // SQL.Add('WHERE DT_VENC <= :DT_VENC AND POSICAO = :POSICAO AND PREFIXO = := PREFIXO');
  // Prepare;
  // ExecQuery;
  // end;
end;

end.
