unit Model.Entidade.PedidosItens;

interface

uses
  Model.Entidades.Interfaces,
  Model.DAO.Interfaces;

type
  TPedidosItens = class(TInterfacedObject, iPedidosItens)
    private
      [weak]
      FParent        : iDAOEntidade<iPedidosItens>;

      FId            : Integer;
      FIdPedido      : Integer;
      FIdProduto     : Integer;
      FQuantidade    : Integer;
      FValorunitario : Currency;
      FVAlorProdutos : Currency;
    public
      constructor Create(Parent: iDAOEntidade<iPedidosItens>);

      destructor Destroy; override;
      class function New(Parent: iDAOEntidade<iPedidosItens>) : iPedidosItens;

      function ID(Value: Integer): iPedidosItens; overload;
      function ID: Integer; overload;
      function IdPedido(Value : Integer): iPedidosItens; overload;
      function IDPedido : Integer; overload;
      function IdProduto(Value: Integer): iPedidosItens; overload;
      function IdProduto: Integer; overload;
      function Quantidade(Value: Integer): iPedidosItens; overload;
      function Quantidade: Integer; overload;
      function ValorUnitario(Value: Currency): iPedidosItens; overload;
      function ValorUnitario: Currency; overload;
      function ValorProdutos(Value: Currency): iPedidosItens; overload;
      function ValorProdutos: Currency; overload;

      function &End : iDAOEntidade<iPedidosItens>;
  end;

implementation

{ TPedidosItens }

constructor TPedidosItens.Create(Parent: iDAOEntidade<iPedidosItens>);
begin
  FParent := Parent;
end;

destructor TPedidosItens.Destroy;
begin
  inherited;
end;

class function TPedidosItens.New(Parent: iDAOEntidade<iPedidosItens>): iPedidosItens;
begin
  Result := Self.Create(Parent);
end;

function TPedidosItens.ID(Value: Integer): iPedidosItens;
begin
  Result := Self;
  FId    := Value;
end;

function TPedidosItens.ID: Integer;
begin
  Result := FId;
end;

function TPedidosItens.IdPedido(Value: Integer): iPedidosItens;
begin
  Result := Self;
  FIdPedido := Value;
end;

function TPedidosItens.IdPedido: Integer;
begin
  Result := FIdPedido;
end;

function TPedidosItens.IdProduto(Value: Integer): iPedidosItens;
begin
  Result := Self;
  FIdProduto := Value;
end;

function TPedidosItens.IdProduto: Integer;
begin
  Result := FIdProduto;
end;

function TPedidosItens.ValorUnitario(Value: Currency): iPedidosItens;
begin
  Result := Self;
  FValorUnitario := Value;
end;

function TPedidosItens.ValorUnitario: Currency;
begin
  Result := FValorUnitario;
end;

function TPedidosItens.Quantidade(Value: Integer): iPedidosItens;
begin
  Result := Self;
  FQuantidade := Value;
end;

function TPedidosItens.Quantidade: Integer;
begin
  Result := FQuantidade;
end;

function TPedidosItens.ValorProdutos(Value: Currency): iPedidosItens;
begin
  Result := Self;
  FValorProdutos := Value;
end;

function TPedidosItens.ValorProdutos: Currency;
begin
  Result := FValorProdutos;
end;

function TPedidosItens.&End: iDAOEntidade<iPedidosItens>;
begin
  Result := FParent;
end;

end.
