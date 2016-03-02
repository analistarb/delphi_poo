unit uPoupanca;

interface
uses
  uConta, SysUtils, Math;

type
  TPoupanca = class(TConta)
  public
    function Saque(Agencia: string; Conta: string; Valor: double): String; override;

  end;

implementation

{ TPoupanca }

function TPoupanca.Saque(Agencia: string; Conta: string; Valor: double): String;
begin
Valor := Valor + (valor * 0.25);
Result := 'Saque Poupança: (Ag.: ' + Agencia + ', C/P.: ' + Conta + '), Valor R$ ' + FloatToStr(RoundTo(Valor,-2)) + '';
end;

end.
