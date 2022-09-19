unit Model.Entidade.Produtos;

interface

uses
  Model.Entidades.Interfaces,
  Model.DAO.Interfaces;

type
  TProdutos = class(TInterfacedObject, iProdutos)
    private
      [weak]
      FParent     : iDAOEntidade<iProdutos>;
      FID         : Integer;
      FNome       : String;
      FValorVenda : Currency;
      FTipoFiltro : Integer;
      FNomeCampoParaFiltro : String;
    public
      constructor Create(Parent: iDAOEntidade<iProdutos>);
      destructor Destroy; override;
      class function New(Parent: iDAOEntidade<iProdutos>) : iProdutos;

      function TipoFiltro(Value : Integer) : iProdutos; overload;
      function TipoFiltro                  : Integer; overload;
      function NomeCampoParaFiltro(Value : String): iProdutos; overload;
      function NomeCampoParaFiltro : String; overload;
      function ID(Value: Integer) : iProdutos; overload;
      function ID : Integer; overload;
      function Nome(Value: String): iProdutos; overload;
      function Nome: String; overload;
      function ValorVenda(Value: Currency): iProdutos; overload;
      function ValorVenda: Currency; overload;

      function &End : iDAOEntidade<iProdutos>;
  end;

implementation

{ TProdutos }

constructor TProdutos.Create(Parent: iDAOEntidade<iProdutos>);
begin
  FParent := Parent;
end;

destructor TProdutos.Destroy;
begin
  //
  inherited;
end;

class function TProdutos.New(Parent: iDAOEntidade<iProdutos>): iProdutos;
begin
  Result := Self.Create(Parent);
end;

function TProdutos.ID(Value: Integer): iProdutos;
begin
  Result := Self;
  FID := Value;
end;

function TProdutos.ID: Integer;
begin
  Result := FID;
end;

function TProdutos.Nome(Value: String): iProdutos;
begin
  Result := Self;
  FNome:= Value;
end;

function TProdutos.Nome: String;
begin
  Result := FNome;
end;

function TProdutos.NomeCampoParaFiltro: String;
begin
  Result := FNomeCampoParaFiltro;
end;

function TProdutos.NomeCampoParaFiltro(Value: String): iProdutos;
begin
  Result := Self;
  FNomeCampoParaFiltro := Value;
end;

function TProdutos.TipoFiltro: Integer;
begin
  Result := FTipoFiltro;
end;

function TProdutos.TipoFiltro(Value: Integer): iProdutos;
begin
  Result := Self;
  FTipoFiltro := Value;
end;

function TProdutos.ValorVenda(Value: Currency): iProdutos;
begin
  Result := Self;
  FValorVenda := Value;
end;

function TProdutos.ValorVenda: Currency;
begin
  Result := FValorVenda;
end;

function TProdutos.&End: iDAOEntidade<iProdutos>;
begin
  Result := FParent;
end;


end.
