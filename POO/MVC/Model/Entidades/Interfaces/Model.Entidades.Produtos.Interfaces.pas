unit Model.Entidades.Produtos.Interfaces;

interface

uses
  Model.DAO.Interfaces;

type
   iProdutos = interface
    ['{5EEC8797-9DAF-4EBA-837F-74870C19169A}']
    function ID(Value: Integer) : iProdutos; overload;
    function ID : Integer; overload;
    function Nome(Value: String): iProdutos; overload;
    function Nome: String; overload;
    function ValorVenda(Value: Currency): iProdutos; overload;
    function ValorVenda: Currency; overload;
    function &End : iDAOEntidade<iProdutos>;
  end;


implementation

end.
