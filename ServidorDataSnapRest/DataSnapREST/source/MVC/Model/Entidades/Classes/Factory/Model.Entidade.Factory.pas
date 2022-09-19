unit Model.Entidade.Factory;

interface

uses
  Model.Entidade.Factory.Interfaces,
  Model.Entidade.Pessoa.Interfaces;

type
  TEntidadeFactory = class(TInterfacedObject, iEntidadeFactory)
    private
      FPessoa : iEntidadePessoa;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidadeFactory;

      function Pessoa : iEntidadePessoa;
  end;

implementation

uses
  Model.Entidade.Pessoa;

{ TEntidadeFactory }

constructor TEntidadeFactory.Create;
begin
  //
end;

destructor TEntidadeFactory.Destroy;
begin
  inherited;
end;

class function TEntidadeFactory.New: iEntidadeFactory;
begin
  Result := Self.Create;
end;

function TEntidadeFactory.Pessoa: iEntidadePessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TEntidadePessoa.New;

  Result := FPessoa;
end;

end.
