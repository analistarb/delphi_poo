unit uCripto;

interface
  uses
    SysUtils;

type
  TCripto = class(TObject)
  private
  //F = Field (Campos da Tela)
    FValor: string;

  public
    function GetValor: string;
    procedure SetValor(const AValor:string);
  end;

implementation

{ TCripto }


function TCripto.GetValor: string;
begin
  Result := FValor;
end;

procedure TCripto.SetValor(const AValor: string);
begin 
  FValor := StringReplace(AValor,'a','1',[rfReplaceAll]);
end;


end.
