unit uModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Math, ComCtrls,
  uCripto,
  uHomem, uMulher,
  uCalcular, uSoma, uSubtracao,
  uRoda, uMoto,
  uLeao, uGorila,
  uCorrente, uPoupanca,
  uMinhaClasse;
type
  TfrmDados = class(TForm)
    TabSheet: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cmdLigar: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    cmdBemVindo: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCorTelefone: TEdit;
    edtDDD: TEdit;
    edtNumero: TEdit;
    Image1: TImage;
    edtResultadoComposicao: TEdit;
    Label5: TLabel;
    cmdComposicao: TButton;
    edtTextoEncapsulamento: TEdit;
    Label6: TLabel;
    cmdEncapsulamento: TButton;
    edtResultadoHeranca: TEdit;
    Label7: TLabel;
    cmdHeranca: TButton;
    edtResultadoPolimorfismo: TEdit;
    Label8: TLabel;
    cmdPolimorfismo: TButton;
    edtResultadoPolimorfismo2: TEdit;
    Label9: TLabel;
    cmdSoma: TButton;
    edtResultadoSobreposicao: TEdit;
    Label10: TLabel;
    cmdSaqueCC: TButton;
    cmdSubtracao: TButton;
    cmdSaquePoupanca: TButton;
    Label11: TLabel;
    edtResultadoEncapsulamento: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image9: TImage;
    Image7: TImage;
    Image8: TImage;
    Label12: TLabel;
    edtAgencia: TEdit;
    edtConta: TEdit;
    edtValor: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtValor2: TEdit;
    edtValor1: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edtAro1: TEdit;
    edtCor1: TEdit;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtAro2: TEdit;
    edtCor2: TEdit;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edtIdadeHeranca: TEdit;
    edtNomeHeranca: TEdit;
    edtBarba: TEdit;
    Label27: TLabel;
    edtBusto: TEdit;
    Label28: TLabel;
    edtResultadoClasse: TMemo;
    procedure cmdEncapsulamentoClick(Sender: TObject);
    procedure cmdHerancaClick(Sender: TObject);
    procedure cmdSomaClick(Sender: TObject);
    procedure cmdSubtracaoClick(Sender: TObject);
    procedure cmdComposicaoClick(Sender: TObject);
    procedure cmdPolimorfismoClick(Sender: TObject);
    procedure cmdSaqueCCClick(Sender: TObject);
    procedure cmdSaquePoupancaClick(Sender: TObject);
    procedure cmdLigarClick(Sender: TObject);
    procedure cmdBemVindoClick(Sender: TObject);
  private
  Cripto : TCripto;
  Homem : THomem;
  Mulher : TMulher;
  Calcular : TCalcular;
  Soma : TSoma;
  Subtracao : TSubtracao;
  Roda1 : TRoda;
  Roda2 : TRoda;
  Moto : TMoto;
  Leao : TLeao;
  Gorila : TGorila;
  Corrente: TCorrente;
  Poupanca: TPoupanca;
  MinhaClasse : TMinhaClasse;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDados: TfrmDados;

implementation

{$R *.dfm}









//-----------------------------------------------
//---> Encapsulamento <---
//-----------------------------------------------
procedure TfrmDados.cmdEncapsulamentoClick(Sender: TObject);
begin

Cripto := TCripto.Create;
Cripto.SetValor(edtTextoEncapsulamento.Text);
edtResultadoEncapsulamento.Text := Cripto.GetValor;

end;



//-----------------------------------------------
//---> Herança <---
//-----------------------------------------------
procedure TfrmDados.cmdHerancaClick(Sender: TObject);
begin

Homem := THomem.Create;
Homem.Nome := frmDados.edtNomeHeranca.Text;
Homem.Idade := StrToInt(frmDados.edtIdadeHeranca.Text);
Homem.TamanhoBarba := StrToInt(frmDados.edtBarba.Text);

Mulher := TMulher.Create;
Mulher.Nome := frmDados.edtNomeHeranca.Text;
Mulher.Idade := StrToInt(frmDados.edtIdadeHeranca.Text);
Mulher.TamanhoBusto := StrToInt(frmDados.edtBusto.Text);

