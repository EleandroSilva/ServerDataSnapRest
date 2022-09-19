unit Controller;

interface

uses
  Controller.Interfaces,
  Controller.Entidade;

type
  TController = class(TInterfacedObject, iController)
  private
    FEntidade : iControllerEntidades;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iController;

    function Entidade: iControllerEntidades;
  end;


implementation

{ TController }

constructor TController.Create;
begin
  //
end;

destructor TController.Destroy;
begin
  inherited;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Entidade: iControllerEntidades;
begin
  if not Assigned(FEntidade) then
    FEntidade := TControllerEntidade.New;
  result := FEntidade;
end;

end.
