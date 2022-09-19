unit Controller.Entidade;

interface

uses
  Controller.Interfaces,
  Model.DAO.Interfaces,
  Model.Entidades.Interfaces,
  Model.Entidade.Clientes,
  Model.DAO.Clientes,
  Model.Entidade.Pedidos,
  Model.DAO.Pedidos,
  Model.Entidade.PedidosItens,
  Model.DAO.PedidosItens,
  Model.Entidade.Produtos,
  Model.DAO.Produtos;

type
  TControllerEntidade = class(TInterfacedObject, iControllerEntidades)
  private
    FClientes     : iDAOEntidade<iClientes>;
    FProdutos     : iDAOEntidade<iProdutos>;
    FPedidos      : iDAOEntidade<iPedidos>;
    FPedidosItens : iDAOEntidade<iPedidosItens>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New    : iControllerEntidades;
    function Clientes     : iDAOEntidade<iClientes>;
    function Produtos     : iDAOEntidade<iProdutos>;
    function Pedidos      : iDAOEntidade<iPedidos>;
    function PedidosItens : iDAOEntidade<iPedidosItens>;
  end;

implementation

{ TControllerEntity }

constructor TControllerEntidade.Create;
begin
  //
end;

destructor TControllerEntidade.Destroy;
begin
  inherited;
end;

class function TControllerEntidade.New: iControllerEntidades;
begin
  Result := Self.Create;
end;

function TControllerEntidade.Clientes: iDAOEntidade<iClientes>;
begin
  if not Assigned(FClientes) then
    FClientes := TDAOClientes.New;
  Result := FClientes;
end;

function TControllerEntidade.Pedidos: iDAOEntidade<iPedidos>;
begin
  if not Assigned(FPedidos) then
    FPedidos := TDAOPedidos.New;
  Result := FPedidos;
end;

function TControllerEntidade.PedidosItens: iDAOEntidade<iPedidosItens>;
begin
  if not Assigned(FPedidosItens) then
    FPedidosItens := TDAOPedidosItens.New;
  Result := FPedidosItens;
end;

function TControllerEntidade.Produtos: iDAOEntidade<iProdutos>;
begin
  if not Assigned(FProdutos) then
    FProdutos := TDAOProdutos.New;
  Result := FProdutos;
end;

end.
