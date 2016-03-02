unit uMamifero;

interface

type
  TMamifero = class(TObject)
  public
    function Andar: String; virtual; abstract;

  end;

implementation

{ TMamifero }


end.
