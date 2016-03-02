unit uMoto;

interface
uses uRoda;

type
  TMoto = class(TRoda)
  private
    FCor: string;
    FRoda1: TRoda;
    FRoda2: TRoda;

  public
    property Cor   :String  read FCor  write FCor;
    property Roda1  :TRoda read FRoda1 write FRoda1;
    property Roda2  :TRoda read FRoda2 write FRoda2;
    procedure Moto (Cor:String; Roda1, Roda2: TRoda);
  end;

implementation

{ TMoto }

procedure TMoto.Moto(Cor:String; Roda1, Roda2: TRoda);
begin
FCor := Cor;
FRoda1 := Roda1;
FRoda2 := Roda2;
end;

end.
