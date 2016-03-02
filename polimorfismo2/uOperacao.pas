unit uOperacao;

interface

type
  TOperacao = class(TObject)
  public
    function Calcular (n1, n2:Integer): Integer; virtual; abstract;

  end;

implementation

{ TOperacao }

end.
