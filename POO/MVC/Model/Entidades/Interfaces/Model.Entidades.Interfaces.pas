unit Model.Entidades.Interfaces;

interface

uses
  Model.DAO.Interfaces;


type
  iClientes = interface
    ['{E1699848-BF97-42DA-9FA7-FE535B0A4665}']
    function TipoFiltro(Value : Integer) : iClientes; overload;
    function TipoFiltro                  : Integer; overload;
    function NomeCampoParaFiltro(Value : String): iClientes; overload;
    function NomeCampoParaFiltro : String; overload;
    function ID(Value: Integer) : iClientes; overload;
    function ID : Integer; overload;
    function Nome(Value: String) : iClientes; overload;
    function Nome : String; overload;
    function &End : iDAOEntidade<iClientes>;
  end;

   iProdutos = interface
    ['{5EEC8797-9DAF-4EBA-837F-74870C19169A}']
    function TipoFiltro(Value : Integer) : iProdutos; overload;
    function TipoFiltro                  : Integer; overload;
    function NomeCampoParaFiltro(Value : String): iProdutos; overload;
    function NomeCampoParaFiltro : String; overload;
    function ID(Value: Integer) : iProdutos; overload;
    function ID                 : Integer; overload;
    function Nome(Value: String): iProdutos; overload;
    function Nome: String; overload;
    function ValorVenda(Value: Currency): iProdutos; overload;
    function ValorVenda: Currency; overload;
    function &End : iDAOEntidade<iProdutos>;
  end;

  iPedidos = interface
    ['{9DB3614F-4A2A-497F-B8BC-963E69A33DD3}']
    function TipoFiltro(Value : Integer) : iPedidos; overload;
    function TipoFiltro                  : Integer; overload;
    function NomeCampoParaFiltro(Value : String) : iPedidos; overload;
    function NomeCampoParaFiltro : String; Overload;
    function ID(Value: Integer) : iPedidos; overload;
    function ID: Integer; overload;
    function IdCliente(Value : Integer): iPedidos; overload;
    function IdCliente : Integer; overload;
    function ValorPedido(Value: Currency): iPedidos; overload;
    function ValorPedido: Currency; overload;
    function DataEmissao(Value: TDateTime): iPedidos; overload;
    function DataEmissao: TDateTime; overload;
    function &End : iDAOEntidade<iPedidos>;
  end;

  iPedidosItens = interface
    ['{7F7AF349-0E99-4730-937A-269E834B3C1A}']
    function ID(Value: Integer): iPedidosItens; overload;
    function ID: Integer; overload;
    function IDPedido(Value : Integer): iPedidosItens; overload;
    function IDPedido : Integer; overload;
    function IDProduto(Value: Integer): iPedidosItens; overload;
    function IDProduto: Integer; overload;
    function Quantidade(Value: Integer): iPedidosItens; overload;
    function Quantidade: Integer; overload;
    function ValorUnitario(Value: Currency): iPedidosItens; overload;
    function ValorUnitario: Currency; overload;
    function ValorProdutos(Value: Currency): iPedidosItens; overload;
    function ValorProdutos: Currency; overload;
    function &End : iDAOEntidade<iPedidosItens>;
  end;

implementation

end.
