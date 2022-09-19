unit Model.DAO.PedidosItens;

interface

uses
  System.SysUtils,

  Data.DB,

  Model.DAO.Interfaces,
  Model.Entidades.Interfaces,
  Model.Conexao.Interfaces,
  Model.Conexao.Firedac.MySQL,
  Model.Entidade.PedidosItens;

type
  TDAOPedidosItens = class(TInterfacedObject, iDAOEntidade<iPedidosItens>)
  private
    FPedidosItens : iPedidosItens;
    FConexao      : iModelConexao;
    FDataSet      : TDataSet;

    const
       FSQL=('select '+
             'pitens.id, '+
             'pitens.idpedido, '+
             'pitens.idProduto, '+
             'pro.nome, '+
             'pitens.valorunitario, '+
             'pitens.quantidade, '+
             'pitens.valorprodutos '+
             'from pedidoItens pitens '+
             'inner join produto pro on pro.id = pitens.IdProduto ');

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOEntidade<iPedidosItens>;

    function ListarTodos                     : iDAOEntidade<iPedidosItens>;
    function ListarPor(Value: Variant)       : iDAOEntidade<iPedidosItens>;
    function Excluir                         : iDAOEntidade<iPedidosItens>;
    function Atualizar                       : iDAOEntidade<iPedidosItens>;
    function Inserir: iDAOEntidade<iPedidosItens>;
    function DataSet(DataSource: TDataSource): iDAOEntidade<iPedidosItens>; overload;
    function DataSet: TDataSet; overload;

    function This : iPedidosItens;
  end;

implementation

{ TDAOPedidosItens }

constructor TDAOPedidosItens.Create;
begin
  FPedidosItens := TPedidosItens.New(self);
  FConexao      := TConexaoFiredacMySQL.New;
end;

destructor TDAOPedidosItens.Destroy;
begin
  FreeAndNil(FDataSet);
  inherited;
end;

class function TDAOPedidosItens.New: iDAOEntidade<iPedidosItens>;
begin
  Result := Self.Create;
end;

function TDAOPedidosItens.DataSet(DataSource: TDataSource): iDAOEntidade<iPedidosItens>;
begin
  Result := self;
  if not Assigned(FDataSet) then
    DataSource.DataSet := FConexao.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPedidosItens.DataSet: TDataSet;
begin
   Result := FDataSet;
end;

function TDAOPedidosItens.Atualizar: iDAOEntidade<iPedidosItens>;
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('UPDATE PEDIDOITENS SET IDPRODUTO=:IDPRODUTO, QUANTIDADE=:QUANTIDADE, '+
                                         'VALORUNITARIO=:VALORUNITARIO, VALORPRODUTOS=:VALORPRODUTOS '+
                                         'WHERE ID=:ID AND IDPEDIDO=:IDPEDIDO')
                 .Params('ID',            FPedidosItens.ID)
                 .Params('IDPEDIDO',      FPedidosItens.IdPedido)
                 .Params('IDPRODUTO',     FPedidosItens.IdProduto)
                 .Params('QUANTIDADE',    FPedidosItens.Quantidade)
                 .Params('VALORUNITARIO', FPedidosItens.ValorUnitario)
                 .Params('VALORPRODUTOS', FPedidosItens.ValorProdutos)
            .ExecSQL
            .Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao atualizar o registro');
  end;
end;


function TDAOPedidosItens.Excluir: iDAOEntidade<iPedidosItens>;
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('DELETE FROM PEDIDOITENS WHERE IDPEDIDO=:IDPEDIDO')
                 .Params('IDPEDIDO', FPedidosItens.IdPedido)
            .ExecSQL.Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar excluir o registro');
  end;
end;

function TDAOPedidosItens.Inserir: iDAOEntidade<iPedidosItens>;
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('INSERT INTO PEDIDOITENS (IDPEDIDO, IDPRODUTO, VALORUNITARIO, QUANTIDADE, VALORPRODUTOS) '+
                                               'VALUES'+
                                               '(:IDPEDIDO,:IDPRODUTO,:VALORUNITARIO,:QUANTIDADE,:VALORPRODUTOS)')
                                               .Params('IDPEDIDO',      FPedidosItens.IdPedido)
                                               .Params('IDPRODUTO',     FPedidosItens.IdProduto)
                                               .Params('VALORUNITARIO', FPedidosItens.ValorUnitario)
                                               .Params('QUANTIDADE',    FPedidosItens.Quantidade)
                                               .Params('VALORPRODUTOS', FPedidosItens.ValorProdutos)
            .ExecSQL.Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar gravar o registro');
  end;
end;

function TDAOPedidosItens.ListarTodos: iDAOEntidade<iPedidosItens>;
begin
  Result := self;
  FDataSet := FConexao.SQL(FSQL+' ORDER BY pitens.idpedido ASC')
                      .Open
                      .DataSet;
end;

function TDAOPedidosItens.ListarPor(Value: Variant): iDAOEntidade<iPedidosItens>;
begin
  Result := self;
  FDataSet := FConexao.SQL(FSQL+' WHERE pitens.idpedido='+Value)
                          .Open
                          .DataSet;
end;

function TDAOPedidosItens.This: iPedidosItens;
begin
  Result := FPedidosItens;
end;

end.
