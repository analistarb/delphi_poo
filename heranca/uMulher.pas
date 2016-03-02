unit uMulher;

interface
uses uPessoa;

type
  TMulher = class(TPessoa)
  private
    FTamanhoBusto: integer;

  public
    property TamanhoBusto  :integer read FTamanhoBusto write FTamanhoBusto;
  end;

implementation

{ TMulher }
 

end.