frmDados.edtResultadoHeranca.Text := 'Homem: (Nome: ' + Homem.Nome +', Idade: '+ IntToStr(Homem.Idade) +', Barba: ' + IntToStr(Homem.TamanhoBarba) + ') e Mulher: (Nome: ' + Mulher.Nome + ', Idade: ' + IntToStr(Mulher.Idade) + ', Busto: ' + IntToStr(Mulher.TamanhoBusto) + ')';


end;


//-----------------------------------------------
//---> Polimorfismo II <---
//-----------------------------------------------
procedure TfrmDados.cmdSomaClick(Sender: TObject);
Var n1: integer;
begin

Soma := TSoma.Create;

n1 := Calcular.MostrarResultado(Soma,StrToInt(frmDados.edtValor1.Text),StrToInt(frmDados.edtValor2.Text) );
frmDados.edtResultadoPolimorfismo2.Text := IntToStr(n1);

end;


procedure TfrmDados.cmdSubtracaoClick(Sender: TObject);
Var n1: integer;
begin

Subtracao := TSubtracao.Create;

n1 := Calcular.MostrarResultado(Subtracao,StrToInt(frmDados.edtValor1.Text),StrToInt(frmDados.edtValor2.Text) );
frmDados.edtResultadoPolimorfismo2.Text := IntToStr(n1);

end;





//-----------------------------------------------
//---> Polimorfismo <---
//-----------------------------------------------
procedure TfrmDados.cmdPolimorfismoClick(Sender: TObject);
begin

Leao := TLeao.Create;
Gorila := TGorila.Create;

edtResultadoPolimorfismo.Text := 'Leão: (' + Leao.Andar + ') e Gorila: (' + Gorila.Andar + ')';

end;





//-----------------------------------------------
//---> Composição <---
//-----------------------------------------------
procedure TfrmDados.cmdComposicaoClick(Sender: TObject);
begin

Roda1 := TRoda.Create;
Roda1.Cor := edtCor1.Text;
Roda1.Aro := StrToInt(edtAro1.Text);

Roda2 := TRoda.Create;
Roda2.Cor := edtCor2.Text;
Roda2.Aro := StrToInt(edtAro2.Text);

Moto := TMoto.Create;
Moto.Moto('Azul', Roda1,Roda2);


EdtResultadoComposicao.Text :=
'Moto: ' + Moto.Cor +
', com Roda1 (Aro: ' + IntToStr(Moto.Roda1.Aro) + ', Cor: ' + Moto.Roda1.Cor +
'), Roda2 (Aro: ' + IntToStr(Moto.Roda2.Aro) + ', Cor: ' + Moto.Roda2.Cor + ')';


end;




//-----------------------------------------------
//---> Sobreposicao <---
//-----------------------------------------------
procedure TfrmDados.cmdSaqueCCClick(Sender: TObject);
begin
Corrente := TCorrente.Create;
edtResultadoSobreposicao.Text := Corrente.Saque(edtAgencia.Text, edtConta.Text, StrToFloat(edtValor.Text));
end;

procedure TfrmDados.cmdSaquePoupancaClick(Sender: TObject);
begin
Poupanca := TPoupanca.Create;
edtResultadoSobreposicao.Text := Poupanca.Saque(edtAgencia.Text, edtConta.Text, StrToFloat(edtValor.Text));
end;


//-----------------------------------------------
//---> Classe <---
//-----------------------------------------------
procedure TfrmDados.cmdLigarClick(Sender: TObject);
begin
MinhaClasse := TMinhaClasse.Create;
edtResultadoClasse.Text := MinhaClasse.Ligar(edtNumero.Text);
end;

procedure TfrmDados.cmdBemVindoClick(Sender: TObject);
begin
MinhaClasse := TMinhaClasse.Create;
MinhaClasse.Telefone('Azul','Android');
edtResultadoClasse.Text := MinhaClasse.Ligar(edtDDD.Text , edtNumero.Text);

MinhaClasse.MinhaClasse;

end;

end.
