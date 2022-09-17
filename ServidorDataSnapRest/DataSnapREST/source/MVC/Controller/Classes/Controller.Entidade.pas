unit Controller.Entidade;

interface

uses
  Controller.Entidade.Interfaces,
  Model.Entidade.Factory.Interfaces;
type
  TControllerEntidade = class(TInterfacedObject, iControllerEntidade)
    private
      FEntidadeFactory : iEntidadeFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerEntidade;

      function EntidadeFactory : iEntidadeFactory;
  end;

implementation

uses
  Model.Entidade.Factory;

{ TControllerEntidade }

constructor TControllerEntidade.Create;
begin
  //
end;

destructor TControllerEntidade.Destroy;
begin
  inherited;
end;

class function TControllerEntidade.New: iControllerEntidade;
begin
  Result := Self.Create;
end;

function TControllerEntidade.EntidadeFactory: iEntidadeFactory;
begin
  if not Assigned(FEntidadeFactory) then
    FEntidadeFactory := TEntidadeFactory.New;
  Result := FEntidadeFactory;
end;

end.
