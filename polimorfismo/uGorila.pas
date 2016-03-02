unit uGorila;

interface
uses uMamifero;

type
  TGorila = class(TMamifero)
  public
    function Andar: String; override;

  end;

implementation

{ TGorila }

function TGorila.Andar: String;
begin
  Result := 'Anda com 2 pes';
end;

end.
