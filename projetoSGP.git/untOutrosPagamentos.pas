unit untOutrosPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel,
  Vcl.ExtCtrls, RzPanel, RzButton, RzBckgnd;

type
  TfrmOutrosPagamentos = class(TForm)
    RzBackground1: TRzBackground;
    btnConfirmar: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzLabel8: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    edtFinanceira: TRzEdit;
    edtValeDesconto: TRzEdit;
    edtTicket: TRzEdit;
    edtParcelasFN: TRzEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtFinanceiraEnter(Sender: TObject);
    procedure edtValeDescontoEnter(Sender: TObject);
    procedure edtTicketEnter(Sender: TObject);
    procedure edtTicketExit(Sender: TObject);
    procedure edtValeDescontoExit(Sender: TObject);
    procedure edtFinanceiraExit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
  var
    valorFinanceira, valorValeDesconto, valorTicket: Double;
  end;

var
  frmOutrosPagamentos: TfrmOutrosPagamentos;

implementation

{$R *.dfm}

uses uUtils;

procedure TfrmOutrosPagamentos.btnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmOutrosPagamentos.edtFinanceiraEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtFinanceira.Text := utils.RetiraMascaraDinheiro(edtFinanceira.Text);
  edtFinanceira.SelectAll;
end;

procedure TfrmOutrosPagamentos.edtFinanceiraExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtFinanceira.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtFinanceira.Text, 'F'));
  valorFinanceira := StrToFloat(edtFinanceira.Text);
  edtFinanceira.Text := utils.AdicionaMascaraDinheiro(edtFinanceira.Text);
end;

procedure TfrmOutrosPagamentos.edtTicketEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtTicket.Text := utils.RetiraMascaraDinheiro(edtTicket.Text);
  edtTicket.SelectAll;
end;

procedure TfrmOutrosPagamentos.edtTicketExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtTicket.Text := FloatToStr(utils.ValidaInteiroFloat(edtTicket.Text, 'F'));
  valorTicket := StrToFloat(edtTicket.Text);
  edtTicket.Text := utils.AdicionaMascaraDinheiro(edtTicket.Text);
end;

procedure TfrmOutrosPagamentos.edtValeDescontoEnter(Sender: TObject);
var
  utils: TUtils;
begin
  edtValeDesconto.Text := utils.RetiraMascaraDinheiro(edtValeDesconto.Text);
  edtValeDesconto.SelectAll;
end;

procedure TfrmOutrosPagamentos.edtValeDescontoExit(Sender: TObject);
var
  utils: TUtils;
begin
  edtValeDesconto.Text :=
    FloatToStr(utils.ValidaInteiroFloat(edtValeDesconto.Text, 'F'));
  valorValeDesconto := StrToFloat(edtValeDesconto.Text);
  edtValeDesconto.Text := utils.AdicionaMascaraDinheiro(edtValeDesconto.Text);
end;

procedure TfrmOutrosPagamentos.FormActivate(Sender: TObject);
var
  utils: TUtils;
begin
  edtFinanceira.Text := utils.AdicionaMascaraDinheiro
    (FloatToStr(valorFinanceira));
  edtValeDesconto.Text := utils.AdicionaMascaraDinheiro
    (FloatToStr(valorValeDesconto));
  edtTicket.Text := utils.AdicionaMascaraDinheiro(FloatToStr(valorTicket));
end;

procedure TfrmOutrosPagamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
