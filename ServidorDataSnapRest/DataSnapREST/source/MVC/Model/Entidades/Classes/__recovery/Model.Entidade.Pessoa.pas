unit Model.Entidade.Pessoa;

interface

uses
  System.JSON,

  DataSetConverter4D.Helper,
  DataSetConverter4D.Impl,

  Model.Entidade.Pessoa.Interfaces,
  Controller.Conexao.Factory.Interfaces, FireDAC.Comp.Client;

type
  TEntidadePessoa = class(TInterfacedObject, iEntidadePessoa)
    private
      FQuery : iControllerConexaoFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidadePessoa;

      function Get(const Key: String): TJsonArray;
      function Put(const Key : String; jObject : TJsonObject) : iEntidadePessoa;
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
      .ConexaoFiredac
      .SQL('SELECT * FROM PESSOA ');


  if Key<>'' then
   FQuery
       .ConexaoFactory
       .ConexaoFiredac
       .SQL(' WHERE IDPESSOA= '+ Key);

   FQuery
       .ConexaoFactory
       .ConexaoFiredac
       .Open;

   Result := FQuery
                 .ConexaoFactory
                 .ConexaoFiredac
                 .AsJsonArray;
end;

function TEntidadePessoa.Put(const Key: String; jObject: TJsonObject): iEntidadePessoa;
begin
  Result := Self;
  FQuery
      .ConexaoFactory
      .ConexaoFiredac
      .SQL('SELECT * FROM PESSOA WHERE 1=2')
      .Open;

  FQuery
      .ConexaoFactory
      .ConexaoFiredac
      .FromJSONObject(jObject)
      .ExecSQL;
end;

end.
