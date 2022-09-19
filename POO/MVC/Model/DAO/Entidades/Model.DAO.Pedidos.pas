unit Model.DAO.Pedidos;

interface

uses
  System.SysUtils,
  Vcl.Dialogs,
  Data.DB,

  Model.DAO.Interfaces,
  Model.Entidades.interfaces,
  Model.Conexao.Interfaces,
  Model.Conexao.Firedac.MySQL,
  Model.Entidade.Pedidos,
  Model.Entidade.Uteis;

type
  TDAOPedidos = class(TInterfacedObject, iDAOEntidade<iPedidos>)
  private
    FPedidos : iPedidos;
    FConexao : iModelConexao;
    FDataSet : TDataSet;
    FUteis   : TUteis;
    const
       FSQL =('select '+
            'p.id, '+
            'p.idcliente, '+
            'c.nome, '+
            'p.valorpedido, '+
            'p.dataemissao '+
            'from pedido p '+
            'inner join cliente c on c.id = p.idcliente ');


  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOEntidade<iPedidos>;

    function ListarTodos                     : iDAOEntidade<iPedidos>;
    function ListarPor(Value: Variant)       : iDAOEntidade<iPedidos>;
    function Excluir                         : iDAOEntidade<iPedidos>;
    function Atualizar                       : iDAOEntidade<iPedidos>;
    function Inserir                         : iDAOEntidade<iPedidos>;
    function DataSet(DataSource: TDataSource): iDAOEntidade<iPedidos>; overload;
    function DataSet: TDataSet; overload;

    function This: iPedidos;
  end;

implementation

{ TDAOPedidos }

constructor TDAOPedidos.Create;
begin
  FPedidos := TPedidos.New(self);
  FConexao := TConexaoFiredacMySQL.New;
  FUteis   := TUteis.Create;
end;

destructor TDAOPedidos.Destroy;
begin
  FreeAndNil(FDataSet);
  FreeAndNIl(FUteis);
  inherited;
end;

class function TDAOPedidos.New: iDAOEntidade<iPedidos>;
begin
   Result := self.Create;
end;

function TDAOPedidos.DataSet(DataSource: TDataSource): iDAOEntidade<iPedidos>;
begin
  Result := self;
  if not Assigned(FDataSet) then
    DataSource.DataSet := FConexao.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPedidos.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOPedidos.Atualizar: iDAOEntidade<iPedidos>;
begin
  Result := self;

  FConexao.StartTransaction;
  try
    FConexao.SQL('UPDATE PEDIDO SET VALORPEDIDO=:VALORPEDIDO WHERE ID=:ID AND IDCLIENTE=:IDCLIENTE')
               .Params('ID',          FPedidos.ID)
               .Params('IDCLIENTE',   FPedidos.IdCliente)
               .Params('VALORPEDIDO', FPedidos.ValorPedido)
              .ExecSQL
            .Commit;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar atualizar o registro');
  end;
end;

function TDAOPedidos.Excluir: iDAOEntidade<iPedidos>;
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('DELETE FROM PEDIDO WHERE ID=:ID')
               .Params('ID', FPedidos.ID)
              .ExecSQL
            .Commit;
    MessageDlg('Pedido realizado com sucesso! Numero do pedido ' + IntToStr(FPedidos.ID), mtInformation,[mbOK],0);
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar excluir o registro.');
  end;
end;

function TDAOPedidos.Inserir: iDAOEntidade<iPedidos>;
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FConexao.SQL('INSERT INTO Pedido(IDCLIENTE, VALORPEDIDO, DATAEMISSAO) VALUES (:IDCLIENTE, :VALORPEDIDO, :DATAEMISSAO) ')
               .Params('IDCLIENTE',   FPedidos.IdCliente)
               .Params('VALORPEDIDO', FPedidos.ValorPedido)
               .Params('DATAEMISSAO', FPedidos.DataEmissao)
              .ExecSQL
            .Commit;

    FDataSet :=
    FConexao.SQL('SELECT LAST_INSERT_ID ()').Open.DataSet;
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao gravar o registro');
  end;
end;

function TDAOPedidos.ListarTodos: iDAOEntidade<iPedidos>;
begin
  Result := self;
  FDataSet := FConexao.SQL(FSQL+' ORDER BY P.ID ASC')
                          .Open
                          .DataSet;
end;

function TDAOPedidos.ListarPor(Value: Variant): iDAOEntidade<iPedidos>;
begin
  Result := self;
  case FPedidos.TipoFiltro of
    0 : FDataSet := FConexao
                     .SQL(FSQL+' WHERE :'+FPedidos.NomeCampoParaFiltro+ Value)
                     .Open
                    .DataSet;
    1 : FDataSet := FConexao
                    .SQL(FSQL+' WHERE ' + FUteis.Pesquisar('C.'+FPedidos.NomeCampoParaFiltro, ';' + Value))
                     .Open
                    .DataSet;
  end;
end;


function TDAOPedidos.This: iPedidos;
begin
  Result := FPedidos;
end;

end.
