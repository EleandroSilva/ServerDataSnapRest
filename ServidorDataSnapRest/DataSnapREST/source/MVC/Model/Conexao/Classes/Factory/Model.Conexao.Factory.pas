unit Model.Conexao.Factory;

interface

uses
  Model.Conexao.Factory.Interfaces,
  Model.Conexao.Interfaces,
  Model.Conexao.Configuracao.Interfaces;

type
  TConexaoFactory = class(TInterfacedObject, iConexaoFactory)
    private
      FConexaoFiredac      : iConexao;
      FConexaoConfiguracao : iConexaoConfiguracao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexaoFactory;

      function ConexaoFiredac      : iConexao;
      function ConexaoConfiguracao : iConexaoConfiguracao;
  end;

implementation

uses
  Model.Conexao.Configuracao,
  Model.Conexao.Firedac;

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

function TConexaoFactory.ConexaoConfiguracao: iConexaoConfiguracao;
begin
  if not Assigned(FConexaoConfiguracao) then
    FConexaoConfiguracao := TConexaoConfiguracao.New;
  Result := FConexaoConfiguracao;
end;

function TConexaoFactory.ConexaoFiredac: iConexao;
begin
  if not Assigned(FConexaoFiredac) then
    FConexaoFiredac := TConexaoFiredac.New;
  Result := FConexaoFiredac;
end;

end.
