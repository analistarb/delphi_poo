unit uRoda;

interface

type
  TRoda = class(TObject)

    private
    public FCor: string;
    public FAro: integer;

  public
    property Cor   :String  read FCor  write FCor;
    property Aro  :Integer read FAro write FAro;
  end;

implementation

{ TRoda }


end.
