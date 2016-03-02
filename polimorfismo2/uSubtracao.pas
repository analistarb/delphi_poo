unit uSubtracao;

interface
uses uOperacao;

type
  TSubtracao = class(TOperacao)
  public
    public
      function Calcular (n1, n2:Integer): Integer; override;

  end;

implementation

{ TSoma }

function TSubtracao.Calcular(n1, n2: Integer): Integer;
begin
Result := n1 - n2;
end;

end.
