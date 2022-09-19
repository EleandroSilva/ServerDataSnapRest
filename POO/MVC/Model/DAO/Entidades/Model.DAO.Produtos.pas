unit Model.DAO.Produtos;

interface

uses
  System.SysUtils,
  Data.DB,

  Model.Entidade.Uteis,
  Model.Conexao.Interfaces,
  Model.DAO.Interfaces,
  Model.Entidades.Interfaces,
  Model.Conexao.Firedac.MySQL,
  Model.Entidade.Produtos;


type
  TDAOProdutos = class(TInterfacedObject, iDAOEntidade<iProdutos>)
  private
    FProdutos : iProdutos;
    FConexao  : iModelConexao;
    FDataSet  : TDataSet;


    FUteis    : TUteis;
    const
      FSQL=('select * from produto');
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOEntidade<iProdutos>;

    function ListarTodos                     : iDAOEntidade<iProdutos>;
    function ListarPor(Value: Variant)       : iDAOEntidade<iProdutos>;
    function Excluir                         : iDAOEntidade<iProdutos>;
    function Atualizar                       : iDAOEntidade<iProdutos>;
    function Inserir                         : iDAOEntidade<iProdutos>;
    function DataSet(DataSource: TDataSource): iDAOEntidade<iProdutos>; overload;
    function DataSet: TDataSet; overload;
    function This: iProdutos;
  end;

implementation

{ TDAOProdutos }

constructor TDAOProdutos.Create;
begin
  FProdutos  := TProdutos.New(Self);
  FConexao := TConexaoFiredacMySQL.New;
  FUteis   := TUteis.Create;
end;

destructor TDAOProdutos.Destroy;
begin
  FreeAndNil(FDataSet);
  FreeAndNil(FUteis);
  inherited;
end;

class function TDAOProdutos.New: iDAOEntidade<iProdutos>;
begin
  Result := Self.Create;
end;

function TDAOProdutos.Atualizar: iDAOEntidade<iProdutos>;
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('UPDATE PRODUTO SET NOME=:NOME, VALORVENDA=:VALORVENDA WHERE ID=:ID')
            .Params('NOME',       FProdutos.Nome)
            .Params('VALORVENDA', FProdutos.ValorVenda)
            .Params('ID',         FProdutos.ID)
            .ExecSQL.Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar atualizar o registro');
  end;
end;

function TDAOProdutos.DataSet(DataSource: TDataSource): iDAOEntidade<iProdutos>;
begin
  Result := self;
  if not Assigned(FDataSet) then
    DataSource.DataSet := FConexao.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOProdutos.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOProdutos.Excluir: iDAOEntidade<iProdutos>;
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('DELETE FROM PRODUTO WHERE ID=:ID')
            .Params('ID', FProdutos.ID).ExecSQL.Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar excluir o registro');
  end;
end;

function TDAOProdutos.Inserir: iDAOEntidade<iProdutos>;
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('INSERT INTO DADOS.PRODUTO (NOME, VALORVENDA) VALUES(:DESCRICAO, :VALORVENDA)')
            .Params('NOME',       FProdutos.Nome)
            .Params('VALORVENDA', FProdutos.ValorVenda)
            .ExecSQL.Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar gravar o registro');
  end;
end;

function TDAOProdutos.ListarTodos: iDAOEntidade<iProdutos>;
begin
  Result := Self;
  FDataSet := FConexao.SQL(FSQL).Open.DataSet;
end;

function TDAOProdutos.ListarPor(Value: Variant): iDAOEntidade<iProdutos>;
begin
  Result := self;
  case FProdutos.TipoFiltro of
    0 : FDataSet := FConexao
                    .SQL(FSQL+' WHERE ID=:'+FProdutos.NomeCampoParaFiltro)
                    .Params(FProdutos.NomeCampoParaFiltro, Value)
                     .Open
                    .DataSet;
    1 : FDataSet := FConexao
                    .SQL(FSQL+' WHERE ' + FUteis.Pesquisar(FProdutos.NomeCampoParaFiltro, ';' + Value))
                     .Open
                    .DataSet;
  end;
end;


function TDAOProdutos.This: iProdutos;
begin
  Result := FProdutos;
end;

end.
