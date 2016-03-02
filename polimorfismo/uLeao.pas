unit uLeao;

interface
uses uMamifero;

type
  TLeao = class(TMamifero)
  public
    function Andar: String; override;

  end;

implementation

{ TLeao }

function TLeao.Andar: String;
begin
  Result := 'Anda com 4 patas';
end;

end.
