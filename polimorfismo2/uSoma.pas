unit uSoma;

interface
uses uOperacao;

type
  TSoma = class(TOperacao)
  public
    public
      function Calcular (n1, n2:Integer): Integer; override;

  end;

implementation

{ TSoma }

function TSoma.Calcular(n1, n2: Integer): Integer;
begin
Result := n1 + n2;
end;

end.
