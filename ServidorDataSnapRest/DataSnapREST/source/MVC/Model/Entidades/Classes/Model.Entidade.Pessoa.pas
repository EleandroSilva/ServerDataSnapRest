unit Model.Entidade.Pessoa;

interface

uses
  System.JSON,

  DataSetConverter4D.Helper,
  DataSetConverter4D.Impl,

  Model.Entidade.Pessoa.Interfaces,
  Controller.Conexao.Factory.Interfaces, Data.DB;

type
  TEntidadePessoa = class(TInterfacedObject, iEntidadePessoa)
    private
      FQuery : iControllerConexaoFactory;
      FDataSource : TDataSource;
      const FSQL ='SELECT * FROM PESSOA';
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidadePessoa;

      function Get(const    Key : String)                        : TJsonArray;
      function Put(const    Key : String; jObject : TJsonObject) : iEntidadePessoa;
      function Post(const   Key : String; jObject : TJsonObject) : iEntidadePessoa;
      function Delete(const Key : String)                        : iEntidadePessoa;
  end;

implementation

uses
  Controller.Conexao.Factory;

{ TPessoa }

constructor TEntidadePessoa.Create;
begin
  FQuery := TControllerConexaoFactory.New;
  FDataSource := TDataSource.Create(nil);
end;

function TEntidadePessoa.Delete(const Key: String): iEntidadePessoa;
begin
  Result := Self;
  FQuery
      .ConexaoFactory
      .ConexaoFiredac
      .SQL('DELETE FROM PESSOA WHERE IDPESSOA='+ Key)
     .ExecSQL;
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
 if Key='' then
 Result:= FQuery
              .ConexaoFactory
              .ConexaoFiredac
              .SQL(FSQL)
              .Open
            .AsJsonArray else
 Result:= FQuery
             .ConexaoFactory
             .ConexaoFiredac
             .SQL(FSQL+' WHERE IDPESSOA= '+ Key)
             .Open
           .AsJsonArray;
end;

function TEntidadePessoa.Post(const Key: String; jObject: TJsonObject): iEntidadePessoa;
begin
  Result := Self;
  FQuery
      .ConexaoFactory
      .ConexaoFiredac
      .SQL(FSQL+' WHERE IDPESSOA='+Key)
      .Open
      .DataSet()
      .RecordFromJSONObject(jObject);
end;

function TEntidadePessoa.Put(const Key: String; jObject: TJsonObject): iEntidadePessoa;
begin
  Result := Self;
  FQuery
      .ConexaoFactory
      .ConexaoFiredac
      .SQL(FSQL+' WHERE 1=2')
      .Open
      .DataSet
      .FromJSONObject(jObject);
end;

end.
