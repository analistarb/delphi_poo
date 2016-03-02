unit uCalcular;

interface
uses uOperacao;

type
  TCalcular = class(TObject)
  public
      function MostrarResultado (Operacao:TOperacao; n1, n2:Integer): Integer;

  end;

implementation

{ TCalcular }

function TCalcular.MostrarResultado(Operacao:TOperacao; n1, n2:Integer): Integer;
begin
  Result := Operacao.Calcular(n1,n2);
end;

end.

