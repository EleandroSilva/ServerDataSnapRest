unit Model.Entidade.Clientes;

interface

uses
  System.SysUtils,
  Model.Entidade.Uteis,
  Model.Entidades.interfaces,
  Model.DAO.interfaces;

type
  TClientes = class(TInterfacedObject, iClientes)
    private
      [weak]
      FParent     : iDAOEntidade<iClientes>;
      FTipoFiltro : Integer;
      FNomeCampoParaFiltro : String;
      FId         : Integer;
      FNome       : String;
      FUteis      : TUteis;
    public
      constructor Create(Parent: iDAOEntidade<iClientes>);
      destructor Destroy; override;
      class function New(Parent: iDAOEntidade<iClientes>) : iClientes;

      function TipoFiltro(Value : Integer) : iClientes; overload;
      function TipoFiltro                  : Integer; overload;
      function NomeCampoParaFiltro(Value : String): iClientes; overload;
      function NomeCampoParaFiltro         : String; overload;
      function Id(Value: Integer)          : iClientes; overload;
      function Id : Integer; overload;
      function Nome(Value: String) : iClientes; overload;
      function Nome : String; overload;

      function &End : iDAOEntidade<iClientes>;
  end;

implementation

{ TClientes }

constructor TClientes.Create(Parent: iDAOEntidade<iClientes>);
begin
  FParent:= Parent;
  FUteis := TUteis.Create;
end;

destructor TClientes.Destroy;
begin
  FreeAndNil(FUteis);
  inherited;
end;

class function TClientes.New(Parent: iDAOEntidade<iClientes>): iClientes;
begin
  Result := Self.Create(Parent);
end;

function TClientes.Id(Value: Integer): iClientes;
begin
  Result := Self;
  FId := Value;
end;

function TClientes.Id: Integer;
begin
  Result := FId;
end;

function TClientes.Nome(Value: String): iClientes;
begin
  Result := Self;
  FNome := Value;
end;

function TClientes.Nome: String;
begin
  Result := FNome;
end;

function TClientes.NomeCampoParaFiltro: String;
begin
  Result := FNomeCampoParaFiltro;
end;

function TClientes.NomeCampoParaFiltro(Value: String): iClientes;
begin
  Result := Self;
  FNomeCampoParaFiltro := Value;
end;

function TClientes.TipoFiltro: Integer;
begin
  Result := FTipoFiltro;
end;

function TClientes.TipoFiltro(Value: Integer): iClientes;
begin
  Result := Self;
  FTipoFiltro := Value;
end;

function TClientes.&End: iDAOEntidade<iClientes>;
begin
  Result := FParent;
end;

end.
