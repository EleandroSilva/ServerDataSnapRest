unit Model.Conexao.Factory;

interface

uses
  Model.Conexao.Factory.Interfaces,
  Model.Conexao.Interfaces,
  Model.Conexao.Configuracao.Interfaces;

type
  TConexaoFactory = class(TInterfacedObject, iConexaoFactory)
    private
      FConexaoFiredacMySQL      : iConexaoMySQL;
      FConexaoConfiguracaoMySQL : iConexaoConfiguracaoMySQL;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexaoFactory;

      function ConexaoFiredacMySQL      : iConexaoMySQL;
      function ConexaoConfiguracaoMySQL : iConexaoConfiguracaoMySQL;
  end;

implementation

uses
  Model.Conexao.Configuracao.MySQL,
  Model.Conexao.Firedac.MySQL;

{ TConexaoFactory }

constructor TConexaoFactory.Create;
begin
  //
end;

destructor TConexaoFactory.Destroy;
begin
  inherited;
end;

class function TConexaoFactory.New: iConexaoFactory;
begin
  Result := Self.Create;
end;

function TConexaoFactory.ConexaoConfiguracaoMySQL: iConexaoConfiguracaoMySQL;
begin
  if not Assigned(FConexaoConfiguracaoMySQL) then
    FConexaoConfiguracaoMySQL := TConexaoConfiguracaoMySQL.New;
  Result := FConexaoConfiguracaoMySQL;
end;

function TConexaoFactory.ConexaoFiredacMySQL: iConexaoMySQL;
begin
  if not Assigned(FConexaoFiredacMySQL) then
    FConexaoFiredacMySQL := TConexaoFiredacMySQL.New;
  Result := FConexaoFiredacMySQL;
end;

end.
