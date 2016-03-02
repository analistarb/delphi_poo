unit uMinhaClasse;

interface

uses
  Dialogs;

type

  TTelefone = class(TObject)
    private
      FCor:String;
      FSO:String;
    public
      procedure Telefone(Cor:String; SO:String);
      function Ligar(numeroDiscar:String):String;overload;
      function Ligar(ddd:string; numeroDiscar:String):String;overload;
      function BemVindo:String;
      function Discar(NumeroDiscar:String):String;
      destructor Destroy; Override;
  end;

  TMinhaClasse = class(TTelefone)
  public
      procedure MinhaClasse;
  end;


implementation






procedure TTelefone.Telefone(Cor:String; SO:String);
begin
FCor := Cor;
FSO := SO;
end;


function TTelefone.BemVindo:String;
Var Texto: String;
begin
Texto := 'Telefone da cor: (' + FCor + ') com o sistema operacional (' + FSO + ')';
result := Texto;
end;


function TTelefone.Ligar(numeroDiscar:String):String;
Var Texto: String;
begin
Texto := BemVindo();
result := 'Ligando para o numero: (' + numeroDiscar + ')';
end;


function TTelefone.Ligar(ddd:string; numeroDiscar:String):String;
Var Texto: String;
begin
Texto := BemVindo();
result := '' + texto + ', Ligando para o numero: (' + ddd + ') ' + numeroDiscar + '';
end;



function TTelefone.Discar(NumeroDiscar:String):String;
begin
result := 'Ligando para ' + NumeroDiscar + '';
end;


destructor TTelefone.Destroy;
begin
  inherited Destroy;
end;


procedure TMinhaClasse.MinhaClasse;
begin
ShowMessage(Ligar('9999-9999'));
ShowMessage(Ligar('011','9999-9999'));
end;

end.
