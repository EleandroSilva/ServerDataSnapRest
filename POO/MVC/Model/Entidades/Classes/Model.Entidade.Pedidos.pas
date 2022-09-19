unit Model.Entidade.Pedidos;

interface

uses
  Model.Entidades.Interfaces,
  Model.DAO.Interfaces;


type
  TPedidos = class(TInterfacedObject, iPedidos)
    private
      [weak]
      FParent      : iDAOEntidade<iPedidos>;
      FID          : Integer;
      FIDCliente   : Integer;
      FValorPedido : Currency;
      FDataEmissao : TDateTime;
      FTipoFiltro  : Integer;
      FNomeCampoParaFiltro : String;
    public
      constructor Create(Parent: iDAOEntidade<iPedidos>);
      destructor Destroy; override;
      class function New(Parent: iDAOEntidade<iPedidos>) : iPedidos;

      function TipoFiltro(Value : Integer)  : iPedidos; overload;
      function TipoFiltro                   : Integer; overload;
      function NomeCampoParaFiltro(Value : String) : iPedidos; overload;
      function NomeCampoParaFiltro : String; Overload;
      function ID(Value: Integer)           : iPedidos; overload;
      function ID                           : Integer; overload;
      function DataEmissao(Value: TDateTime): iPedidos; overload;
      function DataEmissao                  : TDateTime; overload;
      function IdCliente(Value : Integer)   : iPedidos; overload;
      function IdCliente                    : Integer; overload;
      function ValorPedido(Value: Currency) : iPedidos; overload;
      function ValorPedido                  : Currency; overload;

      function &End : iDAOEntidade<iPedidos>;
  end;

implementation

{ TPedidos }

constructor TPedidos.Create(Parent: iDAOEntidade<iPedidos>);
begin
  FParent := Parent;
end;

destructor TPedidos.Destroy;
begin
  inherited;
end;

class function TPedidos.New(Parent: iDAOEntidade<iPedidos>): iPedidos;
begin
  Result := Self.Create(Parent);
end;

function TPedidos.NomeCampoParaFiltro: String;
begin
  Result := FNomeCampoParaFiltro;
end;

function TPedidos.NomeCampoParaFiltro(Value: String): iPedidos;
begin
  Result := Self;
  FNomeCampoParaFiltro := Value;
end;

function TPedidos.TipoFiltro: Integer;
begin
  FTipoFiltro := Result;
end;

function TPedidos.TipoFiltro(Value: Integer): iPedidos;
begin
  Result := Self;
  FTipoFiltro := Value;
end;

function TPedidos.ID(Value: Integer): iPedidos;
begin
  Result := Self;
  FID := Value;
end;

function TPedidos.ID: Integer;
begin
  Result := FID;
end;


function TPedidos.IdCliente(Value: Integer): iPedidos;
begin
  Result := Self;
  FIdCliente := Value;
end;

function TPedidos.IdCliente: Integer;
begin
  Result := FIdCliente;
end;

function TPedidos.DataEmissao(Value: TDateTime): iPedidos;
begin
  Result := Self;
  FDataEmissao := Value;
end;

function TPedidos.DataEmissao: TDateTime;
begin
  Result := FDataEmissao;
end;

function TPedidos.ValorPedido(Value: Currency): iPedidos;
begin
  Result := Self;
  FValorPedido:=Value;
end;

function TPedidos.ValorPedido: Currency;
begin
  Result := FValorPedido;
end;

function TPedidos.&End: iDAOEntidade<iPedidos>;
begin
  Result := FParent;
end;


end.
