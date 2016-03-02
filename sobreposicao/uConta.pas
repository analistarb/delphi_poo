unit uConta;

interface
uses
  SysUtils, Math;

type
  TConta = class(TObject)
  public
    function Saque(Agencia: string; Conta: string; Valor: double): String; virtual; 

  end;

implementation

{ TConta }


function TConta.Saque(Agencia: string; Conta: string; Valor: double): String;
begin
Result := 'Saque Conta: (Ag.: ' + Agencia + ', C/C.: ' + Conta + '), Valor R$ ' + FloatToStr(RoundTo(Valor,-2)) + '';
end;

end.



