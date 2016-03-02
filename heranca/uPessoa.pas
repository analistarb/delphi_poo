unit uPessoa;

interface

type
  TPessoa = class(TObject)
  private
    public FNome: string;
    public FIdade: integer;

  public
    property Nome   :String  read FNome  write FNome;
    property Idade  :Integer read FIdade write FIdade;
  end;

implementation

{ TPessoa }


end.

