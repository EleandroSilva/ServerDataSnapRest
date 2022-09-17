unit Model.Entidade.Pessoa;

interface

uses
  Model.Entidade.Pessoa.Interfaces,
  System.JSON,
  Controller.Conexao.Factory.Interfaces;

type
  TEntidadePessoa = class(TInterfacedObject, iEntidadePessoa)
    private
      FQuery : iControllerConexaoFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidadePessoa;

      function Get(const Key: String): TJsonArray;
  end;

implementation

uses
  Controller.Conexao.Factory;

{ TPessoa }

constructor TEntidadePessoa.Create;
begin
  FQuery := TControllerConexaoFactory.New;
end;

destructor TEntidadePessoa.Destroy;
begin
  inherited;
end;

class function TEntidadePessoa.New: iEntidadePessoa;
begin
  Result := Self.Create;
end;

function TEntidadePessoa.Get(const Key: String): TJsonArray;
begin
  FQuery
      .ConexaoFactory
      .ConexaoFiredacMySQL
      .Close;

  FQuery
      .ConexaoFactory
      .ConexaoFiredacMySQL
      .SQL('SELECT * FROM PESSOA ');

  if Key<>'' then
   FQuery
       .ConexaoFactory
       .ConexaoFiredacMySQL
       .SQL(' WHERE IDPESSOA= '+ Key);

   FQuery
       .ConexaoFactory
       .ConexaoFiredacMySQL
       .Open;
   Result := FQuery
                 .ConexaoFactory
                 .ConexaoFiredacMySQL
                 .AsJsonArray;
end;

end.
