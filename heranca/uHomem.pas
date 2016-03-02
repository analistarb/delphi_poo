unit uHomem;

interface
uses uPessoa;

type
  THomem = class(TPessoa)
  private
    FTamanhoBarba: integer;

  public
    property TamanhoBarba  :integer read FTamanhoBarba write FTamanhoBarba;
  end;

implementation

{ THomem }
 

end.
